create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment primary key,
classe varchar(255) not null,
tipoAtaque varchar(255) not null
);

insert into tb_classes(classe, tipoAtaque)
values("Lutador","Melee"),
("Atirador","HighRanged"),
("Mago","MediumRanged"),
("Suporte","LowRanged"),
("Assassino","Melee"),
("Tanque","Melee");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment primary key,
nome varchar(255) Not Null,
raca varchar(255) NOT NULL,
dano INT NOT NULL,
defesa int not null
);

alter table tb_personagens add classeId bigint;

alter table tb_personagens add constraint fk_produtos_categorias
foreign key (classeId) references tb_classes(id);
 
 insert into tb_personagens (nome, raca, dano, defesa, classeId)
 values("Ornn","Yordle",2000,5000,6),
 ("MasteYi","Ioniano",4000,2000,1),
 ("Veigar","Yordle",6000,1000,3),
 ("Katarina","Noxiana",6000,3000,5),
 ("Draven","Noxiano",6000,2000,2),
 ("Azir","Shurimano",5000,2000,3),
 ("Lux","Demaciana",5000,3000,3),
 ("Jayce","Piltoniano",5500,2000,1);
 
 insert into tb_personagens (nome, raca, dano, defesa, classeId)
 values("Taric","Demaciano",1000,6000,4);
 
 select * from tb_personagens;
 
select * from tb_personagens where dano > 2000;

select * from tb_personagens where defesa = 1000 and defesa < 2000;

select * from tb_personagens where nome like "%c%";

select nome, raca, dano, defesa, tb_classes.classe, tb_classes.tipoAtaque
from tb_personagens inner join tb_classes on tb_personagens.classeId = tb_classes.id;

select nome, raca, dano, defesa, tb_classes.classe, tb_classes.tipoAtaque
from tb_personagens inner join tb_classes on tb_personagens.classeId = tb_classes.id
where classe = "Atirador";

