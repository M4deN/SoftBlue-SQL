CREATE TABLE funcionarios(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    salario DOUBLE NOT NULL DEFAULT '0',
    departamento  VARCHAR(45) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE veiculos(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    funcionario_id INT UNSIGNED DEFAULT NULL,
    veiculo VARCHAR(45) NOT NULL DEFAULT '',
    placa VARCHAR(10) NOT NULL DEFAULT '',
    PRIMARY KEY(id),
    CONSTRAINT fk_veiculos_funcionarios FOREIGN KEY(funcionario_id) REFERENCES funcionarios(id)
);

CREATE TABLE salarios(
	faixa VARCHAR(45) NOT NULL,
    inicio DOUBLE NOT NULL,
    fim DOUBLE NOT NULL,
    PRIMARY KEY(faixa)
);

ALTER TABLE funcionarios CHANGE COLUMN nome_func nome VARCHAR(50)NOT NULL;

CREATE INDEX departamentos ON funcionarios(departamento);

CREATE INDEX nomes ON funcionarios(nome);
