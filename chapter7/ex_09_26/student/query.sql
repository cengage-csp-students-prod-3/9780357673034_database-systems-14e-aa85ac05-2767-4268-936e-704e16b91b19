-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT SELE
SELECT DISTINCT
    C.CUS_CODE,
    C.CUS_BALANCE
FROM CUSTOMER C
JOIN INVOICE I ON C.CUS_CODE = I.CUS_CODE
ORDER BY C.CUS_CODE;