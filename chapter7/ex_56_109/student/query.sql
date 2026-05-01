SELECT 
    COUNT(*) AS "Available Books"
FROM 
    BOOK
WHERE 
    BOOK_NUM NOT IN (
        SELECT BOOK_NUM
        FROM CHECKOUT
        WHERE CHECK_IN_DATE IS NULL
    );