create database banking_loan_project;
use banking_loan_project;
show tables;
-- 1 total no of loans
select count(*) as total_loans from banking_loan_clean;
-- 2 Total loan amount 
select sum(loan_amount) as total_loan_amount from banking_loan_clean;
-- 3 Average loan amount
select round(avg(loan_amount),2) as avg_loan_amount from banking_loan_clean;
-- 4 Loan status distribution
select loan_status,count(*) as total_customers from banking_loan_clean group by loan_status;
-- 5 Total loan by purpose
select loan_purpose,sum(loan_amount) as total_loan from banking_loan_clean group by loan_purpose order by total_loan desc;
-- 6 Average intrest by grade
select loan_grade , round(avg(interest_rate),2) as avg_interst_rate from banking_loan_clean group by loan_grade order by loan_grade;
-- 7 Average income by home ownership
select home_ownership,round(avg(annual_income),2) as avg_income from banking_loan_clean group by home_ownership order by home_ownership;
-- 8 state wise loan amount
select state , sum(loan_amount) as total_loan from banking_loan_clean group by state order by total_loan;
-- 9 top 10 state with highest loan amount
SELECT  state, sum(loan_amount) as total_loan from banking_loan_clean group by state order by total_loan desc limit 10;
-- 10 Loan default analysis 
SELECT loan_status,COUNT(*) AS Total_Count,SUM(loan_amount) AS Loan_Amount FROM banking_loan_clean GROUP BY loan_status;
-- 11 Purpose wise default rate
select loan_purpose,loan_status, count(*) as total from banking_loan_clean group by loan_purpose,loan_status order by loan_purpose; 
-- 12 Grade wise loan performance
select loan_grade, count(*) as total_loans ,avg(interest_rate) as avg_interest ,sum(total_paid) as total_recovery from banking_loan_clean group by loan_grade;
-- 13  Top 10 highest loan_id by amount
select loan_id, loan_amount from banking_loan_clean order by loan_amount desc limit 10;
-- 14 Income vs loan_amount
SELECT
CASE
WHEN annual_income < 50000 THEN 'Low Income'
WHEN annual_income BETWEEN 50000 AND 100000 THEN 'Medium Income'
ELSE 'High Income'
END AS Income_Group,
AVG(loan_amount) AS Avg_Loan
FROM banking_loan_clean
GROUP BY
CASE
WHEN annual_income < 50000 THEN 'Low Income'
WHEN annual_income BETWEEN 50000 AND 100000 THEN 'Medium Income'
ELSE 'High Income'
END;
-- 15 rank states by loan amount
select state, sum(loan_amount) as total_loan , rank () over(order by sum(loan_amount) desc) as ranking from banking_loan_clean group by state;