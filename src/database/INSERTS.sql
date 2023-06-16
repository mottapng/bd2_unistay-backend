/* USERS INSERT */
INSERT INTO users (email, password, name, cellphone)
VALUES ('teste1@email.com',	'2262bf5b-28f5-4759-84f5-6a11d947fef5',	'John Doe', '(12) 34567-8910');
INSERT INTO users (email, password, name, cellphone)
VALUES ('teste2@email.com',	'1aaa871a-d122-4aaa-a368-0afc46ae5509',	'Richard Miles', '(12) 34567-8910');
INSERT INTO users (email, password, name, cellphone)
VALUES ('teste3@email.com',	'4e6f2ef9-f832-41db-be91-9eb9bbf3f5a7',	'Jane Stiles', '(12) 34567-8910');
INSERT INTO users (email, password, name, cellphone)
VALUES ('teste4@email.com',	'594972fb-13fc-4767-9084-1a1b62e78718',	'Mary Major', '(12) 34567-8910');
INSERT INTO users (email, password, name, cellphone)
VALUES ('teste5@email.com',	'2d655e14-01d7-40e2-b39e-c1ed844f2966',	'Frank Foe', '(12) 34567-8910');
INSERT INTO users (email, password, name, cellphone)
VALUES ('teste6@email.com',	'1389d0a8-ea04-4869-a4f5-00844bb993c4',	'Chris Bumstead', '(12) 34567-8910');

/* TYPES INSERT */
INSERT INTO listing_types (type) VALUES('República');
INSERT INTO listing_types (type) VALUES('Apartamento');
INSERT INTO listing_types (type) VALUES('Quarto');
INSERT INTO listing_types (type) VALUES('Casa');
INSERT INTO listing_types (type) VALUES('Kitnet');

INSERT INTO address (street, number, uf, city)
VALUES ('Av. XV de Novembro', 213, 'PR', 'Cornélio Procópio');
INSERT INTO address (street, number, uf, city)
VALUES ('Av. XV de Novembro', 214, 'PR', 'Cornélio Procópio');
INSERT INTO address (street, number, uf, city)
VALUES ('Av. XV de Novembro', 215, 'PR', 'Cornélio Procópio');
INSERT INTO address (street, number, uf, city)
VALUES ('Av. XV de Novembro', 216, 'PR', 'Cornélio Procópio');
INSERT INTO address (street, number, uf, city)
VALUES ('Av. XV de Novembro', 217, 'PR', 'Cornélio Procópio');

