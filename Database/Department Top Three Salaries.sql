select d.`Name` as Department,e.`Name` as Employee,e.Salary as Salary from employee e,department d 
where d.Id=e.DepartmentId and (select count(distinct Salary) from Employee where Salary > e.Salary
and DepartmentId = d.Id) < 3 order by d.Name, e.Salary desc;