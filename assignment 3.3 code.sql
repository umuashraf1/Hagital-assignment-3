select continent, round(sum(population)/
sum(surfacearea),2) as population_density
from country
where surfacearea > 0
group by continent
order by population_density desc