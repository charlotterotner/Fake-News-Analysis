# Machine Learning Model Mockup

Our Machine Learning Model will be made with the intention of taking in several features of a variety of online news articles and then outputting labels of Real or Fake in order to classify fake news.

## Input Data: 
The features which we will input into the machine learning model from our database will be; Site-URL, Author, and Type(Label for type of content in article).  The data from the database will be altered using OneHotEncoder in order to allow the machine learning model to use the data.

## Output Label: 
The intended output or target variable of the Machine Learning Model will be to label data depending on whether the article is Real or Fake

## Learning Type: 
Since we have a dataset with Labeled data, we will be using a Supervised Machine Learning.

## Model Type: 
The Model which we will be using for our supervised machine learning will be a Logistical Regression Model since we are distinguishing between only two labels, so an article will either be 1 - Real or 0 - Fake

## Flowchart:
Below is a flow chart showing the decision making process which led to the choice of a logistic regression.
![MachineLearningFlowChart](https://github.com/charlotterotner/Final-Project/blob/Machine_Learning_Model/Machine_Learning_Model/MachineLearningFlowChart.png)
