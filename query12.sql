select count(g.goal_id),p.posi_to_play,c.country_name
from goal_details g 
      join player_mast p on p.player_id=g.player_id 
      JOIN soccer_country c ON g.team_id=c.country_id
group by p.posi_to_play,c.country_name;
