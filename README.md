# GettingCleaningData
## Getting and Cleaning Data Course Project (Coursera - Johns Hopkins)

**Project Requirements:**
"The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected."

Besides this Readme file, this repo contains: 
* A R script file (run_analysis.R), for performing all the data processing and analysis tasks, to produce a final tidy dataset in the project
* A codebook (CodeBook.md), describing all the variables in the final tidy dataset, the project data and background information, and the transformations performed to produce the final tidy dataset

The R script file does the following.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To run the R script: 
* First make sure the "data.table" and "dplyr" packages have been installed with your R. 
* Then you can just run the entire script in your R, without any modification. 
* The code will download the source data, perform all the processing, cleaning and transformation, generate a final tidy dataset (dsSummary.txt), and save it as a txt file in an "output" folder created in your working directory.
