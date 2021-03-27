use perfumaria;

drop table if exists `Perfume`;
create table `perfume` (
codigo int primary key not null auto_increment,
nome varchar(25),
preco int,
quantidade int
);

desc perfume;
 