/* TABELA DE BACKUP PARA ANUNCIOS */
CREATE TABLE IF NOT EXISTS bkp_listings (
	listing_id BIGINT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    private_room BOOLEAN NOT NULL,
    price FLOAT NOT NULL,
    type_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
	street VARCHAR(100),
	number INT,
	uf VARCHAR(2),
	city VARCHAR(60),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_by VARCHAR(100) DEFAULT current_user
);

/* FUNÇÃO PARA INSERIR NA TABELA DE BACKUP E DELETAR DAS TABELAS */
CREATE OR REPLACE FUNCTION delete_listings_report() RETURNS TRIGGER AS $$
DECLARE
	list_address BIGINT;
	list_listing BIGINT;
    list_name VARCHAR(100);
    list_description TEXT;
    list_private_room BOOLEAN;
    list_price FLOAT;
    list_type_id BIGINT;
    list_user_id BIGINT;
	list_street VARCHAR(100);
	list_number INT;
	list_uf VARCHAR(2);
	list_city VARCHAR(60);
    list_created_at TIMESTAMP;
    list_updated_at TIMESTAMP;
BEGIN
	SELECT * INTO list_address, list_listing, list_name, list_description, list_private_room, list_price, 
	list_type_id, list_user_id, list_created_at, list_updated_at, list_street, list_number, list_uf, list_city
	FROM listings_report 
	WHERE listing_id=OLD.listing_id;
	
	INSERT INTO bkp_listings VALUES (list_listing, list_name, list_description, list_private_room, list_price, 
	list_type_id, list_user_id, list_street, list_number, list_uf, list_city, list_created_at, list_updated_at);

	DELETE FROM listings WHERE listing_id=OLD.listing_id;
	DELETE FROM address WHERE address_id=list_address;
RETURN OLD;
END; $$ LANGUAGE plpgsql;


/* TRIGGER PARA DELETAR DA VIEW */
CREATE TRIGGER delete_listings_report INSTEAD OF
DELETE ON listings_report FOR EACH ROW EXECUTE
PROCEDURE delete_listings_report();

SELECT * FROM listings_report;