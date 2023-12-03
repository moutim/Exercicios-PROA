USE `hospitalDB`;

INSERT INTO Especialidades (especialidade) VALUES
('pediatria'),
('clínica geral'),
('gastrenterologia'),
('dermatologia'),
('psiquiatria'),
('oncologia'),
('ginecologia'),
('ortopedia'),
('cardiologia'),
('neurologia');

INSERT INTO Area (area) VALUES
('generalista'),
('especialista'),
('residente');

INSERT INTO Medicos (nome, CRM, CPF, dataDeNascimento, idArea) VALUES
('Camile Santana Moutim', 260823, 27707622812, '2003-03-20', 2),
('Vitor Moutim', 123456, 51225511895, '2001-05-22', 2),
('Ana Oliveira', 789012, 12345678901, '1995-12-15', 3),
('Carlos Santos', 567890, 34567890123, '1988-08-25', 2),
('Mariana Pereira', 987654, 21098765432, '1976-02-18', 1),
('Pedro Souza', 345678, 54321098765, '1990-07-30', 3),
('Lucia Martins', 876543, 67890123456, '1985-11-05', 2),
('Rodrigo Lima', 234567, 78901234567, '1972-09-12', 1),
('Fernanda Almeida', 654321, 87654321098, '1998-04-03', 3),
('Gabriel Costa', 432109, 98765432109, '1983-06-22', 2),
('Isabela Santos', 876543, 34567890120, '1992-01-14', 1),
('Rafaela Oliveira', 987654, 56789012345, '1978-07-28', 3),
('Luiz Pereira', 765432, 67890123456, '1987-04-09', 2),
('Júlia Martins', 123987, 78901234567, '1993-10-17', 1),
('Vinícius Souza', 543219, 98765432109, '1981-12-05', 3);

INSERT INTO MedicosEspecialidades (idMedico, idEspecialidade) VALUES 
(1, 1),
(1, 2),
(2, 7),
(2, 1),
(3, 4),
(3, 5),
(4, 5),
(5, 6),
(6, 9),
(7, 6),
(7, 7),
(8, 3),
(8, 7),
(9, 8),
(10, 10),
(10, 9),
(11, 10),
(12, 7),
(13, 2),
(14, 4),
(14, 1),
(15, 2);

INSERT INTO Convenios (nome, CNPJ, carencia) VALUES
('Amil', 29309127000179, 60),
('Unimed', 12345678000123, 45),
('SulAmérica', 98765432000198, 30),
('Bradesco Saúde', 45678901000176, 90),
('NotreDame', 65432109876543, 15);

INSERT INTO Pacientes (nome, CPF, RG, dataDeNascimento, endereco, telefone, email, idConvenio) VALUES
('Jose Rodrigues', 73208817487, 53182455, '1972-08-24', 'Affonso Paulillo - 14 C', '(11) 94459-7825', 'joserodrigues@gmail.com', 2),
('Ana Oliveira', 78901234567, 12345678, '1995-12-15', 'Rua das Flores - 123', '(11) 98765-4321', 'anaoliveira@gmail.com', 3),
('Carlos Silva', 98765432109, 87654321, '1988-05-18', 'Avenida Principal - 456', '(11) 87654-3210', 'carlossilva@gmail.com', 1),
('Mariana Pereira', 21098765432, 98765432, '1976-02-18', 'Rua dos Bosques - 789', '(11) 23456-7890', 'marianapereira@gmail.com', 4),
('Pedro Souza', 54321098765, 34567890, '2008-07-30', 'Travessa das Ruas - 56', '(11) 76543-2109', 'pedrosouza@gmail.com', 5),
('Lucia Martins', 67890123456, 23456789, '1985-11-05', 'Praça da Liberdade - 987', '(11) 32109-8765', 'luciamartins@gmail.com', 2),
('Rodrigo Lima', 78901234567, 45678901, '2009-09-12', 'Rua da Esperança - 654', '(11) 65432-1098', 'rodrigolima@gmail.com', 3),
('Fernanda Almeida', 87654321098, 56789012, '2012-04-03', 'Alameda dos Sonhos - 321', '(11) 89012-3456', 'fernandaalmeida@gmail.com', 1),
('Gabriel Costa', 98765432109, 67890123, '2014-06-22', 'Avenida das Estrelas - 876', '(11) 21098-7654', 'gabrielcosta@gmail.com', 4),
('Isabela Santos', 34567890120, 78901234, '1992-01-14', 'Rua do Progresso - 543', '(11) 43210-9876', 'isabelasantos@gmail.com', 5),
('Rafaela Oliveira', 56789012345, 89012345, '1978-07-28', 'Travessa dos Sonhos - 210', '(11) 98765-4321', 'rafaelaoliveira@gmail.com', 2),
('Luiz Pereira', 67890123456, 23456789, '1987-04-09', 'Avenida das Flores - 987', '(11) 87654-3210', 'luizpereira@gmail.com', 3),
('Júlia Martins', 78901234567, 45678901, '2006-10-17', 'Rua da Alegria - 654', '(11) 10987-6543', 'juliamartins@gmail.com', 1),
('Vinícius Souza', 98765432109, 56789012, '1981-12-05', 'Praça da Harmonia - 321', '(11) 54321-0987', 'viniciussouza@gmail.com', 4),
('Camile Santana Moutim', 27707622812, 260823, '2003-03-20', 'Avenida da Paz - 987', '(11) 87654-3210', 'camilemoutim@gmail.com', 5);

