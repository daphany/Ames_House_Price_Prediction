# House Prices Prediction
## Project Overview
We used House Price dataset from kaggle dataset(https://www.kaggle.com/c/house-prices-advanced-regression-techniques/data). Our goal is to use multiple linear regression model to predict the house price based on selected features and use Javascript to write a website to publish our model. On the weibite, customers will be able to enter different features of their house as input and out will return an estimated house price.

##  Description of the communication
* we have weekly meeting on zoom
* we have regular communicate on slack 
## Link to the Google Slide
https://docs.google.com/presentation/d/1rfWITkZjMb6rclgVjF-IFZPDe-3ajrZsUKvwRUZ89hA/edit?ts=5faf2e83#slide=id.g4dfce81f19_0_45

## Link to the Tableau Dashboard
https://public.tableau.com/profile/kassie.lu#!/vizhome/AmesHousingSalesPricesDashboard/Dashboard?publish=yes

## Dataset Content
The original dataset contains the following files:
* ames_raw.csv - 2930 rows and 83 columns
* ames_geo.csv - 2932 rows and 4 columns (this is only used for tableau component)
* data_description.txt - full description of each column

### Data fields
Description of the columns is as below:

SalePrice - the property's sale price in dollars. This is the target variable that you're trying to predict.
MSSubClass: The building class
MSZoning: The general zoning classification
LotFrontage: Linear feet of street connected to property
LotArea: Lot size in square feet
Street: Type of road access
Alley: Type of alley access
LotShape: General shape of property
LandContour: Flatness of the property
Utilities: Type of utilities available
LotConfig: Lot configuration
LandSlope: Slope of property
Neighborhood: Physical locations within Ames city limits
Condition1: Proximity to main road or railroad
Condition2: Proximity to main road or railroad (if a second is present)
BldgType: Type of dwelling
HouseStyle: Style of dwelling
OverallQual: Overall material and finish quality
OverallCond: Overall condition rating
YearBuilt: Original construction date
YearRemodAdd: Remodel date
RoofStyle: Type of roof
RoofMatl: Roof material
Exterior1st: Exterior covering on house
Exterior2nd: Exterior covering on house (if more than one material)
MasVnrType: Masonry veneer type
MasVnrArea: Masonry veneer area in square feet
ExterQual: Exterior material quality
ExterCond: Present condition of the material on the exterior
Foundation: Type of foundation
BsmtQual: Height of the basement
BsmtCond: General condition of the basement
BsmtExposure: Walkout or garden level basement walls
BsmtFinType1: Quality of basement finished area
BsmtFinSF1: Type 1 finished square feet
BsmtFinType2: Quality of second finished area (if present)
BsmtFinSF2: Type 2 finished square feet
BsmtUnfSF: Unfinished square feet of basement area
TotalBsmtSF: Total square feet of basement area
Heating: Type of heating
HeatingQC: Heating quality and condition
CentralAir: Central air conditioning
Electrical: Electrical system
1stFlrSF: First Floor square feet
2ndFlrSF: Second floor square feet
LowQualFinSF: Low quality finished square feet (all floors)
GrLivArea: Above grade (ground) living area square feet
BsmtFullBath: Basement full bathrooms
BsmtHalfBath: Basement half bathrooms
FullBath: Full bathrooms above grade
HalfBath: Half baths above grade
Bedroom: Number of bedrooms above basement level
Kitchen: Number of kitchens
KitchenQual: Kitchen quality
TotRmsAbvGrd: Total rooms above grade (does not include bathrooms)
Functional: Home functionality rating
Fireplaces: Number of fireplaces
FireplaceQu: Fireplace quality
GarageType: Garage location
GarageYrBlt: Year garage was built
GarageFinish: Interior finish of the garage
GarageCars: Size of garage in car capacity
GarageArea: Size of garage in square feet
GarageQual: Garage quality
GarageCond: Garage condition
PavedDrive: Paved driveway
WoodDeckSF: Wood deck area in square feet
OpenPorchSF: Open porch area in square feet
EnclosedPorch: Enclosed porch area in square feet
3SsnPorch: Three season porch area in square feet
ScreenPorch: Screen porch area in square feet
PoolArea: Pool area in square feet
PoolQC: Pool quality
Fence: Fence quality
MiscFeature: Miscellaneous feature not covered in other categories
MiscVal: $Value of miscellaneous feature
MoSold: Month Sold
YrSold: Year Sold
SaleType: Type of sale
SaleCondition: Condition of sale

## SQL Database
### Export Transform and Load
1) EXTRACT
- Extracted from csv files
- Filtered to compare features affecting house prices
- Evaluated possible correlations between (ten features) and house prices
- Explored ...



