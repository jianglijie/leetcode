SELECT DISTINCT log1.Num as ConsecutiveNums
FROM Logs log1, Logs log2, Logs log3
WHERE (log1.Id = log2.Id + 1 AND log1.Num = log2.Num) AND
  (log1.Id = log3.Id + 2 AND log1.Num = log3.Num)