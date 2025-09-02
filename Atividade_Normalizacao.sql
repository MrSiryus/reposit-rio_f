create database Atividade_Normalizacao ;
use Atividade_Normalizacao;

 -- drop database Atividade_Normalizacao; --

create table Cidade (
    Id_Cidade int primary key,
    Nome varchar(100)
);
create table Fornecedor (
    Id_fornecedor int primary key,
    Nome_fornecedor varchar(100),
    Id_Cidade int,
    foreign key (Id_Cidade) references Cidade(Id_Cidade)
);

create table Produto (
    Id_Produto int primary key,
    Nome varchar(100)
);
create table Encomenda (
    Id_encomenda int primary key,
    Data date,
    Id_fornecedor int,
    foreign key (Id_fornecedor) references Fornecedor(Id_fornecedor)
);

CREATE TABLE Produ_Encomendados (
    Id_encomenda int,
    Id_Produto int,
    Quantidade int,
    primary key (Id_encomenda, Id_Produto),
    foreign key (Id_encomenda) references Encomenda(Id_encomenda),
    foreign key (Id_Produto) references Produto(Id_Produto)
);
insert into Cidade (Id_Cidade, Nome) 
values (1, 'São Paulo'),
(2, 'São Bernardo do Campo'),
(3, 'Santos'),
(4, 'Sorocaba'),
(5, 'Ribeirão Preto'),
(6, 'São José dos Campos'),
(7, 'Ferraz de Vasconcelos'),
(8, 'Piracicaba'),
(9, 'Jundiaí'),
(10, 'Barueri'),
(11, 'Mogi das Cruzes'),
(12, 'Guarulhos'),
(13, 'Pinheiros'),
(14, 'Suzano'),
(15, 'Poá');

select*from Cidade;

insert into Fornecedor (Id_fornecedor, Nome_fornecedor, Id_Cidade) 
values (1, 'Auto Peças Silva', 1),
(2, 'Auto Peças Castelo Branco', 2),
(3, 'Motor King', 3),
(4, 'Ideal Auto Peças', 4),
(5, 'Roda Livre Ltda', 5),
(6, 'Freios & Cia', 6),
(7, 'Auto Peças Ferraz', 7),
(8, 'Distribuidora AutoTop', 8),
(9, 'Fenix Auto Peças', 9),
(10, 'Aliança Auto', 10),
(11, 'Nippon Auto Peças', 11),
(12, 'J.A Auto Peças', 12),
(13, 'Autohub Service', 13),
(14, 'Peças Express', 14),
(15, 'J&K Peças', 15);
select*from Fornecedor;

INSERT INTO Produto (Id_Produto, Nome) VALUES
(1, 'Bateria 60Ah'),
(2, 'Retrovisor'),
(3, 'Filtro de Óleo'),
(4, 'Cilindro/Pistão'),
(5, 'Correia Dentada'),
(6, 'Farol Dianteiro Esquerdo'),
(7, 'Pastilha de Freio Dianteira'),
(8, 'Sensor de Estacionamento'),
(9, 'Vela de Ignição'),
(10, 'Radiador'),
(11, 'Disco de Freio'),
(12, 'Filtro de Ar'),
(13, 'Central Multimídia'),
(14, 'Kit Embreagem'),
(15, 'Coxim do Motor');
select*from Produto;
insert into Encomenda (Id_encomenda, Data, Id_fornecedor) 
values (1, '2025-09-22', 1),
(2, '2025-08-23', 2),
(3, '2025-08-24', 3),
(4, '2025-08-25', 4),
(5, '2025-08-26', 5),
(6, '2025-08-27', 6),
(7, '2025-08-27', 7),
(8, '2025-08-28', 8),
(9, '2025-08-28', 9),
(10, '2025-08-29', 10),
(11, '2025-08-30', 11),
(12, '2025-08-30', 12),
(13, '2025-09-01', 13),
(14, '2025-09-01', 14),
(15, '2025-09-02', 15);
select*from Encomenda;

insert into Produ_Encomendados (Id_encomenda, Id_Produto, Quantidade) 
values (1, 1, 10),
(2, 2, 20),
(3, 3, 15),
(4, 4, 5),
(5, 5, 12),
(6, 6, 8),
(7, 7, 6),
(8, 8, 10),
(9, 9, 14),
(10, 10, 9),
(11, 11, 13),
(12, 12, 7),
(13, 13, 4),
(14, 14, 5),
(15, 15, 3);

select*from Produ_Encomendados;
show tables;