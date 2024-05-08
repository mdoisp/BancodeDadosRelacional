DECLARE @MinPreco DECIMAL(10,2);
SET @MinPreco = 50;
SELECT NomeProduto, Preco
from Produto
where Preco >= @MinPreco;

Declare @TotalPedidos int;
select @TotalPedidos = count(*)
from Pedido
Print'O total de pedidos é: ' +CAST(@TotalPedidos as NVARCHAR(10));

declare @ProdutoMaisCaro NVARCHAR(50);
select top 1 @ProdutoMaisCaro = NomeProduto
from Produto
order by Preco desc
Print'O produto mais caro é: ' +@ProdutoMaisCaro;

select top 10 NomeProduto, Preco
from Produto
order by Preco desc;