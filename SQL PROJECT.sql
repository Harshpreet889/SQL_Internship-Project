create table superstore_dataset(
Row_ID int,
Order_ID varchar(30),
Order_Date varchar(20),
Ship_Date varchar(20),
Ship_Mode varchar(30),
Customer_ID  varchar(15),
Customer_Name varchar(100),
Segment varchar(50),
Country	varchar(20),
City varchar(40),
State varchar(100),
Postal_Code varchar(40),
Region	varchar(15),
Product_ID varchar(30),
Category varchar(30),
Sub_Category varchar(50),
Product_Name varchar(300),
Sales Numeric(18,5), 
Quantity Numeric(18,5), 
Discount Numeric(18,5),
Profit Numeric(18,5));

/**
Import data using Table Import Wizard from CSV -- Successfully imported
**/
select * from superstore_dataset;
/**
1. Top sales per customer
**/
select customer_id,sum(sales) as totalsales from superstore_dataset group by customer_id order by totalsales desc;

/**
2. Average Discount by Product Category
**/
select category,avg(discount) from superstore_dataset group by category;

/**
3. Top 5 Cities by Total Sales
**/
select city,sum(sales) as totalsales from superstore_dataset group by city order by totalsales desc LIMIT 5;

/**
4. Product with sales greater than $5000
**/
select product_id,sum(sales) as totalsales from superstore_dataset group by product_id having totalsales>5000;

/**
5. Number of Orders per Shipping Mode
**/
select ship_mode,count(*) from superstore_dataset group by ship_mode;






