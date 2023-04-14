    create database bd_studio;

    use bd_studio;

    create table cargo (
        id_cargo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        nome_cargo VARCHAR(40) NOT NULL,
        salario decimal(7,2) not null
    );



    create table servico (
        id_servico int not null,
        nome_servico varchar(50) not null,
        preco decimal(7,2) not null,
        CONSTRAINT PK_servico PRIMARY KEY (id_servico, nome_servico)
    );

    create table cliente (
        id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
        data_cadastro DATETIME NOT NULL,
        nome VARCHAR(150) NOT NULL,
        CPF TINYINT(11) NOT NULL UNIQUE,
        email VARCHAR(150) NOT NULL,
        idade TINYINT NOT NULL,
        senha VARCHAR(150) NOT NULL,
        purl varchar(20),
        ativo int not null 
    );

    CREATE TABLE funcionario (
        id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        data_admissao DATETIME,
        nome VARCHAR(150) NOT NULL,
        CPF TINYINT(11) NOT NULL UNIQUE,
        email VARCHAR(150) NOT NULL,
        idade TINYINT NOT NULL,
        senha VARCHAR(150) NOT NULL,
        id_cargo int not null,
        CONSTRAINT FK_funcionario_cargo FOREIGN KEY (id_cargo) REFERENCES cargo(id_cargo)

    );


    CREATE TABLE Agendamento (
        id_agendamento int not null AUTO_INCREMENT PRIMARY KEY,
        horario_atendimento DATE not null,
        id_cliente int not null,
        id_servico int not null,
        id_funcionario int not null,
        CONSTRAINT FK_agendamento_cliente FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
        CONSTRAINT FK_agendamento_servico FOREIGN KEY (id_servico)
        REFERENCES servico(id_servico),
        CONSTRAINT FK_agendamento_funcionario FOREIGN KEY (id_funcionario)
        REFERENCES Funcionario(id_funcionario)  
    );

    CREATE TABLE venda (
        id_venda int not null AUTO_INCREMENT PRIMARY KEY,
        valor_total float not null,
        data_venda DATETIME not null,
        id_cliente int not null,
        id_servico int not null,
        id_funcionario int not null,
        id_agendamento int not null,
        CONSTRAINT FK_venda_cliente FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
        CONSTRAINT FK_venda_servico FOREIGN KEY (id_servico)
        REFERENCES servico(id_servico),
        CONSTRAINT FK_venda_funcionario FOREIGN KEY (id_funcionario)
        REFERENCES Funcionario(id_funcionario),
        CONSTRAINT FK_venda_agendamento FOREIGN KEY (id_agendamento)
        REFERENCES Agendamento(id_agendamento)
    );


    create table telefone_cliente (
        id int not null AUTO_INCREMENT PRIMARY KEY,
        telefone VARCHAR(11),
        id_cliente int not null,

        CONSTRAINT FK_telefone_cliente_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)   
    );

    create table telefone_funcionario (
        id int not null AUTO_INCREMENT PRIMARY KEY,
        telefone VARCHAR(11),
        id_funcionario int not null,

        CONSTRAINT FK_telefone_funcionario_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)   
    );