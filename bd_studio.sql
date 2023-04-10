create database bd_studio;

use bd_studio;

create table cargos (
    id_cargo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_cargo VARCHAR(40) NOT NULL,
    salario decimal(7,2) not null
);

CREATE TABLE servicos (
    id_servico int not null AUTO_INCREMENT PRIMARY KEY,
    nome_servico varchar(50) not null
);

CREATE TABLE detalhes_servico (
    id_servico int not null,
    nome_servico varchar(50) not null,
    preco decimal(7,2) not null,
    CONSTRAINT PK_detalhes_servico PRIMARY KEY (id_servico, nome_servico),
    CONSTRAINT FK_detalhes_servico_servicos FOREIGN KEY (id_servico, nome_servico) REFERENCES servicos(id_servico, nome_servico)
);

create table clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    data_cadastro DATETIME NOT NULL,
    nome VARCHAR(150) NOT NULL,
    CPF TINYINT(11) NOT NULL UNIQUE,
    email VARCHAR(150) NOT NULL,
    idade TINYINT NOT NULL,
    senha VARCHAR(150) NOT NULL
);

CREATE TABLE funcionarios (
    id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_admissao DATETIME,
    nome VARCHAR(150) NOT NULL,
    CPF TINYINT(11) NOT NULL UNIQUE,
    email VARCHAR(150) NOT NULL,
    idade TINYINT NOT NULL,
    senha VARCHAR(150) NOT NULL,
    id_cargo int not null,
    CONSTRAINT FK_funcionarios_cargos FOREIGN KEY (id_cargo) REFERENCES cargos(id_cargo)

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

CREATE TABLE vendas (
    id_venda int not null AUTO_INCREMENT PRIMARY KEY,
    valor_total float not null,
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
    REFERENCES Agendamentos(id_agendamento)
);


create table telefone_cliente (
    id int not null AUTO_INCREMENT PRIMARY KEY,
    telefone VARCHAR(11),
    id_cliente int not null,

    CONSTRAINT FK_telefone_cliente_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)   
);

create table telefone_funcionario (
    id int not null AUTO_INCREMENT PRIMARY KEY,
    telefone VARCHAR(11),
    id_funcionario int not null,

    CONSTRAINT FK_telefone_funcionario_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)   
);