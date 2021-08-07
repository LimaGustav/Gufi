USE OPTUS
GO

SELECT * FROM USUARIO;
SELECT * FROM ARTISTA;
SELECT * FROM ESTILO;
SELECT * FROM ALBUM;
SELECT * FROM ESTILO;
SELECT * FROM ALBUM_ESTILO;
GO

/*
listar todos os usu�rios administradores, sem exibir suas senhas
*/
SELECT nome, email, permissao FROM USUARIO
WHERE permissao = 2
GO


/*
listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
*/
SELECT titulo, minutosDuracao FROM ALBUM
where dataLancamento > '2000-01-01'
GO

/*
listar os dados de um usu�rio atrav�s do e-mail e senha
*/
SELECT * FROM USUARIO
WHERE email = 'g@hotmail.com' AND senha = 3242
GO

/*
listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 
*/
SELECT titulo,nomeArtista,nomeEstilo FROM ALBUM
LEFT JOIN ARTISTA
ON ALBUM.idArtista = ARTISTA.idArtista
LEFT JOIN ALBUM_ESTILO
ON ALBUM.idAlbum = ALBUM_ESTILO.idAlbum
LEFT JOIN ESTILO
ON ALBUM_ESTILO.idEstilo = ESTILO.idEstilo
WHERE disponibilidade = 1
