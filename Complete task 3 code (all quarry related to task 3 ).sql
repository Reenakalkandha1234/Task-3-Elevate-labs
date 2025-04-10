-- Basic Queries:
--1st ) Quarry
-- Total number of support tickets per category
SELECT Category, COUNT(*) AS ticket_count
FROM ticketstask3
GROUP BY Category;

**************************************************
--Use of SELECT, WHERE, ORDER BY, GROUP BY:
SELECT 
    Customer_City, 
    SUM(Item_price) AS Total_Spent
FROM 
    customersTASK3 c
JOIN 
    ordersTask3 o ON c.Order_id = o.Order_id
WHERE 
    Customer_City IS NOT NULL
GROUP BY 
    Customer_City
ORDER BY 
    Total_Spent DESC;
****************************************************
--Use of JOINS (INNER, LEFT, RIGHT)
--INNER JOIN Example
SELECT 
    c.Customer_City, 
    o.Product_category, 
    o.Item_price
FROM 
    customersTASK3 c
INNER JOIN 
    ordersTask3 o ON c.Order_id = o.Order_id;
**************************************************
--LEFT JOIN Example:
 SELECT 
    c.Order_id, 
    o.Item_price
FROM 
    customersTASK3 c
LEFT JOIN 
    ordersTask3 o ON c.Order_id = o.Order_id;
**************************************************
--RIGHT JOIN : 
SELECT 
    o.Order_id, 
    c.Customer_City
FROM 
    ordersTask3 o
LEFT JOIN 
    customersTASK3 c ON o.Order_id = c.Order_id;
*****************************************************

--Use of Subqueries:
SELECT 
    Agent_name, 
    CSAT_Score
FROM 
    agentstask3
WHERE 
    CSAT_Score > (
        SELECT 
            AVG(CSAT_Score)
        FROM 
            agentstask3
    );
*****************************************************
--Join Example:
-- Total spending by each customer city
SELECT c.Customer_City, SUM(o.Item_price) AS Total_Spent
FROM customersTASK3 c
JOIN ordersTask3 o ON c.Order_id = o.Order_id
GROUP BY c.Customer_City;
**************************************************
--Use aggregate functions (SUM, AVG)
--1.)Total Item Price by City (SUM):
SELECT 
    c.Customer_City, 
    SUM(o.Item_price) AS Total_Spent
FROM 
    customersTASK3 c
JOIN 
    ordersTask3 o ON c.Order_id = o.Order_id
GROUP BY 
    c.Customer_City;
********************************************
-- 2.)Average Item Price by Product Category (AVG)
SELECT 
    Product_category, 
    AVG(Item_price) AS Avg_Price
FROM 
    ordersTask3
GROUP BY 
    Product_category;
*************************************************
--3). Total Tickets by Category (COUNT + GROUP BY)
SELECT 
    Category, 
    COUNT(*) AS Ticket_Count
FROM 
    ticketstask3
GROUP BY 
Category;
*******************************************************
--4.) Number of Tickets per Sub-category:
SELECT 
    "Sub-category", 
    COUNT(*) AS Ticket_Count
FROM 
    ticketstask3
GROUP BY 
    "Sub-category";
***************************************************
--5.) Average CSAT Score by Agent Shift:

SELECT Agent_Shift, AVG(CSAT_Score) AS Avg_Score
FROM agentstask3
GROUP BY Agent_Shift;
*****************************************************
--: Create views for analysis
CREATE VIEW agent_performance AS
SELECT Agent_name, Agent_Shift, CSAT_Score
FROM agentstask3
WHERE CSAT_Score >= 4;

---------------------------------------------
SELECT *FROM agent_performance 
****************************************************
--Optimize queries with indexes
CREATE INDEX idx_order_id ON ordersTask3(Order_id);