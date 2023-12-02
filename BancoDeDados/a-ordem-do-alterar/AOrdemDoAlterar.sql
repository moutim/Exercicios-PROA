USE  `hospitalDB`;

ALTER TABLE Medicos
ADD emAtividade VARCHAR(20);

UPDATE Medicos
SET emAtividade = 'ativo'
WHERE Medicos.idMedico IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

UPDATE Medicos
SET emAtividade = 'inativo'
WHERE Medicos.idMedico IN (11, 12, 13, 14, 15);

