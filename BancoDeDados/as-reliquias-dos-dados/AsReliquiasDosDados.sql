USE `hospitalDB`;

-- 1. Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio. --
SELECT
    p.nome AS nomePaciente,
    m.nome AS nomeMedico,
    co.nome AS nomeConvenio,
	c.data,
    c.valor,
    c.receita,
    es.especialidade,
    AVG(c.valor) OVER () AS valorMedioConsultas2020
FROM
    Consultas AS c
    INNER JOIN Pacientes AS p ON c.idPaciente = p.idPaciente
    INNER JOIN Medicos AS m ON c.idMedico = m.idMedico
    INNER JOIN Convenios AS co ON p.idConvenio = co.idConvenio
    INNER JOIN Especialidades AS es ON c.idEspecialidade = es.idEspecialidade
WHERE
    YEAR(c.data) = 2020;
    
-- 2. Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta. --
SELECT * FROM Internacoes
WHERE dataAlta > dataPrevistaAlta;

-- 3. Receituário completo da primeira consulta registrada com receituário associado. --
SELECT * FROM Consultas
LIMIT 1;

-- 4. Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio). --
SELECT * FROM Consultas
WHERE valor = (SELECT MAX(valor) FROM Consultas);

SELECT * FROM Consultas
WHERE valor = (SELECT MIN(valor) FROM Consultas);

-- 5. Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta. --
SELECT 
	A.idInternacao, A.dataEntrada, A.dataPrevistaAlta, A.dataAlta, 
	B.numero AS numeroQuarto, C.descricao AS tipoQuarto, C.valorDiaria,
	DATEDIFF(A.dataAlta, A.dataEntrada) AS diasInternacao,
	C.valorDiaria * DATEDIFF(A.dataAlta, A.dataEntrada) AS valorTotalInternacao
FROM 
	Internacoes AS A
	INNER JOIN Quartos AS B ON A.idQuarto = B.idQuarto
	INNER JOIN TiposQuarto AS C ON B.idTipoQuarto = C.idTipoQuarto;
    
-- 6. Data, procedimento e número de quarto de internações em quartos do tipo “apartamento” --
SELECT
	a.idInternacao,
    a.dataEntrada,
    a.dataPrevistaAlta,
    a.dataAlta,
	b.numero AS numeroQuarto,
    c.descricao
FROM 	
	Internacoes AS a
	INNER JOIN Quartos AS b ON a.idQuarto = b.idQuarto
	INNER JOIN TiposQuarto AS c ON b.idTipoQuarto = b.idTipoQuarto
WHERE c.descricao = "apartamentos";

-- 7. Nome do paciente, data da consulta e especialidade de todas as consultas em que 
-- os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta. --
SELECT 
	b.nome AS nomePaciente,
    TIMESTAMPDIFF(YEAR, b.dataDeNascimento, a.data) AS idadePaciente,
    a.data AS dataConsulta,
    c.especialidade
FROM 
	Consultas AS a
    INNER JOIN Pacientes AS b ON a.idPaciente = b.idPaciente
    INNER JOIN Especialidades AS c ON a.idEspecialidade = c.idEspecialidade
WHERE TIMESTAMPDIFF(YEAR, b.dataDeNascimento, a.data) < 18
AND c.especialidade != "pediatria"
ORDER BY a.data ASC;

-- 8. Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”. --
SELECT 
	g.nome AS nomePaciente,
    b.nome AS nomeMedico,
    a.dataEntrada,
    a.procedimento,
    d.especialidade,
    f.descricao AS tipoQuarto
FROM 
	Internacoes AS a
    INNER JOIN Medicos AS b ON a.idMedico = b.idMedico
    INNER JOIN MedicosEspecialidades AS c ON a.idMedico = c.idMedico
    INNER JOIN Especialidades AS d ON c.idEspecialidade = d.idEspecialidade
    INNER JOIN Quartos AS e ON a.idQuarto = e.idQuarto
    INNER JOIN TiposQuarto AS f ON e.idTipoQuarto = f.idTipoQuarto
    INNER JOIN Pacientes AS g ON a.idPaciente = g.idPaciente
WHERE d.especialidade = "gastrenterologia"
AND f.descricao = "enfermaria";

-- 9. Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou. --
SELECT
	a.nome AS nomeMedico,
	a.CRM,
    COUNT(b.idMedico) AS numeroConsultas
FROM
	Medicos AS a
    INNER JOIN Consultas AS b ON a.idMedico = b.idMedico
GROUP BY a.nome, a.CRM;

-- 10. Todos os médicos que tenham "Gabriel" no nome.  --
SELECT 
	*
FROM Medicos
WHERE nome LIKE "%Gabriel%";

-- 11. Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação. --
SELECT
	a.nome AS nomeEnfermeiro,
    a.CRE,
    COUNT(b.idEnfermeiro)
FROM
	Enfermeiros AS a
    INNER JOIN InternacoesEnfermeiros AS b ON a.idEnfermeiro = b.idEnfermeiro
GROUP BY a.nome, a.CRE
HAVING COUNT(b.idEnfermeiro) > 1;