/* LISTINGS INSERT */
INSERT INTO listings (name, description, private_room, price, user_id, type_id, address_id)
VALUES ('República 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut fringilla sem. Curabitur luctus hendrerit magna, a finibus erat porta eget. Maecenas sit amet magna sit amet sapien tincidunt condimentum. Integer iaculis urna aliquet sollicitudin maximus. Suspendisse tristique dolor sed ante ultricies, vitae pretium lectus tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In porta felis tellus, nec placerat dui iaculis in. Nulla sit amet nibh id ipsum ultrices commodo. Aliquam facilisis a velit et ornare. Donec nec suscipit sapien. Phasellus elementum libero a sapien scelerisque eleifend. Pellentesque in elit et lectus interdum vulputate in et neque. Quisque quis sapien risus. Nulla facilisi. Sed luctus, velit at aliquam ultricies, diam orci luctus orci, sit amet lacinia metus nunc pulvinar nibh.

Praesent aliquam placerat finibus. Morbi vitae ullamcorper nisi. Nunc tempor imperdiet bibendum. Proin felis lectus, viverra sed nunc vel, posuere malesuada leo. Suspendisse potenti. Vestibulum eu gravida purus. Vestibulum mattis a nulla ut consectetur. Aliquam erat volutpat. Quisque elementum euismod urna porttitor facilisis.

Maecenas varius lorem quis leo varius lacinia. Cras tincidunt ultricies sem, nec dictum nunc ullamcorper consectetur. Ut imperdiet libero ipsum, nec feugiat elit ultricies ut. Quisque fermentum in diam non cursus. Nunc orci turpis, vulputate vitae viverra vitae, rutrum vel dolor. Aenean vitae elit sagittis, vulputate dui quis, molestie dui. Maecenas sit amet tellus elit. Donec laoreet felis libero, id blandit arcu fringilla eget. Pellentesque varius pharetra elementum. Proin nec congue lacus. Suspendisse eget dolor in libero commodo malesuada tincidunt ut diam. Morbi vehicula magna augue, eget gravida nibh cursus sed. Sed vel faucibus ipsum, varius molestie neque.',
true, 1100, 1, 1, 1);
INSERT INTO listings (name, description, private_room, price, user_id, type_id, address_id)
VALUES ('República 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut fringilla sem. Curabitur luctus hendrerit magna, a finibus erat porta eget. Maecenas sit amet magna sit amet sapien tincidunt condimentum. Integer iaculis urna aliquet sollicitudin maximus. Suspendisse tristique dolor sed ante ultricies, vitae pretium lectus tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In porta felis tellus, nec placerat dui iaculis in. Nulla sit amet nibh id ipsum ultrices commodo. Aliquam facilisis a velit et ornare. Donec nec suscipit sapien. Phasellus elementum libero a sapien scelerisque eleifend. Pellentesque in elit et lectus interdum vulputate in et neque. Quisque quis sapien risus. Nulla facilisi. Sed luctus, velit at aliquam ultricies, diam orci luctus orci, sit amet lacinia metus nunc pulvinar nibh.

Praesent aliquam placerat finibus. Morbi vitae ullamcorper nisi. Nunc tempor imperdiet bibendum. Proin felis lectus, viverra sed nunc vel, posuere malesuada leo. Suspendisse potenti. Vestibulum eu gravida purus. Vestibulum mattis a nulla ut consectetur. Aliquam erat volutpat. Quisque elementum euismod urna porttitor facilisis.

Maecenas varius lorem quis leo varius lacinia. Cras tincidunt ultricies sem, nec dictum nunc ullamcorper consectetur. Ut imperdiet libero ipsum, nec feugiat elit ultricies ut. Quisque fermentum in diam non cursus. Nunc orci turpis, vulputate vitae viverra vitae, rutrum vel dolor. Aenean vitae elit sagittis, vulputate dui quis, molestie dui. Maecenas sit amet tellus elit. Donec laoreet felis libero, id blandit arcu fringilla eget. Pellentesque varius pharetra elementum. Proin nec congue lacus. Suspendisse eget dolor in libero commodo malesuada tincidunt ut diam. Morbi vehicula magna augue, eget gravida nibh cursus sed. Sed vel faucibus ipsum, varius molestie neque.',
true, 1100, 1, 1, 1);
INSERT INTO listings (name, description, private_room, price, user_id, type_id, address_id)
VALUES ('República 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut fringilla sem. Curabitur luctus hendrerit magna, a finibus erat porta eget. Maecenas sit amet magna sit amet sapien tincidunt condimentum. Integer iaculis urna aliquet sollicitudin maximus. Suspendisse tristique dolor sed ante ultricies, vitae pretium lectus tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In porta felis tellus, nec placerat dui iaculis in. Nulla sit amet nibh id ipsum ultrices commodo. Aliquam facilisis a velit et ornare. Donec nec suscipit sapien. Phasellus elementum libero a sapien scelerisque eleifend. Pellentesque in elit et lectus interdum vulputate in et neque. Quisque quis sapien risus. Nulla facilisi. Sed luctus, velit at aliquam ultricies, diam orci luctus orci, sit amet lacinia metus nunc pulvinar nibh.

Praesent aliquam placerat finibus. Morbi vitae ullamcorper nisi. Nunc tempor imperdiet bibendum. Proin felis lectus, viverra sed nunc vel, posuere malesuada leo. Suspendisse potenti. Vestibulum eu gravida purus. Vestibulum mattis a nulla ut consectetur. Aliquam erat volutpat. Quisque elementum euismod urna porttitor facilisis.

Maecenas varius lorem quis leo varius lacinia. Cras tincidunt ultricies sem, nec dictum nunc ullamcorper consectetur. Ut imperdiet libero ipsum, nec feugiat elit ultricies ut. Quisque fermentum in diam non cursus. Nunc orci turpis, vulputate vitae viverra vitae, rutrum vel dolor. Aenean vitae elit sagittis, vulputate dui quis, molestie dui. Maecenas sit amet tellus elit. Donec laoreet felis libero, id blandit arcu fringilla eget. Pellentesque varius pharetra elementum. Proin nec congue lacus. Suspendisse eget dolor in libero commodo malesuada tincidunt ut diam. Morbi vehicula magna augue, eget gravida nibh cursus sed. Sed vel faucibus ipsum, varius molestie neque.',
true, 1100, 1, 1, 1);
INSERT INTO listings (name, description, private_room, price, user_id, type_id, address_id)
VALUES ('República 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut fringilla sem. Curabitur luctus hendrerit magna, a finibus erat porta eget. Maecenas sit amet magna sit amet sapien tincidunt condimentum. Integer iaculis urna aliquet sollicitudin maximus. Suspendisse tristique dolor sed ante ultricies, vitae pretium lectus tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In porta felis tellus, nec placerat dui iaculis in. Nulla sit amet nibh id ipsum ultrices commodo. Aliquam facilisis a velit et ornare. Donec nec suscipit sapien. Phasellus elementum libero a sapien scelerisque eleifend. Pellentesque in elit et lectus interdum vulputate in et neque. Quisque quis sapien risus. Nulla facilisi. Sed luctus, velit at aliquam ultricies, diam orci luctus orci, sit amet lacinia metus nunc pulvinar nibh.

Praesent aliquam placerat finibus. Morbi vitae ullamcorper nisi. Nunc tempor imperdiet bibendum. Proin felis lectus, viverra sed nunc vel, posuere malesuada leo. Suspendisse potenti. Vestibulum eu gravida purus. Vestibulum mattis a nulla ut consectetur. Aliquam erat volutpat. Quisque elementum euismod urna porttitor facilisis.

Maecenas varius lorem quis leo varius lacinia. Cras tincidunt ultricies sem, nec dictum nunc ullamcorper consectetur. Ut imperdiet libero ipsum, nec feugiat elit ultricies ut. Quisque fermentum in diam non cursus. Nunc orci turpis, vulputate vitae viverra vitae, rutrum vel dolor. Aenean vitae elit sagittis, vulputate dui quis, molestie dui. Maecenas sit amet tellus elit. Donec laoreet felis libero, id blandit arcu fringilla eget. Pellentesque varius pharetra elementum. Proin nec congue lacus. Suspendisse eget dolor in libero commodo malesuada tincidunt ut diam. Morbi vehicula magna augue, eget gravida nibh cursus sed. Sed vel faucibus ipsum, varius molestie neque.',
true, 1100, 1, 1, 1);
INSERT INTO listings (name, description, private_room, price, user_id, type_id, address_id)
VALUES ('República 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut fringilla sem. Curabitur luctus hendrerit magna, a finibus erat porta eget. Maecenas sit amet magna sit amet sapien tincidunt condimentum. Integer iaculis urna aliquet sollicitudin maximus. Suspendisse tristique dolor sed ante ultricies, vitae pretium lectus tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In porta felis tellus, nec placerat dui iaculis in. Nulla sit amet nibh id ipsum ultrices commodo. Aliquam facilisis a velit et ornare. Donec nec suscipit sapien. Phasellus elementum libero a sapien scelerisque eleifend. Pellentesque in elit et lectus interdum vulputate in et neque. Quisque quis sapien risus. Nulla facilisi. Sed luctus, velit at aliquam ultricies, diam orci luctus orci, sit amet lacinia metus nunc pulvinar nibh.

Praesent aliquam placerat finibus. Morbi vitae ullamcorper nisi. Nunc tempor imperdiet bibendum. Proin felis lectus, viverra sed nunc vel, posuere malesuada leo. Suspendisse potenti. Vestibulum eu gravida purus. Vestibulum mattis a nulla ut consectetur. Aliquam erat volutpat. Quisque elementum euismod urna porttitor facilisis.

Maecenas varius lorem quis leo varius lacinia. Cras tincidunt ultricies sem, nec dictum nunc ullamcorper consectetur. Ut imperdiet libero ipsum, nec feugiat elit ultricies ut. Quisque fermentum in diam non cursus. Nunc orci turpis, vulputate vitae viverra vitae, rutrum vel dolor. Aenean vitae elit sagittis, vulputate dui quis, molestie dui. Maecenas sit amet tellus elit. Donec laoreet felis libero, id blandit arcu fringilla eget. Pellentesque varius pharetra elementum. Proin nec congue lacus. Suspendisse eget dolor in libero commodo malesuada tincidunt ut diam. Morbi vehicula magna augue, eget gravida nibh cursus sed. Sed vel faucibus ipsum, varius molestie neque.',
true, 1100, 1, 1, 1);

