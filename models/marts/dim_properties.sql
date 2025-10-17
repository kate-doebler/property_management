with stg_properties as (
    select * 
    from {{ref('properties')}}
),

stg_units as (
    select *
    from {{ref('units')}}
),

stg_properties_and_units as (select 
    stg_properties.address
    from stg_properties
join stg_units on stg_properties.property_id = stg_units.property_id)

select * from stg_properties_and_units






