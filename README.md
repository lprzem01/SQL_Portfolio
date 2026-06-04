# SQL Portfolio

## Overview

This repository contains SQL projects demonstrating data exploration, cleaning, transformation, and analytical querying techniques using real-world datasets.

The portfolio showcases practical SQL skills including data validation, aggregation, filtering, joins, subqueries, view creation, and business-oriented data analysis.

---

## Skills Demonstrated

### Database Querying

- SELECT statements
- Filtering and sorting
- Aggregate functions
- GROUP BY and HAVING clauses
- DISTINCT queries

### Data Analysis

- Exploratory Data Analysis (EDA)
- Trend analysis
- Summary statistics
- Business insights generation
- Data quality assessment

### SQL Techniques

- Data Cleaning
- View Creation
- Aggregate Analysis
- Subqueries
- Date Functions
- Business Reporting Queries

---

## Projects

### Kickstarter Campaign Analysis

#### Objective

Analyse Kickstarter crowdfunding campaign data to identify trends in project success, funding performance, category popularity, and geographic distribution.

#### Dataset

The dataset contains over 320,000 Kickstarter projects and includes information such as:

- Project name
- Category
- Main category
- Funding goal
- Amount pledged
- Project status
- Number of backers
- Launch and deadline dates
- Country and currency information

#### Skills Used

- Data Cleaning
- Data Validation
- Aggregate Functions
- GROUP BY Analysis
- View Creation
- Subqueries
- Date Functions

#### Analysis Performed

- Inspected database structure and data quality
- Identified and corrected missing values
- Examined project category distributions
- Analysed successful versus unsuccessful projects
- Identified projects with the highest number of backers
- Calculated yearly crowdfunding totals
- Compared project activity across countries
- Created reusable SQL views for reporting

#### Key Insights

- Identified the most common Kickstarter project categories.
- Determined which categories generated the highest number of successful campaigns.
- Analysed crowdfunding trends across multiple years.
- Compared project volumes across different countries.
- Investigated funding performance using pledged and USD pledged amounts.

#### SQL Views Created

##### Main Categories View

Summarises successful projects by category and ranks them by frequency.

##### Yearly Pledges View

Calculates total USD pledged by year to identify funding trends over time.

##### Countries View

Ranks countries based on the number of Kickstarter projects created.

---

## Technologies

- SQL
- MySQL

---

## Repository Structure

```text
SQL_Portfolio/
├── KS_project.sql
├── KS_report.pbix
└── README.md
```

---

## Learning Objectives

This project was completed to develop practical SQL skills and demonstrate the ability to:

- Explore large datasets
- Clean and validate data
- Generate business insights using SQL
- Create reusable reporting views
- Apply analytical thinking to real-world datasets

---

## Future Improvements

Planned enhancements include:

- Window Functions
- Common Table Expressions (CTEs)
- Advanced KPI calculations
- Funding success prediction analysis
- Power BI dashboard expansion
- Query optimisation techniques
