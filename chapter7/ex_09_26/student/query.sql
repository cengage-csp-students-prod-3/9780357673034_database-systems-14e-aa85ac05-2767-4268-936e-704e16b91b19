-- Write your query below and then click "Run Query" to execute it. To save multiple queries, click the "+" icon on the left.SELECT 
SELECT
    C.CUS_CODE,
    C.CUS_BALANCE
FROM CUSTOMER C
WHERE C.CUS_CODE NOT IN (
    SELECT CUS_CODE FROM INVOICE
)
ORDER BY C.CUS_CODE;