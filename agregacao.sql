use restaurante;
select count(*) from pedidos;


select count(distinct(id_cliente)) from pedidos;

select AVG(preço) 
from produtos;

select MIN(preço)
from produtos;

select MAX(preço) 
from produtos;

select nome, preço 
from produtos 
ORDER BY preço DESC LIMIT 5;

select categoria, AVG(preço) AS media_preço
from produtos 
GROUP BY categoria;

select fornecedor, COUNT(id_info) AS quantidadePROD_fornecedor
from info_produtos
GROUP BY fornecedor 
HAVING quantidadePROD_fornecedor > 1;

select id_cliente, count(*) as pedidos_realizados 
from pedidos 
group by id_cliente 
having count(*) = 1;



