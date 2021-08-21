create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
marca varchar(255) not null,
segmento varchar(255),
primary key(id)
);

insert into tb_categoria(marca, segmento) values ("Tigre", "Instalações hidráulicas");
insert into tb_categoria(marca, segmento) values("Vedacit", "Produtos químicos");
insert into tb_categoria(marca, segmento) values("Duratex", "Revestimento");
insert into tb_categoria(marca, segmento) values("Cimento Votorantim", "Cimento");
insert into tb_categoria(marca, segmento) values("Viapol", "Mantas asfálticas");

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2),
estoque boolean,
cor varchar(255),
segmento varchar(255),
primary key(id),
categoria_id bigint,
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco, estoque, cor, segmento, categoria_id) values("Piche", 65.00, true, "preto", "construção civil;", 5);
insert into tb_produto(nome, preco, estoque, cor, segmento, categoria_id) values("Canos de tubulação", 15.00, true, "branco", "construção civil.", 1);
insert into tb_produto(nome, preco, estoque, cor, segmento, categoria_id) values("Tinta", 81.00, false, "diversos", "construção civil", 2);
insert into tb_produto(nome, preco, estoque, cor, segmento, categoria_id) values("Rejunte", 17.50, true, "branco", "construção civil", 4);
insert into tb_produto(nome, preco, estoque, cor, segmento, categoria_id) values("Cimento", 17.50, false, "incolor", "construção civil", 4);
insert into tb_produto(nome, preco, estoque, cor, segmento, categoria_id) values("Piso laminado", 26.99, false, "madeira", "construção civil", 3);
insert into tb_produto(nome, preco, estoque, cor, segmento, categoria_id) values("Torneira bi-focal", 102.99, true, "prata", "construção civil", 1); 
insert into tb_produto(nome, preco, estoque, cor, segmento, categoria_id) values("Piso porcelanato", 57.99, true, "diversos", "construção civil", 3);

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.preco, tb_produto.estoque, tb_produto.cor, tb_produto.segmento, tb_categoria.marca, tb_categoria.segmento from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where estoque = true;