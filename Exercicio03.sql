create database db_escola;

create table estudantes(
id bigint auto_increment,
nome varchar(255),
serie varchar(255),
nota int,
ra int,
primary key(id)
);

insert into estudantes (nome, serie, nota, ra) values ("Carlos", "5 ano", 5, 896325);
insert into estudantes (nome, serie, nota, ra) values ("Luiza", "7 ano", 8, 741296);
insert into estudantes (nome, serie, nota, ra) values ("Felipe", "2 ano", 10, 857301);
insert into estudantes (nome, serie, nota, ra) values ("Ana Carolina", "9 ano", 3, 857103);
insert into estudantes (nome, serie, nota, ra) values ("João Carlos", "4 ano", 9, 874650);
insert into estudantes (nome, serie, nota, ra) values ("Priscila", "6 ano", 5, 632078);
insert into estudantes (nome, serie, nota, ra) values ("Mario", "1 colegial", 7, 521308);
insert into estudantes (nome, serie, nota, ra) values ("Aline", "3 colegia;", 0, 785430);

select * from estudantes;

select * from estudantes where nota > 7;

select * from estudantes where nota < 7;

update estudantes set serie = "3 colegial" where id = 8;