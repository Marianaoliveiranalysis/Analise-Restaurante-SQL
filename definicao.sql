create database restaurante;
use restaurante;
show databases;
create table funcionarios(
  id_funcionario INT auto_increment PRIMARY KEY,
  nome VARCHAR(255),
  CPF  VARCHAR(14),
  data_nascimento DATE,
  endereco VARCHAR(255),
  telefone VARCHAR(15),
  email VARCHAR(100),
  cargo VARCHAR(100),
  salario DECIMAL (10,2),
  data_admissao DATE
);
create table clientes(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
cpf  VARCHAR(14),
data_nascimento DATE,
endereco VARCHAR(100),
telefone VARCHAR (15),
email VARCHAR(100),
cargo VARCHAR(100),
salario DECIMAL (10,2),
data_cadastro DATE
);

create table produtos(
id_produto INT auto_increment PRIMARY KEY,
nome VARCHAR(255),
descrição TEXT,
preço DECIMAL(10,2),
categoria VARCHAR(100)
);

create table pedidos(
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_funcionario INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    data_pedido DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

CREATE TABLE info_produtos (
    id_info INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    ingredientes TEXT NOT NULL,
    fornecedor VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
