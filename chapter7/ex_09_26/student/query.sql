-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.
SELECT 
    COUNT(*) AS `TOTAL INVOICES`,
    ROUND(SUM(L.LINE_UNITS * L.LINE_PRICE), 2) AS `TOTAL SALES`,
    ROUND(MIN(customer_total), 2) AS `MINIMUM CUSTOMER PURCHASES`,
    ROUND(MAX(customer_total), 2) AS `LARGEST CUSTOMER PURCHASES`,
    ROUND(AVG(customer_total), 2) AS `AVERAGE CUSTOMER PURCHASES`
FROM (
    SELECT 
        C.CUS_CODE,
        SUM(L.LINE_UNITS * L.LINE_PRICE) AS customer_total
    FROM CUSTOMER C
    JOIN INVOICE I ON C.CUS_CODE = I.CUS_CODE
    JOIN LINE L ON I.INV_NUMBER = L.INV_NUMBER
    GROUP BY C.CUS_CODE
) AS sub
JOIN LINE L ON 1=1;