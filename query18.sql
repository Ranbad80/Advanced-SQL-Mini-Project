SELECT match_no,COUNT(*) Booked 
FROM player_booked  
GROUP BY match_no 
having Booked=(
SELECT MAX(MX1) 
FROM (SELECT match_no,COUNT(*) MX1 
FROM player_booked  
GROUP BY match_no) M2);