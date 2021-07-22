CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_estudantes
(
matricula int NOT NULL auto_increment,
nome varchar(255),
idade varchar(255),
serie varchar(255),
media float,
primary key (matricula)
);
insert into tb_estudantes (nome, idade, serie, media)
values ('Rayssa',10,'5ª',9.5);
insert into db_escola.tb_estudantes
values (default,'Jady',9,'4ª',8.8);
insert into db_escola.tb_estudantes
values (default,'Miguel',7,'1ª',10);
insert into db_escola.tb_estudantes
values (default,'Bia',10,'5ª',7.9);
insert into db_escola.tb_estudantes
values (default,'Bruna',9,'4ª',7.0);
insert into db_escola.tb_estudantes
values (default,'Babi',7,'1ª',9.0);
insert into db_escola.tb_estudantes
values (default,'Paulo',10,'5ª',7.5);
insert into db_escola.tb_estudantes
values (default,'Felipe',9,'4ª',6.8);

SELECT * FROM tb_estudantes WHERE media >= 7.0;
SELECT * FROM tb_estudantes WHERE media < 7.0;

UPDATE tb_estudantes SET media = 7 WHERE matricula = 8;
