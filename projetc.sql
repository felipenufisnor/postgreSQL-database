-- Database: project

-- DROP DATABASE IF EXISTS project;

CREATE DATABASE project
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	-- Database: project

-- DROP DATABASE IF EXISTS project;

CREATE DATABASE project
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
INSERT INTO aluno (
    nome,
    cpf,
    observação,
    idade,
    dinheiro,
    altura,
    ativo,
    data_nascimento,
    hora_aula,
    matriculado_em
) VALUES (
    'Felipe',
    '12345678901',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac dui et nisl vestibulum consequat. Integer vitae magna egestas, finibus libero dapibus, maximus magna. Fusce suscipit mi ut dui vestibulum, non vehicula felis fringilla. Vestibulum eget massa blandit, viverra quam non, convallis libero. Morbi ut nunc ligula. Duis tristique purus augue, nec sodales sem scelerisque dignissim. Sed vel rutrum mi. Nunc accumsan magna quis tempus rhoncus. Duis volutpat nulla a aliquet feugiat. Vestibulum rhoncus mi diam, eu consectetur sapien eleifend in. Donec sed facilisis velit. Duis tempus finibus venenatis. Mauris neque nisl, pulvinar eu volutpat eu, laoreet in massa. Quisque vestibulum eros ac tortor facilisis vulputate. Sed iaculis purus non sem tempus mollis. Curabitur felis lectus, aliquam id nunc ut, congue accumsan tellus.',
    35,
    100.50,
    1.81,
    TRUE,
    '1984-08-27',
    '17:30:00',
    '2020-02-08 12:32:45'
);

SELECT * FROM aluno;
 
SELECT * 
	FROM aluno
	WHERE ID = 1;

	UPDATE aluno
	SET nome = 'Nico',
		cpf = '10987654321',
		observação ='Teste',
		idade = 38,
		dinheiro = 15.32,
		altura = 1.90,
		ativo = FALSE,
		data_nascimento = '1980-01-15',
		hora_aula = '13:00:00',
		matriculado_em = '2020-01-02 15:00:00'
		WHERE id = 1;
  
SELECT * FROM aluno;
 
SELECT * 
	FROM aluno
	WHERE nome = 'Nico';

DELETE 
	FROM aluno
	WHERE nome = 'Diogo';

INSERT INTO aluno(
	nome,
	cpf,
	observação,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em) 
VALUES (
	'Diogo',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras finibus mollis justo in congue. Curabitur eget malesuada lorem, posuere varius ante. Mauris in est orci. Sed semper pretium velit vitae egestas. Donec finibus semper eleifend. Ut id velit ultricies, pellentesque purus nec, maximus risus. Nulla tristique tellus nec quam condimentum, sit amet convallis erat fermentum. Mauris in dictum dui. In et ante quam. Suspendisse tempor leo nec elementum mattis. Vestibulum rutrum quam risus, eu aliquam sem rhoncus eu.Vestibulum facilisis nunc at viverra luctus. Vestibulum quis tortor lacus. Sed at euismod mauris. Praesent sed neque risus. Donec sed cursus ligula. Nam cursus porttitor purus auctor consequat. In vitae turpis aliquet, euismod quam eu, finibus lacus. Curabitur volutpat tellus et pretium volutpat.',
	35,
	100.50,
	1.81,
	TRUE,
	'1984-08-27',
	'17:30:00',
	'2020-02-08 12:32:45'
);

SELECT * 
   FROM aluno;

   SELECT nome 
  FROM aluno;
  
 SELECT nome,
 		idade
  FROM aluno;
   
 SELECT nome,
 		idade,
		matriculado_em
  FROM aluno;
  
 SELECT nome,
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;
  
 SELECT nome as "Nome do Aluno",
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;  
  
 SELECT nome as "Nome do Aluno",
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;
  
 SELECT nome as "Nome do Aluno",
 		idade,
		matriculado_em as quando_se_matriculou
  FROM aluno;
  
INSERT INTO aluno (nome) VALUES('Vinicius Dias');
INSERT INTO aluno (nome) VALUES('Nico Steppat');
INSERT INTO aluno (nome) VALUES('João Roberto');
INSERT INTO aluno (nome) VALUES('Diego');

SELECT *
  FROM aluno; 
  
SELECT *
  FROM aluno
 WHERE nome= 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome <> 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome != 'Diogo';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '_iogo';
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'Di_go';
 
SELECT *
  FROM aluno
 WHERE nome NOT LIKE 'Di_go';
 
SELECT *
  FROM aluno
 WHERE nome LIKE 'D%';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '%s';
 
 SELECT *
  FROM aluno
 WHERE nome LIKE '% %';
 
SELECT *
  FROM aluno
 WHERE nome LIKE '%i%a%';
 
SELECT *
  FROM aluno
 WHERE cpf IS NULL;
 
