# CleaningDataProject
Course Project for Coursera Getting and Cleaning Data

Please place the Samsung Data folder (UCI HAR Dataset) to the working directory
Run the run_analysis Code
The code will generate a AveData.txt file in your working directory.
This file will contains the average of each measurement on mean and standard deviation data by each activity and each subject.

# AveData file
The AveData.txt file contains the average of the mean and standard deviation of each measurement by all 30 experiment subjects and 6 activities.
It was first combined from the train and test dataset to produce the full dataset.
Only the mean and standard deviation on the measurement were extracted from the full dataset.
The descriptive activity names were then assigned to the level values in the dataset.
The appropriate labels were also applied to the dataset variables.
Finally, Average of each variables were summarized by each subject and each activity.
The averaged dataset was then saved as the AveData.txt file.


# For detailed information of the original data, Please see: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
