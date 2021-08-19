create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
borda char,
refrigerante char,
sobremesa char,
primary key (id)
);

insert into tb_categoria (borda, refrigerante, sobremesa) values('S','N','S');
insert into tb_categoria (borda, refrigerante, sobremesa) values('N','S','S');
insert into tb_categoria (borda, refrigerante, sobremesa) values('N','N','S');
insert into tb_categoria (borda, refrigerante, sobremesa) values('S','S','N');
insert into tb_categoria (borda, refrigerante, sobremesa) values('S','N','N');
insert into tb_categoria (borda, refrigerante, sobremesa) values('S','S','N');
insert into tb_categoria (borda, refrigerante, sobremesa) values('S','S','S');
insert into tb_categoria (borda, refrigerante, sobremesa) values('N','N','N');

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
ingredientes varchar(255) not null,
preco decimal(8,2) not null,
desconto boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (nome, ingredientes, preco, desconto, categoria_id) values("Margherita", "Molho de tomate Italiano, mussarela fatiada, tomate, parmesão, orégano, manjericão e azeitonas verdes sem caroço.", 45.00, false, 1);
insert into tb_pizza (nome, ingredientes, preco, desconto, categoria_id) values("Contadina", "Molho de tomate Italiano, mussarela fatiada, antepasto de berinjela, abobrinha, tomate cereja, gorgonzola, orégano e alho poró.", 60.00, false, 2);
insert into tb_pizza (nome, ingredientes, preco, desconto, categoria_id) values("Fiorella", "Molho de tomate Italiano, mussarela fatiada, abobrinha, brie, tomates cereja, parmesão e orégano.", 35.00, false, 3);
insert into tb_pizza (nome, ingredientes, preco, desconto, categoria_id) values("Gênova", "Molho de tomate Italiano, presunto, brócolis, requeijão, orégano, alho frito e azeitonas verdes sem caroço.", 30.00, false, 4);
insert into tb_pizza (nome, ingredientes, preco, desconto, categoria_id) values("Giuseppe", "Massa de pizza sem glúten/vegana, molho de tomate Italiano, requeijão vegano, brócolis, ervilhas, tomate, cebola, orégano, alho frito e azeitonas pretas.", 55.00, false, 5);
insert into tb_pizza (nome, ingredientes, preco, desconto, categoria_id) values("Corniccione Toscano", "Fina massa Bella Capri, molho de tomate Italiano, alho laminado, gorgonzola, parmesão, azeitonas pretas e orégano.", 29.00, false, 5);

delete from tb_pizza where id = 7;
select * from tb_pizza;
select tb_pizza.nome, tb_pizza.ingredientes, tb_pizza.preco, tb_pizza.desconto, tb_categoria.borda, tb_categoria.refrigerante, tb_categoria.sobremesa from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where preco > 45;

select tb_pizza.nome, tb_pizza.ingredientes, tb_pizza.preco, tb_pizza.desconto, tb_categoria.borda, tb_categoria.refrigerante, tb_categoria.sobremesa from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where preco between 29 and 60;

select * from tb_pizza where nome like "%C%";

select tb_pizza.nome, tb_pizza.ingredientes, tb_pizza.preco, tb_pizza.desconto, tb_categoria.borda, tb_categoria.refrigerante, tb_categoria.sobremesa from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where refrigerante = 'S';
