--Você deverá criar diversas consultas, com o objetivo de retornar os dados a seguir. Abaixo de cada pedido tem o retorno esperado. O seu retorno deve ser igual ao da imagem.

--1 - Buscar o nome e ano dos filmes
--Exercicio 1

select Nome, Ano from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
--Exercicio 2

select Nome, Ano, Duracao from Filmes order by Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
--Exercicio 3

select Nome, Ano, Duracao from Filmes where Nome like '%Futuro%'

--4 - Buscar os filmes lançados em 1997
--Exercicio 4

select Nome, Ano, Duracao from Filmes where Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
--Exercicio 5

select Nome, Ano, Duracao from Filmes where Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
--Exercicio 6

select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
--Exercicio 7

select Ano, COUNT(Duracao) Quantidade from Filmes group by Ano order by Quantidade desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
--Exercicio 8

select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
--Exercicio 9

select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome

--10 - Buscar o nome do filme e o gênero
--Exercicio 10

select 
	F.Nome, G.Genero
from Filmes F 
	inner join FilmesGenero FG on f.Id = FG.IdFilme
	inner join Generos G on FG.IdGenero = G.Id

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
--Exercicio 11

select 
	F.Nome, G.Genero
from 
	Filmes F 
		inner join FilmesGenero FG on f.Id = FG.IdFilme
		inner join Generos G on FG.IdGenero = G.Id
where
	G.Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select 
	F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel 
from 
	Filmes F
		inner join ElencoFilme EF on F.Id = ef.IdFilme
		inner join Atores A on EF.IdAtor = A.Id
