-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.
SELECT PROJ_NUM,
CAST(SUM(ASSIGN_HOURS) AS DECIMAL(10,1)) AS SUMOFASSIGN_HOURS,
CAST(SUM(ASSIGN_CHARGE) AS DECIMAL(10,2)) AS SUMOFASSIGN_CHARGE
FROM ASSIGNMENT
GROUP BY PROJ_NUM
ORDER BY PROJ_NUM;