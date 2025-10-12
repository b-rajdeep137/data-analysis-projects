/*
SELECT *
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
-- #1 correct
SELECT base_name, RIGHT(base_name, 3) as 'abbr'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;

-- #2 correct
SELECT CHARINDEX(' ', Number_of_Trips) AS 'Space in # of Trips'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;

SELECT CHARINDEX(' ', Number_of_Trips) AS 'Space in # of Trips'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;

SELECT    CHARINDEX(' ', Number_of_Trips) 
   FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;




-- #3 CORRECT
SELECT DATENAME(MONTH, Pick_Up_Date) AS 'Month', Pick_Up_Date
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY 'Month' DESC;
*/
-- #4??
SELECT DATENAME (WEEKDAY,Pick_Up_Date) AS 'Weekday', COUNT(Pick_Up_Date) AS 'number of pickup', DATENAME(MONTH ,Pick_Up_Date) AS 'Month'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
GROUP BY Pick_Up_Date
ORDER BY 'number of pickup' ASC;

SELECT *
FROM RideShareDB.dbo.lyft;

-- #5 ??
SELECT MAX(start_lng) AS 'Most Easterly pickup'
FROM RideShareDB.dbo.lyft;


-- #6 CORRECT
SELECT MAX(start_lat) AS 'Most Northerly Pickup'
FROM RideShareDB.dbo.lyft;


-- #7 CORRECT
SELECT CONCAT(base_number, ':' ,base_name) AS 'base number:base name'
FROM  RideShareDB.dbo.other_FHV_services_jan_aug_2015;