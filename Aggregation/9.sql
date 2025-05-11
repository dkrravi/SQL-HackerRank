--TOP EARNERS

select
(months * salary) as earnings,
count(*) as total_count
from Employee
group by earnings
order by earnings DESC
LIMIT 1