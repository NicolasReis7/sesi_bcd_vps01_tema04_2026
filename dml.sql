USE manutencao_de_equipamentos;

INSERT INTO Equipamento
(id, nome, tipo, marca, modelo, numero_serie, data_aquisicao, status, setor, valor_de_aquisicao)
VALUES
(1, 'Torno CNC', 'Máquina Industrial', 'ROMI', 'GL 240M', 'ROMI001', '2022-03-15', 'ATIVO', 'Usinagem', 85000.00),
(2, 'Compressor de Ar', 'Compressor', 'Schulz', 'SRP 4015', 'SCHULZ003', '2023-01-10', 'ATIVO', 'Manutenção', 28000.00),
(3, 'Esteira Transportadora', 'Esteira', 'FlexLink', 'X85', 'FLEX004', '2020-11-05', 'ATIVO', 'Produção', 32000.00),
(4, 'Empilhadeira', 'Empilhadeira', 'Toyota', '8FG25', 'TOYOTA005', '2022-09-12', 'ATIVO', 'Logística', 67000.00),
(5, 'Furadeira de Coluna', 'Furadeira', 'Schulz', 'FC-25', 'SCHULZ006', '2021-04-18', 'INATIVO', 'Usinagem', 7500.00);

INSERT INTO Tecnico
(id, nome, especialidade, telefone, email)
VALUES
(1, 'Carlos Oliveira', 'Mecânica Industrial', '11987654321', 'carlos@fabrica.com'),
(2, 'João Santos', 'Elétrica Industrial', '11976543210', 'joao@fabrica.com'),
(3, 'Marcos Pereira', 'Furadeira', '11965432109', 'marcos@fabrica.com'),
(4, 'Lucas Ferreira', 'Automação Industrial', '11954321098', 'lucas@fabrica.com'),
(5, 'Rafael Souza', 'Manutenção Geral', '11943210987', 'rafael@fabrica.com');

INSERT INTO Peca
(id, nome, descricao, quantidade_estoque, estoque_minimo, preco)
VALUES
(1, 'Rolamento', 'Rolamento industrial 6205', 25, 5, 85.00),
(2, 'Correia Industrial', 'Correia para máquinas', 15, 5, 120.00),
(3, 'Filtro de Ar', 'Filtro para compressor', 20, 5, 75.00),
(4, 'Óleo Hidráulico', 'Óleo hidráulico 20 litros', 10, 3, 350.00),
(5, 'Sensor de Proximidade', 'Sensor industrial', 12, 3, 180.00);

INSERT INTO Ordem_de_Manutencao
(id, id_equipamento, tipo, descricao, data_abertura, data_inicio, data_fim, status, prioridade)
VALUES
(1, 1, 'Preventiva', 'Revisão geral do torno CNC', '2026-08-01', '2026-08-02', '2026-08-02', 'INATIVO', 'MEDIA'),

(2, 2, 'Corretiva', 'Prensa com perda de pressão', '2026-08-05', '2026-08-05', '2026-08-06', 'INATIVO', 'ALTA'),

(3, 3, 'Preventiva', 'Troca do filtro do compressor', '2026-08-10', '2026-08-10', '2026-08-10', 'INATIVO', 'BAIXA'),

(4, 4, 'Corretiva', 'Esteira apresentando falha', '2026-08-15', '2026-08-16', '2026-08-17', 'INATIVO', 'ALTA'),

(5, 5, 'Preventiva', 'Revisão da empilhadeira', '2026-08-20', '2026-08-21', '2026-08-21', 'INATIVO', 'MEDIA'),

INSERT INTO Manutencao
(id, id_ordem, id_tecnico, descricao, data_execucao, horas_trabalhadas, observacoes)
VALUES
(1, 1, 1, 'Revisão do torno CNC', '2026-08-02', '03:00:00',
 'Equipamento revisado e funcionando normalmente'),

(2, 2, 3, 'Reparo do sistema hidráulico', '2026-08-06', '05:00:00',
 'Sistema hidráulico reparado e testado'),

(3, 3, 5, 'Troca do filtro de ar', '2026-08-10', '02:00:00',
 'Filtro antigo substituído'),

(4, 4, 4, 'Reparo da esteira', '2026-08-17', '04:00:00',
 'Sensor substituído e esteira testada'),

(5, 5, 1, 'Revisão da empilhadeira', '2026-08-21', '03:30:00',
 'Revisão preventiva realizada'),

INSERT INTO Peca_da_Manutencao
(id, id_peca, quantidade)
VALUES
(1, 1, 2),
(2, 4, 1),
(3, 3, 1),
(4, 5, 2),
(5, 2, 1);