/* IMAGES INSERT */
INSERT INTO images (file_name, file_key, file_url, listing_id)
VALUES ('Casa1', 'Casa1', 'https://images.pexels.com/photos/2194399/pexels-photo-2194399.jpeg?auto=compress&cs=tinysrgb&w=1600', 1);
INSERT INTO images (file_name, file_key, file_url, listing_id)
VALUES ('Casa2', 'Casa2', 'https://images.pexels.com/photos/2587054/pexels-photo-2587054.jpeg?auto=compress&cs=tinysrgb&w=1600', 2);
INSERT INTO images (file_name, file_key, file_url, listing_id)
VALUES ('Casa3', 'Casa3', 'https://images.pexels.com/photos/1022936/pexels-photo-1022936.jpeg?auto=compress&cs=tinysrgb&w=1600', 3);
INSERT INTO images (file_name, file_key, file_url, listing_id)
VALUES ('Casa4', 'Casa4', 'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?auto=compress&cs=tinysrgb&w=1600', 4);
INSERT INTO images (file_name, file_key, file_url, listing_id)
VALUES ('Casa5', 'Casa5', 'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1600', 5);
INSERT INTO images (file_name, file_key, file_url, listing_id)
VALUES ('Casa5', 'Casa5', 'https://images.pexels.com/photos/259751/pexels-photo-259751.jpeg?auto=compress&cs=tinysrgb&w=1600', 5);
INSERT INTO images (file_name, file_key, file_url, listing_id)
VALUES ('Casa5', 'Casa5', 'https://images.pexels.com/photos/323775/pexels-photo-323775.jpeg?auto=compress&cs=tinysrgb&w=1600', 5);
INSERT INTO images (file_name, file_key, file_url, listing_id)
VALUES ('Casa5', 'Casa5', 'https://images.pexels.com/photos/209315/pexels-photo-209315.jpeg?auto=compress&cs=tinysrgb&w=1600', 5);

/* CONVERSATION INSERT */
INSERT INTO conversations (renter_id, locator_id) VALUES (1, 2);
INSERT INTO conversations (renter_id, locator_id) VALUES (1, 3);
INSERT INTO conversations (renter_id, locator_id) VALUES (1, 4);
INSERT INTO conversations (renter_id, locator_id) VALUES (1, 5);
INSERT INTO conversations (renter_id, locator_id) VALUES (1, 6);

/* MESSAGE INSERT */
INSERT INTO message (message, conversation_id, user_id) VALUES ('Olá, me interessei em seu anúncio sobre a república 1', 1, 2);
INSERT INTO message (message, conversation_id, user_id) VALUES ('Olá, que bom! o que gostaria de saber sobre?', 1, 1);
INSERT INTO message (message, conversation_id, user_id) VALUES ('Quantas vagas estão disponiveis no local?', 1, 2);
INSERT INTO message (message, conversation_id, user_id) VALUES ('Atualmente estamos com 2 vagas na casa', 1, 1);
INSERT INTO message (message, conversation_id, user_id) VALUES ('Beleza, vamos continuar negociando pelo WhatsApp', 1, 2);