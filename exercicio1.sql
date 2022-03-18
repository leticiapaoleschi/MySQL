CREATE database tb_rh;

use tb_rh;
create table tb_funcionario(
id bigint auto_increment,
nome varchar (255),
cargo varchar (255),
idade int,
salario int,
primary key(id)
);
insert into tb_funcionario (nome, cargo, idade, salario) values ("lucas", "engenheiro", 40, 7000);
insert into tb_funcionario (nome, cargo, idade, salario) values ("leticia", "desevolvedora", 30, 6000);
insert into tb_funcionario (nome, cargo, idade, salario) values ("lena", "gerente", 30, 2000);
insert into tb_funcionario (nome, cargo, idade, salario) values ("bruna", "estagiaria", 18, 800);
insert into tb_funcionario (nome, cargo, idade, salario) values ("ricardo", "publicitario", 23, 1700);
select * from tb_funcionario;
select salario from tb_funcionario;
select * from tb_funcionario where salario > 2000;
select * from tb_funcionario where salario < 2000;
