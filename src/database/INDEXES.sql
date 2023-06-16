CREATE INDEX index_users_email ON users (email);
CREATE INDEX index_listings_user_id ON listings (user_id);
CREATE INDEX index_images_listing_id ON images (listing_id);
CREATE INDEX index_message_conversation_id ON message (conversation_id);
CREATE INDEX index_conversation_renter_id_locator_id ON conversations (renter_id, locator_id);