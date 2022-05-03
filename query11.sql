select player_name , jersey_no,playing_club
from player_mast
where posi_to_play ='GK'
and team_id=(select country_id
             from soccer_country
             where country_name ='England');