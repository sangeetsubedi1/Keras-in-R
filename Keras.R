
install.packages("keras")
install_keras(tensorflow = "1.12")

<<<<<<< HEAD
<<<<<<< HEAD
# Sangeet Subedi
#Change Practice

=======
>>>>>>> 86c623324554c77b70ce4bb2b3b2b4941cdae18e
=======
>>>>>>> 86c623324554c77b70ce4bb2b3b2b4941cdae18e

library(keras)
mnist <- dataset_mnist()

#preparing the data
x_train <- mnist$train$x
y_train <- mnist$train$y
<<<<<<< HEAD
<<<<<<< HEAD
ay_train<- mnist$train$y
=======

>>>>>>> 86c623324554c77b70ce4bb2b3b2b4941cdae18e
=======

>>>>>>> 86c623324554c77b70ce4bb2b3b2b4941cdae18e
x_test <- mnist$test$x
y_test <- mnist$test$y

#resshape data. x is 3-d array (images, width, height). the goal it to convert it into matrices. We do this by reshaping height and weight
# as 28 X 28, and convert from grayscale values  (image vector) integers ranging between 0 to 255 into floating point values ranging 0-1. 
dim(x_train) <- c(nrow(x_train), 784)
dim(x_test) <- c(nrow(x_test), 784)

x_train <- x_train / 255
x_test <- x_test / 255

# y data is int vector with values 0-9. we use one-hot-encode to convert it into binary class matrices using Keras to_catetorical() fumction. 

y_train <- to_categorical(y_train, 10)
y_test <- to_categorical(y_test, 10)

#### Defining the model 
# model is a way to organize layers, eg: sequential model 


model <- keras_model_sequential() 
model %>% 
  layer_dense(units = 256, activation = 'relu', input_shape = c(784)) %>% 
  layer_dropout(rate = 0.4) %>% 
  layer_dense(units = 128, activation = 'relu') %>%
  layer_dropout(rate = 0.3) %>%
  layer_dense(units = 10, activation = 'softmax')

summary(model)
#compile the model
model %>% compile(
  loss = "categorical_crossentropy",
  optimizer = optimizer_rmsprop(),
  metrics = c("accuracy")
)


#training and evaluation
history <- model %>% fit(
  x_train, y_train, 
  epocs = 30, batch_size = 128, 
  validation_split = 0.2
)


plot(history)

#evaluate the model's performance on the test data
model %>%evaluate(x_test, y_test, verbose = 0)

#generate predictions on new data
my_prediction_result <- model%>%predict_classes(x_test)
<<<<<<< HEAD
<<<<<<< HEAD
write.csv(my_prediction_result, file = "prediction_result.csv")
write.csv(mnist$train$y, file = "real_data.csv")
=======


>>>>>>> 86c623324554c77b70ce4bb2b3b2b4941cdae18e
=======


>>>>>>> 86c623324554c77b70ce4bb2b3b2b4941cdae18e





