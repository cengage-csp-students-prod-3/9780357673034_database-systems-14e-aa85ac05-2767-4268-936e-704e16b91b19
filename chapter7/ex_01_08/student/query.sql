-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.
SELECT ASSIGN_NUM,EMP_NUM,PROJ_NUM,ASSIGN_CHARGE,
ROUND(ASSIGN_CHG_HR * ASSIGN_HOURS, 2) AS CALC_ASSIGN_CHARGE
FROM ASSIGNMENT
ORDER BY ASSIGN_NUM;