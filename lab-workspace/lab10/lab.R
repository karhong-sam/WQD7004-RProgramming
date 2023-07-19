library(caret)
library(klaR)
library(randomForest)
library(class)
library(mlbench)
library(pls)

# ML model
NB<-function(s, df, col) {
  trainIndex<-createDataPartition(col, p=s, list=F)
  data_train<-df[trainIndex,]
  data_test<-df[-trainIndex,]           
  model <- NaiveBayes(Species~., data=data_train)
  
  # make predictions
  x_test <- data_test[,1:4]
  y_test <- data_test[,5]
  predictions <- predict(model, x_test)
  cm<-confusionMatrix(predictions$class, y_test)
  return(cm)
}

RF<-function(s, df, col) {
  trainIndex<-createDataPartition(col, p=s, list=F)
  data_train<-df[trainIndex,]
  data_test<-df[-trainIndex,]           
  model <- randomForest(Species~., data=data_train)
  
  # make predictions
  x_test <- data_test[,1:4]
  y_test <- data_test[,5]
  predictions <- predict(model, x_test)
  cm<-confusionMatrix(predictions, y_test)
  return(cm)
}

KNN<-function(s, df, col) {
  trainIndex<-createDataPartition(col, p=s, list=F)
  data_train<-df[trainIndex,]
  data_test<-df[-trainIndex,]           
  model <- train(Species~., data=data_train, method = "knn")
  
  # make predictions
  x_test <- data_test[,1:4]
  y_test <- data_test[,5]
  predictions <- predict(model, x_test)
  cm<-confusionMatrix(predictions, y_test)
  return(list(model, cm))
}

split<-0.80  # 80%/20% train/test
result1<-NB(split, iris, iris$Species)
split<-0.70  # 70%/30% train/test
result2<-NB(split, iris, iris$Species)

split<-0.80  # 80%/20% train/test
result3<-RF(split, iris, iris$Species)
split<-0.70  # 70%/30% train/test
result4<-RF(split, iris, iris$Species)

split<-0.80  # 80%/20% train/test
result5<-KNN(split, iris, iris$Species)
split<-0.70  # 70%/30% train/test
result6<-KNN(split, iris, iris$Species)

# k-fold
train_control <- trainControl(method="cv", number=10)
modelNB1 <- train(Species~., data=iris, trControl=train_control, method="nb")
modelNB1

# repeated K Fold
train_control <- trainControl(method="repeatedcv", number=10, repeats=3)
modelNB2 <- train(Species~., data=iris, trControl=train_control, method="nb")
modelNB2

# Leave one out CV
train_control <- trainControl(method="LOOCV")
modelNB3 <- train(Species~., data=iris, trControl=train_control, method="nb")
modelNB3

# bootstrap
train_control <- trainControl(method="boot", number=100)
modelNB4 <- train(Species~., data=iris, trControl=train_control, method="nb")
modelNB4

# rmse, r-square, mae
fit1<-train(Employed~., data=longley, method="lm", metric="RMSE")
control <- trainControl(method="cv", number=5)
fit2 <- train(Employed~., data=longley, method="lm", metric="RMSE", trControl=control)

fit3<-train(mpg ~ ., data = mtcars, method = "lm", metric="Rsquared")
control1 <- trainControl(method="cv", number=10)
fit4<-train(mpg ~ ., data = mtcars, method = "lm", metric="Rsquared", trControl=control1)