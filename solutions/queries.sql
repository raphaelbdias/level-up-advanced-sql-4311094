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
    SUM(s.salesAmount) DESC;

-- Query 2: Find top Sales person

SELECT 
    e.firstName || ' ' || e.lastName AS employee_name,
    SUM(s.salesAmount) AS total_sales
FROM
    employee AS e
LEFT JOIN
    sales AS s
ON
    e.employeeId = s.employeeId
GROUP BY
    employee_name
HAVING
    total_sales IS NOT NULL
ORDER BY
    total_sales DESC
LIMIT 
    5;

