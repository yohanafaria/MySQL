create database db_escola;
use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome VARCHAR(255) NOT NULL,
idade int,
nascimento date,
responsavel varchar(255) not null,
media_geral decimal(2,1),
PRIMARY KEY(id)
);
describe tb_estudantes;

insert into tb_estudantes (nome, idade, nascimento, responsavel, media_geral) values
("Joao", 12, "2012-10-05", "Camila", 7.5);
insert into tb_estudantes (nome, idade, nascimento, responsavel, media_geral) values
("Ana", 12, "2012-11-08", "José", 6.5);
insert into tb_estudantes (nome, idade, nascimento, responsavel, media_geral) values
("Arthur", 12, "2012-12-25", "Victoria", 5.5);
insert into tb_estudantes (nome, idade, nascimento, responsavel, media_geral) values
("José Pedro", 13, "2012-01-05", "Vitor Hugo", 8.0);
insert into tb_estudantes (nome, idade, nascimento, responsavel, media_geral) values
("Enzo", 13, "2012-06-06", "Alexandre", 4.5);
insert into tb_estudantes (nome, idade, nascimento, responsavel, media_geral) values
("Leandro", 12, "2012-09-05", "Adriana", 3.0);
insert into tb_estudantes (nome, idade, nascimento, responsavel, media_geral) values
("Anderson", 12, "2012-09-02", "Fernando", 7.5);
insert into tb_estudantes (nome, idade, nascimento, responsavel, media_geral) values
("Pedro", 13, "2012-01-31", "Camila", 6.0);
select * from tb_estudantes;

select * from tb_estudantes where media_geral > 7.0;
select * from tb_estudantes where media_geral < 7.0;

update tb_estudantes set media_geral = 5.0 where id = 5;
