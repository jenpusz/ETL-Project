
CREATE TABLE child_mortality (
country_code_name	  VARCHAR(255) ,
indicator	  VARCHAR(255)   ,
sex     VARCHAR(255) ,
timeperiod 	VARCHAR(25)   ,
observation		VARCHAR(255)   ,
unit_of_measure VARCHAR(255),
PRIMARY KEY (country_code_name,sex,timePeriod )
);



select * from  child_mortality
where "CountryCodeName" like 'AFG%'
and "TimePeriod" = '2009'
and "Sex" like 'F%'

CREATE TABLE CHILD_POVERTY (
Country_Code_Name	  VARCHAR(255) NOT NULL  PRIMARY KEY,
Indicator	  VARCHAR(255) NOT NULL  ,
Sex      VARCHAR(255) NOT NULL  ,
TimePeriod 	VARCHAR(25)   ,
Observation	 		VARCHAR(255)   ,
Unit_of_measure VARCHAR(255)
);


Query

select * from  child_mortality M
join CHILD_POVERTY P
on M."CountryCodeName" = P."CountryCodeName"
and M."Sex" = P."Sex" 
and M."TimePeriod" = P."TimePeriod"

select * from  child_mortality
where "CountryCodeName" like 'AFG%'
and "TimePeriod" = '2009'
and "Sex" like 'F%'


new_UNICEF_child_poverty_data_df = new_UNICEF_child_poverty_data_df.rename(columns={'REF_AREA:Geographic area':'CountryCodeName','INDICATOR:Indicator':'Indicator',
'OBS_VALUE:Observation Value':'Observation','UNIT_MULTIPLIER:Unit multiplier':'Unit_of_measure','SEX:Sex':'Sex','TIME_PERIOD:Time period':'TimePeriod'} ,inplace = False)