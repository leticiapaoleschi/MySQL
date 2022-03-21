CREATE DATABASE tb_pizzaria_legal;

USE tb_pizzaria_legal;

CREATE TABLE db_categoria(
id BIGINT AUTO_INCREMENT,
tamanho VARCHAR (3),
valor int,
brinde VARCHAR (255),
PRIMARY KEY (id)
);
SELECT * FROM db_categoria;

INSERT INTO db_categoria (tamanho, valor, brinde) VALUES ("P", 30, "brotinho de cartola");
INSERT INTO db_categoria (tamanho, valor, brinde) VALUES ("M", 40, "brotinho de brigadeiro");
INSERT INTO db_categoria (tamanho, valor, brinde) VALUES ("G", 50, "brotinho de doce de leite");
INSERT INTO db_categoria (tamanho, valor, brinde) VALUES ("GG", 70, "refrigerante de dois litros");
INSERT INTO db_categoria (tamanho, valor, brinde) VALUES ("PP", 25, "lata refri");

SELECT * FROM db_categoria;

CREATE TABLE db_pizza(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR (255),
borda VARCHAR (255),
massa VARCHAR (255),
adicional VARCHAR(255),
valorAdd int,
categoria_id BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES db_categoria (id)
);

INSERT INTO db_pizza (sabor, borda, massa, adicional, valorAdd) VALUES ("calabresa", "catupiry", "tradicional", "cheddar", 7);
INSERT INTO db_pizza (sabor, borda, massa, adicional, valorAdd) VALUES ("margueritta", "requijao", "tradicional", "tomate cereja", 5);
INSERT INTO db_pizza (sabor, borda, massa, adicional, valorAdd) VALUES ("muzzarela", "nenhuma", "integral", "rucula", 3);
INSERT INTO db_pizza (sabor, borda, massa, adicional, valorAdd) VALUES ("vegana", "brocolis", "tradicional", "nenhum", 0);
INSERT INTO db_pizza (sabor, borda, massa, adicional, valorAdd) VALUES ("alho", "catupiry", "tradicional", "nenhum", 0);
INSERT INTO db_pizza (sabor, borda, massa, adicional, valorAdd) VALUES ("peperoni", "creme cheese", "tradicional", "provolone", 10);
INSERT INTO db_pizza (sabor, borda, massa, adicional, valorAdd) VALUES ("frango", "catupiry", "tradicional", "cebola", 3);
INSERT INTO db_pizza (sabor, borda, massa, adicional, valorAdd) VALUES ("costela", "catupiry", "tradicional", "barbecue", 8);

SELECT * FROM db_categoria WHERE valor > 45;

SELECT * FROM db_categoria WHERE valor >= 39 AND valor <=60;

SELECT * FROM db_pizza WHERE sabor LIKE "%c%";

SELECT * FROM db_pizza INNER JOIN db_categoria on db_pizza.id = db_categoria.id;

SELECT * FROM db_categoria
INNER JOIN db_pizza on db_pizza.categoria_id = db_categoria.id
WHERE categoria_id = 1;