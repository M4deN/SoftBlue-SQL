USE Mercado_SCT;

INSERT INTO fornecedores(nome_fornecedor, email_fornecedor, telefone_fornecedor)VALUES('Café Pelé', 'pelecafe@outlook.com', '43111111111');
INSERT INTO fornecedores(nome_fornecedor, email_fornecedor, telefone_fornecedor)VALUES('Mococa ', 'mococa@outlook.com', '43222222222');
INSERT INTO fornecedores(nome_fornecedor, email_fornecedor, telefone_fornecedor)VALUES('Ype', 'ype@outlook.com', '43333333333');
INSERT INTO fornecedores(nome_fornecedor, email_fornecedor, telefone_fornecedor)VALUES('Tio João', 'iojoao@outlook.com', '4344444444');
INSERT INTO fornecedores(nome_fornecedor, email_fornecedor, telefone_fornecedor)VALUES('Camil', 'camil@outlook.com', '4355555555');
INSERT INTO fornecedores(nome_fornecedor, email_fornecedor, telefone_fornecedor)VALUES('P&G', 'pg@outlook.com', '4366666666');
INSERT INTO fornecedores(nome_fornecedor, email_fornecedor, telefone_fornecedor)VALUES('Dove', 'dove@outlook.com', '4377777777');

SELECT * FROM fornecedores;

INSERT INTO produtos(valor_produto,tipo_produto, fornecedor_id)VALUES(17000.50,'Alimento',1);
INSERT INTO produtos(valor_produto,tipo_produto,fornecedor_id)VALUES(2700.50,'Alimento',2);
INSERT INTO produtos(valor_produto,tipo_produto,fornecedor_id)VALUES(1.50,'Limpeza',3);
INSERT INTO produtos(valor_produto,tipo_produto,fornecedor_id)VALUES(17.50,'Alimento',4);
INSERT INTO produtos(valor_produto,tipo_produto,fornecedor_id)VALUES(13.50,'Alimento',5);
INSERT INTO produtos(valor_produto,tipo_produto,fornecedor_id)VALUES(3.57,'Higiene',6);
INSERT INTO produtos(valor_produto,tipo_produto,fornecedor_id)VALUES(9.54,'Higiene',7);

SELECT * FROM produtos;

INSERT INTO login_ze(login, senha)VALUES('Jose Oliveira Souto#',123);

SELECT * FROM login_ze;

INSERT INTO entrada_produtos(produ_id, quantidade_entrega, data_entrega, descricao,horario)VALUES(1,250,'2022-01-10','Café','13:33');
INSERT INTO entrada_produtos(produ_id, quantidade_entrega, data_entrega, descricao,horario)VALUES(2,150,'2022-01-11','Creme de Leite','11:21');
INSERT INTO entrada_produtos(produ_id, quantidade_entrega, data_entrega, descricao,horario)VALUES(3,50,'2022-01-12','Detergente','08:51');
INSERT INTO entrada_produtos(produ_id, quantidade_entrega, data_entrega, descricao,horario)VALUES(4,500,'2022-01-13','Arroz','14:21');
INSERT INTO entrada_produtos(produ_id, quantidade_entrega, data_entrega, descricao,horario)VALUES(5,750,'2022-01-14','Açucar','17:33');
INSERT INTO entrada_produtos(produ_id, quantidade_entrega, data_entrega, descricao,horario)VALUES(6,20,'2022-01-15','Sabonete','18:45');
INSERT INTO entrada_produtos(produ_id, quantidade_entrega, data_entrega, descricao,horario)VALUES(7,25,'2022-01-16','Shampoo','19:00');

SELECT * FROM entrada_produtos;

INSERT INTO estoque(quantidade_estoque,entrega_id, produto_vendido)VALUES(27, 1, 1);
INSERT INTO estoque(quantidade_estoque,entrega_id, produto_vendido)VALUES(123, 2, 2);
INSERT INTO estoque(quantidade_estoque,entrega_id, produto_vendido)VALUES(78, 3, 3);
INSERT INTO estoque(quantidade_estoque,entrega_id, produto_vendido)VALUES(270, 4, 4);
INSERT INTO estoque(quantidade_estoque,entrega_id, produto_vendido)VALUES(31, 5, 5);
INSERT INTO estoque(quantidade_estoque,entrega_id, produto_vendido)VALUES(41, 6, 6);
INSERT INTO estoque(quantidade_estoque,entrega_id, produto_vendido)VALUES(50, 7, 7);

SELECT * FROM estoque;

