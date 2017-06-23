# Codebook
This file contains a summarization for the data fields from the `tidyaverage_dataset.txt` file

## Identifier Labels
* `activity` - This is the type of activity being performed when the measurement is being taken down
* `subject` - This helps ID the test subject for the data 
 
## Activity Labels
* Value 1: `Walking` 
* Value 2: `Walking upstairs`
* Value 3: `Walking downstairs`
* Value 4: `Sitting`
* Value 5: `Standing`
* Value 6: `Laying`
 
Note: all these activities were what was performed during the test and so there isn't really a need to breakdown exactly what the subjects were doing because the labels themselves are enough desciption to what activity was being performed. 
 
## Variables
* The following are variables used to describe the data contained in the downloaded files: `x_train`, `y_train`, `x_test`, `y_test`, `subject_train` and `subject_test` 
* Then these above mentioned data sets were merged into the following: `x_dataset`, `y_dataset` and `subject_dataset`
* The `features` variable describes the data that contians the correct names corresponding to the `x_dataset`, then the mean and standard deviation is extracted and stored in the vector called `mean_and_std_features` 
* Then `activities` is created to help name the names in the activities data set 
* In order to merge all the data from `x_dataset`, `y_dataset` and `subject_dataset`, the variable `all_dataset` is created to store that merged data using `cbind`
* From this data set `all_dataset`, a second independent tidy data set is created containing the average of each variable for each activity and each subject. This is given the variable `average_dataset` and it contains the data that will be stored in a text file
* The text file is then created using the `ddply()` function, from the plyr package in R, and `colMeans()` function as well. 
* The output is a text file titled `tidyaverage_dataset.txt` containing another indepentent tidy data set corresponding to this data 

## Meaurements 
* `tBodyAccMeanX`
* `tBodyAccMeanY`
* `tBodyAccMeanZ`
* `tBodyAccStdX`
* `tBodyAccStdY`
* `tBodyAccStdZ`
* `tGravityAccMeanX`
* `tGravityAccMeanY`
* `tGravityAccMeanZ`
* `tGravityAccStdX`
* `tGravityAccStdY`
* `tGravityAccStdZ`
* `tBodyAccJerkMeanX`
* `tBodyAccJerkMeanY`
* `tBodyAccJerkMeanZ`
* `tBodyAccJerkStdX`
* `tBodyAccJerkStdY`
* `tBodyAccJerkStdZ`
* `tBodyGyroMeanX`
* `tBodyGyroMeanY`
* `tBodyGyroMeanZ`
* `tBodyGyroStdX`
* `tBodyGyroStdY`
* `tBodyGyroStdZ`
* `tBodyGyroJerkMeanX`
* `tBodyGyroJerkMeanY`
* `tBodyGyroJerkMeanZ`
* `tBodyGyroJerkStdX`
* `tBodyGyroJerkStdY`
* `tBodyGyroJerkStdZ`
* `tBodyAccMagMean`
* `tBodyAccMagStd`
* `tGravityAccMagMean`
* `tGravityAccMagStd`
* `tBodyAccJerkMagMean`
* `tBodyAccJerkMagStd`
* `tBodyGyroMagMean`
* `tBodyGyroMagStd`
* `tBodyGyroJerkMagMean`
* `tBodyGyroJerkMagStd`
* `fBodyAccMeanX`
* `fBodyAccMeanY`
* `fBodyAccMeanZ`
* `fBodyAccStdX`
* `fBodyAccStdY`
* `fBodyAccStdZ`
* `fBodyAccMeanFreqX`
* `fBodyAccMeanFreqY`
* `fBodyAccMeanFreqZ`
* `fBodyAccJerkMeanX`
* `fBodyAccJerkMeanY`
* `fBodyAccJerkMeanZ`
* `fBodyAccJerkStdX`
* `fBodyAccJerkStdY`
* `fBodyAccJerkStdZ`
* `fBodyAccJerkMeanFreqX`
* `fBodyAccJerkMeanFreqY`
* `fBodyAccJerkMeanFreqZ`
* `fBodyGyroMeanX`
* `fBodyGyroMeanY`
* `fBodyGyroMeanZ`
* `fBodyGyroStdX`
* `fBodyGyroStdY`
* `fBodyGyroStdZ`
* `fBodyGyroMeanFreqX`
* `fBodyGyroMeanFreqY`
* `fBodyGyroMeanFreqZ`
* `fBodyAccMagMean`
* `fBodyAccMagStd`
* `fBodyAccMagMeanFreq`
* `fBodyBodyAccJerkMagMean`
* `fBodyBodyAccJerkMagStd`
* `fBodyBodyAccJerkMagMeanFreq`
* `fBodyBodyGyroMagMean`
* `fBodyBodyGyroMagStd`
* `fBodyBodyGyroMagMeanFreq`
* `fBodyBodyGyroJerkMagMean`
* `fBodyBodyGyroJerkMagStd`
* `fBodyBodyGyroJerkMagMeanFreq`
