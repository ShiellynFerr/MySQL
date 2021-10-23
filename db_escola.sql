use db_escola;
-- criando a tabela
create table tb_alunos (

 id bigint auto_increment,
 nome varchar(30) not null,
 sexo char,
 turma bigint not null,
 idade bigint,
 nota decimal (8.2),
 
 primary key(id)
 );
 

 -- preenchendo as colunas da tabela
 
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Bruna","F",25,20,7.5);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Cauê","M",22,18,10.0);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Sheldon","M",25,19,9.5);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Talita","F",24,26,5.0);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Wesley","M",32,27,8.5);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Lucas","M",24,22,9.5);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Maria","F",25,20,7.5);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Tiagp","M",23,19,8.6);
 
 -- visualiza a tabela preenchida
 select* from tb_alunos;
 
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;

update tb_alunos set nome = "Tiago" 
where id = 8;

select*from tb_alunos;