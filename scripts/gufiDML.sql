USE GUFI
GO

INSERT INTO TIPOUSUARIO (nomeTipoUsuario)
VALUES ('Administrador'),('Comum')
GO

INSERT INTO USUARIO (idTipoUsuario,nomeUsuario,email,senha)
VALUES	(1,'Administrador','adm@adm.com','adm12345'),
		(2,'Lucas','lucas@email.com','lucas123'),
		(2,'Saulo','saulo@email.com','saulo123')
GO

INSERT INTO INSTITUICAO (cnpj,nomeFantasia,endereco)
VALUES	('47.958.036/0001-46','Escola Senai de Informática','Al. Barão de Limeira, 539')
GO

INSERT INTO TIPOEVENTO (nomeTipoEvento)
VALUES	('C#'),('ReactJs'),('SQL')
GO

INSERT INTO EVENTO (idTipoEvento,idInstituicao,nomeEvento,
acessoLivre,dataEvento,descricao)
VALUES	(1,1,'Orientação a objetos',1,'19/08/2021 15:00',
		'Conceitos sobre os pilares da programação orientada a objetos'),
		(2,1,'Ciclo de vida',0,'20/08/2021 19:00',
		'Como utilizar os ciclos de vida com a biblioteca ReactJs')
GO

INSERT INTO SITUACAO (descricao)
VALUES	('CONFIRMADA'),('RECUSADA'),('AGUARDANDO')
GO

INSERT INTO PRESENCA (idUsuario,idEvento,idSituacao)
VALUES	(2,2,3),(3,1,1)
GO