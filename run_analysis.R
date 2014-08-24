# You should create one R script called run_analysis.R that does the following. 
# 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

mergeDataSetParts <- function(featureObservations, featureNames, subjectPerObservation, activityPerObservation) {
  result <- data.frame(subjectPerObservation, activityPerObservation, featureObservations)
  colnames(result) <- c("Subject", "Activity", as.character(data_features$V2))
  result
}

### set working directory
setwd("~/Documents/rstudio/getdata-006-quizproject/");

### load the data and explore
## root
data_activity_labels <- read.table("data/activity_labels.txt", "", header = F)
colnames(data_activity_labels) <- c("ActivityID", "ActivityName")

data_features <- read.table("data/features.txt", "", header = F)
dim(data_features) # [1] 561   2 # features itself
str(data_features)
data_features$V2

## train
data_train_subject_train <- read.table("data/train/subject_train.txt", "", header = F)
dim(data_train_subject_train) # [1] 7352    1 # observations per subject
str(data_train_subject_train)
table(data_train_subject_train) # the data between test and training set are split per subject

data_train_x_train <- read.table("data/train/x_train.txt", "", header = F)
dim(data_train_x_train) # [1] 7352  561 # observations of features

data_train_y_train <- read.table("data/train/y_train.txt", "", header = F)
dim(data_train_y_train) # [1] 7352    1 # activities

## test
data_test_subject_test <- read.table("data/test/subject_test.txt", "", header = F)
dim(data_test_subject_test) # [1] 2947    1 # observations per subject
str(data_test_subject_test)
table(data_test_subject_test)

data_test_x_test <- read.table("data/test/x_test.txt", "", header = F)
dim(data_test_x_test) # [1] 2947  561 # observations of features

data_test_y_test <- read.table("data/test/y_test.txt", "", header = F)
dim(data_test_y_test) # [1] 2947    1 # activities

### combine together parts of train and test data set and them merge both of them
training_set <- mergeDataSetParts(data_train_x_train, data_features$V2, data_train_subject_train, data_train_y_train)
test_set <- mergeDataSetParts(data_test_x_test, data_features$V2, data_test_subject_test, data_test_y_test)
dim(training_set)
dim(test_set)
merged_data <- rbind(training_set, test_set)
colnames(merged_data)
dim(merged_data)
str(merged_data)

### subset only mean and stdev columns
grep("mean", colnames(merged_data), ignore.case = TRUE)
grep("std", colnames(merged_data), ignore.case = TRUE)
merged_std_mean_filter <- merged_data[, c(1, 2, grep("mean", colnames(merged_data), ignore.case = TRUE), grep("std", colnames(merged_data), ignore.case = TRUE))]
dim(merged_std_mean_filter)
names(merged_std_mean_filter)

### label activities according to the activity IDs
merged_std_mean_filter$Activity <- as.factor(merged_std_mean_filter$Activity)
levels(merged_std_mean_filter$Activity) <- data_activity_labels$ActivityName
head(merged_std_mean_filter$Activity)

colnames(merged_std_mean_filter)

### output the data
## write.table(merged_std_mean_filter, "merged_std_mean_filter.txt", row.name=FALSE)

### create 2nd independent data set
### the average of each variable for each activity and each subject
dim(merged_std_mean_filter)
merged_avg_std_mean_filter <- aggregate(merged_std_mean_filter[,3:88], by=list(Subject=merged_std_mean_filter$Subject, Activity=merged_std_mean_filter$Activity), FUN=mean, na.rm=TRUE)
dim(merged_avg_std_mean_filter)

write.table(merged_avg_std_mean_filter, "merged_avg_filter_std_mean.txt", row.name=FALSE)

