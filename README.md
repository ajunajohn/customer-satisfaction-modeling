📈 Customer Satisfaction Modeling
A statistical modeling project using multiple linear regression and factor analysis to predict and understand drivers of customer satisfaction in the context of Product Service Management.

👩‍💻 Author
Ajuna P John

🎯 Objective
To build a robust regression model that identifies and quantifies the key drivers of Customer Satisfaction using survey data involving 12 service quality variables. Factor analysis was used for dimensionality reduction and market segmentation.

📂 Dataset Overview
Source File: Factor-Hair.csv

Records: 100

Variables:

Target: Satisfaction (Customer Satisfaction Score)

Features (Independent Variables):

ProdQual: Product Quality

Ecom: E-Commerce

TechSup: Technical Support

CompRes: Complaint Resolution

Advertising: Advertising

ProdLine: Product Line

SalesFImage: Salesforce Image

ComPricing: Competitive Pricing

WartyClaim: Warranty & Claims

OrdBilling: Order & Billing

DelSpeed: Delivery Speed

🔍 Exploratory Data Analysis (EDA)
Checked for missing values (none found)

Summary statistics and distribution plots generated

Correlation matrix plotted to inspect multicollinearity

Identified strong correlations among:

CompRes & DelSpeed

OrdBilling & DelSpeed

Ecom & SalesFImage

🧠 Modeling Approach
✅ Multiple Linear Regression
Baseline model using all 11 predictors

Adjusted R² = 0.777

Significant predictors:
ProdQual, Ecom, SalesFImage, ProdLine

🧪 Factor Analysis (with Varimax Rotation)
Conducted KMO test: Overall MSA = 0.65

Number of factors: 4 (based on scree plot)

Factors interpreted as:

Product Purchase

Marketing

Post-deal Support

Positioning

🔁 Final Regression Using Factors
Adjusted R² = 0.684

Significant factors:
Product_Purchase, Marketing, Positioning

💡 Key Insights
Customer satisfaction is influenced most by:

Product Quality

Salesforce Image

Complaint Resolution

Order & Billing

Marketing and positioning strategies should be improved to raise satisfaction scores.

Post-sale support (like warranty/tech support) plays a lesser role but should not be neglected.

🧰 Tech Stack
Language: R

Libraries: psych, stats, ggplot2, corrplot, caret, GPArotation
