# Code Book for R Cleaning Data
---
title: "Code Book for R Cleaning Data"
author: "Gary Dalton"
date: "June 17, 2015"
output:
  html_document:
  keep_md: yes

---

## Project Description
Course project for **Getting and Cleaning Data** on Coursera.

##Study design and data processing
Based upon the Human Activity Recognition Using Smartphones Data Set.
[link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

###Collection of the raw data
_from Human Activity Recognition Using Smartphones Data Set_

The experiments have been carried out with a group of 30 volunteers within an
age bracket of 19-48 years. Each person performed six activities (WALKING,
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
and gyroscope, we captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments have been video-recorded
to label the data manually. The obtained dataset has been randomly partitioned
into two sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
50% overlap (128 readings/window). The sensor acceleration signal, which has
gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force is
assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained
by calculating variables from the time and frequency domain.

All data has been normalised into a range between -1 and 1.

##Creating the tidy datafile

###Guide to create the tidy data file

1. The source data zip file is available for [download](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/)
1. Unzip this file to create a file tree named _UCI HAR Dataset_
1. Download the [run_analysis.R file](https://github.com/gary-dalton/RCleaningData/blob/master/run_analysis.R).
1. change your current working directory to that containing the folder _UCI HAR Dataset_.
1. Source run_analysis.R
1. The results file, _summarySamsungActivity.txt_, is saved to you working directory.

###Cleaning of the data

The run_analysis.R script, loads the original test and trials data. These data
are stripped of columns without mean or standard deviation. This data is then
combined with the subject and activity columns. A final step takes the mean
of each column grouped by subject and activity.

Restated, the final outputted data includes only the mean of the means and
standard deviations grouped by activity and subject.

##Description of the variables in the _summarySamsungActivity.txt_ file

The file contains a data.frame with 180 observations of 68 variables. Subject
and Activity are grouping variables. All the other variables are the **means**
of the indicated measurement. Thus, tBodyAcc.mean.X is the mean of the time
body acceleration means on the X axis. Also, tBodyAcc.std.X is the mean of the
time body acceleration standard deviations.

- Subject
- Activity
- tBodyAcc.mean.X
- tBodyAcc.mean.Y
- tBodyAcc.mean.Z
- tBodyAcc.std.X
- tBodyAcc.std.Y
- tBodyAcc.std.Z
- tGravityAcc.mean.X
- tGravityAcc.mean.Y
- tGravityAcc.mean.Z
- tGravityAcc.std.X
- tGravityAcc.std.Y
- tGravityAcc.std.Z
- tBodyAccJerk.mean.X
- tBodyAccJerk.mean.Y
- tBodyAccJerk.mean.Z
- tBodyAccJerk.std.X
- tBodyAccJerk.std.Y
- tBodyAccJerk.std.Z
- tBodyGyro.mean.X
- tBodyGyro.mean.Y
- tBodyGyro.mean.Z
- tBodyGyro.std.X
- tBodyGyro.std.Y
- tBodyGyro.std.Z
- tBodyGyroJerk.mean.X
- tBodyGyroJerk.mean.Y
- tBodyGyroJerk.mean.Z
- tBodyGyroJerk.std.X
- tBodyGyroJerk.std.Y
- tBodyGyroJerk.std.Z
- tBodyAccMag.mean
- tBodyAccMag.std
- tGravityAccMag.mean
- tGravityAccMag.std
- tBodyAccJerkMag.mean
- tBodyAccJerkMag.std
- tBodyGyroMag.mean
- tBodyGyroMag.std
- tBodyGyroJerkMag.mean
- tBodyGyroJerkMag.std
- fBodyAcc.mean.X
- fBodyAcc.mean.Y
- fBodyAcc.mean.Z
- fBodyAcc.std.X
- fBodyAcc.std.Y
- fBodyAcc.std.Z
- fBodyAccJerk.mean.X
- fBodyAccJerk.mean.Y
- fBodyAccJerk.mean.Z
- fBodyAccJerk.std.X
- fBodyAccJerk.std.Y
- fBodyAccJerk.std.Z
- fBodyGyro.mean.X
- fBodyGyro.mean.Y
- fBodyGyro.mean.Z
- fBodyGyro.std.X
- fBodyGyro.std.Y
- fBodyGyro.std.Z
- fBodyAccMag.mean
- fBodyAccMag.std
- fBodyBodyAccJerkMag.mean
- fBodyBodyAccJerkMag.std
- fBodyBodyGyroMag.mean
- fBodyBodyGyroMag.std
- fBodyBodyGyroJerkMag.mean
- fBodyBodyGyroJerkMag.std


###Subject
The number of the subject performing the activity

- Integer
- There were 30 test subjects

###Activity
The type of activity performed

- Factor
- There were activities:

    - "WALKING",
    - "WALKING_UPSTAIRS",
    - "WALKING_DOWNSTAIRS",
    - "SITTING",
    - "STANDING",
    - "LAYING"

###tBodyAcc
The time body acceleration.

- Numeric
- Encompasses 6 columns, one each for mean and standard deviation along each
axis (X, Y, or Z). The subsequent variables are then:

    - tBodyAcc.mean.X
    - tBodyAcc.mean.Y
    - tBodyAcc.mean.Z
    - tBodyAcc.std.X
    - tBodyAcc.std.Y
    - tBodyAcc.std.Z

###tGravityAcc
The time gravity acceleration.

- Numeric
- Encompasses 6 columns, one each for mean and standard deviation along each
axis (X, Y, or Z). The subsequent variables are then:

    - tGravityAcc.mean.X
    - tGravityAcc.mean.Y
    - tGravityAcc.mean.Z
    - tGravityAcc.std.X
    - tGravityAcc.std.Y
    - tGravityAcc.std.Z


###tBodyAccJerk
The time body acceleration jerk.

- Numeric
- Encompasses 6 columns, one each for mean and standard deviation along each
axis (X, Y, or Z). The subsequent variables are then:

    - tBodyAccJerk.mean.X
    - tBodyAccJerk.mean.Y
    - tBodyAccJerk.mean.Z
    - tBodyAccJerk.std.X
    - tBodyAccJerk.std.Y
    - tBodyAccJerk.std.Z

###tBodyGyro
The time body gyroscope.

- Numeric
- Encompasses 6 columns, one each for mean and standard deviation along each
axis (X, Y, or Z). The subsequent variables are then:

    - tBodyGyro.mean.X
    - tBodyGyro.mean.Y
    - tBodyGyro.mean.Z
    - tBodyGyro.std.X
    - tBodyGyro.std.Y
    - tBodyGyro.std.Z

###tBodyGyroJerk
The time body gyroscope jerk.

- Numeric
- Encompasses 6 columns, one each for mean and standard deviation along each
axis (X, Y, or Z). The subsequent variables are then:

    - tBodyGyroJerk.mean.X
    - tBodyGyroJerk.mean.Y
    - tBodyGyroJerk.mean.Z
    - tBodyGyroJerk.std.X
    - tBodyGyroJerk.std.Y
    - tBodyGyroJerk.std.Z

###tBodyAccMag
The time body acceleration magnitude.

- Numeric
- Encompasses 2 columns, one each for mean and standard deviation. The
subsequent variables are then:

    - tBodyAccMag.mean
    - tBodyAccMag.std

###tGravityAccMag
The time gravity acceleration magnitude.

- Numeric
- Encompasses 2 columns, one each for mean and standard deviation. The
subsequent variables are then:

    - tGravityAccMag.mean
    - tGravityAccMag.std

###tBodyAccJerkMag
The time body acceleration jerk magnitude.

- Numeric
- Encompasses 2 columns, one each for mean and standard deviation. The
subsequent variables are then:

    - tBodyAccJerkMag.mean
    - tBodyAccJerkMag.std

###tBodyGyroMag
The time body gyroscope magnitude.

- Numeric
- Encompasses 2 columns, one each for mean and standard deviation. The
subsequent variables are then:

    - tBodyGyroJerkMag.mean
    - tBodyGyroJerkMag.std

###fBodyAcc
The frequency body acceleration.

- Numeric
- Encompasses 6 columns, one each for mean and standard deviation along each
axis (X, Y, or Z). The subsequent variables are then:

    - fBodyAcc.mean.X
    - fBodyAcc.mean.Y
    - fBodyAcc.mean.Z
    - fBodyAcc.std.X
    - fBodyAcc.std.Y
    - fBodyAcc.std.Z


###fBodyAccJerk
The frequency body acceleration jerk.

- Numeric
- Encompasses 6 columns, one each for mean and standard deviation along each
axis (X, Y, or Z). The subsequent variables are then:

    - fBodyAccJerk.mean.X
    - fBodyAccJerk.mean.Y
    - fBodyAccJerk.mean.Z
    - fBodyAccJerk.std.X
    - fBodyAccJerk.std.Y
    - fBodyAccJerk.std.Z


###fBodyGyro
The frequency body gyroscope.

- Numeric
- Encompasses 6 columns, one each for mean and standard deviation along each
axis (X, Y, or Z). The subsequent variables are then:

    - fBodyGyro.mean.X
    - fBodyGyro.mean.Y
    - fBodyGyro.mean.Z
    - fBodyGyro.std.X
    - fBodyGyro.std.Y
    - fBodyGyro.std.Z

###fBodyAccMag
The frequency body acceleration magnitude.

- Numeric
- Encompasses 2 columns, one each for mean and standard deviation. The
subsequent variables are then:

    - fBodyAccMag.mean
    - fBodyAccMag.std

###fBodyBodyAccJerkMag
The frequency body body acceleration jerk magnitude.

- Numeric
- Encompasses 2 columns, one each for mean and standard deviation. The
subsequent variables are then:

    - fBodyBodyAccJerkMag.mean
    - fBodyBodyAccJerkMag.std

###fBodyBodyGyroMag
The frequency body body gyroscope magnitude.

- Numeric
- Encompasses 2 columns, one each for mean and standard deviation. The
subsequent variables are then:

    - fBodyBodyGyroMag.mean
    - fBodyBodyGyroMag.std

###fBodyBodyGyroJerkMag
The frequency body body gyroscope jerk magnitude.

- Numeric
- Encompasses 2 columns, one each for mean and standard deviation. The
subsequent variables are then:

    - fBodyBodyGyroJerkMag.mean
    - fBodyBodyGyroJerkMag.std

##Sources

* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
