/*Uma lista como o nome de todas as mulheres.
Uma lista com os dados de todos aqueles que nasceram entre 01/01/2000 e 31/12/2013
Uma lista com o nome de todos os homens que trabalham como Contador.
Uma lista com todos os dados de todas as mulheres que nasceram no Brasil e que tem seu nome iniciando com a letra V
Uma lista com nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 80kg.
Qual é a maior altura entre os estudantes homens que moram no Brasil.
Qual é a média de peso dos estudantes cadastrados.
Qual é a média de peso das mulheres cadastradas.
Qual é o menor peso entre as mulheres que nasceram fora do Brasil e entre 01/01/1970 e 31/12/2000.
Quantas mulheres tem mais de 1.60 de altura.
*/

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