select
   units.address_1,
   units.address_2,
   units.bathrooms,
   units.bedrooms,
   units.city, 
   units.created_at as created_at_unit,
   units.id as unit_id,
   units.name,
   units.property_id,
   units.rent,
   units.square_feet,
   units.state,
   units.status as status_units,
   units.uploaded_at as uploaded_at_units,
   units.zip_code


from {{ source('property_management', 'units') }}