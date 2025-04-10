# Task-3-Elevate-labs

# 🧠 Task 3: SQL for Data Analysis – Data Analyst Internship

## 📌 Objective
The goal of this task was to use SQL to analyze a structured dataset by performing various queries, aggregations, joins, and optimization techniques.

---

## 📂 Dataset Used
I used a **Customer Support Dataset** that I split into four logical tables and saved as CSVs:

- `customers.csv` – Contains customer city, remarks, and order IDs  
- `orders.csv` – Includes order date, item price, product category, and channel  
- `agents.csv` – Contains agent details, shifts, tenure, and CSAT scores  
- `tickets.csv` – Tracks ticket IDs, categories, subcategories, and timestamps  

---

## 🛠 Tools & Technologies
- **SQLite** for writing and executing SQL queries  
- **DB Browser for SQLite** for data visualization and importing CSVs  
- **GitHub** for version control and task submission

---

## 🧪 SQL Features Used

### ✅ Step 1: Data Import
All four CSV files were imported into SQLite as relational tables. The tables were structured to allow joins via foreign keys such as `Order_id`.

---

### ✅ Step 2: SQL Query Execution
I performed a range of queries to analyze data:
- Used `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY` to filter, sort, and group records.
- Used aggregate functions like `SUM()`, `AVG()`, `COUNT()` to analyze spending and performance.
- Applied `INNER JOIN` and `LEFT JOIN` to combine tables for meaningful insights.
- Wrote subqueries to compare values with calculated averages.

#### ✅ Step 3: Create a View
To simplify repeated queries and make the analysis reusable, I created a SQL view for agent performance based on CSAT scores.

✅ Step 4: Indexing (Optimization)
To improve performance during filtering and joining operations, I used indexing on frequently accessed fields.
---
✅ Conclusion
This project enhanced my practical understanding of SQL for data analysis. By working with a structured, multi-table dataset, I was able to apply key SQL concepts including SELECT, JOIN, GROUP BY, aggregate functions, subqueries, view creation, and indexing.

Through this hands-on task, I gained deeper insight into how relational databases are used in real-world business scenarios—especially for customer support analysis, performance tracking, and operational reporting.

Overall, this task strengthened my ability to extract, manipulate, and summarize meaningful information from large datasets using SQL in a systematic and efficient way.
