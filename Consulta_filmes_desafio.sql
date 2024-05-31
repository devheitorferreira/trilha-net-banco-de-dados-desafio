--1 BUSCAR O NOME E ANO DOS FILMES
SELECT NOME, ANO FROM  Filmes


--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT NOME, ANO, DURACAO FROM  Filmes
ORDER BY ANO ASC


--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT NOME, ANO, DURACAO FROM FILMES
WHERE NOME = 'DE VOLTA PARA O FUTURO'

--4 - Buscar os filmes lancados em 1997
SELECT NOME, ANO, DURACAO FROM FILMES
WHERE ANO = 1997

--5 - Buscar os filmes lancados AP�S o ano 2000
SELECT NOME, ANO, DURACAO FROM FILMES
WHERE ANO > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT NOME, ANO, DURACAO FROM FILMES
WHERE DURACAO > '100'
AND DURACAO < '150'


--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ANO, COUNT(*) AS QUANTIDADE FROM FILMES
GROUP BY ANO
ORDER BY QUANTIDADE DESC


--8 - Buscar os Atores do genero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PRIMEIRONOME, ULTIMONOME, GENERO FROM ATORES
WHERE GENERO = 'M'


--9 - Buscar os Atores do genero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PRIMEIRONOME, ULTIMONOME, GENERO FROM ATORES
WHERE GENERO = 'F'
ORDER BY 1 ASC


--10 - Buscar o nome do filme e o genero
SELECT NOME, GENEROS.GENERO FROM FILMES
INNER JOIN FILMESGENERO ON FILMES.ID	=	FILMESGENERO.IDFILME
INNER JOIN GENEROS       ON GENEROS.ID	=	FILMESGENERO.IDGENERO



--11 - Buscar o nome do filme e o genero do tipo "mistério"
SELECT NOME, GENEROS.GENERO FROM FILMES
INNER JOIN FILMESGENERO ON FILMES.ID	=	FILMESGENERO.IDFILME
INNER JOIN GENEROS       ON GENEROS.ID	=	FILMESGENERO.IDGENERO
where GENEROS.genero = 'mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT FILMES.NOME, ATORES.PRIMEIRONOME, ATORES.ULTIMONOME, ELENCOFILME.PAPEL FROM ATORES
INNER JOIN ELENCOFILME ON	ELENCOFILME.IDATOR	=	ATORES.ID
INNER JOIN FILMES ON FILMES.ID	=	ELENCOFILME.IDFILME
