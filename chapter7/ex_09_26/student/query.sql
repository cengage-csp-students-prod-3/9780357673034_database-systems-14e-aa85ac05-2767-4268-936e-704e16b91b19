-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT 
SELECT
    ROUND(SUM(C.CUS_BALANCE), 2) AS `Total Balance`,
    MIN(C.CUS_BALANCE) AS `Minimum Balance`,
    MAX(C.CUS_BALANCE) AS `Maximum Balance`,
    ROUND(AVG(C.CUS_BALANCE), 2) AS `Average Balance`
FROM CUSTOMER C
WHERE C.CUS_CODE NOT IN (
    SELECT CUS_CODE FROM INVOICE
);