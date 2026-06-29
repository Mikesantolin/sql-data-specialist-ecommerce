use ecommerce;

-- ----------------------------------------------------------
-- 1. CLIENTES (10 registros)
-- ----------------------------------------------------------
INSERT INTO cliente (Pnome, Minic, Unome, CPF, endereco, bairro, cidade, estado, dataNascimento) VALUES
('Ana',      'M.S', 'Silva',    '12345678901', 'Rua das Flores, 123',     'Centro',      'Sao Paulo',      'SP', '1990-03-15'),
('Bruno',    'C.O', 'Costa',    '23456789012', 'Av. Brasil, 456',         'Jardins',     'Rio de Janeiro', 'RJ', '1985-07-22'),
('Carlos',   'A.M', 'Mendes',   '34567890123', 'Rua Ipiranga, 789',       'Bela Vista',  'Belo Horizonte', 'MG', '1992-11-08'),
('Diana',    'F.L', 'Lima',     '45678901234', 'Rua Laranjeiras, 12',     'Flamengo',    'Rio de Janeiro', 'RJ', '1988-04-30'),
('Eduardo',  'J.S', 'Santos',   '56789012345', 'Av. Paulista, 1000',      'Bela Vista',  'Sao Paulo',      'SP', '1995-09-17'),
('Fernanda', 'P.R', 'Rocha',    '67890123456', 'Rua XV de Nov, 321',      'Centro',      'Curitiba',       'PR', '1993-01-25'),
('Gustavo',  'R.A', 'Alves',    '78901234567', 'Av. Atlantica, 567',      'Copacabana',  'Rio de Janeiro', 'RJ', '1980-06-12'),
('Helena',   'M.D', 'Dias',     '89012345678', 'Rua Augusta, 890',        'Consolacao',  'Sao Paulo',      'SP', '1997-12-03'),
('Igor',     'L.F', 'Ferreira', '90123456789', 'Rua da Paz, 234',         'Boa Viagem',  'Recife',         'PE', '1991-08-19'),
('Julia',    'C.M', 'Martins',  '01234567890', 'Av. Beira-Mar, 678',      'Meireles',    'Fortaleza',      'CE', '1994-05-07');

-- ----------------------------------------------------------
-- 2. PRODUTOS (20 registros)
-- ----------------------------------------------------------
INSERT INTO produto (Pnome, categoria, descricao, classificacao_crianca, valor, avaliacao, tamanho) VALUES
('Smartphone Samsung',  'eletronico', 'Smartphone Android 128GB camera dupla',      false, 1299.99, 4.5, '15x7cm'),
('Notebook Dell',       'eletronico', 'Notebook 15pol 8GB RAM 256GB SSD',           false, 2899.99, 4.7, '35x25cm'),
('Fone Bluetooth',      'eletronico', 'Fone de ouvido Bluetooth sem fio',           false,  299.99, 4.2, '20x18cm'),
('Smart TV 55pol',      'eletronico', 'Smart TV 55 polegadas 4K UHD HDR',           false, 3499.99, 4.8, '125x75cm'),
('Tablet 10pol',        'eletronico', 'Tablet 10 polegadas WiFi 64GB',              false,  999.99, 4.4, '24x17cm'),
('Camera 20MP',         'eletronico', 'Camera digital 20MP com zoom optico',        false, 1599.99, 4.6, '12x8cm'),
('Camiseta Basica',     'vestimenta', 'Camiseta 100% algodao manga curta',          false,   49.99, 4.0, 'M'),
('Calca Jeans',         'vestimenta', 'Calca jeans slim fit masculina',             false,  149.99, 4.3, '42'),
('Vestido Floral',      'vestimenta', 'Vestido casual florido feminino',            false,   89.99, 4.1, 'P'),
('Tenis Esportivo',     'vestimenta', 'Tenis para corrida e academia',              false,  199.99, 4.6, '40'),
('LEGO City Set',       'brinquedos', 'Set LEGO City com 500 pecas',               true,   249.99, 4.9, '35x25cm'),
('Boneca Fashion',      'brinquedos', 'Boneca articulada com acessorios',          true,    79.99, 4.4, '30x15cm'),
('Carro Controle',      'brinquedos', 'Carro de controle remoto escala 1:10',      true,   129.99, 4.2, '25x15cm'),
('Arroz Tipo1 5kg',     'alimentos',  'Arroz branco tipo 1 pacote 5kg',            false,   29.99, 4.5, '5kg'),
('Cafe Moido 500g',     'alimentos',  'Cafe torrado e moido premium 500g',         false,   19.99, 4.7, '500g'),
('Azeite Extra 500ml',  'alimentos',  'Azeite de oliva extra virgem 500ml',        false,   34.99, 4.6, '500ml'),
('Sofa 3 Lugares',      'moveis',     'Sofa 3 lugares revestimento em tecido',     false, 1899.99, 4.3, '200x85cm'),
('Mesa de Escritorio',  'moveis',     'Mesa de escritorio em MDF 140x70cm',        false,  599.99, 4.1, '140x70cm'),
('Cadeira Ergonomica',  'moveis',     'Cadeira ergonomica com apoio lombar',       false,  799.99, 4.5, '65x65cm'),
('Estante 5 Prat',      'moveis',     'Estante com 5 prateleiras em MDF',          false,  449.99, 4.2, '80x180cm');

