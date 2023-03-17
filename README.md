This is a simple linear regression performed in RStudio on the sample dataset when we download the Rstudio.
It's always good to see the line fitting inside the data when we execute the code but the hard reality is to find the justification for it.

When we are trying to understand the relationship between miles_per_gallon and displacement of different cars within the dataset. We get some relationships as shown.


So it's quite obvious that we believe it is a good idea to compare both of them and see a negative correlation between them like miles_per_gallon increases and he total power that the engine can generate is reduced to less than 100. So why did we plot colors using cylinders? Because the engine's total power is measured in the cylinder's depth and circumference, they are proportionate in some ways. So we see those cars with more cylinders have more displacement but less mpg.


How can we justify this relation? Is it just R-Square that tells us about the best-fitting line, or can we also see more about it? So we have 4 plots among which 2 are more important when it comes to the justification of the chosen linear model.

QQ-Plot: Most commonly used check for normality
This is most commonly used in a simple way ; fitting alinear regression model,check if the points lie approximately on the line and if they don't your residuals are not following the gussian distribution which means ( mean = 0 and standard deviation =1).If we have points away or slightly deviated from the line which means that there is non-normality there. However this check can be made in KDE plot as well.

Fitted values vs Residuals: This graph is plotted with residuals on the y-axis and fitted values on x-axis. This graph is highly useful to investigate whether the linearity holds or not? which can be investigated by observing the mean residual value for every fitted value region being close to 0 or not? Basically, this line which is in RED should be close to zero (ideally).
This can also help us to understand if there is any homoskedasticity. In simple homoskedasticity means the variance of the residual is constant when moving in x-axis. This can also help us to identify if there are any outliers in the comparison we made. Outliers can cause a lot of trouble in the analysis if not considered correctly.


Scale Location Plot: What if we try to understand the variance of the residuals in more detail? Yes this graph "Scale-Location" is very similar to residuals vs fitted but this square roots the absolute value of the standardized residuals instead of plotting residuals directly.So, what can we analyze from this graph since we already did Fit vs Residuals? If RED line is horizontal (Approximately) then the average magnitude of the standardized residuals isn't changing much along side of fitted value es and the shape around the line doesn't vary with fitted values. 
So why are we more focusing on this feature? In stats, we usually take a sample population and do our analysis on that and estimate the rest on to population to understand how the population variation is and also to understand how the dependent variable is effecting the population in the developed model.


Residuals vs Leverage: To understand the covariates of one variable effects from another.
Let us say we have plot with average lines plotted in them. Now if we wish to pick two points (x1,y1) and (x2,y2) where
(x1,y1) --changed to (x1+delta,y1) how is this effecting the average line? and 
(x2,y2) -- changed to (x2,y2+delta) how is this effecting the average line? 
Here we did with two points of the same graph but in our situation, we would like to understand how are the standardized residuals changing as leverage or fitted line changes/increases. We observe that RED line is not close to the zero line which means the sensitivity increases the spread of residuals is changing but ideally it shouldn't.
We also see observe that outliers or those points which are after the dotted red line also called as cooks distance will affect the sensitivity very much but in our case we don't have any of them beyond that line.



