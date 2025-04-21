use restaurante; 

CREATE VIEW resumo_pedido AS
SELECT
    p.id_pedido,
	p.quantidade,
    p.data_pedido,
    c.nome AS cliente_nome,
    c.email AS cliente_email,
    f.nome AS funcionario_nome,
    pr.nome AS produto_nome,
    pr.preço AS preço_unitario
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN funcionarios f ON p.id_funcionario = f.id_funcionario
JOIN produtos pr ON p.id_produto = pr.id_produto;

SELECT 
  id_pedido,
  cliente_nome,
  SUM(quantidade * preço_unitario)AS total
FROM 
  resumo_pedido
  GROUP BY 
  id_pedido, cliente_nome;

SELECT 
  id_pedido, 
  cliente_nome, 
  total
FROM 
  resumo_pedido;
  
  EXPLAIN 
SELECT 
  id_pedido, 
  cliente_nome, 
  total
FROM 
  resumo_pedido;
  

DELIMITER //
CREATE FUNCTION BuscaIngredientesProduto(id_produto INT)
RETURNS TEXT
DETERMINISTIC
READS SQL DATA
BEGIN
  DECLARE ingredientes_do_produto TEXT;

  SELECT GROUP_CONCAT(ingredientes SEPARATOR ', ')
  INTO ingredientes_do_produto
  FROM info_produtos
  WHERE id_produto = id_produto;

  RETURN ingredientes_do_produto;
END//

DELIMITER ;


SELECT BuscaIngredientesProduto(10) AS ingredientes;


DELIMITER //

CREATE FUNCTION mediaPedido(id_pedido INT)
RETURNS VARCHAR(100)
READS SQL DATA
DETERMINISTIC
BEGIN
  RETURN (
    SELECT
      CASE
        WHEN total > (SELECT AVG(total) FROM resumo_pedido) THEN 'ACIMA da média.'
        WHEN total < (SELECT AVG(total) FROM resumo_pedido) THEN 'ABAIXO da média.'
        ELSE 'IGUAL à média.'
      END
    FROM resumo_pedido
    WHERE id_pedido = id_pedido
    LIMIT 1   -- Garantir que retorna apenas uma linha
  );
END//

DELIMITER ;


SELECT mediaPedido(5) AS resultado;

SELECT mediaPedido(6) AS resultado;




