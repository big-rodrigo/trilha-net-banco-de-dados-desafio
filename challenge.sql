-- 01
select Nome, Ano from Filmes;

-- 02
select Nome, Ano, Duracao from Filmes order by Ano;

-- 03
select Nome, Ano, Duracao from Filmes where upper(Nome) = upper('De Volta para o Futuro');

-- 04
select Nome, Ano, Duracao from Filmes where Ano = 1997;

-- 05
select Nome, Ano, Duracao from Filmes where Ano > 2000;

-- 06
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by duracao;

-- 07
select Ano, count(*) Quantidade from Filmes group by Ano order by count(*) desc;

-- 08
select * from Atores where Genero = 'M';

-- 09
select * from Atores where Genero = 'F' order by PrimeiroNome;

-- 10
select f.Nome, g.Genero
from Filmes f inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on g.Id = fg.IdGenero;

-- 11
select f.Nome, g.Genero
from Filmes f inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on g.Id = fg.IdGenero
where g.genero = 'Mistério';

--12
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
from Filmes f inner join ElencoFilme ef on f.Id = ef.IdFilme
inner join Atores a on a.Id = ef.IdAtor;