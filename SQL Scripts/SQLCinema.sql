-- Criar o banco de dados Cinema
CREATE DATABASE Cinema;
-- Usar o banco de dados Cinema
USE Cinema;

-- Criar a tabela Ator
CREATE TABLE Ator (
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL
);

-- Criar a tabela Idiomas
CREATE TABLE Idiomas (
    id INT PRIMARY KEY IDENTITY,
    descricao VARCHAR(255) UNIQUE NOT NULL
);

-- Criar a tabela Filmes
CREATE TABLE Filmes (
    id INT PRIMARY KEY IDENTITY,
    titulo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    ano_lancamento INT NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    idioma_id INT NOT NULL,
    classificacao_indicativa VARCHAR(10) NOT NULL,
    FOREIGN KEY (idioma_id) REFERENCES Idiomas(id)
);

-- Criar a tabela de relacionamento entre Ator e Filmes (muitos para muitos)
CREATE TABLE AtorFilme (
	id INT PRIMARY KEY IDENTITY,
    ator_id INT,
    filme_id INT NOT NULL,
    FOREIGN KEY (ator_id) REFERENCES Ator(id),
    FOREIGN KEY (filme_id) REFERENCES Filmes(id)
);


-- Drops pra caso precise :)
-- Drop da tabela de relacionamento entre Ator e Filmes (AtorFilme)
-- DROP TABLE IF EXISTS AtorFilme;
-- Drop da tabela Filmes
-- DROP TABLE IF EXISTS Filmes;
-- Drop da tabela Idiomas
-- DROP TABLE IF EXISTS Idiomas;
-- Drop da tabela Ator
-- DROP TABLE IF EXISTS Ator;
-- Drop do banco de dados Cinema
-- USE master; -- Voltar ao banco de dados master antes de remover o banco de dados Cinema
-- DROP DATABASE IF EXISTS Cinema;
