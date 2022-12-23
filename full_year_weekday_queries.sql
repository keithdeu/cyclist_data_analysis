------------Combine monthly tables into one table-----------------

select 'April' as month, 2020 as year, * from april_2020

union

select 'May' as month, 2020 as year, * from may_2020

union

select 'June' as month, 2020 as year, * from june_2020

union

select 'July' as month, 2020 as year, * from july_2020

union

select 'August' as month, 2020 as year, * from august_2020

union

select 'September' as month, 2020 as year, * from september_2020

union

select 'October' as month, 2020 as year, * from october_2020

union

select 'November' as month, 2020 as year, * from november_2020

union

select 'December' as month, 2020 as year, * from december_2020

union

select 'January' as month, 2021 as year, * from january_2021

union

select 'February' as month, 2021 as year, * from february_2021

union

select 'March' as month, 2021 as year, * from march_2021;



--------------------Query number of rides for member types by weekday----------------------------------------


select member_casual, day_of_week as weekday, count(ride_id) num_of_rides
from combined_data
group by member_casual, weekday
order by member_casual, weekday;


--------------------Query average ride lengths for member types by weekday---------------------------------


SELECT member_casual,
       day_of_week AS weekday,
       round((avg(ride_length_minutes))) AS avg_ride_length_in_minutes
  FROM combined_data
 GROUP BY member_casual,
          day_of_week
 ORDER BY member_casual,
          weekday;
          

------------------Query number of rides for member types by month---------------------------


select member_casual, month, year, count(ride_id) num_of_rides
from combined_data
group by member_casual, month
order by member_casual, month;


--------------------Query average ride lengths for member types by month--------------------


SELECT member_casual,
       month, year,
       round(avg(ride_length_minutes)) AS avg_ride_length
  FROM combined_data
 GROUP BY member_casual,
          month
 ORDER BY member_casual,
          month;
      


-----------------------Query number of rides for member types by quarter-----------------------


select 'Q2' as quarter, '2020' as year, member_casual, count(ride_id) as num_of_rides
from Q2_2020
group by member_casual
          
union

select 'Q3' as quarter, '2020' as year, member_casual, count(ride_id) as num_of_rides
from Q3_2020
group by member_casual

union

select 'Q4' as quarter, '2020' as year, member_casual, count(ride_id) as num_of_rides
from Q4_2020
group by member_casual

union

select 'Q1' as quarter, '2021' as year, member_casual, count(ride_id) as num_of_rides
from Q1_2021
group by member_casual
order by quarter, year, member_casual;


----------------------Query average ride lengths for member types by quarter--------------------------


SELECT 'Q2' as quarter, '2020' as year, member_casual,
       round(avg(ride_length_minutes)) AS avg_ride_length
  FROM Q2_2020
 GROUP BY member_casual

union

SELECT 'Q3' as quarter, '2020' as year, member_casual,
       round(avg(ride_length_minutes)) AS avg_ride_length
  FROM Q3_2020
 GROUP BY member_casual

union

SELECT 'Q4' as quarter, '2020' as year, member_casual,
       round(avg(ride_length_minutes)) AS avg_ride_length
  FROM Q4_2020
 GROUP BY member_casual

union

SELECT 'Q1' as quarter, '2021' as year, member_casual,
       round(avg(ride_length_minutes)) AS avg_ride_length
  FROM Q1_2021
 GROUP BY member_casual
order by year, quarter, member_casual;


-------------------------Query number of rides for member types by quarter AND weekday----------------------------------


select 'Q2' as quarter, '2020' as year, day_of_week as weekday, member_casual, count(ride_id) as num_of_rides
from Q2_2020
group by member_casual, weekday
          
union

select 'Q3' as quarter, '2020' as year, day_of_week as weekday, member_casual, count(ride_id) as num_of_rides
from Q3_2020
group by member_casual, weekday

union

select 'Q4' as quarter, '2020' as year, day_of_week as weekday, member_casual, count(ride_id) as num_of_rides
from Q4_2020
group by member_casual, weekday

union

select 'Q1' as quarter, '2021' as year, day_of_week as weekday, member_casual, count(ride_id) as num_of_rides
from Q1_2021
group by member_casual, weekday
order by quarter, year;


-------------------Query average ride lengths for member types by quarter AND weekday-------------------------------


SELECT 'Q2' as quarter, '2020' as year, day_of_week as weekday, member_casual,
       round(avg(ride_length_minutes)) AS avg_ride_length
  FROM Q2_2020
 GROUP BY member_casual, weekday

union

SELECT 'Q3' as quarter, '2020' as year, day_of_week as weekday, member_casual,
       round(avg(ride_length_minutes)) AS avg_ride_length
  FROM Q3_2020
 GROUP BY member_casual, weekday

union

SELECT 'Q4' as quarter, '2020' as year, day_of_week as weekday, member_casual,
       round(avg(ride_length_minutes)) AS avg_ride_length
  FROM Q4_2020
 GROUP BY member_casual, weekday

union

SELECT 'Q1' as quarter, '2021' as year, day_of_week as weekday, member_casual,
       round(avg(ride_length_minutes)) AS avg_ride_length
  FROM Q1_2021
 GROUP BY member_casual, weekday
order by quarter, year;