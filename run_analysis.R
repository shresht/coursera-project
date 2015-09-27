features <- read.table("features.txt")
activities <- read.table("activity_labels.txt")
subtrain <- read.table("./train/subject_train.txt")
xtrain <- read.table("./train/x_train.txt")
ytrain <- read.table("./train/y_train.txt")



names(xtrain) <- factor(features$V2)
names(subtrain) <- "I.D."
names(ytrain) <- "activities"
trainset <- cbind(subtrain,ytrain,xtrain)


subtest <- read.table("./test/subject_test.txt")
xtest <- read.table("./test/x_test.txt")
ytest <- read.table("./test/y_test.txt")


names(xtest) <- factor(features$V2)
names(subtest) <- "I.D."
names(ytest) <- "activities"
testset <- cbind(subtest,ytest,xtest)

newset <- rbind(trainset,testset)


featuresWanted <- grep(".*mean.*|.*std.*",features$V2)
latest <- features[featuresWanted,2]
rip <- data.frame(latest)
k <- grep("meanFreq",rip$latest)
final <- rip[-c(47,48,49,56,57,58,65,66,67,70,73,76,79),]
final <- data.frame(final)
eden <- newset[,levels(factor(final$final))]
eden <- cbind(newset["I.D."],newset["activities"],eden)


eden$activities[eden$activities==1] <- "WALKING"
eden$activities[eden$activities==2] <- "WALKING_UPSTAIRS"
eden$activities[eden$activities==3] <- "WALKING_DOWNSTAIRS"
eden$activities[eden$activities==4] <- "SITTING"
eden$activities[eden$activities==5] <- "STANDING"
eden$activities[eden$activities==6] <- "LAYING"






