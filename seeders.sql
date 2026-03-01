INSERT INTO lojas (nome, cnpj, cidade, estado, telefone, email) VALUES
('SmartTech Centro', '12.345.678/0001-10', 'Rio de Janeiro', 'RJ', '(21) 99999-1111', 'centro@smarttech.com'),
('SmartTech Norte', '12.345.678/0002-91', 'Niterói', 'RJ', '(21) 99999-2222', 'norte@smarttech.com'),
('SmartTech Sul', '12.345.678/0003-72', 'Petrópolis', 'RJ', '(24) 99999-3333', 'sul@smarttech.com');

INSERT INTO produtos (nome, marca, modelo, armazenamento, cor, preco_base) VALUES
('iPhone 15 128GB', 'Apple', 'iPhone 15', '128GB', 'Preto', 4999.90),
('Galaxy S24 256GB', 'Samsung', 'Galaxy S24', '256GB', 'Prata', 4299.90),
('Moto G84 128GB', 'Motorola', 'Moto G84', '128GB', 'Azul', 1899.90);

INSERT INTO estoque (id_loja, id_produto, quantidade, preco_venda) VALUES
-- Loja 1
(1, 1, 10, 5199.90),
(1, 2, 8, 4499.90),
(1, 3, 15, 1999.90),

-- Loja 2
(2, 1, 5, 5149.90),
(2, 2, 10, 4399.90),
(2, 3, 20, 1949.90),

-- Loja 3
(3, 1, 7, 5099.90),
(3, 2, 6, 4449.90),
(3, 3, 12, 1899.90);

INSERT INTO vendas (id_loja, id_produto, quantidade, valor_unitario) VALUES
(1, 1, 1, 5199.90),
(1, 3, 2, 1999.90),
(2, 2, 1, 4399.90),
(3, 3, 3, 1899.90);