-- Create the `lms` database
CREATE DATABASE IF NOT EXISTS lms;
USE lms;

-- Create the `admin` table
CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

-- Insert admin account
INSERT INTO admin (username, password) VALUES ('Tahmid', '1234');

-- Create the `users` table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

-- Insert user account
INSERT INTO users (username, password) VALUES ('Tahmid007', '09876');

-- Create the `books` table
CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    isbn VARCHAR(20) UNIQUE,
    copies INT DEFAULT 1
);

-- Insert sample books
INSERT INTO books (title, author, isbn, copies) VALUES
('Introduction to Algorithms', 'Thomas H. Cormen', '9780262033848', 5),
('Clean Code', 'Robert C. Martin', '9780132350884', 3),
('Artificial Intelligence: A Modern Approach', 'Stuart Russell', '9780136042594', 2);

-- Create the `borrowed_books` table
CREATE TABLE borrowed_books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Add some borrowed book records
INSERT INTO borrowed_books (user_id, book_id, borrow_date, return_date) VALUES
(1, 1, '2025-01-01', '2025-01-15'),
(1, 2, '2025-01-05', '2025-01-20');
