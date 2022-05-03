select player_name,jersey_no
from player_mast
where player_id in (
					select player_gk 
                    from match_details
                    where play_stage ='G'
                    and team_id in(
								select country_id
                                from soccer_country
                                where country_name like "Germany"));
