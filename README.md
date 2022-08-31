# Fake News Analysis

**Authors**: Charlotte Rotner, Shawn Logan & Conor McGrane

Our team selected Fake News as our final project topic. Fake News is defined as misleading or false information presented as a real piece of news. We're interested in fake news given the recent political climate and the recent increase in fake news. Social media has also made fake news more prevalent and easy to circulate to media consumers. We figured this topic would allow us to pick from many data sources and be interesting to research.

## Analysis Questions:
- How likely is a piece of news to be real or fake based on certain criteria like; Author, Site-URL, Article Type, and amount of Interaction?
- Additionally, do certain criteria inputs have a higher likelihood of predicting whether a piece of news is real or fake?

## Data Source:
We sourced our data from two different Kaggle datasets that had overlapping news sources and articles: 
- Source based Fake News Classification - [Kaggle Link](https://www.kaggle.com/datasets/ruchi798/source-based-news-classification)
- Getting Real about Fake News - [Kaggle Link](https://www.kaggle.com/datasets/mrisdal/fake-news)

## Data cleaning and Database creation:
We started cleaning our data set by removing null and duplicate values as well as columns that only contained values for a few rows. We then utilized regex to ensure that the ‘Title’ field matched in both of our datasets so we could join our two datasets on a unique identifier. We then stored the clean data as two tables in a PostgreSQL database which we created and then hosted on AWS.  Finally, we performed an inner join within our database to create a third table which held all the columns we wanted to use for analysis.

## Machine Learning Model:
After our data was stored we made a connection to our database in a Jupyter notebook using SQLAlchemy so we could manipulate the data and run a machine learning model. Our team decided to use a logistic regression model. This was the best choice for our analysis question since we were attempting to predict binary outcomes (real vs fake). After splitting the data in training and testing sets using SKLearn, we ran a handful of different logistic regression models in order to find the best model. All the code for these models can be located in the folder named ‘ML Model Trials: 

Our best and final attempt isolated authors and siteURL to see if these two features together were better at predicting whether an article was fake or real. Our results were as follows:

Accuracy: 98.7%
Precision: 99%
Recall Score: 99%


<img width="468" alt="Screen Shot 2022-08-27 at 10 13 29 AM" src="https://user-images.githubusercontent.com/101530568/187795957-71088ee6-5c6e-410a-a29a-ea0be08e9111.png">


## Visualizations:
[Linked](https://public.tableau.com/app/profile/shawn.logan/viz/FakeNewsAnalysis_16612918093080/Dashboard?publish=yes) is our tableau public dashboard with our visualizations that assisted us in our analysis. 

The biggest takeaways from the visualizations were: 
There are many websites and authors that publish only fake or only real news. This aligns well with the results of our logistic regression model
We saw a spike in fake articles published around notable events, including Hillary Clinton's email leak scandal. 

## Summary & Findings:
From our machine learning model trials,  results SiteURL and Author were the most best at predicting whether a piece of news was fake or real
Articles with higher interaction rates did not impact whether a piece of news was real or fake as much as we thought it would
From our visualizations we can see most websites post only fake or only real news, which aligns with our model results 


[Linked](https://docs.google.com/presentation/d/1C-SpljqtHocNVAvVnMCvNH84UrqSevyDyfe8DZpWEDE/edit) is a copy of our presentation on this topic.

---
**Contact info**: 

- Charlotte Rotner - charlotte.rotner@gmail.com 
- Shawn Logan - shwnlogan@gmail.com 
- Conor McGrane - cpmcgrane@gmail.com 

