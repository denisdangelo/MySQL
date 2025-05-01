/*Criar uma chave estrangeira para RELACIONAMENTO entre tabelas*/
/* primeira etapa criar uma coluna na tabela que vai receber a chave estrangeira*/

ALTER TABLE alunos ADD COLUMN cursoprefere INT; /*O nome cursoprefere poderia ser idcurso, mas está com esse nome para fins didaticos*/

describe cursos;
describe alunos;

/*Segundo passo informar que a coluna se refere a chave estrangeira*/
/*o campo cursoprefere da tabela alunos está ligado ao campo idCursos da tabela cursos */
ALTER TABLE alunos ADD FOREIGN KEY (cursoprefere) REFERENCES cursos(idCursos);

/*Caminho para verificar a relação no WB*/

/* Caminho para o "Diagrama" do banco 
Database>>Enginner>>Selecione a porta>>Next>>Next>>Seleciona o banco>>Next>>Import MYSQL Table OBjects>>Execute>>Next>>Finish*/


/*Terceiro passo vincular o id do curso à chave estrangeira da tabela Alunos*/
UPDATE alunos SET cursoprefere = '1' WHERE id = '19';

