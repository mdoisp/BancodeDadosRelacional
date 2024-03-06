/*Exercício 1*/

create table Professores(
ID_professores int identity(1, 1) not null,
Nome_professores varchar(50) not null,
Disciplina_professores varchar(15) not null,
constraint PK_ID primary key(ID_professores))

insert into Professores (Nome_professores, Disciplina_professores)
values ('Ana Oliveira', 'Português');

update Professores
set Nome_professores = 'Ana Silva'
where Nome_professores = 'Ana Oliveira';

insert into Professores (Nome_professores, Disciplina_professores)
values ('Pedro Alves', 'Matemática'),
('Heitor Herreira', 'História'),
('Cristiane', 'Química'),
('Andreia Pereira', 'Geografia'),
('Luma Dantes', 'Sociologia'),
('Moacir Pinto', 'Filosofia'),
('Carlos Alberto', 'Física'),
('Ana Arantes', 'Educação Física'),
('Claudia Inácio', 'Inglês'),
('Alex Poatan', 'Espanhol');

delete from Professores
where ID_professores = 2;

create table Turmas(
ID_turmas int identity(1, 1) not null,
Nome_turma varchar(50) not null,
Professor_responsavel int not null,
constraint PK_ID_turmas primary key (ID_turmas),
constraint FK_ID foreign key (Professor_responsavel) references Professores(ID_professores));

insert into Turmas (Nome_turma, Professor_responsavel)
values ('9A', 1),
('9B', 1),
('8A', 3),
('8B', 4),
('7A', 5),
('7B', 6),
('7C', 7),
('6A', 8),
('6B', 9),
('6C', 10),
('5A', 11);

create table Alunos(
ID_alunos int identity(1, 1) not null,
Nome_alunos varchar(50) not null,
DataNascimento_alunos date not null,
TurmaId_alunos int not null,
constraint PK_ID_alunos primary key (ID_alunos),
constraint FK_TurmaId_alunos foreign key (TurmaId_alunos) references Turmas(ID_turmas));

insert into Alunos (Nome_alunos, DataNascimento_alunos, TurmaId_alunos)
values ('Maria Souza', '2005-10-15', 1);

update Alunos
set Nome_alunos = 'Maria da Silva'
where Nome_alunos = 'Maria Souza';

insert into Alunos (Nome_alunos, DataNascimento_alunos, TurmaId_alunos)
values ('João Ribeiro', '2005-08-22', 2),
('Mônica Sanches', '2006-03-22', 3),
('Wilson Arthur', '2006-08-19', 4),
('João Jipsu', '2007-11-07', 5),
('Renata Glasc', '2007-12-22', 6),
('Otávio Paixão', '2007-04-03', 7),
('João Silva', '2008-05-10', 8),
('Lucas Rodrigues', '2008-03-17', 9),
('Luiz Trambóia', '2008-05-19', 10),
('Tainan Jota', '2009-09-27', 11);

delete from Alunos
where ID_alunos = 2;

create table Notas(
ID_notas int identity(1, 1) not null,
AlunoId_notas int not null,
Disciplina_notas varchar(15) not null,
Nota_notas decimal(5,2)
constraint PK_ID_notas primary key (ID_notas),
constraint FK_AlunoID_notas foreign key (AlunoId_notas) references Alunos(ID_alunos));

insert into Notas (AlunoId_notas, Disciplina_notas, Nota_notas)
values (1, 'Matemática', 8.5);

update Notas
set Nota_notas = 9.0
where Nota_notas = 8.5

insert into Notas (AlunoId_notas, Disciplina_notas, Nota_notas)
values (3, 'Matemática', 9.5),
(4, 'Matemática', 7.5),
(5, 'Matemática', 8.5),
(6, 'Matemática', 8.0),
(7, 'Matemática', 6.5),
(8, 'Matemática', 7.0),
(9, 'Matemática', 5.0),
(10, 'Matemática', 10.0),
(11, 'Matemática', 9.0),
(11, 'Português', 6.5);

delete from Notas
where AlunoId_notas = 1 and Disciplina_notas = 'Matemática';

create table Matriculas(
ID_matriculas int identity(1, 1) not null,
AlunoID_matriculas int not null,
TurmaID_matriculas int not null,
Data_matriculas date not null,
constraint PK_ID_matriculas primary key (ID_matriculas),
constraint FK_AlunoID_matriculas foreign key (AlunoID_matriculas) references Alunos(ID_alunos),
constraint FK_TurmaID_matriculas foreign key (TurmaID_matriculas) references Turmas(ID_turmas));

insert into Matriculas(AlunoID_matriculas, TurmaID_matriculas, Data_matriculas)
values (1, 1, '2022-02-15'),
(3, 2, '2022-02-15'),
(4, 3, '2022-02-15'),
(5, 4, '2022-02-15'),
(6, 5, '2022-02-15'),
(7, 6, '2022-02-15'),
(8, 7, '2022-02-15'),
(9, 8, '2022-02-15'),
(10, 9, '2022-02-15'),
(11, 10, '2022-02-15');