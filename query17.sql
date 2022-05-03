SELECT country_name,
       count( c.ass_ref_id)
FROM  asst_referee_mast c 
JOIN soccer_country b ON c.country_id=b.country_id
GROUP BY country_name
HAVING count(c.ass_ref_id)=
  (SELECT max(mm)
   FROM
     (SELECT count(c.ass_ref_id) mm
      FROM  asst_referee_mast c 
      JOIN soccer_country b ON c.country_id=b.country_id
      GROUP BY country_name) hh);
