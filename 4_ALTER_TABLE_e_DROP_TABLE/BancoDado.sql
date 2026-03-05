USE cadastro;

/* Comando para visualizar a estrutura da tabela (colunas e regras) */
DESCRIBE pessoas; /* Pode ser abreviado para DESC pessoas; */

/* Comando para adicionar uma nova coluna (ela vai para o final por padrão) */
ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(10); /* A palavra COLUMN é opcional */

/* Comando para apagar uma coluna da tabela */
ALTER TABLE pessoas DROP COLUMN profissao;

/* Comando para adicionar uma coluna em uma posição específica (depois de outra) */
ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(10) AFTER nome; /* AFTER: posiciona logo após a coluna indicada */

/* Comando para adicionar uma coluna como a primeira de todas na tabela */
ALTER TABLE pessoas ADD COLUMN codigo INT FIRST; /* FIRST: posiciona no topo da estrutura */

/* Comando para alterar o tipo de dado ou regra de uma coluna existente */
ALTER TABLE pessoas MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT ''; /* MODIFY: não permite mudar o nome da coluna, apenas a estrutura */

/* Comando para renomear uma coluna (exige passar nome antigo, nome novo e regras) */
ALTER TABLE pessoas CHANGE COLUMN profissao prof VARCHAR(20) NOT NULL DEFAULT ''; /* CHANGE: substitui 'profissao' por 'prof' */

/* Comando para renomear a tabela inteira */
ALTER TABLE pessoas RENAME TO gafanhotos;

/* Comando para criar uma tabela apenas se ela não existir (evita sobrepor tabelas) */
CREATE TABLE IF NOT EXISTS cursos (
    nome VARCHAR(30) NOT NULL UNIQUE, /* UNIQUE: impede que dois cursos sejam cadastrados com o mesmo nome */
    descricao TEXT,
    carga INT UNSIGNED,               /* UNSIGNED: otimiza o banco e não permite números negativos (ex: horas negativas) */
    totaulas INT UNSIGNED,
    ano YEAR DEFAULT '2016'
) DEFAULT CHARSET = utf8mb4;

/* Comando para adicionar uma chave primária depois que a tabela já foi criada */
ALTER TABLE cursos ADD COLUMN idcurso INT FIRST;
ALTER TABLE cursos ADD PRIMARY KEY (idcurso); /* Transforma a coluna idcurso no identificador único */

/* Comando para apagar uma tabela inteira (destrói a estrutura e os dados) */
DROP TABLE IF EXISTS teste; /* IF EXISTS: evita erros na tela caso a tabela não exista */