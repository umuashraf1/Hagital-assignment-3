select language, count(distinct countrycode) as country_count
from countrylanguage
where isofficial = 'T'
group by language
having count(distinct countrycode)>3
order by country_count desc
