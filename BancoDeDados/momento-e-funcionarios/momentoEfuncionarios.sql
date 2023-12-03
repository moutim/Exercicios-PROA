USE `momento`;

-- Inclua suas próprias informações no departamento de tecnologia da empresa --
INSERT INTO funcionarios (primeiro_nome, sobrenome, email, senha, telefone, data_contratacao, cargo_id, salario, gerente_id, departamento_id) VALUES
('Vitor', 'Moutim', 'moutimg@gmail.com', 'jjj7hhh5hhh8bb3', '11 99818-1280', '2023-08-01', 9, 7700, 100, 9);

-- A administração está sem funcionários. Inclua alguns colegas de turma nesse departamento.  --
INSERT INTO funcionarios (primeiro_nome, sobrenome, email, senha, telefone, data_contratacao, cargo_id, salario, gerente_id, departamento_id) VALUES
('Camile', 'Moutim', 'camile@gmail.com', 'jjjb3', '11 94002-8922', '2023-08-01', 3, 3000, 100, 1),
('Sidnelson', 'Sergipe', 'sidsergipe@gmail.com', 'jjjb3', '11 94002-8922', '2023-08-01', 3, 3000, 100, 1),
('Sofia', 'Moutim', 'sofia@gmail.com', 'jjjb3', '11 94002-8922', '2023-08-01', 3, 3000, 100, 1);

-- Agora diga, quantos funcionários temos ao total na empresa? --
SELECT COUNT(funcionario_id) AS numeroFuncionarios FROM funcionarios;

-- Quantos funcionários temos no departamento de finanças? --
SELECT 
	COUNT(a.funcionario_id) AS numeroFuncionariosFinancas
FROM 
	funcionarios AS a
    INNER JOIN departamentos AS b ON a.departamento_id = b.departamento_id
WHERE b.departamento_nome = "Finanças";

-- Qual a média salarial do departamento de tecnologia? --
SELECT
	AVG(a.salario) AS mediaSalarioTecnologia
FROM
	funcionarios AS a
    INNER JOIN departamentos AS b ON a.departamento_id = b.departamento_id
WHERE b.departamento_nome = "Tecnologia";

-- Quanto o departamento de Transportes gasta em salários? --
SELECT
	SUM(a.salario) AS totalSalarioTransportes
FROM
	funcionarios AS a
    INNER JOIN departamentos AS b ON a.departamento_id = b.departamento_id
WHERE b.departamento_nome = "Transportes";

-- Um novo departamento foi criado. O departamento de inovações. --
-- Ele será locado no Brasil. Por favor, adicione-o no banco de dados. --
INSERT INTO escritorios (escritorio_nome, endereco, cep, cidade, estado_provincia, pais_id) VALUES
('Senac Lapa Tito', 'Rua Tito, N 54', '05051-000', 'São Paulo', 'São Paulo', 'BR');

INSERT INTO departamentos (departamento_nome, escritorio_id) VALUES
('Inovações', 3901);

-- Três novos funcionários foram contratados para o departamento de inovações. 
-- Por favor, adicione-os: William Ferreira, casado com Inara Ferreira, 
-- possuem uma filha chamada Maria Antônia que tem 1 anos e adora brincar com cachorros. 
-- Ele será programador.
-- Já a Fernanda Lima, que é casada com o Rodrigo, não possui filhos. 
-- Ela vai ocupar a posição de desenvolvedora.  
-- Por último, a Gerente do departamento será Sumaia Azevedo. 
-- Casada, duas filhas (Tainã e Nathalia).
-- O salário de todos eles será a média salarial dos departamentos de administração e finanças.
INSERT INTO funcionarios (primeiro_nome, sobrenome, email, senha, telefone, data_contratacao, cargo_id, salario, gerente_id, departamento_id)
VALUES
('William', 'Ferreira', 'William@gmail.com', 'jjjb3', '11 94002-8922', CURDATE(), 9, 
  (SELECT AVG(salario) FROM (SELECT salario FROM funcionarios WHERE departamento_id IN (1, 10)) AS subquery), 
  100, 14),
('Fernanda', 'Lima', 'Fernanda@gmail.com', 'jjjb3', '11 94002-8922', CURDATE(), 9, 
  (SELECT AVG(salario) FROM (SELECT salario FROM funcionarios WHERE departamento_id IN (1, 10)) AS subquery), 
  100, 14),
('Sumaia', 'Azevedo', 'Sumaia@gmail.com', 'jjjb3', '11 94002-8922', CURDATE(), 14, 
  (SELECT AVG(salario) FROM (SELECT salario FROM funcionarios WHERE departamento_id IN (1, 10)) AS subquery), 
  100, 14);
  
INSERT INTO dependentes (primeiro_nome, sobrenome, relacionamento, funcionario_id) VALUES
('Inara', 'Ferreira', 'Cônjuge', 218),
('Maria', 'Antonia', 'Filho(a)', 218),
('Rodrigo', 'Lima', 'Cônjuge', 219),
('Tainã', 'Azevedo', 'Filho(a)',220),
('Nathalia', 'Azevedo', 'Filho(a)', 220);

-- Informe todas as regiões em que a empresa atua acompanhadas de seus países. --
SELECT * FROM paises AS a
INNER JOIN regioes AS b ON a.regiao_id = b.regiao_id;

-- Joe Sciarra é filho de quem? --
SELECT 
	CONCAT(a.primeiro_nome, ' ', a.sobrenome) AS nomeFilho,
    CONCAT(b.primeiro_nome, ' ', b.sobrenome) AS nomePai
FROM
	dependentes AS a
    INNER JOIN funcionarios AS b ON a.funcionario_id = b.funcionario_id
WHERE a.primeiro_nome = "Joe";

-- Qual região possui mais países? --
SELECT 
	r.regiao_nome, COUNT(p.pais_id) AS total_paises
FROM 
	regioes r
	INNER JOIN paises p ON r.regiao_id = p.regiao_id
GROUP BY r.regiao_nome
ORDER BY total_paises DESC
LIMIT 1;

-- Exiba o nome cada funcionário acompanhado de seus dependentes. --
SELECT
	CONCAT(a.primeiro_nome, ' ', a.sobrenome) AS nomeFuncionario,
    CONCAT(b.primeiro_nome, ' ', b.sobrenome) AS nomeDependente,
    b.relacionamento
FROM
	funcionarios AS a
    INNER JOIN dependentes AS b ON a.funcionario_id = b.funcionario_id;
    
-- Karen Partners possui um(a) cônjuge? --
UPDATE momento.funcionarios
SET sobrenome = "Partners"
WHERE funcionario_id = 146;

SELECT
	*
FROM
	funcionarios AS a
    INNER JOIN dependentes AS b ON a.funcionario_id = b.funcionario_id
WHERE a.primeiro_nome = "Karen"
AND a.sobrenome = "Partners"
AND b.relacionamento = "Cônjuge";
