--PROCEDURES ATOR

USE [imbd]
GO
/****** Object:  StoredProcedure [dbo].[selectAtor]    Script Date: 11/10/2023 14:18:36 ******/
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



USE [imbd]
GO
/****** Object:  StoredProcedure [dbo].[insertAtor]    Script Date: 11/10/2023 13:09:14 ******/
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