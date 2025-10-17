with stg_leases as (
    select *
    from {{ ref('leases') }}
),

stg_rental_applications as (
    select *
    from {{ ref('rental_applications') }}
),

stg_units as (
    select *
        from {{ ref('units') }}
)

select *
from stg_rental_applications 
join stg_leases on stg_leases.rental_application_id = stg_rental_applications.id 
join stg_units on stg_units.unit_id = stg_leases.lease_id