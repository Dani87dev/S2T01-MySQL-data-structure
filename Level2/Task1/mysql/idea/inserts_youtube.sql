INSERT INTO user (email, username, date_of_birth, gender, country, zip_code, status)
VALUES ('joan@mail.com', 'joan99', '1999-05-15', 'male', 'Spain', '08001', 'public'),
       ('marta@mail.com', 'marta_dev', '1995-10-20', 'female', 'Spain', '08202', 'public'),
       ('alex@mail.com', 'alex_gamer', '2002-01-12', 'other', 'USA', '90210', 'private'),
       ('sergi@mail.com', 'sergi_tech', '1988-03-30', 'male', 'Spain', '17001', 'hidden'),
       ('laura@mail.com', 'laura_vlogs', '2000-12-05', 'female', 'UK', 'SW1A', 'public');


INSERT INTO channel (description, created_at, user_id)
VALUES ('El meu canal de cuina', '2024-01-01 10:00:00', 1),
       ('Tech and Code', '2024-01-15 12:00:00', 2),
       ('Gaming and Fun', '2024-02-01 09:30:00', 3),
       ('Daily Vlogs', '2024-02-10 18:00:00', 5);


INSERT INTO video (description, max_size, title, length, views, likes, dislikes, user_id, published_at)
VALUES ('Com fer una truita', 500, 'Tutorial Truita', '00:10:30', 1500, 120, 5, 1, '2024-02-01 11:00:00'),
       ('Setup 2024', 1200, 'My Setup', '00:15:00', 3000, 450, 10, 2, '2024-02-05 20:00:00'),
       ('Minecraft Ep 1', 800, 'Survival Let\'s Play', '00:25:45', 5000, 800, 20, 3, '2024-02-06 15:00:00'),
       ('Un dia amb mi', 600, 'Vlog a Londres', '00:12:20', 2100, 300, 2, 5, '2024-02-15 09:00:00'),
       ('Review iPhone 15', 900, 'Worth it?', '00:08:45', 4500, 600, 15, 2, '2024-02-20 17:00:00');


INSERT INTO tag (tag_id, tag_title)
VALUES (1, 'Cooking'), (2, 'Tech'), (3, 'Gaming'), (4, 'Vlog'), (5, 'Education');

INSERT INTO video_tag (video_id, tag_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 2);


INSERT INTO subscriptions (user_id, channel_id)
VALUES (2, 1), (1, 2), (4, 2), (5, 3), (3, 4);


INSERT INTO comment (text, posted_at, user_id, video_id, likes_count, dislikes_count)
VALUES ('Molt bona recepta!', '2024-02-02 10:00:00', 2, 1, 10, 0),
       ('Quin pc més potent!', '2024-02-06 21:00:00', 1, 2, 5, 1),
       ('M\'encanta la sèrie', '2024-02-07 16:00:00', 4, 3, 20, 0),
       ('Ganes de veure el següent', '2024-02-16 10:30:00', 3, 4, 15, 2),
       ('La millor review que he vist', '2024-02-21 18:00:00', 1, 5, 30, 0);


INSERT INTO playlist (playlist_name, created_at, status, user_id)
VALUES ('Favorits', '2024-03-01 12:00:00', 'public', 1),
       ('Per veure més tard', '2024-03-05 15:00:00', 'private', 2);


INSERT INTO playlist_videos (playlist_id, video_id)
VALUES (1, 1), (1, 3), (2, 2), (2, 5);