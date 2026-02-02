CREATE
    DATABASE wetube;
USE
    wetube;

CREATE TABLE user
(
    user_id       INT PRIMARY KEY AUTO_INCREMENT,
    email         VARCHAR(45)                          NOT NULL,
    username      VARCHAR(45)                          NOT NULL,
    pasword       VARCHAR(20)                          NOT NULL,
    date_of_birth DATE                                 NOT NULL,
    gender        ENUM ('male', 'female', 'other')     NOT NULL,
    country       VARCHAR(45)                          NOT NULL,
    zip_code      VARCHAR(45)                          NOT NULL,
    status        ENUM ('public', 'hidden', 'private') NOT NULL
);

CREATE TABLE tag
(
    tag_id    INT PRIMARY KEY AUTO_INCREMENT,
    tag_title VARCHAR(15)
);

CREATE TABLE video
(
    video_id     INT PRIMARY KEY AUTO_INCREMENT,
    title        VARCHAR(45)  NOT NULL,
    description  VARCHAR(255),
    max_size     INT          NOT NULL,
    file_name    VARCHAR(255) NOT NULL,
    length       TIME         NOT NULL,
    THUMBNAIL    VARCHAR(255) NOT NULL,
    views        INT,
    likes        INT,
    dislikes     INT,
    STATE        ENUM ('public', 'hide', 'private'),
    user_id      INT          NOT NULL,
    published_at DATETIME     NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id)
);

CREATE TABLE video_tag
(
    video_id INT NOT NULL,
    tag_id   INT NOT NULL,
    FOREIGN KEY (video_id) REFERENCES video (video_id),
    FOREIGN KEY (tag_id) REFERENCES tag (tag_id),
    PRIMARY KEY (video_id, tag_id)
);

CREATE TABLE video_likes
(
    user_id  INT,
    video_id INT,
    vote     ENUM ('like', 'dislike') NOT NULL,
    voted_at DATETIME                 NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (video_id) REFERENCES video (video_id),
    PRIMARY KEY (user_id, video_id)
);

CREATE TABLE channel
(
    channel_id  INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    created_at  DATETIME     NOT NULL,
    user_id     INT          NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id)
);

CREATE TABLE subscriptions
(
    user_id    INT,
    channel_id INT,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (channel_id) REFERENCES channel (channel_id),
    PRIMARY KEY (user_id, channel_id)
);

CREATE TABLE comment
(
    comment_id     INT PRIMARY KEY AUTO_INCREMENT,
    text           VARCHAR(300) NOT NULL,
    posted_at      DATETIME     NOT NULL,
    user_id        INT          NOT NULL,
    video_id       INT          NOT NULL,
    likes_count    INT,
    dislikes_count INT,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (video_id) REFERENCES video (video_id)
);

CREATE TABLE comment_likes
(
    user_id    INT,
    comment_id INT,
    vote       ENUM ('like', 'dislike') NOT NULL,
    vote_at    DATETIME                 NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (comment_id) REFERENCES comment (comment_id),
    PRIMARY KEY (user_id, comment_id)
);

CREATE TABLE playlist
(
    playlist_id   INT PRIMARY KEY AUTO_INCREMENT,
    playlist_name VARCHAR(45)                NOT NULL,
    created_at    DATETIME                   NOT NULL,
    status        ENUM ('public', 'private') NOT NULL,
    user_id       INT                        NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id)
);

CREATE TABLE playlist_videos
(
    playlist_id INT,
    video_id    INT,
    FOREIGN KEY (playlist_id) REFERENCES playlist (playlist_id),
    FOREIGN KEY (video_id) REFERENCES video (video_id),
    PRIMARY KEY (playlist_id, video_id)
);