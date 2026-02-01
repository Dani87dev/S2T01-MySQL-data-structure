INSERT INTO worker (worker_id, name)
VALUES (1, 'Joan Garcia'),
       (2, 'Maria López'),
       (3, 'Pere Soler'),
       (4, 'Carme Ruscalleda');

INSERT INTO address (address_id, street, number, city, zip_code, country)
VALUES (1, 'Carrer Major', 10, 'Barcelona', '08001', 'Spain'),
       (2, 'Av. Diagonal', 450, 'Barcelona', '08006', 'Spain'),
       (3, 'Calle Alcalá', 22, 'Madrid', '28014', 'Spain'),
       (4, 'Rambla Nova', 5, 'Tarragona', '43003', 'Spain');


INSERT INTO customers (customers_id, name, address_id, phone_number, email, registration_date, customer_recommended_id)
VALUES (1, 'Anna Pou', 1, 600123456, 'anna@email.com', '2024-01-10', NULL),
       (2, 'Marc Vila', 2, 600987654, 'marc@email.com', '2024-01-15', 1),
       (3, 'Elena Sanz', 3, 611223344, 'elena@email.com', '2024-02-01', NULL),
       (4, 'Lluc Reixach', 4, 655443322, 'lluc@email.com', '2024-02-05', 2);

INSERT INTO supplier (supplier_id, name, phone_number, nif, address_id)
VALUES (1, 'Vision Group', 933123456, 'B12345678', 1),
       (2, 'Optic Wholesale', 911445566, 'A87654321', 3),
       (3, 'Luxottica Dist', 934556677, 'B55566677', 2),
       (4, 'EuroGlass', 977112233, 'C99988877', 4);


INSERT INTO brand (brand_id, supplier_id, name)
VALUES (1, 1, 'Ray-Ban'),
       (2, 2, 'Oakley'),
       (3, 3, 'Persol'),
       (4, 4, 'Vogue');


INSERT INTO glasses (glasses_id, graduation_left, graduation_right, material_type, material_color, glass_right_color,
                     glass_left_color, price, brand_id)
VALUES (1, 1.25, 1.50, 'acetate', 'black', 'transparent', 'transparent', 120.50, 1),
       (2, 0.75, 0.75, 'metallic', 'silver', 'blue', 'blue', 180.00, 2),
       (3, 2.00, 2.25, 'rimless', 'gold', 'transparent', 'transparent', 250.00, 3),
       (4, 0.00, 0.00, 'acetate', 'red', 'brown', 'brown', 95.99, 4);


INSERT INTO sale (sale_id, customer_id, glasses_id, worker_id, quantity)
VALUES (1, 1, 1, 1, 1),
       (2, 2, 2, 2, 1),
       (3, 3, 3, 3, 2),
       (4, 4, 4, 4, 1);