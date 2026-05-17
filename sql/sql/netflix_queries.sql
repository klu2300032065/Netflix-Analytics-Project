-- Movies vs TV Shows
SELECT type, COUNT(*) AS total
FROM netflix_cleaned
GROUP BY type;

-- Top Countries
SELECT country, COUNT(*) AS total_content
FROM netflix_cleaned
GROUP BY country
ORDER BY total_content DESC
LIMIT 10;

-- Ratings Distribution
SELECT rating, COUNT(*) AS total
FROM netflix_cleaned
GROUP BY rating
ORDER BY total DESC;

-- Content Added Per Year
SELECT year_added, COUNT(*) AS total_content
FROM netflix_cleaned
GROUP BY year_added
ORDER BY year_added;