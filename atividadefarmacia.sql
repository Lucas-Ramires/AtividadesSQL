create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment primary key,
setor varchar(255) not null,
promocao varchar(3) not null
);

create table tb_produtos(
nome varchar(255) not null,
descricao varchar(255),
preco decimal(6,2),
noEstoque int,
categoriasId bigint
);

alter table tb_produtos add constraint fk_categorias_produtos
foreign key (categoriasId)references tb_categorias(id);

insert into tb_categorias(setor, promocao)
values ("Perfumes","Nao"),
("Medicamentos","Nao"),
("Esmaltes","Sim"),
("Doces","Nao"),
("Cosmeticos","Sim");

select * from tb_categorias;

insert into tb_produtos(nome, descricao, preco, noEstoque, categoriasId)
values("Clear Man","Shampoo Masculino",19.99,89,5),
("Kaiak","Perfume Corporal Masculino",79.99,48,1),
("Risque Pink","Esmalte Rosa Risque",09.99,103,3),
("Colorama BlueMoon","Esmalte BlueMoon Colorama",11.99,70,3),
("Dentinhos Fini","Doce Dentinhos Fini",11.99,30,4),
("Encanto Avon","Hidratante Corporal",59.99,20,5),
("Desodorante Dove Men + Care","Desodorante Dove Masculino",24.99,50,5),
("Valerimed 50mg","Valeriana Officinalis L",19.99,97,2);

select * from tb_produtos where preco between 5.00 and 60.00;

select * from tb_produtos where nome like "%c%";

select  nome, descricao, preco, noEstoque, tb_categorias.setor
From tb_produtos inner join tb_categorias
on tb_produtos.categoriasId = tb_categorias.id;

select  nome, descricao, preco, noEstoque, tb_categorias.setor
From tb_produtos inner join tb_categorias
on tb_produtos.categoriasId = tb_categorias.id
where tb_categorias.id = 5;
