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

SELECT * FROM quiz;
    
    
CREATE TABLE resultadoQuiz (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fkUsuario INT,
    acertos INT,
    erros INT,
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(id)
);
    
SELECT * FROM resultadoQuiz;

SELECT * FROM resultadoQuiz WHERE fkUsuario = 1;

INSERT INTO quiz VALUES 
	(DEFAULT, 'Qual piloto ganhou o Campeonato Mundial de Pilotos no ano de 1990?', 'Ayrton Senna', 'Nigel Mansell', 'Lance Stroll', 'Ruan Emanuel Fangio', 'A');
    
INSERT INTO quiz VALUES
	(DEFAULT, 'Em qual ano a Scuderia Ferrari foi fundada?', '1966', '2015', '1890', '1929', 'D'),
    (DEFAULT, 'Em qual ano a Scuderia Ferrari conquistou seu último <b>Campeonato de Construtores</b>?', '1994', '2008', '2021', '1977', 'B'),
    (DEFAULT, 'Em qual ano a Mercedes-Benz estreiou pela primeira vez na Fórmula 1?', '2010', '1954', '1919', '1950', 'B');
    
INSERT INTO quiz VALUES
(DEFAULT, 'Qual equipe revelou Max Verstappen na Fórmula 1 em 2015?', 'Red Bull Racing', 'Toro Rosso', 'Williams', 'Ferrari', 'B'),
(DEFAULT, 'Qual piloto foi campeão mundial da Fórmula 1 em 1991?', 'Nigel Mansell', 'Alain Prost', 'Ayrton Senna', 'Michael Schumacher', 'C'),
(DEFAULT, 'Qual piloto conquistou sete títulos mundiais antes de Lewis Hamilton igualar o recorde?', 'Fernando Alonso', 'Michael Schumacher', 'Niki Lauda', 'Sebastian Vettel', 'B'),
(DEFAULT, 'Qual equipe era anteriormente conhecida como Minardi?', 'Williams', 'Ferrari', 'Racing Bulls', 'Mercedes', 'C'),
(DEFAULT, 'Qual piloto ficou conhecido pelo apelido "O Professor"?', 'Alain Prost', 'Nigel Mansell', 'Juan Manuel Fangio', 'Lewis Hamilton', 'A'),
(DEFAULT, 'Qual piloto venceu o GP da Espanha de 2016 aos 18 anos?', 'Carlos Sainz Jr.', 'Sebastian Vettel', 'Max Verstappen', 'Fernando Alonso', 'C'),
(DEFAULT, 'Em qual equipe Ayrton Senna conquistou seus três títulos mundiais?', 'Williams', 'Lotus', 'Ferrari', 'McLaren', 'D'),
(DEFAULT, 'Qual piloto foi campeão da Fórmula Renault 3.5 em 2014?', 'Carlos Sainz Jr.', 'Alexander Albon', 'Liam Lawson', 'Isack Hadjar', 'A'),
(DEFAULT, 'Qual equipe comprou a Jaguar no fim de 2004?', 'Mercedes', 'Ferrari', 'Red Bull Racing', 'Williams', 'C'),
(DEFAULT, 'Qual piloto é conhecido pelo apelido "El Nano"?', 'Fernando Alonso', 'Juan Manuel Fangio', 'Carlos Sainz Jr.', 'Lewis Hamilton', 'A'),
(DEFAULT, 'Qual piloto sofreu um grave acidente de esqui em 2013?', 'Niki Lauda', 'Michael Schumacher', 'Nigel Mansell', 'Sebastian Vettel', 'B'),
(DEFAULT, 'Qual piloto foi vice-campeão da Super Fórmula Japonesa em 2023?', 'Liam Lawson', 'Arvid Lindblad', 'Alexander Albon', 'Carlos Sainz Jr.', 'A'),
(DEFAULT, 'Qual equipe foi renomeada para AlphaTauri em 2020?', 'Toro Rosso', 'Jaguar', 'Minardi', 'Jordan', 'A'),
(DEFAULT, 'Qual piloto conquistou seu primeiro título mundial em 2021?', 'Lewis Hamilton', 'Max Verstappen', 'Sebastian Vettel', 'Fernando Alonso', 'B'),
(DEFAULT, 'Qual piloto brasileiro morreu no GP de San Marino de 1994?', 'Felipe Massa', 'Rubens Barrichello', 'Ayrton Senna', 'Nelson Piquet', 'C'),
(DEFAULT, 'Qual piloto foi promovido para a Red Bull Racing em 2026?', 'Arvid Lindblad', 'Liam Lawson', 'Carlos Sainz Jr.', 'Isack Hadjar', 'D'),
(DEFAULT, 'Qual piloto conquistou quatro títulos consecutivos entre 2010 e 2013?', 'Sebastian Vettel', 'Lewis Hamilton', 'Fernando Alonso', 'Nigel Mansell', 'A'),
(DEFAULT, 'Qual piloto venceu o GP de Singapura de 2023 pela Ferrari?', 'Lewis Hamilton', 'Carlos Sainz Jr.', 'Charles Leclerc', 'Fernando Alonso', 'B'),
(DEFAULT, 'Qual piloto ficou conhecido como "El Maestro"?', 'Alain Prost', 'Niki Lauda', 'Juan Manuel Fangio', 'Michael Schumacher', 'C'),
(DEFAULT, 'Qual piloto estreou na Fórmula 1 pela Minardi em 2001?', 'Fernando Alonso', 'Carlos Sainz Jr.', 'Lewis Hamilton', 'Alexander Albon', 'A'),
(DEFAULT, 'Qual equipe pertence à Red Bull GmbH além da Red Bull Racing?', 'Ferrari', 'Williams', 'Racing Bulls', 'Mercedes', 'C'),
(DEFAULT, 'Qual piloto foi campeão da Toyota Racing Series em 2019?', 'Liam Lawson', 'Arvid Lindblad', 'Isack Hadjar', 'Kimi Antonelli', 'A'),
(DEFAULT, 'Qual piloto é filho do ex-piloto Jos Verstappen?', 'Max Verstappen', 'Carlos Sainz Jr.', 'Mick Schumacher', 'Liam Lawson', 'A'),
(DEFAULT, 'Qual equipe contratou Lewis Hamilton para 2025?', 'Mercedes', 'Ferrari', 'Williams', 'McLaren', 'B'),
(DEFAULT, 'Qual piloto conquistou seu primeiro título mundial em 2005?', 'Fernando Alonso', 'Kimi Räikkönen', 'Lewis Hamilton', 'Sebastian Vettel', 'A'),
(DEFAULT, 'Qual piloto foi conhecido pelo apelido "Baby Schumi"?', 'Michael Schumacher', 'Sebastian Vettel', 'Max Verstappen', 'Nico Rosberg', 'B'),
(DEFAULT, 'Qual piloto conquistou o título mundial de 1992 pela Williams?', 'Nigel Mansell', 'Ayrton Senna', 'Alain Prost', 'Niki Lauda', 'A'),
(DEFAULT, 'Qual piloto conquistou cinco títulos mundiais entre 2000 e 2004?', 'Lewis Hamilton', 'Sebastian Vettel', 'Michael Schumacher', 'Fernando Alonso', 'C'),
(DEFAULT, 'Qual piloto venceu o GP da Austrália de 2024 pela Ferrari?', 'Charles Leclerc', 'Carlos Sainz Jr.', 'Lewis Hamilton', 'Max Verstappen', 'B'),
(DEFAULT, 'Qual piloto foi vice-campeão da GP3 em 2016?', 'Alexander Albon', 'Liam Lawson', 'Carlos Sainz Jr.', 'Isack Hadjar', 'A'),
(DEFAULT, 'Qual piloto ficou conhecido pelo apelido "O Leão"?', 'Nigel Mansell', 'Niki Lauda', 'Fernando Alonso', 'Sebastian Vettel', 'A'),
(DEFAULT, 'Qual piloto venceu o campeonato da Fórmula Regional Europeia entre os estreantes em 2021?', 'Arvid Lindblad', 'Liam Lawson', 'Isack Hadjar', 'Kimi Antonelli', 'C'),
(DEFAULT, 'Qual equipe foi adquirida pela Dorilton Capital em 2020?', 'Ferrari', 'Williams', 'McLaren', 'Racing Bulls', 'B'),
(DEFAULT, 'Qual piloto conquistou o primeiro título mundial da Red Bull Racing?', 'Mark Webber', 'Sebastian Vettel', 'Max Verstappen', 'Daniel Ricciardo', 'B'),
(DEFAULT, 'Qual piloto estreou na Fórmula 1 substituindo Daniel Ricciardo em 2023?', 'Liam Lawson', 'Arvid Lindblad', 'Isack Hadjar', 'Alexander Albon', 'A'),
(DEFAULT, 'Qual piloto conquistou dois títulos mundiais consecutivos pela Renault?', 'Fernando Alonso', 'Lewis Hamilton', 'Sebastian Vettel', 'Nigel Mansell', 'A'),
(DEFAULT, 'Qual piloto ficou conhecido como "O Patrão"?', 'Lewis Hamilton', 'Michael Schumacher', 'Ayrton Senna', 'Max Verstappen', 'A'),
(DEFAULT, 'Qual piloto conquistou três títulos mundiais pela McLaren?', 'Alain Prost', 'Ayrton Senna', 'Niki Lauda', 'Nigel Mansell', 'B'),
(DEFAULT, 'Qual piloto foi o primeiro italiano a liderar o campeonato desde Giancarlo Fisichella?', 'Antonio Giovinazzi', 'Kimi Antonelli', 'Luca Badoer', 'Jarno Trulli', 'B'),
(DEFAULT, 'Qual piloto foi campeão da Fórmula Regional da Oceania em 2025?', 'Arvid Lindblad', 'Liam Lawson', 'Isack Hadjar', 'Alexander Albon', 'A'),
(DEFAULT, 'Qual piloto conquistou o título mundial de 1984 pela McLaren?', 'Ayrton Senna', 'Niki Lauda', 'Alain Prost', 'Nigel Mansell', 'B'),
(DEFAULT, 'Qual equipe passou a usar oficialmente o nome Racing Bulls em 2025?', 'Toro Rosso', 'AlphaTauri', 'Visa Cash App RB', 'Todas as alternativas', 'D'),
(DEFAULT, 'Qual piloto conquistou sua primeira vitória na Fórmula 1 no GP da Grã-Bretanha de 2022?', 'Carlos Sainz Jr.', 'Charles Leclerc', 'Lewis Hamilton', 'Lando Norris', 'A'),
(DEFAULT, 'Qual piloto foi campeão mundial em 2008 pela McLaren?', 'Lewis Hamilton', 'Fernando Alonso', 'Kimi Räikkönen', 'Sebastian Vettel', 'A'),
(DEFAULT, 'Qual piloto conquistou o GP da Itália de 2008 pela Toro Rosso?', 'Sebastian Vettel', 'Max Verstappen', 'Daniel Ricciardo', 'Carlos Sainz Jr.', 'A'),
(DEFAULT, 'Qual piloto conquistou o campeonato da Fórmula Regional Europeia (FRECA) em 2023?', 'Arvid Lindblad', 'Kimi Antonelli', 'Liam Lawson', 'Isack Hadjar', 'B');

    
    
    