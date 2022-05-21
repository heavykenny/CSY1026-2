--@scripts\insert_5.sql

-- Use different ways to insert. At least 5 records each table

--INSERT PLAYERS RECORDS
INSERT INTO players
(player_id, player_firstname, player_lastname, contact_no, email, location, gender, status)
VALUES (seq_players.NEXTVAL, 'JAMES', 'HOUGH', '+1234567890', 'J.HOUGH@GMAIL.COM', 'NORTHAMPTON', 'M', 'ACTIVE');

INSERT INTO players
VALUES (seq_players.NEXTVAL, 'AARON', 'ADAM', '+4409938470', 'A.ADAM99@OUTLOOK.COM', 'OXFORD', 'M', 'ACTIVE');

-- default status is added - 'INACTIVE'
INSERT INTO players (player_id, player_firstname, player_lastname, contact_no, email, location, gender)
VALUES (seq_players.NEXTVAL, 'DAVID', 'MOUNDS', '+4402739502', 'DAVEMOUNDS@YAHOO.COM', 'NOTTINGHAM', 'M');

INSERT INTO players
VALUES (seq_players.NEXTVAL, 'MICAHEL', 'TONER', '+4438561064', 'TONER.M@ICLOUD.COM', 'LIVERPOOL', 'F', 'ACTIVE');

INSERT INTO players
VALUES (seq_players.NEXTVAL, 'JACKSON', 'KEYS', '+4382901047', 'JACK.KEYS@GMAIL.COM', 'LEICESTER', 'F', 'ACTIVE');

--INSERT TEAMS RECORDS
INSERT INTO teams
(team_id, team_name)
VALUES (20000000, 'EXPLORERS');

INSERT INTO teams
VALUES (20000001, 'TEXAS SPRINTERS');

INSERT INTO teams
VALUES (20000002, 'SHOW NO MERCY');

INSERT INTO teams
VALUES (20000003, 'CRACKED 105');

INSERT INTO teams
VALUES (20000004, 'OBSIDIANS');

-- INSERT TEAM PLAYERS RECORDS
INSERT INTO team_players
(team_id, player_id, date_joined)
VALUES (20000000, 10000000, '15-MAY-2021');

INSERT INTO team_players
VALUES (20000001, 10000001, '19-JAN-2022');

-- date_joined is automatically set to Today (Sysdate)
INSERT INTO team_players
(team_id, player_id)
VALUES (20000002, 10000002);

INSERT INTO team_players
VALUES (20000003, 10000003, '28-FEB-2020');

INSERT INTO team_players
VALUES (20000004, 10000004, '07-JUL-2021');

--INSERT CATEGORIES
-- This insertion starts from 10000000 and increment by 10
INSERT INTO categories
(category_id, game_name, game_genre)
VALUES (seq_categories.NEXTVAL, 'ULTIMATE SEARCH', 'ACTION');

INSERT INTO categories
VALUES (seq_categories.NEXTVAL, 'PAINT BALL', 'ADVENTURE');

INSERT INTO categories
VALUES (seq_categories.NEXTVAL, 'CLUSTER LINE', 'ROYALE');

INSERT INTO categories
VALUES (seq_categories.NEXTVAL, 'FIREMANIA', 'ARCADE');

INSERT INTO categories
VALUES (seq_categories.NEXTVAL, 'WILL FOR SPEED', 'RACING');


--INSERT TOURNAMENTS
INSERT INTO tournaments
(tournament_id, category_id, start_date, end_date)
VALUES (seq_tournaments.NEXTVAL, 10000000, '19-JUN-2022', '26-JUN-2022');

INSERT INTO tournaments
VALUES (seq_tournaments.NEXTVAL, 10000010, '18-JUN-2022', '27-JUN-2022');

INSERT INTO tournaments
VALUES (seq_tournaments.NEXTVAL, 10000020, '02-JUN-2022', '13-JUN-2022');

-- insert with default values, start_date is set to today, end_date to 30 from today
INSERT INTO tournaments (tournament_id, category_id)
VALUES (seq_tournaments.NEXTVAL, 10000030);

-- insert with default values, start_date is set to today, end_date to 30 from today
INSERT INTO tournaments (tournament_id, category_id)
VALUES (seq_tournaments.NEXTVAL, 10000040);


