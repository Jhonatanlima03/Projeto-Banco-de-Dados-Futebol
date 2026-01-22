INSERT INTO tbl_times (time, pais, campeonato) VALUES
('Real Madrid', 'Espanha', 'La Liga'),
('Barcelona', 'Espanha', 'La Liga'),
('Manchester United', 'Inglaterra', 'Premier League'),
('Liverpool', 'Inglaterra', 'Premier League'),
('Bayern Munich', 'Alemanha', 'Bundesliga'),
('Borussia Dortmund', 'Alemanha', 'Bundesliga'),
('Flamengo', 'Brasil', 'Brasileirão Série A'),
('Palmeiras', 'Brasil', 'Brasileirão Série A');


-- Real Madrid (id_time = 1)
INSERT INTO tbl_jogadores (nome, posicao, idade, numero_camisa, id_time) VALUES
('Vinícius Júnior', 'Atacante', 23, 7, 1),
('Luka Modric', 'Meio-campo', 38, 10, 1),
('Thibaut Courtois', 'Goleiro', 33, 1, 1);

-- Barcelona (id_time = 2)
INSERT INTO tbl_jogadores (nome, posicao, idade, numero_camisa, id_time) VALUES
('Robert Lewandowski', 'Atacante', 35, 9, 2),
('Pedri', 'Meio-campo', 22, 8, 2),
('Marc-André ter Stegen', 'Goleiro', 33, 1, 2);

-- Manchester United (id_time = 3)
INSERT INTO tbl_jogadores (nome, posicao, idade, numero_camisa, id_time) VALUES
('Marcus Rashford', 'Atacante', 28, 10, 3),
('Bruno Fernandes', 'Meio-campo', 31, 8, 3),
('André Onana', 'Goleiro', 29, 24, 3);

-- Liverpool (id_time = 4)
INSERT INTO tbl_jogadores (nome, posicao, idade, numero_camisa, id_time) VALUES
('Mohamed Salah', 'Atacante', 33, 11, 4),
('Virgil van Dijk', 'Zagueiro', 34, 4, 4),
('Alisson Becker', 'Goleiro', 33, 1, 4);

-- Bayern Munich (id_time = 5)
INSERT INTO tbl_jogadores (nome, posicao, idade, numero_camisa, id_time) VALUES
('Harry Kane', 'Atacante', 32, 9, 5),
('Joshua Kimmich', 'Meio-campo', 30, 6, 5),
('Manuel Neuer', 'Goleiro', 39, 1, 5);

-- Borussia Dortmund (id_time = 6)
INSERT INTO tbl_jogadores (nome, posicao, idade, numero_camisa, id_time) VALUES
('Marco Reus', 'Meio-campo', 36, 11, 6),
('Julian Brandt', 'Meio-campo', 30, 19, 6),
('Gregor Kobel', 'Goleiro', 28, 1, 6);

-- Flamengo (id_time = 7)
INSERT INTO tbl_jogadores (nome, posicao, idade, numero_camisa, id_time) VALUES
('Gabriel Barbosa', 'Atacante', 29, 9, 7),
('Arrascaeta', 'Meio-campo', 31, 14, 7),
('Santos', 'Goleiro', 35, 1, 7);

-- Palmeiras (id_time = 8)
INSERT INTO tbl_jogadores (nome, posicao, idade, numero_camisa, id_time) VALUES
('Dudu', 'Atacante', 33, 7, 8),
('Raphael Veiga', 'Meio-campo', 31, 23, 8),
('Weverton', 'Goleiro', 38, 21, 8);
