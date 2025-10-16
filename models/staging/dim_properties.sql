with stg_properties as (
    select * 
    from {{ref('properties')}}
),

stg_units as (
    select *
    from {{ref('units')}}
)

select 
    stg_units.square_feet
from stg_units
left join stg_units.property_id on stg_properties.id 

