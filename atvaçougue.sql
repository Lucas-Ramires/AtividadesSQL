create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categorias(
id bigint auto_increment primary key,
marcas varchar(255),
promocao int
);

create table tb_produtos(
id bigint auto_increment primary key,
produto varchar(255) not null,
descricao varchar(255),
noEstoque int,
preco decimal(6,2),
categoriasId bigint
);

alter table tb_produtos add constraint fk_categorias_produtos
foreign key (categoriasId)references tb_categorias(id);

insert into tb_categorias(marcas, promocao)
values("Friboi", 0),
("Seara", 30),
("Wessel", 59),
("Korin", 30),
("Celeiro", 0);

insert into tb_produtos(produto, descricao, noEstoque, preco, categoriasId)
values("Filé","Bife de chorizo",240, 39.99,1),
("Costelas","Costela Seara",190, 59.99,2),
("Lombo","Lombo Korin",56, 29.99,4),
("Entrecot","Entrecot Wessel",100, 59.99,3),
("Fraldinha","Frandinha Friboi",40, 39.99,1),
("Maminha","Maminha Celeiro",30, 39.99,5),
("Baby Beef","Baby Beef Friboi",70, 99.99,1),
("Asa de Frango","Asas Celeiro",240, 29.99,5);

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 50.00 and 150.00;

select * from tb_produtos where produto like "%c%";

select  produto, descricao, noEstoque, preco, tb_categorias.marcas
From tb_produtos inner join tb_categorias
on tb_produtos.categoriasId = tb_categorias.id;

select  produto, descricao, noEstoque, preco, tb_categorias.marcas
From tb_produtos inner join tb_categorias
on tb_produtos.categoriasId = tb_categorias.id
where tb_categorias.marcas = "Friboi";





