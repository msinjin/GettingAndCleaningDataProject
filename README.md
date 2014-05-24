GettingAndCleaningDataProject
=============================

Code for the class project: tidying a data set for analysis ("Human Activity Recognition Using Smartphones Data Set").

This R script does the following in order:
- Merges the training and test datasets
- Brings in variable and activity names information
- Matches variable columns to their recorded variable names
- Subsets only the variables recoding information on means or standard errors
- Matches activity numerals to their correct readable names
- Cleans up the difficult to interpret variable names through a series of grep expressions
- Melts the data into a "skinny" dataset and then recasts it into a wide dataset of the mean values for each subject/activity combination (using the "reshape2" package)
- Cleans up the workspace and writes the new tidy dataset to a .txt file
