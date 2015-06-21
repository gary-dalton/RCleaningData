#  R Cleaning Data

This project demonstrates ability to collect, work with, and clean a data set.
All files needed to process the data are maintained in this GitHub repository.
The data itself is available for download from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Information on the data is available in the Code Book included in this
repository. Stated simply, the data represents data collected from the
accelerometers from the Samsung Galaxy S smartphone.

This repository contains the following files:

- CodeBook.md
    - Description of variables and their transformations
- README.md
    - This current file
- run_analysis.R
    - The R script which performs the data getting, cleaning, and transforming
- summarySamsungActivity.txt
    - File output data, exactly the same as the output you would get by running
    run_analysis.R on the original data.

## Run analysis
There are 6 parts to run_analysis.R. This describes each part.

### PART 1
1. Read in the features from the original dataset
1. Transform these to include only those with mean() or std()
1. Remove "()" from the col_names
1. Include the original col_num
1. RESULT is a dataframe with our final output variable names (col_names) and
the original column it is derived from

### PART 2
1. Read in the test data to a dataframe
1. Properly name the columns
1. Read in the subject and activity data to a dataframe
1. Join the 3 dataframes

### PART 3
Repeat the steps of PART 2 only for the trials data

### PART 4
Join the test and trials dataframes

### PART 5
Build a new dataframe containing the means of the column variables from PART 4
grouped by subject and activity.

1. Pull out the unique subjects and activities
1. Create an empty dataframe with properly named columns
1. Run nested for loops to calculate the means and assign the values to the
dataframe

### PART 6
Write to newly created means dataframe to a text file.


 data set as described below, 2) a link to a Github repository with your script
 for performing the analysis, and 3) a code book that describes the variables,
 the data, and any transformations or work that you performed to clean up the
 data called CodeBook.md. You should also include a README.md in the repo with
 your scripts. This repo explains how all of the scripts work and how they are
 connected.  



You should create one R script called run_analysis.R that does the following.
1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each
measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set
with the average of each variable for each activity and each subject.

## Included Scripts