INSERT INTO Consultas (idPaciente, idMedico, idEspecialidade, data, valor, receita) VALUES
(1, 1, 2, '2018-03-15', 149.90, 'Prescrição: Ibuprofeno 200mg, 1 comprimido a cada 6 horas. Tomar após as refeições. Descansar e hidratar. Consulte um médico se os sintomas persistirem.'),
(2, 3, 1, '2016-07-22', 120.50, 'Prescrição: Paracetamol 500mg, 1 comprimido a cada 8 horas. Repouso e ingestão de líquidos. Consulte um médico se os sintomas persistirem.'),
(3, 5, 3, '2017-05-10', 200.00, 'Prescrição: Amoxicilina 500mg, 1 comprimido a cada 12 horas. Tomar com alimentos. Consulte um médico se os sintomas persistirem.'),
(4, 7, 2, '2019-11-03', 180.75, 'Prescrição: Omeprazol 20mg, 1 comprimido ao dia. Evitar alimentos gordurosos. Consulte um médico se os sintomas persistirem.'),
(5, 9, 1, '2015-02-14', 95.25, 'Prescrição: Dipirona 500mg, 1 comprimido a cada 6 horas. Tomar com água. Consulte um médico se os sintomas persistirem.'),
(6, 11, 3, '2021-09-08', 150.00, 'Prescrição: Loratadina 10mg, 1 comprimido ao dia. Evitar exposição ao sol. Consulte um médico se os sintomas persistirem.'),
(7, 13, 2, '2016-04-30', 130.80, 'Prescrição: Ciprofloxacino 500mg, 1 comprimido a cada 12 horas. Tomar antes das refeições. Consulte um médico se os sintomas persistirem.'),
(8, 15, 1, '2019-01-17', 170.25, 'Prescrição: AAS 100mg, 1 comprimido ao dia. Tomar após as refeições. Consulte um médico se os sintomas persistirem.'),
(9, 2, 3, '2017-08-12', 140.50, 'Prescrição: Dexametasona 4mg, 1 comprimido ao dia. Tomar com alimentos. Consulte um médico se os sintomas persistirem.'),
(10, 4, 2, '2020-06-05', 160.00, 'Prescrição: Ranitidina 150mg, 1 comprimido a cada 8 horas. Tomar antes das refeições. Consulte um médico se os sintomas persistirem.'),
(11, 6, 1, '2018-09-23', 110.75, 'Prescrição: Buscopan 10mg, 1 comprimido a cada 6 horas. Tomar com água. Consulte um médico se os sintomas persistirem.'),
(12, 8, 3, '2016-12-28', 190.20, 'Prescrição: Fluconazol 150mg, 1 comprimido ao dia. Tomar com alimentos. Consulte um médico se os sintomas persistirem.'),
(13, 10, 2, '2015-11-11', 125.40, 'Prescrição: Metoclopramida 10mg, 1 comprimido a cada 8 horas. Tomar antes das refeições. Consulte um médico se os sintomas persistirem.'),
(14, 12, 1, '2021-03-02', 145.90, 'Prescrição: Codeína 30mg, 1 comprimido a cada 12 horas. Tomar com água. Consulte um médico se os sintomas persistirem.'),
(15, 14, 3, '2017-06-19', 155.25, 'Prescrição: Sulfametoxazol + Trimetoprima 800/160mg, 1 comprimido a cada 12 horas. Tomar com alimentos. Consulte um médico se os sintomas persistirem.'),
(1, 9, 2, '2019-04-08', 165.80, 'Prescrição: Naproxeno 500mg, 1 comprimido a cada 8 horas. Tomar após as refeições. Consulte um médico se os sintomas persistirem.'),
(2, 11, 1, '2016-01-25', 135.00, 'Prescrição: Cetoprofeno 100mg, 1 comprimido a cada 6 horas. Tomar com água. Consulte um médico se os sintomas persistirem.'),
(3, 13, 3, '2022-01-01', 120.75, 'Prescrição: Clonazepam 2mg, 1 comprimido ao dia. Tomar antes de dormir. Consulte um médico se os sintomas persistirem.'),
(4, 15, 2, '2015-10-14', 145.00, 'Prescrição: Domperidona 10mg, 1 comprimido a cada 8 horas. Tomar antes das refeições. Consulte um médico se os sintomas persistirem.'),
(5, 2, 1, '2020-08-07', 155.25, 'Prescrição: Paroxetina 20mg, 1 comprimido ao dia. Tomar com alimentos. Consulte um médico se os sintomas persistirem.');

