-- 1- Buscar o nome e ano dos filmes
Select Nome, Ano From Filmes;

-- 2
Select Nome, Ano, Duracao 
From Filmes
Order by Ano ASC;

-- 3
Select  Nome, Ano, Duracao 
From Filmes 
Where Nome = 'De Volta para o Futuro';

-- 4
Select Nome, Ano, Duracao
From Filmes
Where Ano = 1997;

-- 5
Select Nome, Ano, Duracao
From Filmes
Where Ano > 2000;

-- 6
Select Nome, Ano, Duracao
From Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC;

-- 7
Select Ano, Count(*) As Quantidade 
From Filmes 
Group by Ano 
Order by Quantidade Desc, Ano Desc

-- 8
Select * 
From Atores
Where Genero = 'M'

--Ou 
Select PrimeiroNome, UltimoNome
From Atores
Where Genero = 'M'

-- 9
Select * 
From Atores
Where Genero = 'F'
Order by PrimeiroNome Asc

--Ou 
Select PrimeiroNome, UltimoNome
From Atores
Where Genero = 'F'
Order by PrimeiroNome Asc

-- 10 
Select f.Nome, g.Genero
From Filmes f
Join FilmesGenero fg On f.id = fg.IdFilme
Join Generos g On fg.IdGenero = g.Id;


-- 11
Select f.Nome, g.Genero
From Filmes f
Join FilmesGenero fg On f.id = fg.IdFilme
Join Generos g On fg.IdGenero = g.Id
Where g.Genero = 'Mistério';

-- 12
Select f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel
From Atores a
Join ElencoFilme e On a.id = e.IdAtor
Join Filmes f On f.id = e.IdFilme