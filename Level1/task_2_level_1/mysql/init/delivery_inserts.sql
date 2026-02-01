INSERT INTO province (province_id, name)
VALUES (1, 'Barcelona'),
       (2, 'Girona');


INSERT INTO town (town_id, name, province_id)
VALUES (1, 'Sabadell', 1),
       (2, 'Terrassa', 1),
       (3, 'Figueres', 2),
       (4, 'Blanes', 2);


INSERT INTO customer (customer_id, name, surname, address, zip_code, town_id)
VALUES (1, 'Joan', 'Garcia', 'Carrer Major 10', '08201', 1),
       (2, 'Marta', 'Roca', 'Plaça Nova 5', '08221', 2),
       (3, 'Pere', 'Vila', 'Av. Catalunya 12', '17600', 3),
       (4, 'Anna', 'Serra', 'Carrer del Mar 2', '17300', 4);


INSERT INTO store (store_id, adress, zip_code, town_id)
VALUES (1, 'Carrer Central 1', '08202', 1),
       (2, 'Av. Estació 45', '17600', 3);


INSERT INTO worker (worker_id, name, surname, nif, phone_number, worker_type, store_id)
VALUES (1, 'Lluís', 'Pou', '12345678A', 600111222, 'cooker', 1),
       (2, 'Sònia', 'Mas', '87654321B', 600333444, 'delivery', 1),
       (3, 'Marc', 'Soler', '11223344C', 600555666, 'cooker', 2),
       (4, 'Júlia', 'Homs', '44332211D', 600777888, 'delivery', 2);


INSERT INTO category (category_id, name)
VALUES (1, 'Pizzes Clàssiques'),
       (2, 'Pizzes Veganes'),
       (3, 'Begudes'),
       (4, 'Hamburgueses Gourmet');


INSERT INTO product (product_id, name, description, type, price, category_id)
VALUES (1, 'Margarita', 'Tomàquet i mozzarella', 'pizza', 12.50, 1),
       (2, 'Cheeseburger', 'Formatge cheddar i carn buey', 'burguer', 9.90, 4),
       (3, 'Coca-Cola', 'Llauna 33cl', 'drink', 2.50, 3),
       (4, 'Veggie Pizza', 'Verdures de temporada', 'pizza', 14.00, 2);


INSERT INTO user_order (user_order_id, customer_id, date_time_order, total_price, shipping_method, worker_id, store_id)
VALUES (1, 1, '2026-02-01 19:00:00', 15.00, 'delivery', 2, 1),
       (2, 2, '2026-02-01 20:30:00', 22.40, 'at_store', NULL, 1);


INSERT INTO order_products (order_products_id, quantity, user_order_id, product_id)
VALUES (1, 1, 1, 1), -- 1 Margarita for order 1
       (2, 1, 1, 3), -- 1 Coca-cola for order 1
       (3, 2, 2, 2), -- 2 Burgers for order 2
       (4, 1, 2, 3); -- 1 Coca-cola for order 2a for order 2