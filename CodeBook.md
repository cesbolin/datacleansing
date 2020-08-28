# Subject activity means

This project summarizes Nike's data by subkect and by activity, calculating the average of the means and standard deviations of each subject activity

### Data reading
The followingh files are used to perform this calculation
1. X_test.txt - Contains test observation data
2. X_train.txt - Contains train observation data
3. y_test.txt - Contains activities on which X test data was measured (row by row)
4. y_train.txt - Contains activities on which X train data was measured (row by row)
5. subject_test.txt - Indicates the subject on which test observation data was measured on
6. subject_train.txt - Indicates the subject on which train observation data was measured on
7. activity_labels.txt - Maps activities from a number to a readable text
8. features.txt - contains the names of the columns in X

### Data processing

The following transformations were executed in the data

1. Read X_train, X_test and merged them together at row level
2. Assigned names to columns in X based on features.txt
3. Selected columns from X for only does variables thar are either mean() or std()
4. Read y_train and y_test, merging them at row level into a single set
5. Assigned activity names to Y rows by mapping with activity_labels
6. Assigned names to columns in Y
7. Read subject_train and subject test, merging them at row level to get a single set
8. Assigned column names to subject data
9. Merged X, Y and subject column wise
10. Grouped result by activity name and subject, and caslculated means for each group
11. Saved results in file data/tinydata.txt


### Column names in data/tidydata.txt

activity_name
subject
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyAccMag-mean()
fBodyBodyAccJerkMag-mean()
fBodyBodyGyroMag-mean()
fBodyBodyGyroJerkMag-mean()
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()
tBodyGyroMag-std()
tBodyGyroJerkMag-std()
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-std()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()