create table Cliente
(
Cod_Cli int not null,
Nome_Cli varchar(40) not null,
End_Cli varchar(30) not null,
Bairro_Cli varchar(20) not null,
Cid_Cli varchar(20) not null,
UF_Cli char(2) not null,
Tel_Cli varchar(15) null,
constraint PK_Cliente primary key(Cod_Cli)
)

create table NotaFiscal
(
Num_Nota int not null,
Cod_Cli int not null,
Serie_Nota varchar(10) not null,
Emissao_Nota smalldatetime null,
Vtot_Nota smallmoney not null,
constraint PK_NotaFiscal primary key(Num_Nota),
constraint FK_Cliente foreign key(Cod_Cli) references Cliente(Cod_Cli),
)

create table Cidade
(
Cod_Cidade varchar(2) not null,
Nome_Cidade varchar(40)
)

create table Empregado
(
Nr_Matricula int,
Nome varchar(50),
Data_Demissao datetime,
Salario float
)

create table Estado
(
Cod_Estado varchar(2) not null,
Nome_estado varchar(30)
)

alter table Cidade
add primary key (Cod_Cidade);

alter table Cidade
add Cod_Estado char(2) not null,
	teste varchar(1) null;

alter table Cidade
drop column teste;

alter table Cidade
alter column Cod_Estado varchar(2);

alter table Cidade
drop constraint PK__Cidade__4E71439A5EB20368;

alter table Cidade
add constraint PK_Cod_Cidade primary key (Cod_Cidade);

alter table Estado
add constraint PK_Cod_Estado primary key (Cod_Estado);

alter table Cidade
add constraint FK_Cod_Estado foreign key (Cod_Estado) references Estado(Cod_Estado);

drop table Empregado