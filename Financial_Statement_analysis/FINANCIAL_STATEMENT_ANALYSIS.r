
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)

expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#PROFIT PER MONTH
profit <- revenue - expenses
profit

#30% TAX VALUE

#Alternative function for round is signif()
#The signif function rounds a numeric input to a specified number of digits.

tax <- round(0.30 * profit, 2)
tax 

#PROFIT AFTER TAX
profit.after.tax <- profit - tax
profit.after.tax

#PROFIT MARGIN IN %

#Round To 2 Decimal Points, Then Multiply By 100 To Get %

#Round function in R, rounds off the values in its first argument to the specified number of decimal places. 
#Round() function in R rounds off the list of values in vector and also rounds off the column of a dataframe.
#It can also accomplished by using signif() function

profit.margin <- round(profit.after.tax / revenue, 2) * 100
profit.margin

#MEAN PROFIT AFTER TAX
#The function mean() is used to calculate mean by taking the sum of the values and dividing with the number of 
#values in a data series. 

mean_profit_after_tax <- mean(profit.after.tax)
mean_profit_after_tax

#GOOD MONTHS
good.months <- profit.after.tax > mean_profit_after_tax
good.months

#BAD MONTHS

#Bad month is not equall to good month
bad.months <- !good.months
bad.months

#BEST MONTH

#max() function in R Language is used to find the maximum element present in an object. 
#This object can be a Vector, a list, a matrix, a data frame, etc..

best.month <- profit.after.tax == max(profit.after.tax)
best.month

#WORST MONTH

#min function in R min(), is used to calculate the minimum of vector elements or minimum of a particular
# column of a dataframe.

worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

#RESULTS FOR $ VALUES NEED TO BE CALCULATED WITH $0.01 PRECISION, BUT UNITS OF $1,000 WITH NO DECIMAL POINTS.
#It can also accomplished by using signif() function

revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses / 1000, 0)
profit.1000 <- round(profit / 1000, 0)
profit.after.tax.1000 <- round(profit.after.tax / 1000, 0)

#cbind() and rbind() both create matrices by combining several vectors of the same 
#length. cbind() combines vectors as columns, while rbind() combines them as rows.
#cbind() stands for column binding.

mtrxc <- cbind(revenue.1000,expenses.1000,profit.1000,profit.after.tax.1000,profit.margin,good.months,bad.months,best.month,worst.month)
mtrxc

#rbind() function in R Language is used to combine specified Vector, Matrix or
#Data Frame by rows. deparse. 
#rbind() stands for row binding.

mtrxr <- rbind(revenue.1000,expenses.1000,profit.1000,profit.after.tax.1000,profit.margin,good.months,bad.months,best.month,worst.month)
mtrxr

#By using matrices TRUE/FALSE are changed to 1's and 0'S. therefore True = 1, False = 0.
