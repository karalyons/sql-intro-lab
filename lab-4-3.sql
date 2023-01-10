-- Who hit the most home runs in 2019, and what team did they play for?

select teams.name, players.first_name, players.last_name, max(stats.home_runs) as 'Home Runs'
from stats 
inner join teams on players.id = stats.player_id 
inner join players on teams.id = stats.team_id
where teams.year = 2019
limit 1;
-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


