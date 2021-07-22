CREATE DATABASE db_ecomerce;
USE db_ecomerce;
CREATE TABLE tb_produtos
(
idProdutos int NOT NULL auto_increment,
nome varchar(255) NOT NULL,
valor float NOT NULL,
tamanho varchar(255) NOT NULL,
vendedor varchar(255),
primary key (idProdutos)
);

SELECT * FROM tb_produtos;

insert into db_ecomerce.tb_produtos (nome,valor,tamanho,vendedor)
values ('Blusa',400.00,'P','Bruno');
insert into db_ecomerce.tb_produtos 
values (default,'Calça',600.00,'M','Miguel');
insert into db_ecomerce.tb_produtos 
values (default,'Tenis',900.00,'38','Artur');
insert into db_ecomerce.tb_produtos 
values (default,'Camiseta',300.00,'G','Paulo');
insert into db_ecomerce.tb_produtos 
values (default,'Sapato',1000.00,'40','Rayssa');
insert into db_ecomerce.tb_produtos 
values (default,'Sandalia',800.00,'27','Bruna');
insert into db_ecomerce.tb_produtos 
values (default,'Bermuda',1200.00,'GG','Jade');
insert into db_ecomerce.tb_produtos 
values (default,'Jaqueta',2000.00,'PP','Aline');

SELECT * FROM tb_produtos WHERE valor <= 500.00;
SELECT * FROM tb_produtos WHERE valor >= 500.00;

UPDATE db_ecomerce.tb_produtos SET valor = 1000.00 WHERE idProdutos = 8;