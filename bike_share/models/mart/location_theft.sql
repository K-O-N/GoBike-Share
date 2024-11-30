

SELECT location_id, region, count(*) as total_theft
FROM {{ref('merged')}}
group by location_id, region