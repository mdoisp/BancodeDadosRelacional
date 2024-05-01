select NomeCategoria
from categoria
where categoriaid in (select categoriaid from produto where preco > 1000)
union
select nomecategoria
from categoria
where categoriaid in (select produto.CategoriaID from produto join pedido on produto.ProdutoID = pedido.ProdutoID)

select nomeproduto
from produto
where preco < 100
union all
select nomeproduto
from produto
where preco > 1000;

SELECT NomeCategoria
FROM Categoria
WHERE CategoriaID IN (SELECT CategoriaID FROM Produto WHERE Preco > 100)
EXCEPT
SELECT NomeCategoria
FROM Categoria
WHERE CategoriaID IN (SELECT Produto.CategoriaID FROM Produto JOIN Pedido ON
Produto.ProdutoID = Pedido.ProdutoID)

CREATE VIEW ProdutosCaros AS
SELECT NomeProduto, Preco
FROM Produto
WHERE Preco > 1000

select * from ProdutosCaros