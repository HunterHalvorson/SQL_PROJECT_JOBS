SELECT job_posted_date
FROM job_postings_fact
LIMIT 10;


SELECT
  '2023-02-19'::DATE,
  '123'::INTEGER,
  'true'::BOOLEAN,
  '3.14'::REAL;


SELECT
  job_title_short as title,
  job_location as location, 
  job_posted_date::DATE as date 
FROM job_postings_fact;