CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_funcionarios
(
idFuncionarios int NOT NULL auto_increment,
nome varchar(255) NOT NULL,
idade int NOT NULL,
salario float NOT NULL,
cargo varchar(255),
primary key (idFuncionarios)
);
insert into tb_funcionarios (nome,idade,salario,cargo) 
values ('Joao',20,5000.00,'Gerente');
SELECT * FROM tb_funcionarios;
insert into db_rh.tb_funcionarios
values (default,'Thiago',18,1500.00,'Diretor');
insert into db_rh.tb_funcionarios
values (default,'Lucas',21,1500.00,'Supervisor');
insert into db_rh.tb_funcionarios
values (default,'Gui',20,7000.00,'Diretor');
insert into db_rh.tb_funcionarios
values (default,'Tami',25,8000.00,'Diretora');
SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario <= 2000.00;
SELECT * FROM tb_funcionarios WHERE salario >= 2000.00;
DELETE FROM tb_funcionarios WHERE idFuncionarios = 2;
DELETE FROM tb_funcionarios WHERE idFuncionarios = 3;
DELETE FROM tb_funcionarios WHERE idFuncionarios = 4;
DELETE FROM tb_funcionarios WHERE idFuncionarios = 9;
DELETE FROM tb_funcionarios WHERE idFuncionarios = 10;

SELECT * FROM tb_funcionarios;
