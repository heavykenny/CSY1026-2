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
PRIMARY KEY (tournament_id, player_id, team_id);

ALTER TABLE game_participants
ADD CONSTRAINT pk_game_participants
PRIMARY KEY (game_id, tournament_id, player_id, team_id);

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