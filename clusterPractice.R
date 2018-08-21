## practice cluster
data(iris); library(ggplot2)
inTrain <- createDataPartition(y=iris$Species,
                               p=0.7, list = FALSE)

training <- iris[inTrain,]
testing <- iris[-inTrain,]
dim(training);dim(testing)