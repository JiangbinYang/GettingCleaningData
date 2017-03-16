# Codebook for the final summary dataset (dsSummary) for the Getting and Cleaning Data Course Project

## Jiangbin Yang, March 16, 2017

In a project of Human Activity Recognition Using Smartphones, by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto at Smartlab (www.smartlab.ws), experiments had been carried out with a group of 30 volunteer subjects. Each subject performed 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Sensor signals from accelerometer and gyroscope embedded in the smartphone had been captured and pre-processed. 561 selected statistical features of directional time and frequency domain variables derived from the signals had been recorded for each experimental observation of a 2.56 sec fixed-width sample window, for each subject performing each activity. The experimental data is available on the website, “http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones”. 

In this course project, the data is downloaded from the internet, read into R, further cleaned, extracted, processed and merged, and a final summary dataset (“dsSummary”) has been produced. For both of the original Training and Test sets, subject ID, feature and activity label datasets are first column combined. Then the column-combined Training and Test datasets are further row combined. Please see the R script file “run_analysis.R” and the in-line comments for the specific processing and analysis involved. 

There are total 81 variables in the final dsSummary dataset. The 1st variable is “activityName”, a character variable describing the 6 activities. The 2nd variable is “subjectID”, an integer variable from 1 to 30, identifying the 30 subjects. The remaining 79 variables are all numeric, representing the average of each mean or standard deviation feature variable for each activity and each subject. All these 81 variables are listed in the later part of this codebook. 

Naming convention for the 79 numeric variables in dsSummary:

(1)	These variable names are derived from the variable names of the original feature dataset. Each of them is a combination of the variable number and the cleaned variable name from the original feature dataset. 

(2)	Recall that there were 561 feature variables. Only 79 of them were about “mean” or “standard deviation” of signal measurements. These 79 feature variables are needed for this course project. 

(3)	The original feature variable names are cleaned by removing or replacing some special characters, “(“, “)”, “,” and “-”. For better readability, “_” is used in places of some of these above special characters. 

(4)	However, the original feature variable names were not unique. This is the reason why both the original variable number and variable name are combined to create a new unique name for each feature variable.

The “Acc” feature variables should be in the standard gravity units 'g'. The “Gyro” feature variables should be in the units of radians/second. More information about the specific meanings of the feature variables can be found from the dataset description, available at the website mentioned above. 

1. activityName
2. subjectID
3. v1_tBodyAcc_mean_X
4. v2_tBodyAcc_mean_Y
5. v3_tBodyAcc_mean_Z
6. v4_tBodyAcc_std_X
7. v5_tBodyAcc_std_Y
8. v6_tBodyAcc_std_Z
9. v41_tGravityAcc_mean_X
10. v42_tGravityAcc_mean_Y
11. v43_tGravityAcc_mean_Z
12. v44_tGravityAcc_std_X
13. v45_tGravityAcc_std_Y
14. v46_tGravityAcc_std_Z
15. v81_tBodyAccJerk_mean_X
16. v82_tBodyAccJerk_mean_Y
17. v83_tBodyAccJerk_mean_Z
18. v84_tBodyAccJerk_std_X
19. v85_tBodyAccJerk_std_Y
20. v86_tBodyAccJerk_std_Z
21. v121_tBodyGyro_mean_X
22. v122_tBodyGyro_mean_Y
23. v123_tBodyGyro_mean_Z
24. v124_tBodyGyro_std_X
25. v125_tBodyGyro_std_Y
26. v126_tBodyGyro_std_Z
27. v161_tBodyGyroJerk_mean_X
28. v162_tBodyGyroJerk_mean_Y
29. v163_tBodyGyroJerk_mean_Z
30. v164_tBodyGyroJerk_std_X
31. v165_tBodyGyroJerk_std_Y
32. v166_tBodyGyroJerk_std_Z
33. v201_tBodyAccMag_mean
34. v202_tBodyAccMag_std
35. v214_tGravityAccMag_mean
36. v215_tGravityAccMag_std
37. v227_tBodyAccJerkMag_mean
38. v228_tBodyAccJerkMag_std
39. v240_tBodyGyroMag_mean
40. v241_tBodyGyroMag_std
41. v253_tBodyGyroJerkMag_mean
42. v254_tBodyGyroJerkMag_std
43. v266_fBodyAcc_mean_X
44. v267_fBodyAcc_mean_Y
45. v268_fBodyAcc_mean_Z
46. v269_fBodyAcc_std_X
47. v270_fBodyAcc_std_Y
48. v271_fBodyAcc_std_Z
49. v294_fBodyAcc_meanFreq_X
50. v295_fBodyAcc_meanFreq_Y
51. v296_fBodyAcc_meanFreq_Z
52. v345_fBodyAccJerk_mean_X
53. v346_fBodyAccJerk_mean_Y
54. v347_fBodyAccJerk_mean_Z
55. v348_fBodyAccJerk_std_X
56. v349_fBodyAccJerk_std_Y
57. v350_fBodyAccJerk_std_Z
58. v373_fBodyAccJerk_meanFreq_X
59. v374_fBodyAccJerk_meanFreq_Y
60. v375_fBodyAccJerk_meanFreq_Z
61. v424_fBodyGyro_mean_X
62. v425_fBodyGyro_mean_Y
63. v426_fBodyGyro_mean_Z
64. v427_fBodyGyro_std_X
65. v428_fBodyGyro_std_Y
66. v429_fBodyGyro_std_Z
67. v452_fBodyGyro_meanFreq_X
68. v453_fBodyGyro_meanFreq_Y
69. v454_fBodyGyro_meanFreq_Z
70. v503_fBodyAccMag_mean
71. v504_fBodyAccMag_std
72. v513_fBodyAccMag_meanFreq
73. v516_fBodyBodyAccJerkMag_mean
74. v517_fBodyBodyAccJerkMag_std
75. v526_fBodyBodyAccJerkMag_meanFreq
76. v529_fBodyBodyGyroMag_mean
77. v530_fBodyBodyGyroMag_std
78. v539_fBodyBodyGyroMag_meanFreq
79. v542_fBodyBodyGyroJerkMag_mean
80. v543_fBodyBodyGyroJerkMag_std
81. v552_fBodyBodyGyroJerkMag_meanFreq
