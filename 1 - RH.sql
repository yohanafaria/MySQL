create database db_colaboradores;
use db_colaboradores;

create table tb_dados(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT,
nascimento DATE,
cargo VARCHAR(255) NOT NULL,
salario decimal(8,2),
PRIMARY KEY(id)
);
describe tb_dados;

insert into tb_dados (nome, idade, nascimento, cargo, salario) values
("Luciana", 25, "1999-08-21", "Analista", 1300.50);
insert into tb_dados (nome, idade, nascimento, cargo, salario) values
("Joao", 44, "1980-07-15", "Contador", 4350.00);
insert into tb_dados (nome, idade, nascimento, cargo, salario) values
("Adriana", 39, "1985-07-02", "CFO", 8566.00);
insert into tb_dados (nome, idade, nascimento, cargo, salario) values
("Vitor", 28, "1995-09-18", "Programador JR", 3500.00);
insert into tb_dados (nome, idade, nascimento, cargo, admissao) values
("Jaqueline", "22", "2002-01-31", "Auxiliar", 1300.50);

select * from tb_dados;

select * from tb_dados where salario > 2000.00;
select * from tb_dados where salario < 2000.00;

update tb_dados set salario = 1600.00 where id = 1;


