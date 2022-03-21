CREATE DATABASE tb_farmacia_do_bem;

USE tb_farmacia_do_bem;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR (255),
tarja VARCHAR (255),
setor VARCHAR (255),
PRIMARY KEY (id)
);
INSERT INTO tb_categoria (tipo, tarja, setor) VALUES ("antiinflamatorioa", "vermelha", "infantil/adulto");
INSERT INTO tb_categoria (tipo, tarja, setor) VALUES ("antibiotico", "vermelha", "infantil/adulto");
INSERT INTO tb_categoria (tipo, tarja, setor) VALUES ("dor", "branca", "infantil/adulto");
INSERT INTO tb_categoria (tipo, tarja, setor) VALUES ("fitoterapeutico", "natural", "adulto");
INSERT INTO tb_categoria (tipo, tarja, setor) VALUES ("antialergicos", "amarela", "infantil/adulto");

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
uso VARCHAR (255),
preco int,
tipo VARCHAR (255),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, uso, preco, tipo, categoria_id) VALUES ("hystamin", "oral", 9, "original", 5);
INSERT INTO tb_produto (nome, uso, preco, tipo, categoria_id) VALUES ("dipirona", "oral", 17, "original", 6);
INSERT INTO tb_produto (nome, uso, preco, tipo, categoria_id) VALUES ("vonal", "sublingual", 40, "original", 5);
INSERT INTO tb_produto (nome, uso, preco, tipo, categoria_id) VALUES ("prednisona", "oral", 15, "generico", 4);
INSERT INTO tb_produto (nome, uso, preco, tipo, categoria_id) VALUES ("roacutan", "oral", 80, "original", 5);
INSERT INTO tb_produto (nome, uso, preco, tipo, categoria_id) VALUES ("agemoxi", "oral", 280, "original", 5);
INSERT INTO tb_produto (nome, uso, preco, tipo, categoria_id) VALUES ("luftal", "oral", 30, "original", 5);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco >=3 AND preco <=60;
SELECT * FROM tb_produto WHERE nome LIKE "%l%";

SELECT tb_produto.nome, tb_produto.uso, tb_produto.preco, tb_produto.categoria, tb_categoria.tipo, tb_categoria.tarja, tb_categoria.setor   
FROM tb_produto INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id; 

SELECT tb_produto.nome, tb_produto.uso, tb_produto.preco, tb_produto.categoria, tb_categoria.tipo, tb_categoria.tarja, tb_categoria.setor   
FROM tb_produto INNER JOIN 
tb_categoria ON tb_categoria.id = tb_produto.categoria_id WHERE tarja LIKE "%Preta%";
