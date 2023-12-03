USE `oscar_database`;

-- 1- Quantas vezes Natalie Portman foi indicada ao Oscar? --
SELECT
	name,
    COUNT(name) AS vezesIndicada
FROM movies
WHERE name = "Natalie Portman";

-- 2- Quantos Oscars Natalie Portman ganhou? --
SELECT
	name,
    COUNT(winner) AS vezesQueGanhou
FROM movies
WHERE winner = "True"
AND name = "Natalie Portman";

-- 3- Amy Adams já ganhou algum Oscar? --
SELECT
    COUNT(winner) AS vezesQueGanhou
FROM movies
WHERE name = "Amy Adams"
AND winner = "True";

-- 4- A série de filmes Toy Story ganhou um Oscar em quais anos? --
SELECT 
	film,
    year_ceremony,
    winner,
    category
FROM movies
WHERE film LIKE "%Toy Story%"
AND winner = "True";

-- 5- A partir de que ano que a categoria "Actress" deixa de existir?  --
SELECT
    MAX(year_ceremony) AS anoDeEncerramentoDaCategoria
FROM movies
WHERE category = 'Actress';

-- 6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano? --
SELECT
    name,
    year_ceremony,
    film,
    winner
FROM movies
WHERE category = 'Actress'
AND winner = "True"
ORDER BY year_ceremony ASC
LIMIT 1;

-- 7- Na coluna/campo "Vencedor", altere todos os valores com "Sim" para 1 e todos os valores "Não" para 0. --
UPDATE movies
SET winner = CASE
    WHEN winner = "True" THEN 1
    WHEN winner = "False" THEN 0
END;

-- 8- Em qual edição do Oscar "Crash" ganhou o prêmio principal? --
SELECT
	film,
	category,
    year_ceremony,
    ceremony,
    winner
FROM movies
WHERE film = "Crash"
AND winner = 1
AND category = "BEST PICTURE";

-- 9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou. --
INSERT INTO movies (year_film, year_ceremony, ceremony, category, name, film, winner) VALUES
(1994, 1995, 67, 'Best Picture', 'Quentin Tarantino', 'Pulp Fiction', 1);

-- 10- O filme Central do Brasil aparece no Oscar? --
SELECT
	*
FROM movies
WHERE film LIKE "%Central do Brasil%";

-- 11- Inclua no banco 3 filmes que nunca foram nem nomeados ao Oscar, mas que merecem ser.  --
INSERT INTO movies (year_film, year_ceremony, ceremony, category, name, film, winner) VALUES
(1998, 1999, 72, 'BEST MOVIE', 'Walter Salles', 'Central do Brasil', 1),
(2009, 2010, 82, 'BEST MOVIE', 'Wes Anderson', 'Fantastic Mr. Fox', 1),
(1997, 1998, 71, 'BEST MOVIE', 'Quentin Tarantino', 'Jackie Brown', 1);

-- 14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor? --
SELECT 
	*
FROM movies
WHERE year_ceremony = 2001
AND category = "BEST PICTURE"
AND winner = 1;

SELECT 
	*
FROM movies
WHERE year_ceremony = 2001
AND category = "DIRECTING"
AND winner = 1;

SELECT 
	*
FROM movies
WHERE year_ceremony = 2001
AND category LIKE "%ACTRESS%"
AND winner = 1;

-- 15- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco com o prêmio que você quiser.  --
INSERT INTO movies (year_film, year_ceremony, ceremony, category, name, film, winner) VALUES
(2015, 2016, 88, 'Best Actress', 'Mei Li', 'The Silk Road', 1),
(2017, 2018, 90, 'Best Actress', 'Satsuki Tanaka', 'Cherry Blossom Dreams', 1),
(2019, 2020, 92, 'Best Actress', 'Priya Patel', 'Bollywood Nights', 1),
(2021, 2022, 94, 'Best Actress', 'Aisha Rahman', 'Desert Rose', 1),
(2016, 2017, 89, 'Best Actress', 'Yuri Kim', 'Whispers of Seoul', 1),
(2018, 2019, 91, 'Best Actress', 'Leila Amiri', 'Persian Nights', 1),
(2020, 2021, 93, 'Best Actress', 'Isabella Santos', 'Samba Dreams', 1);

-- 16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. --
INSERT INTO movies (year_film, year_ceremony, ceremony, category, name, film, winner) VALUES
(2001, 2001, 23, 'MAE DO ANO', 'Silvania do ', 'Val Moutim', 1);