-- ----------------------------------------------------------
-- 3. ESTOQUE (4 registros)
-- ----------------------------------------------------------
INSERT INTO estoque (endereco, bairro, cidade, estado, quantidade) VALUES
('Rua Industrial, 1000',     'Distrito Industrial', 'Sao Paulo',      'SP', 500),
('Av. Comercial, 500',       'Centro',              'Rio de Janeiro', 'RJ', 300),
('Rua Logistica, 200',       'Zona Norte',          'Belo Horizonte', 'MG', 400),
('Av. das Industrias, 750',  'Industrial',          'Curitiba',       'PR', 250);

-- ----------------------------------------------------------
-- 4. FORNECEDOR (5 registros)
-- ----------------------------------------------------------
INSERT INTO fornecedor (razaoSocial, CNPJ, contato) VALUES
('Tech Distribuidora Ltda',  '12345678000100', '11999990001'),
('Moda Fashion SA',          '23456789000100', '11999990002'),
('Brinquedos Kids Ltda',     '34567890000100', '11999990003'),
('Alimentos Naturais SA',    '45678901000100', '11999990004'),
('Moveis e Cia Ltda',        '56789012000100', '11999990005');

-- ----------------------------------------------------------
-- 5. VENDEDOR (5 registros)
-- ----------------------------------------------------------
INSERT INTO vendedor (nomeSocial, nome, CNPJ, CPF, endereco, bairro, cidade, estado, contato) VALUES
('Loja do Joao ME',  'Joao Pedro Souza', '11122233000100', NULL,        'Rua Comercio, 123', 'Centro',     'Sao Paulo',      'SP', '11988880001'),
('Moda Store Ltda',  'Maria Aparecida',  '22233344000100', NULL,        'Av. Moda, 456',     'Jardins',    'Sao Paulo',      'SP', '11988880002'),
('Eletronicos XP',   'Carlos Roberto',   '33344455000100', NULL,        'Rua Tech, 789',     'Lapa',       'Sao Paulo',      'SP', '11988880003'),
('MEI Fernanda',     'Fernanda Gomes',   NULL,             '987654321', 'Av. Pequena, 100',  'Centro',     'Rio de Janeiro', 'RJ', '21988880004'),
('Pedro Vendas ME',  'Pedro Almeida',    NULL,             '876543210', 'Rua do Sol, 200',   'Zona Norte', 'Curitiba',       'PR', '41988880005');

