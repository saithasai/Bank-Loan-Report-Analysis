drop database if exists loan;
create database bank ;
use bank;
select * from financial_loan;
## total loan applications
select count(id) as total_loan_applications from financial_loan;

select count(id) as MTD_total_loan_applications from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=12 and year(STR_TO_DATE(issue_date, '%d-%m-%Y'))=2021;

select count(id) as PMTD_total_loan_applications from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=11;

## total funded amound
select sum(loan_amount) as sum_loan_applications from financial_loan;

select sum(loan_amount) as MTD_sum_loan_applications from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=12 and year(STR_TO_DATE(issue_date, '%d-%m-%Y'))=2021;

select sum(loan_amount) as PMTD_sum_loan_applications from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=11;

## total amount received
select sum(total_payment) as payment_received from financial_loan;

select sum(total_payment) as MTD_payment_received from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=12 and year(STR_TO_DATE(issue_date, '%d-%m-%Y'))=2021;

select sum(total_payment) as PMTD_payment_received from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=11 and year(STR_TO_DATE(issue_date, '%d-%m-%Y'))=2021;

## average interest rate
select round(avg(int_rate)*100 ,2) as avg_interest_rate from financial_loan;

select round(avg(int_rate)*100 ,2) as MTD_avg_interest_rate from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=12 and year(STR_TO_DATE(issue_date, '%d-%m-%Y'))=2021;

select round(avg(int_rate)*100 ,2) as PMTD_avg_interest_rate from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=11 and year(STR_TO_DATE(issue_date, '%d-%m-%Y'))=2021;

## average dti
select round(avg(dti)*100 ,2) as avg_dti from financial_loan;

select round(avg(dti)*100 ,2) as MTD_avg_dti from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=12 and year(STR_TO_DATE(issue_date, '%d-%m-%Y'))=2021;

select round(avg(dti)*100 ,2) as PMTD_avg_dti from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=11 and year(STR_TO_DATE(issue_date, '%d-%m-%Y'))=2021;

## good loan percentage
select round(count(case 
when loan_status='Fully Paid' or loan_status='Current' then id end)*100/(select count(id) from financial_loan)) as good_loan_percentage
from financial_loan;

## count of good loan applications
select count(id) good_loan_applications from financial_loan
where loan_status='Fully Paid' or loan_status='Current';

## good loan funded amount
select sum(loan_amount) good_loan_applications from financial_loan
where loan_status='Fully Paid' or loan_status='Current';

## good loan received amount
select sum(total_payment) good_loan_applications from financial_loan
where loan_status='Fully Paid' or loan_status='Current';

## bad loan percentage
select round(count(case 
when loan_status='Charged Off'then id end)*100/(select count(id) from financial_loan)) as bad_loan_percentage
from financial_loan;

## count of bad loan applications
select count(id) good_loan_applications from financial_loan
where loan_status='Charged Off';

## good loan funded amount
select sum(loan_amount) good_loan_applications from financial_loan
where loan_status='Charged Off';

## good loan received amount
select sum(total_payment) good_loan_applications from financial_loan
where loan_status='Charged Off';

##  loan status grid view
select distinct loan_status,count(id) as loan_count,sum(loan_amount) as total_amount_funded,sum(total_payment) as total_amount_received,
round(avg(int_rate)*100,2) as interest_rate,round(avg(dti)*100,2) as dti 
from financial_loan
group by 1;

##  MTD loan status grid view
select distinct loan_status,sum(total_payment) as total_amount_received,sum(loan_amount) as total_amount_funded
from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=12 and year(STR_TO_DATE(issue_date, '%d-%m-%Y'))=2021
group by 1;

##  PMTD loan status grid view
select distinct loan_status,sum(total_payment) as total_amount_received,sum(loan_amount) as total_amount_funded
from financial_loan
where MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y'))=11 and year(STR_TO_DATE(issue_date, '%d-%m-%Y'))=2021
group by 1;

## month name,num of application, loan amount ,amount received,
select month(STR_TO_DATE(issue_date, '%d-%m-%Y')) as month,monthname(STR_TO_DATE(issue_date, '%d-%m-%Y')) as month_name,
count(id) as applications_count,
sum(loan_amount) as total_amount_funded,sum(total_payment) as total_amount_received
from financial_loan
group by 1,2
order by 1,2;

## state,num of application, loan amount ,amount received --- regional analysis
select address_state,
count(id) as applications_count,
sum(loan_amount) as total_amount_funded,sum(total_payment) as total_amount_received
from financial_loan
group by 1
order by 1;

## term,num of application, loan amount ,amount received --- regional analysis
select term,
count(id) as applications_count,
sum(loan_amount) as total_amount_funded,sum(total_payment) as total_amount_received
from financial_loan
group by 1
order by 1;

## employee_length,num of application, loan amount ,amount received --- regional analysis
select emp_length,
count(id) as applications_count,
sum(loan_amount) as total_amount_funded,sum(total_payment) as total_amount_received
from financial_loan
group by 1
order by 1;

## purpose,num of application, loan amount ,amount received --- regional analysis
select purpose,
count(id) as applications_count,
sum(loan_amount) as total_amount_funded,sum(total_payment) as total_amount_received
from financial_loan
group by 1
order by 1;

## home_ownership,num of application, loan amount ,amount received --- regional analysis
select home_ownership,
count(id) as applications_count,
sum(loan_amount) as total_amount_funded,sum(total_payment) as total_amount_received
from financial_loan
group by 1
order by 2 desc;

select distinct address_state from financial_loan