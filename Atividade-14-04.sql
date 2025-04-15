/* Atividade 14/04 */

DESC alunos;
SELECT nome, altura, nacionalidade FROM alunos ORDER BY peso;
/*1*/
SELECT nome FROM alunos WHERE sexo = 'F' ORDER BY nome;
/*2*/
SELECT * FROM alunos WHERE nascimento BETWEEN '2000-01-01' and '2013-12-31' ORDER BY id;

/*3*/
SELECT nome FROM alunos WHERE prof = 'contador' ORDER BY id;

/*4*/
SELECT * FROM alunos WHERE nacionalidade = 'Brasil' AND sexo = 'f' AND nome LIKE 'j%' ORDER BY nome;

/*5*/
SELECT nome, sexo, nacionalidade FROM alunos WHERE nome LIKE '%silva%' AND nacionalidade != 'brasil' AND peso < 80 ORDER BY nome;

/*6*/
SELECT MAX(altura) FROM alunos WHERE nacionalidade = 'brasil' AND sexo = 'M';
/*7*/
SELECT AVG(peso) FROM alunos;
/*8*/
SELECT AVG(peso) FROM alunos WHERE sexo = 'f';
/*9*/
SELECT min(peso), nome, sexo, nascimento, nacionalidade FROM alunos WHERE sexo = 'f' and nacionalidade <> 'brasil' and nascimento BETWEEN '1970-01-01' AND '2000-12-31';
/*10*/
SELECT COUNT(sexo) FROM alunos WHERE sexo = 'f' AND altura > 1.60;