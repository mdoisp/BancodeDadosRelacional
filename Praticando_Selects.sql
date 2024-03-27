create table Setor(
Cod_setor int identity(1, 1) not null,
Nome_setor varchar (30) not null
constraint PK_Cod primary key (Cod_setor))

create table funcionario(
NmrMatricula_funcionario int identity(2024001, 1) not null,
PrimeiroNome_funcionario varchar(20) not null,
UltimoNome_funcionario varchar(50) not null,
Email_funcionario varchar(200),
telefone_funcionario varchar(20),
DataAdissao_funcionario datetime,
Salario_funcionario float,
CodSetor_funcionario int,
constraint PK_NmrMatricula primary key (NmrMatricula_funcionario),
constraint FK_Cod_setor foreign key (CodSetor_funcionario) references Setor(Cod_setor))

insert into Setor
values ('RH'),
('Engenharia'),
('Produção'),
('Logística'),
('Testes');

insert into funcionario
values ('João', 'Souza', 'joaosouza@email.com', '(15)99111-1111', getdate(), 2000.00, 3),
('Maria', 'Zica', 'mariazica@email.com', '(15)99111-2222', getdate(), 2200.00, 3),
('Augusto', 'Rodrigues', 'augustorodrigues@email.com', '(15)99111-3333', getdate(), 2000.00, 3),
('Olívia', 'Simpson', 'oliviaaa@email.com', '(15)99111-4444', getdate(), 1800.00, 4),
('Joana', 'Silva', 'joanas@email.com', '(15)99111-5555', getdate(), 2500.00, 1),
('Oliver', 'Robertsons', 'orobertsons@email.com', '(15)99111-6677', getdate(), 7000.00, 2),
('Wesley', 'Snaips', 'wsnaips@email.com', '(15)99111-1234', getdate(), 4500.00, 5),
('Rodrigo', 'Japa', 'ojapa@email.com', '(15)99112-3456', getdate(), 4500.00, 5);

create table Pessoa(
Id_pessoa integer primary key,
Nome_pessoa varchar(20),
Cpf_pessoa varchar(14));

create table Pessoa_Fisica(
Id_pessoa integer primary key,
Nome_pessoa varchar(20),
Cpf_pessoa varchar(14));

insert into Pessoa
values (1, 'Pedro Cabral', '12345678991'),
(2, 'Pedro Paes', '12345678992');

insert into Pessoa_Fisica
select Id_pessoa, Nome_pessoa, Cpf_pessoa from Pessoa;

drop table Setor
drop table funcionario
select * from Pessoa_Fisica
select * from Funcionario

select *
from Funcionario
where Salario_funcionario > 2500 or CodSetor_funcionario = 4

select *
from Funcionario
where CodSetor_funcionario not in (2, 4)
order by CodSetor_funcionario desc


select *
from Funcionario
where CodSetor_funcionario not in (2, 4)
order by CodSetor_funcionario, PrimeiroNome_funcionario

select f.PrimeiroNome_funcionario, f.Salario_funcionario, s.Nome_setor
from Funcionario f, Setor s
where f.CodSetor_funcionario = s.Cod_setor