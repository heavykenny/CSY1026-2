--@scripts\queries_5.sql
-- @/Users/kenny/Oracle_Home/scripts/queries_5.sql

-- selecting all records from each tables.
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
-- shows records in three column projections sorted in descending orders
SELECT player_id, player_firstname, email
FROM players
ORDER BY player_firstname DESC;

SELECT team_id, player_id, date_joined
FROM team_players
ORDER BY team_id DESC;

SELECT category_id, game_name, game_genre
FROM categories
ORDER BY game_name DESC;

SELECT tournament_id, category_id, start_date
FROM tournaments
ORDER BY tournament_id DESC;

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

-- Condition to get all player with a GMAIL account
-- Also uses aliases for table name and format output
SELECT p.player_firstname AS firstname, p.player_lastname AS lastname, email
FROM players p
WHERE email LIKE '%GMAIL%'
ORDER BY firstname DESC;

-- Select ACTIVE players in DESC
-- Also uses aliases for table name and format output
SELECT p.player_firstname AS firstname, p.player_lastname AS lastname, email
FROM players p
WHERE p.status = 'ACTIVE'
ORDER BY firstname DESC;

-- Query to select all sponsors and the prize they are sponsoring
-- Also uses aliases for table name and format output
SELECT s.sponsor_name AS sponsor, p.achievement AS achievement, p.amount AS amount
FROM prizes p
INNER JOIN sponsors s
ON s.sponsor_id = p.sponsor_id
ORDER BY sponsor ASC;

-- Query to select the player-name, gender, game name and genre a player is participating
-- Also uses aliases for table name and format output
-- This query joins 3 table and sort in player's firstname in ASC order
SELECT p.player_firstname AS firstname, p.player_lastname AS lastname, c.game_name AS gamename, c.game_genre AS genre
FROM players p
INNER JOIN tournament_participants tp
ON tp.player_id = p.player_id
INNER JOIN tournaments t
ON tp.tournament_id = t.tournament_id
INNER JOIN categories c
ON t.category_id = c.category_id
ORDER BY firstname ASC;

-- Demonstrating a join for 6 tables, this gets all the kills and death for a game category
-- Also uses aliases for table name and format output
SELECT c.game_name AS category, s.game_kills AS kills, s.game_deaths as deaths
FROM categories c
INNER JOIN tournaments t
ON t.category_id = c.category_id
INNER JOIN tournament_participants tp
ON tp.tournament_id = t.tournament_id
INNER JOIN game_participants gp
ON gp.tournament_participant_id = tp.tournament_participant_id
INNER JOIN games g
ON gp.game_id = g.game_id
INNER JOIN statistics s
ON s.game_id = g.game_id
WHERE c.game_name = 'ULTIMATE SEARCH';


-- Demonstrating a join for 3 tables,
-- this gets all the team name and players where Date is not between 2020 and 2021
-- Also uses aliases for table name and format output
SELECT t.team_name AS "TEAM NAME", tp.date_joined AS "DATE JOINED"
FROM teams t
INNER JOIN team_players tp
ON tp.team_id = t.team_id
INNER JOIN players p
ON p.player_id = tp.player_id
WHERE tp.date_joined BETWEEN '01-JAN-2020' AND '30-DEC-2021'
ORDER BY tp.date_joined ASC;

-- Demonstrating a join for 2 tables
-- this gets all the players with date join greater that 2021
-- Also uses aliases for table name and format output
SELECT p.player_firstname AS name, tp.player_id AS "PLAYER ID", tp.date_joined AS JOINED
FROM team_players tp
INNER JOIN players p
ON tp.player_id = p.player_id
WHERE tp.date_joined > '31-DEC-2021'
ORDER BY tp.team_id DESC;