CREATE DATABASE Mercado_SCT;
USE Mercado_SCT;

CREATE TABLE fornecedores(
	id_fornecedor INT NOT NULL AUTO_INCREMENT,
    nome_fornecedor VARCHAR(50) NOT NULL,
    email_fornecedor VARCHAR(50) NOT NULL,
    telefone_fornecedor VARCHAR(11) NOT NULL,
    PRIMARY KEY(id_fornecedor)
);

CREATE TABLE produtos(
	produtos_id INT NOT NULL AUTO_INCREMENT,
    valor_produto DOUBLE UNSIGNED,
    tipo_produto VARCHAR(50) NOT NULL,
    fornecedor_id INT NOT NULL,
    PRIMARY KEY(produtos_id),
    CONSTRAINT fk_fornecedor_id FOREIGN KEY(fornecedor_id) REFERENCES fornecedores(id_fornecedor)
);

CREATE TABLE login_ze(
	login VARCHAR(10) NOT NULL,
    senha VARCHAR(20) NOT NULL,
    PRIMARY KEY(login)
);

CREATE TABLE entrada_produtos(
	id_entrega INT NOT NULL AUTO_INCREMENT,
    produ_id INT NOT NULL,
    quantidade_entrega INT NOT NULL,
    data_entrega DATE NOT NULL,
    horario TIME NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_entrega),
    CONSTRAINT fk_fornecedores_id_produto FOREIGN KEY(produ_id) REFERENCES produtos(produtos_id)
);

CREATE TABLE estoque(
	quantidade_estoque INT NOT NULL,
    entrega_id INT NOT NULL,
    produto_vendido INT NOT NULL,
    CONSTRAINT fk_entrega_id FOREIGN KEY(entrega_id) REFERENCES entrada_produtos(id_entrega),
    CONSTRAINT fk_venda_id FOREIGN KEY(produto_vendido) REFERENCES vendas(id_produto_vendido)
);

CREATE TABLE vendas(
	id_produto_vendido INT NOT NULL,
    data_venda DATE NOT NULL,
    caixa_id INT,
    PRIMARY KEY(id_produto_vendido),
    CONSTRAINT fk_id_caixa FOREIGN KEY(caixa_id) REFERENCES login_caixa(id_caixa),
    CONSTRAINT fk_id_produto_vendido FOREIGN KEY(id_produto_vendido) REFERENCES itens_vendidos(produto_vendido_id)
);

CREATE TABLE itens_vendidos(
	produto_vendido_id INT NOT NULL,
    produto_valor DOUBLE NOT NULL,
    quantidade INT NOT NULL,
    cliente_id INT NOT NULL,
    PRIMARY KEY(produto_vendido_id),
	CONSTRAINT fk_id_cliente FOREIGN KEY(cliente_id) REFERENCES clientes(id_cliente)
);

CREATE TABLE login_caixa(
	id_caixa INT NOT NULL AUTO_INCREMENT,
    senha_caixa VARCHAR(15) NOT NULL,
    PRIMARY KEY(id_caixa)
);

CREATE TABLE clientes(
	id_cliente INT NOT NULL AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    cpf_cliente VARCHAR(14),
    PRIMARY KEY(id_cliente)
);
