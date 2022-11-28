show databases
select report.SUPP_ID,report.SUPP_NAME,report.Average,
CASE
WHEN report.Average =5 THEN 'Excellent Service'
WHEN report.Average >4 THEN 'Good Service'
WHEN report.Average >2 THEN 'Average Service'
ELSE 'Poor Service'
END AS Type_of_Service from
(select final.SUPP_ID, supplier.SUPP_NAME, final.Average from
(select test2.SUPP_ID, avg(test2.rat_ratstars) as Average from
(select supplier_pricing.SUPP_ID, test.ORD_ID, test.RAT_RATSTARS from 
supplier_pricing inner join
(select `orders`.PRICING_ID, rating.ORD_ID, rating.RAT_RATSTARS from 
`orders` 
inner join 
rating 
on rating.`ORD_ID` = `orders`.ORD_ID ) 
as test
on test.PRICING_ID = supplier_pricing.PRICING_ID)
as test2 group by supplier_pricing.SUPP_ID)
as final 
inner join 
supplier 
where final.SUPP_ID = supplier.SUPP_ID) as report;
