create database  db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao varchar(255) not null
    );
    
CREATE TABLE tb_produtos (
    id bigint AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10, 2),
    quantidade INT,
    id_categoria bigint,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos farmacêuticos para tratamento de doenças'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza'),
('Suplementos', 'Suplementos alimentares e vitaminas'),
('Higiene', 'Produtos para higiene pessoal e doméstica'),
('Curativos', 'Materiais para primeiros socorros e curativos');

INSERT INTO tb_produtos (nome, valor, quantidade, id_categoria) VALUES
('Paracetamol', 15.00, 50, 1),
('Aspirina', 18.00, 30, 1),
('Shampoo Antiqueda', 25.00, 40, 2),
('Creme Hidratante', 30.00, 25, 2),
('Multivitamínico', 45.00, 60, 3),
('Proteína Whey', 75.00, 15, 3),
('Sabonete Antibacteriano', 10.00, 100, 4),
('Curativo Adhesivo', 8.00, 80, 5);

select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor between 5.00 and 60.00;
select * from tb_produtos where nome like "%C%";
select * from tb_produtos inner join tb_categorias on tb_produtos.id_categoria = tb_categorias.id;
select * from tb_produtos inner join tb_categorias on tb_produtos.id_categoria = tb_categorias.id where tb_categorias.id = 1;