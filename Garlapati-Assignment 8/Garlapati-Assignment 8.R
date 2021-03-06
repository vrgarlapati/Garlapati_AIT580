###--------------------------------------
#Student Name: Videesh Reddy Garlapati
#GNumber: G01354939
###--------------------------------------

library(dplyr)
library(data.table)

attrition = data.table(read.csv(file="D:/GMU Student/Github/Garlapati_AIT580-1/data/EmployeeAttrition.csv", head=TRUE, sep=','))

head(attrition)
str(attrition)
#a. Find the number of rows and columns in the dataset (5 points)
nrow(attrition)
ncol(attrition)
print(paste0("Number of rows: ", nrow(attrition), ", Number of columns: ", ncol(attrition)))

#another way
dim(attrition)
print(dim(attrition))

# b. Find the maximum Age in the dataset (5 points)
print(paste0("Maximum Age:", max(attrition$Age)))

# c. Find the minimum DailyRate in the dataset (5 points)
print(paste0("Minimum DailyRate:", min(attrition$DailyRate)))

# d. Find the average/mean MontlyIncome in the dataset (5 points)
print(paste0("Average MonthyIncome:", mean(attrition$MonthlyIncome)))

# e. How many employees rated WorkLifeBalance as 1 (5 points)
print(paste0("Employees Rated WorkLifebalance:", length(which(attrition$WorkLifeBalance == 1))))

# f. What percent of total employees have TotalWorkingYears less than equal to 5? Also calculate the percentage for TotalWorkingYears greater than 5 (5 points)
x = nrow(attrition)
TWY_LT5 = sum(attrition$TotalWorkingYears<=5)
print(paste0("Percentage of total employees have TotalWorkingYears <= 5: ",round(TWY_LT5/x*100,3)))

TWY_GT5 = sum(attrition$TotalWorkingYears>5)
print(paste0("Percentage of total employees have TotalWorkingYears > 5: ",round(TWY_GT5/x*100,3)))

# g. Print EmployeeNumber, Department and MaritalStatus for those employees whose Attrition is Yes and RelationshipSatisfaction is 1 and YearsSinceLastPromotion is greater than 3 (10 points)
df= subset(attrition,Attrition=="Yes" & RelationshipSatisfaction == 1 & YearsSinceLastPromotion > 3,
      select= c(EmployeeNumber, Department, MaritalStatus))
print(df)

# h. Find the mean, median, mode, standard deviation and frequency distribution of EnvironmentSatisfaction for males and females separately. (Hint: For frequency distribution use table() function (10 points)
mode <- function(data){
  uniqv <- unique(data)
uniqv[which.max(tabulate(match(data, uniqv)))]
}

## For Males
### Male environmentsatisfaction data
mesdata = attrition[Gender=="Male"]$EnvironmentSatisfaction
print(mesdata)

####Mean of Males EnvironmentSatisfaction
print(paste0("Mean of Males EnviranmentSatisfaction:", mean(mesdata)))
####Median of Males EnvironmentSatisfaction
print(paste0("Median of Males EnviranmentSatisfaction:", median(mesdata)))
####Mode of Males EnvironmentSatisfaction
print(paste0("Mode of Males EnviranmentSatisfaction:",mode(mesdata)))

####Standard deviation of Males EnvironmentSatisfaction
print(paste0("SD of Males EnviranmentSatisfaction:",sqrt(var(mesdata))))

####Frequency Distributiion of Males EnvironmentSatisfaction
print(paste0("FD of Males EnviranmentSatisfaction:",table(mesdata)))

## For Females
### Female environmentsatisfaction data
fesdata = attrition[Gender=="Female"]$EnvironmentSatisfaction
print(fesdata)

#### Mean of Males EnvironmentSatisfaction
print(paste0("Mean of Females EnviranmentSatisfaction:",mean(fesdata)))
#### Median of Males EnvironmentSatisfaction
print(paste0("Median of Females EnviranmentSatisfaction:",median(fesdata)))
#### Mode of Males EnvironmentSatisfaction
print(paste0("Mode of Females EnviranmentSatisfaction:",mode(fesdata)))

