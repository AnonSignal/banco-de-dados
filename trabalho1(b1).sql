create database sistema_vendas;
use sistema_vendas;

create table cliente(
	nome varchar(100) not null,
    endereço varchar(100) not null,
    email varchar(100) not null,
    celular char(12),
    dt_nascimento date not null
);

create table pedidos();

create table itens();