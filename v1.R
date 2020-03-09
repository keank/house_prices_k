# Load packages
# install.packages('data.table')
# install.packages('dplyr')

require(data.table)
require(dplyr)

# Load data
train<-read.csv('C:/Users/keank/Google Drive/KY/kaggle/house-prices-advanced-regression-techniques/train.csv')
test<-read.csv('C:/Users/keank/Google Drive/KY/kaggle/house-prices-advanced-regression-techniques/test.csv')

# Data Cleaning
train<-data.table(train); test<-data.table(test) # test has no sales price
test$SalePrice<-NA
all<-rbind(train, test) # train has ids 1460 and below

str(all)

all$id<-factor(all$id)
all$MSSubClass<-factor(all$MSSubClass)
all$OverallQual<-ordered(all$OverallQual)
all$OverallCond<-ordered(all$OverallCond)
# noted that need to do one hot encoding for xgboost. 