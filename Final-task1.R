#TASK-1
#PREDICTION USING SUPERVISED ML
#GRIPAUGUST- 21
#PRESENTED BY RONIKA KUMARI

#STEP:1 IMPORT THE FILE
xy<- read.csv(file.choose())
print(xy)

#INSTALL NECESSARY PACKAGES
install.packages("dplyr")
library("dplyr")
head(xy)
tail(xy)
summary(xy)
count(xy)
view(xy)
nrow(xy)
colnames(xy)

#VISUALISE REGRESSION GRAPHICALLY
hours<- xy$Hours
scores<- xy$Scores
require (graphics)
plot(hours,scores)
plot(hours,scores, pch=16, cex=1, col= "green", main= 'study hours vs scores' , xlab= 'hours', ylab= 'scores')
relation<- lm(scores~hours)
summary(relation)
attributes(relation)
coef(relation)
abline(relation, col= 'blue')

#PREDICT SCORE WHEN STUDENTS STUDY FOR 9.25 HOURS.

df<- data.frame(hours=9.25)
result<- predict(relation,df)
print(result)