2) TRANSFORM
-


3) LOAD 
- Loaded data frames into tables using PostgreSQL
- Normalized data in SQL
- Joined tables and exported to .CSV for Machine Learning*

## Machine Learning 
### Step 1: Data Exploration 
* Check the dataset - 2930 rows and 81 columns
* Check the missing values and duplicates
### Step 2: Features Exploration
* Use heatmap to identify features that are most correlated to the Sales Price
* List out the top 11 most correlated features to the target - saleprice
* select 11 numerical features plus 4 additional categorical features that we think will affect the house price
### Step 3: Data Cleansing
* Remove null value or replace it with the mode of their respective columns
* Create new feature to combine features that are in the same category(total_area)
* Drop any additional NA
* Export the cleaned data to csv file

### Step 4: Machine Learning Model

#### 1: Import necessary dependencies
#### 2: Connect to the database
#### 3: Data manipulation
* Take a log of both the features and target to make them more normally distributed
* Convert numerical categories that shouldn't be numerical to categorical categories
* Use label encoder to transform categorical features to numerical 
#### 4: Set X and y
* X = features where y = target
#### 5: Scale both X and y
#### 6: Split the data into training set and testing set
* we did a 80/20 split
* check the shape of each set
#### 7: Define the model
#### 8: Fit the model and time the model
#### 9: Run prediction on testing set
#### 10: print the coefficient, intercept, MSE and model score(R^2),and model run time
#### 11: Plot the comparison of Multiple Linear Regression Model and Deep Leaning Model

Noted: a more detailed explaination with screenshot of codes are presented on our website

### Discussion
* We first created a heatmap and selected top 11 features that are most related to sale price with the addition of another 4 categorical features we think might be relevant. We then checked the selected features using histogram to see if they are normally distributed in order to be used in linear regression model. After we built the machine learning model, we did trial and errors by running the model using different number of features and compared the R^2. We decided to include only 8 features taken into consideration of the r^2 and how it will be laid out on our tableau dashboard.
* Since we have many features, we chose to use multiple linear regression model to predict the price. Multiple linear regression estimates the relationship between several independent variables (features) and one dependent variable. We also compared its performance with Deep Learning Model as DLM is an alternative to solving regression problem. MLR gave us a better result(R^2: 0.86 VS 0.83), faster runtime(0.002s VS 12.38s), and more consistent result with different number of features. (Please refer to the graph under MODEL COMPARISON - Comparing Multiple Linear Regression VS Deep Learning in terms of R^2)
The advantages and limitation of Multiple Linear Regression is listed as below:
<br /> Advantages
<br /> * allows us to determine the relative influence of more than one predictor variables to the target variable.
<br /> * enables us to identify outliers (find out the features that have a strong correlations and the ones that do not)
<br /> * it is fast to run the model
<br /> Limitations
<br /> * the size of the sample may lead to the pitfall of incomplete data
<br /> * predictor values provide insights for limited features
<br /> * If we want to create any linear model, it is essential that the features are normally distributed. This is one of the assumptions of multiple linear regression.

* if we had more time, we would like to take out all the outliers in all the features and check if it will give us a better result. we would also try using random forest to select features based on the importance.
* the statistics we included are coefficient, intercept, mean squared error(MSE) and coefficient of determination/R square. Coefficient and intercept are calculated in order to get our Multiple Linear Regression formula. 
* The mean squared error indicates how close a regression line is to a set of points. It does this by taking the distances from the points to the regression line (these distances are the “errors”) and squaring them. The squaring is necessary to remove any negative signs. It also gives more weight to larger differences. It’s called the mean squared error as you’re finding the average of a set of errors. The smaller the means squared error, the closer we are to finding the line of best fit. 
* R-squared is a statistical measure of how close the data are to the fitted regression line. 
<br /> R-squared = Explained variation / Total variation. It is always between 0 and 100%; 0% indicates that the model explains none of the variability of the response data around its mean, 100% indicates that the model explains all the variability of the response data around its mean. In our model, we got 86% by using 8 features in our model("neighborhood","total_area","overallqual", "garagecars","fullbath","yearbuilt","yearremodadd","yrsold") which indicate if the user input information for the selected 8 features, we should have 86% of predicting the accurate house price. We got 90% by using 64 features which means if the user input all 64 features, we will get the accurate housr price 9 out of 10 times.


## Dashboard
* We will be using Tableau to create final dashboards
* The interactive elements we use include: 
<br />1. Navigation bar: includes tabs to Dashboards, Machine Learning and Github Repository pages
<br />2. Features input: where users can select from eight feature dropdowns to predict house prices
<br />3. Tableau dashboards: we will embed a number of Tableau dashboards in the Dashboards page
