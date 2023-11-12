-- Creating the table
CREATE EXTERNAL TABLE IF NOT EXISTS `ccprojectdatabase`.`hdcctable` ( `patientid` string, `age` int, `sex` string, `cholesterol` int, `bloodpressure` string, `heartrate` int, `diabetes` int, `familyhistory` int, `smoking` int, `obesity` int, `alcoholconsumption` int, `exercisehoursperweek` float, `diet` string, `previousheartproblems` int, `medicationuse` int, `stresslevel` int, `sedentaryhoursperday` float, `income` int, `bmi` float, `triglycerides` int, `physicalactivitydaysperweek` int, `sleephoursperday` int, `country` string, `continent` string, `hemisphere` string, `heartattackrisk` int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES ('field.delim' = ',')
STORED AS INPUTFORMAT 'org.apache.hadoop.mapred.TextInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION 's3://ccprojecthd/'
TBLPROPERTIES ('classification' = 'csv')


-- Sample table data
SELECT * FROM "ccprojectdatabase"."hdcctable" limit 10

-- Top 3 Countries with Highest Average Cholesterol Level
SELECT country, AVG(cholesterol) as avg_cholesterol
FROM hdcctable
GROUP BY country
ORDER BY avg_cholesterol DESC
LIMIT 3

-- To evaluate the heart rate and BMI of patients who have had previous heart problems:
SELECT patientid, heartrate, bmi, previousheartproblems
FROM hdcctable
WHERE previousheartproblems = 1

-- To identify patients who do not exercise regularly and have high stress levels, including their country and income:
SELECT patientid, country, income, exercisehoursperweek, stresslevel
FROM hdcctable
WHERE exercisehoursperweek < 2
AND stresslevel > 7

-- To explore the demographics and health data of patients from a specific continent:
SELECT patientid, age, sex, continent, bmi, heartattackrisk
FROM hdcctable
WHERE continent = 'North America'

-- To assess the number of high-income individuals who have a sedentary lifestyle and their associated heart attack risk:
SELECT patientid, income, sedentaryhoursperday, heartattackrisk
FROM hdcctable
WHERE income > 100000
AND sedentaryhoursperday > 8

-- To determine the average sleep hours and exercise hours per week for patients with different diet types
SELECT diet, AVG(sleephoursperday) AS AverageSleep, AVG(exercisehoursperweek) AS AverageExercise
FROM hdcctable
GROUP BY diet

-- To analyze the correlation between income, physical activity levels, and BMI among patients:
SELECT patientid, income, physicalactivitydaysperweek, AVG(bmi) AS AverageBMI
FROM hdcctable
GROUP BY patientid, income, physicalactivitydaysperweek;

-- To find individuals with diabetes and obesity, and their average stress levels
SELECT patientid, diabetes, obesity, AVG(stresslevel) AS AverageStressLevel
FROM hdcctable
WHERE diabetes = 1
AND obesity = 1
GROUP BY patientid, diabetes, obesity;


-- To identify smokers with high cholesterol who have a family history of heart disease
SELECT patientid, cholesterol, familyhistory
FROM hdcctable
WHERE smoking = 1
AND cholesterol > 200
AND familyhistory = 1;

-- Average BMI and stress level among those with a heart attack risk
SELECT AVG(bmi) AS AverageBMI, AVG(stresslevel) AS AverageStressLevel, COUNT(*) AS NumberOfPatients
FROM hdcctable
WHERE heartattackrisk = 1
GROUP BY heartattackrisk;

-- Number of individuals with diabetes and a sedentary lifestyle, and their heart attack risk
SELECT COUNT(*) AS DiabeticSedentaryIndividuals, SUM(heartattackrisk) AS TotalHeartRisks
FROM hdcctable
WHERE diabetes = 1
AND sedentaryhoursperday > 6;

-- Correlation between diet, average cholesterol levels, and heart attack risk
SELECT diet, AVG(cholesterol) AS AverageCholesterol, COUNT(*) AS NumberOfPatients, SUM(heartattackrisk) AS TotalHeartRisks
FROM hdcctable
GROUP BY diet;

-- Relationship between obesity, average exercise hours per week, and heart problems
SELECT obesity, AVG(exercisehoursperweek) AS AverageExercise, COUNT(*) AS NumberOfPatients, SUM(heartattackrisk) AS TotalHeartRisks
FROM hdcctable
GROUP BY obesity;

-- Number of people with an income higher than $50,000 who are smoking and have less than 7 hours of sleep, and their proneness to heart attack
SELECT COUNT(*) AS HighIncomeSmokersWithSleepIssues
FROM hdcctable
WHERE income > 50000
AND smoking = 1
AND sleephoursperday < 7
AND heartattackrisk = 1;

-- Number of males who are smoking and live in Argentina with a higher risk of heart disease
SELECT COUNT(*) AS SmokerMalesAtRisk
FROM hdcctable
WHERE sex = 'Male'
AND smoking = 1
AND country = 'Argentina'
AND heartattackrisk = 1;
















