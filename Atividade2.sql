create database e_commerce;

use e_commerce;

create table tb_produtos1(
id bigint auto_increment primary key,
nome varchar(50) not null,
tipo varchar(255) not null,
promocao boolean not null,
preco decimal
);

insert into tb_produtos1(nome, tipo, promocao, preco)
values("Shampoo Clear Men","Beleza",false,26),
("Veja Limpeza Profunda","Limpeza",true,20),
("Doritos","Biscoito",false,08),
("Batata Ruffles","Biscoito",true,10),
("Frango Friboi","Animal",false,20),
("Danone Danette Chocolate","Sobremesa",false,03),
("Heinneken","Alcoolicos",true,08),
("Whisky","Alcoolicos",false,150);

select * from tb_produtos1 where preco > 10;
select * from tb_produtos1 where preco < 10;
update tb_produtos1 set preco = 140 where id = 8;

select * from tb_produtos1;






