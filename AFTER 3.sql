/* 2) 	Insert the following data in the table created above */

/* SUPPLIER TABLE */
insert into Supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (5,'Mittal Ltd.','Lucknow',7898456532);
insert into Supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (4,'Bansal Retails','Kochi',8975463285);
insert into Supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (3,'Knome products','Banglore',9785462315);
insert into Supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (2,'Appario Ltd.','Mumbai',2589631470);
insert into Supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values (1,'Rajesh Retails','Delhi',1234567890);

/* CUSTOMER TABLE */
insert into Customer(CUS_ID,CUS_NAME,CUS_PHONE, CUS_CITY, CUS_GENDER ) values (5, 'PULKIT' , 7895999999 , 'LUCKNOW' , 'M' );
insert into Customer(CUS_ID,CUS_NAME,CUS_PHONE, CUS_CITY, CUS_GENDER ) values (4, 'MEGHA' , 9994562399 , 'KOLKATA' , 'F' );
insert into Customer(CUS_ID,CUS_NAME,CUS_PHONE, CUS_CITY, CUS_GENDER ) values (3, 'NEHA' , 9999999999 , 'MUMBAI' , 'F' );
insert into Customer(CUS_ID,CUS_NAME,CUS_PHONE, CUS_CITY, CUS_GENDER ) values (2, 'AMAN' , 9785463215 , 'NOIDA' , 'M' );
insert into Customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY, CUS_GENDER ) values (1, 'AAKASH' , 9999999999 , 'DELHI' , 'M' );

/* CATEGORY TABLE */
insert into Category(CAT_ID , CAT_NAME ) values (5, 'CLOTHES');
insert into Category(CAT_ID , CAT_NAME ) values (4, 'ELECTRONICS');
insert into Category(CAT_ID , CAT_NAME ) values (3, 'GROCERIES');
insert into Category(CAT_ID , CAT_NAME ) values (2, 'GAMES');
insert into Category(CAT_ID , CAT_NAME ) values (1, 'BOOKS');

/* PRODUCT TABLE */
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 12, 'Train Your Brain' , 'By Shireen Stephen' , 1);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 11, 'Rich Dad Poor Dad' , 'Written by RObert Kiyosaki' , 1);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 10, 'Hoodie' , 'Black GUCCI for 13 yrs and above' , 5);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 9, 'Project IGI' , 'compatible with windows 7 and above' , 2);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 8, 'Jeans' , 'Stretchable Denim Jeans with various sizes and color' , 5);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 7, 'Boat Earphones' , '1.5Meter long Dolby Atmos' , 4);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 6, 'MILK' , '1L Toned MIlk' , 3);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 5, 'HARRY POTTER' , 'Best Collection of all time by J.K Rowling' , 1);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 4, 'OATS' , 'Highly Nutritious from Nestle' , 3);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 3, 'ROG LAPTOP' , 'SIZE-L with Black, Blue and White variations' , 4);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 2, 'TSHIRT' , 'SIZE-L with Black, Blue and White variations' , 5);
insert into Product (PRO_ID , PRO_NAME , PRO_DESC , CAT_ID ) values ( 1 , 'GTA V' , 'Windows 7 and above with i5 processor and 8GB RAM' , 2);

/* SUPPLIER_PRICING TABLE */
insert into Supplier_Pricing (PRICING_ID, PRO_ID , SUPP_ID , SUPP_PRICE) values ( 5 , 4 , 1 , 1000 );
insert into Supplier_Pricing (PRICING_ID, PRO_ID , SUPP_ID , SUPP_PRICE) values ( 4 , 2 , 3 , 2500 );
insert into Supplier_Pricing (PRICING_ID, PRO_ID , SUPP_ID , SUPP_PRICE) values ( 3 , 5 , 1 , 3000 );
insert into Supplier_Pricing (PRICING_ID, PRO_ID , SUPP_ID , SUPP_PRICE) values ( 2 , 3 , 5 , 30000 );
insert into Supplier_Pricing (PRICING_ID, PRO_ID , SUPP_ID , SUPP_PRICE) values ( 1 , 3 , 2 , 1500 );
insert into Supplier_Pricing (PRICING_ID, PRO_ID , SUPP_ID , SUPP_PRICE) values ( 1 , 1 , 2 , 1500 );
insert into Supplier_Pricing (PRICING_ID, PRO_ID , SUPP_ID , SUPP_PRICE) values ( 1 , 1 , 2 , 1500 );

/* ORDERS TABLE */
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('101', '1500' , '2022-10-06', '2', '1');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('102', '1000' , '2022-10-12', '3', '5');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('103', '30000' , '2022-09-16','5', '2');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('104', '1500' , '2022-10-05', '1', '1');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('105', '3000' , '2022-08-16', '4', '3');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('106', '1450' , '2022-08-18', '1', '9');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('107', '789', '2022-09-01', '3', '7');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('108', '780', '2022-09-07', '5', '6');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('109', '3000', '2022-09-10', '5', '3');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('110', '2500', '2022-09-10', '2', '4');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('111', '1000', '2022-09-15', '4', '5');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('112', '789', '2022-09-16', '4', '7');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('113', '31000', '2022-09-16', '1', '8');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('114', '1000', '2022-09-16', '3', '5');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('115', '3000', '2022-09-16', '5', '3');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('116', '99', '2022-09-17', '2', '14');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('106', '1450', '2022-08-18', '1', '9');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('107', '789', '2022-09-01', '3', '7');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('108', '780', '2022-09-07', '5', '6');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('109', '3000', '2022-09-10', '5', '3');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('110', '2500', '2022-09-10', '2', '4');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('111', '1000', '2022-09-15', '4', '5');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('112', '789', '2022-09-16', '4', '7');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('113', '31000', '2022-09-16', '1', '8');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('114', '1000', '2022-09-16', '3', '5');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('115', '3000', '2022-09-16', '5', '3');
INSERT INTO `e-commerce`.`orders` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES ('116', '99', '2022-09-17', '2', '14');

/* RATING TABLE */







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

