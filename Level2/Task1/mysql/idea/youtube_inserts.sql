USE wetube;

INSERT INTO user (email, username, password, date_of_birth, gender, country, zip_code)
VALUES ('joan@mail.com', 'joan99', 'pass123', '1999-05-15', 'male', 'Spain', '08001'),
       ('marta@mail.com', 'marta_dev', 'marta456', '1995-10-20', 'female', 'Spain', '08202'),
       ('alex@mail.com', 'alex_gamer', 'alex789', '2002-01-12', 'other', 'USA', '90210'),
       ('sergi@mail.com', 'sergi_tech', 'sergi000', '1988-03-30', 'male', 'Spain', '17001'),
       ('laura@mail.com', 'laura_vlogs', 'laura111', '2000-12-05', 'female', 'UK', 'SW1A');

INSERT INTO channel (name, description, created_at, user_id)
VALUES ('Cuina amb Joan', 'El meu canal de cuina', '2024-01-01 10:00:00', 1),
       ('Marta Code', 'Tech and Code', '2024-01-15 12:00:00', 2),
       ('Alex Gaming', 'Gaming and Fun', '2024-02-01 09:30:00', 3),
       ('Laura Vlogs', 'Daily Vlogs', '2024-02-10 18:00:00', 5);

INSERT INTO video (title, description, max_size, file_name, length, THUMBNAIL, views, STATE, user_id, published_at)
VALUES ('Tutorial Truita', 'Com fer una truita', 500, 'truita.mp4', '00:10:30', 'thumb1.jpg', 1500, 'public', 1, '2024-02-01 11:00:00'),
       ('My Setup', 'Setup 2024', 1200, 'setup.mp4', '00:15:00', 'thumb2.jpg', 3000, 'public', 2, '2024-02-05 20:00:00'),
       ('Survival Let\'s Play', 'Minecraft Ep 1', 800, 'mc1.mp4', '00:25:45', 'thumb3.jpg', 5000, 'public', 3, '2024-02-06 15:00:00'),
       ('Vlog a Londres', 'Un dia amb mi', 600, 'london.mp4', '00:12:20', 'thumb4.jpg', 2100, 'public', 5, '2024-02-15 09:00:00'),
       ('Worth it?', 'Review iPhone 15', 900, 'iphone.mp4', '00:08:45', 'thumb5.jpg', 4500, 'public', 2, '2024-02-20 17:00:00');

INSERT INTO tag (tag_id, tag_title)
VALUES (1, 'Cooking'), (2, 'Tech'), (3, 'Gaming'), (4, 'Vlog'), (5, 'Education');

INSERT INTO video_tag (video_id, tag_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 2);

INSERT INTO subscriptions (user_id, channel_id)
VALUES (2, 1), (1, 2), (4, 2), (5, 3), (3, 4);

INSERT INTO comment (text, posted_at, user_id, video_id)
VALUES ('Molt bona recepta!', '2024-02-02 10:00:00', 2, 1),
       ('Quin pc més potent!', '2024-02-06 21:00:00', 1, 2),
       ('M\'encanta la sèrie', '2024-02-07 16:00:00', 4, 3),
       ('Ganes de veure el següent', '2024-02-16 10:30:00',