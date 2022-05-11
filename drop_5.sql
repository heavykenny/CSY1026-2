--@scripts\drop_5.sql
ALTER TABLE categories
DROP CONSTRAINT pk_categories;

ALTER TABLE tournaments
DROP CONSTRAINT pk_tournaments;

ALTER TABLE prizes
DROP CONSTRAINT pk_prizes;

ALTER TABLE sponsors
DROP CONSTRAINT pk_sponsors;

ALTER TABLE tournament_participants
DROP CONSTRAINT pk_tournament_participants;

ALTER TABLE game_participants
DROP CONSTRAINT pk_game_participants;

ALTER TABLE rounds
DROP CONSTRAINT pk_rounds;

ALTER TABLE games
DROP CONSTRAINT pk_games;

ALTER TABLE statistics
DROP CONSTRAINT pk_statistics;

ALTER TABLE teams
DROP CONSTRAINT pk_teams;

ALTER TABLE players
DROP CONSTRAINT pk_players;

ALTER TABLE team_players
DROP CONSTRAINT pk_team_players;


ALTER TABLE tournaments
DROP CONSTRAINT fk_t_categories;

ALTER TABLE prizes
DROP CONSTRAINT fk_p_tournaments;

ALTER TABLE prizes
DROP CONSTRAINT fk_p_sponsors;

ALTER TABLE tournament_participants
DROP CONSTRAINT fk_t_p_tournaments;

ALTER TABLE tournament_participants
DROP CONSTRAINT fk_t_p_players;

ALTER TABLE tournament_participants
DROP CONSTRAINT fk_t_p_teams;

ALTER TABLE game_participants
DROP CONSTRAINT fk_t_g_p_games;

ALTER TABLE game_participants
DROP CONSTRAINT fk_t_p_tournaments;

ALTER TABLE game_participants
DROP CONSTRAINT fk_t_p_players;

ALTER TABLE game_participants
DROP CONSTRAINT fk_t_p_teams;

ALTER TABLE games
DROP CONSTRAINT fk_g_rounds;

ALTER TABLE statistics
DROP CONSTRAINT fk_s_games;

ALTER TABLE team_players
DROP CONSTRAINT fk_t_pl_teams;

ALTER TABLE team_players
DROP CONSTRAINT fk_t_pl_players;

DROP TABLE categories;
DROP TABLE tournaments;
DROP TABLE prizes;
DROP TABLE sponsors;
DROP TABLE tournament_participants;
DROP TABLE game_participants;
DROP TABLE rounds;
DROP TABLE games;
DROP TABLE statistics;
DROP TABLE teams;
DROP TABLE players;
DROP TABLE team_players;

PURGE RECYCLEBIN;
