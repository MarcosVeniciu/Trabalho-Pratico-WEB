USE dblocadora;

/* Altera tabela tbFilme para inserir atributo quantidadeDisponivel */
ALTER TABLE tbFilme ADD quantidadeDisponivel SMALLINT;

/* Cria tabela tbUsuario */
CREATE TABLE tbUsuario (
	idUsuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(120) UNIQUE NOT NULL,
	senha VARCHAR(120) NOT NULL,
	dataRegistro DATETIME NOT NULL
);

/* Cria tabela tbLocacao */
CREATE TABLE tbLocacao (
	idLocacao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tituloFilme VARCHAR(120) UNIQUE NOT NULL,
	valorLocacao DECIMAL(6,2) NOT NULL,
	dataLocacao DATETIME NOT NULL,
	idFilme_pk INT NOT NULL,
	idUsuario_pk INT NOT NULL,
	FOREIGN KEY (idFilme_pk) REFERENCES tbFilme(idFilme),
	FOREIGN KEY (idUsuario_pk) REFERENCES tbUsuario(idUsuario)
);

/* Insere 3 usuarios na tabela tbUsuario */
INSERT INTO tbUsuario(idUsuario, email, senha, dataRegistro) VALUES
 	(1, 'gabriel@gmail.com', '123abc','1999-06-09'),
	(2, 'Marcos@gmail.com','abc123', '1998-07-08'),
	(3, 'altamiro@gmail.com', 'a1b2c3', '2000-06-15');
	
	
/* Insere 3 locações na tabela tbLocacao */
INSERT INTO tbLocacao(idLocacaO, titulofilme, valorLocacao, dataLocacao, idFilme_pk, idUsuario_pk)VALUES
	(1, 'Capitão América: O Primeiro Vingador', 22.50, '2020-02-22',1, 1),
	(2, 'Capitã Marvel (2019)', 25.50, '2022-03-24', 2, 2),
	(3, 'O Incrível Hulk (2008)', 27.75, '2022-05-06', 3, 3);
