# Exploratory Data Analysis: Layoffs Dataset (SQL)

## 📌 Project Overview
This project contains exploratory data analysis (EDA) performed using SQL on a cleaned dataset of layoffs. The dataset includes information about company layoffs over time, industries, countries, and stages of growth.

The purpose of this EDA was to explore trends, identify the most affected companies and industries, and uncover insights about layoffs over time.

---

## 🧮 Dataset Description
The table used for analysis is `cleaned_layoffs`, containing the following fields:

| Column               | Description                              |
|----------------------|------------------------------------------|
| company              | Name of the company                      |
| location             | Company location                         |
| industry             | Industry sector                         |
| total_laid_off       | Number of employees laid off             |
| percentage_laid_off  | Percentage of employees laid off         |
| date                 | Date of layoff announcement              |
| stage                | Company stage (e.g., Pre-IPO, Post-IPO) |
| country              | Country of the company                   |
| funds_raised_millions| Total funding raised (in millions)      |

---

## 🔍 EDA Objectives & Queries

### ✅ General Insights
- Count of unique companies and industries
- Maximum total and percentage layoffs
- 100% layoffs (complete company shutdowns)

### ✅ Grouped Analysis
- Total layoffs by company
- Total layoffs by industry
- Total layoffs by country
- Total layoffs by year
- Total layoffs by month
- Total layoffs by company per year

### ✅ Advanced Insights
- Top 5 companies with the most layoffs each year using `DENSE_RANK()`

---

## 📊 Key Insights

- **Highest individual layoff event**: 12,000 people laid off at once
- **Highest percentage layoff**: 100% (complete shutdowns)
- **Unique companies in the dataset**: 825
- **Unique industries represented**: 31

### 🔸 Top 4 Companies by Total Layoffs:
| Company   | Total Laid Off |
|-----------|----------------|
| Amazon    | 18,150          |
| Google    | 12,000          |
| Ericsson  | 8,500           |
| Dell      | 6,650           |

### 🔸 Top 5 Industries by Total Layoffs:
| Industry      | Total Laid Off |
|---------------|----------------|
| Hardware      | 13,394         |
| Other         | 13,159         |
| Finance       | 12,060         |
| Crypto        | 9,397          |
| Transportation| 9,290          |

### 🔸 Top 5 Countries by Total Layoffs:
| Country     | Total Laid Off |
|-------------|----------------|
| Brazil      | 5,647          |
| Singapore   | 5,550          |
| Netherlands | 4,765          |
| China       | 3,425          |
| Germany     | 3,123          |

### 🔸 Layoffs by Year:
| Year | Total Laid Off |
|------|----------------|
| 2020 | 33,925         |
| 2021 | 10,005         |
| 2022 | 76,005         |
| 2023 | 65,770         |

---

## 🛠️ Tools Used
- SQL (Microsoft SQL Server / MySQL syntax)
- SQL functions: `GROUP BY`, `MAX()`, `COUNT(DISTINCT)`, `YEAR()`, `DENSE_RANK()`, `CTE`

---

## 📁 Files
- `cleaned_layoffs_eda.sql` – SQL queries used for EDA
- `cleaned_layoffs.csv` *(optional)* – Cleaned dataset used in the analysis

---

## 👩‍💻 Author
Emine Hamo Mael  
[GitHub Profile](https://github.com/yourusername)  
aminahamomayel@gmail.com
