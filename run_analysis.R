# This script does the following:
# Merges the Samsung training and the test sets to create one data set. Extracts only
# the measurements on the mean and standard deviation for each measurement. Uses
# descriptive activity names to name the activities in the data set 
# Appropriately labels the data set with descriptive activity names. Creates a
# second, independent tidy data set with the average of each variable for each
# activity and each subject.


setwd('/Users/Mark/Dropbox/School/Getting and Cleaning Data/GettingAndCleaningDataProject/')

library(reshape2)

# Read in all the data and data labels, then bind them togther and subset for just the columns we are interested in:
test.x <- read.table('./UCI HAR Dataset/test/X_test.txt')
test.y <-read.table('./UCI HAR Dataset/test/Y_test.txt')
train.x <- read.table('./UCI HAR Dataset/train/X_train.txt')
train.y <-read.table('./UCI HAR Dataset/train/Y_train.txt')
activities <- read.table('./UCI HAR Dataset/activity_labels.txt')
subject.test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
subject.train <- read.table('./UCI HAR Dataset/train/subject_train.txt')
d <- rbind(cbind(subject.test, test.y, test.x), cbind(subject.train, train.y, train.x))
features.x <- read.table('./UCI HAR Dataset/features.txt', colClasses = "character")
names(d) <- c("subject", "activity", features.x$V2)
d.sub <- d[ , grepl("-mean()", names(d), fixed = T) | grepl("-std()", names(d), fixed = T) | grepl("Mean", names(d), fixed = T)  | names(d) %in% c("subject", "activity")]
d.sub <- d.sub[,-69] #not a mean or a stdev

# convert activity numeral classes (1-6) and variables into clear names
d.sub$activity <- activities[match(d.sub$activity, activities$V1),"V2"]
names(d.sub) <- gsub("BodyBody", "Body", names(d.sub))
names(d.sub) <- gsub("-mean\\(\\)", "Mean", names(d.sub))
names(d.sub) <- gsub("-std\\(\\)", "StndDev", names(d.sub))
names(d.sub) <- gsub("angle\\(","", names(d.sub))
names(d.sub) <- gsub(")","", names(d.sub))
names(d.sub) <- gsub(",g","G", names(d.sub))
names(d.sub) <- gsub("^t", "time", names(d.sub))
names(d.sub) <- gsub("^f", "fourier", names(d.sub))
names(d.sub) <- gsub("-", "_", names(d.sub))

# Melt the data into a tall, skinny dataframe and then use dcast to return the
# dataset to a wide form but with a mean for each value:
d.melt <- melt(d.sub, id = c("subject", "activity"))
d.cast <- dcast(d.melt, subject + activity ~ variable, mean)

# cleanup and export to a txt file:
rm(test.x, test.y, train.x, train.y, activities, d, features.x, subject.test, subject.train, d.melt)
write.table(d.cast,"tidyData.txt")