--INSERT SPONSORS RECORDS
INSERT INTO sponsors
(sponsor_id, sponsor_name)
VALUES (100, 'MONSTER DRINK');

INSERT INTO sponsors
VALUES (101, 'COCA COLA');

INSERT INTO sponsors
VALUES (102, 'MICROSOFT');

INSERT INTO sponsors
VALUES (103, 'EPIC GAMES');

INSERT INTO sponsors
VALUES (104, 'EA SPORTS');


--INSERT PRIZES
INSERT INTO prizes
(tournament_id, sponsor_id, achievement, amount)
VALUES (10000000, 100, 'GRAND PRIZE', '10000');

INSERT INTO prizes
VALUES (10000500, 101, 'PLACE II', '8000');

INSERT INTO prizes
VALUES (10001000, 102, 'PLACE III', '2500');

INSERT INTO prizes
VALUES (10001500, 103, 'BEST PLAYER', '5000');

INSERT INTO prizes
VALUES (10002000, 104, 'TOURNAMENT PLAY', '1000');


--INSERT TOURNAMENT PARTICIPANTS
INSERT INTO tournament_participants
(tournament_participant_id, tournament_id, player_id, team_id)
VALUES (50000000, 10000000, 10000000, 20000000);

INSERT INTO tournament_participants
VALUES (60000000, 10000500, 10000001, 20000001);

INSERT INTO tournament_participants
VALUES (70000000, 10001000, 10000002,20000002);

INSERT INTO tournament_participants
VALUES (80000000, 10001500, 10000003, 20000003);

INSERT INTO tournament_participants
VALUES (90000000, 10002000, 10000004, 20000004);


--INSERT ROUNDS RECORDS
INSERT INTO rounds
(round_id, round_level, level_description)
VALUES (10000000, 7, 'AMATEUR');

INSERT INTO rounds
VALUES (10000050, 25, 'PROFESSIONAL');

INSERT INTO rounds
VALUES (10000100, 75, 'GLOBAL');

INSERT INTO rounds
VALUES (10000150, 14, 'SEMI-PRO');

INSERT INTO rounds
VALUES (10000200, 1, 'PRACTICE');


--INSERT GAMES RECORDS
INSERT INTO games
(game_id, round_id, start_time)
VALUES (seq_games.NEXTVAL, 10000000, TIMESTAMP '2022-05-15 03:25:00.00');

INSERT INTO games
VALUES (seq_games.NEXTVAL, 10000050, TIMESTAMP '2022-05-15 03:25:00.00');

INSERT INTO games
VALUES (seq_games.NEXTVAL, 10000100, TIMESTAMP '2022-05-15 03:25:00.00');

INSERT INTO games
VALUES (seq_games.NEXTVAL, 10000150, TIMESTAMP '2022-05-15 03:25:00.00');

INSERT INTO games
VALUES (seq_games.NEXTVAL, 10000200, TIMESTAMP '2022-05-15 03:25:00.00');


--INSERT STATISTICS RECORDS
INSERT INTO statistics
(statistic_id, game_id, game_duration, game_kills, game_deaths)
VALUES (seq_statistics.NEXTVAL, 10, 3600, 25, 2);

-- game_kills and game_deaths defaults are automatically added
INSERT INTO statistics 
(statistic_id, game_id, game_duration)
VALUES (seq_statistics.NEXTVAL, 15, 1800);

INSERT INTO statistics
VALUES (seq_statistics.NEXTVAL, 20, 4829, 17, 10);

INSERT INTO statistics
VALUES (seq_statistics.NEXTVAL, 25, 1220, 3, 13);

INSERT INTO statistics
VALUES (seq_statistics.NEXTVAL, 30, 2350, 11, 11);

--INSERT GAME PARTICIPANTS RECORDS
INSERT INTO game_participants
(game_participant_id, tournament_participant_id, game_id)
VALUES (10000000, 50000000, 10);

INSERT INTO game_participants
VALUES (20000000, 60000000, 15);

INSERT INTO game_participants
VALUES (30000000, 70000000, 20);

INSERT INTO game_participants
VALUES (40000000, 80000000, 25);

INSERT INTO game_participants
VALUES (50000000, 90000000, 30);
