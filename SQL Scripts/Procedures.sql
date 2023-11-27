
USE [Cinema]

--PROCEDURES ATOR

--SELECT ATOR
CREATE PROCEDURE selectAtor
	@nome varchar(255) = '',@sobrenome varchar(255) = ''
AS
BEGIN
	select * 
	from ator
	where nome like '%' + @nome + '%' AND 
		sobrenome like '%' + @sobrenome + '%'
END

-----------------------------------------------------------------
-- SELECT BY ID
CREATE PROCEDURE selectAtorById
	@id int
AS
BEGIN
	select * from ator where id = @id
END

-----------------------------------------------------------------
--INSERT ATOR
CREATE PROCEDURE [dbo].[insertAtor]
(
	@nome varchar(255),
	@sobrenome varchar(255),
	@ret int output
)
AS
begin
	IF exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
	begin
		set @ret = -1
	end
	ELSE
	begin
		INSERT into ator (nome,sobrenome) values (@nome,@sobrenome)
	end
END

-----------------------------------------------------------------
--UPDATE ATOR
CREATE PROCEDURE [dbo].[updateAtor]
	@id int, 
	@nome varchar(255) = '',
	@sobrenome varchar(255) = '',
	@ret int output
AS
BEGIN 
	-- Verificar se a consulta NÃO retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Ator WHERE id = @id )
    BEGIN
        -- se a consulta NÃO trouxer resultados, não continua a CREATEação
        set @ret = -1 
	END
	ELSE IF (SELECT COUNT(*) FROM Ator WHERE nome = @nome AND sobrenome = @sobrenome AND id <> @id) > 0
    BEGIN
        -- Se o ator for igual de outro cadastrado no banco, não continua a CREATEação
        SET @ret = -1
    END
	ELSE -- permite CREATEação
	BEGIN
		UPDATE ator SET nome = @nome, sobrenome = @sobrenome where id = @id
		SET @ret = 0
	END
END

-----------------------------------------------------------------
--DELETE ATOR
CREATE PROCEDURE deleteAtor
	@id int, @ret int output
AS
BEGIN
	-- Verificar se a consulta NÃO retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Ator WHERE id = @id )
    BEGIN
        -- se a consulta NÃO trouxer resultados, não continua a exclusão 
        set @ret = -1 
	END
	-- se existe atuação 
	IF exists (select * from AtorFilme where ator_id = @id)
	begin
		set @ret = 0 -- não deixa excluir pq há atuações
	end
	ELSE
	begin
		delete from Ator where id = @id
		set @ret =  1 -- deixa excluir pq não há atuação
	end	
END

-----------------------------------------------------------------
-- PROCEDURES IDIOMA
--SELECT IDIOMA
CREATE PROCEDURE [dbo].[selectIdioma] 
	@descricao varchar(255) = ''
AS
BEGIN
	select * 
	from Idiomas
	where descricao like '%' + @descricao + '%' 
END

-----------------------------------------------------------------
-- SELECT BY ID
CREATE PROCEDURE selectIdiomaById
	@id int
AS
BEGIN
	select * from Idiomas where id = @id
END

-----------------------------------------------------------------
-- INSERT IDIOMA
CREATE PROCEDURE [dbo].[inserIdioma]
(
	@descricao varchar(255) = '',
	@ret int output
)
AS
begin
	IF exists(select * from Idiomas where descricao = @descricao)
	begin
		set @ret = -1
	end
	ELSE
	begin
		INSERT into Idiomas (descricao) values (@descricao)
	end
END

-----------------------------------------------------------------
--UPDATE IDIOMA
CREATE PROCEDURE [dbo].[updateIdioma]
	@id int, 
	@descricao varchar(255) = '',
	@ret int output
AS
BEGIN 
	-- Verificar se a consulta NÃO retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Idiomas WHERE id = @id )
    BEGIN
        -- se a consulta NÃO trouxer resultados, não cotinua a CREATEação
        set @ret = -1 
	END
	ELSE IF (SELECT COUNT(*) FROM Idiomas WHERE descricao = @descricao AND id <> @id) > 0
    BEGIN
        -- Se a descrição for igual de outra cadastrada no banco, não continua a CREATEação
        SET @ret = -1
	END
	ELSE
	BEGIN
		UPDATE Idiomas SET descricao = @descricao where id = @id
		 SET @ret = 0
	END
END

-----------------------------------------------------------------

--DELETE IDIOMA
CREATE PROCEDURE deleteIdioma
	@id int, @ret int output
AS
BEGIN
	-- Verificar se a consulta NÃO retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Idiomas WHERE id = @id )
    BEGIN
        -- se a consulta NÃO trouxer resultados, não continua a exclusão 
        set @ret = -1 
	END
	IF exists (select * from Filmes where idioma_id = @id)
	begin
		set @ret = 0 -- não deixa excluir pq há filmes atrelados 
	end
	ELSE
	begin
		delete from Idiomas where id = @id
		set @ret =  1 -- deixa excluir pq não há atuação
	end	
