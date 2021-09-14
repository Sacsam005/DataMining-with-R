install.packages("readxl")
install.packages("dplyr")

#Read dataset
library(readxl)
df2= read_excel("Results.xlsx")
ads_data <- read_excel(Results)
View(ads_data)
edit(Results)
str(Results)

#Statistics calculations
mean(Results$Home_goal)
sd(Results$Home_goal)

#Five number summary calculations
min(Results$Home_goal)
max(Results$Home_goal)
median(Results$Home_goal)
quantile(Results$Home_goal, 0.25)
quantile(Results$Home_goal, 0.75)

fivenum(Results$Home_goal)
summary(Results$Home_goal)

#Graphical Displays
hist(Results$Home_goal)
par(mfrow = c(1, 2))
boxplot(Results$Home_goal)
boxplot(Results$Home_goal)
abline(h = min(Results$Home_goal), col = "Blue")
abline(h = max(Results$Home_goal), col = "Yellow")
abline(h = median(Results$Home_goal), col = "Dark Green")
abline(h = quantile(Results$Home_goal, c(0.25, 0.75)), col = "Red")

#qqnormal
qqnorm(Results$Home_goal)
qqline(Results$Home_goal)
