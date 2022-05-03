select *
from player_mast
where playing_club='Liverpool'
and team_id =(
              select country_id 
              from soccer_country
              where country_name='England');