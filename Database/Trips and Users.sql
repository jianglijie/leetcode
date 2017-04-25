select t.Request_at Day,
round(sum(case when  t.Status='completed' then 0 else 1 end) /count(1),2) 'Cancellation Rate'
from Trips t,Users u
where u.Users_Id=t.Client_Id and u.Banned='No' and (t.Request_at between '2013-10-01' and '2013-10-03')
group by t.Request_at