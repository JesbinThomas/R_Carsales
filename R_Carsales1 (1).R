#Load package
install.packages("dplyr")
install.packages("ggplot2")
install.packages("caret")
install.packages("ellipse")
install.packages("e1071")
library(dplyr)
library(ggplot2)
library(caret)
library(ellipse)
library(e1071)

#Load data
Car_sales_df <- Car_sales

data <- read.csv("Car_sales.csv")
print(data)

data <- read.csv("Car_sales.csv")

print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

# To get details of Manufacturer - Ford
data <- read.csv("Car_sales.csv")

retval <- subset( data, Manufacturer == "Ford")
print(retval)

# Find Sales in thousands for Ford > 50000
data <- read.csv("Car_sales.csv")

info <- subset(data, Sales_in_thousands > 50.000 & Manufacturer == "Ford")
print(info)

plot(x = data$Horsepower,
     y = data$Price_in_thousands,
     xlab = "Horsepower",
     ylab = "Price_in_thousands",
     main = "Horsepower vs Price_in_thousands")

plot(x = data$Horsepower,
     y = data$Price_in_thousands,
     xlab = "Horsepower",
     ylab = "Price_in_thousands",
     col = "green",
     pch = 4,
     main = "Price_in_thousands vs Horsepower")

hist(data$Horsepower)

hist(data$Sales_in_thousands)

#EDA -exploratory data analysis
dim(Car_sales_df)
sapply(Car_sales_df,class)
head(Car_sales_df)
levels(Car_sales_df$Manufacturer)
colSums(is.na(Car_sales_df))
sum(is.na(Car_sales_df$Horsepower))

rowSums(is.na(Car_sales_df))

#Class distribution
percentage<-prop.table(table(Car_sales_df$Manufacturer)) * 100
cbind(freq = table(Car_sales_df$Manufacturer), percentage = percentage)
summary(Car_sales_df)

#This command imports the required data set and saves it to the prc data frame
prc <- read.csv("Car_sales.csv",stringsAsFactors = FALSE)
stringsAsFactors = FALSE

str(prc) #We use this command to see whether the data is structured or not

#removes the first variable(id) from the data set
prc <- prc[-1]

# it helps us to get the numbers of passenger and cars
table(prc$Vehicle_type)

prc$Vehicle_type <- factor(prc$Vehicle_type, levels = c("Passenger", "Car"), labels = c("P", "C"))

# it gives the result in the percentage form rounded of to 1 decimal place
round(prop.table(table(prc$Vehicle_type)) * 100, digits = 1)



