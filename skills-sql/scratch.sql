select models.name, brand_name, headquarters 
from models
join brands on models.brand_name = brands.name 
where models.name = 'Mustang';

select count(*) from brands order by founded limit 3;


select count(*) from models where brand_name='Ford';


select models.name, brand_name, founded
from models
left join brands on models.brand_name = brands.name
where year = '1960';




  SELECT b.name,
         b.founded,
         m.name
  FROM models AS m
    RIGHT JOIN brands AS b
      ON b.name = m.brand_name
  WHERE b.discontinued IS NULL;



  SELECT m.name,
         m.brand_name,
         b.founded
  FROM models AS m
    JOIN brands AS b
      ON b.name = m.brand_name;

  SELECT b.name, 
         founded
  FROM brands AS b
    FULL OUTER JOIN models AS m
      ON b.name = m.brand_name
  WHERE m.name is null;


  SELECT b.name,
         m.name,
         m.year,
         b.discontinued,
         b.discontinued - m.year as years_until_brand_discontinued
  FROM models AS m
    LEFT JOIN brands AS b
      ON m.brand_name = b.name
  WHERE b.discontinued IS NOT NULL
  ORDER BY b.name, m.name, m.year;



select models.name, models.brand_name, count(models.brand_name) as num_models
from models
join brands on models.brand_name = brands.name 
having num_models > 5; 

select brands.name, count(models.name)
from models
join brands on models.brand_name = brands.name;
order by brands.name;


select distinct on (models.name) models.name as model_name, brands.name as brand_name 
from models
join brands on models.brand_name = brands.name
order by brand_name;

-- kinda sorta works
select brands.name, count(brands.name) as num 
from models 
join brands on models.brand_name = brands.name
group by brands.name
having num > 5;


select brands.name as brand_name
from models 
join brands on models.brand_name = brands.name
group by brands.name
having count(brands.name) > 5;


select models.brand_name
from models 
join brands on models.brand_name = brands.name
group by models.brand_name
having count(models.brand_name) > 5;


Using a subquery, select the name and year of any model whose
year is the same year that ANY brand was founded.

The result set should be:

   name    | year
-----------+-------
 Imperial  |  1926
 Corvette  |  1954
 Fleetwood |  1954


select name, year from models where year in (select founded from brands);



                                 Table "public.models"
   Column   |         Type          |                      Modifiers
------------+-----------------------+-----------------------------------------------
 id         | integer               | not null default nextval('models_id_seq'::regc
 year       | integer               | not null
 brand_name | character varying(50) |
 name       | character varying(50) | not null
Indexes:
    "models_pkey" PRIMARY KEY, btree (id)


cars-# \d brands
                                   Table "public.brands"
    Column    |         Type          |                      Modifiers
--------------+-----------------------+---------------------------------------------
 id           | integer               | not null default nextval('brands_id_seq'::re
 name         | character varying(50) | not null
 founded      | integer               |
 headquarters | character varying(50) |
 discontinued | integer               |
Indexes:
    "brands_pkey" PRIMARY KEY, btree (id)













