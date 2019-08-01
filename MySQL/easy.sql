-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-- CITY
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

-- Query all cities with population larger than NUM and with country code USA

select * 
    from CITY 
    where 
        POPULATION>100000 and 
        COUNTRYCODE='USA';

-- Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.

select NAME
    from CITY 
    where 
        POPULATION>120000 and 
        COUNTRYCODE='USA';

-- Query all columns (attributes) for every row in the CITY table.

select * 
    from CITY;

-- Query all columns for a city in CITY with the ID 1661.

select * 
    from CITY 
    where ID=1661;

-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

select * 
    from CITY 
    where COUNTRYCODE="JPN";

-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

select NAME 
    from CITY 
    where COUNTRYCODE="JPN";

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-- STATION
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

-- Query a list of CITY and STATE from the STATION table.

select CITY, STATE
    from STATION;

-- Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.

select distinct CITY
    from STATION
    where (ID % 2) = 0;

-- Let N be the number of CITY entries in STATION, and let N' be the number of distinct CITY names in STATION; query the value of N - N' from STATION. In other words, find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

insert into #tempTable (CITY)
    select distinct CITY from STATION;

select CITY from STATION where CITY not in (select CITY from #tempTable);

-- unsolved...