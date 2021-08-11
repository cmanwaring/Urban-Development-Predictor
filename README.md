# Urban-Development-Predictor
## Purpose:
We are analyzing housing data to determine which areas of the Austin metropolitan area will experience the most growth by zip code. Our aim is to to predict home value appreciation and which zip codes would be a good candidate for real estate investments, with an accurate machine learning model that could ideally be applied in other housing markets. We've chosen this topic because Austin is growing at an astronomical rate due to major industries such as space technology, creative and digital media technology, as well as advanced manufactoring and other industries moving into the area. 
We have selected permit data from the City of Austin along with home listing data from Kaggle to assess which zip codes are candidates for investment. Our hypothesis is: if the city of Austin is issuing more permits in certain zip codes, those zip codes are experiencing more rapid growth, and therefore an increase in housing value.  

## Overview:

<h3 align="center"> Process </h3>
<p align = "center">
 <img src="images/process.png", width=700>
</p>

## Communication Protocols
We will be using slack to create a group thread to communicate our progress, findings, and roadblock we may encounter throughout the project. We plan on communicating every other day through slack as a check-in to make sure everyone is staying on track. If a group member runs into any trouble, they are encouraged to post immediately to resolve issues promptly. Although we plan on having check-ins every other day, we are encouraging members to check the slack thread daily just in case any problems arise.

## Presentation
[Google Slides Presentation](https://docs.google.com/presentation/d/e/2PACX-1vToSjA4FsDQd7r8Lfb7Wp3v1eNIXDADtUv7blib3t4OJ1eGe8hckvWYvLF6YVf44Caw6iTofS1euhOk/pub?start=false&loop=true&delayms=30000)  
![Google Slides Presentation Image](images/google_slides_img.png)

## Database

<h3 align="center"> ERD </h3>
<p align = "center">
 <img src="database/ERD.png", width=500>
</p>

The three CSV tables used throughout our project required tremendous amounts of preprocessing before we could export them to PostgreSQL: 
- Zillow home listing CSV
  - The home listing dataset was in the best conditions in terms of formatting and consistency.
  - Two summarized tables were created and exported with the original table after processing.
  - tables: homes, candidates, average_price
- Permit CSV
  - The permit CSV was wide data; processing required condensing the table to a long format to establish connections with other tables.
  - Two other summarized tables were also created and exported with the original.
  - tables: issued_permits, issued_permit_avg, issued_permit_sum
- Zillow home value index CSV
  - Similar processing as permit data and exported with a summarized table
  - tables: values_over_time, zipcodes_avg_values

### Database Tools
- PostgreSQL → Relational Database implemented
- Pandas → Data processing & Transformation
- SQLALchemy → Exporting data from pandas to PostgreSQL

After creating the ERD, we created a database in pgAdmin to house the data we explored. The following images display the connection strings used to load the data from the Jupyter notebooks to Postgres:

<h3 align="center"> Connection String </h3>
<p align = "center">
 <img src="database/images2/string1.png", width=500>
</p>

<h3 align="center"> Connection String </h3>
<p align = "center">
 <img src="database/images2/string2.png", width=500>
</p>

<h3 align="center"> Connection String </h3>
<p align = "center">
 <img src="database/images2/string3.png", width=500>
</p>

After successfully loading the data from the Jupyter notebooks to PostgreSQL with the help of pandas and SQLAlchemy, we manually altered each table to establish the the relationships among the tables. 

<h3 align="center"> Homes Table </h3>
<p align = "center">
 <img src="database/images2/homes.png", width=700>
</p>

<h3 align="center"> Values over Time Table </h3>
<p align = "center">
 <img src="database/images2/values_time.png", width=600>
</p>

<h3 align="center"> SQL INNER JOIN </h3>
<p align = "center">
 <img src="database/images2/join2.png", width=700>
</p>

## Provisional Machine Learning Model

 - The preliminary data included columns that describe the amount of permits, latest price, number of price changes, year built, zipcode of homes, etc.
 - After connecting to the database, we printed out the header for each column to see all of the features available, then chose the features that we believed would have the highest correlation to increased home prices per zip code.
 - The data was split into training and test data using the train_test_split function. We used the 75% to 25% default split.
 - We have decided to use the logistic regression model for our machine learning model. We grouped our data into two categories candidate or non candidate for investing. The benefit of this model is that it can be used to predict our binary outcome.

Our provisional machine learning model will attempt to predict the outcome column of the Zillow data frame. The outcome column was created and displays a one if the property is located in a rapidly growing region of the city. Otherwise, the column will display a zero for properties that are not considered to be in rapidly growing areas. The outcomes are provisional and subject to change as well since we have not completed a robust analysis to determine which properties are actually in rapidly developing areas. Nonetheless, we wanted to assess the viability of our model using dummy data. Using scikit-learn, our provisional model uses a decision tree to predict the outcome of each row of our data frame. Considering most of the columns from the Zillow data are categorical, the first step was encoding the columns that contained categorical variables:

<h3 align="center"> Encoding </h3>
<p align = "center">
 <img src="model/encoding.png", width=400>
</p>

From there, we followed the supervised learning workflow of separating the target and features, splitting the data, fitting the model, and then assessing the model performance:

<h3 align="center"> Splitting Target and Features </h3>
<p align = "center">
 <img src="model/splitting.png", width=400>
</p>

<h3 align="center"> Fitting the Model </h3>
<p align = "center">
 <img src="model/fitting.png", width=400>
</p>

<h3 align="center"> Assessing Performance </h3>
<p align = "center">
 <img src="model/report.png", width=400>
</p>

Our provisional model appears to have symptoms of overfitting, which we will address as we continue to tweak our datasets and the model itself. 
