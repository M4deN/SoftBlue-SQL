USE Alecio_TCS;
SELECT * FROM vendedor;

/*EXERCICIO 2*/
INSERT INTO vendedor(nome_vendedor, email_vendedor, telefone_vendedor)VALUES('Alex', 'alex@outlook.com', '43111111111');
INSERT INTO vendedor(nome_vendedor, email_vendedor, telefone_vendedor)VALUES('Bruna', 'bruna@outlook.com', '43222222222');
INSERT INTO vendedor(nome_vendedor, email_vendedor, telefone_vendedor)VALUES('Cassio', 'cassio@outlook.com', '43333333333');
INSERT INTO vendedor(nome_vendedor, email_vendedor, telefone_vendedor)VALUES('Daniela', 'daniela@outlook.com', '43444444444');
INSERT INTO vendedor(nome_vendedor, email_vendedor, telefone_vendedor)VALUES('Fabio', 'fabio@outlook.com', '43555555555');
INSERT INTO vendedor(nome_vendedor, email_vendedor, telefone_vendedor)VALUES('Gabriele', 'gabriele@outlook.com', '43666666666');
INSERT INTO vendedor(nome_vendedor, email_vendedor, telefone_vendedor)VALUES('Hugo', 'hugo@outlook.com', '43777777777');
INSERT INTO vendedor(nome_vendedor, email_vendedor, telefone_vendedor)VALUES('Isabela', 'isabela@outlook.com', '43888888888');
INSERT INTO vendedor(nome_vendedor, email_vendedor, telefone_vendedor)VALUES('Julio', 'julio@outlook.com', '43999999999');
INSERT INTO vendedor(nome_vendedor, email_vendedor, telefone_vendedor)VALUES('Karina', 'karina@outlook.com', '43000000000');

/*EXERCICIO 3*/
INSERT INTO cliente(nome_cliente, email_cliente, telefone_cliente)VALUES('Alecio', 'alecio@outlook.com', '43010101010');
INSERT INTO cliente(nome_cliente, email_cliente, telefone_cliente)VALUES('Bruniera', 'bruniera@outlook.com', '43020202020');
INSERT INTO cliente(nome_cliente, email_cliente, telefone_cliente)VALUES('Camilo', 'camilo@outlook.com', '43030303030');
INSERT INTO cliente(nome_cliente, email_cliente, telefone_cliente)VALUES('Daniel', 'daniel@outlook.com', '43040404040');
INSERT INTO cliente(nome_cliente, email_cliente, telefone_cliente)VALUES('Fabiana', 'fabiana@outlook.com', '43050505050');
INSERT INTO cliente(nome_cliente, email_cliente, telefone_cliente)VALUES('Gabriel', 'gabriel@outlook.com', '43060606060');
INSERT INTO cliente(nome_cliente, email_cliente, telefone_cliente)VALUES('Helen', 'helen@outlook.com', '43070707070');
INSERT INTO cliente(nome_cliente, email_cliente, telefone_cliente)VALUES('Isaque', 'isaque@outlook.com', '43080808080');
INSERT INTO cliente(nome_cliente, email_cliente, telefone_cliente)VALUES('Juliana', 'juliana@outlook.com', '43090909090');
INSERT INTO cliente(nome_cliente, email_cliente, telefone_cliente)VALUES('Kaio', 'kaio@outlook.com', '43123123123');

SELECT * FROM cliente;

/*EXERCICIO 4*/
INSERT INTO produto(descricao_produto, preco_produto, codigo_produto)VALUES('Notebook', 1200.00,1);
INSERT INTO produto(descricao_produto, preco_produto, codigo_produto)VALUES('Maquina de Lavar', 1600.00,2);
INSERT INTO produto(descricao_produto, preco_produto, codigo_produto)VALUES('Mesa de Jantar', 1000.00,3);
INSERT INTO produto(descricao_produto, preco_produto, codigo_produto)VALUES('Geladeira', 3600.00,4);
INSERT INTO produto(descricao_produto, preco_produto, codigo_produto)VALUES('PlayStation 5', 4800.00,5);
INSERT INTO produto(descricao_produto, preco_produto, codigo_produto)VALUES('Ventilador', 600.00,6);
INSERT INTO produto(descricao_produto, preco_produto, codigo_produto)VALUES('Forno Elétrico', 900.00,7);
INSERT INTO produto(descricao_produto, preco_produto, codigo_produto)VALUES('Rádio', 2900.00,8);
INSERT INTO produto(descricao_produto, preco_produto, codigo_produto)VALUES('Jogo de Sofá', 2700.00,9);
INSERT INTO produto(descricao_produto, preco_produto, codigo_produto)VALUES('Cama de Casal', 3100.00,10);

SELECT * FROM produto;

/*EXERCICIO 5*/
INSERT INTO pedido_compra(data_pedido, vendedor_id, cliente_id, produto_id)VALUES('2022-02-01', 1,2,1);
INSERT INTO pedido_compra(data_pedido, vendedor_id, cliente_id, produto_id)VALUES('2022-02-02', 2,1,2);
INSERT INTO pedido_compra(data_pedido, vendedor_id, cliente_id, produto_id)VALUES('2022-02-03', 3,3,3);
INSERT INTO pedido_compra(data_pedido, vendedor_id, cliente_id, produto_id)VALUES('2022-02-04', 4,4,4);
INSERT INTO pedido_compra(data_pedido, vendedor_id, cliente_id, produto_id)VALUES('2022-02-01', 5,5,5);
INSERT INTO pedido_compra(data_pedido, vendedor_id, cliente_id, produto_id)VALUES('2022-02-05', 6,6,6);
INSERT INTO pedido_compra(data_pedido, vendedor_id, cliente_id, produto_id)VALUES('2022-02-06', 7,7,7);
INSERT INTO pedido_compra(data_pedido, vendedor_id, cliente_id, produto_id)VALUES('2022-02-08', 8,8,8);
INSERT INTO pedido_compra(data_pedido, vendedor_id, cliente_id, produto_id)VALUES('2022-02-09', 9,9,9);

SELECT * FROM pedido_compra;

/*EXERCICO 6*/
SELECT nome_vendedor AS NOME FROM vendedor ORDER BY nome_vendedor ASC;

/*EXERCICO 7*/
SELECT id_cliente, nome_cliente  FROM cliente ORDER BY id_cliente DESC;

/*EXERCICIO 8*/
UPDATE cliente SET nome_cliente = 'Willian', email_cliente = 'willian@gmail.com', telefone_cliente = '4399999999' WHERE id_cliente = 5;
SELECT * FROM cliente;

/*EXERCICIO 9*/
SELECT * FROM pedido_compra;

/*EXERCICIO 10*/
SELECT T1.nome_vendedor AS "Vendedores", T2.nome_cliente AS "Clientes", T3.descricao_produto AS "Produto",DATE_FORMAT(T0.data_pedido,"%d/%m/%Y") AS "Data"
FROM
pedido_compra T0 INNER JOIN vendedor T1 ON T0.vendedor_id = T1.id_vendedor
INNER JOIN cliente T2 ON T0.cliente_id = T2.id_cliente
INNER JOIN produto T3 ON T0.produto_id = T3.id_produto;