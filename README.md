Original source of data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data source for Coursera project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A R script called run_analysis.R was created to does the following on the above data:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The tidy data set produced by the above code is tidy_data.txt, it has the averages of mean and standard deviations of the accelerometer and gyroscope measurements listed below,
obtained using smart phones for human activity recognition. The details of these measurements and the activities are in the code book.
