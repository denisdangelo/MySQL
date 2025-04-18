/* Caminho para abrir no termina */
/* cd C:\xampp\mysql\bin */
/* mysql -u root -p cadastro */

/* Dropar tabela */
DROP TABLE maisonomedatabela;

/* Deletar coluna */
ALTER TABLE pessoas
DROP COLUMN profissao;

CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE cadastro;

CREATE TABLE pessoas(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
nascimento DATE,
sexo ENUM('F', 'M', 'O'),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
nacionalidade VARCHAR(30) DEFAULT 'Brasil',
PRIMARY KEY (id)) DEFAULT CHARSET = utf8;

/* Estrutura da tabela */
DESCRIBE pessoas;

/* Inserir informaçoes e várias pessoas ao mesmo tempo utilizar 'values' no lugar de 'value' */
INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade) VALUES
('Vitor de Assis', '1998-11-02', 'M', '62.00', '1.71', 'Brasil'),
('Guilherme Rosa', '2007-06-06', 'M', '75.00', '1.79', 'Mongol'),
('Wellington R. Cruz', '1996-03-22', 'M', '78.9', '1.80', 'Brasil'),
('Thiagão da Apple', '1985-03-01', 'M', '112.00', '1.95', 'Brasil'),
('Caião Brabo', '1992-03-30', 'M', '125.00', '1.90', 'Brasil');

SELECT * FROM pessoas;

/* Inserir dados na tabela */
INSERT INTO pessoas (id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUE
(DEFAULT, 'Amanda Souza', '200-09-9', 'F', '65.3', '1.65', DEFAULT);

/* ALTER TABLE (Alterar campos/colunas) */
DESC ;

/* adicionar coluna na tabela */
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

/* Deletar coluna */
ALTER TABLE pessoas
DROP COLUMN profissao;

/* adicionar a coluna desejada após a coluna nome*/
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;

/* alterar coluna */
ALTER TABLE pessoas


/* UPDATE sem id altera tudo que encontra com os parametros colocados. */
UPDATE cursos
SET ano = '2030', carga = '1000'
Where ano = '2025';

/* Limitando as linhas para serem atualizadas com limit */
UPDATE cursos
SET ano = '2025', carga = '60'
Where ano = '2030'
limit 1;

/* Deletar por ID */
DELETE FROM cursos
WHERE idcursos = '8';

/* Deletar por coluna */
DELETE FROM cursos
WHERE ano = '2023';

/* Deletar por coluna com limite */
DELETE FROM cursos
WHERE ano = '2030'
LIMIT 2;

/* Deletar todos os registros (Dados e registros da tabela) */
/* Mantem as tabelas e colunas (Estrutura) */

TRUNCATE TABLE cursos;
TRUNCATE cursos;


/* BackUp */
/* Server >> Seleciona a o banco e as tabelas>> DUMP  */