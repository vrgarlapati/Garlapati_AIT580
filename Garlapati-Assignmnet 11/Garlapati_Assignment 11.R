###------------------
###Visualization
###------------------

###Students Name:VIDEESH REDDY GARLAPATI
###GNumber: G01354939


empatt <- read.csv('D:/GMU Student/Github/Garlapati_AIT580-1/data/EmployeeAttrition.csv')

## a.Below is the histogram for the column 'AGE' which displays range from 18 to 60
hist(empatt$Age, main="Histogram of Age", xlab="Age Range",ylab='Count', xlim=c(18,60),breaks=40)

#This plots the histogram of age

## c.Below is the scatter plot for the columns Age as X-Axis and Monthly Income as Y-Axis

plot(empatt$Age, empatt$MonthlyIncome, main = "Visualization for Age & Monthly Income", xlab = "Age", ylab='Monthly-Income', xlim=c(18,60))

