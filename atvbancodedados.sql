
create table tb_colaboradores(
registro bigint auto_increment primary key,
nome varchar(50) not null,
cargo varchar(255) not null,
contratado date not null,
salario decimal
);

insert into tb_colaboradores(nome, cargo, contratado, salario)
values("Luis","Operador de Loja","2021-07-10",3400),
("Pamela","Gerente Vendas","2022-04-09",6000),
("Danielle Ferreira","Contadora","2023-08-19",5000),
("Felipe Santiago","Gerente RH","2020-08-29",4000),
("Stephane Steug","Gerente Marketing","2019-06-09",5000);

select * from tb_colaboradores where salario > 5000;
select * from tb_colaboradores where salario < 5000;

update tb_colaboradores set salario = 3600 where registro =1;

select * from tb_colaboradores;







