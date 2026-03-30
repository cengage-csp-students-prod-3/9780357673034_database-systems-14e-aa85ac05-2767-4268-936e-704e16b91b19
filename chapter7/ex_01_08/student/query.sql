-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.
SELECT EMP_NUM, SUM(ASSIGN_HOURS) AS SumOfASSIGN_HOURS,
SUM(ASSIGN_CHARGE) AS SumOfASSIGN_CHARGE
FROM ASSIGNMENT
GROUP BY EMP_NUM
ORDER BY EMP_NUM;