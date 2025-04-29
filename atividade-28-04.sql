/*1) Uma lista com as profissões dos alunos e seus respectivos quantitativos: Aqui quero saber quantos são administradores, quantos são vendedores, quantos são programadores... E assim sucessivamente.

2) Quantos alunos homens e quantas mulheres nasceram após 01/01/2000.
Quero saber todas os alunos que nasceram acima de 01/01/2000
Depois agrupa-los por sexo, e ver quantos homens que quantas mulheres nasceram após de 01/01/2000

3) Uma lista com os alunos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais de 2 alunos com essa nacionalidade.
Quero saber quantas alunos moram na Argentina, quantas moram no Canadá... Assim sucessivamente
E quero mostrar os países que tem mais de 2 alunos.

4) Uma lista agrupada pela altura dos alunos, mostrando quantas pessoas pesam mais de 80kg e que estão acima da média de altura de todos os cadastrados:
Média da altura de todos os alunos
Todas as pessoas que pesam mais de 80kg 
Todas as pessoas que pesam mais de 80kg e agrupar por altura
Todas as pessoas que pesam mais de 80kg e agrupar por altura, e mostrar somente os que tem altura acima da média*/

select * from alunos;
/*1 */
SELECT prof, COUNT(nome) FROM alunos GROUP BY prof;

/*2*/
SELECT sexo, count(*) FROM alunos WHERE nascimento > '2000-01-01' group by sexo;
SELECT count(*) FROM alunos WHERE nascimento > '2000-01-01';
SELECT sexo, count(*) FROM alunos WHERE nascimento > '2000-01-01' GROUP BY sexo; 

/*3*/
select nacionalidade, count(*) from alunos WHERE nacionalidade != 'brasil' group by nacionalidade ;
select nacionalidade, count(*) from alunos WHERE nacionalidade != 'brasil' group by nacionalidade having count(nacionalidade) >= 2;

/*4*/
SELECT AVG (altura) FROM alunos;
SELECT altura, nome, count(*) from alunos WHERE peso >= 80 GROUP BY altura;
SELECT altura, count(*) from alunos WHERE peso >= 80 group by altura having altura > (SELECT AVG (altura) FROM alunos) ;