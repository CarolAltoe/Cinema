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


--select * from ator where nome like '%leo%'


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
if exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
	set @ret = -1
else
	INSERT into ator (nome,sobrenome) values (@nome,@sobrenome)
end

--UPDATE ATOR
USE [Cinema]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateAtor]
	@id int, 
	@nome varchar(255) = '',
	@sobrenome varchar(255) = ''
AS
BEGIN
	if exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
		set @ret = -1
	else
		UPDATE ator SET  nome = @nome, sobrenome = @sobrenome where id = @id
END

--DELETE ATOR
USE [Cinema]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteAtor] 
	@id int
AS
BEGIN
	if exists(select * from ator where nome = @nome and sobrenome=@sobrenome)
		set @ret = -1
	else
		DELETE FROM ator where id = @id
END