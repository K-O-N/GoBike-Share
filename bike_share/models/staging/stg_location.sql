
/* Source data */

SELECT * FROM 
{{ source('dbt_project_dataset', 'location')}}
