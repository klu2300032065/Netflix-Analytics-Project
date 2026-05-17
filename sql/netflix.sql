SELECT * FROM netflix_cleaned LIMIT 10;
SELECT type, COUNT(*) AS total
FROM netflix_cleaned
GROUP BY type;
SELECT country, COUNT(*) AS total_content
FROM netflix_cleaned
SELECT country, COUNT(*) AS total_content
FROM netflix_cleaned
GROUP BY country
ORDER BY total_content DESC
LIMIT 10;
SELECT rating, COUNT(*) AS total
FROM netflix_cleaned
GROUP BY rating
ORDER BY total DESC;
SELECT year_added, COUNT(*) AS total_content
FROM netflix_cleaned
GROUP BY year_added
ORDER BY year_added;
RENAME TABLE netflix_cleaned TO netflix;