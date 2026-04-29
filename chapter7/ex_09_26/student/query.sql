-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT SELE
SELECT
    MIN(C.CUS_BALANCE) AS `Minimum Balance`,
    MAX(C.CUS_BALANCE) AS `Maximum Balance`,
    ROUND(AVG(C.CUS_BALANCE), 2) AS `Average Balance`
FROM CUSTOMER C
JOIN INVOICE I ON C.CUS_CODE = I.CUS_CODE;