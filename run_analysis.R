#######################################################
## Coursera Getting and Cleaning Data Course Project ##
## Jiangbin Yang, March 16, 2017                     ##
#######################################################

#setwd("C:/_Jiangbin/Studies/Data Science/R JHU/Course3_Get_Data/Course_Project")

########################################
## Download and unzip the source data ##
########################################

url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url1, "./activity.zip", mode = "wb")
unzip("./activity.zip")

######################################################
## Read the data into R Data Tables and Data Frames ##
######################################################

library(data.table)
xTrain <- fread("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
sTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

xTest <- fread("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
sTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

#########################
## Clean the data in R ##
#########################

### Remove consecutive "()" or single ")" from the feature names:
features$V2 <- gsub("\\(\\)|\\)", "", features$V2)

### Further replace remaining single "(", "," or "-" with "_" in the feature names:
features$V2 <- gsub("\\(|,|-", "_", features$V2)

### Check and find the original feature names were not unique:
print("check if the feature descriptions are unique:")
print(uniqueN(features$V2) == length(features$V2))

### Create unique feature names, by utilizing original information:
features$V1a <- paste("v", features$V1, sep = "")
features$V3 <- paste(features$V1a, features$V2, sep = "_")

### Assign unique feature names to the X data columns:
names(xTrain) <- features$V3
names(xTest) <- features$V3

### Assign proper column names for other datasets:
names(activityLabels) <- c("activityClass", "activityName")
names(yTrain) <- "activityClass"
names(yTest) <- "activityClass"

names(sTrain) <- "subjectID"
names(sTest) <- "subjectID"

### Create new columns to identify Training or Testing datasets:
sTrain$subjectGroup <- "Train"
sTest$subjectGroup <- "Test"

###################################
## Combine the datasets together ##
###################################

library(dplyr)

### Extracts only the measurements on the mean and standard deviation 
### for each measurement:
tmpTrain <- cbind(sTrain, yTrain, select(xTrain, grep("mean|std", features$V3)))
tmpTest <- cbind(sTest, yTest, select(xTest, grep("mean|std", features$V3)))

### Merge the training and test sets to create one dataset:
tmpOne <- rbind(tmpTrain, tmpTest)

### Use descriptive activity names to name the activities in the dataset:
intersect(names(activityLabels), names(tmpOne))
dsOne <- right_join(activityLabels, tmpOne)

rm(tmpOne, tmpTest, tmpTrain)

###############
## Summarize ##
###############

### Create a summary dataset with the average of each variable 
### for each activity and each subject:
dsSummary <- select(dsOne, -c(1,4)) %>% group_by(activityName, subjectID) %>% summarise_all(mean)

############
## Output ##
############

if (!dir.exists("output")){
  dir.create("output")
}
#write.csv(dsOne, "./output/dsOne.csv")
#write.csv(dsSummary, "./output/dsSummary.csv")
write.table(dsSummary, "./output/dsSummary.txt", row.names = FALSE)

### Output a file for the Codebook:
#write.table(names(dsSummary), "./output/dsSummary_codebook.txt")
