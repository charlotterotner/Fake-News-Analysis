# Model & Dashboard Draft

For segment two we worked on drafting our machine learning model and our visualization dashboard. 

## Dashboard Plan:

For our dashboard plan we've decided we will use Tableau to build visuals and a dashboard. We will create a number of visualizations for viewers to get an understanding of our fake news data that they will be able to access in Tableau Public. [Linked is a presentation](https://docs.google.com/presentation/d/1g8Sc2dXEjVXcqJp-7kets7wrgMOBICrahSz-FxXqBT8/edit#slide=id.g147ce9005d0_0_4) on our dasbhoard plan. 

## Machine Learning Model 

In addition to our dashboard plan we starting planning for executing our machine learning model. Below is our process outlining this:

### Cleaning and preliminary data preprocessing:
To ensure our tables were clean and ready to be inputted into a machine learning model we cleaned the data by:
- Dropping null values 
- Cleaned up the title rows so our two tables had matching title formatting
- Dropped all rows that did not have title. 

### Preliminary feature engineering and feature selection:
- Remove the following columns that we don’t want to consider in our features: Language, Title, text text_without_stopwords, Title_without_stopwords,main_img_url, UUID (index), Domain rank, Country, ord_in_thread

- Convert label column to be a binary 1 or 0 instead of real or fake 
- Use OneHotEnconder to create categorical variable lists for the following qualitative features:	siteurl, Author, Type

Once we’ve done this we will merge the one-hot encoded features with our original data frame and drop the original feature columns.

### Training and Testing:

To split the testing and training model we will create a SKLearn instance and scale the data.  Our input values are: Author, siteurl, type, likes, comments, and shares. And our target outpout is whether the article is considered fake or not fake 

### Model Choice:
We chose to use a logistic regression model for our analysis. In this instance our two classes would be “fake” and “not fake”. We want to determine how likely a piece of news is to be real or fake based on a number of different features. 

Advantages:
-  Best fit for our data since we are wanting to predict a binary outcome
-  Logistic regression models can be easier to implement and interpret results. 

Disadvantages: 
- Logistic regression requires that the independent variables have little or no multicollinearity between them. Meaning, if two features have a high correlation only one of them should be used. Our group should look out for this in the case where certain authors always publish on the same website. 
- Logistic regression also requires a large dataset. This is something we should also keep an eye out for if our dataset shrinks substantially during the cleaning process. 
