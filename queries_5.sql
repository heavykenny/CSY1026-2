--@scripts\queries_5.sql

-- ALL RECORDS FROM EACH TABLE
SELECT * FROM players;

SELECT * FROM teams;

SELECT * FROM team_players;

SELECT * FROM categories;

SELECT * FROM tournaments;

SELECT * FROM sponsors;

SELECT * FROM prizes;

SELECT * FROM tournament_participants;

SELECT * FROM rounds;

SELECT * FROM games;

SELECT * FROM statistics;

SELECT * FROM game_participants;

-- 3 COLUMN PROJECTIONS
--more records need to be inserted to show the queries fully

SELECT player_id, player_firstname, email
FROM players
ORDER BY player_firstname DESC;

--has 2 columns of data, so might not be suitable to work with
SELECT team_id, team_name
FROM teams
ORDER BY team_name DESC;

SELECT team_id, player_id, date_joined
FROM team_players
ORDER BY team_id DESC;

SELECT category_id, game_name, game_genre
FROM categories
ORDER BY game_name DESC;

SELECT tournament_id, category_id, start_date
FROM tournaments
ORDER BY tournament_id DESC;

--has 2 columns of data, so might not be suitable to work with
SELECT sponsor_id, sponsor_name
FROM sponsors
ORDER BY sponsor_name DESC;

SELECT tournament_id, achievement, amount
FROM prizes
ORDER BY tournament_id DESC;

SELECT tournament_participant_id, tournament_id, player_id
FROM tournament_participants
ORDER BY tournament_participant_id DESC;

SELECT round_id, round_level, level_description
FROM rounds
ORDER BY round_level DESC;

SELECT game_id, round_id, start_time
FROM games
ORDER BY game_id DESC;

SELECT statistic_id, game_id, game_duration
FROM statistics
ORDER BY statistic_id DESC;

SELECT game_participant_id, tournament_participant_id, game_id
FROM game_participants
ORDER BY game_id DESC;

-- Restriction Queries with Condition

-- Condition to get all player with a GMAIL account also uses aliases
SELECT p.player_firstname AS firstname, p.player_lastname AS lastname, email
FROM players p
WHERE email LIKE '%GMAIL%'
ORDER BY firstname DESC;

-- Select Active players
SELECT p.player_firstname AS firstname, p.player_lastname AS lastname, email
FROM players p
WHERE p.status = 'ACTIVE'
ORDER BY firstname DESC;

-- Query to select all sponsors and the prize they are sponsoring
SELECT s.sponsor_name AS sponsor, p.achievement AS achievement, p.amount AS amount
FROM prizes p
INNER JOIN sponsors s
ON s.sponsor_id = p.sponsor_id
ORDER BY sponsor ASC;