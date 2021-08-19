create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
ataque int,
defesa int,
primary key (id)
); 

insert into tb_classe (ataque, defesa) values (2300, 1200);
insert into tb_classe (ataque, defesa) values (800, 1000);
insert into tb_classe (ataque, defesa) values (3158, 850);
insert into tb_classe (ataque, defesa) values (1800, 1950);
insert into tb_classe (ataque, defesa) values (1980, 2100);
insert into tb_classe (ataque, defesa) values (2710, 2800);
insert into tb_classe (ataque, defesa) values (2650, 1000);
insert into tb_classe (ataque, defesa) values (800, 700);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
mago boolean not null,
guerreiro boolean not null,
arqueiro boolean not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

insert into tb_personagem (nome, mago, guerreiro, arqueiro, classe_id) values ("Marciel", true, false, false, 1);
insert into tb_personagem (nome, mago, guerreiro, arqueiro, classe_id) values ("Maria", false, true, false, 2);
insert into tb_personagem (nome, mago, guerreiro, arqueiro, classe_id) values ("Otávio", false, false, true, 3);
insert into tb_personagem (nome, mago, guerreiro, arqueiro, classe_id) values ("Helena", false, false, true, 4);
insert into tb_personagem (nome, mago, guerreiro, arqueiro, classe_id) values ("Carol", true, false, false, 5);

select tb_personagem.nome, tb_personagem.mago, tb_personagem.guerreiro, tb_personagem.arqueiro, tb_classe.ataque, tb_classe.defesa from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where ataque > 2000;

select tb_personagem.nome, tb_personagem.mago, tb_personagem.guerreiro, tb_personagem.arqueiro, tb_classe.ataque, tb_classe.defesa from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select tb_personagem.nome, tb_personagem.mago, tb_personagem.guerreiro, tb_personagem.arqueiro, tb_classe.ataque, tb_classe.defesa from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where arqueiro = 1;




