select country.name as country_name, city.name as city, city.population
from country
join city 
on country.capital =city.id
where city.population >(
select avg(city.population)
from city
where city.countrycode = country.code)