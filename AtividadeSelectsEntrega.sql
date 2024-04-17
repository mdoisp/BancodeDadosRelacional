/*1. Selecione todos os clientes da locadora.*/
select * from clientes

/*2. Selecione todos os filmes da locadora.*/
select * from filme

/*3. Mostre todas as categorias que a locadora possui cadastrada.*/
select nome_categoria from categoria

/*4. Mostre todos os clientes do sexo masculino que moram na cidade de Sorocaba.*/
select * from clientes
where sexo = 'M' and cidade = 'Sorocaba'

/*5. Mostre o nome e o telefone de todos os clientes da locadora ordenando a consulta por ordem alfabética.*/
select nome, telefone from clientes
order by nome asc

/*6. Mostre a quantidade de clientes mulheres cadastradas no sistema.*/
select count(*) from clientes
where sexo = 'F'

/*7. Mostre as categorias de filmes que a locadora possui mostrando o nome da categoria em ordem alfabética.*/
select * from categoria;
where nome_categoria is not null
order by nome_categoria asc

/*8. Mostre todos os filmes cadastrados do Diretor “Shawn Levy” que não possuem reserva.*/
select * from filme
where diretor = 'Shawn Levy' and reservada = 'n'

/*9. Mostre todos os filmes cujo valor seja superior a 5 reais e que estão reservados.*/
select * from filme
where valor_locacao > 5 and reservada = 's'

/*10. Mostre todos os diretores cadastrados no sistema sem repetição de nomes.*/
select distinct diretor from filme

/*11. Mostre a quantidade de filmes reservados.*/
select count(*)as Quantidade from filme
where reservada = 's'

/*12. Mostre o maior valor de Locação cadastrado.*/
select max(valor_locacao) as 'Maior Valor'
from filme

/*13. Mostre todos os filmes cuja categoria seja Ação.*/
select f.filme, c.nome_categoria
from filme f inner join categoria c on f.cod_categoria = c.cod_categoria
where nome_categoria = 'Ação'

/*14. Mostre todos os filmes cuja categoria seja Romance ou Aventura que já estão reservados e seu valor de locação seja menor que 5 reais.*/
select f.filme, f.reservada, f.valor_locacao, c.nome_categoria
from filme f inner join categoria c on f.cod_categoria = c.cod_categoria
where (nome_categoria = 'Romance' or nome_categoria = 'Aventura') and reservada = 's' and valor_locacao < 5

/*15. Mostre todos os filmes alugados pelo cliente Renata Cristina.*/
select f.filme, c.nome, l.cod_locacao
from filme f inner join locacoes l on f.cod_filme = l.cod_filme inner join clientes c on l.cod_cliente = c.cod_cliente
where c.nome = 'Renata Cristina'

/*16. Mostre todos os clientes que já alugaram mais do que 3 filmes.*/
select c.nome
from locacoes l inner join clientes c on l.cod_cliente = c.cod_cliente
group by c.nome
having count(l.cod_cliente) > 3

/*17. Mostre quanto foi gasto pelo cliente Renata Cristina.*/


/*18. Mostre a média de valor de locação da locadora.*/


/*19. Mostre o menor valor de locação da locadora.*/


/*20. Mostre a quantidade de filme que a locadora possui por categoria.*/

select * from locacoes