-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT SELE
SELECT
    I.INV_NUMBER,
    ROUND(SUM(L.LINE_UNITS * L.LINE_PRICE), 2) AS `Invoice Total`
FROM INVOICE I
JOIN LINE L ON I.INV_NUMBER = L.INV_NUMBER
GROUP BY I.INV_NUMBER
ORDER BY I.INV_NUMBER;