-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.
SELECT A.EMP_NUM,E.EMP_LNAME,SUM(A.ASSIGN_HOURS) AS SumOfASSIGN_HOURS,
SUM(A.ASSIGN_CHARGE)AS SumOfASSIGN_CHARGE
FROM ASSIGNMENT A
JOIN EMPLOYEE EMP_LNAME
    ON A.EMP_NUM = E.EMP_NUM
GROUP BY A.EMP_NUM, E.EMP_LNAME
ORDER BY A.EMP_NUM;