create database db_construindo_vidas;
use db_construindo_vidas;

create table tb_categorias(
id bigint auto_increment primary key,
setor varchar(255),
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

insert into tb_categorias(setor, promocao)
values("Ferramentas", 0),
("Materiais de Construção", 30),
("Acabamentos", 59),
("Hidráulica e Elétrica", 30),
("Jardim e Paisagismo", 0);

insert into tb_produtos(produto, descricao, noEstoque, preco, categoriasId)
values("Martelo","Martelo Hookton",30,29.99,1),
("Tijolos","Tijolo",11000,06.00,2),
("Tubos de PVC","Tubos Tiggre",300,19.99,4),
("Trenas","Trenas Olink",78,19.99,1),
("Tintas","Tintas Coral",100,79.99,3),
("Vigas de metal","Vigas",400,09.99,3),
("Alicates","Alicates Ferrix",90,49.99,1),
("Grama em placa","Grama",1000,39.99,5);

select * from tb_produtos where preco > 100.00;

select * from tb_produtos where preco between 70.00 and 150.00;

select * from tb_produtos where produto like "%c%";

select  produto, descricao, noEstoque, preco, tb_categorias.setor
From tb_produtos inner join tb_categorias
on tb_produtos.categoriasId = tb_categorias.id;

select  produto, descricao, noEstoque, preco, tb_categorias.setor
From tb_produtos inner join tb_categorias
on tb_produtos.categoriasId = tb_categorias.id
where tb_categorias.setor = "Ferramentas";