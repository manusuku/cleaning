
# Load "Test Set" into dataframe
x_test<-read.table("./cleaning/test/X_test.txt")

#class(x_train)
#[1] "data.frame"

# Load "training set" into dataframe
x_train<-read.table("./cleaning/train/X_train.txt")

# dim(x_train)
# [1] 7352  561

## For x_train :
## Add columns subject_train.txt as : "subject"" (1 to 30)  who is doing the activity
##             y_train.txt          : "activity" (1 to 6) activity "subject" is doing.

subject_train<-read.table("./cleaning/train/subject_train.txt")
activity_train<-read.table("./cleaning/train/y_train.txt")
colnames(activity_train)[1] <- "activity"
colnames(subject_train)[1] <- "subject"

## Append subject & activity to x_train (data set)
x_train<-cbind(subject_train, x_train)
x_train<-cbind(activity_train, x_train)

# dim(x_train)  - Two more colums added.
# [1] 7352  563

## Load activity & subject information for test data set
## dim of test data set[ rows:2947]
activity_test<-read.table("./cleaning/test/y_test.txt")
subject_test<-read.table("./cleaning/test/subject_test.txt")
colnames(subject_test)[1] <- "subject"
colnames(activity_test)[1] <- "activity"

## Append subject & activity to test data set.
x_test<-cbind(subject_test, x_test)
x_test<-cbind(activity_test, x_test)

## Merge data sets of Test & training

full_data <- rbind(x_test, x_train)


activity_labels <- read.table("./cleaning/activity_labels.txt")
features <- read.table("./cleaning/features.txt")

## apply proper column names.
colnames(full_data) <- c("activity", "subject", as.vector(features[,2]))

## avoid dup columns
good_data<-full_data[,unique(colnames(full_data))]

## select mean of std dev
meanOrStd<-select(good_data,activity,subject, contains("mean()"), contains("std()"))

## add proper names for activity
namelst<-factor(as.vector(meanOrStd[,1]), as.vector(activity_labels[,2]))

meanOrStd$activity <- namelst

grpd <- group_by(meanOrStd,activity,subject)

summarise_each(grpd,funs(mean))

##write.table(summarise_each(grpd,funs(mean)), row.name=FALSE)
write.table(summarise_each(grpd,funs(mean)), file = "./cleaning/final_data.txt", row.name=FALSE)



