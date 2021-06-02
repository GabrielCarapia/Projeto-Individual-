CREATE DATABASE GamesHistory;

USE GamesHistory;

CREATE TABLE tbCadastro(
idCadastro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45),
nicknameJogo VARCHAR(45),
senha VARCHAR(30),
confirmarSenha VARCHAR(30)
);

CREATE TABLE tbProgressoUsuário(
idUsuario INT PRIMARY KEY,
qtd_vitoria VARCHAR(45),
qtd_derrotas VARCHAR(45),
horasJogadas TIME
);

CREATE TABLE tbAvaliacaoUsuario(
fkCadastro INT,
FOREIGN KEY (fkCadastro) REFERENCES tbCadastro(idCadastro),
fkProgreassoUsuario INT,
FOREIGN KEY (fkProgressoUsuario) REFERENCES tbProgressoUsuario(idProgressoUsuaio),
dicaUsuarios VARCHAR(1000)
);


select*from tbCadastro;
select*from tbProgressoUsuário;



