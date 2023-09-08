use vendas_sucos;

create table vendedores(
matricula varchar(5) not null,
nome varchar(100) null,
bairro varchar(50) null,
comissao float null,
data_admissao date null,
ferias bit(1),
primary key (matricula))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


create table tabela_de_vendas(
`numero` varchar(5) not null,
`data_venda` date null,
`CPF` varchar(11) not null,
`matricula` varchar(5) not null,
`imposto` float null,
primary key (numero))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

# criando as chaves estrangeiras na tabela de vendas
alter table tabela_de_vendas add constraint fk_clientes
foreign key (CPF) references clientes (CPF);

alter table tabela_de_vendas add constraint fk_vendedores
foreign key (matricula) references vendedores (matricula);