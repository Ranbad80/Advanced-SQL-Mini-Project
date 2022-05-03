select r.referee_name,s.venue_name, count(m.match_no)
from match_mast m
join referee_mast r on m.referee_id =r.referee_id 
join soccer_venue s on m.venue_id =s.venue_id 
group by r.referee_name,s.venue_name;