
-- Inserindo Pessoas
INSERT INTO Pessoa (CPF, Nome, Sexo) VALUES
('11111111111', 'Carlos Silva', 'M'),
('22222222222', 'Ana Costa', 'F'),
('33333333333', 'João Pedro', 'M'),
('44444444444', 'Mariana Lima', 'F');

-- Inserindo Pilotos
INSERT INTO Piloto (CPF, LicencaVoo) VALUES
('11111111111', 'LIC1234'),
('33333333333', 'LIC5678');

-- Inserindo Passageiros
INSERT INTO Passageiro (CPF, Categoria) VALUES
('22222222222', 'Gold'),
('44444444444', 'Silver');

-- Inserindo Telefones
INSERT INTO Telefone (NumeroTelefone, CPF_Passageiro) VALUES
('11999990000', '22222222222'),
('11988880000', '22222222222'),
('11777770000', '44444444444');

-- Inserindo Voos
INSERT INTO Voo (NumeroVoo, Data, CPF_Piloto) VALUES
(101, date'2025-07-01', '11111111111'),
(102, date'2025-07-02', '33333333333'),
(103, date'2025-07-03', '11111111111');

-- Inserindo Reservas
INSERT INTO Reserva (CPF_Passageiro, NumeroVoo) VALUES
('22222222222', 101),
('22222222222', 103),
('44444444444', 102);
