create database sistema_vendas;
use sistema_vendas;

create table cliente(
	id_cliente smallint unsigned auto_increment,
	nome varchar(100) not null,
    endereço varchar(100) not null,
    email varchar(100) not null unique,
    celular char(12),
    dt_nascimento date not null,
    primary key(id_cliente)
);

create table produtos(
	id_produto smallint unsigned auto_increment primary key,
	nome varchar(150) not null,
    custo float(7,2) not null,
    descricao varchar(1000),
    quantidade tinyint(255) unsigned
    );

create table pedidos(
	id_pedido smallint unsigned auto_increment primary key,
    data_compra date not null,
    valor_total float(8,2) not null,
    data_entrega date,
    email varchar(100) not null,
    id_cliente smallint unsigned,
    foreign key(id_cliente) references cliente(id_cliente)
);

create table itens(
	quantidade tinyint(255) unsigned not null,
    valor_uni float(7,2) not null,
    valor_total float(8,2) not null,
    id_pedido smallint unsigned,
    id_produto smallint unsigned,
    foreign key(id_pedido) references pedidos(id_pedido),
    foreign key(id_produto) references produtos(id_produto)
);
