MechaCar Statistical Analysis
-----------------------------

Linear Regression to Predict MPG
--------------------------------

![image](https://user-images.githubusercontent.com/82548977/127258791-ea6eb886-5d78-4758-81dd-c7ba4cc9b1e0.png)

1. The variables that are not statistically significant are vehicle weight, spoiler angle, and AWD. This conclusion is based on the summary statistics produced on the linear regression and comparing those t-values against the t-critical values on the Student’s t-Distribution with 44 degrees of freedom and a p-value of 0.025 (two tailed test). Based on those parameters, the critical value of 2.015, those three independent variables would be eliminated as not being statistically different from zero. 

2. Using a similar conclusion, the intercept is statistically different from zero since the t-value, in absolute value terms, in the analysis is greater than the critical value – the conclusion would be that we reject the null hypothesis that the intercept is equal to zero.

3. The linear model does a fairly decent job at predicting mpg. With an r-squared of 0.7149, we can conclude that 72% of the variation in mpg can be explained by the variation in the independent variables in the regression model. 

Summary Statistics on Suspension Coils
--------------------------------------

![image](https://user-images.githubusercontent.com/82548977/127258965-957d6f31-7e77-4c16-b545-4b557517bf3f.png)

When checking against all manufacturing lots, the variance of 62psi is within the design specifications. However, when breaking the data down by Manufacturing Lots, you will see that Lot 3 does not meet this specification as the variance shows 170psi. 

T-Tests on Suspension Coils
---------------------------

![image](https://user-images.githubusercontent.com/82548977/127260001-40241d4a-23b1-4090-a445-13db9e762086.png)

Based on the outputs from the t-tests on the separate lots against a proposed population mean of 1,500psi, Lot 3 is the only confidence interval that **does not** contain 1,500psi. This means that the null hypothesis of 1,500psi can be rejected. For Lots 1 and 2, the confidence interval **does** contain 1,500psi which means that we fail to reject a null hypothesis of 1,500psi. 

Study Design: MechaCar vs. Competition
--------------------------------------
As is the case with most large purchases, the main driver for a consumer is the associated cost and, secondarily, whether that cost can be justified. The statistical study I would want to test to see how MechaCar compares to its competition would be a multiple regression analysis focused on a dependent variable of cost against independent variables of fuel efficiency and safety rating. The null hypothesis for this experiment would be that if the cost of a MechaCar has the same fuel efficiency and safety rating, then the price should be approximately the same; the alternative to this would be that if the price is not the same, then either fuel efficiency or safety rating must differ between the two. Much like we have done in this module, you would want to test each variable to ensure that they are statistically significant (t-test) and to check the F-test to ensure that the model variables do in fact add value to the overall model. We would need to have cost, fuel efficiency, and safety rating data in order to run this test. Based on our results, we could then check to see for a given 1 unit change in either fuel efficiency or safety rating, holding the other constant, what effect that has on price. This can then be compared against the competitor’s data to see if a case could be made that you could get more value by using MechaCar vs. the competition for a given change in those variables. 
