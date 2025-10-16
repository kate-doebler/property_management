select
   properties.address, 
   properties.city,
   properties.created_at as property_created_at,
   properties.id as property_id,
   properties.name,
   properties.state,
   properties.type,
   properties.uploaded_at,
   properties.year_built,
   properties.zip_code

from {{ source('property_management', 'properties') }}