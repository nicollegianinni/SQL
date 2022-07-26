

CREATE DATABASE db_rh_realiza;

USE db_rh_realiza;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (40),
telefone INT,
data_contrato DATE,
cargo VARCHAR (100),
endereco VARCHAR(200),
salario DECIMAL (11,2)
);

INSERT INTO tb_colaboradores(nome,telefone,data_contrato,cargo,endereco,salario)
VALUES ("MARIA MADALENA", 96514212, "2020-06-02", "estagiaria",  "rua apolinario ferreira", "1600.00");
INSERT INTO tb_colaboradores(nome,telefone,data_contrato,cargo,endereco,salario)
VALUES ("JOAO VICTOR", 96514215, "2020-06-02", "auxiliar de limpeza", " rua apolinario ferreira, 45","1500.00");
INSERT INTO tb_colaboradores(nome,telefone,data_contrato,cargo,endereco,salario)
VALUES ("STER MARIA", 96584114, "2020-06-02", "projetista", " rua apolinario ferreira, 45","2800.00");
INSERT INTO tb_colaboradores(nome,telefone,data_contrato,cargo,endereco,salario)
VALUES ("GIOVANNA LUNA", 96584216, "2020-06-02", "cozinheira", " rua apolinario ferreira, 45","1800.00");
INSERT INTO tb_colaboradores(nome,telefone,data_contrato,cargo,endereco,salario)
VALUES ("LUANA MARIA", 96584215, "2020-06-02", "analista de sistema", " rua apolinario ferreira, 45","5500.00");



SELECT * FROM tb_colaboradores; -- para puxar a tabela mostrando-a.
SELECT *FROM tb_colaboradores WHERE salario >2000; -- para puxar o salario maior de 2000. 

-- UPDATE tb_colaboradores set salario = 3500 WHERE id = 1 ; para adicionar um valor ao id tal.

SELECT * FROM tb_colaboradores; 
SELECT *FROM tb_colaboradores WHERE salario<2000; 

UPDATE tb_colaboradores SET salario = 1900 WHERE id = 2;