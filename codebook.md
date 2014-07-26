# Code book for Getting and Cleaning Data Course Project 

The tidy data set presented along with this code book, tidy_data.txt, has the averages of mean and standard deviations of the accelerometer and gyroscope measurements listed below,
obtained using smart phones for human activity recognition.

The six activities considered are:
"1" "WALKING
"
"2" "WALKING_UPSTAIRS"
"3" "WALKING_DOWNSTAIRS"

"4" "SITTING"
"5" "STANDING"

"6" "LAYING
"

The list of various mean and std measurements:
"1" "BodyAcc-mean-X"
"2" "BodyAcc-mean-Y"
"3" "BodyAcc-mean-Z"
"4" "GravityAcc-mean-X"
"5" "GravityAcc-mean-Y"
"6" "GravityAcc-mean-Z"
"7" "BodyAccJerk-mean-X"
"8" "BodyAccJerk-mean-Y"
"9" "BodyAccJerk-mean-Z"
"10" "BodyGyro-mean-X"
"11" "BodyGyro-mean-Y"
"12" "BodyGyro-mean-Z"
"13" "BodyGyroJerk-mean-X"
"14" "BodyGyroJerk-mean-Y"
"15" "BodyGyroJerk-mean-Z"
"16" "BodyAccMag-mean"
"17" "GravityAccMag-mean"
"18" "BodyAccJerkMag-mean"
"19" "BodyGyroMag-mean"
"20" "BodyGyroJerkMag-mean"
"21" "BodyAcc-mean-X"
"22" "BodyAcc-mean-Y"
"23" "BodyAcc-mean-Z"
"24" "BodyAccJerk-mean-X"
"25" "BodyAccJerk-mean-Y"
"26" "BodyAccJerk-mean-Z"
"27" "BodyGyro-mean-X"
"28" "BodyGyro-mean-Y"
"29" "BodyGyro-mean-Z"
"30" "BodyAccMag-mean"
"31" "BodyBodyAccJerkMag-mean"
"32" "BodyBodyGyroMag-mean"
"33" "BodyBodyGyroJerkMag-mean"
"34" "BodyAcc-std-X"
"35" "BodyAcc-std-Y"
"36" "BodyAcc-std-Z"
"37" "GravityAcc-std-X"
"38" "GravityAcc-std-Y"
"39" "GravityAcc-std-Z"
"40" "BodyAccJerk-std-X"
"41" "BodyAccJerk-std-Y"
"42" "BodyAccJerk-std-Z"
"43" "BodyGyro-std-X"
"44" "BodyGyro-std-Y"
"45" "BodyGyro-std-Z"
"46" "BodyGyroJerk-std-X"
"47" "BodyGyroJerk-std-Y"
"48" "BodyGyroJerk-std-Z"
"49" "BodyAccMag-std"
"50" "GravityAccMag-std"
"51" "BodyAccJerkMag-std"
"52" "BodyGyroMag-std"
"53" "BodyGyroJerkMag-std"
"54" "BodyAcc-std-X"
"55" "BodyAcc-std-Y"
"56" "BodyAcc-std-Z"
"57" "BodyAccJerk-std-X"
"58" "BodyAccJerk-std-Y"
"59" "BodyAccJerk-std-Z"
"60" "BodyGyro-std-X"
"61" "BodyGyro-std-Y"
"62" "BodyGyro-std-Z"
"63" "BodyAccMag-std"
"64" "BodyBodyAccJerkMag-std"
"65" "BodyBodyGyroMag-std"
"66" "BodyBodyGyroJerkMag-std"

Original source of data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data source for Coursera project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A R script called run_analysis.R was created to does the following on the above data:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 