END

-----------------------------------------------------------------
-- PROCEDURES FILME
--SELECT FILME
CREATE PROCEDURE [dbo].[selectFilme] 
	@titulo varchar(255) = '',
	@categoria varchar(255) = '',
	@classificacao_indicativa varchar(255) = ''
AS
BEGIN
	select * 
	from Filmes
	where titulo like '%' + @titulo + '%' 
	AND  categoria like '%' + @categoria + '%'
	AND  classificacao_indicativa like '%' + @classificacao_indicativa + '%'
END

-----------------------------------------------------------------
-- SELECT BY ID FILME
CREATE PROCEDURE selectFilmeById
	@id int
AS
BEGIN
	select * from Filmes where id = @id
END

-----------------------------------------------------------------
--INSERT FILME
CREATE PROCEDURE [dbo].[inserFilme]
(
	@titulo varchar(255) = '',
	@descricao varchar(255) = '',
	@ano_lancamento int = 0,
	@categoria varchar(255) = '',
	@classificacao_indicativa varchar(255) = '',
	@idioma_id int = 0,
	@ret int output
)
AS
begin
	IF exists(select * from Filmes where titulo = @titulo)
	begin
		set @ret = -1
	end
	ELSE
	begin
		INSERT into Filmes (titulo, descricao, ano_lancamento, categoria, classificacao_indicativa, idioma_id) 
		values (@titulo, @descricao, @ano_lancamento, @categoria, @classificacao_indicativa, @idioma_id)
	end
END

-----------------------------------------------------------------
--UPDATE FILME
CREATE PROCEDURE [dbo].[updateFilme]
    @id int, 
    @titulo varchar(255) = '',
    @descricao varchar(255) = '',
    @ano_lancamento int = 0,
    @categoria varchar(255) = '',
    @classificacao_indicativa varchar(255) = '',
    @idioma_id int = 0,
    @ret int output
AS
BEGIN 
    -- Verificar se a consulta NÃO retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Filmes WHERE id = @id)
    BEGIN
        -- Se a consulta NÃO trouxer resultados, não continua a CREATEação
        SET @ret = -1 
    END
    ELSE IF (SELECT COUNT(*) FROM Filmes WHERE titulo = @titulo AND id <> @id) > 0
    BEGIN
        -- Se o título já existe para outro filme, não continua a CREATEação
        SET @ret = -1
    END
    ELSE
    BEGIN
        -- Se tudo estiver OK, realiza o UPDATE
        UPDATE Filmes 
        SET titulo = @titulo, descricao = @descricao, ano_lancamento = @ano_lancamento,
        categoria = @categoria, classificacao_indicativa = @classificacao_indicativa,
        idioma_id = @idioma_id
        WHERE id = @id

        -- Retorna 0 para indicar sucesso
        SET @ret = 0
    END
END

-----------------------------------------------------------------
-- DELETE FILME
CREATE PROCEDURE deleteFilme
	@id int, @ret int output
AS
BEGIN
	-- Verificar se a consulta NÃO retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Filmes WHERE id = @id )
    BEGIN
        -- se a consulta NÃO trouxer resultados, não continua a exclusão 
        set @ret = -1 
	END
	-- se existe atuação, faço tal coisa 
	IF exists (select * from AtorFilme where filme_id = @id)
	begin
		set @ret = 0 -- não deixa excluir pq há atuações
	end
	ELSE
	begin
		delete from Filmes where id = @id
		set @ret =  1 -- deixa excluir pq não há atuação
	end	
END

-----------------------------------------------------------------
-- PROCEDURES ATUAÇÃO
--SELECT ATUAÇÃO
CREATE PROCEDURE [dbo].[selectAtuacao] 
	@ator varchar(255) = '',
	@filme varchar(255) = ''
AS
BEGIN
	SELECT
        af.id, 
		af.ator_id,
        a.nome,
        a.sobrenome,
        af.filme_id,
        f.titulo,
        f.descricao,
        f.ano_lancamento,
        f.categoria,
        f.idioma_id,
        f.classificacao_indicativa
    FROM
        AtorFilme af
    INNER JOIN
        Ator a ON af.ator_id = a.id
    INNER JOIN
        Filmes f ON af.filme_id = f.id
	WHERE a.nome LIKE '%' + @ator + '%' 
        AND f.titulo LIKE '%' + @filme + '%';
END

-----------------------------------------------------------------
-- INSERT ATUAÇÃO
CREATE PROCEDURE InsertAtuacao
(
	@ator_id int = 0,
	@filme_id int = 0,
	@ret int output
)
AS
begin
-- se ja existe atuação, não deixa inserir repetido
	IF exists(select * from AtorFilme where ator_id = @ator_id and filme_id = @filme_id)
	begin
		set @ret = -1
	end
	ELSE
	begin
		INSERT into AtorFilme (ator_id, filme_id) values (@ator_id, @filme_id)
	end
END

-----------------------------------------------------------------
