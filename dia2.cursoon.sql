CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
assunto VARCHAR (255),
preco int,
dificuldade VARCHAR (255),
PRIMARY KEY (id)
);
INSERT INTO tb_categoria (assunto, preco, dificuldade) VALUES ("matematica", 30, "Muita");
INSERT INTO tb_categoria (assunto, preco, dificuldade) VALUES ("fisica", 50, "Muita");
INSERT INTO tb_categoria (assunto, preco, dificuldade) VALUES ("quimica", 40, "baixa");
INSERT INTO tb_categoria (assunto, preco, dificuldade) VALUES ("portugues", 38, "media");
INSERT INTO tb_categoria (assunto, preco, dificuldade) VALUES ("historiaa", 55, "Muita");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
serie VARCHAR (255),
nivel VARCHAR (255),
desconto INT,
assinatura VARCHAR (255),
PRIMARY KEY(id),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);
INSERT INTO tb_produto (serie, nivel, desconto, assinatura) VALUES ("oitava serie", "intermediario", 10, "anual");
INSERT INTO tb_produto (serie, nivel, desconto, assinatura) VALUES ("setima", "bascio", 20, "trimestral");
INSERT INTO tb_produto (serie, nivel, desconto, assinatura) VALUES ("segunda serie", "intermediario", 0, "anual");
INSERT INTO tb_produto (serie, nivel, desconto, assinatura) VALUES ("primeiro ano medio", "avançado", 10, "mensal");
INSERT INTO tb_produto (serie, nivel, desconto, assinatura) VALUES ("quinta serie", "intermediario", 10, "anual");
INSERT INTO tb_produto (serie, nivel, desconto, assinatura) VALUES ("terceira serie", "avancado", 0, "mensal");
INSERT INTO tb_produto (serie, nivel, desconto, assinatura) VALUES ("primeira serie", "intermediario", 20, "anual");
INSERT INTO tb_produto (serie, nivel, desconto, assinatura) VALUES ("terceiro medio", "iniciante", 0, "anual");

SELECT * FROM tb_categoria WHERE preco < 50;
SELECT * FROM tb_categoria WHERE preco <= 3 AND preco <=50;
SELECT * FROM tb_categoria WHERE assunto LIKE "%m%";
SELECT * FROM tb_categoria
INNER JOIN tb_produto on tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id = 3;