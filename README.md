# Model & Dashboard Draft

For segment two we worked on drafting our machine learning model and our visualization dashboard. 

## Dashboard Plan:

For our dashboard plan we've decided we will use Tableau to build visuals and a dashboard. We will create a number of visualizations for viewers to get an understanding of our fake news data that they will be able to access in Tableau Public. [Linked is a presentation](https://docs.google.com/presentation/d/1g8Sc2dXEjVXcqJp-7kets7wrgMOBICrahSz-FxXqBT8/edit#slide=id.g147ce9005d0_0_4) on our dasbhoard plan. 

## Machine Learning Model 

In additiona to our dashboard plan we starting planning for executing our machine learning model. Below is our process outlining this:

### Cleaning and preliminary data preprocessing:

### Preliminary feature engineering and feature selection:

### Training and Testing:

### Model Choice:
We chose to use a logistic regression model for our analysis. In this instance our two classes would be “fake” and “not fake”. We want to determine how likely a piece of news is to be real or fake based on a number of different features. 

Advantages:
-  Best fit for our data since we are wanting to predict a binary outcome
-  Logistic regression models can be easier to implement and interpret results. 

Disadvantages: 
- Logistic regression requires that the independent variables have little or no multicollinearity between them. Meaning, if two features have a high correlation only one of them should be used. Our group should look out for this in the case where certain authors always publish on the same website. 
- Logistic regression also requires a large dataset. This is something we should also keep an eye out for if our dataset shrinks substantially during the cleaning process. 
