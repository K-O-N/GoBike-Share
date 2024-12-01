select stg_location.location_id, region, country, population, density, stg_stolen_vehicles.make_id,
           vehicle_id,	vehicle_type, model_year,	vehicle_desc,	
           color,	date_stolen
from {{ref('stg_stolen_vehicles')}}
left join {{ref('stg_location')}} 
ON stg_stolen_vehicles.location_id = stg_location.location_id 
LEFT JOIN {{ref('make_details')}} 
ON stg_stolen_vehicles.make_id = make_details.make_id 
