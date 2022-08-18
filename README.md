# MechaCar_Statistical_Analysis

In this module, we mainly learned how to use R language doing statistical analysis and visuslization by ggplot2.

# Project Overview

The project is to help manager to review and analyze the newest prototype data and help the manufacturing team to imporve their products.

we are going to use the following methods to do the analysis:

1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population

4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

# Resources

- MechaCar MPG dataset

- Suspension Coil dataset

- R and Rstudio

# Results

## 1. Linear Regression to Predict MPG

By appling the multiple linear regression function, we get the following coefficients

![Multiple Linear Reg](https://github.com/ivorfanning/MechaCar_Statistical_Analysis/blob/main/images_challenge/01_ML%20reg%20model.png)

We know in linear regression, the size of the coefficient for each independent variable gives you the size of the effect that variable is having on your dependent variable, and the sign on the coefficient (positive or negative) gives you the direction of the effect.

Therefore, from the results above, we can see vehicle length and ground clearance have more positive effect on the MPG variable.

Then we applied the summary function to the linear regression model, the summary is following:

![Linear reg summary](https://github.com/ivorfanning/MechaCar_Statistical_Analysis/blob/main/images_challenge/02_ML%20reg%20model%20summary.png)

Here we have 3 questions to be answered:

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
we can conclude from the above two results that the vehicle length and ground clearance are the two variables provided a non-random amount of variance to the mpg values in the dataset

3. Is the slope of the linear model considered to be zero? Why or why not?
The slope of this linear model is not considered to be zero because all the coefficients are not even close to zero.

5. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The p-value is much more less than 0.05, which means we could reject the null hypothesis, meaning the model does not predict mpg of MechaCar prototypes effectively.

## 2. Summary Statistics on Suspension Coils

The following images are the results after we applied summary function of suspension coils dataset:

### Total Summary

The sample mean is 1498.78 and it is close to the population mean which was determined to be 1500.
![total summary](https://github.com/ivorfanning/MechaCar_Statistical_Analysis/blob/main/images_challenge/03_total%20summary%20of%20suspension%20coils.png)

### Lots Summary

The means of each lot numbers are similar to the population mean 1500 and the sample mean 1498.78.
![lots summary](https://github.com/ivorfanning/MechaCar_Statistical_Analysis/blob/main/images_challenge/04_lots%20summary%20of%20suspension%20coils.png)

However the question is:
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

From the above results, we can tell the variance of sample dataset is 62, which is less than the 100 which is dictated by the specification. The variance of lot1 and lot2 are also less than 100, but the variance of lot3 is 170, which is much greater than 100, meaning the lot3 is a large contributing factor to the sample variance. In order to lower the sample variance, the manufacturing needs to imporove the lot3 performance.

## 3. T-Tests on Suspension Coils

As we know, a t-test is a statistical test that is used to compare the means of two groups. It is often used in hypothesis testing to determine whether a process or treatment actually has an effect on the population of interest, or whether two groups are different from one another.

First we use t-test to compare the mean of sample dataset and population mean, the result shows the p-value is 0.06028, which is greater than the alpha 0.05. It means the PSI across all manufacturing lots is not statistically different from the population mean of 1,500 pounds per square inch.
![one sample ttest](https://github.com/ivorfanning/MechaCar_Statistical_Analysis/blob/main/images_challenge/05_t.test.png)

Then we use t-test to compare the mean of each lot and the population mean, from the following three images, we can see p-value of lot1 and lot2 are greater than alpha 0.05, so the PSI of manufacturing lot1 and lot2 are not statistically different from the population mean of 1,500 pounds per square inch. The mean of lot3 is slightly lower than 0.05, we could say the PSI of manufacturing lot3 is statistically different from the population mean of 1,500 pounds per square inch.

![lot1 ttest](https://github.com/ivorfanning/MechaCar_Statistical_Analysis/blob/main/images_challenge/06_t.test%20lot1.png)

![lot2 ttest](https://github.com/ivorfanning/MechaCar_Statistical_Analysis/blob/main/images_challenge/07_t.test%20lot2.png)

![lot3 ttest](https://github.com/ivorfanning/MechaCar_Statistical_Analysis/blob/main/images_challenge/08_t.test%20lot3.png)

## Study Design: MechaCar vs Competition

To further assisst AutoRU to improve their MechaCar prototype, we could design another study to analyze more variables metricx. 

- What metric or metrics are you going to test?

From a consumer's point of view, the fuel efficiency should be an important factor when consumer makeing their decisions. To analyze the fuel efficiency, the company could gather data from the following aspects, such as number of cylinders of the engin, the horse power, the suspension, the length and weight of vehicle, the road condition, road types, tire types and pressure.

- What is the null hypothesis or alternative hypothesis?

The null hypothesis will be there is no correlation between the fuel efficiency and each of the aspects.
The alternative hypothesis is the fuel efficiency is corelated with one or more independent variables.

- What statistical test would you use to test the hypothesis? And why?

We could use linear regression to analysis the relationship of fuel efficiency and each independent variable, and then use multiple linear regression to see which variable contribute more effect to the fuel efficiency.

- What data is needed to run the statistical test?

To analyze the fuel efficiency, the company could gather data from the following aspects, such as number of cylinders of the engin, the horse power, the suspension, the length and weight of vehicle, the road condition, road types, tire types and pressure.
