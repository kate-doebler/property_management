select
   rental_applications.contact_info_id,
   rental_applications.created_at,
   rental_applications.deleted_at,
   rental_applications.id,
   rental_applications.status,
   rental_applications.uploaded_at

from {{ source('property_management', 'rental_applications') }}