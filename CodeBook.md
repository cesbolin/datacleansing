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

1. activity_name
2. subject
3. tBodyAcc-mean()-X
4. tBodyAcc-mean()-Y
5. tBodyAcc-mean()-Z
6. tGravityAcc-mean()-X
7. tGravityAcc-mean()-Y
8. tGravityAcc-mean()-Z
9. tBodyAccJerk-mean()-X
10. tBodyAccJerk-mean()-Y
11. tBodyAccJerk-mean()-Z
12. tBodyGyro-mean()-X
13. tBodyGyro-mean()-Y
14. tBodyGyro-mean()-Z
15. tBodyGyroJerk-mean()-X
16. tBodyGyroJerk-mean()-Y
17. tBodyGyroJerk-mean()-Z
18. tBodyAccMag-mean()
19. tGravityAccMag-mean()
20. tBodyAccJerkMag-mean()
21. tBodyGyroMag-mean()
22. tBodyGyroJerkMag-mean()
23. fBodyAcc-mean()-X
24. fBodyAcc-mean()-Y
25. fBodyAcc-mean()-Z
26. fBodyAccJerk-mean()-X
27. fBodyAccJerk-mean()-Y
28. fBodyAccJerk-mean()-Z
29. fBodyGyro-mean()-X
30. fBodyGyro-mean()-Y
31. fBodyGyro-mean()-Z
32. fBodyAccMag-mean()
33. fBodyBodyAccJerkMag-mean()
34. fBodyBodyGyroMag-mean()
35. fBodyBodyGyroJerkMag-mean()
36. tBodyAcc-std()-X
37. tBodyAcc-std()-Y
38. tBodyAcc-std()-Z
39. tGravityAcc-std()-X
40. tGravityAcc-std()-Y
41. tGravityAcc-std()-Z
42. tBodyAccJerk-std()-X
43. tBodyAccJerk-std()-Y
44. tBodyAccJerk-std()-Z
45. tBodyGyro-std()-X
46. tBodyGyro-std()-Y
47. tBodyGyro-std()-Z
48. tBodyGyroJerk-std()-X
49. tBodyGyroJerk-std()-Y
50. tBodyGyroJerk-std()-Z
51. tBodyAccMag-std()
52. tGravityAccMag-std()
53. tBodyAccJerkMag-std()
54. tBodyGyroMag-std()
55. tBodyGyroJerkMag-std()
56. fBodyAcc-std()-X
57. fBodyAcc-std()-Y
58. fBodyAcc-std()-Z
59. fBodyAccJerk-std()-X
60. fBodyAccJerk-std()-Y
61. fBodyAccJerk-std()-Z
62. fBodyGyro-std()-X
63. fBodyGyro-std()-Y
64. fBodyGyro-std()-Z
65. fBodyAccMag-std()
66. fBodyBodyAccJerkMag-std()
67. fBodyBodyGyroMag-std()
68. fBodyBodyGyroJerkMag-std()