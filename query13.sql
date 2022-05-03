select p.player_name
from player_mast p 
 join goal_details g on p.player_id=g.player_id
 join soccer_country c ON p.team_id=c.country_id
where posi_to_play='DF'
order by p.player_name;

