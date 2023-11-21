
select EmployeeID, FirstName, LastName, ReportsTo,
CASE 
WHEN ReportsTo=2 THEN 'Andrew Fuller'
WHEN ReportsTo=5 THEN 'Steven Buchanan'
ELSE 'Przełożony'
END as Przełożeni
from Employees;

