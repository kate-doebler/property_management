select
   leases.COMPLETED as completed_leases, 
   leases.created_at as created_at_leases,
   leases.end_date as end_date_leases,
   leases.id as lease_id,
   leases.rental_application_id,
   leases.start_date as start_date_leases, 
   leases.unit_id as unit_id_leases,
   leases.uploaded_at as uploaded_at_lease

from {{ source('property_management', 'leases') }}