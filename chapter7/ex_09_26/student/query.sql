-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT 
SELECT
    ROUND(SUM(P_QOH * P_PRICE), 2) AS `Total Value of Inventory`
FROM PRODUCT;