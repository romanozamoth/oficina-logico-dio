-- ----------------------------
-- Tabela Cliente
-- ----------------------------
INSERT INTO Cliente (idCliente, nome, telefone, endereco) VALUES
(1, 'João Silva', '11999990001', 'Rua A, 123'),
(2, 'Maria Oliveira', '11999990002', 'Rua B, 456'),
(3, 'Carlos Souza', '11999990003', 'Rua C, 789');

-- ----------------------------
-- Tabela Veiculo
-- ----------------------------
INSERT INTO Veiculo (idVeiculo, placa, modelo, ano, Cliente_idCliente) VALUES
(1, 'ABC-1234', 'Fiat Uno', '2015', 1),
(2, 'DEF-5678', 'Honda Civic', '2018', 2),
(3, 'GHI-9012', 'Toyota Corolla', '2020', 3),
(4, 'JKL-3456', 'Ford Ka', '2017', 1);

-- ----------------------------
-- Tabela Ordem_Servico
-- ----------------------------
INSERT INTO Ordem_Servico (idOrdem_Servico, data_emissao, data_conclusao, status, valor_total, Veiculo_idVeiculo) VALUES
(1, '2025-10-01', '2025-10-02', 'Concluída', 500, 1),
(2, '2025-10-03', '2025-10-04', 'Pendente', 350, 2),
(3, '2025-10-04', NULL, 'Em Andamento', 200, 3),
(4, '2025-10-05', NULL, 'Pendente', 400, 4);

-- ----------------------------
-- Tabela Mecanico
-- ----------------------------
INSERT INTO Mecanico (idMecanico, nome, codigo, endereco, especialidade) VALUES
(1, 'Paulo Lima', 'M001', 'Rua D, 111', 'Motor'),
(2, 'Rita Santos', 'M002', 'Rua E, 222', 'Elétrica'),
(3, 'Roberto Costa', 'M003', 'Rua F, 333', 'Suspensão');

-- ----------------------------
-- Tabela Equipe
-- ----------------------------
INSERT INTO Equipe (idEquipe, nome_equipe) VALUES
(1, 'Equipe Alfa'),
(2, 'Equipe Beta');

-- ----------------------------
-- Tabela Equipe_has_Mecanico
-- ----------------------------
INSERT INTO Equipe_has_Mecanico (Equipe_idEquipe, Mecanico_idMecanico) VALUES
(1, 1),
(1, 2),
(2, 3);

-- ----------------------------
-- Tabela Servico
-- ----------------------------
INSERT INTO Servico (idServico, descricao, valor_ref) VALUES
(1, 'Troca de óleo', 100),
(2, 'Alinhamento', 80),
(3, 'Troca de pastilha de freio', 150);

-- ----------------------------
-- Tabela Peça
-- ----------------------------
INSERT INTO Peça (idPeça, nome, valor) VALUES
(1, 'Óleo 5W30', 50),
(2, 'Filtro de óleo', 30),
(3, 'Pastilha de freio', 70);

-- ----------------------------
-- Tabela Ordem_Servico_has_Servico
-- ----------------------------
INSERT INTO Ordem_Servico_has_Servico (Ordem_Servico_idOrdem_Servico, Ordem_Servico_Veiculo_idVeiculo, Servico_idServico, quantidade, valor_total) VALUES
(1, 1, 1, 1, 100),
(1, 1, 2, 1, 80),
(2, 2, 3, 1, 150),
(3, 3, 1, 1, 100),
(4, 4, 2, 2, 160);

-- ----------------------------
-- Tabela Ordem_Servico_has_Peça
-- ----------------------------
INSERT INTO Ordem_Servico_has_Peça (Ordem_Servico_idOrdem_Servico, Ordem_Servico_Veiculo_idVeiculo, Peça_idPeça, quantidade, valor_total) VALUES
(1, 1, 1, 1, 50),
(1, 1, 2, 1, 30),
(2, 2, 3, 2, 140),
(3, 3, 1, 1, 50),
(4, 4, 2, 1, 30);

-- ----------------------------
-- Tabela Equipe_has_Ordem_Servico
-- ----------------------------
INSERT INTO Equipe_has_Ordem_Servico (Equipe_idEquipe, Ordem_Servico_idOrdem_Servico) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4);
