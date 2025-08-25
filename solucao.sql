SELECT Nome, Ano FROM Filmes

SELECT * FROM Filmes ORDER BY Ano

SELECT * FROM Filmes WHERE Nome = 'De volta para o futuro'

SELECT * FROM Filmes WHERE Ano = '1997'

SELECT * FROM Filmes WHERE Ano > '2000'

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano Order BY Quantidade DESC

SELECT * FROM Atores WHERE Genero = 'M'

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN	ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN	Atores ON ElencoFilme.IdAtor = Atores.Id