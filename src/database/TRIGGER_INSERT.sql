/* FUNÇÃO PARA INSERIR NA TABELA DE ENDEREÇO E ANUNCIO */
CREATE OR REPLACE FUNCTION insert_listings_report() RETURNS TRIGGER AS $$
BEGIN
	INSERT INTO address (street, number, uf, city) VALUES (NEW.street, NEW.number, NEW.uf, NEW.city);
	
	INSERT INTO listings (name, description, private_room, price, type_id, user_id, address_id) 
	VALUES (NEW.name, NEW.description, NEW.private_room, NEW.price, NEW.type_id, NEW.user_id, currval('address_address_id_seq'));
	
	RETURN NEW;
END; $$ LANGUAGE plpgsql SECURITY DEFINER;

/* TRIGGER PARA DISPARAR FUNÇÃO AO INSERIR NA VIEW */
CREATE TRIGGER insert_listings_report INSTEAD OF
INSERT ON listings_report FOR EACH ROW EXECUTE
PROCEDURE insert_listings_report();