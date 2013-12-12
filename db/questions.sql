-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography, total_pop_year_2005 FROM town_health_records ORDER BY age_65_plus_year_2005 DESC  LIMIT 3;

--What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography, age_0_to_19_year_2005  FROM town_health_records ORDER BY age_0_to_19_year_2005 DESC  LIMIT 3;

--What 5 towns have the lowest per capita income?
SELECT geography, per_capita_income_year_2000  FROM town_health_records ORDER BY per_capita_income_year_2000  LIMIT 5;

--Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography, percent_teen_births_2005_2008  FROM town_health_records WHERE geography != 'Boston' ORDER BY percent_teen_births_2005_2008 DESC LIMIT 1;

--Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography, number_of_infant_deaths_2005_2008  FROM town_health_records WHERE geography != 'Boston' ORDER BY number_of_infant_deaths_2005_2008 DESC  LIMIT 1;