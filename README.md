# README for run_analysis.R

## Pre-requisists:

1. Download file : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. Unzip the files under a subfolder "./cleaning"  (below your working directory)

3. Download this script to your working directory & execute.

The Output will be created under working directory as: cleaning/final_data.txt

## Details: 

This script will read the data files contained in the given data sets, which are 561 measurements of 30 subjects ( in two groups of training & test) during 6 activities(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

## The script:
  * eliminates all the measurements other than mean() & std deviation (std()) measurements on these subjects & activities
  * And summarises the data for each subject and each activity.
  * output is a 180 (30 subjects * 6 activities) by 63 ( std()/mean()) measurements, written to ./cleaning/final_data.txt 
  
