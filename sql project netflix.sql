SELECT * FROM netflix_db.netflix;
DROP TABLE netflix;
CREATE TABLE netflix (
    show_id VARCHAR(20),
    type VARCHAR(20),
    title VARCHAR(255),
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(100),
    date_added DATE,
    release_year INT,
    rating VARCHAR(10),
    duration VARCHAR(50),
    listed_in VARCHAR(255),
    description TEXT
);

SELECT * FROM netflix_db.netflix_titles;
SELECT COUNT(*) FROM netflix_titles;
SELECT * FROM netflix_titles LIMIT 10;
desc netflix_db.netflix_titles;
ALTER TABLE netflix 
ADD PRIMARY KEY (show_id);
select * from netflix ;
select count(*) from netflix;
desc netflix;

SELECT show_id, COUNT(*)
FROM netflix
GROUP BY show_id
HAVING COUNT(*) > 1;


SELECT COUNT(*) 
FROM netflix
WHERE show_id IS NULL;

SELECT show_id, COUNT(*)
FROM netflix
GROUP BY show_id
HAVING COUNT(*) > 1;

ALTER TABLE netflix
MODIFY show_id VARCHAR(20) NOT NULL;

ALTER TABLE netflix
ADD PRIMARY KEY (show_id);

desc netflix;

UPDATE netflix
SET director = 'Not Available'
WHERE director IS NULL;

UPDATE netflix
SET country = 'Unknown'
WHERE country IS NULL;

SELECT DISTINCT type FROM netflix;


SELECT type, COUNT(*) 
FROM netflix
GROUP BY type;

select type from netflix;

-- Top 5 countries
SELECT country, COUNT(*) AS total
FROM netflix
GROUP BY country
ORDER BY total DESC
LIMIT 5;

-- Content by release year
SELECT release_year, COUNT(*) 
FROM netflix
GROUP BY release_year
ORDER BY release_year;


















