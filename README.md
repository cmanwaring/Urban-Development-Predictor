# Urban-Development-Predictor
## Purpose:
The purpose of this project is to determine which zipcodes will likely see an increase in poroperty value in the near future. We think that this tool could be used by investors to determine which areas may be anticipated to increase in value.

## Workflow:
Zillow has a dataset with zipcodes and multiple different types of construction permits. We will aggregate the permits to show which zipcodes have to most permits for remodeling and home additions, as well as other important permits. The top 10% of the zipcodes by permits will be added to the 'candidate' list. We will iterate through the DataFrame and if a zipcode is in the 'candidate' list, we will write a 1 to the 'YES_CANDIDATE' column. This data will be passed into a logistic regression model and tested for accuracy.
