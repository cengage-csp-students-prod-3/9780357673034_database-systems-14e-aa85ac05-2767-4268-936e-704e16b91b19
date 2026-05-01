SELECT 
    W.AU_ID,
    COUNT(*) AS "Books Written"
FROM 
    WRITES W
GROUP BY 
    W.AU_ID
ORDER BY 
    COUNT(*) DESC,
    W.AU_ID ASC;