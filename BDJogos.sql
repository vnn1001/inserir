create database jogos;
use jogos;

create table Endereco(
idEndereco int primary key not null auto_increment,
TipoLocal_idTipoLocal int not null,
Pessoa_idPessoa int not null ,
Logradouro_Endereco varchar(70) not null,
Numero_Endereco int not null,
Complemento_Endereco varchar(120),
Bairro_Endereco varchar(150) not null,
CEP_Endereco varchar(9) not null,
Cidade_Endereco varchar (30) not null,
Estado_Endereco char (2) not null);

create table TipoLocal(
idTipoLocal int primary key not null auto_increment,
Descricao_TipoLocal varchar (30) not null);

create table Cliente(
idCliente int primary key not null auto_increment,
Pessoa_idPessoa int,
Pai_Cliente varchar(80) not null,
Mae_Cliente varchar(80) not null,
Nick_Cliente varchar(12) not null unique,
Senha_Cliente varchar(8) not null unique);

create table TipoPessoa(
idTipoPessoa int primary key not null auto_increment,
Descricao_TipoPessoa varchar(20) not null);

create table Pessoa(
idPessoa int primary key not null auto_increment,
TipoPessoa_idTipoPessoa int not null,
Nome_Pessoa varchar (80) not null,
RG_Pessoa varchar (10) not null unique,
CPF_Pessoa varchar (14) not null unique);

create table Contato(
idContato int primary key not null auto_increment,
TipoLocal_idTipoLocal int not null,
Pessoa_idPessoa int not null,
Telefone_Contato varchar(13) not null unique,
Mail_Contato varchar(30) not null);

create table jogos(
idJogos int primary key not null auto_increment,
Nome_Jogo varchar(30) not null,
Descricao_Jogo varchar (120) not null,
Genero_Jogo varchar (20) not null,
Produtora_Jogo varchar(40) not null);

create table VideoGame(
idVideoGame int primary key not null auto_increment,
Modelo_VideoGame varchar(20) not null,
NS_VideoGame varchar (24) not null);

create table Aluguel(
idAluguel int primary key not null auto_increment,
Funcionario_idFuncionario int not null,
VideoGame_idVideoGame int not null,
Cliente_idCliente int not null,
Jogos_idJogos int not null,
Valor_Aluguel real not null,
Data_Aluguel date not null);

create table Funcionario(
idFuncionario int primary key not null auto_increment,
Pessoa_idPessoa int not null,
Sexo char(1) check (upper(seco)='M' or upper(sexo)='F'),
Idade int not null);

alter table Cliente
add constraint Cliente_FKIndex1 foreign key (Pessoa_idPessoa) references Pessoa (idPessoa);

alter table Pessoa
add constraint Pessoa_FKIndex1 foreign key (TipoPessoa_idTipoPessoa) references TipoPessoa (idTipoPessoa);

alter table Endereco
add constraint Endereco_FKIndex1 foreign key (Pessoa_idPessoa) references Pessoa (idPessoa);

alter table Endereco
add constraint Endereco_FKIndex2 foreign key (TipoLocal_idTipoLocal) references TipoLocal(idTipoLocal);

alter table Contato
add constraint Contato_FKIndex1 foreign key (Pessoa_idPessoa) references Pessoa (idPessoa);

alter table Contato
add constraint Contato_FKIndex2 foreign key (TipoLocal_idTipoLocal) references TipoLocal(idTipoLocal);

alter table Aluguel
add constraint Aluguel_FKIndex1 foreign key (Jogos_idJogos) references Jogos (idJogos);

alter table Aluguel
add constraint Aluguel_FKIndex2 foreign key (Cliente_idCliente) references Cliente (idCliente);

alter table Aluguel
add constraint Aluguel_FKInde3 foreign key (VideoGame_idVideoGame) references VideoGame (idVideoGame);

alter table Aluguel 
add constraint Aluguel_FKIndex4 foreign key (Funcionario_idFuncionario) references Funcionario(idFuncionario);

alter table Funcionario
add constraint Funcionario_FKIndex1 foreign key (Pessoa_idPessoa) references Pessoa(idPessoa);


