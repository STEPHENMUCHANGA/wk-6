USE  salesdb;
-- Inner join
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o
ON 
    e.officeCode = o.officeCode;
    
-- Left join
SELECT 
    p.productName,
    p.productVendor,
    pl.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl
ON 
    p.productLine = pl.productLine;
    
-- Right join
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o
ON 
    c.customerNumber = o.customerNumber
ORDER BY 
    o.orderDate asc
LIMIT 10;