INSERT INTO Enfermeiros (nome, CPF, CRE) VALUES
('Silvania do Val Moutim', 27707622812, 345987),
('Ricardo Oliveira', 12345678901, 987654),
('Amanda Santos', 98765432109, 543210),
('Carlos Souza', 34567890123, 876543),
('Juliana Martins', 21098765432, 234567),
('Felipe Pereira', 54321098765, 654321),
('Lucia Silva', 87654321098, 109876),
('Gabriel Costa', 43210987654, 876543),
('Mariana Lima', 56789012345, 345678),
('Rodrigo Santos', 67890123456, 567890);

INSERT INTO TiposQuarto (descricao, valorDiaria) VALUES
('apartamentos', 199.00),
('quarto duplo', 149.00),
('enfermaria', 99.00),
('UTI', 299.00);

INSERT INTO Quartos (numero, idTipoQuarto) VALUES
(7, 1),
(8, 2),
(9, 3),
(10, 4);

INSERT INTO Internacoes (dataEntrada, dataPrevistaAlta, dataAlta, procedimento, idQuarto, idPaciente, idMedico) VALUES
('2016-03-10', '2016-04-12', '2016-04-15', 'Cirurgia de apêndice', 1, 1, 2),
('2017-07-05', '2017-08-10', '2017-08-05', 'Tratamento de fratura', 2, 1, 3),
('2018-11-20', '2018-12-23', '2018-12-25', 'Cirurgia de hérnia', 3, 3, 4),
('2019-02-15', '2019-03-18', '2019-03-20', 'Angioplastia coronária', 4, 3, 5),
('2016-06-25', '2016-07-30', '2016-07-28', 'Apendicectomia', 1, 5, 6),
('2017-09-12', '2017-10-17', '2017-10-15', 'Cirurgia de catarata', 2, 6, 7),
('2018-04-03', '2018-05-08', '2018-05-06', 'Colecistectomia', 3, 7, 8),
('2019-12-18', '2020-01-20', '2020-01-22', 'Cirurgia de próstata', 4, 8, 9),
('2015-02-28', '2015-04-05', '2015-04-02', 'Histerectomia', 1, 9, 10),
('2016-10-10', '2016-11-15', '2016-11-10', 'Cirurgia de joelho', 2, 10, 11);

INSERT INTO InternacoesEnfermeiros (idInternacao, idEnfermeiro) VALUES 
(1, 1),
(2, 1),
(3, 1),
(2, 2),
(3, 3),
(4, 3),
(4, 4),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(6, 6),
(7, 7),
(8, 7),
(8, 8),
(9, 9),
(10, 10);
