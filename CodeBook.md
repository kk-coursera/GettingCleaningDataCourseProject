Variables

* XTest - table contents of test/X_test.txt
* XTrain - table contents of train/X_train.txt
* X - Measurement data. Combine datasets of the two above variables

* YTest - table contents of test/y_test.txt
* YTrain - table contents of train/y_train.txt
* Y - Data Labels. Combine datasets of the two above variables

* SubjectTest - table contents of test/subject_test.txt
* SubjectTrain - table contents of test/subject_train.txt
* Subject - Subjects. Combine datasets of the two above variables

* FeaturesFull - table contents of features.txt
* Features - Names of data columns derived from FeaturesFull
* StdMeanColumns - Logical vector of features to use in tidy dataset

* activities - table contents of activity_labels.txt
* TidyData1 - subsetted, human-readable data ready for output according to project description

* uS - unique subjects from Subject
* nS - number of unique subjects
* nA - number of activities
* nC - number of columns in TidyData1
* TidyData2 - Second tidy dataset with average of each variable for each activity and subject
