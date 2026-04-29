-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT 
SELECT
    MIN(CUS_BALANCE) AS `MINIMUM BALANCE`,
    MAX(CUS_BALANCE) AS `MAXIMUM BALANCE`,
    ROUND(AVG(CUS_BALANCE), 2) AS `AVERAGE BALANCE`
FROM CUSTOMER
WHERE CUS_CODE IN (10011, 10012, 10014, 10015, 10018);