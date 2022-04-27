###------------------
###Regression and Clustering
###------------------

###Students Name: VIDEESH REDDY GARLAPATI
###GNumber: G01354939

library(tidyverse)
library(ggplot2)

empatt <- read.csv("D:/GMU Student/Github/Garlapati_AIT580-1/data/EmployeeAttrition.csv")


# Regression 
### a. Show the scatter plot with relationship curve between TotalWorkingYears and MonthlyIncome. Briefly explain your observation in the plot (Hint: Use scatter.smooth() function in R) (5 points) 
with(empatt, scatter.smooth(TotalWorkingYears, MonthlyIncome))
#### By increase in total working years the Monthly income also increased, and the observation is positively correlated.

### b. Show the scatter plot with relationship curve between Age and DistanceFromHome. Briefly explain your observation in the plot (Hint: Use scatter.smooth() function in R) (5 points) 
with(empatt, scatter.smooth(Age, DistanceFromHome))
#### It is difficult to understand about the plot either increasing or decreasing value of variables and it does not contain any relationship betwwen the Age and Distance From Home.

### c. Calculate Correlation for (a) and (b) and explain the values to support your answer in (a) and (b) (5 points) 
a= cor(x=empatt$TotalWorkingYears, y=empatt$MonthlyIncome)
print(a)
#### The correlation between the Total Working Years and Monthly Income is 0.7728 and it is correlated.

b= cor(x=empatt$Age, y=empatt$DistanceFromHome)
print(b)
#### The correlation between the Age and Distance From Home is -0.00168

### d. Using Linear Regression, find details of the relationship between TotalWorkingYears and MonthlyIncome. Explain results in terms of p-value at 95% confidence interval and determine whether the relationship is significant or not (Hint: Use lm() to create linear regression model. Use print() to show coefficients. Use summary() to show more details)(15 points) 
twy = lm(MonthlyIncome~TotalWorkingYears, data=empatt)
print(twy)
summary(twy)
ggplot(empatt, aes(x = TotalWorkingYears, y= MonthlyIncome), na.rm= TRUE) +geom_point() +labs(x = "TotalWorkingYears", y = "MonthlyIncome", title = "Relationship between TotalWorkingYears and MonthlyIncome using scatterplot")
#### A p-value less than 0.05 (typically ??? 0.05) is statistically significant. It indicates strong evidence against the null hypothesis, here P-Value is < 2.2e-16 and relationship is significant.



# Clustering
### a. Use K-means Clustering algorithm to find groups between HourlyRate and TotalWorkingYears. Use number of clusters as 3. Explain how each group is different from another in terms of employees representing those groups. (10 points)
tms = as.data.frame(cbind(empatt$HourlyRate,empatt$TotalWorkingYears))
K_means<-kmeans(tms,3)
K_means1 <- as.factor(K_means$cluster)
K_means
ggplot(empatt,aes(HourlyRate,TotalWorkingYears, color = K_means$cluster )) + geom_point()+labs(x = "HourlyRate", y = "TotalWorkingYears", title = "HourlyRate vs TotalWorkingYears")
#### By using 3 clusters the Hourly Rate ranges between 1 to 55, Cluster 2 from 55-80 and 3 ranges from 80-100.

### b. Use number of clusters as 5. What did you observe? Did you see any split of groups observed in (a)? Observe the splitting groups and explain in terms of employees representing those groups. (Hint: Use kmeans() for clustering algorithm. Install ggplot2 library in R and use ggplot() function to visualize the clustering results) (10 points)
Km<-kmeans(tms,5)
Km1<-Km$cluster
ggplot(empatt,aes(HourlyRate,TotalWorkingYears, color = Km1 )) + geom_point()+ labs(x = "HourlyRate", y = "TotalWorkingYears", title = "HourlyRate vs TotalWorkingYears")
#### By using the 5 clusters, it has splited into different hourlyrate as clusters. Hourly Rate ranges between 10 to 50, 50-68, 68 to 82, 75 to 100 and 83 to 100.

