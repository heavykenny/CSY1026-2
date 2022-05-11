--@scripts\create_5.sql

CREATE TABLE categories
(
    categories_id NUMBER(8),
    game_name     VARCHAR2(18),
    game_genre    VARCHAR2(10)
);

CREATE TABLE tournaments
(
    tournaments_id NUMBER(8),
    category_id    NUMBER(8),
    start_date     DATE,
    end_date       DATE
);

CREATE TABLE prizes
(
    tournament_id NUMBER(8),
    sponsor_id    NUMBER(8),
    achievement   VARCHAR2(15),
    amount        NUMBER(5, 2)
);

CREATE TABLE sponsors
(
    sponsors_id  NUMBER(8),
    sponsor_name VARCHAR2(10)
);

CREATE TABLE tournament_participants
(
    tournament_id NUMBER(8),
    player_id     NUMBER(8),
    team_id       NUMBER(8)
);

CREATE TABLE game_participants
(
    game_participants_id NUMBER(8)
);

CREATE TABLE rounds
(
    rounds_id         NUMBER(8),
    level             NUMBER(10),
    level_description VARCHAR2(15)
);

CREATE TABLE games
(
    games_id   NUMBER(8),
    round_id   NUMBER(8),
    start_time DATE
);

CREATE TABLE statistics
(
    statistics_id NUMBER(8),
    game_id       NUMBER(8),
    game_duration NUMBER(11),
    game_kills    NUMBER(10),
    game_deaths   NUMBER(10)
);

CREATE TABLE teams
(
    teams_id  NUMBER(8),
    team_name VARCHAR2(15)
);

CREATE TABLE players
(
    players_id       NUMBER(8),
    player_firstname VARCHAR2(15),
    player_lastname  VARCHAR2(15),
    contact_no       CHAR(11),
    email            VARCHAR2(20)
);

CREATE TABLE team_players
(
    team_id     NUMBER(8),
    player_id   NUMBER(8),
    date_joined DATE
);
