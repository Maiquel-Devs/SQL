/*Comando para criar um Banco de Dados*/
CREATE DATABASE cadastro;

/*Comando para Ativar o Banco de Dados*/
USE cadastro;

/*Comando para criar Tabela*/
CREATE TABLE pessoas (
    nome VARCHAR(30),   /* Definição das Colunas e Tipos de Dados */
    idade TINYINT,
    sexo CHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacionalidade VARCHAR(20)
);

/*Comando para Mostrar Todos os Bancos de Dados no servidor*/
SHOW DATABASES;


/*Comando para mostrar tabelas nesse Banco de Dados*/
SHOW TABLES;

/*Comando para descrever a estrutura e os campos da tabela*/
DESCRIBE pessoas;