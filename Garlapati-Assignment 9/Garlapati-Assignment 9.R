###------------------
###Hypothesis Testing
###------------------

###Students Name: VIDEESH REDDY GARLAPATI
###GNumber: G01354939


empatt <- read.csv('D:/GMU Student/Github/Garlapati_AIT580-1/data/EmployeeAttrition.csv')


# Your hypothesis testings here...
## 1. If the MonthlyIncome of Males is greater than Females
Male=which(empatt$Gender =='Male')
Female= which(empatt$Gender == 'Female')
Monthly_Income_M_Greater= t.test(empatt$MonthlyIncome[Male], empatt$MonthlyIncome[Female], alternative = "greater", var.equal = T)
print(Monthly_Income_M_Greater)


## 2. If the WorkLifeBalance of Males is less than Females
Monthly_Income_M_Less= t.test(empatt$MonthlyIncome[Male], empatt$MonthlyIncome[Female], alternative = "less", var.equal = T)
print(Monthly_Income_M_Less)

## 3. If the YearsAtCompany of Single is less than Married
Single= which(empatt$MaritalStatus =='Single')
Married= which(empatt$MaritalStatus == 'Married')
Yearsatcompany_Single= t.test(empatt$YearsAtCompany[Single], empatt$YearsAtCompany[Married], alternative = "less")
print(Yearsatcompany_Single)

## 4. If the EnvironmentalSatisfaction of Attrition=Yes is less than Attrition=No
attrition_Yes= which(empatt$Attrition =='Yes')
attrition_No= which(empatt$Attrition =='No')
EnvSatisfaction= t.test(empatt$EnvironmentSatisfaction[attrition_Yes], empatt$EnvironmentSatisfaction[attrition_No], alternative = "less")
print(EnvSatisfaction)
## 5. If the MonthlyIncome of Manager is greater than Laboratory Technician (Hint: Use JobRole to find Manager and Laboratory Technician)
Manager= which(empatt$JobRole=='Manager')
LabTech= which(empatt$JobRole=='Laboratory Technician')
MonthlyIncome_of_Manager = t.test(empatt$MonthlyIncome[Manager], empatt$MonthlyIncome[LabTech], alternative = "greater")
print(MonthlyIncome_of_Manager)
## 6. If YearsAtCompany and DailyRate are correlated with each other
Correlation= cor.test(empatt$YearsAtCompany, empatt$DailyRate)
print(Correlation)

## 7. If YearsAtCompany and MonthlyIncome are correlated with each other
Correlation1= cor.test(empatt$YearsAtCompany, empatt$MonthlyIncome)
print(Correlation1)

## 8. If YearsAtCompany varies depending on individual's MaritalStatus
Depending= summary(aov(empatt$YearsAtCompany ~ empatt$MaritalStatus))
print(Depending)

## 9. If MonthlyIncome varies depending on individual's PerformanceRating
Depending1= summary(aov(empatt$MonthlyIncome ~ empatt$PerformanceRating))
print(Depending1)

## 10. If MonthlyIncome varies depending on individual's WorkLifeBalance
Depending2= summary(aov(empatt$MonthlyIncome ~ empatt$WorkLifeBalance))
print(Depending2)
