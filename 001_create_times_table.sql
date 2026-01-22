-- First table:

 tbl_times CREATE TABLE tbl_times
  ( id INT AUTO_INCREMENT PRIMARY KEY,
   time VARCHAR(100) NOT NULL,
   pais VARCHAR(100) NOT NULL, 
   campeonato VARCHAR(100) NOT NULL 
    
); 

 -- Second table: 

 tbl_jogadores CREATE TABLE tbl_jogadores 
 ( id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  posicao VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  numero_camisa INT NOT NULL,
  id_time INT, 
  CONSTRAINT fk_time FOREIGN KEY (id_time) REFERENCES tbl_times(id)
  ON DELETE CASCADE
  ON UPDATE CASCADE

 );


CREATE TABLE tbl_tipos (
   id INT AUTO_INCREMENT PRIMARY KEY,
   descricao VARCHAR(100) NOT NULL );


CREATE TABLE tbl_etapas (
   id INT AUTO_INCREMENT PRIMARY KEY,
   descricao VARCHAR(100) NOT NULL
);


ALTER TABLE tbl_times
ADD COLUMN id_tipo INT, 
ADD COLUMN id_etapa INT,
ADD CONSTRAINT fk_tipo FOREIGN KEY (id_tipo) REFERENCES tbl_tipos(id)
   ON DELETE SET NULL 
   ON UPDATE CASCADE,
ADD CONSTRAINT fk_etapa FOREIGN KEY (id_etapa)
   REFERENCES tbl_etapas(id) 
   ON DELETE SET NULL
   ON UPDATE CASCADE;