select r.referee_name,count(distinct(p.player_id)) numb_play
from match_mast m 
join player_booked p on p.match_no=m.match_no
join referee_mast r on r.referee_id=m.referee_id
group by r.referee_name
having numb_play=
      (select max(number_player)
from (
      select r.referee_name,m.referee_id,count(distinct(p.player_id)) number_player
	  from match_mast m 
	  join player_booked p on p.match_no=m.match_no
      join referee_mast r on r.referee_id=m.referee_id
	  group by m.referee_id,r.referee_name)as ref_ply)
      ;