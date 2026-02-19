CREATE TABLE retail (
    transaction_id   INT PRIMARY KEY,
    sale_date        DATE,
    sale_time        TIME,
    customer_id      INT,
    gender           VARCHAR(15),
    age              INT,
    category         VARCHAR(15),
    quantity         INT,
    price_per_unit   FLOAT,
    cogs             FLOAT,
    total_sale       FLOAT
);

SELECT * FROM retail;  -- check if it's there

DROP TABLE retail; -- deletes the table and all its data

CREATE TABLE retail (
    transaction_id   INT PRIMARY KEY,
    sale_date        DATE,
    sale_time        TIME,
    customer_id      INT,
    gender           VARCHAR(15),
    age              INT,
    category         VARCHAR(15),
    quantity         INT,
    price_per_unit   FLOAT,
    cogs             FLOAT,
    total_sale       FLOAT
);

select * from retail;

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05

select * from retail
where sale_date = '2022-11-05';

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022?

select * from retail
where category = 'clothing' and quantity > 10;


SELECT *
FROM retail
WHERE category = 'Clothing'
  AND quantity >= 1
  AND sale_date >= '2022-11-01'
  AND sale_date < '2022-12-01';
  
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

select category, sum(total_sale) as total
from retail
group by category;

SELECT 
    category,
    SUM(total_sale) as net_sale,
    COUNT(*) as total_orders
FROM retail
GROUP BY 1;

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

select avg(age) as avg_age from retail
where category = 'Beauty';

SELECT
    ROUND(AVG(age), 2) as avg_age
FROM retail
WHERE category = 'Beauty';

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

select transaction_id from retail
where total_sale > 1000;

-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

select category, gender, count(transaction_id) as count
from retail
group by category, gender;

SELECT 
    category,
    gender,
    COUNT(*) as total_trans
FROM retail
GROUP 
    BY 
    category,
    gender
ORDER BY 1;

-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year

select * from retail;

SELECT 
    DATE_FORMAT(sale_date, '%Y-%m') AS month,
    SUM(total_sale) AS total_sales
FROM retail
GROUP BY month
ORDER BY month;

select
	date_format(sale_date, '%Y-%m') as month,
    sum(total_sale) as total_sales
from retail
group by month
order by month;

SELECT 
    DATE_FORMAT(sale_date, '%Y-%m') AS month,
    COUNT(*) AS total_transactions
FROM retail
GROUP BY month
ORDER BY month;

select
	date_format(sale_date, '%Y-%m') as month,
    round(avg(age),2)(total_sale) as average_sale
    from retail
    group by month
    order by month;
    
    
SELECT 
       year,
       month,
    avg_sale
FROM 
(    
SELECT 
    EXTRACT(YEAR FROM sale_date) as year,
    EXTRACT(MONTH FROM sale_date) as month,
    AVG(total_sale) as avg_sale,
    RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) as rank
FROM retail
GROUP BY 1, 2
) as t1
WHERE rank = 1;


-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 

select * from retail;

select customer_id, sum(total_sale) as total_revenue_given
from retail
group by customer_id
order by total_revenue_given desc
limit 5;

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

select * from retail;

SELECT 
    category,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM retail
GROUP BY category;


-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)

WITH hourly_sale AS (
    SELECT *, 
        CASE 
            WHEN HOUR(sale_time) < 12 THEN 'Morning'
            WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
            ELSE 'Evening' 
        END AS shift
    FROM retail
)
SELECT shift, 
    COUNT(*) AS total_orders
FROM hourly_sale
GROUP BY shift;

