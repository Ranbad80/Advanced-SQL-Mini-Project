select venue_name 
from soccer_venue
where venue_id in (
select venue_id
from match_mast
where decided_by ='P');