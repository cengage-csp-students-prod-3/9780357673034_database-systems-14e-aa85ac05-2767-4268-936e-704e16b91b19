-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT SELE
SELECT
    ROUND(SUM(CUS_BALANCE), 2) AS `Total Balance`,
    MIN(CUS_BALANCE) AS `Minimum Balance`,
    MAX(CUS_BALANCE) AS `Maximum Balance`,
    ROUND(AVG(CUS_BALANCE), 2) AS `Average Balance`
FROM CUSTOMER;