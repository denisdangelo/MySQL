/* cadastrar clientes na tabela alunos */

INSERT INTO alunos VALUE

(default, 'Sirlene', 'Professor', '1979-08-10', 'F', '60.00', '1.56', 'Brasil’),
(default, 'José de Assis', 'Professor', '1971-04-10', 'M', '60', '1.60', default),
(default, 'Leandro', 'Professor', '1979-04-02', 'M', '98.5', '1.75', default),
(default, 'Robson', 'Professor', '1979-07-02', 'M', '65', '1.70', default),
(default, 'Andres', 'Dentista', '1970-01-01', 'M', '70', '1.70', 'Irlanda’),
(default, 'Edinaldo', 'Empreendedor', '1970-10-10', 'M', '74.65', '1.85', 'EUA’),
(default, 'Érica', 'Esteticista', '2013-12-30', 'F', '58.5', '1.68', default),
(default, 'Erick', 'Auxiliar Adm', '1993-04-22', 'M', '98.2', '1.95', default),
(default, 'Gabriela', 'Atora', '1994-03-12', 'F', '52.9', '1.62', 'Canadá’),
(default, 'Gabriel', 'Professor', '1989-12-01', 'M', '64.22', '1.65', 'Portugal’),
(default, 'Gustavo Pinheiro', 'Empreendedor', '2000-06-23', 'M', '77.44', '1.66', 'EUA’),
(default, 'Gustavo Teodoro', 'Programador', '1995-03-12', 'M', '88.5', '1.76', 'Inglaterra’),
(default, 'Julia', 'Dentista', '1988-01-01', 'F', '55.2', '1.65', 'França’),
(default, 'Luiz', 'Contador', '2011-01-01', 'M', '54.11', '1.58', default),
(default, 'Milena', 'Dentista', '2006-08-11', 'F', '88.7', '1.78', default),
(default, 'Paulo', 'Contador', '1993-07-01', 'M', '70.3', '1.65', default),
(default, 'Ryan', 'Arquiteto', '1968-10-11', 'M', '88.88', '1.64', 'Argentina’),
(default, 'Vinicius', 'Engenheiro Eletrico', '1984-11-01', 'M', '75.12', '1.63', 'Argentina’),
(default, 'Vitor', 'Engenheiro Civil', '1970-01-01', 'M', '70', '1.70', 'Uruguaí’),
(default, 'Wesley Carlos', 'Mecanico', '2000-03-03', 'M', '82', '1.78', 'Portugal’),
(default, 'Wesley Moreira', 'Jogador de Futebol', '1996-05-17', 'M', '65.8', '1.682', default);

/* puxar tudo da tabela com ordem do nome */
SELECT * FROM cursos ORDER BY nome;


/* puxar tudo da tabela com ordem do nome com parametro desc (ordem descendente) */
SELECT * FROM cursos ORDER BY nome desc;
/* puxar tudo da tabela com ordem do nome com parametro desc (ordem ascendente) */
SELECT * FROM cursos ORDER BY nome asc;


/* puxar por campos (filtro)*/
SELECT nome, carga, ano FROM cursos ORDER BY nome;
SELECT ano, carga, nome FROM cursos ORDER BY nome;
SELECT ano, carga, nome FROM cursos ORDER BY ano, nome; 

/* puxar todos os campos por ano filtrado */
SELECT * FROM cursos WHERE ano = '2023' ORDER BY nome;
SELECT  nome, carga FROM cursos WHERE ano = '2023' ORDER BY nome;

/* Busca com filtro de  */

SELECT nome, descricao FROM cursos WHERE ano <= '2023' ORDER BY nome;
SELECT nome, descricao, ano FROM cursos WHERE ano <= '2023' ORDER BY nome;

/* busca com % que seria um coringa */

/* Tudo que começa com a letra "E" */
SELECT * FROM cursos WHERE nome LIKE 'E%';
/* Tudo que termina com a letra "E" */
SELECT * FROM cursos WHERE nome LIKE '%E';
/* Tudo que tenha  a letra A e tenha algo antes e depois incluindo nada*/
SELECT * FROM cursos WHERE nome LIKE '%A%';
/* Tudo que começe com  a letra E e tenha a letra L e coisas entre eles incluindo nada */
SELECT * FROM cursos WHERE nome LIKE 'E%L%';
/* Tudo que tenha  a letra C e coisas após terminando com um caracter (inclindo numeros) */
SELECT * FROM cursos WHERE nome LIKE 'C%_';
/* Começa com a letra P tenha algo entre ele e o final (inclundo nada) e termine com P */
SELECT * FROM cursos WHERE nome LIKE 'PH%P';
/* Começa com a letra P tenha algo entre ele e o P (inclundo nada) e termine com um caractere */
SELECT * FROM cursos WHERE nome LIKE 'PH%P_';
/* Começa com a letra P dois caracteres (2 uderlines '__') entre ele e o T e termine com qualquer caracter (incluuindo nada) */
SELECT * FROM cursos Where nome LIKE 'P__T%';

/* Filtro com o parametro "nacionalidade" */
SELECT DISTINCT nacionalidade FROM alunos;

/* Seleciona o menor valor da referencia (carga) na tabela cursos que tenha o anos de 2025 */
SELECT MIN(carga) FROM cursos WHERE ano = '2025';

/* sum soma os valores */
/* somar todos os valores de (carga) da tbela cursos */
SELECT SUM(carga) FROM cursos;
/* somar todos os valores de (carga) da tbela cursos com ano 2021 */
SELECT SUM(carga) FROM cursos WHERE ano = '2021';

/* Calculo da media do valor de (carga) da tabela cursos */
SELECT AVG(carga) FROM cursos;

/* Calculo da media do valor de (carga) da tabela cursos com ano 2025 */
SELECT AVG(carga) FROM cursos WHERE ano = '2025';