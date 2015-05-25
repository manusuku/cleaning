# Summary of Accelerometer Data.

The input data used for this process is from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The original data set contained 561 accelerometer and and gyroscope measurements during 6 activities for 30 people collected under two set of results as test & training.

## 6 activities are:

* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

### The given script, run_analysis.R:

1. Processes two sets of data (training & test) from above zips
2. Eliminates all measurements data set, which are not either STD Dev() or mean().
3. With proper labls for each activity & measurements takens, data is summarized  (average of each measurements)  for each activity and each subject.

The resulting dataset is grouped for each Subject(total of 30) over 6 activities mentioned above. Each row contains  66 measurements of mean() and std() defiation of:

-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ

There are are 180 instances of these 66 measurements over 30 subjects and 6 activiteis sattes above.

In these measurements:

timedomain signals are prefixed with t.
frequency domain signals are prefixed with f. 





