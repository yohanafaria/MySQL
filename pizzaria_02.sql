create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment primary key,
nome varchar(50) not null,
descricao varchar(250) not null
);

create table tb_pizzas(
id bigint auto_increment primary key,
nome varchar(50) not null,
preco decimal(3,2) not null,
tamanho varchar(20) not null,
categoria_id bigint,
foreign key (categoria_id) references tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas com ingredientes clássicos'),
('Gourmet', 'Pizzas com ingredientes especiais e sofisticados'),
('Vegetariana', 'Pizzas com opções sem carne'),
('Doce', 'Pizzas com coberturas doces'),
('Especial', 'Pizzas com combinações exclusivas');

INSERT INTO tb_pizzas (nome, preco, tamanho, categoria_id) VALUES
('Margherita', 40.00, 'Média', 1),
('Pepperoni', 50.00, 'Grande', 1),
('Quatro Queijos', 55.00, 'Grande', 2),
('Ratatouille', 60.00, 'Gigante', 2),
('Vegetariana', 45.00, 'Média', 3),
('Chocolate', 35.00, 'Pequena', 4),
('Frutas Tropicais', 52.00, 'Média', 4),
('Calabresa', 48.00, 'Grande', 5);

alter table tb_pizzas
modify preco decimal(5,2);

select * from tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco between 50.00 and 100.00;
select * from tb_pizzas where nome like '%M%';
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id;
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id where tb_categorias.id = 1;
