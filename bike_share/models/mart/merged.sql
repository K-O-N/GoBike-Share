select stg_location.location_id, region, country, population, density,
           vehicle_id,	vehicle_type,	make_id,	model_year,	vehicle_desc,	
           color,	date_stolen
from {{ref('stg_stolen_vehicles')}}
left join {{ref('stg_location')}}
ON stg_stolen_vehicles.location_id = stg_location.location_id