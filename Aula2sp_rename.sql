insert into Estado
values 
('SP', 'S�o Paulo');

insert into Cidade
values
('1', 'Votorantim', 'SP');

insert into Cidade (Cod_Cidade, Nome_Cidade, Cod_Estado)
values ('2', 'Sorocaba', 'SP');

select * from Estado
/*where Nome_estado is NULL;*/
select * from Cidade
select * from Tbl_cliente

insert into Cidade (Cod_Cidade, Nome_Cidade, Cod_Estado)
values ('3', 'Itu', 'nn');

insert into Cidade (Cod_Cidade, Nome_Cidade, Cod_Estado)
values ('4', 'Tapira�', 'nn');

insert into Estado
values ('nn', 'N�o Cadastrado');

update Cidade
set Cod_Estado = 'SP'
where Cod_Estado = 'nn'

insert into Estado (Cod_Estado, Nome_estado)
values ('RJ', 'Rio de Janeiro');

insert into Cidade (Cod_Cidade, Nome_Cidade, Cod_Estado)
values ('5', 'Rio de Janeiro', 'RJ');

select * from Cidade where Cod_Estado = 'SP'
select * from Cidade where Cod_Estado = 'RJ'

/*update Estado
set Nome_estado = 'Rio de Janeiro'
where Nome_estado is null;*/

update Cidade
set Cod_Estado = 'nn'
where Nome_Cidade in ('Itu', 'Tapira�');

delete from Estado
where Cod_Estado = 'nn';

delete from Cidade
where Nome_Cidade = 'Tapira�';

delete from Cidade
where Cod_Estado = 'SP';

delete from Estado
where Cod_Estado = 'SP';

create table Tbl_cliente(
codigo int identity (100, 13) primary key,
nome varchar (100),
uf char(2));

insert into Tbl_cliente
(nome, uf)
values
('Nicholas', 'RS'),
('Jo�o', 'RJ');

delete from Tbl_cliente
where uf = 'RS';

sp_rename 'Tbl_cliente.codigo', 'Codigo', 'column';
sp_rename 'Tbl_cliente.nome', 'Nome', 'column';

select ident_current('Tbl_cliente');
select ident_current('Tbl_cliente') as Ultimo_registro;
