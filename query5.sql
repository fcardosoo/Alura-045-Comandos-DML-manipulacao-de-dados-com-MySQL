# criando a tabela de itens vendidos com o note de ITENS_NOTAS

use vendas_sucos;

create table itens_notas (
numero varchar(5) not null,
codigo varchar(10) not null,
quantidade int,
preco float,
primary key (numero, codigo))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

alter table itens_notas add constraint fk_notas
foreign key (numero) references notas (numero);

alter table itens_notas add constraint fk_produtos
foreign key (codigo) references produtos (codigo);
