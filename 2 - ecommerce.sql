create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome VARCHAR(255) NOT NULL,
marca varchar(255) not null,
idade_recomendada int,
categoria varchar(255) not null,
valor decimal(8,2),
PRIMARY KEY(id)
);
describe tb_produtos;

insert into tb_produtos (nome, marca, idade_recomendada, categoria, valor) values
("Quebra-cabeça", "Estrella", 4, "Jogos", 59.90);
insert into tb_produtos (nome, marca, idade_recomendada, categoria, valor) values
("Blocos de montar", "LEGO", 6, "Jogos", 199.90);
insert into tb_produtos (nome, marca, idade_recomendada, categoria, valor) values
("Baby Alive", "Hasbro", 3, "Bonecas", 129.99);
insert into tb_produtos (nome, marca, idade_recomendada, categoria, valor) values
("Carrinho Hot Wheels", "Mattel", 4, "Veiculos", 19.90);
insert into tb_produtos (nome, marca, idade_recomendada, categoria, valor) values
("Banco Imobiliário", "Estrella", 8, "Jogos", 89.90);
insert into tb_produtos (nome, marca, idade_recomendada, categoria, valor) values
("Bicicleta", "Caloi", 5, "Veiculos", 59.90);
insert into tb_produtos (nome, marca, idade_recomendada, categoria, valor) values
("Barbie", "Estrella", 3, "Bonecas", 29.90);
insert into tb_produtos (nome, marca, idade_recomendada, categoria, valor) values
("Cara a cara", "Estrella", 4, "Jogos", 199.90);
select * from tb_produtos;

select * from tb_produtos where valor > 500.00;
select * from tb_produtos where valor < 500.00;

update tb_produtos set valor = 129.00 where id = 2;

