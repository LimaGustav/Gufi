USE CLINICA
GO

SELECT * FROM DONO
SELECT * FROM PET
SELECT * FROM VETERINARIO
SELECT * FROM ESPECIE
SELECT * FROM CLINICA
SELECT * FROM ATENDIMENTO
SELECT * FROM RACA
SELECT * FROM ENDERECO
GO

/*
listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)
*/
SELECT nomeClinica, nomeVeterinario, CRMV FROM VETERINARIO
INNER JOIN CLINICA
ON VETERINARIO.idClinica = CLINICA.idClinica
WHERE CLINICA.idClinica = 1
GO

/*
listar todas as ra�as que come�am com a letra S
*/
SELECT nomeRaca FROM RACA
WHERE nomeRaca LIKE 's%'


/*
listar todos os tipos de pet que terminam com a letra O
*/
SELECT nomeEspecie FROM ESPECIE
WHERE nomeEspecie LIKE '%o'


/*
listar todos os pets mostrando os nomes dos seus donos
*/
SELECT nomePet pet, nomeDono dono FROM PET
LEFT JOIN DONO
ON PET.idDono = DONO.idDono


/*
listar todos os atendimentos mostrando o nome do veterin�rio que atendeu,
o nome, a ra�a e o tipo do pet que foi atendido,
o nome do dono do pet e o nome da cl�nica onde o pet foi atendido
*/
SELECT idAtendimento ,nomeVeterinario [Veterin�rio],
nomePet Pet, nomeEspecie [Esp�cie], nomeRaca [Ra�a], 
nomeDono Dono, nomeClinica Clinica FROM ATENDIMENTO
LEFT JOIN VETERINARIO
ON ATENDIMENTO.idVeterinario = VETERINARIO.idVeterinario
LEFT JOIN PET
ON ATENDIMENTO.idPet = PET.idPet
LEFT JOIN RACA
ON PET.idRaca = RACA.idRaca
LEFT JOIN ESPECIE
ON RACA.idEspecie = ESPECIE.idEspecie
LEFT JOIN DONO
ON PET.idDono = DONO.idDono
LEFT JOIN CLINICA
ON VETERINARIO.idClinica = CLINICA.idClinica