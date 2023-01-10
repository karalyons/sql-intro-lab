-- How many lifetime hits does Barry Bonds have?

select sum(stats.hits) as 'Lifetime Hits'
from  stats inner join players on stats.player_id = players.id
where players.first_name = 'Barry' and players.last_name = 'Bonds';

-- Expected result:
-- 2935


