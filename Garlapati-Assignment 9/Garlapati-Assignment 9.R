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

#### In many cases, we simply testing to see if the means of two samples are different, but we want to know if a sample mean is lower or greater than another sample mean by using alternative function and can switch to one-sided testing from two-sided testing. Adding the var.equal = TRUE is an instruction that is added to the t.test() command. This instruction forces the t.test() command to assume that the variance of the two samples is equal. Here, with two sample t-test the result of p-value = 0.8889, We fail to reject the null hypothesis because the P-value greater than the significance level. Therefore, we cannot claim the level of significance.

## 2. If the WorkLifeBalance of Males is less than Females
Monthly_Income_M_Less= t.test(empatt$MonthlyIncome[Male], empatt$MonthlyIncome[Female], alternative = "less", mu= 0)
print(Monthly_Income_M_Less)

#### In many cases, we simply testing to see if the means of two samples are different, but we want to know if a sample mean is lower or greater than another sample mean by using alternative function and can switch to one-sided testing from two-sided testing. Adding the var.equal = TRUE is an instruction that is added to the t.test() command. This instruction forces the t.test() command to assume that the variance of the two samples is equal. Here, with two sample t-test the result of p-value = 0.11 andWe fail to reject the null hypothesis because the P-value greater than the significance level. ### In many cases, we simply testing to see if the means of two samples are different, but we want to know if a sample mean is lower or greater than another sample mean by using alternative function and can switch to one-sided testing from two-sided testing. Adding the var.equal = TRUE is an instruction that is added to the t.test() command. This instruction forces the t.test() command to assume that the variance of the two samples is equal. Here, with two sample t-test the result of p-value = 0.1111, We fail to reject the null hypothesis because the P-value greater than the significance level. Therefore, we cannot claim the level of significance.


## 3. If the YearsAtCompany of Single is less than Married
Single= which(empatt$MaritalStatus =='Single')
Married= which(empatt$MaritalStatus == 'Married')
Yearsatcompany_Single= t.test(empatt$YearsAtCompany[Single], empatt$YearsAtCompany[Married], alternative = "less")
print(Yearsatcompany_Single)

#### As the P-value = 0.0004973 is less than the significance value we can reject the null hypothesis.

## 4. If the EnvironmentalSatisfaction of Attrition=Yes is less than Attrition=No
attrition_Yes= which(empatt$Attrition =='Yes')
attrition_No= which(empatt$Attrition =='No')
EnvSatisfaction= t.test(empatt$EnvironmentSatisfaction[attrition_Yes], empatt$EnvironmentSatisfaction[attrition_No], alternative = "less")
print(EnvSatisfaction)

#### As the P-value = 0.0001046 is less than the significance value we can reject the null hypothesis and support the claim.

## 5. If the MonthlyIncome of Manager is greater than Laboratory Technician (Hint: Use JobRole to find Manager and Laboratory Technician)
Manager= which(empatt$JobRole=='Manager')
LabTech= which(empatt$JobRole=='Laboratory Technician')
MonthlyIncome_of_Manager = t.test(empatt$MonthlyIncome[Manager], empatt$MonthlyIncome[LabTech], alternative = "greater")
print(MonthlyIncome_of_Manager)

#### As the P-value = 2.2e-16 is less than the significance value we can reject the null hypothesis and can support the claim.

## 6. If YearsAtCompany and DailyRate are correlated with each other
Correlation= cor.test(empatt$YearsAtCompany, empatt$DailyRate)
print(Correlation)

#### As the P-value = 0.1919 is greater than the significance value, it is failed to reject the null hypothesis.

## 7. If YearsAtCompany and MonthlyIncome are correlated with each other
Correlation1= cor.test(empatt$YearsAtCompany, empatt$MonthlyIncome)
print(Correlation1)
#### As the P-value = 2.2e-16 is less than the significance value we can reject the null hypothesis and can support the claim. And correlation between the YearsAtCompany and MonthlyIncome is existed postively.

## 8. If YearsAtCompany varies depending on individual's MaritalStatus
Depending= summary(aov(empatt$YearsAtCompany ~ empatt$MaritalStatus))
print(Depending)
#### As the P-value = 0.0247 is less than the significance value we can reject the null hypothesis and can support the claim. Therefore, YearsAtCompany varies depending on the MaritalStatus.

## 9. If MonthlyIncome varies depending on individual's PerformanceRating
Depending1= summary(aov(empatt$MonthlyIncome ~ empatt$PerformanceRating))
print(Depending1)

#### As the P-value = 0.512 is greater than the significance value and it is failed to reject the null hypothesis. Therefore, we cannot support the claim MonthlyIncome was depending on PerformanceRating.

## 10. If MonthlyIncome varies depending on individual's WorkLifeBalance
Depending2= summary(aov(empatt$MonthlyIncome ~ empatt$WorkLifeBalance))
print(Depending2)

#### The output includes the columns F value and Pr(>F) corresponding to the p-value of the test. As the P-value = 0.24 is greater than the significance value and it is failed to reject the null hypothesis. Therefore, we cannot support the claim MonthlyIncome was varies depending on WorkLifeBalance.

