select * from superstore_data

SELECT Sales 
from superstore_data

SELECT Sales,Profit
From superstore_data

SELECT 'Customer Name', Sales 
From superstore_data
where Region='East'

Select SUM(Sales) As total_sales
From superstore_data

Select SUM(Profit) As total_Profit
From superstore_data

select AVG(discount) as average_discount
From superstore_data

select Region, Sum(Sales) as Sales_by_region
from superstore_data
group by Region

Select Category, Sum(Sales) as Categorical_sales
from superstore_data
group by category
order by Sum(Sales) DESC

Select `Customer ID` , Sum(Sales) as total_sales
from Superstore_data
Group by `Customer ID`
Order by Sum(Sales) DESC
Limit 10

Select `Product Name`, Sum(Sales) as total_sales
from superstore_data
group by `Product Name`
order by Sum(Sales) desc
limit 10

Select `Product Name`, Sum(Profit) as Total_profit
from superstore_data
group by `Product Name`
order by Sum(Profit) desc
limit 10

Select Category,Sum(Sales) as total_sales
from superstore_data
group by category
order by total_sales desc

Select Category,Sum(profit) as total_profit
from superstore_data
group by category
order by total_profit desc

Select Category,Avg(Discount) as avg_discount
from superstore_data
group by category
order by avg_discount desc

Select Region, Sum(profit) as total_profit
from superstore_data
group by Region
having Sum(profit) >50000
order by Sum(profit) Desc

select Segment, Avg(Discount) as avg_discount
from superstore_data
group by segment 
having Avg(Discount) >0.15
order by  Avg(Discount)

select
`order id` ,
discount,
case 
	when Discount >=0.3 then 'High Discount'
    when discount >=0.1 then 'medium discount'
    else ' low discount'
end as discount_category 
from superstore_data

select Month(`order date`) as month, 
		sum(sales) as total_sales 
from superstore_data
group by month(`order date`)
order by month

select Month(`order date`) as month, 
		sum(profit) as total_profit 
from superstore_data
group by month(`order date`)
order by month 

select City,sum(sales) as total_sales
from superstore_data
group by city
order by sum(sales) desc
limit 5

select state, sum(profit) as total_profit
from superstore_data
group by state
order by sum(profit) desc
limit 5

select `product name`, sum(profit) as total_profit
from superstore_data
group by `product name`
having sum(profit)<0
order by sum(profit) asc
limit 10

select `Customer Name`, Avg(Sales) as average_order_value
from superstore_data
group by `Customer Name`
order by average_order_value
limit 5

from superstore_data
group by region
order by Avg(discount) desc
limit 1



