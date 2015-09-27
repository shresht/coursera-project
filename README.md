This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:

1)Download the dataset if it does not already exist in the working directory
2)Load the activity and feature info
3)Loads the training set(xtrain)
4)Loads the activity and subject data for the dataset, and merges those columns with the xtrain set and store it in a variable trainset.
5)Loads the test dataset(xtest)
6)Load the activity and the subject data for the dataset,and merge those columns with the xtest set and store it in a variable testset. 
7)Merge the testset and the trainset and store it in a variable newset
8)Select only those columns which have either,mean or the std deviation and store it in eden.
9)Change the numbers in the activities column to the names in the descriptive activities.
