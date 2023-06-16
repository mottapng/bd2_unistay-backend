SET TIMEZONE TO 'America/Sao_Paulo';

CREATE TABLE IF NOT EXISTS users (
    user_id BIGSERIAL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    cellphone VARCHAR(15) NOT NULL,
    birth_date DATE,
    country VARCHAR(50),
    uf VARCHAR(2),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE,
    
    CONSTRAINT pk_user PRIMARY KEY (user_id),
    CONSTRAINT unique_email_user UNIQUE (email)
);

CREATE TABLE IF NOT EXISTS listing_types (
    type_id SERIAL,
    type VARCHAR(50) NOT NULL,
    
    CONSTRAINT pk_listing_types PRIMARY KEY (type_id)
);

CREATE TABLE IF NOT EXISTS address (
    address_id BIGSERIAL,
    street VARCHAR(100) NOT NULL,
    number INT NOT NULL,
    uf VARCHAR(2) NOT NULL,
    city VARCHAR(60) NOT NULL,
	
	CONSTRAINT pk_address PRIMARY KEY (address_id)
);

CREATE TABLE IF NOT EXISTS listings (
    listing_id BIGSERIAL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    private_room BOOLEAN NOT NULL,
    price FLOAT NOT NULL,
    type_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
	address_id BIGINT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE,
    
    CONSTRAINT pk_listing PRIMARY KEY (listing_id),
    CONSTRAINT fk_listings_users FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_listings_types FOREIGN KEY (type_id) REFERENCES listing_types(type_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_listings_address FOREIGN KEY (address_id) REFERENCES address(address_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS images (
    image_id BIGSERIAL,
    file_name VARCHAR(255) NOT NULL,
    file_key VARCHAR(255) NOT NULL,
    file_url VARCHAR(255) NOT NULL,
    listing_id BIGINT NOT NULL,
    
    CONSTRAINT pk_image PRIMARY KEY (image_id),
    CONSTRAINT fk_images_listings FOREIGN KEY (listing_id) REFERENCES listings(listing_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS conversations (
    conversation_id BIGSERIAL,
    renter_id BIGINT NOT NULL,
    locator_id BIGINT NOT NULL,
    
    CONSTRAINT pk_conversation PRIMARY KEY (conversation_id),
    CONSTRAINT fk_conversations_renter FOREIGN KEY (renter_id) REFERENCES users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_conversations_locator FOREIGN KEY (locator_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS message (
    message_id BIGSERIAL,
    message VARCHAR(255) NOT NULL,
    conversation_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT pk_message PRIMARY KEY (message_id),
    CONSTRAINT fk_message_conversation FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE,
    CONSTRAINT fk_message_user FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);