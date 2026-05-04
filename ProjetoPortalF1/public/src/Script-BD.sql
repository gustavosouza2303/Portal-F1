CREATE DATABASE portalF1;

USE portalF1;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

SELECT * FROM usuario;

CREATE TABLE quiz (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pergunta VARCHAR(255),
    alternativaA VARCHAR(255),
    alternativaB VARCHAR(255),
    alternativaC VARCHAR(255),
    alternativaD VARCHAR(255),
    correta CHAR(1)
);

INSERT INTO quiz VALUES 
	(DEFAULT, 'Qual piloto ganhou o Campeonato Mundial de Pilotos no ano de 1990?', 'Ayrton Senna', 'Nigel Mansell', 'Lance Stroll', 'Ruan Emanuel Fangio', 'A');
    
INSERT INTO quiz VALUES
	(DEFAULT, 'Em qual ano a Scuderia Ferrari foi fundada?', '1966', '2015', '1890', '1929', 'D'),
    (DEFAULT, 'Em qual ano a Scuderia Ferrari conquistou seu último <b>Campeonato de Construtores</b>?', '1994', '2008', '2021', '1977', 'B'),
    (DEFAULT, 'Em qual ano a Mercedes-Benz estreiou pela primeira vez na Fórmula 1?', '2010', '1954', '1919', '1950', 'B');
    
SELECT * FROM quiz;
    
    
    
    
    
    