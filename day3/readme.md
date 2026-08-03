# 📊 Student Performance Analysis

Analyze student academic data using **Python, Pandas, and Matplotlib** to find insights on scores, attendance, and course performance.

## 📌 Project Overview
This project loads a student dataset and performs data analysis to understand:
- Average scores in Assignments, Midterm, and Final
- Students with low attendance and at risk of failing
- Performance comparison across different courses
- Correlation between Attendance and Final Score
- Data visualizations for better understanding

## 📂 Dataset
The dataset contains 30 student records with the following columns:

| Column | Description |
| --- | --- |
| Student Name | Name of student |
| Age | Age of student |
| Gender | Male / Female |
| Course | BSCS, BBA, BSIT, BSE |
| Attendance | Attendance percentage |
| Assignment Score | Score out of 100 |
| Midterm Score | Score out of 100 |
| Final Score | Score out of 100 |

### Sample Data
| Student Name | Age | Gender | Course | Attendance | Assignment | Midterm | Final |
|--------------|----:|--------|-----------:|-----------:|--------:|------:|
| Ali | 20 | Male | BSCS | 90 | 85 | 80 | 88 |
| Fatima | 19 | Female | BSIT | 95 | 90 | 91 | 93 |
| Iqra | 19 | Female | BSCS | 98 | 96 | 95 | 99 |
| Yasir | 21 | Male | BBA | 66 | 52 | 49 | 45 |

## 🛠️ Tech Stack
- **Python 3.x**
- **Pandas** - Data manipulation and analysis
- **Matplotlib** - Data visualization

## 🚀 How to Run

### 1. Install Dependencies
```bash
pip install pandas matplotlib

2. Add DatasetSave your data as student_dataset.csv in the same folder as the script.
3. Run the Script
python student_analysis.py

📈 Key Findings
1. Average Scores
Assignment Average: 78.33
Midterm Average: 76.27 
 Final Average: 78.60
2. Highest & Lowest 
Final ScoreHighest: Iqra - 99
Lowest: Yasir - 45

3. Students Below 75% Attendance
Ahmed, Bilal, Usman, Talha, Danish, Adnan, Yasir
4. Students At Risk - Final Score < 50
Bilal - 48, Usman - 49, Yasir - 45
5. Average Final Score by Course
Course    Avg Final Score
BSIT          90.43
BSE           81.00
BSCS          79.13
BBA           65.63

6. Correlation: Attendance vs Final Score
0.97 - Very strong positive correlation. Higher attendance = Higher scores.
📊 Visualizations
1.Final Score Distribution - Histogram showing how scores are distributed
2.Average Final Score by Course - Bar chart comparing courses
3.Attendance vs Final Score - Scatter plot showing relationship

🧹 Data Cleaning
1. StepsCheck Missing Values: df.isnull().sum()
2.Handle Missing Values: Fill with column mean
3.Remove Duplicates: df.drop_duplicates()

📝 Conclusion
BSIT students performed best with average 90.43
BBA students need more support with average 65.63
Attendance is a critical factor with 0.97 correlation to final score
7 students have low attendance and 3 students are at risk of failing.
👨‍💻 AuthorName:
 Javed Shah
Project: Student Performance Analysis with Pandas.