create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

create table tb_categorias(
id bigint auto_increment primary key,
area varchar(255),
promocao int
);

select * from tb_categorias;

create table tb_cursos(
id bigint auto_increment primary key,
nomeCurso varchar(255) not null,
descricao varchar(255),
tipoCurso varchar(255) not null,
preco decimal(6,2) not null,
categoriasId bigint
);

alter table tb_cursos add constraint fk_categorias_cursos
foreign key (categoriasId)references tb_categorias(id);

insert into tb_categorias(area, promocao)
values("Tecnologia da Informacao", 500),
("Soft Skills", 0),
("Culinaria", 100),
("Educacao", 0),
("Financas", 0);

insert into tb_cursos(nomeCurso, descricao, tipoCurso, preco, categoriasId)
values("Promacao C#","Curso Do 0 ao Avancado C#","Online",29.99,1),
("Soft Skills para Trabalho","Aprendera as melhores Softs Skills para se destacar","Online",59.99,2),
("A Arte de Poupar","Aqui voce ira aprender a ter sempre aquele dinheirinho guardado no final do mes","Online",39.99,5),
("Programação FullStack Javascript","Aqui voce ira aprender desde o Front ao Back para se fornar Fullstack","Online",199.99,1),
("Curso para Policia Militar de São Paulo","Aqui disponibilizamos aulas e apostila online garantir sua aprovacao","Online",499.99,4),
("Culinaria Japonesa","Aprenda sobre a gastronomia japonesa e se torne um chefe","Presencial",299.99,3),
("Curso para Professores","Aprenda pegar a atencao de seus alunos","Presencial",199.99,4),
("Do 0 ao Milhão","Aprende os melhores metodos para alcancar seu primeiro milhao","Online",499.99,5);


select * from tb_cursos where preco > 498.00;

select * from tb_cursos where preco between 30.00 and 300.00;

select * from tb_cursos where nomeCurso like "%j%";

select  nomeCurso, descricao, tipoCurso, preco, tb_categorias.area
From tb_cursos inner join tb_categorias
on tb_cursos.categoriasId = tb_categorias.id;

select  nomeCurso, descricao, tipoCurso, preco, tb_categorias.area
From tb_cursos inner join tb_categorias
on tb_cursos.categoriasId = tb_categorias.id
where tb_categorias.area = "Tecnologia da Informacao";