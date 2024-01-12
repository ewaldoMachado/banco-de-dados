# Vamos supor que queremos criar um trigger que será ativado sempre que um novo aluno for inserido na tabela aluno. Este trigger irá verificar se a disciplina_id inserida existe na tabela disciplinas. Se não existir, o trigger irá impedir a inserção.

CREATE TRIGGER verifica_disciplina
BEFORE INSERT ON aluno
FOR EACH ROW
BEGIN
    IF NEW.disciplina_id NOT IN (SELECT id_disciplina FROM disciplinas) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: A disciplina_id inserida não existe na tabela disciplinas.';
    END IF;
END;
