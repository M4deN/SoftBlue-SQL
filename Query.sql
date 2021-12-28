USE curso_sql;

INSERT INTO funcionarios(nome, salario, departamento)VALUES('Alex', 10000, 'Software Engineer');
INSERT INTO funcionarios(nome, salario, departamento)VALUES('Luisa', 50000, 'Recursos Humanos');
INSERT INTO funcionarios(nome, salario, departamento)VALUES('Inbar Lavi', 30000, 'Administração');
INSERT INTO funcionarios(nome, salario, departamento)VALUES('André Pichebes', 70000, 'Instrutor');
INSERT INTO funcionarios(nome, salario, departamento)VALUES('Leonardo', 15000, 'Web Developer');

SELECT * FROM funcionarios;

SET SQL_SAFE_UPDATES = 0;

UPDATE funcionarios SET salario = salario * 1.1;
UPDATE funcionarios SET departamento = 'Software Engineer' WHERE id = 5;
UPDATE funcionarios SET salario = ROUND(salario * 1.1, 2);

INSERT INTO veiculos(funcionario_id, veiculo, placa)VALUES(1, 'Carro', 'ABC-0001');
INSERT INTO veiculos(funcionario_id, veiculo, placa)VALUES(2, 'MiniVan', 'ABC-0002');
INSERT INTO veiculos(funcionario_id, veiculo, placa)VALUES(1, 'Motocicleta', 'ABC-0003');

UPDATE veiculos SET funcionario_id = 5 WHERE id = 2;
SELECT * FROM veiculos;

INSERT INTO salarios(faixa, inicio, fim)VALUES('Software Engineer',10000, 20000);
INSERT INTO salarios(faixa, inicio, fim)VALUES('Recursos Humanos',1000, 2000);
INSERT INTO salarios(faixa, inicio, fim)VALUES('Instrutor',2000, 3000);
SELECT * FROM salarios;