SELECT *
  FROM aluno
 WHERE cpf IS NOT NULL;

  SELECT *
  FROM aluno
 WHERE idade = 35;
 
 SELECT *
  FROM aluno
 WHERE idade <> 36;
 
 SELECT *
  FROM aluno
 WHERE idade >= 35;
 
  SELECT *
  FROM aluno
 WHERE idade <= 35;
 
 SELECT *
  FROM aluno
 WHERE idade > 35;
 
 SELECT *
  FROM aluno
 WHERE idade < 100;
 
 SELECT *
  FROM aluno
 WHERE idade BETWEEN 10 AND 40;
 
 SELECT * FROM aluno WHERE ativo = true;
 SELECT * FROM aluno WHERE ativo = false; 
 SELECT * FROM aluno WHERE ativo IS NULL;
 
 SELECT *
  FROM aluno
 WHERE nome LIKE 'D%'
   AND cpf IS NOT NULL;
   
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
   OR nome LIKE 'Rodrigo';
   
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
    OR nome LIKE 'Rodrigo'
	OR nome LIKE 'Nico%';
	
SELECT *
  FROM aluno
 WHERE nome LIKE '%Steppat'
	AND nome LIKE 'Nico%';
	
SELECT *
  FROM aluno
 WHERE nome LIKE 'Diogo'
	OR nome LIKE 'Nico%';

SELECT * FROM aluno;
 
SELECT * 
	FROM aluno
	WHERE nome = 'Nico';

DELETE 
	FROM aluno
	WHERE nome = 'Diego';
	
INSERT INTO aluno (nome) VALUES('Diego');

SELECT *
	FROM aluno;
  
-- Primary key cant be null and must be unique.

DROP TABLE curso;
CREATE TABLE curso (
 	id INTEGER PRIMARY KEY,
	 nome VARCHAR(255) NOT NULL
 );
 
INSERT INTO curso (id, nome) VALUES (NULL, NULL);
INSERT INTO curso (id, nome) VALUES (1, 'python');
INSERT INTO curso (id, nome) VALUES (2, 'SQL');

SELECT * FROM curso;
SELECT * FROM aluno;

DROP TABLE aluno;

CREATE TABLE curso(
	id INTEGER,
	nome VARCHAR(255)
);

INSERT INTO curso (id, nome) VALUES (NULL, NULL);

SELECT * FROM curso;

DROP TABLE curso;

CREATE TABLE curso(
	id INTEGER NOT NULL,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (NULL, NULL);
INSERT INTO curso (id, nome) VALUES (1, NULL);
INSERT INTO curso (id, nome) VALUES (NULL, 'HTML');

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (1, 'Javascript');

SELECT * FROM curso;

DROP TABLE curso;

CREATE TABLE curso(
	id INTEGER NOT NULL UNIQUE,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

DROP TABLE curso;

CREATE TABLE curso(
	id INTEGER PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

SELECT * FROM curso;

SELECT * FROM curso;
SELECT * FROM aluno;

DROP TABLE aluno;

CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT  INTO aluno (nome) VALUES ('Diogo');
INSERT  INTO aluno (nome) VALUES ('Vinícius');

SELECT * FROM aluno;

SELECT * FROM curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id,curso_id)
);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);

SELECT * FROM aluno WHERE id = 1;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 2;
SELECT * FROM curso WHERE id = 1;

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (3,1);


SELECT * FROM aluno WHERE id = 3;
SELECT * FROM curso WHERE id = 1;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id,curso_id),
	
	FOREIGN KEY (aluno_id)
   REFERENCES aluno (id),
	
	FOREIGN KEY (curso_id)
   REFERENCES curso (id)
);

 /*  
   FOREIGN KEY (CAMPO_NA_TABELA_ORIGEM)
   REFERENCES TABELA_DESTINO (CAMPO_TABELA_DESTINO)
   		ON UPDATE OPÇÃO
		ON DELETE OPÇÃO
 */
 --  OPÇÃO (RESTRICT, CASCADE)

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);

INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (3,1);
INSERT  INTO aluno_curso (aluno_id,curso_id) VALUES (1,3);

SELECT * FROM aluno;

SELECT * FROM curso;


SELECT * 
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id;
  
SELECT * 
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);

SELECT aluno.nome,
	   curso.nome
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
SELECT aluno.nome as aluno,
	   curso.nome as curso
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
SELECT aluno.nome as aluno_nome,
	   curso.nome as curso_nome
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

INSERT INTO aluno (nome) VALUES ('Nico');

SELECT * FROM aluno;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
INSERT INTO curso (id,nome) VALUES (3,'CSS');

SELECT * FROM curso;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
     FROM aluno
LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
LEFT JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
     FROM aluno
RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
RIGHT JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
     FROM aluno
FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
FULL JOIN curso		   ON curso.id		   = aluno_curso.curso_id;

SELECT aluno.nome as "Nome do aluno",
	   curso.nome as "Nome do curso"
     FROM aluno
CROSS JOIN curso;

INSERT INTO aluno (nome) VALUES ('João');