-- ----------------------------------------------------------
-- 6. MÉTODO DE PAGAMENTO (15 registros)
--    Mapeamento: cliente → métodos
--    Ana(1): crédito, PIX | Bruno(2): crédito
--    Carlos(3): débito, PIX | Diana(4): crédito
--    Eduardo(5): boleto, crédito | Fernanda(6): PIX
--    Gustavo(7): crédito | Helena(8): débito, PIX
--    Igor(9): crédito | Julia(10): boleto, PIX
-- ----------------------------------------------------------
INSERT INTO metodoPagamento (tipo, limite, idPagamentoCliente) VALUES
('CREDITO', 5000.00,  1),  -- id: 1  → Ana
('PIX',     NULL,     1),  -- id: 2  → Ana
('CREDITO', 3000.00,  2),  -- id: 3  → Bruno
('DEBITO',  NULL,     3),  -- id: 4  → Carlos
('PIX',     NULL,     3),  -- id: 5  → Carlos
('CREDITO', 8000.00,  4),  -- id: 6  → Diana
('BOLETO',  NULL,     5),  -- id: 7  → Eduardo
('CREDITO', 2000.00,  5),  -- id: 8  → Eduardo
('PIX',     NULL,     6),  -- id: 9  → Fernanda
('CREDITO', 6000.00,  7),  -- id: 10 → Gustavo
('DEBITO',  NULL,     8),  -- id: 11 → Helena
('PIX',     NULL,     8),  -- id: 12 → Helena
('CREDITO', 4000.00,  9),  -- id: 13 → Igor
('BOLETO',  NULL,     10), -- id: 14 → Julia
('PIX',     NULL,     10); -- id: 15 → Julia

-- ----------------------------------------------------------
-- 7. ORDEM PEDIDO (20 registros)
--    Regra: idPagamentoCliente deve ser o mesmo dono
--    do idPagamentoPedido (chave composta na FK)
-- ----------------------------------------------------------
INSERT INTO ordemPedido (idOrdemCliente, idPagamentoPedido, idPagamentoCliente, status, descricao, frete) VALUES
(1,  1,  1,  'ENTREGUE',     'Pedido de eletronicos',  15.90),  -- Ana, credito
(1,  2,  1,  'ENVIADO',      'Pedido de roupas',        0.00),  -- Ana, PIX
(2,  3,  2,  'PROCESSANDO',  'Pedido de moveis',       89.90),  -- Bruno, credito
(3,  4,  3,  'ENTREGUE',     'Pedido de alimentos',     5.00),  -- Carlos, debito
(3,  5,  3,  'ENTREGUE',     'Pedido de brinquedos',   12.50),  -- Carlos, PIX
(4,  6,  4,  'ENVIADO',      'Pedido de eletronicos',  25.00),  -- Diana, credito
(5,  7,  5,  'EM ANDAMENTO', 'Pedido de moveis',      120.00),  -- Eduardo, boleto
(5,  8,  5,  'PROCESSANDO',  'Pedido de vestimenta',   10.00),  -- Eduardo, credito
(6,  9,  6,  'ENTREGUE',     'Pedido de alimentos',     0.00),  -- Fernanda, PIX
(7,  10, 7,  'ENVIADO',      'Pedido de eletronicos',  30.00),  -- Gustavo, credito
(7,  10, 7,  'ENTREGUE',     'Pedido de brinquedos',    8.00),  -- Gustavo, credito
(8,  11, 8,  'PROCESSANDO',  'Pedido de roupas',       15.00),  -- Helena, debito
(8,  12, 8,  'EM ANDAMENTO', 'Pedido de eletronicos',  25.00),  -- Helena, PIX
(9,  13, 9,  'ENTREGUE',     'Pedido de moveis',      100.00),  -- Igor, credito
(9,  13, 9,  'ENVIADO',      'Pedido de alimentos',     5.50),  -- Igor, credito
(10, 14, 10, 'PROCESSANDO',  'Pedido de brinquedos',   12.00),  -- Julia, boleto
(10, 15, 10, 'ENTREGUE',     'Pedido de vestimenta',    0.00),  -- Julia, PIX
(2,  3,  2,  'ENTREGUE',     'Pedido de eletronicos',  20.00),  -- Bruno, credito
(4,  6,  4,  'EM ANDAMENTO', 'Pedido de alimentos',     0.00),  -- Diana, credito
(6,  9,  6,  'ENVIADO',      'Pedido de moveis',       75.00);  -- Fernanda, PIX