INSERT INTO itens_vendidos(produto_vendido_id, produto_valor, quantidade,cliente_id)VALUES(1,4.76,1,1);
INSERT INTO itens_vendidos(produto_vendido_id, produto_valor, quantidade,cliente_id)VALUES(2,6.76,2,2);
INSERT INTO itens_vendidos(produto_vendido_id, produto_valor, quantidade,cliente_id)VALUES(3,7.76,3,3);
INSERT INTO itens_vendidos(produto_vendido_id, produto_valor, quantidade,cliente_id)VALUES(4,8.76,4,4);
INSERT INTO itens_vendidos(produto_vendido_id, produto_valor, quantidade,cliente_id)VALUES(5,9.76,5,5);
INSERT INTO itens_vendidos(produto_vendido_id, produto_valor, quantidade,cliente_id)VALUES(6,10.76,6,6);
INSERT INTO itens_vendidos(produto_vendido_id, produto_valor, quantidade,cliente_id)VALUES(7,11.76,7,7);

SELECT * FROM itens_vendidos;

INSERT INTO clientes(nome_cliente, cpf_cliente)VALUES('Alecio','111-111-111.11');
INSERT INTO clientes(nome_cliente,cpf_cliente)VALUES('Bruniera','222-222-222.22');
INSERT INTO clientes(nome_cliente)VALUES('Camilo');
INSERT INTO clientes(nome_cliente, cpf_cliente)VALUES('Daniel','333-333-333.33');
INSERT INTO clientes(nome_cliente, cpf_cliente)VALUES('Fabiana', '444-444-444.44');
INSERT INTO clientes(nome_cliente)VALUES('Gabriel');
INSERT INTO clientes(nome_cliente, cpf_cliente)VALUES('Helen', '555-555-555.55');

SELECT * FROM clientes;

INSERT INTO vendas(id_produto_vendido,data_venda,caixa_id)VALUES(1,'2022-01-10',1);
INSERT INTO vendas(id_produto_vendido,data_venda,caixa_id)VALUES(2,'2022-01-10',2);
INSERT INTO vendas(id_produto_vendido,data_venda,caixa_id)VALUES(3,'2022-01-12',3);
INSERT INTO vendas(id_produto_vendido,data_venda,caixa_id)VALUES(4,'2022-01-13',1);
INSERT INTO vendas(id_produto_vendido,data_venda,caixa_id)VALUES(5,'2022-01-14',2);
INSERT INTO vendas(id_produto_vendido,data_venda,caixa_id)VALUES(6,'2022-01-15',3);
INSERT INTO vendas(id_produto_vendido,data_venda,caixa_id)VALUES(7,'2022-01-16',1);

SELECT * FROM vendas;

INSERT INTO login_caixa(senha_caixa)VALUES(111);
INSERT INTO login_caixa(senha_caixa)VALUES(222);
INSERT INTO login_caixa(senha_caixa)VALUES(333);

SELECT * FROM login_caixa;

SELECT id_cliente, nome_cliente  FROM clientes ORDER BY id_cliente DESC;

/*ASSOCIA O FORNECEDOR COM O PRODUTO*/
SELECT id_fornecedor AS "Fornecedor", tipo_produto AS "Produto", valor_produto AS "Valor"
FROM
fornecedores  INNER JOIN produtos ON fornecedor_id = id_fornecedor;

/*MOSTRA QUEM É O CLIENTE O ID DO PRODUTO QUE COMPROU E O VALOR DO PRODUTO E A CAIXA QUE O ATENDEU E A DATA QUE A COMPRA OCORREU E O NOME DO PRODUTO*/
SELECT nome_cliente AS "Cliente", produto_vendido_id AS "Produto", produto_valor AS "Valor", caixa_id AS "Caixa", DATE_FORMAT(data_venda,"%d/%m/%Y") AS "Data", descricao AS "Nome Produto"
FROM
clientes  INNER JOIN itens_vendidos ON id_cliente = cliente_id INNER JOIN
vendas ON id_produto_vendido = produto_vendido_id INNER JOIN
entrada_produtos ON produ_id = id_produto_vendido;

/*RETORNA O FORNECEDOR TIPO DE PRODUTO VALOR DA MERCADORIA QUANTIDADE ENTREGUE E DATA DA ENTREGA REGRA PARA O SEU ZÉ TER O CONTROLE DE FORNECEDOR E PRODUTOS*/
SELECT nome_fornecedor AS "Fornecedor", tipo_produto AS "Produto", valor_produto AS "Valor", quantidade_entrega AS "Quantidade", DATE_FORMAT(data_entrega,"%d/%m/%Y") AS "Data"
FROM
fornecedores  INNER JOIN produtos ON id_fornecedor = fornecedor_id INNER JOIN
entrada_produtos ON produ_id = produtos_id;


/*APRESENTA NOME DO PRODUTO QUANTIDADE EM ESTOQUE ID DA ENTREGA TIPO DO PRODUTO E NOME DO FORNECEDOR*/
SELECT descricao AS "Nome Produto", quantidade_estoque AS "Quantidade", id_entrega "Id Entrega", tipo_produto AS "Tipo", nome_fornecedor AS "Fornecedor"
FROM
entrada_produtos INNER JOIN estoque ON id_entrega = entrega_id INNER JOIN
produtos ON produtos_id = produ_id INNER JOIN
fornecedores ON id_fornecedor = fornecedor_id;
