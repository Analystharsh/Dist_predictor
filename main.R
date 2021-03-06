
#title: "Regression_cars"
#author: "Harsh Singh"
#date: "8/18/2019"


# Printing first 6 rows of car dataset  

head(cars)

# Plotting a scatter plot to understand the relationship between 
# the predictor and response variables. The scatter plot indicates a
# linearly increasing relationship between the two variable.

attach(cars)
scatter.smooth(speed,dist,main="Dist ~ Speed")


# Spotting any outlier observations in the variable by plotting 
# a box plot. We begin by dividing the graph are into two coloumns.
# One coloumnm contains the box plot for "speed" and the second coloumn
# contains the box plot for "distance". 


par(mfrow=c(1,2))
boxplot(speed,main="Speed",sub=paste("Outlier rows:",boxplot.stats(speed)$out))
boxplot(dist,main="Distance",sub=paste("Outlier rows:",boxplot.stats(dist)$out))

#Building a relationshop model. The "coefficients" part has two components, 
#"Intercept" and "speed". These are also called the beta coeefecients. 
#In other words, dist = intercept + beta*speed  

LinearMod <- lm(dist ~ speed, data = cars)
print(LinearMod)

#printing summary of built linear model

print(summary(LinearMod))

#Visulaising the regression graphically by plotting  a chart

plot(dist,speed,col = "blue",main="Speed & Distance Regression",abline(lm(speed ~ dist)),cex = 1.3,pch=16,xlab ="Distance",ylab = "Speed")
