use mintclassics;
select * from warehouses;
SELECT *
FROM orderdetails;
select productCode, productNAme, productLine, quantityInStock,warehousecode
from products;
create table products_filtered as 
select productcode, productname, productline, quantityInStock,warehousecode
from products;
select *
from products_filtered
order by warehousecode, productline, quantityinstock desc;
select productline, count(quantityinstock)
from products_filtered
group by productline;
select productcode, sum(quantityordered)
from orderdetails
group by productCode
order by sum(quantityOrdered) DESC;

create table quantity_ordered as 
select productcode, sum(quantityordered) as totalordered
from orderdetails
group by productcode;

select p.productcode, p.productname, p.productline, q.totalordered, p.warehousecode
from products_filtered as p
inner join quantity_ordered as q on p.productcode = q.productcode
order by q.totalordered desc;
CREATE TABLE popularity AS 
SELECT p.productCode, p.productName, p.productLine, q.TotalOrdered, p.warehouseCode 
FROM products_filtered AS p 
INNER JOIN quantity_ordered AS q ON p.productCode = q.productCode 
ORDER BY q.TotalOrdered DESC;
CREATE TABLE inventory AS 
SELECT p.productCode, p.productName, p.productLine, p.buyPrice, q.TotalOrdered, p.quantityInStock, p.warehouseCode 
FROM products AS p 
INNER JOIN quantity_ordered AS q ON p.productCode = q.productCode 
ORDER BY q.TotalOrdered DESC;
CREATE TABLE Profit AS 
SELECT productCode, buyPrice*TotalOrdered AS TotalProfit 
FROM inventory;
CREATE TABLE inv AS 
SELECT i.productCode, i.productName, i.productLine, i.buyPrice, i.TotalOrdered, p.TotalProfit, i.quantityInStock, i.warehouseCode  
FROM inventory AS i  
INNER JOIN Profit AS p ON i.productCode = p.productCode;
CREATE TABLE dates AS
SELECT od.orderNumber, od.productCode, od.quantityOrdered, od.priceEach, od.priceEach*od.quantityOrdered AS TotalProfit, o.orderDate
FROM orderdetails AS od
INNER JOIN orders AS o ON od.orderNumber = o.orderNumber
WHERE orderDate BETWEEN "2004-01-01" AND "2004-12-31";

SELECT orderNumber, orderDate, SUM(TotalProfit) AS TotalProfit
FROM dates
GROUP BY orderNumber, orderDate;

CREATE TABLE x AS 
SELECT TotalOrdered, quantityInStock, TotalOrdered*1.2 AS IdealOH 
FROM inv;

CREATE TABLE IdealOnHand AS 
SELECT TotalOrdered, quantityInStock, IdealOH, IdealOH-quantityInStock AS Difference 
FROM x;
