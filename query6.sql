SELECT COUNT(match_no) 
FROM match_details 
WHERE win_lose='W' 
AND decided_by<>'P'
AND goal_score=1;
