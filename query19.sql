SELECT count(DISTINCT a.player_captain)
FROM match_captain a
JOIN player_mast c ON a.player_captain=c.player_id
AND posi_to_play='GK';