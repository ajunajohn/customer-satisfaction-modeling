### Setting the Working Directory where the Data file is located ###
setwd("D:/Academic Operations/Online + BACP/Advanced Statistics/Project- Factor Hair")
getwd()

### Loading necessary libraries ###
library(psych)
library(ggplot2)
library(Information)
library(caTools)
library(dummies)
library(car)
library(XLConnect)
library(grid)

### Reading the data ###
mydata=read.csv("Factor-Hair-Revised.csv", header = TRUE)

### Checking the dataset ###
View(mydata)

### Structure of the dataset
str(mydata)
attach(mydata)

### Summary of the dataset ###
summary(mydata)

### Checking for Missing Values in the dataset ###
sum(is.na(mydata))

### Checking for outliers in the dataset & Data Summary ###

summary(mydata$ProdQual)
summary(mydata$Ecom)
summary(mydata$TechSup)
summary(mydata$CompRes)
summary(mydata$Advertising)
summary(mydata$ProdLine)
summary(mydata$SalesFImage)
summary(mydata$ComPricing)
summary(mydata$WartyClaim)
summary(mydata$OrdBilling)
summary(mydata$DelSpeed)
summary(mydata$Satisfaction)

# Box plot 
boxplot(mydata$ProdQual)
boxplot(mydata$Ecom)
boxplot(mydata$TechSup)
boxplot(mydata$CompRes)
boxplot(mydata$Advertising)
boxplot(mydata$ProdLine)
boxplot(mydata$SalesFImage)
boxplot(mydata$ComPricing)
boxplot(mydata$WartyClaim)
boxplot(mydata$OrdBilling)
boxplot(mydata$DelSpeed)
boxplot(mydata$Satisfaction)

### Checking for Correlation among the Variables ###
Correlation=cor(mydata[,2:12])
print(Correlation,digits=3)

library(corrplot)
corrplot(cor(mydata))

#Regression with Satisfaction as the dependent variable with each of the independent variables
m1=lm(Satisfaction~ProdQual)
summary(m1)

m2=lm(Satisfaction~Ecom)
summary(m2)

m3=lm(Satisfaction~TechSup)
summary(m3)

m4=lm(Satisfaction~CompRes)
summary(m4)

m5=lm(Satisfaction~Advertising)
summary(m5)

m6=lm(Satisfaction~Advertising)
summary(m6)

m7=lm(Satisfaction~ProdLine)
summary(m7)

m8=lm(Satisfaction~SalesFImage)
summary(m8)

m9=lm(Satisfaction~ComPricing)
summary(m9)

m10=lm(Satisfaction~WartyClaim)
summary(m10)

m11=lm(Satisfaction~OrdBilling)
summary(m11)

m12=lm(Satisfaction~DelSpeed)
summary(m12)
### Initial Regression Model using all Independent Variables ###

model0 =lm(Satisfaction~., mydata)
summary(model0)

### Factor Analysis ###
mydata1 <-subset(mydata, select = -c(1,13))


### Finding number of acceptable factors ###
library(psych)
parallel <-fa.parallel(mydata1, fm = 'minres', fa = 'fa')

### Factor Analysis ###

fa1<- fa(r=mydata1, nfactors = 4, rotate="varimax",fm="pa")
print(fa1)
fa.diagram(fa1)

### Regression Analysis ###

regdata <- cbind(mydata[13], fa1$scores)
head(regdata)
names(regdata) <- c("Satisfaction", "Purchase", "Marketing", "Post_purchase", "Prod_positioning")
View(regdata)
attach(regdata)
Model=lm(Satisfaction~.,data = regdata)
summary(Model)

