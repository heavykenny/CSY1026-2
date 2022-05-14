--@scripts\create_5.sql

CREATE TABLE players
(
    player_id        NUMBER(8),
    player_firstname VARCHAR2(15),
    player_lastname  VARCHAR2(15),
    contact_no       CHAR(11),
    email            VARCHAR2(20)
);

CREATE TABLE teams
(
    team_id   NUMBER(8),
    team_name VARCHAR2(15)
);

CREATE TABLE team_players
(
    team_id     NUMBER(8) NOT NULL,
    player_id   NUMBER(8) NOT NULL,
    date_joined DATE DEFAULT SYSDATE
);

CREATE TABLE categories
(
    category_id NUMBER(8),
    game_name   VARCHAR2(18),
    game_genre  VARCHAR2(10)
);

CREATE TABLE tournaments
(
    tournament_id NUMBER(8),
    category_id   NUMBER(8) NOT NULL,
    start_date    DATE DEFAULT SYSDATE,
    end_date      DATE DEFAULT (SYSDATE + 30)
);

CREATE TABLE sponsors
(
    sponsor_id   NUMBER(8),
    sponsor_name VARCHAR2(10)
);

CREATE TABLE prizes
(
    tournament_id NUMBER(8),
    sponsor_id    NUMBER(8) NOT NULL,
    achievement   VARCHAR2(15),
    amount        NUMBER(5, 2)
);

CREATE TABLE tournament_participants
(
    tournament_participant_id NUMBER(8),
    tournament_id             NUMBER (8) NOT NULL,
    player_id                 NUMBER(8),
    team_id                   NUMBER(8)
);

CREATE TABLE rounds
(
    round_id          NUMBER(8),
    round_level       NUMBER(10),
    level_description VARCHAR2(15)
);

CREATE TABLE games
(
    game_id    NUMBER(8),
    round_id   NUMBER(8) NOT NULL,
    start_time DATE DEFAULT SYSDATE
);

CREATE TABLE statistics
(
    statistic_id  NUMBER(8),
    game_id       NUMBER(8) NOT NULL,
    game_duration NUMBER(11),
    game_kills    NUMBER(10) DEFAULT 0,
    game_deaths   NUMBER(10) DEFAULT 0
);

CREATE TABLE game_participants
(
    game_participant_id       NUMBER(8),
    tournament_participant_id NUMBER(8) NOT NULL,
    game_id                   NUMBER(8) NOT NULL
);

