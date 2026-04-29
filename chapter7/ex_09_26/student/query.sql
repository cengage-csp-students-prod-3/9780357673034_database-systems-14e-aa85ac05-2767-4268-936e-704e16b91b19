-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT 
SELECT
    MIN(CUS_BALANCE) AS `MINIMUM BALANCE`,
    MAX(CUS_BALANCE) AS `MAXIMUM BALANCE`,
    ROUND(AVG(CUS_BALANCE), 2) AS `AVERAGE BALANCE`
FROM (
    SELECT DISTINCT C.CUS_CODE, C.CUS_BALANCE
    FROM CUSTOMER C
    JOIN INVOICE I ON C.CUS_CODE = I.CUS_CODE
) AS X;