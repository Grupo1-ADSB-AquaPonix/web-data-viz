-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/
create database teste1;
use teste1;

create table endereco(
idEndereco int primary key auto_increment not null,
cep varchar(9) not null,
numero int not null,
complemento varchar(45) not null
);

create table empresa(
idEmpresa int primary key auto_increment not null,
razaoSocial varchar(45) not null,
cnpj varchar(18) unique not null,
email varchar(45) not null,
telefoneCelular varchar(20),
telefoneFixo varchar(20),
senha varchar(30) not null,
fkEndereco int,
constraint fkEmpresaEndereco foreign key (fkEndereco)
	references endereco (idEndereco)
);

create table funcionario(
idFuncionario int primary key auto_increment not null,
nome varchar(45) not null,
email varchar(45) not null,
telefoneCelular varchar(20),
senha varchar(30),
fkEmpresa int,
constraint fkFuncionarioEmpresa foreign key (fkEmpresa)
	references empresa (idEmpresa)
);

insert into endereco values
(default, '18079-630', '155', 'Proximo ao mercado extra'),
(default, '29844-895', '812', 'Ao lado da concessionária'),
(default, '54897-544', '411', 'Em frente do Burguer King');

insert into empresa values
(default, 'AquaCulture Connections', '27.480.347/0001-35','AquaCulture@gmail.com', '11-955419758', '11-955419758', 'cultureAqua#', 1),
(default, 'Sustainable AquaGrow', '66.835.460/0001-48','AquaGrow@gmail.com', '11-925621262', '11-955419758', 'subtainable!', 2),
(default, 'AquaVida Solutions', '85.740.687/0001-54','AquaVida.Solutions@gmail.com', '11-974875223', '11-955419758', 'aquaVida!@', 3);

insert into funcionario values
	(default, 'Pedro Rocha', 'pedroRocha@gmail.com', '11 90001-1234', '120932!', 1),
	(default, 'Gustavo Barreto', 'GustavoBarreto@gmail.com', '11 91234-4321', 'barreto@', 2),
	(default, 'Paula Fernandes', 'contato.Paula@gmail.com', '11 90909-8799', '391238##', 2),
	(default, 'Ronaldo', 'ronaldo.fenomeno@gmail.com', '11 97878-9874', '2dawrROnil@', 3);
    
select * from endereco;
select * from empresa;
select * from funcionario;