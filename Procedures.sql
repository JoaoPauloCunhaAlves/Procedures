DELIMITER $$
create procedure alunosMatri (in codigo_turma int)
begin
	select * from aluno where aluno.codigo_turma = turma.codigo_turma;
END $$

call alunosMatri("TURM001");


DELIMITER $$
create procedure atualizar (in nro_matricula int, in status_aluno varchar(10))
begin
	Update alunos
    set statusAtual = status_aluno
    where aluno.nro_matricula = s.nro_matricula;
END $$

call atualizar('1004', 'Inativo')


DELIMITER $$
create procedure exibirProfessores (in codigo_disciplina int)
begin
	select * from professor where disciplina.codigo_disciplina = professor.codigo_disciplina;
END $$

call exibirProfessores('BIO101');


DELIMITER $$
create procedure novaTurma (in nro_alunos int, in periodo varchar(20), in semestre int , in status_aluno varchar(100))
begin 
	insert into novaTurma values
    (25,'Noturno',3,'Ativos');
end $$

call novaTurma ()


DELIMITER $$
create procedure atualizarEspecialidade (in nro_registro_professor varchar(10), in nova_especialidade varchar(20))
begin
	update professor
    set especialidade = nova_especialidade
    where nro_registro_professor = t.nro_registro_professor;
end $$

call atualizarEspecialidade('P001','Administrador')