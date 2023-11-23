
USE [Cinema]

--PROCEDURES ATOR

--SELECT ATOR
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectAtor] 
	@nome varchar(255) = '',@sobrenome varchar(255) = ''
AS
BEGIN
	select * 
	from ator
	where nome like '%' + @nome + '%' AND 
		sobrenome like '%' + @sobrenome + '%'
END


-- SELECT BY ID
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE selectAtorById
	@id int
AS
BEGIN
	select * from ator where id = @id
END


--INSERT ATOR
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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


--UPDATE ATOR
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROCEDURE [dbo].[updateAtor]
	@id int, 
	@nome varchar(255) = '',
	@sobrenome varchar(255) = '',
	@ret int output
AS
BEGIN 
	-- Verificar se a consulta NÃO retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Ator WHERE id = @id )
    BEGIN
        -- se a consulta NÃO trouxer resultados, não cotinua a alteração
        set @ret = -1 
	END
	ELSE IF exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
	BEGIN
		-- se existe ator com mesmo nome e sobrenome, não deixo alterar
		set @ret = -1 
	END
	ELSE
	BEGIN
		UPDATE ator SET nome = @nome, sobrenome = @sobrenome where id = @id
	END
END


--DELETE ATOR
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE [dbo].[deleteAtor] 
	@id int,
	@nome varchar(255) = '',
	@sobrenome varchar(255) = '',
	@ret int output
AS
BEGIN
	if exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
		set @ret = -1
	else
		DELETE FROM ator where id = @id
END*/
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
	-- se existe atuação, faço tal coisa 
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


-- PROCEDURES IDIOMA

--SELECT IDIOMA
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectIdioma] 
	@descricao varchar(255) = ''
AS
BEGIN
	select * 
	from Idiomas
	where descricao like '%' + @descricao + '%' 
END

-- SELECT BY ID

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE selectIdiomaById
	@id int
AS
BEGIN
	select * from Idiomas where id = @id
END


-- INSERT IDIOMA
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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


--UPDATE IDIOMA
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateIdioma]
	@id int, 
	@descricao varchar(255) = '',
	@ret int output
AS
BEGIN 
	-- Verificar se a consulta NÃO retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Idiomas WHERE id = @id )
    BEGIN
        -- se a consulta NÃO trouxer resultados, não cotinua a alteração
        set @ret = -1 
	END
	ELSE IF exists(select * from Idiomas where descricao = @descricao)
	BEGIN
		-- se existe ator com mesmo nome e sobrenome, não deixo alterar
		set @ret = -1 
	END
	ELSE
	BEGIN
		UPDATE Idiomas SET descricao = @descricao where id = @id
	END
END


--DELETE IDIOMA
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE [dbo].[deleteAtor] 
	@id int,
	@nome varchar(255) = '',
	@sobrenome varchar(255) = '',
	@ret int output
AS
BEGIN
	if exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
		set @ret = -1
	else
		DELETE FROM ator where id = @id
END*/
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
	-- se existe atuação, faço tal coisa 
/*	IF exists (select * from AtorFilme where ator_id = @id)
	begin
		set @ret = 0 -- não deixa excluir pq há atuações
	end*/
	ELSE
	begin
		delete from Idiomas where id = @id
		set @ret =  1 -- deixa excluir pq não há atuação
	end	
END


-- PROCEDURES FILME
--SELECT FILME
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectFilme] 
	@titulo varchar(255) = '',
	@descricao varchar(255) = '',
	@ano_lancamento int = 0,
	@categoria varchar(255) = '',
	@classificacao_indicativa varchar(255) = '',
	@idioma_id int = 0
AS
BEGIN
	select * 
	from Filmes
	where titulo like '%' + @titulo + '%' 
	AND  categoria like '%' + @categoria + '%'
	AND  classificacao_indicativa like '%' + @classificacao_indicativa + '%'
	AND  idioma_id = @idioma_id
END


