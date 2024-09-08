ICU Admission Prediction Using Machine Learning
This repository contains code for predicting ICU admissions using patient data from the COVID-19 Dataset provided by Sírio Libanes (2024) on Kaggle. The dataset includes various medical parameters, and the analysis focuses on feature engineering, exploratory data analysis, and building machine learning models to predict ICU admissions.

Project Overview
The goal of this project is to develop predictive models to identify patients at risk of ICU admission based on their medical data. The project includes:

Exploratory Data Analysis (EDA): Visualizing and analyzing key variables affecting ICU admissions.
Data Preprocessing: Handling missing data, converting non-numeric columns, and feature scaling.
Model Building: Training Logistic Regression, Random Forest, and Support Vector Machine (SVM) models.
Model Evaluation: Assessing model performance using accuracy, F1-score, and classification reports.
Dataset
Source: COVID-19 Dataset by Sírio Libanes.
File: LibanesICUPrediction.xlsx
Installation and Setup
Clone the repository:

bash
Copy code
git clone https://github.com/yourusername/ICU-admission-prediction.git
Install dependencies:

bash
Copy code
pip install -r requirements.txt
Required Libraries:

pandas
numpy
seaborn
matplotlib
scikit-learn
Run the script: Ensure the dataset is in the correct file path, and run the main script to see the analysis and predictions.

bash
Copy code
python icu_admission_prediction.py
Exploratory Data Analysis (EDA)
A range of visualizations are created to better understand the relationship between patient features and ICU admissions:

ICU Admission Rate by Age Percentile: A bar plot visualizing ICU admission rates across different age groups.
Correlation Heatmap: Displays the correlation between ICU admissions and the top 5 most correlated features.
ICU Admission Distribution: A count plot showing how many patients were admitted to the ICU.
Boxplot of Albumin Levels by ICU Admission: Examines the distribution of albumin levels in patients admitted to the ICU.
Violin Plot of Respiratory Rate: Visualizes respiratory rate distributions based on ICU admission.
Scatter Plot of Neutrophiles vs Lymphocytes: Explores the relationship between neutrophiles and lymphocytes for ICU and non-ICU patients.
Age Distribution by ICU Admission: A histogram visualizing the age distribution for patients admitted to the ICU.
Pairplot of Selected Features: A pairplot comparing various selected features with ICU admissions.
Histogram with KDE: A histogram with kernel density estimation overlay for age percentiles.
Countplot of Gender by ICU Admission: Displays gender distribution for ICU admissions.
Line Plot of Oxygen Saturation by ICU Admission: Examines the mean oxygen saturation levels for ICU and non-ICU patients.
Bar Plot of Disease Grouping by ICU Admission: Visualizes the mean values of disease groupings for ICU admissions.
Model Building
The following machine learning models are implemented:

Logistic Regression
Random Forest Classifier
Support Vector Machine (SVM)
Model Performance Metrics:
Each model is evaluated using:

Accuracy
F1 Score
Confusion Matrix
Classification Report
How to Run
Preprocessing:

Data is cleaned and preprocessed, including handling missing values and converting categorical variables.
Model Training:

Train-test split (80/20) is used to train the models.
Standard scaling is applied to features for better model performance.
Model Evaluation:

Predictions are made using the test set, and models are evaluated based on performance metrics such as accuracy and F1-score.
Results
Logistic Regression:
Accuracy: XX
F1 Score: XX
Random Forest Classifier:
Accuracy: XX
F1 Score: XX
SVM:
Accuracy: XX
F1 Score: XX
Conclusion
This project demonstrates how machine learning models can be utilized to predict ICU admissions using medical data. The exploratory data analysis provides insights into important features, and the models achieve significant accuracy in identifying patients at risk.

References
Dataset: Sírio Libanes (2024). COVID-19 Dataset. Kaggle.
License
This project is licensed under the MIT License.

Credits
Dataset: COVID-19 Dataset by Sírio Libanes. Available on Kaggle.
Contact Information
Email: mtra.rose.vazquez@gmail.com
LinkedIn: www.linkedin.com/in/rosevazquezmba
