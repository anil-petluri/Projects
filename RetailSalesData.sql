## Creating DB
CREATE DATABASE RetailSalesData;
USE RetailSalesData;

## Creating Table for Sales_Data_Transaction
CREATE TABLE Sales_Data_Transactions (
	Customer_Id VARCHAR(25),
	Tran_Date VARCHAR(25),
	Trans_Amount INT);

## Creating Table for Sales_Data_Responses    
CREATE TABLE Sales_Data_Responses (
	Customer_Id VARCHAR(25),
    Response INT);

## Select records from Table
Select * From RetailSalesData.Sales_Data_Transactions;
Select * From RetailSalesData.Sales_Data_Responses;

## Count the no of Records in each table
Select Count(*) From RetailSalesData.Sales_Data_Transactions;
Select Count(*) From RetailSalesData.Sales_Data_Responses;

## Find the Total Number of Unique Customers in Table
Select COUNT(DISTINCT Customer_Id) From RetailSalesData.Sales_Data_Transactions;

## List out the Transactions made by CustomerID 'CS4424'.
Select * From RetailSalesData.Sales_Data_Transactions
where Customer_Id = 'CS4424';

## Find sales value of each customer till date
Select Customer_Id,Sum(Trans_Amount) as TotalSales
From RetailSalesData.Sales_Data_Transactions
group by 1
order by 2 desc;

## Find sales value of Top 5 customer till date
Select Customer_Id,Sum(Trans_Amount) as TotalSales
From RetailSalesData.Sales_Data_Transactions
group by 1
order by 2 desc
limit 5;






