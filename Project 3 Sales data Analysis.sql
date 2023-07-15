Create database sales_analysis;
use sales_analysis;
select *from sales_data;

select COUNTRY, round(sum(sales)) as Total_revenue_generation from sales_data
group by country
order by Total_revenue_generation desc;
-- Overall revenue generating from different countries.  

Select distinct PRODUCTLINE, count(PRODUCTLINE) as Total_Count_of_orders from sales_data
group by PRODUCTLINE;
-- These are total count of each products. 

select PRODUCTCODE, count(PRODUCTCODE) as order_times from sales_data 
where productline = 'Motorcycles'
group by PRODUCTCODE;

 select PRODUCTLINE, round(sum(SALES)) As Total_revenue_generation from sales_data
 group by productline;
 -- These are total revenue generation of each products.
 
 select CUSTOMERNAME, count(CUSTOMERNAME) as orders_times, sum(QUANTITYORDERED) as Total_quantity_ordered,
round(avg(PRICEEACH)) as Average_cost, round(sum(SALES)) as Total_revenue from sales_data
 group by customername
 order by Total_revenue desc
 Limit 10;
-- These are top 10 customers of company who contributed maxiumum in revenue

Select DEALSIZE, count(DEALSIZE) as count_of_orders from sales_data
group by DEALSIZE;
-- Overall dealsize of company 

select productline, count(productline) as number_of_smallsize_orders from sales_data
where dealsize = 'small' 
group by productline;

select productline, count(productline) as number_of_mediumsize_orders from sales_data
where dealsize = 'medium' 
group by productline;

select productline, count(productline) as number_of_largesize_orders from sales_data
where dealsize = 'large' 
group by productline;

Select dealsize, round(sum(sales)) as Total_sales from sales_data
where dealsize = 'small'
group by dealsize;
-- Revenue from small size sale

Select dealsize, round(sum(sales)) as Total_sales from sales_data
where dealsize = 'medium'
group by dealsize;
-- Revenue from medium size sale

Select dealsize, round(sum(sales)) as Total_sales from sales_data
where dealsize = 'large'
group by dealsize;
-- Revenue from large size sale