# Load packages
install.packages('data.table')
install.packages('dplyr')

require(data.table)
require(dplyr)

# Load data
train<-read.csv('C:/Users/keank/Google Drive/KY/kaggle/house-prices-advanced-regression-techniques/train.csv')
test<-read.csv('C:/Users/keank/Google Drive/KY/kaggle/house-prices-advanced-regression-techniques/test.csv')

train<-data.table(train); test<-data.table(test) # test has no sales price
train
test
all<-cbind(train, te) # train has ids 1460 and below
