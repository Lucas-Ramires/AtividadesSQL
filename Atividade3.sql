create database escolaccg;

use escolaccg;

create table alunos(
registro bigint auto_increment primary key,
nome varchar(255),
serie varchar(255),
idade int,
nota1_semestre decimal
);

alter table alunos modify nota1_semestre float;


insert into alunos(nome, serie, idade, nota1_semestre)
values("Luisa","6 serie", 12, 7.0),
("Renam","6 serie", 13, 3.0),
("Carlos","6 serie", 14, 4.0),
("Daniele","6 serie", 11, 9.0),
("Beatriz","6 serie", 12, 10.0),
("Henrique","6 serie", 12, 9.0),
("Jorge","6 serie", 12, 8.0),
("Vitor","6 serie", 11, 4.5);

select * from alunos where nota1_semestre > 7.0;
select * from alunos where nota1_semestre < 7.0;

update alunos set nota1_semestre = 8.5 where registro = 5;

select * from alunos;