/*Etapa 1*/
create table Tbl_Clientes(
Id_clientes int identity (1, 1) not null,
Nome_clientes varchar (50) not null,
Email_clientes varchar (100) not null,
Telefone varchar (15) not null,
constraint PK_Id_clientes primary key (Id_clientes))

/*Etapa 2 e 3*/
insert into Tbl_Clientes(Nome_clientes, Email_clientes, Telefone)
values ('João Silva', 'joao@email.com', '(11)1234-5678'),
('Marina Furdis', 'furdis@email.com', '(15)9912-1334'),
('Otávio Dantes', 'dantes@email.com', '(15)9916-1135'),
('Mariana Santoro', 'santoro@email.com', '(15)9910-1836'),
('Pablo Martins', 'pmartins@email.com', '(15)9919-1537'),
('Willian Mendonça', 'willmen@email.com', '(15)9918-1038'),
('Gabriel Basso', 'bassow@email.com', '(15)9914-1839'),
('Fernando Soica', 'soica@email.com', '(15)9918-1034'),
('Aladin Egito', 'aladin@email.com', '(15)9917-1434'),
('José Guilherme', 'jgui@email.com', '(15)9911-1534'),
('Maria Solange', 'masolange@email.com', '(15)9915-1634');

/*Etapa  4*/
update Tbl_Clientes
set Telefone = '(11)8765-4321'
where Id_clientes = 1

/*Etapa 5*/
create table Tbl_Produtos(
Id_produtos int identity (1, 1) not null,
Nome_produtos varchar(50) not null,
Preco_produtos decimal (6, 2) not null,
Estoque int,
constraint Pk_Id_produtos primary key (Id_produtos))

/*Etapa 6 e 7*/
insert into Tbl_Produtos(Nome_produtos, Preco_produtos, Estoque)
values ('Camiseta', 29.99, 100),
('Camiseta listrada', 32.99, 100),
('Camiseta V', 29.99, 90),
('Cueca Lupo', 15.99, 200),
('Relógio', 159.99, 32),
('Camiseta regata', 24.99, 100),
('Camiseta longa', 34.99, 100),
('Tênis', 199.99, 10),
('Camiseta c/ estampa', 39.99, 89),
('Calça', 79.99, 50),
('Shorts', 49.99, 70);

/*Etapa 8*/
update Tbl_Produtos
set Preco_produtos = 39.99
where Id_produtos = 1

/*Etapa 9*/
create table Tbl_Pedidos(
Id_pedidos int identity (1, 1) not null,
ClienteId_pedidos int not null,
ProdutoId_pedidos int not null,
Quantidade int,
Data_pedido date not null
constraint PK_Id_pedidos primary key (Id_pedidos),
constraint FK_ClienteId foreign key (ClienteId_pedidos) references Tbl_Clientes (Id_clientes),
constraint FK_ProdutoId foreign key (ProdutoId_pedidos) references Tbl_Produtos (Id_produtos))

/*Etapa 10*/
insert into Tbl_Pedidos(ClienteId_pedidos, ProdutoId_pedidos, Quantidade, Data_pedido)
values (1, 1, 2, getdate());

/*Etapa 11*/
update Tbl_Pedidos
set Quantidade = 3
where Id_pedidos = 1

/*Etapa 12*/
insert into Tbl_Pedidos(ClienteId_pedidos, ProdutoId_pedidos, Quantidade, Data_pedido)
values (1, 2, 4, getdate()),
(3, 1, 4, 2024-02-17),
(1, 1, 4, getdate()),
(2, 2, 4, 2023-06-30),
(2, 3, 4, getdate()),
(4, 2, 4, getdate()),
(4, 1, 4, 2023-07-27),
(4, 3, 4, getdate()),
(1, 2, 4, getdate()),
(2, 3, 4, 2024-01-15);

/*Etapa 13*/
create table

select * from Tbl_Pedidos
drop table Tbl_Pedidos