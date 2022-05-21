--@scripts\constraint_5.sql
-- @/Users/kenny/Oracle_Home/scripts/constraint_5.sql

-- Adds Primary key constraint
ALTER TABLE categories
ADD CONSTRAINT pk_categories
PRIMARY KEY (category_id);

ALTER TABLE tournaments
ADD CONSTRAINT pk_tournaments
PRIMARY KEY (tournament_id);

ALTER TABLE prizes
ADD CONSTRAINT pk_prizes
PRIMARY KEY (tournament_id, sponsor_id);

ALTER TABLE sponsors
ADD CONSTRAINT pk_sponsors
PRIMARY KEY (sponsor_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT pk_tournament_participants
PRIMARY KEY (tournament_participant_id);

ALTER TABLE game_participants
ADD CONSTRAINT pk_game_participants
PRIMARY KEY (game_participant_id);

ALTER TABLE rounds
ADD CONSTRAINT pk_rounds
PRIMARY KEY (round_id);

ALTER TABLE games
ADD CONSTRAINT pk_games
PRIMARY KEY (game_id);

ALTER TABLE statistics
ADD CONSTRAINT pk_statistics
PRIMARY KEY (statistic_id);

ALTER TABLE teams
ADD CONSTRAINT pk_teams
PRIMARY KEY (team_id);

ALTER TABLE players
ADD CONSTRAINT pk_players
PRIMARY KEY (player_id);

ALTER TABLE team_players
ADD CONSTRAINT pk_team_players
PRIMARY KEY (team_id, player_id);

-- Adds Foreign key constraint
ALTER TABLE tournaments
ADD CONSTRAINT fk_t_categories
FOREIGN KEY (category_id)
REFERENCES categories(category_id);

ALTER TABLE prizes
ADD CONSTRAINT fk_p_tournaments
FOREIGN KEY (tournament_id)
REFERENCES tournaments(tournament_id);

ALTER TABLE prizes
ADD CONSTRAINT fk_p_sponsors
FOREIGN KEY (sponsor_id)
REFERENCES sponsors(sponsor_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT fk_t_p_tournaments
FOREIGN KEY (tournament_id)
REFERENCES tournaments(tournament_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT fk_t_p_players
FOREIGN KEY (player_id)
REFERENCES players(player_id);

ALTER TABLE tournament_participants
ADD CONSTRAINT fk_t_p_teams
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

ALTER TABLE game_participants
ADD CONSTRAINT fk_g_p_tournament_participants
FOREIGN KEY (tournament_participant_id)
REFERENCES tournament_participants(tournament_participant_id);

ALTER TABLE game_participants
ADD CONSTRAINT fk_g_p_games
FOREIGN KEY (game_id)
REFERENCES games(game_id);

ALTER TABLE games
ADD CONSTRAINT fk_g_rounds
FOREIGN KEY (round_id)
REFERENCES rounds(round_id);

ALTER TABLE statistics
ADD CONSTRAINT fk_s_games
FOREIGN KEY (game_id)
REFERENCES games(game_id);

ALTER TABLE team_players
ADD CONSTRAINT fk_t_pl_teams
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

ALTER TABLE team_players
ADD CONSTRAINT fk_t_pl_players
FOREIGN KEY (player_id)
REFERENCES players(player_id);

--Add Unique Constraints
-- checking email is unique for all players
ALTER TABLE players
ADD CONSTRAINT u_pl_email
UNIQUE (email);

-- Add Check Constraints
-- Checking constraint to make sure First and Last Name is UPPER
ALTER TABLE players
ADD CONSTRAINT ck_player_upper
CHECK (player_firstname = UPPER(player_firstname) AND player_lastname = UPPER(player_lastname));

-- making sure that round_level is greater than 0.
ALTER TABLE rounds
ADD CONSTRAINT ck_round_level
CHECK (round_level > 0);

-- checking player's gender is either M or F
ALTER TABLE players
ADD CONSTRAINT ck_p_gender
CHECK (gender IN ('M', 'F'));

-- checking player's status is either ACTIVE, INACTIVE or SUSPENDED
ALTER TABLE players
ADD CONSTRAINT ck_p_status
CHECK (status IN ('ACTIVE', 'INACTIVE', 'SUSPENDED'));
