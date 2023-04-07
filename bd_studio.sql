create database bd_studio;

use bd_studio;

create table Clientes (

    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    data_cadastro DATETIME NOT NULL,
    nome VARCHAR(150) NOT NULL,
    contato VARCHAR(11) NOT NULL,
    CPF TINYINT(11) NOT NULL UNIQUE,
    email VARCHAR(150) NOT NULL,
    idade TINYINT NOT NULL,
    senha VARCHAR(150) NOT NULL
);

CREATE TABLE Funcionarios (

    id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    funcao VARCHAR(50) NOT NULL,
    salario FLOAT NOT NULL,
    data_admissao DATETIME,
    nome VARCHAR(150) NOT NULL,
    contato VARCHAR(11) NOT NULL,
    CPF TINYINT(11) NOT NULL UNIQUE,
    email VARCHAR(150) NOT NULL,
    idade TINYINT NOT NULL,
    senha VARCHAR(150) NOT NULL
);

CREATE TABLE servicos  (
    id_servico int not null AUTO_INCREMENT  PRIMARY KEY,
    descricao VARCHAR(50) not null,
    preco FLOAT not null
);   

CREATE TABLE Agendamentos (
    id_agendamento int not null AUTO_INCREMENT PRIMARY KEY,
    horario_atendimento DATETIME not null,
    id_cliente int not null,
    id_servico int not null,
    id_funcionario int not null,
    CONSTRAINT FK_agendamentos_clientes FOREIGN KEY (id_cliente)
    REFERENCES clientes(id_cliente),
    CONSTRAINT FK_agendamentos_servicos FOREIGN KEY (id_servico)
    REFERENCES servicos(id_servico),
    CONSTRAINT FK_agendamentos_funcionarios FOREIGN KEY (id_funcionario)
    REFERENCES Funcionarios(id_funcionario)  
);

CREATE TABLE Vendas (
    id_venda int not null AUTO_INCREMENT PRIMARY KEY,
    valor float not null,
    data_venda DATETIME not null,
    id_cliente int not null,
    id_servico int not null,
    id_funcionario int not null,
    id_agendamento int not null,
    CONSTRAINT FK_Vendas_clientes FOREIGN KEY (id_cliente)
    REFERENCES clientes(id_cliente),
    CONSTRAINT FK_Vendas_servicos FOREIGN KEY (id_servico)
    REFERENCES servicos(id_servico),
    CONSTRAINT FK_Vendas_funcionarios FOREIGN KEY (id_funcionario)
    REFERENCES Funcionarios(id_funcionario),
    CONSTRAINT FK_Vendas_agendamentos FOREIGN KEY (id_agendamento)
    REFERENCES  Agendamentos(id_agendamento)
);