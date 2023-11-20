

select Orders.CustomerID, Orders.OrderID, CompanyName, City, Products.ProductID, ProductName
from Products
left join [Order Details]
ON [Order Details].ProductID=Products.ProductID

left join Orders
ON [Order Details].OrderID=Orders.OrderID

left join Customers
ON Orders.CustomerID=Customers.CustomerID

Where City ='México D.F.'
Order by ProductName;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select Products.ProductID, ProductName, COUNT(Products.ProductID) AS n_products
from Products

left join [Order Details]
ON [Order Details].ProductID=Products.ProductID

left join Orders 
ON [Order Details].OrderID=Orders.OrderID

left join Customers 
ON Orders.CustomerID=Customers.CustomerID

Where City ='México D.F.'

group by Products.ProductID, ProductName
Order by n_products desc;






