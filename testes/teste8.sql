# Adicionando a chave estrangeira que liga a tabela gafanhotos à tabela cursos
alter table gafanhotos add column cursosPreferido int not null after id; 
alter table gafanhotos add foreign key (cursoPreferido) references cursos(idcurso);

# Colocando um curso preferido para um aluno
update gafanhotos set cursoPreferido = '6' where id = '1';

# Juntando as duas tabelas usando join
select gafanhotos.nome as aluno, cursos.nome as curso_preferido, cursos.ano as ano_curso
from gafanhotos join cursos on cursos.idcurso = gafanhotos.cursopreferido; 
