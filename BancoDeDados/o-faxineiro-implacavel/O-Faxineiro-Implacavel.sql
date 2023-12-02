CREATE DATABASE IF NOT EXISTS Biblioteca;

USE Biblioteca;

CREATE TABLE IF NOT EXISTS Livros (
    livros_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Autores (
    autor_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255)
);

INSERT INTO Autores (nome) VALUES
('John Green'),
('J.K. Rowling'),
('J.R.R. Tolkien'),
('J.D. Salinger'),
('George Orwell'),
('Rick Riordan'),
('João Guimarães Rosa'),
('Machado de Assis'),
('Graciliano Ramos'),
('Aluísio Azevedo'),
('Mário de Andrade');

CREATE TABLE IF NOT EXISTS Editoras (
    editora_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255)
);

INSERT INTO Editoras (nome) VALUES
('Intrínseca'),
('Rocco'),
('Martins Fontes'),
('Little, Brown and Company'),
('Companhia Editora Nacional'),
('Intrínseca'),
('Nova Fronteira'),
('Companhia das Letras'),
('Martin Claret'),
('Penguin Companhia');

ALTER TABLE Livros
DROP COLUMN autor,
DROP COLUMN editora,
ADD COLUMN autor_id INT,
ADD COLUMN editora_id INT,
ADD FOREIGN KEY (autor_id) REFERENCES Autores(autor_id),
ADD FOREIGN KEY (editora_id) REFERENCES Editoras(editora_id);

INSERT INTO Livros (titulo, autor_id, editora_id, ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 1, 1, 2012, '978-85-8057-346-6'),
('Harry Potter e a Pedra Filosofal', 2, 2, 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 3, 3, 1954, '9788533603149'),
('The Catcher in the Rye', 4, 4, '1951', '9780316769488'),
('1984', 5, 5, 1949, '978-85-221-0616-9'),
('Percy Jackson e o Ladrão de Raios', 6, 6, 2005, '9788598078355');

INSERT INTO Livros (titulo, autor_id, editora_id, ano_publicacao, isbn) VALUES 
('Grande Sertão: Veredas', 7, 7, 1956, '978-85-209-2325-1'),
('Memórias Póstumas de Brás Cubas', 8, 8, 1881, '9788535910663'),
('Vidas Secas', 9, 5, 1938, '9788572326972'),
('O Alienista', 8, 9, 1882, '9788572327429'),
('O Cortiço', 10, 10, 1890, '9788579027048'),
('Dom Casmurro', 8, 10, 1899, '9788583862093'),
('Macunaíma', 11, 5, 1928, '9788503012302');