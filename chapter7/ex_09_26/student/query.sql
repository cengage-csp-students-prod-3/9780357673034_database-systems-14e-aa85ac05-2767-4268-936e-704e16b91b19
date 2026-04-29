-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT 
SELECT
    P.P_DESCRIPT,
    P.P_QOH,
    P.P_PRICE,
    ROUND(P.P_QOH * P.P_PRICE, 2) AS `Subtotal`
FROM PRODUCT P
ORDER BY `Subtotal` DESC;