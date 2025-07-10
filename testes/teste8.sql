# Adicionando a chave estrangeira que liga a tabela gafanhotos à tabela cursos
alter table gafanhotos add column cursosPreferido int not null after id; 
alter table gafanhotos add foreign key (cursoPreferido) references cursos(idcurso);

# Colocando um curso preferido para um aluno
update gafanhotos set cursoPreferido = '6' where id = '1';

# Juntando as duas tabelas usando join
select gafanhotos.nome as aluno, cursos.nome as curso_preferido, cursos.ano as ano_curso
from gafanhotos join cursos on cursos.idcurso = gafanhotos.cursopreferido;

# Juntando as duas tabelas usando left outer join, dando preferência para a tabela gafanhotos
select aluno.nome, curso_preferido.nome, curso_preferido.ano
from gafanhotos as aluno left outer join cursos as curso_preferido on curso_preferido.idcurso = aluno.cursopreferido;

# Juntando as duas tabelas usando right outer join, dando preferência para a tabela cursos
select aluno.nome, curso_preferido.nome, curso_preferido.ano
from gafanhotos as aluno right outer join cursos as curso_preferido on curso_preferido.idcurso = aluno.cursopreferido; 
