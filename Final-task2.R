# TASK-2:- predict the optimum number of clusters and represent it visually. 
# Prepared by Ronika Kumari
# Step 1:- Import the data.
xy<- read.csv(file.choose())
print (xy)
df<- iris
summary(iris)
head(iris)
tail(df)
view(iris)
install.packages("dplyr")
library(dplyr)
count (df)
iris.features<- iris
iris.features$Species<- NULL
View(iris.features)
library(stats)
results<- kmeans(iris.features, 3)
print(results)
results$size
results$cluster
results$centers
table(iris$Species, results$cluster)
x<- iris
library(cluster)
clusplot(x= iris, clus = results$cluster, lines = 0, shade = TRUE, labels = 4, plotchar = TRUE, span = TRUE)
