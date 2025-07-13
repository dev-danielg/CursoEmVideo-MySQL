# Criando tabela para um relacionamento n:n
create table gafanhoto_assiste_curso (
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key (id),
    foreign key (idgafanhoto) references gafanhotos(id),
    foreign key (idcurso) references cursos(idcurso));
    
    
# Inserindo dados na tabela
insert into gafanhoto_assiste_curso values 
(default, '2014-03-01', 1, 2),
(default, '2015-04-02', 3, 5),
(default, '2015-07-10', 10, 7),
(default, '2016-11-25', 3, 6);


# Fazendo SELECT utilizando JOIN em três tabelas
select gafanhotos.nome, gafanhoto_assiste_curso.data, cursos.nome
from gafanhotos 
join gafanhoto_assiste_curso 
on gafanhotos.id = gafanhoto_assiste_curso.idgafanhoto
join cursos
on cursos.idcurso = gafanhoto_assiste_curso.idcurso;
