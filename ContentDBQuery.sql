

-- Create the database
CREATE DATABASE ContentDB;

-- Use the ContentDB database
USE ContentDB;

-- Create the Articles table
CREATE TABLE Articles (
    ArticleId INT PRIMARY KEY,
    Title NVARCHAR(100),
    Content NVARCHAR(MAX),
    PublishDate DATETIME
);
-- Insert sample values into the Articles table
INSERT INTO Articles (ArticleId, Title, Content, PublishDate)
VALUES
    (1, 'Introduction to SQL', 'SQL is a language used for managing and manipulating relational databases.', '2022-01-01'),
    (2, 'Advanced SQL Techniques', 'Learn advanced SQL techniques such as subqueries and joins.', '2022-01-05'),
    (3, 'Database Design Best Practices', 'Discover best practices for designing efficient and scalable databases.', '2022-01-10');

	SELECT * FROM Articles




