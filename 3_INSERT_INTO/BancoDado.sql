USE cadastro;

/* Comando para inserir um registro informando as colunas */
INSERT INTO pessoas (id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES (1, 'Godofredo', '1984-01-02', 'M', 78.5, 1.83, 'Brasil'); /* Datas usam o formato ANO-MÊS-DIA */

/* Comando para inserir usando o valor padrão (DEFAULT) no ID e na nacionalidade */
INSERT INTO pessoas (id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES (DEFAULT, 'Creusa', '1920-12-30', 'F', 50.0, 1.65, DEFAULT); /* DEFAULT: O banco preenche automaticamente com as regras definidas na criação da tabela */

/* Comando para inserir sem declarar as colunas (Exige ordem exata) */
INSERT INTO pessoas VALUES (DEFAULT, 'Adalgiza', '1930-11-02', 'F', 63.2, 1.75, 'Irlanda'); /* Omitir as colunas obriga a passar todos os valores na ordem exata de criação da tabela */

/* Comando para inserir vários registros de uma só vez */
INSERT INTO pessoas VALUES 
(DEFAULT, 'Claudio', '1975-04-22', 'M', 99.0, 2.15, 'Brasil'),
(DEFAULT, 'Pedro', '1999-12-03', 'M', 87.0, 2.00, DEFAULT),
(DEFAULT, 'Janaina', '1987-11-12', 'F', 75.4, 1.66, 'EUA'); /* Os registros são separados por vírgula e apenas o último leva ponto e vírgula */

/* Comando para ver todos os registros da tabela */
SELECT * FROM pessoas; /* Mostra como a tabela ficou após as inserções */