DROP TABLE aluno_curso;
CREATE TABLE aluno_curso (
    aluno_id INTEGER,
        curso_id INTEGER,
        PRIMARY KEY (aluno_id, curso_id),

        FOREIGN KEY (aluno_id)
         REFERENCES aluno (id)
         ON DELETE CASCADE
         ON UPDATE CASCADE,
	
        FOREIGN KEY (curso_id)
        REFERENCES curso (id)

);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,3);

SELECT aluno.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id
	
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1)
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1)

SELECT 
        aluno.id as aluno_id,
        aluno.nome as "Nome do Aluno",
        curso.id as "curso_id",
        curso.nome as "Nome do Curso"
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id

SELECT * FROM aluno_curso;

-- Quick training

CREATE TABLE pessoas (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE telefones (
    id INTEGER PRIMARY KEY,
    pessoa_id INTEGER,
    numero VARCHAR(15) NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoas (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

INSERT INTO pessoas (id, nome) VALUES (1,'Diogo');
INSERT INTO telefones (id, pessoa_id, numero) VALUES (1,1,'(21) 98765-4321');

SELECT * FROM pessoas;
SELECT * FROM telefones;

SELECT * FROM pessoas 
JOIN telefones ON pessoas.nome = telefones.numero;

UPDATE pessoas SET id = 2 WHERE nome = 'Diogo';
DELETE FROM pessoas WHERE nome = 'Diogo';

-- ordering queries

DROP TABLE funcionarios;

CREATE TABLE funcionarios (
	id			SERIAL PRIMARY KEY,
	matricula	VARCHAR(10),
	nome		VARCHAR(255),
	sobrenome	VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M001','Diogo','Mascarenha');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M002','Vinicius','Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M003','Nico','Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M004','João','Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M005','Diogo','Mascarenha');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M006','Alberto','Martins');


SELECT * FROM funcionarios;

SELECT *
	FROM funcionarios
	ORDER BY nome;
	
SELECT *
	FROM funcionarios
	ORDER BY nome DESC;
	
SELECT *
	FROM funcionarios
	ORDER BY nome,matricula;
	
SELECT *
	FROM funcionarios
	ORDER BY nome,matricula DESC;
	
SELECT *
	FROM funcionarios
	ORDER BY 4;

SELECT *
	FROM funcionarios
	ORDER BY 3,4,2;
	
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M007','Diogo','Oliveira');

SELECT *
	FROM funcionarios
	ORDER BY 3,4,2;
	
SELECT *
	FROM funcionarios
	ORDER BY 4 DESC, nome DESC, 2 ASC;
	
SELECT *
	FROM funcionarios
	ORDER BY 4 DESC, funcionarios.nome DESC, 2 ASC;
	

SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id;
  
SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome;
  
SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome DESC;
  
SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome DESC, curso.nome;
  
SELECT * FROM curso;
SELECT * FROM aluno;	
  
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (20,3);

SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY aluno.nome DESC, curso.nome;
  
 SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY curso.nome, aluno.nome DESC;
  
 SELECT
 	   aluno.id   AS aluno_id,
	   aluno.nome as "Nome do aluno",
	   curso.id   AS curso_id,
	   curso.nome as "Nome do curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso		   ON curso.id		   = aluno_curso.curso_id
  ORDER BY curso.nome, aluno.nome;
  
  
SELECT * FROM funcionarios;

SELECT * FROM funcionarios LIMIT 5;

SELECT * 
	FROM funcionarios 
	ORDER BY nome
	LIMIT 5;
	
SELECT * 
	FROM funcionarios 
	ORDER BY id
	LIMIT 5
	OFFSET 3;
	
SELECT * 
	FROM funcionarios;
	
SELECT nome 
	FROM funcionarios;

SELECT nome
	FROM funcionarios
	ORDER BY nome;
	
SELECT DISTINCT 
	   nome
	FROM funcionarios
	ORDER BY nome;
	
SELECT DISTINCT 
	   nome,
	   sobrenome
	FROM funcionarios
	ORDER BY nome;
	
SELECT  
	   nome,
	   sobrenome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome, sobrenome
	ORDER BY nome;
	
SELECT  
	   nome,
	   sobrenome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY 1, 2
	ORDER BY nome;
	
SELECT * 
	FROM aluno
	JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id;
	
SELECT curso.nome,
	   COUNT(aluno.id)
	FROM aluno
	JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	JOIN curso ON curso.id = aluno_curso.curso_id
	GROUP BY 1
	ORDER BY 1;
	

SELECT * FROM aluno;
SELECT * FROM aluno_curso;
SELECT * FROM curso;

SELECT * 
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id;
	
SELECT curso.nome,
	   COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
	GROUP BY 1;

SELECT  curso.nome,
	   COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id


-- WHERE curso.nome =  'Javascript'

	GROUP BY 1
	HAVING COUNT(aluno.id) > 0;
	
SELECT nome	
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT (id) > 1;
	
SELECT nome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT(id) > 1;

SELECT nome,
	   COUNT(id)
	FROM funcionarios
	GROUP BY nome
	HAVING COUNT(id) =1;


















