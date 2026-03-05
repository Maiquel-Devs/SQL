/* Comando que Deleta o Banco de Dados */
DROP DATABASE cadastro;

CREATE DATABASE cadastro CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;	/* PADRÃO ATUAL: utf8mb4 suporta todos caracteres e emojis. COLLATE: regra de ordenação e busca */

USE cadastro;

/* Comando para criar a tabela pessoas */
CREATE TABLE pessoas (
    id INT NOT NULL AUTO_INCREMENT, /* NOT NULL: obrigatório. AUTO_INCREMENT: numeração automática */
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,                /* DATE: data no formato ANO-MÊS-DIA */
    sexo ENUM('M', 'F'),            /* ENUM: aceita apenas as opções listadas */
    peso DECIMAL(5,2),              /* 5 dígitos no total, 2 após a vírgula */
    altura DECIMAL(3,2),            /* 3 dígitos no total, 2 após a vírgula */
    nacionalidade VARCHAR(20) DEFAULT 'Brasil', /* DEFAULT: preenche com 'Brasil' se não for informado */
    PRIMARY KEY (id)                /* Define o id como identificador único da pessoa */
) DEFAULT CHARSET = utf8mb4;        /* Suporte para acentos */

DESCRIBE pessoas;