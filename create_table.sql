
Step- 1

Create a new Database UNICEF_Data_Warehouse 

Step 2.
Create tables to load the data from the 2 different csv files:

-drop table child_mortality

CREATE TABLE child_mortality (
country_code_name	  VARCHAR(255) not null ,
indicator	  VARCHAR(255)   ,
sex     VARCHAR(255) not null ,
timeperiod 	VARCHAR(25)  not null ,
observation		VARCHAR(255)   ,
unit_of_measure VARCHAR(255),
PRIMARY KEY (country_code_name,sex,timePeriod )
);

select * from  child_mortality M

drop table child_poverty

CREATE TABLE child_poverty (
country_code_name	  VARCHAR(255) not null  ,
indicator	  VARCHAR(255)   ,
sex     VARCHAR(255) not null ,
timeperiod 	VARCHAR(25) not null   ,
observation		VARCHAR(255)   ,
unit_of_measure VARCHAR(255),
PRIMARY KEY (country_code_name,sex,timePeriod )
);


---Query 
select * from  child_mortality 
where country_code_name = 'Afghanistan'
and timeperiod = '2009'
and sex = 'Female'



select M.country_code_name ,M.observation as mortality_observation , M.unit_of_measure as mortality_unit_of_measure,
P.observation as poverty_observation , P.unit_of_measure as poverty_unit_of_measure,
M.timeperiod,
M.sex
from child_mortality M
Join child_poverty P
on M.country_code_name = P.country_code_name
and M.timeperiod = p.timeperiod
and M.sex=p.sex


select * from child_poverty

select * from  child_mortality M




