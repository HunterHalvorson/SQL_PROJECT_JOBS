# 📊 Data Analyst Job Market Exploration

## Introduction
Dive into the data job market!  
Focusing on **data analyst** roles, this project explores:  
💰 Top-paying jobs  
🔥 In-demand skills  
📈 Where high demand meets high salary in data analytics  

🔍 **SQL queries?** Check them out here: [project_sql folder](/project_sql/)

---

## Background
Driven by a quest to navigate the data analyst job market more effectively, this project was born from a desire to pinpoint **top-paid** and **in-demand** skills, streamlining the search for optimal jobs.

Data comes from my [SQL Course](https://lukebarousse.com/sql), packed with insights on job titles, salaries, locations, and essential skills.

---

## Key Questions
1. **What are the top-paying data analyst jobs?**  
2. **What skills are required for these top-paying jobs?**  
3. **What skills are most in demand for data analysts?**  
4. **Which skills are associated with higher salaries?**  
5. **What are the most optimal skills to learn?**  

---

## Tools I Used
- 🛠 **SQL**
- 🗄 **PostgreSQL**
- 🌐 **Git & GitHub** for version control

---

## Methodology & Code Snippets

### 1️⃣ Top-Paying Data Analyst Jobs
We start by filtering for `job_location = 'Anywhere'` and ordering by highest salaries.

```sql
SELECT
  job_id, job_title, job_location, job_schedule_type, 
  salary_year_avg, job_posted_date, name AS company_name
FROM job_postings_fact
LEFT JOIN company_dim
  ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title LIKE '%Data Analyst%'
  AND salary_year_avg IS NOT NULL
  AND job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;
