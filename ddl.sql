DROP DATABASE IF EXISTS manutencao_de_equipamentos;

CREATE DATABASE manutencao_de_equipamentos;

USE manutencao_de_equipamentos;

CREATE TABLE Equipamento (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100),
    tipo VARCHAR(50),
    marca VARCHAR(50),
    modelo VARCHAR(30),
    numero_serie VARCHAR(30),
    data_aquisicao DATE,
    status ENUM('ATIVO', 'INATIVO') NOT NULL DEFAULT 'ATIVO',
    setor VARCHAR(50) NOT NULL,
    valor_de_aquisicao DECIMAL(10,2)
);

CREATE TABLE Ordem_de_Manutencao (
    id INT NOT NULL PRIMARY KEY,
    id_equipamento INT NOT NULL,
    tipo VARCHAR(100),
    descricao VARCHAR(100),
    data_abertura DATE,
    data_inicio DATE,
    data_fim DATE,
    status ENUM('ATIVO', 'INATIVO') NOT NULL DEFAULT 'ATIVO',
    prioridade VARCHAR(20),

    FOREIGN KEY (id_equipamento) REFERENCES Equipamento(id)
);

CREATE TABLE Tecnico (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100),
    especialidade TEXT,
    telefone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Peca (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(50),
    quantidade_estoque INT NOT NULL,
    estoque_minimo INT NOT NULL,
    preco DECIMAL(10,2)
);

CREATE TABLE Manutencao (
    id INT NOT NULL PRIMARY KEY,
    id_ordem INT NOT NULL,
    id_tecnico INT NOT NULL,
    descricao VARCHAR(50),
    data_execucao DATE,
    horas_trabalhadas TIME,
    observacoes TEXT,

    FOREIGN KEY (id_ordem) REFERENCES Ordem_de_Manutencao(id),
    FOREIGN KEY (id_tecnico) REFERENCES Tecnico(id)
);

CREATE TABLE Peca_da_Manutencao (
    id INT NOT NULL PRIMARY KEY,
    id_peca INT NOT NULL,
    quantidade INT NOT NULL,

    FOREIGN KEY (id_peca) REFERENCES Peca(id)
);      