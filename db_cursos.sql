create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(50) not null,
certificado boolean,
idioma varchar(20),
primary key(id));

insert into tb_categoria (categoria,certificado,idioma) values("Programação",true,"Português");
insert into tb_categoria (categoria,certificado,idioma) values("Devops",true,"Português");
insert into tb_categoria (categoria,certificado,idioma) values("Ciência de dados",true,"Português");
insert into tb_categoria (categoria,certificado,idioma) values("Pacote office",true,"Português");

select*from tb_categoria;

create table tb_cursos(
id bigint auto_increment,
nome varchar (100) not null,
carga varchar (50),
totalaulas int,
ano date,
preco decimal(6,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES  tb_categoria(id));

select*from tb_cursos;

insert into tb_cursos(nome,carga,totalaulas,ano,preco,categoria_id) values ("Introdução a lógica da programação","20hrs",10,"2020-02-07",50.00,1);
insert into tb_cursos(nome,carga,totalaulas,ano,preco,categoria_id) values ("Desenvolvedor web","900hrs",280,"2021-07-03",900.00,1);
insert into tb_cursos(nome,carga,totalaulas,ano,preco,categoria_id) values ("Curso de Excel Completo","80hrs",60,"2019-02-19",500.00,4);
insert into tb_cursos(nome,carga,totalaulas,ano,preco,categoria_id) values ("Word Básico.","15hrs",10,"2021-02-11",50.00,4);
insert into tb_cursos(nome,carga,totalaulas,ano,preco,categoria_id) values ("Word Básico.","15hrs",10,"2021-02-11",50.00,4);
insert into tb_cursos(nome,carga,totalaulas,ano,preco,categoria_id) values ("Introdução a ciência de dados","30hrs",15,"2021-04-01",27.00,3);
insert into tb_cursos(nome,carga,totalaulas,ano,preco,categoria_id) values ("Power BI para Data Science","250hrs",130,"2020-07-28",300.00,3);
insert into tb_cursos(nome,carga,totalaulas,ano,preco,categoria_id) values ("Integração contínua com testes utilizando Jenkins","250hrs",230,"2020-07-28",600.00,2);
insert into tb_cursos(nome,carga,totalaulas,ano,preco,categoria_id) values ("Gitlab CI","100hrs",40,"2021-05-12",60.00,2);

select*from tb_cursos;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select* from tb_cursos where preco >50.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select* from tb_cursos where preco between 03.00 and 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.
select*from tb_cursos where nome like "%j%";


-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_cursos inner join tb_categoria
where tb_cursos.categoria_id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica
select * from tb_cursos  join tb_categoria 
on  tb_categoria.id = tb_cursos.categoria_id where tb_categoria.id = 1;






