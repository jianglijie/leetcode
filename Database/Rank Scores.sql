select Score, 
(select COUNT(distinct Score) from Scores where Score >= s.Score) Rank 
from Scores s order by Score desc;