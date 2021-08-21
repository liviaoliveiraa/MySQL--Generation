create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
classe varchar(255), -- analgesico
fabricante varchar(255),
generico boolean,
primary key(id)
);

insert into tb_categoria(classe, fabricante, generico) values("analgésico", "aché", true);
insert into tb_categoria(classe, fabricante, generico) values("antibióticos", "eurofarma", false);
insert into tb_categoria(classe, fabricante, generico) value("sedativo", "bayer", false);
insert into tb_categoria(classe, fabricante, generico) value("anticoagulantes", "sanofi", true);
insert into tb_categoria(classe, fabricante, generico) value("analgésico", "eurofarma", true);

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
preco decimal (6,2),
recomendacao varchar(255),
hora varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, preco, recomendacao, hora, categoria_id) value("Ibuprofeno", 29.99, "Trata-se de um princípio ativo que age contra inflamações não tão intensas", "12-12 horas", 1);
insert into tb_produto (nome, preco, recomendacao, hora, categoria_id) value("Amoxicilina", 45.50, "Usado no tratamento de diversas infecções bacterianas, como pneumonia, amigdalite e problemas no trato genitourinário, a exemplo de infecção urinária.", "06-06 horas", 2);
insert into tb_produto (nome, preco, recomendacao, hora, categoria_id) value("Lorazepam", 75.00, "Controle dos distúrbios de ansiedade ou para alívio, a curto prazo, dos sintomas da ansiedade ou da ansiedade associada com sintomas depressivos.", "24-24 horas", 3);
insert into tb_produto (nome, preco, recomendacao, hora, categoria_id) value("Acenocumarol", 55.00, "É um anticoagulante que atua como antagonista da vitamina K usado na prevenção de trombose.", "24-24 horas", 4);
insert into tb_produto (nome, preco, recomendacao, hora, categoria_id) value("Paracetamol", 15.00, "É medicamento indicado para o tratamento de febre e também colabora com auxílio temporário a dores leves e moderadas.", "06-06 horas", 1);
insert into tb_produto (nome, preco, recomendacao, hora, categoria_id) value("Aspirina", 7.50, "É para o Alívio Sintomático da Dor e da Febre Causadas por Gripes e Resfriados.", "04-04 horas", 5);
insert into tb_produto (nome, preco, recomendacao, hora, categoria_id) value("Cefalexina", 7.50, "É indicada para o tratamento das seguintes infecções causadas por bactérias sensíveis à cefalexina: sinusites (inflamação dos seios da face), infecções do trato respiratório.", "08-08 horas", 2);
insert into tb_produto (nome, preco, recomendacao, hora, categoria_id) value("Xarelto", 7.50, "É indicado para o tratamento de embolia pulmonar e para prevenção de embolia pulmonar e trombose nas veias profundas recorrentes, em adultos.", "24-24 horas", 4);

select tb_produto.nome, tb_produto.preco, tb_produto.recomendacao, tb_produto.hora, tb_categoria.classe, tb_categoria.fabricante, tb_categoria.generico from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where preco > 50;

select tb_produto.nome, tb_produto.preco, tb_produto.recomendacao, tb_produto.hora, tb_categoria.classe, tb_categoria.fabricante, tb_categoria.generico from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%b%";

select tb_produto.nome, tb_produto.preco, tb_produto.recomendacao, tb_produto.hora, tb_categoria.classe, tb_categoria.fabricante, tb_categoria.generico from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.preco, tb_produto.recomendacao, tb_produto.hora, tb_categoria.classe, tb_categoria.fabricante, tb_categoria.generico from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.classe = "antibióticos";