create database db_rh;

use db_rh;

create table funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
cargo varchar(255) not null,
salario decimal(8,2),
primary key(id)
);

insert into funcionarios (nome, idade, cargo, salario) values("Lívia", 27, "desenvolvedora jr", 3500.00);
insert into funcionarios (nome, idade, cargo, salario) values("Carla", 27, "desenvolvedora front-end jr", 3800.00);
insert into funcionarios (nome, idade, cargo, salario) values("Jéssica", 22, "design", 3500.00);
insert into funcionarios (nome, idade, cargo, salario) values("Cybelle", 24, "analista de banco de dados", 4200.00);
insert into funcionarios (nome, idade, cargo, salario) values("Mayara", 29, "desenvolvedora full stack pleno", 4800.00);

select * from funcionarios;

update funcionarios set salario = 1800.00 where id = 1;

select * from funcionarios where salario > 2000.00;

select * from funcionarios where salario < 2000.00;

update funcionarios set salario = 3500.00 where id = 1;

