CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria
(
id_categoria INT NOT NULL AUTO_INCREMENT,
loja VARCHAR(255) NOT NULL,
garcom VARCHAR(255) NOT NULL,
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizza
(
id_pizza INT NOT NULL AUTO_INCREMENT,
sabor VARCHAR(255),
valor FLOAT,
bebida VARCHAR(255),
tempo_preparo FLOAT,
fk_categoria INT,
PRIMARY KEY (id_pizza),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria (id_categoria, loja, garcom) VALUE (DEFAULT, 'Azul', 'Miguel');
INSERT INTO tb_categoria VALUE (DEFAULT, 'Amarela', 'Rayssa');
INSERT INTO tb_categoria VALUE (DEFAULT, 'Verde', 'Jady');
INSERT INTO tb_categoria VALUE (DEFAULT, 'Vermelha', 'Gael');
INSERT INTO tb_categoria VALUE (DEFAULT, 'Preta', 'Livia');

SELECT * FROM tb_categoria;

INSERT INTO tb_pizza (id_pizza, sabor, valor, bebida, tempo_preparo, fk_categoria) VALUE (DEFAULT, 'Muzzarela', 20.00, 'Sprite', 00.40, 1);
INSERT INTO tb_pizza VALUE (DEFAULT, 'Cabalbresa', 23.00, 'Suco de Laranja', 00.50, 2);
INSERT INTO tb_pizza VALUE (DEFAULT, 'Frango com Catupiry', 30.00, 'Guarana', 01.00, 3);
INSERT INTO tb_pizza VALUE (DEFAULT, 'Toscana', 27.00, 'Vinho', 00.40, 4);
INSERT INTO tb_pizza VALUE (DEFAULT, 'Bahiana', 32.00, 'Cerveja', 01.10, 5);
INSERT INTO tb_pizza VALUE (DEFAULT, 'Portuguesa', 28.00, 'Whisky', 01.20, 4);
INSERT INTO tb_pizza VALUE (DEFAULT, 'Marguerita', 31.00, 'Água', 00.45, 3);
INSERT INTO tb_pizza VALUE (DEFAULT, 'Brigadeiro', 38.00, 'Coca Cola', 01.20, 2);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE valor >= 30.00;
SELECT * FROM tb_pizza WHERE valor >= 25.00 AND valor <= 35.00;

SELECT * FROM tb_pizza WHERE sabor LIKE "%B%";

SELECT * FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_categoria;

SELECT tb_pizza.id_pizza, tb_categoria.loja, tb_categoria.garcom, tb_pizza.sabor, tb_pizza.bebida, tb_pizza.valor
FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_categoria
WHERE tb_pizza.sabor LIKE "%Briga%";





