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

CREATE TABLE tbJogo(
idJogo INT PRIMARY KEY AUTO_INCREMENT,
nomeJogo VARCHAR(40)
);

CREATE TABLE tbDicadoUsuario(
idDica INT PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR(100),
fkCadastro INT,
FOREIGN KEY (fkCadastro) REFERENCES tbCadastro(idCadastro)
);


CREATE TABLE tbProgresso(
fkCadastroProgresso INT,
FOREIGN KEY (fkCadastroProgresso) REFERENCES tbCadastro(idCadastro),
fkJogo INT,
FOREIGN KEY (fkJogo) REFERENCES tbJogo(idJogo),
dataHoraJogada DATETIME,
PRIMARY KEY (fkCadastroProgresso, fkJogo, dataHoraJogada),
qtd_vitoria VARCHAR(45),
qtd_derrotas VARCHAR(45)
);

select*from tbCadastro;

drop database GamesHistory;





