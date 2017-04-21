select c.Name as Customers from Customers c left join Orders o on o.CustomerId=c.Id where o.Id is null
Лђеп
select Name as Customers from Customers where Id not in (select distinct CustomerId from Orders)