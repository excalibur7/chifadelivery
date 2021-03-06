USE [master]
GO
/****** Object:  Database [DELBD]    Script Date: 02/26/2017 21:09:20 ******/
CREATE DATABASE [DELBD] ON  PRIMARY 
( NAME = N'DELBD', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Data\DELBD.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DELBD_log', FILENAME = N'G:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Data\DELBD_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DELBD] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DELBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DELBD] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DELBD] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DELBD] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DELBD] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DELBD] SET ARITHABORT OFF
GO
ALTER DATABASE [DELBD] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DELBD] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DELBD] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DELBD] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DELBD] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DELBD] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DELBD] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DELBD] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DELBD] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DELBD] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DELBD] SET  ENABLE_BROKER
GO
ALTER DATABASE [DELBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DELBD] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DELBD] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DELBD] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DELBD] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DELBD] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DELBD] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DELBD] SET  READ_WRITE
GO
ALTER DATABASE [DELBD] SET RECOVERY FULL
GO
ALTER DATABASE [DELBD] SET  MULTI_USER
GO
ALTER DATABASE [DELBD] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DELBD] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'DELBD', N'ON'
GO
USE [DELBD]
GO
/****** Object:  Table [dbo].[CliTab]    Script Date: 02/26/2017 21:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CliTab](
	[cli_id] [int] IDENTITY(1,1) NOT NULL,
	[cli_nom] [varchar](50) NOT NULL,
	[cli_apellidos] [varchar](50) NOT NULL,
	[cli_telefono] [varchar](50) NOT NULL,
	[cli_login] [varchar](50) NOT NULL,
	[cli_pass] [varchar](50) NOT NULL,
	[correo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cli_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CliTab] ON
INSERT [dbo].[CliTab] ([cli_id], [cli_nom], [cli_apellidos], [cli_telefono], [cli_login], [cli_pass], [correo]) VALUES (1, N'Josué Marvin', N'Porras Corzo', N'986443521', N'JPORRAS', N'123456', N'josueporras17@gmail.com')
SET IDENTITY_INSERT [dbo].[CliTab] OFF
/****** Object:  Table [dbo].[CartaTab]    Script Date: 02/26/2017 21:09:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CartaTab](
	[car_id] [int] IDENTITY(1,1) NOT NULL,
	[car_cod] [varchar](20) NOT NULL,
	[car_des] [varchar](100) NULL,
	[car_des2] [varchar](100) NULL,
	[car_img] [varchar](50) NULL,
	[car_precio] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[car_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CartaTab] ON
INSERT [dbo].[CartaTab] ([car_id], [car_cod], [car_des], [car_des2], [car_img], [car_precio]) VALUES (6, N'OF1-CD', N'Oferta 1 - Chifa Delivery', N'1 Tay Pa, 1 Carne de Res con TauFu, 1 Chicharrón de Pollo, 1 Chaufa con Pollo (familiar)', N'resources/images/gallery-img1.jpg', CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[CartaTab] ([car_id], [car_cod], [car_des], [car_des2], [car_img], [car_precio]) VALUES (8, N'OF2-CD', N'Oferta 2 - Chifa Delivery', N'1 Calamar Arrebozado, 1 Pollo sin Huevo, 1 Chancho Asado y 1 Chaufa con Pollo (familiar)', N'resources/images/gallery-img2.jpg', CAST(75.90 AS Decimal(10, 2)))
INSERT [dbo].[CartaTab] ([car_id], [car_cod], [car_des], [car_des2], [car_img], [car_precio]) VALUES (9, N'OF3-CD', N'Oferta 3 - Chifa Delivery', N'1 Kam Lu Wantan, 1 Limón Kay, 1 Chupi Kay con Champiñon, 1 Chaufa con Pollo (familiar)', N'resources/images/gallery-img2.jpg', CAST(95.90 AS Decimal(10, 2)))
INSERT [dbo].[CartaTab] ([car_id], [car_cod], [car_des], [car_des2], [car_img], [car_precio]) VALUES (10, N'OF4-CD', N'Oferta 4 - Chifa Delivery', N'1 Fideo Chino con Pollo, 1 Chancho Asado, 1 Pato Asado, 1 Chaufa con Pollo (familiar)', N'resources/images/gallery-img4.jpg', CAST(112.50 AS Decimal(10, 2)))
INSERT [dbo].[CartaTab] ([car_id], [car_cod], [car_des], [car_des2], [car_img], [car_precio]) VALUES (20, N'OF7-CD', N'Chifa 7-Super Combo del Dolor Extremo', N'Chifa Familiar con Gaseosa Pequeña', N'jiji', CAST(71.01 AS Decimal(10, 2)))
INSERT [dbo].[CartaTab] ([car_id], [car_cod], [car_des], [car_des2], [car_img], [car_precio]) VALUES (21, N'OF8-CD', N'Nueva Promocion', N'Chifa Familiar con gaseosa cocacola ', N'', CAST(50.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[CartaTab] OFF
/****** Object:  StoredProcedure [dbo].[CargarDatosUsuario]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CargarDatosUsuario]  
@usuweb varchar(20),  
@pasweb varchar(20)  
AS  
BEGIN  
 SELECT   
  cli_id,
  cli_nom,  
  cli_apellidos,  
  cli_telefono  
 FROM DELBD..CliTab WITH (NOLOCK)
 WHERE  
  cli_login = @usuweb AND cli_pass = @pasweb  
END
GO
/****** Object:  StoredProcedure [dbo].[LogueoUsuario]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LogueoUsuario]
@usuweb varchar(20),
@pasweb varchar(20)
AS
BEGIN
	SELECT 
	COUNT(1) 
	FROM 
	DELBD..CliTab WITH (NOLOCK)
	WHERE cli_login = @usuweb
	and cli_pass = @pasweb
END
GO
/****** Object:  StoredProcedure [dbo].[ListarCartaxCodigo]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarCartaxCodigo]
@car_cod VARCHAR(20)
AS
BEGIN
	SELECT 
		car_cod,car_des,car_des2,car_img,car_precio
	FROM
		DELBD..CartaTab
	WHERE
		car_cod = @car_cod
END
GO
/****** Object:  StoredProcedure [dbo].[ListarCarta]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarCarta]
AS
BEGIN
	select 
		car_id,
		car_cod,
		car_des,
		car_des2,
		car_img,
		car_precio 
	from 
	DELBD..CartaTab WITH (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarCarta]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarCarta]
@car_cod VARCHAR(20),
@car_des VARCHAR(100),
@car_des2 NVARCHAR(MAX),
@car_img VARCHAR(20),
@car_precio DECIMAL(10,2)
AS
BEGIN

	DECLARE @car_id INT  
	
	BEGIN TRY  
    BEGIN TRANSACTION 
		INSERT INTO DELBD..CartaTab(car_cod,car_des,car_des2,car_img,car_precio)  
		VALUES(@car_cod,@car_des,@car_des2,@car_img,@car_precio)
		  
		SET @car_id = SCOPE_IDENTITY()  
		   
    COMMIT
    
    SELECT 1 respuesta,@car_id identificador,'SE GRABÓ LA CARTA SATISFACTORIAMENTE' mensaje
    
    END TRY  
 BEGIN CATCH  
  SELECT 0 respuesta,0 identificador,ERROR_MESSAGE() mensaje
  IF @@TRANCOUNT > 0  
   ROLLBACK  
 END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarCarta]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarCarta]
@CAR_COD VARCHAR(20)
AS
BEGIN
BEGIN TRY  
    BEGIN TRANSACTION   
    
    DECLARE @car_id INT
    
    SET @car_id = (SELECT car_id FROM DELBD..CartaTab WHERE car_cod = @CAR_COD)
    
	DELETE FROM
	DELBD..CartaTab
	WHERE car_cod = @CAR_COD
	
	SELECT 1 respuesta,@car_id identificador,'SE ELIMINÓ LA PROMOCION SATISFACTORIAMENTE' mensaje
      
        COMMIT 
        
 END TRY  
 BEGIN CATCH  
  SELECT 0 respuesta,0 identificador,ERROR_MESSAGE() mensaje
  IF @@TRANCOUNT > 0  
   ROLLBACK  
 END CATCH 
END
GO
/****** Object:  StoredProcedure [dbo].[EditarCarta]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditarCarta]
@car_cod VARCHAR(20),
@car_des VARCHAR(200),
@car_des2 VARCHAR(200),
@car_img VARCHAR(100),
@car_precio DECIMAL(10,2)
AS
BEGIN
BEGIN TRY  
    BEGIN TRANSACTION   
    
    DECLARE @car_id INT
    
    SET @car_id = (SELECT car_id FROM DELBD..CartaTab WHERE car_cod = @CAR_COD)
    
	UPDATE DELBD..CartaTab
	SET car_des = @car_des,car_des2 = @car_des2, car_img = @car_img, car_precio = @car_precio
	WHERE car_cod = @CAR_COD
	
	    COMMIT 
	    
	SELECT 1 respuesta,@car_id identificador,'SE MODIFICÓ LA PROMOCION SATISFACTORIAMENTE' mensaje
      
 END TRY  
 BEGIN CATCH  
  SELECT 0 respuesta,0 identificador,ERROR_MESSAGE() mensaje
  IF @@TRANCOUNT > 0  
   ROLLBACK  
 END CATCH 
END
GO
/****** Object:  Table [dbo].[DelPaisTab]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DelPaisTab](
	[pais_id] [int] IDENTITY(1,1) NOT NULL,
	[pais_nombre] [varchar](50) NOT NULL,
	[pais_estado] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pais_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DelPaisTab] ON
INSERT [dbo].[DelPaisTab] ([pais_id], [pais_nombre], [pais_estado]) VALUES (1, N'Perú', N'A')
SET IDENTITY_INSERT [dbo].[DelPaisTab] OFF
/****** Object:  StoredProcedure [dbo].[InsertarCarta2]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarCarta2]
@XML xml
AS
BEGIN

	DECLARE @car_id INT  
	
	BEGIN TRY  
    BEGIN TRANSACTION 
		INSERT INTO DELBD..CartaTab(car_cod,car_des,car_des2,car_img,car_precio)  
		  SELECT  
		   a.b.value('car_cod[1]','varchar(20)') as cli_id,  
		   a.b.value('car_des[1]','varchar(200)') as dis_id,  
		   a.b.value('car_des2[1]','varchar(200)') as tip_id,  
		   a.b.value('car_img[1]','varchar(50)') as telefono,  
		   a.b.value('car_precio[1]','decimal(10,2)') as direccion 
		  FROM @XML.nodes('Carta') a(b) 
		  
		SET @car_id = SCOPE_IDENTITY()  
		   
    COMMIT
    
    SELECT 1 respuesta,@car_id identificador,'SE GRABÓ LA CARTA SATISFACTORIAMENTE' mensaje
    
    END TRY  
 BEGIN CATCH  
  SELECT 0 respuesta,0 identificador,ERROR_MESSAGE() mensaje
  IF @@TRANCOUNT > 0  
   ROLLBACK  
 END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[ValidarCodigoCarta]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ValidarCodigoCarta]
@CAR_COD VARCHAR(20)
AS
BEGIN

	SELECT
		COUNT(1)
	FROM
		DELBD..CartaTab
	WHERE
		car_cod = @CAR_COD
END
GO
/****** Object:  Table [dbo].[UsuarioTab]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsuarioTab](
	[usr_id] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](100) NOT NULL,
	[apellidos] [varchar](100) NOT NULL,
	[usr_login] [varchar](50) NOT NULL,
	[usr_pass] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UsuarioTab] ON
INSERT [dbo].[UsuarioTab] ([usr_id], [nombres], [apellidos], [usr_login], [usr_pass]) VALUES (1, N'Fulano', N'De Tal', N'fulano', N'123')
SET IDENTITY_INSERT [dbo].[UsuarioTab] OFF
/****** Object:  StoredProcedure [dbo].[LogueoUsuarioEmpresarial]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LogueoUsuarioEmpresarial]
@usuweb varchar(20),  
@pasweb varchar(20)  
AS  
BEGIN  
 SELECT   
 nombres + SPACE(1) + apellidos usuario
 FROM   
 DELBD..UsuarioTab WITH (NOLOCK)  
 WHERE usr_login = @usuweb  
 and usr_pass
  = @pasweb
 GROUP BY nombres,apellidos
END
GO
/****** Object:  Table [dbo].[TipoPagoTab]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPagoTab](
	[tip_id] [int] IDENTITY(1,1) NOT NULL,
	[tip_des] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tip_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPagoTab] ON
INSERT [dbo].[TipoPagoTab] ([tip_id], [tip_des]) VALUES (1, N'VISA')
INSERT [dbo].[TipoPagoTab] ([tip_id], [tip_des]) VALUES (2, N'MASTERCARD')
SET IDENTITY_INSERT [dbo].[TipoPagoTab] OFF
/****** Object:  StoredProcedure [dbo].[Lista_Pedidos_Cliente]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Lista_Pedidos_Cliente]
@cli_id int
AS
BEGIN

	SELECT DISTINCT
		p.ped_id 'ped_id',
		'PED-' + CAST(p.ped_id as VARCHAR) 'nropedido',
		STUFF(REPLACE((SELECT '#!' + LTRIM(RTRIM(c2.car_des)) AS 'data()' 
		FROM DELBD..PedidoTab p2 WITH (NOLOCK) inner join DELBD..PedidoDetTab pd2 WITH (NOLOCK)
		on p2.ped_id = pd2.pd_ped_id inner join DELBD..CartaTab c2 WITH (NOLOCK)
		on pd2.pd_car_id = c2.car_id
		where P2.cli_id = p.cli_id and p2.ped_id = p.ped_id
		FOR XML PATH('')),' #!',', '), 1, 2, '') as 'detalle',
		p.Total 'total',
		CASE WHEN p.estado = 0 THEN 'INICIADO'
		WHEN p.estado = 1 THEN 'EN PREPARACION'
		WHEN p.estado = 2 THEN 'EN CAMINO'
		WHEN p.estado = 3 THEN 'ENTREGADO'
		END AS 'estado',p.estado
	FROM 
		DELBD..PedidoTab p with (nolock) inner join DELBD..PedidoDetTab pd with (nolock)
		on p.ped_id = pd.pd_ped_id inner join DELBD..CartaTab c with (nolock)
		on pd.pd_car_id = c.car_id inner join DELBD..CliTab cli with (nolock)
		on cli.cli_id = p.cli_id
	WHERE
		p.cli_id = @cli_id
	ORDER BY 
		p.estado asc
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarPedido]    Script Date: 02/26/2017 21:09:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarPedido]  
@XML xml  
AS  
BEGIN  
   
 DECLARE @ped_id INT   
  
 BEGIN TRY  
    BEGIN TRANSACTION   
  INSERT INTO DELBD..PedidoTab(cli_id,dis_id,tip_id,telefono,direccion,titular,cvv,num_tarjeta,  
         mes_expira,anio_expira,total)  
  SELECT  
   a.b.value('cli_id[1]','int') as cli_id,  
   a.b.value('dis_id[1]','int') as dis_id,  
   a.b.value('tip_id[1]','int') as tip_id,  
   a.b.value('telefono[1]','varchar(50)') as telefono,  
   a.b.value('direccion[1]','varchar(100)') as direccion,  
   a.b.value('titular[1]','varchar(100)') as titular,  
   a.b.value('cvv[1]','char(3)') as cvv,  
   a.b.value('num_tarjeta[1]','varchar(20)') as num_tarjeta,  
   a.b.value('mes_expira[1]','int') as mes_expira,  
   a.b.value('anio_expira[1]','int') as anio_expira,  
   a.b.value('total[1]','decimal(10,2)') as total   
  FROM @XML.nodes('Pedido') a(b)  
    
  set @ped_id = SCOPE_IDENTITY()  
    
  DECLARE @pd_car_id int  
  DECLARE @pd_precio decimal(10,2)  
    
  DECLARE Insertar_Detalle_Pedido CURSOR FOR   
    
  SELECT  
    a.b.value('pd_car_id[1]','int'),  
    a.b.value('pd_precio[1]','decimal(10,2)')  
    FROM @XML.nodes('Pedido/ListaCarta/PedidoDet') a(b)  
                                                                    
  OPEN Insertar_Detalle_Pedido  
    
  FETCH NEXT FROM Insertar_Detalle_Pedido                                                                    
  INTO @pd_car_id,@pd_precio  
    
  WHILE @@FETCH_STATUS = 0                                                                    
  BEGIN  
    
   INSERT INTO DELBD..PedidoDetTab(pd_ped_id,pd_car_id,pd_precio)  
   VALUES (@ped_id,@pd_car_id,@pd_precio)  
    
  FETCH NEXT FROM Insertar_Detalle_Pedido                                           
  INTO @pd_car_id,@pd_precio                                                                   
  END                                                                             
                                                                    
     CLOSE Insertar_Detalle_Pedido                                                                                                                
     DEALLOCATE Insertar_Detalle_Pedido                                                                           
  
    COMMIT  
      
    SELECT 1 respuesta,@ped_id identificador,'SE GRABÓ LA ORDEN SATISFACTORIAMENTE' mensaje
      
 END TRY  
 BEGIN CATCH  
  SELECT 0 respuesta,0 identificador,ERROR_MESSAGE() mensaje
  IF @@TRANCOUNT > 0  
   ROLLBACK  
 END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[Cambiar_Estado_Pedido]    Script Date: 02/26/2017 21:09:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Cambiar_Estado_Pedido]
@ped_id int,
@estado int
as
begin
	BEGIN TRY  
    BEGIN TRANSACTION  
    	
	UPDATE DELBD..PedidoTab
	set ESTADO = @estado
	WHERE ped_id = @ped_id
	
	COMMIT  
      
    SELECT 1 respuesta,'SE ACTUALIZÓ LA ORDEN SATISFACTORIAMENTE' mensaje
      
	END TRY  
	BEGIN CATCH  
	 SELECT 0 respuesta,ERROR_MESSAGE() mensaje
	 IF @@TRANCOUNT > 0  
	  ROLLBACK  
	END CATCH  
end
GO
/****** Object:  StoredProcedure [dbo].[ListarDistritos]    Script Date: 02/26/2017 21:09:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarDistritos]
AS
BEGIN
	SELECT dis_id,dep_id,dis_nombre,dis_estado
	FROM DELBD..DelDistritoTab WITH (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[Lista_PedidosxEstado]    Script Date: 02/26/2017 21:09:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Lista_PedidosxEstado]
@estado int
AS
BEGIN

	SELECT DISTINCT
		p.ped_id 'ped_id',
		'PED-' + CAST(p.ped_id as VARCHAR) 'nropedido',
		STUFF(REPLACE((SELECT '#!' + LTRIM(RTRIM(c2.car_des)) AS 'data()' 
		FROM DELBD..PedidoTab p2 WITH (NOLOCK) inner join DELBD..PedidoDetTab pd2 WITH (NOLOCK)
		on p2.ped_id = pd2.pd_ped_id inner join DELBD..CartaTab c2 WITH (NOLOCK)
		on pd2.pd_car_id = c2.car_id
		where P2.cli_id = p.cli_id and p2.ped_id = p.ped_id
		FOR XML PATH('')),' #!',', '), 1, 2, '') as 'detalle',
		p.direccion,d.dis_nombre,
		CASE WHEN p.estado = 0 THEN 'INICIADO'
		WHEN p.estado = 1 THEN 'EN PREPARACION'
		WHEN p.estado = 2 THEN 'EN CAMINO'
		WHEN p.estado = 3 THEN 'ENTREGADO'
		END AS 'estado'
	FROM 
		DELBD..PedidoTab p with (nolock) inner join DELBD..PedidoDetTab pd with (nolock)
		on p.ped_id = pd.pd_ped_id inner join DELBD..CartaTab c with (nolock)
		on pd.pd_car_id = c.car_id inner join DELBD..CliTab cli with (nolock)
		on cli.cli_id = p.cli_id inner join DELBD..DelDistritoTab d with (nolock)
		on d.dis_id = p.dis_id
	WHERE
		(@estado = 0 and  p.estado = @estado)
		or (@estado = 1 and p.estado in (@estado,2))
END
GO
/****** Object:  Table [dbo].[DelDepartamentoTab]    Script Date: 02/26/2017 21:09:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DelDepartamentoTab](
	[dep_id] [int] IDENTITY(1,1) NOT NULL,
	[pais_id] [int] NOT NULL,
	[dep_nombre] [varchar](50) NOT NULL,
	[dep_estado] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dep_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DelDepartamentoTab] ON
INSERT [dbo].[DelDepartamentoTab] ([dep_id], [pais_id], [dep_nombre], [dep_estado]) VALUES (1, 1, N'Lima', N'A')
SET IDENTITY_INSERT [dbo].[DelDepartamentoTab] OFF
/****** Object:  Table [dbo].[DelDistritoTab]    Script Date: 02/26/2017 21:09:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DelDistritoTab](
	[dis_id] [int] IDENTITY(1,1) NOT NULL,
	[dep_id] [int] NOT NULL,
	[dis_nombre] [varchar](50) NOT NULL,
	[dis_estado] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dis_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DelDistritoTab] ON
INSERT [dbo].[DelDistritoTab] ([dis_id], [dep_id], [dis_nombre], [dis_estado]) VALUES (1, 1, N'Ate', N'A')
INSERT [dbo].[DelDistritoTab] ([dis_id], [dep_id], [dis_nombre], [dis_estado]) VALUES (2, 1, N'Breña', N'A')
INSERT [dbo].[DelDistritoTab] ([dis_id], [dep_id], [dis_nombre], [dis_estado]) VALUES (3, 1, N'Cercado de Lima', N'A')
INSERT [dbo].[DelDistritoTab] ([dis_id], [dep_id], [dis_nombre], [dis_estado]) VALUES (4, 1, N'Miraflores', N'A')
INSERT [dbo].[DelDistritoTab] ([dis_id], [dep_id], [dis_nombre], [dis_estado]) VALUES (5, 1, N'Jesús María', N'A')
INSERT [dbo].[DelDistritoTab] ([dis_id], [dep_id], [dis_nombre], [dis_estado]) VALUES (6, 1, N'Lince', N'A')
INSERT [dbo].[DelDistritoTab] ([dis_id], [dep_id], [dis_nombre], [dis_estado]) VALUES (7, 1, N'San Isidro', N'A')
SET IDENTITY_INSERT [dbo].[DelDistritoTab] OFF
/****** Object:  Table [dbo].[PedidoTab]    Script Date: 02/26/2017 21:09:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidoTab](
	[ped_id] [int] IDENTITY(1,1) NOT NULL,
	[cli_id] [int] NOT NULL,
	[dis_id] [int] NOT NULL,
	[tip_id] [int] NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[titular] [varchar](100) NOT NULL,
	[cvv] [char](3) NOT NULL,
	[num_tarjeta] [varchar](20) NOT NULL,
	[mes_expira] [int] NOT NULL,
	[anio_expira] [int] NOT NULL,
	[total] [decimal](10, 2) NOT NULL,
	[estado] [int] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ped_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PedidoTab] ON
INSERT [dbo].[PedidoTab] ([ped_id], [cli_id], [dis_id], [tip_id], [telefono], [direccion], [titular], [cvv], [num_tarjeta], [mes_expira], [anio_expira], [total], [estado], [FechaCreacion]) VALUES (21, 1, 1, 1, N'986443521', N'mi casa', N'Josue Porras Corzo', N'124', N'239842734973289', 4, 2020, CAST(75.90 AS Decimal(10, 2)), 0, CAST(0x0000A72601511DDF AS DateTime))
INSERT [dbo].[PedidoTab] ([ped_id], [cli_id], [dis_id], [tip_id], [telefono], [direccion], [titular], [cvv], [num_tarjeta], [mes_expira], [anio_expira], [total], [estado], [FechaCreacion]) VALUES (22, 1, 1, 1, N'986443521', N'Mi casa es grande', N'Josue Porras Corzo', N'988', N'1239012 12039123912', 2, 2018, CAST(135.90 AS Decimal(10, 2)), 0, CAST(0x0000A7260153BE41 AS DateTime))
INSERT [dbo].[PedidoTab] ([ped_id], [cli_id], [dis_id], [tip_id], [telefono], [direccion], [titular], [cvv], [num_tarjeta], [mes_expira], [anio_expira], [total], [estado], [FechaCreacion]) VALUES (23, 1, 1, 1, N'986443521', N'Mi casa', N'Josue Porras', N'123', N'1237123789', 7, 2018, CAST(135.90 AS Decimal(10, 2)), 0, CAST(0x0000A7260154DE6F AS DateTime))
INSERT [dbo].[PedidoTab] ([ped_id], [cli_id], [dis_id], [tip_id], [telefono], [direccion], [titular], [cvv], [num_tarjeta], [mes_expira], [anio_expira], [total], [estado], [FechaCreacion]) VALUES (24, 1, 1, 2, N'986443521', N'Mi casa aslkdjklas', N'akldsjaksld', N'123', N'1290312', 2, 2018, CAST(75.90 AS Decimal(10, 2)), 0, CAST(0x0000A7260155E3FE AS DateTime))
INSERT [dbo].[PedidoTab] ([ped_id], [cli_id], [dis_id], [tip_id], [telefono], [direccion], [titular], [cvv], [num_tarjeta], [mes_expira], [anio_expira], [total], [estado], [FechaCreacion]) VALUES (25, 1, 1, 2, N'986443521', N'asdklsajdkl', N'klasdjkaldsjskla', N'123', N'1290381290', 3, 2020, CAST(135.90 AS Decimal(10, 2)), 0, CAST(0x0000A7260157908D AS DateTime))
INSERT [dbo].[PedidoTab] ([ped_id], [cli_id], [dis_id], [tip_id], [telefono], [direccion], [titular], [cvv], [num_tarjeta], [mes_expira], [anio_expira], [total], [estado], [FechaCreacion]) VALUES (26, 1, 1, 2, N'986443521', N'slkdjaskld', N'asdklsjadklasjkl', N'123', N'19023120123', 12, 2018, CAST(112.50 AS Decimal(10, 2)), 0, CAST(0x0000A7260157E46C AS DateTime))
INSERT [dbo].[PedidoTab] ([ped_id], [cli_id], [dis_id], [tip_id], [telefono], [direccion], [titular], [cvv], [num_tarjeta], [mes_expira], [anio_expira], [total], [estado], [FechaCreacion]) VALUES (27, 1, 1, 2, N'986443521', N'asdkljaskdlajskdl', N'jejeje', N'123', N'1290312', 5, 2020, CAST(135.90 AS Decimal(10, 2)), 0, CAST(0x0000A72601583E2B AS DateTime))
SET IDENTITY_INSERT [dbo].[PedidoTab] OFF
/****** Object:  Table [dbo].[PedidoDetTab]    Script Date: 02/26/2017 21:09:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoDetTab](
	[pd_det_id] [int] IDENTITY(1,1) NOT NULL,
	[pd_ped_id] [int] NOT NULL,
	[pd_car_id] [int] NOT NULL,
	[pd_precio] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pd_det_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PedidoDetTab] ON
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (6, 21, 8, CAST(75.90 AS Decimal(10, 2)))
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (7, 22, 6, CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (8, 22, 8, CAST(75.90 AS Decimal(10, 2)))
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (9, 23, 6, CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (10, 23, 8, CAST(75.90 AS Decimal(10, 2)))
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (11, 24, 8, CAST(75.90 AS Decimal(10, 2)))
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (12, 25, 6, CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (13, 25, 8, CAST(75.90 AS Decimal(10, 2)))
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (14, 26, 10, CAST(112.50 AS Decimal(10, 2)))
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (15, 27, 6, CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[PedidoDetTab] ([pd_det_id], [pd_ped_id], [pd_car_id], [pd_precio]) VALUES (16, 27, 8, CAST(75.90 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[PedidoDetTab] OFF
/****** Object:  Default [DF_PedidoTab_estado]    Script Date: 02/26/2017 21:09:27 ******/
ALTER TABLE [dbo].[PedidoTab] ADD  CONSTRAINT [DF_PedidoTab_estado]  DEFAULT ((0)) FOR [estado]
GO
/****** Object:  Default [DF_PedidoTab_FechaCreacion]    Script Date: 02/26/2017 21:09:27 ******/
ALTER TABLE [dbo].[PedidoTab] ADD  CONSTRAINT [DF_PedidoTab_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
/****** Object:  ForeignKey [FK__DelDepart__pais___1273C1CD]    Script Date: 02/26/2017 21:09:27 ******/
ALTER TABLE [dbo].[DelDepartamentoTab]  WITH CHECK ADD FOREIGN KEY([pais_id])
REFERENCES [dbo].[DelPaisTab] ([pais_id])
GO
/****** Object:  ForeignKey [FK__DelDistri__dep_i__1CF15040]    Script Date: 02/26/2017 21:09:27 ******/
ALTER TABLE [dbo].[DelDistritoTab]  WITH CHECK ADD FOREIGN KEY([dep_id])
REFERENCES [dbo].[DelDepartamentoTab] ([dep_id])
GO
/****** Object:  ForeignKey [FK__PedidoTab__cli_i__2A4B4B5E]    Script Date: 02/26/2017 21:09:27 ******/
ALTER TABLE [dbo].[PedidoTab]  WITH CHECK ADD FOREIGN KEY([cli_id])
REFERENCES [dbo].[CliTab] ([cli_id])
GO
/****** Object:  ForeignKey [FK__PedidoTab__dis_i__2B3F6F97]    Script Date: 02/26/2017 21:09:27 ******/
ALTER TABLE [dbo].[PedidoTab]  WITH CHECK ADD FOREIGN KEY([dis_id])
REFERENCES [dbo].[DelDistritoTab] ([dis_id])
GO
/****** Object:  ForeignKey [FK__PedidoTab__tip_i__2C3393D0]    Script Date: 02/26/2017 21:09:27 ******/
ALTER TABLE [dbo].[PedidoTab]  WITH CHECK ADD FOREIGN KEY([tip_id])
REFERENCES [dbo].[TipoPagoTab] ([tip_id])
GO
/****** Object:  ForeignKey [FK__PedidoDet__pd_ca__35BCFE0A]    Script Date: 02/26/2017 21:09:27 ******/
ALTER TABLE [dbo].[PedidoDetTab]  WITH CHECK ADD FOREIGN KEY([pd_car_id])
REFERENCES [dbo].[CartaTab] ([car_id])
GO
/****** Object:  ForeignKey [FK__PedidoDet__pd_pe__34C8D9D1]    Script Date: 02/26/2017 21:09:27 ******/
ALTER TABLE [dbo].[PedidoDetTab]  WITH CHECK ADD FOREIGN KEY([pd_ped_id])
REFERENCES [dbo].[PedidoTab] ([ped_id])
GO
