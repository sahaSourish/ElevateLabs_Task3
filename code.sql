-- SQL Codes

-- Selecting all data from the clubs table
SELECT * FROM clubs;

-- Selecting specific columns from the competitions table
SELECT competition_id, competition_name FROM competitions;

-- Selecting all data from the matches table
SELECT * FROM matches;


-- Finding matches played on a specific date
SELECT match_id, club_id, opponent_id 
FROM matches 
WHERE date = '2005-11-02';

-- Finding matches in a specific venue
SELECT match_id, club_id, opponent_id
FROM matches
WHERE venue = 'H';

-- Finding matches in a specific competition
SELECT match_id, club_id, opponent_id
FROM matches
WHERE competition_id = 2;


-- Ordering clubs by country names
SELECT club_name, club_country 
FROM clubs 
ORDER BY club_country;

-- Ordering matches by dates played on
SELECT match_id, date 
FROM matches 
ORDER BY date;

-- Ordering matches by matchday within a competition
SELECT match_id, competition_id, matchday
FROM matches
ORDER BY competition_id, matchday;


-- Getting match details with their club and competition names
SELECT 
    m.match_id, 
    home_c.club_name AS home_club, 
    away_c.club_name AS away_club, 
    comp.competition_name,
    m.date,
    m.venue,
    m.result
FROM matches AS m
JOIN clubs AS home_c ON m.club_id = home_c.club_id
JOIN clubs AS away_c ON m.opponent_id = away_c.club_id
JOIN competitions AS comp ON m.competition_id = comp.competition_id;


-- Counting the number of matches in each competition
SELECT 
    comp.competition_name, 
    COUNT(m.match_id) AS number_of_matches
FROM matches AS m
JOIN competitions AS comp ON m.competition_id = comp.competition_id
GROUP BY comp.competition_name;

-- Counting the number of matches played by each club (as either club or opponent)
SELECT 
    c.club_name,
    COUNT(m.match_id) AS number_of_matches
FROM matches AS m
JOIN clubs AS c ON m.club_id = c.club_id OR m.opponent_id = c.club_id
GROUP BY c.club_name;
