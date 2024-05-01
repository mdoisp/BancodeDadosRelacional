/*1.Mostre uma lista com o c�digo de cada filme que j� foi alugado e a quantidade de vezes que foi alugado.*/
select COD_FILME, Quantidade = count(*) 
from LOCACOES
group by COD_FILME
having count(COD_FILME) > 0

/*2. Mostre o nome e a data de devolu��o de todos os filmes de A��o cujo diretor seja Richard Donner que foram alugados
pelo cliente Edson Martin Feitosa.*/
select f.FILME, l.DATA_DEVOLUCAO
from FILME f inner join LOCACOES l on f.COD_FILME = l.COD_FILME inner join
CATEGORIA c on c.COD_CATEGORIA = f.COD_CATEGORIA inner join CLIENTES cli on cli.COD_CLIENTE = l.COD_CLIENTE
where NOME_CATEGORIA = 'A��o' and DIRETOR = 'Richard Donner' and cli.NOME = 'Edson Martin Feitosa';

/*3. Mostre o nome do filme, seu valor de loca��o, um campo chamado desconto onde deve aparecer o valor de 10% de desconto em cima
do valor de loca��o e um campo chamado valor_final que deve possuir valor de loca��o menos os dez por cento de desconto dado.*/
select f.FILME, f.VALOR_LOCACAO, f.VALOR_LOCACAO as Desconto, f.VALOR_LOCACAO as PrecoFinal
from FILME f
where f.VALOR_LOCACAO in
	(select f.VALOR_LOCACAO * 0.1)

/*4. Mostre sem repeti��o de registros, todos os filmes alugados por clientes da cidade de Votorantim.*/
select distinct f.FILME
from FILME f inner join LOCACOES l on f.COD_FILME = l.COD_FILME inner join CLIENTES cli on cli.COD_CLIENTE = l.COD_CLIENTE
where cli.CIDADE = 'Votorantim' and l.COD_FILME > 0

/*5. Mostre qual filme foi alugado hoje.*/
select f.FILME, l.DATA_RETIRADA
from FILME f inner join LOCACOES l on f.COD_FILME = l.COD_FILME
where l.DATA_RETIRADA = getDate()

/*6. Mostre quanto � locadora lucrou com as loca��es do filme �A vida � bela�.*/
select sum(f.VALOR_LOCACAO) as Lucro
from FILME f inner join LOCACOES l on f.COD_FILME = l.COD_FILME
where f.FILME = 'A vida � bela'

/*7. Mostre a quantidade de sa�das de filmes para loca��o agrupando a consulta por diretor.*/

/*8. Mostre todas as categorias dos filmes alugados pela cliente Maria Chiquinha.*/

/*9. Mostre o nome e o telefone de todos os clientes que j� alugaram o filme Constantine.*/

/*10. Mostre todas as categorias de filmes que n�o possuem filmes cadastrado*/


select * from locacoes
select * from filme
