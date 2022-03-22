CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
organico CHAR,
PRIMARY KEY(id)
);

INSERT INTO tb_categoria(tipo, organico) VALUES ("Fruta", 'S');
INSERT INTO tb_categoria(tipo, organico) VALUES("Verdura", 'N');
INSERT INTO tb_categoria(tipo, organico) VALUES("Fruta", 'N');
INSERT INTO tb_categoria(tipo, organico) VALUES("Legumes", 'S');
INSERT INTO tb_categoria(tipo, organico) VALUES("Semente", 'N');

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL (6,2),
estoque BOOLEAN,
conservarEm VARCHAR(255),
beneficios VARCHAR(255),
PRIMARY KEY(id),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) VALUES ("Abrobrinha", 4.99, true, "conversar fora da geladeira", "Possui vitaminas do complexo B.", 4);
INSERT INTO tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) VALUES("Melancia", 3.99, false, "convervar em geladeira", "Muita água, rica em potássio e magnésio, que faz dela um excelente diurético natural.", 3);
INSERT INTO tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) VALUES("Alface", 7.99, true, "conversar em geladeira", "Fonte de sais minerais (cálcio) e vitamina A.", 2);
INSERT INTO tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) VALUES("Maçã", 5.99, true, "conservar fora da geladeira", "Ajuda a controlar certas doenças como diabetes, melhora a digestão, contribuindo para um melhor aproveitamento dos nutrientes e é indicada para quem deseja emagrecer, porque é rica em fibras e tem poucas calorias.", 3);
INSERT INTO tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) VALUES("Papoula", 52.50, true, "convervar em local fresco", "Fonte de vitamina B1, atua no bom funcionamento do sistema nervoso. A semente também é rica em gorduras boas e tem efeito calmante", 5);
INSERT INTO tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) VALUES("Rúcula", 6.99, false, "conversar em geladeira", "Protege os vasos sanguíneos.", 2);
INSERT INTO tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) VALUES("Tomate", 7.99, true, "conversar em geladeira", "Prevenir o câncer de próstata, combater problemas cardiovasculares, cuidar da visão, da pele e do cabelo.", 4); 
INSERT INTO tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) VALUES("Banana", 12.99, false, "conservar fora da geladeira", "Proteger o coração, diminui o apetite e evita cãibras.", 1);

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT tb_produto.nome, tb_produto.preco, tb_produto.estoque, tb_produto.conservarEm, tb_produto.beneficios, tb_categoria.tipo, tb_categoria.organico FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id WHERE estoque = TRUE;