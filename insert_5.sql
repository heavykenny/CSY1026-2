-- TODO: Update with real values, use different ways to insert. At least 5 records each table
INSERT INTO players
(player_id, player_firstname, player_lastname, contact_no, email)
VALUES ();

INSERT INTO teams
(team_id, team_name)
VALUES ();

INSERT INTO team_players
(team_id, player_id, date_joined)
VALUES ();

INSERT INTO categories
(category_id, game_name, game_genre)
VALUES ();

INSERT INTO tournaments
(tournament_id, category_id, start_date, end_date)
VALUES ();

INSERT INTO sponsors
(sponsor_id, sponsor_name)
VALUES ();

INSERT INTO prizes
(tournament_id, sponsor_id, achievement, amount)
VALUES ();

INSERT INTO tournament_participants
(tournament_participant_id, tournament_id, player_id, team_id)
VALUES ();

INSERT INTO rounds
(round_id, round_level, level_description)
VALUES ();

INSERT INTO games
(game_id, round_id, start_time)
VALUES ();

INSERT INTO statistics
(statistic_id, game_id, game_duration, game_kills, game_deaths)
VALUES ();

INSERT INTO game_participants
(game_participant_id, tournament_participant_id, game_id)
VALUES ();