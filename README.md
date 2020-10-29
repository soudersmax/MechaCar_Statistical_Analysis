# MechaCar Statistical Analysis

​	

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. This is an exploratory analysis to pinpoint the problems in order to find solutions. 



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

This table of the dataset overall shows only 76.2 pounds per square inch over all manufacturing lots, which is promising. However, upon closer inspection through grouping the lots together:

<img src="img/lot_summary.PNG">

Lots 1 and 2 show quite a low variance compared to Lot 3, which shows more than twice the maximum allowable variance. This vast difference in values explains why the overall measure looks acceptable while the true results are not.  



### T-Tests on Suspension Coils

​	 To further investigate the manufacturing problems with PSI, I completed a series of  one-sample T-Tests to look for differences in distribution among samples and the population. For each test the hypotheses are as follows:

- H<sub>0</sub>: There is no significant statistical difference between the observed sample mean and the population mean of 1500. 
- H<sub>a</sub>: There *is* a significant statistical difference between the observed mean and the population mean. 

The first test compares the overall sample mean from all lots with the given population mean of 1500 PSI. The resulting output is shown below:

<img src = "img/overall_t.PNG">

The p-value calculated by this test is 0.5 which is *not* significant compared to the alpha of 0.05. Thus, I fail to reject the null hypothesis, meaning that any differences between the overall sample mean and the population mean are the result of random chance rather than external factors. 



​	Following that, I decided to test a subset of the samples, grouped by Manufacturing Lot, against the population mean of 1500. The resulting p-value from each of the three tests is greater than our alpha value of 0.05. Thus, in every case, we fail to reject the null hypothesis. Any difference between the sample and population mean PSI must be due to random chance.  I thought this was slightly strange because of the vast difference in the variance displayed in the above tables, so I decided to take a look at a visualization of each lot, which brought up some interesting questions. The T-Test results and visualizations for all 3 lots are below:



<img src="img/lot1_t.PNG"> <img src="img/plot1.PNG">



<img src="img/lot2_t.PNG"><img src="img/plot2.PNG ">



<img src="img/lot3_t.PNG"><img src="img/plot3.PNG">





The visualizations make it clear that Lot 1's measurements are fairly skewed to the left, despite the mean and median being quite similar, and the density is an order of magnitude larger than the other two.  I decided to look further into the assumptions made at the beginning of this analysis.

All testing done on the suspension coil metrics has been performed on the assumption that the data is approximately normal with a similar variance across groups.  It was clear from the first summary of the PSI data that the variance shows great differences across groups, but with no hypothetical population comparison, I continued exploring. Based on these results, however, I decided to test the full dataset for normality, both quantitatively and qualitatively.

 <img src ="img/normality_test.PNG"><img src="img/overall_dist.PNG">

 

Both of these tests clearly indicate that the dataset is not normally distributed. The Shapiro-Wilk normality test produces a p-value much smaller than 0.05, which is *not* a good thing in this case, and the visualization lacks the typical "bell curve" shape. Because of these discoveries, additional testing must be performed that is more applicable to the dataset. 

