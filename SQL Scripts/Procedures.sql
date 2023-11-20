--PROCEDURES ATOR

--SELECT ATOR
USE [Cinema]
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
USE [Cinema]
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
USE [Cinema]
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
USE [Cinema]
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
	-- Verificar se a consulta N�O retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Ator WHERE id = @id )
    BEGIN
        -- se a consulta N�O trouxer resultados, n�o cotinua a altera��o
        set @ret = -1 
	END
	ELSE IF exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
	BEGIN
		-- se existe ator com mesmo nome e sobrenome, n�o deixo alterar
		set @ret = -1 
	END
	ELSE
	BEGIN
		UPDATE ator SET nome = @nome, sobrenome = @sobrenome where id = @id
	END
END

--DELETE ATOR
USE [Cinema]
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
	-- Verificar se a consulta N�O retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Ator WHERE id = @id )
    BEGIN
        -- se a consulta N�O trouxer resultados, n�o continua a exclus�o 
        set @ret = -1 
	END
	-- se existe atua��o, fa�o tal coisa 
	IF exists (select * from AtorFilme where ator_id = @id)
	begin
		set @ret = 0 -- n�o deixa excluir pq h� atua��es
	end
	ELSE
	begin
		delete from Ator where id = @id
		set @ret =  1 -- deixa excluir pq n�o h� atua��o
	end	
END


-- PROCEDURES IDIOMA

--SELECT IDIOMA
USE [Cinema]
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
USE [Cinema]
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


--INSERT IDIOMA
USE [Cinema]
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
USE [Cinema]
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
	-- Verificar se a consulta N�O retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Idiomas WHERE id = @id )
    BEGIN
        -- se a consulta N�O trouxer resultados, n�o cotinua a altera��o
        set @ret = -1 
	END
	ELSE IF exists(select * from Idiomas where descricao = @descricao)
	BEGIN
		-- se existe ator com mesmo nome e sobrenome, n�o deixo alterar
		set @ret = -1 
	END
	ELSE
	BEGIN
		UPDATE Idiomas SET descricao = @descricao where id = @id
	END
END

--DELETE IDIOMA
USE [Cinema]
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
	-- Verificar se a consulta N�O retorna resultados
    IF NOT EXISTS (SELECT 1 FROM Idiomas WHERE id = @id )
    BEGIN
        -- se a consulta N�O trouxer resultados, n�o continua a exclus�o 
        set @ret = -1 
	END
	-- se existe atua��o, fa�o tal coisa 
/*	IF exists (select * from AtorFilme where ator_id = @id)
	begin
		set @ret = 0 -- n�o deixa excluir pq h� atua��es
	end*/
	ELSE
	begin
		delete from Idiomas where id = @id
		set @ret =  1 -- deixa excluir pq n�o h� atua��o
	end	
END
