select
   leases.COMPLETED, 
   leases.created_at,
   leases.end_date,
   leases.id,
   leases.rental_application_id,
   leases.start_date, 
   leases.unit_id,
   leases.uploaded_at

from {{ source('property_management', 'leases') }}