CREATE TABLE cursos (
  idCursos INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL UNIQUE,
  descricao TEXT,
  carga INT UNSIGNED,
  totAulas INT,
  ano YEAR DEFAULT 2025,
  PRIMARY KEY (idCursos)
) DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS cursos;

DESC cursos;

SELECT * FROM cursos;

/* Corrigir valor de uma linha */
UPDATE cursos SET nome = 'Algoritmos' WHERE idCursos = 1;

/* Corrigir valor de várias linhas */
UPDATE cursos SET nome = 'Excel Essencial', carga = '24', totAulas = '6' WHERE idCurso = '2';

UPDATE cursos SET nome = 'Excel Avançado' WHERE idCursos = '3' LIMIT 1; /* LIMIT 1 afeta apenas uma linha */

INSERT INTO cursos VALUES
(DEFAULT, 'Algoriitimos',
'Lógica de programação. Você aprenderá sobre o desenvolvimento de soluções com aplicação da lógica de programação, que permite a criação de softwares amigáveis, seguros e funcionais.',
'40', '10', DEFAULT),

(DEFAULT, 'Exel Essencl',
'Você aprenderá a criar planilhas e tabelas, fazer gráficos simples, além de salvar arquivos em nuvem e realizar cálculos usando fórmulas e funções de Excel básico.',
'40', '10', DEFAULT),

(DEFAULT, 'Excel Avçado I',
'Você aprofundará conhecimentos em funções do Excel avançado para otimizar cálculos e facilitar a construção de planilhas, banco de dados, relatórios e gráficos.',
'24', '6', DEFAULT),

(DEFAULT, 'Excel Avado II',
'Você saberá mais sobre ferramentas avançadas e em recursos de banco de dados no Excel para automatizar tarefas e aprimorar consultas, relatórios, gráficos e cálculos.',
'24', '6', DEFAULT),

(DEFAULT, 'Form Excel: do básico ao avançado',
'Você aprenderá a inserir informações em planilhas, usando recursos, funções e ferramentas avançadas do Excel 365 para criar gráficos, fazer cálculos e manipular dados.',
'72', '18', DEFAULT),

(DEFAULT, 'Desenvvidor Web Front-end 1',
'Você aprenderá a planejar e desenvolver sites responsivos com imagens.',
'60', '15', DEFAULT),

(DEFAULT, 'Desenvolvedor GeWeb Front-end 2: JavaScript',
'Você aprenderá como utilizar a codificação JavaScript para criar e usar recursos básicos de interatividade em um site.',
'40', '12', DEFAULT),

(DEFAULT, 'PHP co MySQL',
'Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP e do gerenciador de banco de dados MySQL.',
'40', '12', DEFAULT),

(DEFAULT, 'Lógica de Programação Direcionada a PHP',
'Você aprenderá a criar algoritmos e desenvolver aplicações e sistemas web com a linguagem de programação PHP.',
'40', '12', DEFAULT),

(DEFAULT, 'PHP',
'Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP.',
'24', '6', DEFAULT),

(DEFAULT, 'PHP4',
'Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP.',
'32', '8', DEFAULT),

(DEFAULT, 'Photoshop',
'Você aprenderá como tratar, manipular e editar imagens, utilizando filtros, cores, efeitos de camada e demais recursos do Adobe Photoshop.',
'36', '9', DEFAULT),

(DEFAULT, 'Photoshop para Mídias Sociais',
'Você aprenderá técnicas de criação, edição, composição e exportação de conteúdo gráfico para mídias sociais, utilizando recursos e ferramentas do Adobe Photoshop.',
'36', '9', DEFAULT),

(DEFAULT, 'Python',
'Você aprenderá a desenvolver programação web por meio da linguagem Python.',
'32', '8', DEFAULT),

(DEFAULT, 'Python I - fundamentos',
'Você aprenderá a desenvolver programação web por meio da linguagem Python, que possibilita a pesquisa e a extração de dados de páginas da internet.',
'44', '11', DEFAULT),

(DEFAULT, 'Python II - desenvolvendo aplicações web',
'Você aprenderá a desenvolver soluções para a web aplicando linguagem Python em framework de projetos de software e a manipular banco de dados.',
'60', '15', DEFAULT),

(DEFAULT, 'Introdução à Linguagem Java',
'Você aprenderá a programar aplicações básicas com a linguagem Java.',
'40', '10', DEFAULT),

(DEFAULT, 'Formação Front-end',
'Você aprenderá a planejar e produzir site com imagens, linguagem HTML5, CSS3 e Web Semântica usando codificação JavaScript.',
'108', '27', DEFAULT),

(DEFAULT, 'Desenvolvedor Web Back-end: NodeJs',
'Você aprenderá a configurar ambiente Node.js, desenvolvendo código JavaScript e executando no back-end. Também criará APTI Rest para acessar banco de dados e atender requisições HTTPs.',
'48', '12', DEFAULT),

(DEFAULT, 'POO',
'Curso de Programação Orientada ao Objeto',
'60', '15', '2022'),

(DEFAULT, 'C++',
'Curso de C++',
'40', '10', '2023'),

(DEFAULT, 'C#',
'Curso de C#',
'24', '6', '2023'),

(DEFAULT, 'PowerPoint',
'Curso completo de PowerPoint',
'24', '6', '2023'),

(DEFAULT, 'Word',
'Curso completo de Word',
'24', '6', '2023'),

(DEFAULT, 'Pacote Office',
'Curso de Word, PowerPoint e Excel',
'60', '15', '2024'),

(DEFAULT, 'Hardware',
'Curso de Montagem e Manutenção de Computadores',
'36', '9', DEFAULT),

(DEFAULT, 'Redes',
'Curso de Redes para Iniciantes0',
'40', '10', '2021'),

(DEFAULT, 'Segurança da Informação',
'Curso de Segurança',
'16', '4', '2021');
