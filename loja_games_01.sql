create database db_generation_game_online;

use db_generation_game_online;

create table tb_class(
id int auto_increment primary key,  
nome varchar(55),
habilidade varchar(55));

create table tb_personagem(
id bigint auto_increment primary key,
nome varchar(55),
poder_ataque int,
poder_defesa int,
id_class int,
foreign key (id_class) references tb_class(id));

INSERT INTO tb_class (nome, habilidade) VALUES
('Guerreiro', 'Ataque Duplo'),
('Mago', 'Feitiço de Fogo'),
('Arqueiro', 'Flecha Perfurante'),
('Clérigo', 'Cura em Massa'),
('Assassino', 'Ataque Crítico');

INSERT INTO tb_personagem (nome, poder_ataque, poder_defesa, id_class) VALUES
('Arthur', 2500, 1500, 1),
('Merlin', 1800, 500, 2),
('Legolas', 2200, 800, 3),
('Elrond', 1500, 2000, 4),
('Lara', 2000, 1200, 5),
('Gandalf', 1700, 600, 2),
('Aragorn', 2400, 1600, 1),
('Frodo', 1600, 1000, 5);

SELECT * FROM tb_personagem WHERE poder_ataque > 2000;
SELECT * FROM tb_personagem WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE '%C%';
select * from tb_personagem inner join tb_class on tb_personagem.id_class = tb_class.id;
select * from tb_personagem inner join tb_class on tb_personagem.id_class = tb_class.id where id_class = 3;