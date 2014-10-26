training = read.csv("pml-training.csv", na.strings=c("", "NA", "NULL"))
testing = read.csv("pml-testing.csv", na.strings=c("", "NA", "NULL"))

library(tree)

set.seed(11111)

treeTraining = tree(classe~.,data=training)
summary(treeTraining)
plot(tree.training)
text(tree.training,pretty=0, cex =.8)
library(caret)
modFit <- train(classe ~ .,method="rpart",data=training)
print(modFit$finalModel)