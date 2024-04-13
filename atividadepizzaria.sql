create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipoPizza varchar(255) not null,
tamanho int not null
);


select * from tb_categorias;
alter table tb_categorias modify tamanho char(1) not null;


create table tb_pizzas(
id BIGINT auto_increment primary key,
sabor varchar(255) not null,
bordaRecheada boolean not null,
saborBorda varchar(255),
preco decimal (6,2) not null
);

alter table tb_pizzas add categoriaId bigint;
alter table tb_pizzas add constraint fk_categorias_pizzas
foreign key (categoriaId)references tb_categorias(id);

insert into tb_categorias(tipoPizza, tamanho)
values ("Napolitana","M"),
("Romana","G"),
("Doce","P"),
("Vegetarianas","M"),
("Especiais","G");

insert into tb_pizzas(sabor, bordaRecheada, saborBorda, preco, categoriaId)
values("Peperoni",TRUE,"Requeijão",49.99,2),
("Portuguesa",False,NULL,39.99, 2),
("FrangoCcatupiri",TRUE,"Requeijão",49.99,1),
("Calabresa",TRUE,"Cheddar",49.99,1),
("4Queijos",TRUE,"Requeijão",49.99,1),
("BananaCnutela",False,NULL,39.99,5),
("M&M",FALSE,NULL,49.99,3),
("Romeu&Julieta",False,NULL,29.99,3);

select * from tb_pizzas;

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco BETWEEN 49.00 and 100;

select * from tb_pizzas where sabor like "%M%";

select  sabor, bordaRecheada, saborBorda, preco, tb_categorias.tamanho
From tb_pizzas inner join tb_categorias
on tb_pizzas.categoriaId = tb_categorias.id;

select  sabor, bordaRecheada, saborBorda, preco, tb_categorias.tamanho
From tb_pizzas inner join tb_categorias
on tb_pizzas.categoriaId = tb_categorias.id
where tb_pizzas.categoriaId = 3;


