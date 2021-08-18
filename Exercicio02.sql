create database db_ecommerce;

use db_ecommerce;

create table produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(8,2) not null,
descricao varchar(255),
marca varchar(255),
primary key(id)
);

insert into produtos(nome, preco, descricao, marca) values("Camiseta", 59.99, "camiseta gola V masculina", "Hollister");
insert into produtos(nome, preco, descricao, marca) values("Tenis", 299.99, "tenis masculino", "Vans");
insert into produtos(nome, preco, descricao, marca) values("Boné", 99.99, "boné unissex", "Abercorombie");
insert into produtos(nome, preco, descricao, marca) values("Pulseira", 39.99, "pulseira de metal", "March, 25th");
insert into produtos(nome, preco, descricao, marca) values("Colar", 49.90, "colar pedrarias", "March, 25th");

select * from produtos where preco < 500.00;

update produtos set preco = 599.90 where id = 2;

select * from produtos where preco > 500;