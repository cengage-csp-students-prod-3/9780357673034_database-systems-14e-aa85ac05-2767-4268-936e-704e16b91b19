-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.
SELECT 
    C.CUS_CODE,
    I.INV_NUMBER,
    ROUND(SUM(L.LINE_UNITS * L.LINE_PRICE), 2) AS `INVOICE TOTAL`
FROM CUSTOMER C
JOIN INVOICE I ON C.CUS_CODE = I.CUS_CODE
JOIN LINE L ON I.INV_NUMBER = L.INV_NUMBER
GROUP BY 
    C.CUS_CODE,
    I.INV_NUMBER
ORDER BY 
    C.CUS_CODE,
    I.INV_NUMBER;