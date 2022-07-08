/* Cria o banco de dados dbLocadora */
create database dbLocadora;

/* Seleciona o banco dbLocadora */
use dblocadora;

/* Cria a tabela */
create table tbFilmes(
	idFilme int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tituloFilme varchar(120) NOT NULL,
	duracaoFilme varchar(10) NULL,
	valorLocacao decimal(10,3) NOT NULL,
	idCategoria int NOT NULL
);

/* Cria a tabela tbCategorias */
create table tbCategorias(
	idCategoria int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nomeCategoria varchar(30) NOT NULL
);

/* Insere dados na tabela tbFilmes */
INSERT INTO tbFilmes (idFilme,tituloFilme,duracaoFilme,valorLocacao,idCategoria) VALUES
	(1,'Capitão América: O primeiro Vingador (2011)','',15.00,3),
	(2,'Capitã Marvel (2019)','',15.00,3),
	(3,'O Incrível Hulk (2008)','',15.00,3),
	(4,'Homem de Ferro (2008)','',15.00,3),
	(5,'Homem de Ferro 2 (2010)','',15.00,3),
	(6,'Thor (2011)','',15.00,3),
	(7,'Os Vingadores (2012)','',12.00,3),
	(8,'Homem de Ferro 3 (2013)','',12.00,3),
	(9,'Thor: O Mundo Sombrio (2013)','',12.00,3),
	(10,'Capitão América: O Soldado Invernal (2014)','',12.00,3),
	(11,'Guardiões da Galáxia (2014)','',12.00,3),
	(12,'Guardiões da Galáxia Vol. 2 (2017)','',12.00,3),
	(13,'Vingadores: Era de Ultron (2015)','',15.00,3),
	(14,'Homem-Formiga (2015)','',12.00,3),
	(15,'Capitão América: Guerra Civil (2016)','',21.00,3),
	(16,'Pantera Negra (2018)','',21.00,3),
	(17,'Homem-Aranha: De Volta ao Lar (2017)','',21.00,3),
	(18,'Viúva Negra (2021)','',21.00,3),
	(19,'Doutor Estranho (2016)','',21.00,3),
	(20,'Thor: Ragnarok (2017)','',21.00,3),
	(21,'Homem-Formiga e a Vespa (2018)','',21.00,3),
	(22,'Vingadores: Guerra Infinita (2018)','',21.00,3),
	(23,'Vingadores: Ultimato (2019)','',21.00,3),
	(24,'Shang-Chi e a Lenda dos Dez Aneis (2021)','',21.00,3),
	(25,'Eternos (2021)','',21.00,3),
	(26,'Homem-Aranha: Longe de Casa (2019)','',21.00,3),
	(27,'Homem-Aranha: Sem Volta para Casa (2021)','',21.00,3),
	(28,'Doutor Estranho no Multiverso da Loucura (2022)','',15.00,3);

/* Insere dados na tabela tbCategorias */
INSERT INTO tbCategorias(idCategoria, nomeCategoria) VALUES
(NULL , 'Ação'),
(NULL , 'Aventura'),
(NULL , 'Ficção Cientifica'),
(NULL , 'Terror'),
(NULL , 'Suspense');

/* Atualiza tabelas com base no nome do filme */

CREATE TABLE tbDuracoes (
	id int not null auto_increment primary key,
	duracao varchar(10) NOT NULL
);

INSERT INTO tbDuracoes (id, duracao)
VALUES
	(1, '2h04m'),
	(2, '2h04m'),
	(3, '1h52m'),
	(4, '2h06m'),
	(5, '2h05m'),
	(6, '1h54m'),
	(7, '2h23m'),
	(8, '2h10m'),
	(9, '1h52m'),
	(10, '2h16m'),
	(11, '2h02m'),	
	(12, '2h17m'),
	(13, '2h21m'),
	(14, '1h58m'),
	(15, '2h28m'),
	(16, '2h15m'),
	(17, '2h13m'),
	(18, '2h13m'),
	(19, '1h55m'),
	(20, '2h10m'),
	(21, '1h58m'),
	(22, '2h29m'),
	(23, '3h02m'),
	(24, '2h12m'),
	(25, '2h37m'),
	(26, '2h10m'),
	(27, '2h28m'),
	(28, '2h06m');

UPDATE tbFilmes
SET tbFilmes.duracaoFilme = (SELECT tbDuracoes.duracao FROM tbDuracoes WHERE tbFilmes.idFilme = tbDuracoes.id);

DROP TABLE tbDuracoes;