-- ----------------------------------------------------------
-- 8. PRODUTO VENDEDOR
--    Loja do Joao(1): eletronicos | Moda Store(2): vestimenta
--    Eletronicos XP(3): eletronicos | MEI Fernanda(4): brinquedos
--    Pedro Vendas(5): moveis
-- ----------------------------------------------------------
INSERT INTO produtoVendedor (idPvendedor, idPproduto, quantidadeProduto) VALUES
(1, 1,  50),  -- Loja do Joao: Smartphone Samsung
(1, 2,  20),  -- Loja do Joao: Notebook Dell
(1, 5,  30),  -- Loja do Joao: Tablet
(2, 7,  100), -- Moda Store: Camiseta
(2, 8,  80),  -- Moda Store: Calca Jeans
(2, 9,  60),  -- Moda Store: Vestido
(2, 10, 70),  -- Moda Store: Tenis
(3, 3,  40),  -- Eletronicos XP: Fone Bluetooth
(3, 4,  15),  -- Eletronicos XP: Smart TV
(3, 6,  25),  -- Eletronicos XP: Camera
(4, 11, 35),  -- MEI Fernanda: LEGO City
(4, 12, 50),  -- MEI Fernanda: Boneca Fashion
(4, 13, 45),  -- MEI Fernanda: Carro Controle
(5, 17, 10),  -- Pedro Vendas: Sofa
(5, 18, 20),  -- Pedro Vendas: Mesa
(5, 19, 15),  -- Pedro Vendas: Cadeira
(5, 20, 12);  -- Pedro Vendas: Estante

-- ----------------------------------------------------------
-- 9. PRODUTO ORDEM PEDIDO
--    PK composta (idOPproduto, idOPpedido) — sem repetição
-- ----------------------------------------------------------
INSERT INTO produtoOrdemPedido (idOPproduto, idOPpedido, quantidadeProduto, opStatus) VALUES
(1,  1,  1,  'DISPONIVEL'),  -- Smartphone → pedido 1 (Ana)
(3,  1,  2,  'DISPONIVEL'),  -- Fone BT → pedido 1 (Ana)
(7,  2,  3,  'DISPONIVEL'),  -- Camiseta → pedido 2 (Ana)
(17, 3,  1,  'DISPONIVEL'),  -- Sofa → pedido 3 (Bruno)
(14, 4,  5,  'DISPONIVEL'),  -- Arroz → pedido 4 (Carlos)
(15, 4,  3,  'DISPONIVEL'),  -- Cafe → pedido 4 (Carlos)
(11, 5,  2,  'DISPONIVEL'),  -- LEGO → pedido 5 (Carlos)
(1,  6,  1,  'DISPONIVEL'),  -- Smartphone → pedido 6 (Diana)
(4,  6,  1,  'DISPONIVEL'),  -- Smart TV → pedido 6 (Diana)
(18, 7,  1,  'DISPONIVEL'),  -- Mesa → pedido 7 (Eduardo)
(19, 7,  2,  'DISPONIVEL'),  -- Cadeira → pedido 7 (Eduardo)
(8,  8,  2,  'DISPONIVEL'),  -- Calca → pedido 8 (Eduardo)
(16, 9,  2,  'DISPONIVEL'),  -- Azeite → pedido 9 (Fernanda)
(2,  10, 1,  'DISPONIVEL'),  -- Notebook → pedido 10 (Gustavo)
(12, 11, 3,  'DISPONIVEL'),  -- Boneca → pedido 11 (Gustavo)
(9,  12, 2,  'DISPONIVEL'),  -- Vestido → pedido 12 (Helena)
(5,  13, 1,  'DISPONIVEL'),  -- Tablet → pedido 13 (Helena)
(17, 14, 1,  'DISPONIVEL'),  -- Sofa → pedido 14 (Igor)
(14, 15, 10, 'DISPONIVEL'),  -- Arroz → pedido 15 (Igor)
(13, 16, 1,  'DISPONIVEL'),  -- Carro Controle → pedido 16 (Julia)
(10, 17, 1,  'DISPONIVEL'),  -- Tenis → pedido 17 (Julia)
(2,  18, 1,  'DISPONIVEL'),  -- Notebook → pedido 18 (Bruno)
(15, 19, 5,  'DISPONIVEL'),  -- Cafe → pedido 19 (Diana)
(20, 20, 1,  'DISPONIVEL');  -- Estante → pedido 20 (Fernanda)

