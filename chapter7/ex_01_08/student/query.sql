-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.
SELECT 
ROUND(SUM(ASSIGN_HOURS),1) AS SumOfSumOfASSIGN_HOURS,
ROUND(SUM(ASSIGN_CHARGE),2) AS SumOfSumOfASSIGN_CHARGE
FROM ASSIGNMENT;