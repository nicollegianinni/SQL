
CREATE DATABASE db_CP_condutores;
USE db_CP_condutores;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
Cabo_Paralelo BOOLEAN,
Cabo_Flexivel BOOLEAN
);

CREATE TABLE tb_info (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
Nome_Cliente VARCHAR (255),
Paralelo BOOLEAN,
Cabo_Flexivel_1_5mm BOOLEAN,
Cabo_Flexivel_2_5mm BOOLEAN,
Cabo_Flixivel_4mm BOOLEAN,
Cabo_Flexivel_6mm BOOLEAN,
Cor VARCHAR (20),
Quantidade INT,
Valor DECIMAL,
condutores_id BIGINT,
FOREIGN KEY(condutores_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(Cabo_Paralelo, Cabo_Flexivel)        
VALUES 
(true,false),
(false,true),
(false,true),
(false,true),
(false,true);

INSERT INTO tb_info(Nome_Cliente, Paralelo, Cabo_Flexivel_1_5mm, Cabo_Flexivel_2_5mm, Cabo_Flixivel_4mm, Cabo_Flexivel_6mm, Cor, Quantidade, Valor, condutores_id )        
VALUES          /*para  1.5   2.5    4    6 */
("Agostinho"     ,true,false,false,false,false,"branco","2","170",1),                          /* agostinho , 2 paralelo, branco*/
("Michelane"     ,false,false,true,false,false,"preto","10","150",2),                          /* michalane , 10  flexiel 2.5mm, preto*/
("alexandre Tome",false,false,false,true,false,"azul","5","280",3),                        /* alexandre tome, 5 flexivel 4 mm , azul */
("Elvira"        ,false,true,false,false,false,"vermelho","6","110",4),                    /* elvira , 6 flexivel 1.5mm vermelho*/
("Felix"         ,false,false,false,false,true,"preto","20","150",5);                              /* Felix , 20 flevivel 6mm, preto*/

SELECT * FROM tb_categorias;
SELECT * FROM tb_info;

SELECT * FROM tb_info WHERE Valor  > 100;

SELECT * FROM tb_info WHERE Valor BETWEEN  70 AND 150;

SELECT * FROM tb_info WHERE LOWER(Nome_Cliente) LIKE "%c%" ;

SELECT * FROM tb_info INNER JOIN tb_categorias;

SELECT * FROM tb_info INNER JOIN tb_categorias ON tb_info.condutores_id=tb_categorias.id WHERE Cabo_Paralelo = true;



