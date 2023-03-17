## Loading the ggplot2 library 
library(ggplot2)
##Let us try to use the mtcars2 data set which is one of default datasets of the Rstudio
data("mtcars")
# We are trying to pull few top rows of the mtcars dataset to Understand what it has in it.
head(mtcars)
# To understand the different column name and their corresponding class which means if
#that column or attribute has records of integer or character (String)
sapply(mtcars,class)
# Trying to find out if there is any relationship between disp & mpg values of all the cars
# We are trying to see this using scatter plot which is best suitable graph for 2 measures(continous & numerial)
# Also for distinguishing between the cars which has more cylinders we are adding cyl --> number of cylinders attribute to colors
disp_mpg <- ggplot(mtcars,aes(x=mpg,y=disp))+geom_point(aes(colour=factor(cyl)))
# Building a linear model across the mpg (miles per gallon) and disp(displacement)
lm_model <- lm(mpg ~ disp, data=mtcars)
# Plotting the trend line for those variables which we interpreted that may have a correlation from the above scatter plot 
lm_model_plot <-ggplot(mtcars,aes(x = mpg, y = disp)) +
  geom_point(aes(colour = factor(cyl))) +
  geom_smooth(method = "lm", se = TRUE)
## Testing if this model is statistically significant or 
## not using the R-square value
summary(lm_model)
## The below command will give us 4 different plots of the lm_model. They give us
## Understanding of the linear model and its justification much better.
par(mfrow=c(2,2))
plot(lm_model)
