CREATE DATABASE IF NOT EXISTS sampledb;
USE sampledb;

GRANT ALL ON sampledb.* TO mysql_user;

-- CREATE TABLE IF NOT EXISTS users (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50) NOT NULL,
--     email VARCHAR(50) NOT NULL,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );
--
-- INSERT INTO users (name, email) VALUES
--     ('Alice', 'alice@example.com'),
--     ('Bob', 'bob@example.com');