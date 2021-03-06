# Urban-Development-Predictor
## Purpose:
We are analyzing housing data to determine which areas of the Austin metropolitan area will experience the most growth by zip code. Our aim is to to predict home value appreciation and which zip codes would be a good candidate for real estate investments, with an accurate machine learning model that could ideally be applied in other housing markets. We've chosen this topic because Austin is growing at an astronomical rate due to major industries such as space technology, creative and digital media technology, as well as advanced manufactoring and other industries moving into the area. 
We have selected permit data from the City of Austin along with home listing data from Kaggle to assess which zip codes are candidates for investment. Our hypothesis is: if the city of Austin is issuing more permits in certain zip codes, those zip codes are experiencing more rapid growth, and therefore an increase in housing value.  

## Presentation
[Google Slides Presentation](https://docs.google.com/presentation/d/e/2PACX-1vToSjA4FsDQd7r8Lfb7Wp3v1eNIXDADtUv7blib3t4OJ1eGe8hckvWYvLF6YVf44Caw6iTofS1euhOk/pub?start=false&loop=true&delayms=30000)  
![Google Slides Presentation Image](images/google_slides_img.png)


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

## Logistic Regression Model

Because the of the overfitting in the decision tree classifier model, we decided to use a Logistic Regression Model.  The main benefit of using this model is that it allows us to predict a binary outcome - candidate or non candidate.

### Preprocessing the Data
The variables were narrowed down to include columns that describe the amount of permits, latest price, number of price changes, year built, zipcode of homes, etc.

![2021-08-11 (1)](https://user-images.githubusercontent.com/78937719/128974144-b289ad55-c70c-4d47-86f1-818c87ba3e5f.png)

### Encoding the Categorical Variables

![2021-08-11 (7)](https://user-images.githubusercontent.com/78937719/128974488-f226398a-f5aa-4736-86f5-97b00b371cfa.png)

### Splitting Target and Features

![2021-08-11 (13)](https://user-images.githubusercontent.com/78937719/128976702-8f55bf3b-70b5-4167-a099-1f8a74bfb218.png)


### Training the Model
The solver "SAGA" was  used to quickly run a large data set

![2021-08-11 (10)](https://user-images.githubusercontent.com/78937719/128975443-a49e56d5-f41a-46b7-aa01-3dc269ea8da2.png)

### Assessing the Performance


![2021-08-11 (12)](https://user-images.githubusercontent.com/78937719/128976331-c34962fa-0088-43a4-9abd-8152fb26952d.png)

 - the precision to predict candidate and non candidates was about the same at 57% and 58% respectively
 - the sensitivity was much higher on predicting candidates at 82% than non candidates at 28%


## Visualizations
https://public.tableau.com/views/AustinUrbanDevelopment/AustinGrowthStoryboard?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

## Dashboard
https://public.tableau.com/views/AustinUrbanDevelopment-Dashboard/Dashboard2?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link





