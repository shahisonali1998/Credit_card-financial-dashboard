--SQL QUERY TO CREATE AND IMPORT DATA FROM CSV FILES --

-- 1. CREATE A DATABASE--
create database ccd

2. -- USING DATABASE--
use ccd;

3. --  CREATING TABLE CREDIT --
create table credit(
Client_Num int,
Card_Category varchar(20),
Annual_Fees int,
Activation_30_Days int,
Customer_Acq_Cost int,
Date DATE,
Week_Num varchar(20),
Qtr varchar(10),
Current_Year int,
Credit_Limit decimal(10,2),
Total_Revolving_Bal int,
Total_Trans_Amt int,
Total_Trans_Ct int,
Avg_Utilization_Ratio decimal(10,3),
Use_Chip varchar(10),
Exp_Type varchar(50),
Interest_Earned decimal(10,3),
Delinquent_Acc varchar(5)
);

4. --- CREATING TABLE CUSTOMER ---
create table customer(
Client_num int,
Customer_age int,
Gender varchar(5),
Dependent_count int,
Education_level varchar(50),
Martial_status varchar(20),
State_cd varchar(50),
Zipcode varchar(20),
Car_owner varchar(5),
House_owner varchar(5),
Personal_loan varchar(5),
Contact varchar(50),
Customer_job varchar(50),
Income int,
Cust_satisfaction_score int
);
select * from credit;
set sql_safe_updates=0;
5. ----COPY CSV DATA INTO SQL (remember to update the file name and file location in below query)
------copy credit table---
 

INSERT INTO credit (Client_Num, Card_Category, Annual_Fees, Activation_30_Days, Customer_Acq_Cost, Week_Start_Date, Week_Num, Qtr, Current_Year, Credit_Limit, Total_Revolving_Bal, Total_Trans_Amt, Total_Trans_Ct, Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc) 
from'C:\Users\Lenovo\Downloads\credit_card (13).csv'
DELIMITER','
CSV HEADER;



