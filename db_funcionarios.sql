use db_funcionarios;

-- criando a tabela
create table tb_rh (
id bigint auto_increment,
nome varchar(30) not null,
idade bigint not null,
cpf bigint not null,
email varchar(50) not null,
telefone bigint not null,

primary key(id)
);

alter table tb_rh add column salario bigint;

-- preenchendo os dados da tabela
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Renato", 36,423-455-46,"RenatoOliveira@gmail.com",11-954923456,3000);
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Marcelo", 26,42247238,"MarceloFerreira@gmail.com",11-9542943410,3000);
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Yasmin", 20,521247670,"YasminAlburquerque@hotmail.com",119674292670,5000);
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Rebeca", 23,0211245291,"RebecaHernandes@hotmail.com",119833291508,1500);
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Maya", 19,52143334800,"MayaRodriguês@gmail.com",119842130067,1200);
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Stefan", 19,1360864551,"StefanSalvatore@gmail.com",119842130067,1000);
select*from tb_rh;

select * from tb_rh where salario >2000;
select * from tb_rh where salario < 2000;

update tb_rh set cpf = 42345546 
where id = 1;
update tb_rh set telefone = 11954923456
where id =1;
update tb_rh set telefone = 119542943410
where id = 2;
update tb_rh set salario = 2500
where id = 5;
select * from tb_rh;