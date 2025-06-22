select co.name as country,ci.name as capital, ci.population as capital_population
from country co
join city ci
on co.capital = ci.id
where ci.population <(
select max(sub.population)
from(select population
from city
where countrycode = co.code
order by population desc
limit 3) sub)