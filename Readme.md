# Subject activity means

This project summarizes Nike's data by subkect and by activity, calculating the average of the means and standard deviations of each subject activity

## Data processing

Data was processed as follows

1. Test and train data was read and merged together (X, Y and subject)
2. Only mean and std columns where extracted from X
3. All three sets (X, Y, subject) were concatenated to form a single data set
4. Proper names were assigned to the columns
5. Averages where calculated in the final tidied dataset
6. Final results are saved in data/tidydata.txt

project.R contains the code used to get the final results

data/ contains the files used for the calculation


