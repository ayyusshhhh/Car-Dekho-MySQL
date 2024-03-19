		create schema cars;
		use cars;
		-- READ DATA--
		select*from car_dekho;
		-- TOTAL CARS: COUNT OF THE CARS--
		select count(*) from car_dekho;
		-- TOTAL NO.OF CARS AVAILABEL IN 2023?--
		select count(*) from car_dekho where year = 2023;
		-- TOTAL NO.OF CARS AVAILABEL IN 2020,2021,2022?--
		select count(*) from car_dekho where year in (2020,2021,2022) group by year order by year;
		-- TOTAL NO.OF CARS IN EVERY YEAR--
		select year, count(*) from car_dekho group by year;			
		-- TOTAL DIESEL CARS IN 2020--
		select count(*) from car_dekho where year = 2020 and fuel = "Diesel";
		-- TOTAL Petrol CARS IN 2020--
		select count(*) from car_dekho where year = 2020 and fuel = "Petrol";
		-- ALL FUEL CARS IN EVERY YEAR--
		select year, count(*) from car_dekho where fuel = "Diesel" group by year;
        select year, count(*) from car_dekho where fuel = "Petrol" group by year;
        select year, count(*) from car_dekho where fuel = "CNG" group by year;
        -- WHICH YEAR HAD MORE THAN 100 CARS--
        select year, count(*) from car_dekho group by year having count(*) > 100;
        select year, count(*) from car_dekho group by year having count(*) < 100;
        -- ALL CARS BETWEEN 2015 TO 2020--
        select count(*) from car_dekho where year between 2015 and 2020;
        -- ALL CAR DETAILES FROM 2015 TO 2020--
        select * from car_dekho where year between 2015 and 2020;