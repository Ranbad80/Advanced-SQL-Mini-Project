SELECT player_name,jersey_no
FROM player_in_out a
JOIN player_mast b ON a.player_id=b.player_id
WHERE a.in_out='I'
AND a.play_schedule='NT'
AND a.play_half=1
ORDER BY match_no;