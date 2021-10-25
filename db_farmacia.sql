create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(50),
disponivel boolean,
primary key (id)
);

insert into tb_categoria (categoria, disponivel) Values("Medicamento Fitoterapico",true);
insert into tb_categoria (categoria, disponivel) Values("Medicamento Manipulado",false);
insert into tb_categoria (categoria, disponivel) Values("Medicamento Homeopatico",true);
insert into tb_categoria (categoria, disponivel) Values("Antitérmico",true);
insert into tb_categoria (categoria, disponivel) Values("Antibioticos",true);

select*from tb_categoria;

create table tb_produto( 
id bigint auto_increment,
nome varchar(20),
preco decimal(6,2),
validade date,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES  tb_categoria(id));

insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Tetraciclina",20.00,"2022-11-04",30,5);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Cefalexina;",15.00,"2022-11-04",10,5);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Amoxicilina;",30.00,"2024-12-20",30,5);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Doxiciclina.",30.00,"2024-12-20",50,5);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Dipirona",3.00,"2024-05-25",100,4);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Adivil",10.00,"2022-05-05",40,4);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Benegrip ",03.00,"2025-08-12",70,4);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("paracetamol",05.00,"2022-06-16",50,4);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Tossemed",60.00,"2025-04-12",70,3);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Sinumed",45.00,"2022-02-07",10,3);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Homeopax",75.00,"2027-09-17",100,3);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("ORLISTATE ",150.00,"2029-09-17",0,2);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("BUPROPIONA ",95.00,"2024-03-07",0,2);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("FLUOXETINA ",65.00,"2025-05-05",0,2);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Salix alba",87.00,"2030-09-19",50,1);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Petasites hybridus",55.00,"2030-09-19",30,1);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Maytenus ilicifolia",70.00,"2025-08-04",15,1);
insert into tb_produto(nome,preco,validade,qtproduto,categoria_id) values ("Tanacetum parthenium",40.00,"2023-04-09",35,1);

select*from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select*from tb_produto where preco >50.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select*from tb_produto where preco between 03.00 and 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "%b%";

-- Categoria Medicamento Fitoterapico
select*from tb_produto join tb_categoria
on tb_categoria.id= tb_produto.categoria_id
where tb_categoria.id = 1;






	




