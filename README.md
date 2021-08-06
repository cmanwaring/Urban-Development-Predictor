# Urban-Development-Predictor
## Purpose:
We are analyzing housing data to determine which areas of the Austin metropolitan area will experience the most growth by zip code. Our aim is to to predict home value appreciation and which zip codes would be a good candidate for real estate investments, with an accurate machine learning model that could ideally be applied in other housing markets. We've chosen this topic because Austin is growing at an astronomical rate due to major industries such as space technology, creative and digital media technology, as well as advanced manufactoring and other industries moving into the area. 
We have selected permit data from the City of Austin along with home listing data from Kaggle to assess which zip codes are candidates for investment. Our hypothesis is: if the city of Austin is issuing more permits in certain zip codes, those zip codes are experiencing more rapid growth, and therefore an increase in housing value.  


## Workflow:
Zillow has a dataset with zipcodes and multiple different types of construction permits. We will aggregate the permits to show which zipcodes have to most permits for remodeling and home additions, as well as other important permits. The top 10% of the zipcodes by permits will be added to the 'candidate' list. We will iterate through the DataFrame and if a zipcode is in the 'candidate' list, we will write a 1 to the 'YES_CANDIDATE' column. This data will be passed into a logistic regression model and tested for accuracy.
