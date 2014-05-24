# Codebook for R script run_analyis.R and tidyData.txt

The R script run_analysis.R takes a series of data files and descriptors from the "Human Activity Recognition Using Smartphones Data Set" and returns a "tidy" dataset of mean values for further analysis.

The variables (and their derivations) in order of appearances in the data set are:

- subject. Has values 1-30 for each participant in the study.
- activity. Has 6 possible values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS.

The next group of varialbes (columns 3 to 71) are the means (Mean) and standard deviations (StdDev) for each subject-activity pair for a series of measures taken from the phone's accelerometer (Acc) or gyroscope (Gyro) in their respective X, Y or Z planes and a magnitude "Mag" calculated. These values are recorded as either their time or as a Fourier transformation (denoted by the variable prefix) and if they originated from "Body" or "Gravity" movements. Further descriptions of the original data transformations (i.e. those that were performed prior to my tidying of the dataset) can be found on the dataset's website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The variables names are: 
- timeBodyAccMean_X, timeBodyAccMean_Y, timeBodyAccMean_Z, timeBodyAccStndDev_X, timeBodyAccStndDev_Y, timeBodyAccStndDev_Z, timeGravityAccMean_X, timeGravityAccMean_Y, timeGravityAccMean_Z, timeGravityAccStndDev_X, timeGravityAccStndDev_Y, timeGravityAccStndDev_Z, timeBodyAccJerkMean_X, timeBodyAccJerkMean_Y, timeBodyAccJerkMean_Z, timeBodyAccJerkStndDev_X, timeBodyAccJerkStndDev_Y, timeBodyAccJerkStndDev_Z, timeBodyGyroMean_X, timeBodyGyroMean_Y, timeBodyGyroMean_Z, timeBodyGyroStndDev_X, timeBodyGyroStndDev_Y, timeBodyGyroStndDev_Z, timeBodyGyroJerkMean_X, timeBodyGyroJerkMean_Y, timeBodyGyroJerkMean_Z, timeBodyGyroJerkStndDev_X, timeBodyGyroJerkStndDev_Y, timeBodyGyroJerkStndDev_Z, timeBodyAccMagMean, timeBodyAccMagStndDev, timeGravityAccMagMean, timeGravityAccMagStndDev, timeBodyAccJerkMagMean, timeBodyAccJerkMagStndDev, timeBodyGyroMagMean, timeBodyGyroMagStndDev, timeBodyGyroJerkMagMean, timeBodyGyroJerkMagStndDev, fourierBodyAccMean_X, fourierBodyAccMean_Y, fourierBodyAccMean_Z, fourierBodyAccStndDev_X, fourierBodyAccStndDev_Y, fourierBodyAccStndDev_Z, fourierBodyAccJerkMean_X, fourierBodyAccJerkMean_Y, fourierBodyAccJerkMean_Z, fourierBodyAccJerkStndDev_X, fourierBodyAccJerkStndDev_Y, fourierBodyAccJerkStndDev_Z, fourierBodyGyroMean_X, fourierBodyGyroMean_Y, fourierBodyGyroMean_Z, fourierBodyGyroStndDev_X, fourierBodyGyroStndDev_Y, fourierBodyGyroStndDev_Z, fourierBodyAccMagMean, fourierBodyAccMagStndDev, fourierBodyAccJerkMagMean, fourierBodyAccJerkMagStndDev, fourierBodyGyroMagMean, fourierBodyGyroMagStndDev, fourierBodyGyroJerkMagMean, fourierBodyGyroJerkMagStndDev, timeBodyAccJerkMeanGravityMean.

The final set of variables are the Body and Gravity vectors averaged:
- timeBodyGyroMeanGravityMean, timeBodyGyroJerkMeanGravityMean, XGravityMean, YGravityMean, ZGravityMean

