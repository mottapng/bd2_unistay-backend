CREATE VIEW listings_report(address_id, listing_id, name, description, private_room, price, qnt_bedrooms, qnt_bathrooms, 
				    qnt_garage, type_id, user_id, created_at, updated_at, street, number, uf, city) AS
SELECT * FROM listings JOIN address USING (address_id);