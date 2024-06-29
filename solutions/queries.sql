SELECT 
    c.firstname || ' ' || c.lastname AS full_name,
    SUM(s.salesAmount) AS total_sales
FROM 
    customer AS c
LEFT JOIN 
    sales AS s
ON 
    c.customerId = s.customerId
GROUP BY 
    c.firstname, c.lastname
HAVING 
    SUM(s.salesAmount) IS NOT NULL
ORDER BY
    SUM(s.salesAmount) DESC
;