GettingCleaningDataCourseProject
================================

# For 1st Tidy Dataset:

## A-1: Merges the training and the test sets to create one data set
Read Test and Train datasets for X, Y and Subject.
Combine them.

## A-2: Remove temporary variables (Garbarge Collection)
Remove the temporary datasets XTrain, XTest, YTrain, YTest, SubjectTrain, SubjectTest

## B-1: Read features text file
Read features.txt

## B-2: Extracts only the measurements on the mean and standard deviation for each measurement
Subset only mean and standard deviation

## C-1: Read activity labels text file
Read activity_labels.txt

## C-2: Uses descriptive activity names to name the activities in the data set
Give the activities a more readable activity name

## D-1: Appropriately labels the data set with descriptive variable names
Give the dataset variables a descriptive name 
Merge X, Y and Subject into a single Tidy Dataset
Write Tidy Dataset to a text file

# For 2nd Tidy Dataset:

## E-1: Creates a second, independent tidy data set with the average of each variable for each activity and each subject
* Loop through subjects followed by activities
* For each activity in a subject, get the full list of measurements
* Calculate the mean of each of these activities and place them in subsequent columns of the subject-activity row
* Write Second Tidy Dataset to a text file