-- ----------------------------------------------------------
-- 10. LOCAL ESTOQUE
--     endereco = localização específica dentro do galpão
--     PK composta (idLproduto, idLestoque) — sem repetição
-- ----------------------------------------------------------
INSERT INTO localEstoque (idLproduto, idLestoque, endereco, bairro, cidade, estado) VALUES
(1,  1, 'Corredor A, Prateleira 1', 'Distrito Industrial', 'Sao Paulo',      'SP'),
(2,  1, 'Corredor A, Prateleira 2', 'Distrito Industrial', 'Sao Paulo',      'SP'),
(3,  1, 'Corredor B, Prateleira 1', 'Distrito Industrial', 'Sao Paulo',      'SP'),
(4,  2, 'Corredor A, Prateleira 1', 'Centro',              'Rio de Janeiro', 'RJ'),
(5,  1, 'Corredor B, Prateleira 2', 'Distrito Industrial', 'Sao Paulo',      'SP'),
(6,  3, 'Corredor A, Prateleira 1', 'Zona Norte',          'Belo Horizonte', 'MG'),
(7,  1, 'Corredor C, Prateleira 1', 'Distrito Industrial', 'Sao Paulo',      'SP'),
(8,  2, 'Corredor C, Prateleira 1', 'Centro',              'Rio de Janeiro', 'RJ'),
(9,  3, 'Corredor D, Prateleira 1', 'Zona Norte',          'Belo Horizonte', 'MG'),
(10, 3, 'Corredor D, Prateleira 2', 'Zona Norte',          'Belo Horizonte', 'MG'),
(11, 3, 'Corredor D, Prateleira 3', 'Zona Norte',          'Belo Horizonte', 'MG'),
(12, 4, 'Corredor E, Prateleira 1', 'Industrial',          'Curitiba',       'PR'),
(13, 4, 'Corredor E, Prateleira 2', 'Industrial',          'Curitiba',       'PR'),
(14, 4, 'Corredor E, Prateleira 3', 'Industrial',          'Curitiba',       'PR'),
(15, 1, 'Corredor F, Prateleira 1', 'Distrito Industrial', 'Sao Paulo',      'SP'),
(16, 2, 'Corredor F, Prateleira 1', 'Centro',              'Rio de Janeiro', 'RJ'),
(17, 2, 'Corredor F, Prateleira 2', 'Centro',              'Rio de Janeiro', 'RJ'),
(18, 1, 'Corredor F, Prateleira 2', 'Distrito Industrial', 'Sao Paulo',      'SP'),
(19, 3, 'Corredor A, Prateleira 3', 'Zona Norte',          'Belo Horizonte', 'MG'),
(20, 4, 'Corredor B, Prateleira 1', 'Industrial',          'Curitiba',       'PR');

-- ----------------------------------------------------------
-- 11. PRODUTO FORNECEDOR
--     Fornecedor 1 (Tech): eletronicos
--     Fornecedor 2 (Moda): vestimenta
--     Fornecedor 3 (Kids): brinquedos
--     Fornecedor 4 (Alimentos): alimentos
--     Fornecedor 5 (Moveis): moveis
-- ----------------------------------------------------------
INSERT INTO produtoFornecedor (idPfornecedor, idPproduto, quantidade) VALUES
(1, 1,  200),  -- Tech → Smartphone
(1, 2,  100),  -- Tech → Notebook
(1, 3,  150),  -- Tech → Fone Bluetooth
(1, 4,   50),  -- Tech → Smart TV
(1, 5,  120),  -- Tech → Tablet
(1, 6,   80),  -- Tech → Camera
(2, 7,  300),  -- Moda → Camiseta
(2, 8,  200),  -- Moda → Calca Jeans
(2, 9,  150),  -- Moda → Vestido
(2, 10, 180),  -- Moda → Tenis
(3, 11, 100),  -- Kids → LEGO City
(3, 12, 150),  -- Kids → Boneca Fashion
(3, 13, 120),  -- Kids → Carro Controle
(4, 14, 500),  -- Alimentos → Arroz
(4, 15, 400),  -- Alimentos → Cafe
(4, 16, 350),  -- Alimentos → Azeite
(5, 17,  30),  -- Moveis → Sofa
(5, 18,  50),  -- Moveis → Mesa
(5, 19,  40),  -- Moveis → Cadeira
(5, 20,  35);  -- Moveis → Estante