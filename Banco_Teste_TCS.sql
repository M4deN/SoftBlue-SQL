/*EXERCICIO 1 */

CREATE DATABASE Alecio_TCS;
USE Alecio_TCS;

CREATE TABLE vendedor(
	id_vendedor INT NOT NULL AUTO_INCREMENT,
    nome_vendedor VARCHAR(100) NOT NULL,
    email_vendedor VARCHAR(50)NOT NULL,
    telefone_vendedor VARCHAR(11) NOT NULL,
    PRIMARY KEY(id_vendedor)
);

CREATE TABLE pedido_compra(
	id_pedido INT UNSIGNED NOT NULL AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    vendedor_id INT NOT NULL,
    cliente_id INT NOT NULL,
    produto_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY(id_pedido),
	CONSTRAINT fk_id_vendedor FOREIGN KEY(vendedor_id) REFERENCES vendedor(id_vendedor),
	CONSTRAINT fk_id_cliente FOREIGN KEY(cliente_id) REFERENCES cliente(id_cliente),
	CONSTRAINT fk_id_produto FOREIGN KEY(id_pedido) REFERENCES produto(id_produto)
);

CREATE TABLE cliente(
	id_cliente INT NOT NULL AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email_cliente VARCHAR(50),
    telefone_cliente VARCHAR(11) NOT NULL,
    PRIMARY KEY(id_cliente)
);

CREATE TABLE produto(
	id_produto INT UNSIGNED NOT NULL AUTO_INCREMENT,
    descricao_produto VARCHAR(200) NOT NULL,
    preco_produto FLOAT NOT NULL,
    codigo_produto INT NOT NULL,
    PRIMARY KEY(id_produto)
);