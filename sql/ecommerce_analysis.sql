Use ecommerce;
-- Section 1: Sales & Businees Performance
-- Q1 Which product category generates the highest and lowest revenue?
(SELECT product_category, SUM(revenue) AS total_revenue
FROM details
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 1)

UNION ALL

(SELECT product_category, SUM(revenue) AS total_revenue
FROM details
GROUP BY product_category
ORDER BY total_revenue ASC
LIMIT 1
);


-- Q2 Which category has the highest quantity sold and average order value?
SELECT product_category, SUM(quantity) AS total_quantity, 
                         ROUND(AVG(revenue),2) AS avg_order_value
FROM details
GROUP BY product_category
ORDER BY total_quantity DESC,avg_order_value DESC
LIMIT 1;

-- Q3 Which region generates the highest revenue?
SELECT region, SUM(revenue) AS total_revenue
FROM details
GROUP BY region
ORDER BY total_revenue DESC
LIMIT 1;

-- Q4 Which region has the fastest average delivery time?
SELECT region, ROUND(AVG(delivery_days),2) AS fastest_delivery
FROM details
GROUP BY region
ORDER BY fastest_delivery ASC
LIMIT 1;

-- Q5 Which region has the highest customer rating?
SELECT region, ROUND(AVG(customer_rating),2) AS highest_rating
FROM details
GROUP BY region
ORDER BY highest_rating DESC
LIMIT 1;

-- Section 2: Customers & Transactions
-- Q1 Which payment method contributes the highest transaction value?
SELECT payment_method, SUM(revenue) AS total_transaction_value
FROM details
GROUP BY payment_method
ORDER BY total_transaction_value DESC
LIMIT 1;

-- Q2 Which month records the highest and lowest revenue?
(SELECT DATE_FORMAT(order_date,'%Y-%m') AS month, 
       SUM(revenue) AS total_revenue
FROM details
GROUP BY DATE_FORMAT(order_date,'%Y-%m')
ORDER BY total_revenue DESC
LIMIT 1)

UNION ALL

(SELECT DATE_FORMAT(order_date,'%Y-%m') AS month, 
       SUM(revenue) AS total_revenue
FROM details
GROUP BY DATE_FORMAT(order_date,'%Y-%m')
ORDER BY total_revenue ASC
LIMIT 1);

-- Q3 Who are the top 10 customers by total spending with their ties?
WITH customer_rank AS
(SELECT customer_id,
       SUM(revenue) as total_revenue,
       DENSE_RANK() OVER(ORDER BY SUM(revenue) DESC) AS dr
FROM details
GROUP BY customer_id)
SELECT customer_id, total_revenue
FROM customer_rank
WHERE dr <= 10;

-- Q4 What percentage of customers are repeat customers?
WITH count_orders AS
(SELECT customer_id,
        COUNT(*) AS total_orders
FROM details
GROUP BY customer_id
)
SELECT ROUND(COUNT(CASE WHEN total_orders > 1 THEN 1 END) * 100.0 / 
        COUNT(*),2) AS repeat_customer_percentage
FROM count_orders;

-- Q5 What is the overall customer rating and average delivery time?
SELECT ROUND(AVG(customer_rating),2) AS overall_rating, 
       ROUND(AVG(delivery_days),2) AS avg_delivery_time
FROM details;