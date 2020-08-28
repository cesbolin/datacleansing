library(dplyr)
library(data.table)

# obtain name of columns we are interested in
feature_names <- read.table("data/features.txt")
column_names <- feature_names %>% filter(grepl("-mean\\(\\)", V2)) %>% select(V2)
column_names <- rbind(column_names, feature_names %>% filter(grepl("-std\\(\\)", V2)) %>% select(V2))


# Load X data
# 1. Merges the training and the test sets to create one data set.
x_test <- read.table("data/X_test.txt")
x_train <- read.table("data/X_train.txt")
x_full <- rbind(x_test, x_train)
names(x_full) <- transpose(feature_names %>% select(V2))
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
x_subset <- x_full[,column_names[,1]]

# Load subject data
subject_test <- read.table("data/subject_test.txt")
subject_train <- read.table("data/subject_train.txt")
subject_full <- rbind(subject_test, subject_train)

  
# Load Y data
y_test <- read.table("data/y_test.txt")
y_train <- read.table("data/y_train.txt")
y_full <- rbind(y_test, y_train)
activity_names <- read.table("data/activity_labels.txt")
data_activity_names <- select(y_full %>% inner_join(activity_names, by="V1"), "V2")


# 3. Uses descriptive activity names to name the activities in the data set
names(data_activity_names) <- c("activity_name")
names(subject_full) <-  c("subject")

# 4. Appropriately labels the data set with descriptive variable names.
dataset <- cbind(x_subset, data_activity_names, subject_full)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
final_result <- dataset %>% group_by(activity_name, subject) %>% summarise(across(everything(),mean))
write.table(final_result, file = "data/tidydata.txt", row.names = FALSE, col.names = TRUE)
