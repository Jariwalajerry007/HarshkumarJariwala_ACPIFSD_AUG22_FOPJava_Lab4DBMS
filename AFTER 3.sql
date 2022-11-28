/*3)	Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.*/
SELECT 
    COUNT(t2.CUS_GENDER) AS NoOfCustomers, t2.CUS_GENDER
FROM
    (SELECT 
        t1.CUS_ID, t1.CUS_GENDER, t1.ORD_AMOUNT, t1.CUS_NAME
    FROM
        (SELECT 
        `orders`.*, customer.CUS_GENDER, customer.CUS_NAME
    FROM
        `orders`
    INNER JOIN customer
    WHERE
        `orders`.CUS_ID = customer.CUS_ID
    HAVING `orders`.ORD_AMOUNT >= 3000) AS t1
    GROUP BY t1.CUS_ID) AS t2
GROUP BY t2.CUS_GENDER;
/* 4)	Display all the orders along with product name ordersed by a customer having Customer_Id=2 */

SELECT 
    product.PRO_NAME, `orders`.*
FROM
    `orders`,
    supplier_pricing,
    product
WHERE
    `orders`.CUS_ID = 2
        AND `orders`.PRICING_ID = supplier_pricing.PRICING_ID
        AND supplier_pricing.PRO_ID = product.PRO_ID;

/* 5)	Display the Supplier details who can supply more than one product.*/
SELECT 
    supplier.*
FROM
    supplier
WHERE
    supplier.SUPP_ID IN (SELECT 
            SUPP_ID
        FROM
            supplier_pricing
        GROUP BY SUPP_ID
        HAVING COUNT(SUPP_ID) > 1)
GROUP BY supplier.SUPP_ID;
 
 /* 6)	Find the least expensive product from each category and print the table with category id, name, product name and price of the product */      
 
SELECT 
    category.CAT_ID,
    category.CAT_NAME,
    MIN(t3.min_price) AS Min_Price
FROM
    category
        INNER JOIN
    (SELECT 
        product.CAT_ID, product.PRO_NAME, t2.*
    FROM
        product
    INNER JOIN (SELECT 
        PRO_ID, MIN(SUPP_PRICE) AS Min_Price
    FROM
        supplier_pricing
    GROUP BY PRO_ID) AS t2
    WHERE
        t2.PRO_ID = product.PRO_ID) AS t3
WHERE
    t3.CAT_ID = category.CAT_ID
GROUP BY t3.CAT_ID;       

/* 7)	Display the Id and Name of the Product ordered after “2021-10-05” */

SELECT 
    product.PRO_ID, product.PRO_NAME
FROM
    `orders`
        INNER JOIN
    supplier_pricing ON supplier_pricing.PRICING_ID = `orders`.PRICING_ID
        INNER JOIN
    product ON product.PRO_ID = supplier_pricing.PRO_ID
WHERE
    `orders`.ORD_DATE > '2021-10-05';

/* 8)	Display customer name and gender whose names start or end with character 'A'.*/

SELECT 
    customer.CUS_NAME, customer.cus_gender
FROM
    customer
WHERE
    customer.CUS_NAME LIKE 'A%'
        OR customer.CUS_NAME LIKE '%A';

