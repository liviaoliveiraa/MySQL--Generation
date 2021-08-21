create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
organico char,
primary key(id)
);

insert into tb_categoria(tipo, organico) values ("Fruta", 'S');
insert into tb_categoria(tipo, organico) values("Verdura", 'N');
insert into tb_categoria(tipo, organico) values("Fruta", 'N');
insert into tb_categoria(tipo, organico) values("Legumes", 'S');
insert into tb_categoria(tipo, organico) values("Semente", 'N');

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2),
estoque boolean,
conservarEm varchar(255),
beneficios varchar(255),
primary key(id),
categoria_id bigint,
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) values("Abrobrinha", 4.99, true, "conversar fora da geladeira", "Possui vitaminas do complexo B.", 4);
insert into tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) values("Melancia", 3.99, false, "convervar em geladeira", "Muita água, rica em potássio e magnésio, que faz dela um excelente diurético natural.", 3);
insert into tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) values("Alface", 7.99, true, "conversar em geladeira", "Fonte de sais minerais (cálcio) e vitamina A.", 2);
insert into tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) values("Maçã", 5.99, true, "conservar fora da geladeira", "Ajuda a controlar certas doenças como diabetes, melhora a digestão, contribuindo para um melhor aproveitamento dos nutrientes e é indicada para quem deseja emagrecer, porque é rica em fibras e tem poucas calorias.", 3);
insert into tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) values("Papoula", 52.50, true, "convervar em local fresco", "Fonte de vitamina B1, atua no bom funcionamento do sistema nervoso. A semente também é rica em gorduras boas e tem efeito calmante", 5);
insert into tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) values("Rúcula", 6.99, false, "conversar em geladeira", "Protege os vasos sanguíneos.", 2);
insert into tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) values("Tomate", 7.99, true, "conversar em geladeira", "Prevenir o câncer de próstata, combater problemas cardiovasculares, cuidar da visão, da pele e do cabelo.", 4); 
insert into tb_produto(nome, preco, estoque, conservarEm, beneficios, categoria_id) values("Banana", 12.99, false, "conservar fora da geladeira", "Proteger o coração, diminui o apetite e evita cãibras.", 1);

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.preco, tb_produto.estoque, tb_produto.conservarEm, tb_produto.beneficios, tb_categoria.tipo, tb_categoria.organico from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where estoque = true;