-- SELECT BY ID FILME
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE selectFilmeById
	@id int
AS
BEGIN
	select * from Filmes where id = @id
END


--INSERT FILME
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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


--UPDATE FILME
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
    IF NOT EXISTS (SELECT 1 FROM Filmes WHERE id = @id )
    BEGIN
        -- se a consulta NÃO trouxer resultados, não cotinua a alteração
        set @ret = -1 
	END
	ELSE IF exists(select * from Filmes where titulo = @titulo)
	BEGIN
		-- se existe ator com mesmo nome e sobrenome, não deixo alterar
		set @ret = -1 
	END
	ELSE
	BEGIN
		UPDATE Filmes 
		SET titulo = @titulo, descricao = @descricao, ano_lancamento = @ano_lancamento,
		categoria = @categoria, classificacao_indicativa = @classificacao_indicativa,
		idioma_id = @idioma_id
		where id = @id
	END
END

--DELETE FILME

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE [dbo].[deleteAtor] 
	@id int,
	@nome varchar(255) = '',
	@sobrenome varchar(255) = '',
	@ret int output
AS
BEGIN
	if exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
		set @ret = -1
	else
		DELETE FROM ator where id = @id
END*/
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



-- PROCEDURES ATUAÇÃO

--SELECT ATUAÇÃO
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectAtuacao] 
	@ator_id int = 0,
	@filme_id int = 0
AS
BEGIN
	select * 
	from AtorFilme
	where ator_id = @ator_id AND filme_id = @filme_id
END

-- SELECT BY ID ATUAÇÃO

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE selectAtuacaoById
	@id int
AS
BEGIN
	select * from Idiomas where id = @id
END


-- INSERT ATUAÇÃO
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inserAtuacao]
(
	@ator_id int = 0,
	@filme_id int = 0,
	@ret int output
)
AS
begin
	IF exists(select * from AtorFilme where ator_id = @ator_id and filme_id = @filme_id)
	begin
		set @ret = -1
	end
	ELSE
	begin
		INSERT into AtorFilme (ator_id, filme_id) values (@ator_id, @filme_id)
	end
END


--UPDATE ATUAÇÃO
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateAtuacao]
	@id int, 
	@ator_id int = 0,
	@filme_id int = 0,
	@ret int output
AS
BEGIN 
	-- Verificar se a consulta NÃO retorna resultados
    IF NOT EXISTS (SELECT 1 FROM AtorFilme WHERE id = @id )
    BEGIN
        -- se a consulta NÃO trouxer resultados, não cotinua a alteração
        set @ret = -1 
	END
	--ELSE IF exists(select * from AtorFilme where descricao = @descricao)
	BEGIN
		-- se existe ator com mesmo nome e sobrenome, não deixo alterar
		set @ret = -1 
	END
	ELSE
	BEGIN
		UPDATE AtorFilme SET descricao = @descricao where id = @id
	END
END


--DELETE ATUAÇÃO
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
CREATE PROCEDURE [dbo].[deleteAtor] 
	@id int,
	@nome varchar(255) = '',
	@sobrenome varchar(255) = '',
	@ret int output
AS
BEGIN
	if exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
		set @ret = -1
	else
		DELETE FROM ator where id = @id
END*/
CREATE PROCEDURE deleteAtuacao
	@id int, @ret int output
AS
BEGIN
	-- Verificar se a consulta NÃO retorna resultados
    IF NOT EXISTS (SELECT 1 FROM AtorFilme WHERE id = @id )
    BEGIN
        -- se a consulta NÃO trouxer resultados, não continua a exclusão 
        set @ret = -1 
	END
	-- se existe atuação, faço tal coisa 
/*	IF exists (select * from AtorFilme where ator_id = @id)
	begin
		set @ret = 0 -- não deixa excluir pq há atuações
	end*/
	ELSE
	begin
		delete from AtorFilme where id = @id
		set @ret =  1 -- deixa excluir pq não há atuação
	end	
END
