create database fifa_project;

 use fifa_project;
 #-------------------------------------------------------------------------------------------------------------------------------------------
 select* from fifa;
#-------------------------------------------------------------------------------------------------------------------------------------------

 select count(*) as cnt from fifa;
#-------------------------------------------------------------------------------------------------------------------------------------------

select count(distinct nationality) from fifa;
 #-------------------------------------------------------------------------------------------------------------------------------------------
 
 select Nationality, count(nationality) as nationalitycount from fifa
group by nationality
order by nationalitycount desc
limit 3;
 #-------------------------------------------------------------------------------------------------------------------------------------------

select sum(wage) as total_wage,
avg(wage) as avg_wage,
stddev(wage) as std_wage 
from fifa;
 #-------------------------------------------------------------------------------------------------------------------------------------------

select name, wage from fifa
order by wage desc limit 1;

select name,wage from fifa
order by wage asc limit 1;
 #-------------------------------------------------------------------------------------------------------------------------------------------

select name,overall from fifa 
order by overall desc limit 1;

select name,overall from fifa 
order by overall asc limit 1;
 #-------------------------------------------------------------------------------------------------------------------------------------------

 select club,
 sum(overall) as total_overall
 from fifa
 group by club
 order by total_overall
 desc limit 1;
 
 #-------------------------------------------------------------------------------------------------------------------------------------------

 select club,
 avg(overall) as avg_overall
 from fifa
 group by club
 order by avg_overall desc limit 5;
  #-------------------------------------------------------------------------------------------------------------------------------------------

 select preferred_foot, count(preferred_foot) as preferredfoot from fifa
group by preferred_foot
order by preferredfoot desc
limit 3;
 #-------------------------------------------------------------------------------------------------------------------------------------------

SELECT Jersey_Number, count(Overall) AS OverallRating
FROM fifa
GROUP BY Jersey_Number
ORDER BY OverallRating DESC
LIMIT 1;
 #-------------------------------------------------------------------------------------------------------------------------------------------

select nationality,count(*) as frequency
from fifa 
where club like "M%"
group by nationality
order by nationality desc ;
 #-------------------------------------------------------------------------------------------------------------------------------------------


SELECT count(*) AS playercount FROM fifa
WHERE str_to_date(joined, '%Y-%m-%d') BETWEEN '2018-05-20' AND '2019-04-10';
 #-------------------------------------------------------------------------------------------------------------------------------------------

select joined, count(*) AS PlayerCount
from fifa
group by joined
order by Joined asc;
 #-------------------------------------------------------------------------------------------------------------------------------------------

select year(STR_TO_DATE(Joined, '%Y-%m-%d')) AS JoinYear, COUNT(*) AS PlayerCount
FROM fifa
GROUP BY JoinYear
ORDER BY JoinYear ASC;











