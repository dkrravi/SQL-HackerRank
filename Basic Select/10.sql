/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name).
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/

(
select CITY, LENGTH(CITY) AS name_length
from station
order by LENGTH(CITY) ASC, CITY ASC
limit 1) 
UNION
(
select CITY, LENGTH(CITY) AS name_length
from station
order by LENGTH(CITY) DESC, CITY ASC
limit 1)

