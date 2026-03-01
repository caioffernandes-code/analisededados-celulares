CREATE DATABASE loja_celular;

use loja_celular;

CREATE TABLE lojas (
    id_loja INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    cidade VARCHAR(100),
    estado VARCHAR(50),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(50),
    modelo VARCHAR(100),
    armazenamento VARCHAR(20),
    cor VARCHAR(50),
    preco_base DECIMAL(10,2)
);

CREATE TABLE estoque (
    id_estoque INT PRIMARY KEY AUTO_INCREMENT,
    id_loja INT,
    id_produto INT,
    quantidade INT NOT NULL,
    preco_venda DECIMAL(10,2),
    FOREIGN KEY (id_loja) REFERENCES lojas(id_loja),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_loja INT,
    id_produto INT,
    quantidade INT,
    valor_unitario DECIMAL(10,2),
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_loja) REFERENCES lojas(id_loja),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

