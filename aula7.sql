/*vincular muitos alunos a muitos cursos*/
SELECT * FROM alunos;
SELECT * FROM cursos;
SELECT * FROM prefere;
desc prefere;

/*Primeiro criar a tabela que vai relacionar as duas tabelas*/
CREATE TABLE prefere(
idprefere INT NOT NULL AUTO_INCREMENT, 
data date, 
idalunos int, 
idcursos int, 
PRIMARY KEY(idprefere), 
FOREIGN KEY (idalunos) REFERENCES alunos(id),
FOREIGN KEY(idcursos) REFERENCES cursos(idcursos)
)DEFAULT CHARSET utf8;


/*segundo inserir valores a tabela*/
INSERT INTO prefere VALUES 
(DEFAULT,'2025-05-05','17','1');

SELECT alunos.nome, alunos.id, prefere.idalunos
FROM alunos
JOIN prefere
ON alunos.id = prefere.idalunos;

SELECT * FROM alunos
JOIN prefere
ON alunos.id = prefere.idalunos
JOIN cursos
ON cursos.idcursos = prefere.idCursos
ORDER BY alunos.nome;


SELECT alunos.nome, cursos.nome, prefere.data, cursos.id, cursos, FROM alunos
JOIN prefere
ON alunos.id = prefere.idalunos
JOIN cursos
ON cursos.idcursos = prefere.idCursos
ORDER BY alunos.nome;
/*DELETAR UMA COLUNA*/
ALTER TABLE alunos DROP COLUMN cursoprefere;