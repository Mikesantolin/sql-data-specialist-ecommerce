-- criação banco de dados para cenário ecomerce
create database ecommerce;
use ecommerce;

-- criar tabela cliente ok
create table cliente(
	idCliente int auto_increment primary key,
    Pnome varchar(10),
    Minic char(3),
    Unome varchar(30),
    CPF char(11) not null,
    endereco varchar(45) not null,
    bairro varchar(45) not null,
    cidade varchar(45) not null,
    estado char(2) not null,
    dataNascimento date not null,
    constraint unique_cpf_cliente unique (CPF)
);
desc cliente;

-- criar tabela produto ok
-- tamanho equivale a dimensao do produto
create table produto(
	idProduto int auto_increment primary key,
    Pnome varchar(45) not null,
    categoria enum('eletronico', 'vestimenta', 'brinquedos', 'alimentos', 'moveis') not null,
    descricao varchar(200),
    classificacao_crianca bool default false,
    valor float, 
    avaliacao float default 0,
    tamanho varchar(10) 
);

-- criar tabela metodo pagamento 
create table metodoPagamento (
idMetodoPagamento int auto_increment primary key,
tipo enum('CREDITO','DEBITO','BOLETO','PIX') default 'PIX',
limite decimal(10,2),
idPagamentoCliente int,
constraint fk_pagamento_cliente foreign key (idPagamentoCliente) references	cliente(idCliente),
constraint uq_cliente_metodo unique (idMetodoPagamento, idPagamentoCliente)
);

-- criar tabela pedido ok
create table ordemPedido(
	idOrdem int auto_increment primary key,
    idOrdemCliente int, 
    idPagamentoPedido int,
    idPagamentoCliente int,
    status enum('EM ANDAMENTO', 'PROCESSANDO', 'ENVIADO', 'ENTREGUE') default 'PROCESSANDO',
    descricao varchar(255),
    frete float(10) default 0,
    constraint fk_ordem_cliente 
		foreign key (idOrdemCliente) 
        references cliente(idCliente),
    constraint fk_pedido_pagamento 
		foreign key (idPagamentoPedido, idPagamentoCliente)
		references metodoPagamento(idMetodoPagamento, idPagamentoCliente)
);

-- criar tabela estoque (drop ?)
create table estoque(
idEstoque int auto_increment primary key,
endereco varchar(45) not null,
bairro varchar(45) not null,
cidade varchar(45) not null,
estado char(2) not null,
quantidade int default 0
);

-- criar tabela fornecedor ok
create table fornecedor(
idFornecedor int auto_increment primary key,
razaoSocial varchar(255) not null,
CNPJ char(15) not null,
contato char(11) not null,
constraint unique_fornecedor unique (CNPJ)
);
desc fornecedor;

-- criar tabela vendedor ok
create table vendedor(
idVendedor int auto_increment primary key,
nomeSocial varchar(255) not null,
nome varchar(255),
CNPJ char(15),
CPF char(9),
endereco varchar(45) not null,
bairro varchar(45) not null,
cidade varchar(45) not null,
estado char(2) not null,
contato varchar(45) not null,
constraint unique_cnpj_vendedor unique (CNPJ),
constraint unique_cpf_vendedor unique (CPF)
);

-- criar tabela produto/vendedor ok
create table produtoVendedor(
idPvendedor int,
idPproduto int,
quantidadeProduto int default 1,
primary key(idPvendedor, idPproduto),
constraint fk_produto_vendedor foreign key (idPvendedor) references vendedor(idVendedor),
constraint fk_produto_produto foreign key (idPproduto) references produto(idProduto)	
);

-- criando tabela produto/pedido ok
create table produtoOrdemPedido(
idOPproduto int, 
idOPpedido int,
quantidadeProduto int default 1,
opStatus enum('DISPONIVEL','SEM ESTOQUE') default 'DISPONIVEL',
primary key(idOPproduto, idOPpedido),
constraint fk_produtopedido_vendedor foreign key (idOPproduto) references produto(idProduto),
constraint fk_produtopedido_produto foreign key (idOPpedido) references ordemPedido(idOrdem)
);

-- produto/estoque ok
create table localEstoque(
idLproduto int,
idLestoque int, 
endereco varchar(45) not null,
bairro varchar(45) not null,
cidade varchar(45) not null,
estado char(2) not null,
primary key (idLproduto, idLestoque),
constraint fk_estoque_local_produto foreign key (idLproduto) references produto(idProduto),
constraint fk_estoque_local_estoque foreign key (idLestoque) references estoque(idEstoque)
);

-- produto/fornecedor ok
create table produtoFornecedor(
idPfornecedor int,
idPproduto int,
quantidade int not null,
primary key (idPfornecedor, idPproduto),
constraint fk_produto_fornecedor_fornecedor foreign key (idPfornecedor) references fornecedor(idFornecedor),
constraint fk_produto_fornecedor_produto foreign key (idPproduto) references produto(idProduto)
);



