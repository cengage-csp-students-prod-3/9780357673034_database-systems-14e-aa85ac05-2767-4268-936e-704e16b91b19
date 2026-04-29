-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT SELE
SELECT
    I.CUS_CODE,
    COUNT(DISTINCT I.INV_NUMBER) AS `Number of Invoices`,
    ROUND(SUM(L.LINE_UNITS * L.LINE_PRICE), 2) AS `Total Customer Purchases`
FROM INVOICE I
JOIN LINE L ON I.INV_NUMBER = L.INV_NUMBER
GROUP BY I.CUS_CODE
ORDER BY I.CUS_CODE;