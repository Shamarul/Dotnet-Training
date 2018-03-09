USE [master]
GO
/****** Object:  Database [ShoppingCart]    Script Date: 3/9/2018 9:16:49 AM ******/
CREATE DATABASE [ShoppingCart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoppingCart', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShoppingCart.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShoppingCart_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShoppingCart_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShoppingCart] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingCart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppingCart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoppingCart] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoppingCart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoppingCart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoppingCart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoppingCart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoppingCart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoppingCart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoppingCart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoppingCart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoppingCart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoppingCart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoppingCart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoppingCart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoppingCart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoppingCart] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShoppingCart] SET  MULTI_USER 
GO
ALTER DATABASE [ShoppingCart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoppingCart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoppingCart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoppingCart] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShoppingCart] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShoppingCart]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/9/2018 9:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[Paid] [bit] NULL,
	[PurchaseDate] [datetime] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/9/2018 9:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](500) NULL,
	[ProductPrice] [decimal](18, 0) NULL,
	[ProductImage] [varchar](500) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/9/2018 9:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (1, 1, 1, 2, 1, CAST(N'2018-03-08 10:09:31.513' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (2, 1, 5, 1, 1, CAST(N'2018-03-08 10:09:31.513' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (3, 1, 2, 2, 1, CAST(N'2018-03-08 10:09:31.513' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (4, 1, 3, 1, 1, CAST(N'2018-03-08 10:09:31.513' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (5, 1, 6, 1, 1, CAST(N'2018-03-08 10:09:31.513' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (6, 1, 3, 1, 1, CAST(N'2018-03-08 10:15:09.273' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (7, 1, 5, 1, 1, CAST(N'2018-03-08 10:15:09.273' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (8, 1, 5, 1, 1, CAST(N'2018-03-08 10:15:31.287' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (9, 1, 7, 1, 1, CAST(N'2018-03-08 10:17:01.107' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (10, 1, 6, 1, 1, CAST(N'2018-03-08 10:17:53.887' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (11, 1, 1, 1, 1, CAST(N'2018-03-08 11:37:16.320' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (12, 1, 4, 1, 1, CAST(N'2018-03-08 11:37:16.320' AS DateTime))
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity], [Paid], [PurchaseDate]) VALUES (13, 1, 2, 1, 1, CAST(N'2018-03-08 12:03:17.110' AS DateTime))
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (1, N'Sneakers', CAST(300 AS Decimal(18, 0)), N'images/1.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (2, N'SeankersZ', CAST(400 AS Decimal(18, 0)), N'images/2.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (3, N'AliBaba', CAST(200 AS Decimal(18, 0)), N'images/3.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (4, N'Abugin', CAST(300 AS Decimal(18, 0)), N'images/4.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (5, N'Shak', CAST(300 AS Decimal(18, 0)), N'images/5.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (6, N'Kaw', CAST(400 AS Decimal(18, 0)), N'images/6.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductPrice], [ProductImage]) VALUES (7, N'Ho', CAST(250 AS Decimal(18, 0)), N'images/7.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Username], [Password]) VALUES (1, N'Sham', N'root')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  StoredProcedure [dbo].[AddToCart]    Script Date: 3/9/2018 9:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddToCart] 
	-- Add the parameters for the stored procedure here
	@UserId int,
	@ProductId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		if EXISTS(select * from Cart where UserId=@UserId and ProductId=@ProductId and Paid is null)
		BEGIN
	-- Update the existing row in cart table
UPDATE [dbo].[Cart]
   SET [Quantity] = (select Quantity from Cart where UserId=@UserId and ProductId=@ProductId and Paid is null)+1
   WHERE UserId=@UserId and ProductId=@ProductId and Paid is null
    END
		ELSE
		BEGIN

	-- Insert a new row in cart table

INSERT INTO [dbo].[Cart]
           ([UserId]
           ,[ProductId]
           ,[Quantity])

     VALUES
           (@UserId
           ,@ProductId
           ,1)

END
END

GO
/****** Object:  StoredProcedure [dbo].[Authentication]    Script Date: 3/9/2018 9:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Authentication]
	-- Add the parameters for the stored procedure here
	@Username varchar(50), 
	@Password varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

SELECT [UserId]
      ,[Username]
      ,[Password]
  FROM [dbo].[Users] where Username=@Username and [Password]=@Password


END

GO
/****** Object:  StoredProcedure [dbo].[CheckOut]    Script Date: 3/9/2018 9:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckOut] 
	-- Add the parameters for the stored procedure here
	@UserId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE [dbo].[Cart]
   SET [Paid] = 'true'
      ,[PurchaseDate] = GETDATE()
 WHERE UserId=@UserId and Paid is null

END

GO
/****** Object:  StoredProcedure [dbo].[ProductSelectAll]    Script Date: 3/9/2018 9:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductSelectAll] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT [ProductId]
      ,[ProductName]
      ,[ProductPrice]
      ,[ProductImage]
  FROM [dbo].[Products]

END

GO
/****** Object:  StoredProcedure [dbo].[ShoppingCart]    Script Date: 3/9/2018 9:16:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ShoppingCart]
	-- Add the parameters for the stored procedure here
	@UserId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT P.ProductImage,P.ProductName,P.ProductPrice,C.Quantity,(P.ProductPrice*C.Quantity) as Total From Products P 
	Inner Join Cart C ON C.ProductId=P.ProductId where UserId= @UserId and C.Paid is null
END

GO
USE [master]
GO
ALTER DATABASE [ShoppingCart] SET  READ_WRITE 
GO
