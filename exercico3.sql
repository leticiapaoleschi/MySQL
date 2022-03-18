CREATE database db_escola;

use db_escola;
create table tb_alunos(
id bigint auto_increment,
nome varchar (255),
serie varchar (255),
nota int,
idade int,
matricula int,
primary key (id)

);
select * from tb_alunos;
insert into tb_alunos (nome, serie, nota, idade, matricula) values ("Luana", "terceira", 8, 9, 785496);
insert into tb_alunos (nome, serie, nota, idade, matricula) values ("Lucas", "segunda", 10, 8, 585496);
insert into tb_alunos (nome, serie, nota, idade, matricula) values ("Leticia", "primeira", 10, 7, 685496);
insert into tb_alunos (nome, serie, nota, idade, matricula) values ("Bruna", "primeiro ano medio", 6, 15, 885496);
insert into tb_alunos (nome, serie, nota, idade, matricula) values ("Gabriel", "terceiro ano medio", 4, 17, 985496);

select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;

update tb_alunos set serie = "segunda serie" where id = 3;

select * from tb_alunos;
