use restaurante;
SELECT nome, categoria 
FROM produtos 
WHERE preço > 30;

SELECT nome, telefone , data_nascimento
FROM clientes 
WHERE YEAR(data_nascimento) < 1985

SELECT id_produto, ingredientes
FROM info_produtos
WHERE ingredientes LIKE '%carne%'

SELECT nome, categoria 
FROM produtos 
ORDER BY categoria ASC , nome ASC;

SELECT nome, preço 
FROM produtos 
ORDER BY PREÇO DESC LIMIT 5; 

SELECT nome, categoria
FROM produtos 
WHERE categoria = 'prato principal'
LIMIT 2 OFFSET 5;

CREATE table backup_pedidos as select * from pedidos; 
