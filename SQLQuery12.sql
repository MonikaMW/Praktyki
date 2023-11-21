
select EmployeeID, FirstName, LastName, ReportsTo,
CASE 
WHEN ReportsTo=2 THEN 'Andrew Fuller'
WHEN ReportsTo=5 THEN 'Steven Buchanan'
ELSE 'Prze³o¿ony'
END as Prze³o¿eni
from Employees;

