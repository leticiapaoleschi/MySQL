CREATE database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
tipo varchar (255),
preço int,
marca varchar (255),
tamanho varchar (255),
 primary key (id)

);
insert into tb_produtos (tipo, preço, marca, tamanho) values("Camiseta", 40, "Hollister", "pp");
insert into tb_produtos(tipo, preco, marca, tamanho) values("Vestido", 300, "johnjohn", "p");
insert into tb_produtos(tipo, preco, marca, tamnho) values("Tenis", 299, "Vans", "big");
insert into tb_produtos(tipo, preco, marca, tamnho) values("calça", 400, "leves", "gg");
insert into tb_produtos(tipo, preco, marca, tamnho) values("anel", 500, "pratas", "pequeno");

select * from tb_produtos where preço < 400;

update tb_produtos set preço = 800 where id = 2;

select * from tb_produtos where preço > 400;