#### Standard deviation of Males EnvironmentSatisfaction
print(paste0("SD of Females EnviranmentSatisfaction:",sqrt(var(fesdata))))

#### Frequency Distributiion of Males EnvironmentSatisfaction
print(paste0("FD of Females EnviranmentSatisfaction:",table(fesdata)))




# 2) Use Acme.csv and write R code to find the following:

acme = read.csv("D:/GMU Student/Github/Garlapati_AIT580-1/data/Acme.csv")
print(acme)
## 1. Identify data types for each attribute in the dataset.
print(attributes(acme))
print(str(acme))

## 2. Produce a summary statistic for each attribute in the dataset
print(summary(acme$Years))
print(summary(acme$StSalary))
print(summary(acme$Gender))
print(summary(acme$Degree))

### Summary of entire data in acme.csv
print(summary(acme))

## 3. Produce visualizations for each attribute (Hint: use hist() function)
hist(acme$Years,xlab = "Years",col = "blue",border = "green", main ="Histogram of Years")
hist(acme$StSalary,xlab = "Years",col = "blue",border = "green", main ="Histogram of Salary")

#### Histogram cannot be drawn for non-numeric values which are present in table as Gender, Degree

## 4. Display the relationship between
### a. Years of Experience and Starting Salary for all employees (5 points)
plot(x = acme$StSalary,y = acme$Years,xlab = "Salary",ylab = "Years",
            main = "Starting salary vs Years of experience")

### b. Years of Experience and Starting Salary for each gender (5 points)
#### Male
plot(x= maled$StSalary,y= maled$Years,xlab = "Salary",ylab = "Years",
     main = "Salary vs Years of experience for Male")

#### Female
plot(x= femaled$StSalary,y= femaled$Years,xlab = "Salary",ylab = "Years",main = "Salary vs Years of experience for Female")

### c. Years of Experience and Starting Salary for each degree (5 points)

#### BS
plot(x= BS$StSalary,y= BS$Years,xlab = "Salary",ylab = "Years",main = "Salary vs Years of experience for BS")

#### MS
plot(x= MS$StSalary,y= MS$Years,xlab = "Salary",ylab = "Years",main = "Salary vs Years of experience for MS")

#### PhD
plot(x= Phd$StSalary,y= Phd$Years,xlab = "Salary",ylab = "Years",main = "Salary vs Years of experience for PhD")


## 5. Find the correlation between Starting Salary and Years of Experience? (5 points)

Correlation= cor(acme$Years, acme$StSalary)
print(paste0("Correlation between Starting Salary and YOE:", Correlation))
      
### a. Is the correlation different for each gender? (5 points)
maled <- filter(acme,Gender=="M")
Correlation_Male = cor(maled$Years, maled$StSalary, method = "pearson")

femaled <- filter(acme,Gender=="F")
Correlation_Female = cor(femaled$Years, femaled$StSalary, method = "pearson")
print(paste0("Correlation of Male:", Correlation_Male,  "Correlation of Female:", Correlation_Female))

### b. Is the correlation different for each degree? (5 points)

BS <-filter(acme,Degree =="BS")
cor(BS$Years, BS$StSalary, method = "pearson")

MS <-filter(acme,Degree =="MS")
cor(MS$Years, MS$StSalary, method = "pearson")

Phd <-filter(acme,Degree =="PhD")
cor(Phd$Years, Phd$StSalary)
#### Yes, the correlation is different for each degree BS= 0.356, MS=0.45, PhD= 0.045

## 6. What can you conclude about Acme with respect to gender bias after your overall analysis?
print("Answer: The correlation coefficient of both Male and Female are lies between 0.5 to 1 that means Strong Correlation. Acme is not setting Starting Salary based on Gender")
