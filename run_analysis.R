######################################################################
## A-1: Merges the training and the test sets to create one data set
XTest <- read.table("test/X_test.txt")
XTrain <- read.table("train/X_train.txt")
X <- rbind(XTest, XTrain)

YTest <- read.table("test/y_test.txt")
YTrain <- read.table("train/y_train.txt")
Y <- rbind(YTest, YTrain)

SubjectTest <- read.table("test/subject_test.txt")
SubjectTrain <- read.table("train/subject_train.txt")
Subject <- rbind(SubjectTest, SubjectTrain)


## A-2: Remove temporary variables (Garbarge Collection)
rm(XTest)
rm(XTrain)
rm(YTest)
rm(YTrain)
rm(testSub)
rm(trainSub)


######################################################################
## B-1: Read features text file
FeaturesFull <- read.table("features.txt", stringsAsFactors=FALSE)

## B-2: Extracts only the measurements on the mean and standard deviation for each measurement
Features <- FeaturesFull$V2
StdMeanColumns <- grepl("(std|mean[^F])", Features, perl=TRUE)
X <- X[, StdMeanColumns]

## C-1: Read activity labels text file
activities <- read.table("activity_labels.txt")

## C-2: Uses descriptive activity names to name the activities in the data set
activities[,2] = gsub("_", "", tolower(as.character(activities[,2])))
Y[,1] = activities[Y[,1], 2]


## D-1: Appropriately labels the data set with descriptive variable names
names(X) <- Features[StdMeanColumns]
names(X) <- gsub("\\(|\\)", "", names(X))
names(X) <- tolower(names(X))
names(Y) <- "Activity"
names(Subject) <- "Subject"

TidyData1 <- cbind(Subject, Y, X)
write.table(TidyData1, "TidyData1.txt")

## E-1: Creates a second, independent tidy data set with the average of each variable for each activity and each subject
uS = unique(Subject)[,1]
nS = length(uS)
nA = length(activities[,1])
nC = length(names(TidyData1))
TidyData2 = TidyData1[ 1:(nS*nA), ]

row = 1
for (s in 1:nS) {
        for (a in 1:nA) {
                TidyData2[row,1] = uS[s]
                TidyData2[row,2] = activities[a, 2]
                tmp <- TidyData1[TidyData1$subject==s & TidyData1$activity==activities[a,2],]
                TidyData2[row, 3:nC] <- colMeans(tmp[, 3:nC])
                row = row + 1
        }
}

write.table(TidyData2, "TidyData2.txt")
