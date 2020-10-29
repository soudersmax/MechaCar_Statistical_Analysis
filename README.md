# MechaCar Statistical Analysis



### Linear Regression to Predict MPG

​	To predict the effect of each variable in the given dataset on the MPG rating of the new MechaCar, I performed a multiple linear regression model. For the model, the null and alternative hypotheses are:

- H<sub>0</sub> : The slope of the linear model is 0, indicating that there is no significant linear relationship.

- H<sub>a</sub>: The slope of the linear model *is not 0*, indicating a linear relationship between at least some of the variables. 

The resulting output can be seen in the screenshot below. 

<img src="img/lm.PNG">

​	In this test, the significant variables are the vehicle length and ground clearance, as well as the intercept. These provide a non-random amount of variance to the MPG values in the dataset. Because they are significant, we can reject the null hypothesis, meaning that the slope of the model is not 0 and that there *is* a relationship between at least some of the variables and the MPG measurement. Despite this, our model doesn't provide a completely accurate prediction of MPG. The R<sup>2</sup> value is 0.71, which indicates a strong correlation, but as we can see there are factors included which don't significantly influence the outcome. In addition, the intercept being significant indicates that there are other variables and factors that contribute to the variation that have not been included in the model. 



### Summary Statistics on Suspension Coils

​	The design specifications for the MechaCar state that the variance of the suspension coils <u>must not exceed</u> 100 pounds per square inch. To ensure that this specification is being adhered to, I created data frames containing the summary statistics on suspension coil data from three different manufacturing lots, pictured below. 

<img src="img/total_summary.PNG">

This table shows only 76.2 pounds per square inch over all manufacturing lots, which is promising. However, upon closer inspection through grouping the lots together:

<img src="img/lot_summary.PNG">

Lots 1 and 2 show quite a low variance compared to Lot 3, which shows more than twice the maximum allowable variance. This vast difference in values explains why the overall measure looks acceptable while the true results are not.  

