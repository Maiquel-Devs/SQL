USE cadastro;

/* Comando para selecionar todos os dados de uma tabela */
SELECT * FROM cursos;  /* O asterisco traz todas as colunas de todos os registros */

/* Comando para listar dados sem repetição */
SELECT DISTINCT carga FROM cursos;  /* DISTINCT: Mostra apenas uma ocorrência de cada valor */

/* Comando para agrupar dados iguais */
SELECT carga FROM cursos GROUP BY carga;  /* GROUP BY: Junta registros que têm o mesmo valor na coluna */

/* Comando para agrupar e contar os itens de cada grupo */
SELECT carga, COUNT(*) FROM cursos GROUP BY carga;  /* COUNT(*): Conta a quantidade de cursos em cada grupo de carga horária */

/* Comando para filtrar os grupos gerados */
SELECT ano, COUNT(*) FROM cursos GROUP BY ano HAVING COUNT(*) >= 5;  /* HAVING: Funciona como o WHERE, mas filtra apenas o que foi agrupado no GROUP BY */

/* Comando usando um SELECT dentro de outro (Subconsulta) */
SELECT carga, COUNT(*) FROM cursos GROUP BY carga HAVING carga > (SELECT AVG(carga) FROM cursos);  /* O SELECT de dentro calcula a média, e o HAVING filtra usando esse valor */