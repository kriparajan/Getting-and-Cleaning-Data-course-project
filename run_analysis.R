setwd("C:/Users/Kripa/Desktop/R programming Directory/getdata_projectfiles_UCI HAR DatasetUCI HAR Dataset")
library(plyr)
## Part1 
## Merges the training and the test sets to create one data set.
x_train<-read.table("train/X_train.txt")
y_train<-read.table("train/y_train.txt")
subject_train<-read.table("train/subject_train.txt")


x_test<-read.table("test/x_test.txt")
y_test<-read.table("test/y_test.txt")
subject_test<-read.table("test/subject_test.txt")


x_dataset<-rbind(x_train,x_test)
y_dataset<-rbind(y_train,y_test)
subject_dataset<-rbind(subject_train,subject_test)

## Part2
## Extracts only the measurements on the mean and standard deviation for each measurement.

features<-read.table("features.txt")
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])


x_dataset <- x_dataset[, mean_and_std_features]


names(x_dataset) <- features[mean_and_std_features, 2]




## Part 3
## Uses descriptive activity names to name the activities in the data set

activities <- read.table("activity_labels.txt")

# update values with correct activity names
y_dataset[, 1] <- activities[y_dataset[, 1], 2]

# correct column name
names(y_dataset) <- "activity"

## Part 4
## Appropriately labels the data set with descriptive variable names.
names(subject_dataset)<-"subject"

all_dataset<-cbind(x_dataset,y_dataset,subject_dataset)


## Part 5
## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
average_dataset<-ddply(all_dataset,.(subject, activity),function(x)colMeans(x[1:66]))

write.table(average_dataset,"tidyaverage_dataset.txt", row.name=FALSE)
