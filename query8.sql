select ps.match_no,sc.country_name
from penalty_shootout ps inner join
soccer_country sc on ps.team_id=sc.country_id
where (ps.match_no =
                   (select match_no 
                    from  penalty_shootout 
                    group by match_no
                   Having count(kick_id)=(
                                         select max(shot)
                                         from (select count(kick_id) shot
                                                from penalty_shootout
                                                group by match_no) shot_num)
                   ) )
                   GROUP BY ps.match_no,
         sc.country_name;
