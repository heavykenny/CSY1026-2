-- TODO: Update with real values, use different ways to insert. At least 5 records each table
INSERT INTO players
(player_id, player_firstname, player_lastname, contact_no, email)
VALUES (seq_players.NEXTVAL, 'K', 'SAMPLE', '+1234567890', 'K.SAMPLE@GMAIL.COM');

INSERT INTO players
VALUES (seq_players.NEXTVAL, 'A', 'ADAM', '+4409938470', 'A.ADAM@OUTLOOK.COM');

INSERT INTO teams
(team_id, team_name)
VALUES (1, 'EXPLORER');

INSERT INTO teams
VALUES (2, 'TEXAS SPRINTERS');

INSERT INTO team_players
(team_id, player_id, date_joined)
VALUES (1, 1, '15-MAY-2021');

INSERT INTO team_players
VALUES (1, 2, '19-JAN-2022');

INSERT INTO team_players
(team_id, player_id)
VALUES (2, 2);

INSERT INTO categories
(category_id, game_name, game_genre)
VALUES (1, 'ULTIMATE SEARCH', 'ACTION');

INSERT INTO categories
VALUES (2, 'PAINT BALL', 'ADVENTURE');

INSERT INTO tournaments
(tournament_id, category_id, start_date, end_date)
VALUES (1, 1, '19-JUN-2022', '26-JUN-2022');

INSERT INTO tournaments
VALUES (2, 1, '18-JUN-2022', '27-JUN-2022');

INSERT INTO tournaments
(tournament_id, category_id)
VALUES (3, 2);

INSERT INTO sponsors
(sponsor_id, sponsor_name)
VALUES (seq_sponsors.NEXTVAL, 'MONSTER DRINK');

INSERT INTO sponsors
VALUES (seq_sponsors.NEXTVAL, 'COCA COLA');

INSERT INTO prizes
(tournament_id, sponsor_id, achievement, amount)
VALUES (1, 100, 'GRAND PRIZE', '10000');

INSERT INTO prizes
VALUES (1, 101, 'PLACE II', '8000');

INSERT INTO tournament_participants
(tournament_participant_id, tournament_id, player_id, team_id)
VALUES (1, 1, 1, 1);

INSERT INTO tournament_participants
VALUES (2, 1, 2, 1);

INSERT INTO rounds
(round_id, round_level, level_description)
VALUES (1, 1, 'LEVEL 1');

INSERT INTO rounds
(round_id, round_level, level_description)
VALUES (2, 1, 'LEVEL 2');

INSERT INTO games
(game_id, round_id, start_time)
VALUES (1, 1, TIMESTAMP '2022-05-15 03:25:00.00');

INSERT INTO games
(game_id, round_id)
VALUES (2, 1);

INSERT INTO statistics
(statistic_id, game_id, game_duration, game_kills, game_deaths)
VALUES (1, 1, 3600, 25, 2);

INSERT INTO statistics
VALUES (2, 1, 1800, 5, 0);

INSERT INTO statistics
(statistic_id, game_id, game_duration)
VALUES (3, 2, 0);

INSERT INTO game_participants
(game_participant_id, tournament_participant_id, game_id)
VALUES (1, 1, 1);

INSERT INTO game_participants
VALUES (2, 2, 1);