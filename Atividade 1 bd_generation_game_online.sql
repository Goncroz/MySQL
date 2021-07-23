CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe
(
idClasse int NOT NULL auto_increment,
nomeClasse varchar(255),
categoria varchar(255),
primary key(idClasse)
);
CREATE TABLE tb_personagem
(
idPersonagem int NOT NULL auto_increment,
nomePersonagem varchar(255) NOT NULL,
ataque int NOT NULL,
defesa int NOT NULL,
arma varchar(255),
fk_idClasse int,
primary key (idPersonagem),
foreign key (fk_idClasse) references tb_classe(idClasse)
);



USE db_generation_game_online;
insert into tb_classe (idClasse, nomeClasse, categoria) values (DEFAULT,'Outra Escola','sangue puro');
insert into tb_classe (idClasse, nomeClasse, categoria) values (DEFAULT,'Lufa-Lufa','meio sangue');
insert into tb_classe (idClasse, nomeClasse, categoria) values (DEFAULT,'Grifinoria','meio sangue');
insert into tb_classe (idClasse, nomeClasse, categoria) values (DEFAULT,'Corvinal','sangue puro');
insert into tb_classe (idClasse, nomeClasse, categoria) values (DEFAULT,'Sonserina','sangue puro');

SELECT * FROM tb_classe;

insert into tb_personagem (idPersonagem, nomePersonagem, ataque, defesa, arma, fk_idClasse) values (DEFAULT, 'Dumbleodore',9000, 9000, 'feitiços', 3);
insert into tb_personagem (idPersonagem, nomePersonagem, ataque, defesa, arma, fk_idClasse) values (DEFAULT, 'McGonagal',7000, 5000, 'transfiguração', 3);
insert into tb_personagem (idPersonagem, nomePersonagem, ataque, defesa, arma, fk_idClasse) values (DEFAULT, 'Snape',6000, 8000, 'poções', 5);
insert into tb_personagem (idPersonagem, nomePersonagem, ataque, defesa, arma, fk_idClasse) values (DEFAULT, 'Voldemort',9000, 7000, 'feitiços', 5);
insert into tb_personagem (idPersonagem, nomePersonagem, ataque, defesa, arma, fk_idClasse) values (DEFAULT, 'Belatrix',8000, 6000, 'feitiços', 5);
insert into tb_personagem (idPersonagem, nomePersonagem, ataque, defesa, arma, fk_idClasse) values (DEFAULT, 'Harry',1900, 1900, 'voar', 3);
insert into tb_personagem (idPersonagem, nomePersonagem, ataque, defesa, arma, fk_idClasse) values (DEFAULT, 'Hermione',5000, 6000, 'feitiços', 3);
insert into tb_personagem (idPersonagem, nomePersonagem, ataque, defesa, arma, fk_idClasse) values (DEFAULT, 'Rony',1900, 19000, 'aparatação', 3);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa <= 2000 and defesa >= 1000;

SELECT * FROM tb_personagem WHERE nomePersonagem like "%H%";

SELECT * FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.idClasse = tb_personagem.fk_idClasse;

SELECT tb_personagem.idPersonagem, tb_personagem.nomePersonagem, tb_classe.nomeClasse, tb_personagem.arma
FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.idClasse = tb_personagem.fk_idClasse
WHERE tb_personagem.arma = 'feitiços';


