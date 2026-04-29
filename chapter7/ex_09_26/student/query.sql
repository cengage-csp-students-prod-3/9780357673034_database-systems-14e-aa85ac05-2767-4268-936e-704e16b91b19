-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT 
SELECT
    MIN(C.CUS_BALANCE) AS `MINIMUM BALANCE`,
    MAX(C.CUS_BALANCE) AS `MAXIMUM BALANCE`,
    ROUND(AVG(C.CUS_BALANCE), 2) AS `AVERAGE BALANCE`
FROM CUSTOMER C
WHERE C.CUS_CODE IN (
    SELECT DISTINCT CUS_CODE
    FROM INVOICE
);