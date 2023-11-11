# Heart Attack Risk Prediction using Machine Learning

## Table of Contents

1. [Project Scope and Business Goal](#1-project-scope-and-business-goal)
2. [Domain Overview](#2-domain-overview)
3. [Literature Review](#3-literature-review)
4. [Data Sources](#4-data-sources)
5. [Domain-specific Challenges](#5-domain-specific-challenges)
6. [Key Performance Indicators (KPIs)](#6-key-performance-indicators-kpis)
7. [Tools and Technologies (AWS Services)](#7-tools-and-technologies-aws-services)
8. [Contributors](#8-contributors)

## 1. Project Scope and Business Goal

### Scope

Developing a machine learning model to predict heart attack risks using the Heart Attack Prediction Dataset. The project covers data preprocessing, exploratory data analysis, model training, evaluation, and optimization. AWS services will be used for an end-to-end pipeline.

### Business Goal

To aid in proactive strategies for cardiovascular health management and disease prevention.

## 2. Domain Overview

### Domain

Healthcare, focusing on cardiovascular health.

### Key Stakeholders

Healthcare providers, patients, medical researchers.

### Challenge Addressed

Prediction of heart attack risks based on lifestyle and health data.

## 3. Literature Review

### Summary of 5 key sources

## [Heart Disease Prediction Using Supervised Machine Learning Algorithms: Performance Analysis and Comparison](https://www.sciencedirect.com/science/article/pii/S0010482521004662)

### Objective

- **Aim**: To identify the most accurate machine learning classifiers for diagnosing heart disease.

### Methodology

- **Approach**: Application of various supervised machine learning algorithms (KNN, DT, RF, etc.) to a heart disease dataset from Kaggle.
- **Focus**: Emphasis on feature importance scores for enhancing predictive accuracy.

### Results

- **Finding**: Random Forest (RF) method achieved 100% accuracy, sensitivity, and specificity, outperforming other models.

### Implications

- **Significance**: Demonstrates the potential of simple supervised machine learning algorithms in clinical applications for heart disease prediction.
- **Contribution**: Highlights the effectiveness of machine learning in early heart disease diagnosis, crucial for patient care and treatment planning.

## [Heart Disease Prediction Using Machine Learning Techniques: A Survey](https://www.researchgate.net/publication/325116774_Heart_disease_prediction_using_machine_learning_techniques_A_survey)

### Objective

- **Aim**: To survey various machine learning models for heart disease prediction and analyze their performance.

### Methodology

- **Approach**: Examination of models based on supervised learning algorithms such as SVM, KNN, Naïve Bayes, DT, RF, and ensemble models.
- **Focus**: Analysis of the effectiveness of these models in predicting heart disease.

### Results

- **Findings**: Different algorithms showed varying levels of performance, with Random Forest and ensemble models performing notably well due to their ability to address overfitting.
- **Insights**: Naïve Bayes was noted for computational efficiency, while SVM showed high performance in most cases.

### Conclusion

- **Observations**: Machine learning algorithms have significant potential in predicting cardiovascular diseases.
- **Future Scope**: Research opportunities exist in handling high-dimensional data, overfitting, and determining the optimal ensemble of algorithms for specific data types.

## [Heart Disease Prediction Using Machine Learning Algorithms](https://iopscience.iop.org/article/10.1088/1757-899X/1022/1/012072/pdf)

### Objective

- **Aim**: To predict heart disease using various machine learning algorithms based on medical history.

### Methodology

- **Approach**: Utilization of logistic regression and KNN for heart disease prediction and classification.
- **Focus**: Improvement in prediction accuracy using advanced machine learning techniques.

### Results

- **Findings**: The model demonstrated high accuracy, with KNN and Logistic Regression showing better performance compared to previous classifiers like Naive Bayes.
- **Implications**: The model effectively reduces medical care costs and enhances prediction efficiency.

### Conclusion

- **Summary**: The model presents a significant advancement in predicting heart diseases using machine learning, with an average accuracy of 87.5%, outperforming previous models.

## [Heart Disease Prediction Using Hybrid Machine Learning Model](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=9358597)

### Objective

- **Aim**: To develop a novel hybrid machine learning model for heart disease prediction using the Cleveland dataset.

### Methodology

- **Approach**: Implementation of a hybrid model combining Random Forest and Decision Tree algorithms for heart disease prediction.
- **Tools**: Use of Python with sklearn, pandas, and matplotlib libraries for modeling and data visualization.

### Results

- **Findings**: The hybrid model achieved an accuracy of 88.7%, outperforming individual models of Random Forest and Decision Tree.
- **Implications**: Demonstrates the efficacy of hybrid models in medical diagnosis, specifically for heart disease prediction.

### Conclusion

- **Summary**: The study presents a highly effective approach for heart disease prediction, suggesting that hybrid machine learning models can significantly enhance diagnostic accuracy in healthcare.

### Future Work

- **Next Steps**: Exploration of deep learning algorithms for heart disease prediction and classification of disease levels.

## [Heart Disease Prediction Using Machine Learning](https://www.researchgate.net/publication/351545128_Heart_Disease_Prediction_Using_Machine_Learning)

### Objective

- **Aim**: To use machine learning algorithms for the accurate and efficient prediction of heart disease.

### Methodology

- **Approach**: Application of data mining and machine learning techniques like Artificial Neural Network (ANN), Random Forest, and Support Vector Machine (SVM) on heart disease datasets.
- **Data Source**: Utilization of the Cleveland heart disease dataset for predictive modeling.

### Results

- **Findings**: The study achieved maximum scores of 84.0% with Support Vector Classifier, 83.5% with Neural Network, and 80.0% with Random Forest Classifier.
- **Implications**: Highlights the potential of machine learning techniques in improving the accuracy of cardiovascular risk prediction.

### Conclusion

- **Summary**: The research underscores the significant scope for machine learning in predicting heart diseases, demonstrating the performance variability of different algorithms in various scenarios.

## 4. Data Sources

### Primary Data Source

[Heart Attack Prediction Dataset](https://www.kaggle.com/datasets/iamsouravbanerjee/heart-attack-prediction-dataset) from Kaggle.

## 5. Domain-specific Challenges

### Challenges

Addressing privacy concerns, data security, and dealing with biased datasets in healthcare.

## 6. Key Performance Indicators (KPIs)

### Success Metrics

Accuracy, precision, recall of the predictive model.

## 7. Tools and Technologies (AWS Services)

### AWS Services Used

- **Amazon S3**: Data storage
- **Amazon Athena**: Data querying
- **Amazon QuickSight**: Data visualization
- **AWS Glue**: ETL processes
- **Amazon SageMaker**: Model development and training
- **AWS Lambda** (optional): Pipeline automation
- **AWS Cost Explorer and Trusted Advisor**: Cost analysis

## 8. Contributors

### Team Members

1. Akhil Rayapati
2. Hemanth Anumolu
3. Mahesh Hasbi
4. Prashanth Sammanu
5. Saandeep Ippagunta
