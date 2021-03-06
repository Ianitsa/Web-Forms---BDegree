USE [master]
GO
/****** Object:  Database [DProect]    Script Date: 13-Jun-16 10:15:28 AM ******/
CREATE DATABASE [DProect]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DProect', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DProect.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DProect_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DProect_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DProect] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DProect].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DProect] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DProect] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DProect] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DProect] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DProect] SET ARITHABORT OFF 
GO
ALTER DATABASE [DProect] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DProect] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DProect] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DProect] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DProect] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DProect] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DProect] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DProect] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DProect] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DProect] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DProect] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DProect] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DProect] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DProect] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DProect] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DProect] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DProect] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DProect] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DProect] SET  MULTI_USER 
GO
ALTER DATABASE [DProect] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DProect] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DProect] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DProect] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DProect] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DProect]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Cat_id] [int] NOT NULL,
	[ParentCat_id] [int] NULL,
	[Cat_name] [nvarchar](50) NOT NULL,
	[Galery_id] [int] NULL,
	[sratus] [char](1) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gallery](
	[Gallery_id] [int] NOT NULL,
	[Gallery_name] [nvarchar](50) NOT NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[Gallery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GalleryDetail]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GalleryDetail](
	[Gallery_id] [int] NOT NULL,
	[Picture_id] [int] NOT NULL,
 CONSTRAINT [PK_GalleryDetail] PRIMARY KEY CLUSTERED 
(
	[Gallery_id] ASC,
	[Picture_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[User_id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserType] [bit] NOT NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[Mf_id] [int] IDENTITY(1,1) NOT NULL,
	[Company_name] [nvarchar](50) NOT NULL,
	[Mf_city] [nvarchar](50) NOT NULL,
	[Mf_address] [nvarchar](100) NULL,
	[Mf_BULSTAT] [nvarchar](13) NOT NULL,
	[Mf_phone] [nvarchar](50) NOT NULL,
	[Mf_MOL] [nvarchar](50) NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[Mf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Order_id] [int] NOT NULL,
	[Product_id] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OD_Price] [money] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC,
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Order_date] [date] NOT NULL,
	[Shipped_date] [date] NOT NULL,
	[OrderStatusID] [int] NOT NULL,
	[DeliveryAddress] [nvarchar](250) NULL,
	[Info] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderStatusOrders]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatusOrders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_id] [int] NOT NULL,
	[OrderStatusID] [int] NOT NULL,
	[DateStatus] [date] NULL,
 CONSTRAINT [PK_OrderStatusOrders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[Picture_id] [int] NOT NULL,
	[Picture_name] [nvarchar](50) NOT NULL,
	[Picture_link] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pictures] PRIMARY KEY CLUSTERED 
(
	[Picture_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Pr_id] [int] NOT NULL,
	[Mf_id] [int] NOT NULL,
	[Cat_id] [int] NOT NULL,
	[Pr_name] [nvarchar](50) NOT NULL,
	[Pr_Price] [numeric](8, 2) NOT NULL,
	[Pr_discriptions] [text] NULL,
	[Pr_size] [nvarchar](50) NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Pr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Spec_Offer]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Spec_Offer](
	[SOffer_id] [int] IDENTITY(1,1) NOT NULL,
	[Pr_id] [int] NOT NULL,
	[Pr_discont] [numeric](8, 2) NOT NULL,
	[Valid_from] [date] NOT NULL,
	[valid_to] [date] NOT NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Spec_Offer] PRIMARY KEY CLUSTERED 
(
	[SOffer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserDetail]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetail](
	[UD_id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [int] NOT NULL,
	[UD_name] [nvarchar](200) NOT NULL,
	[EGN/BULSTAT] [nvarchar](13) NULL,
	[UD_city] [nvarchar](50) NOT NULL,
	[UD_address] [nvarchar](100) NOT NULL,
	[UD_email] [nvarchar](100) NULL,
	[UD_phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserDetail] PRIMARY KEY CLUSTERED 
(
	[UD_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[V_PRODUCT_SPEC_OFFER]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_PRODUCT_SPEC_OFFER]
as
SELECT s.SOffer_id,p.Pr_id, p.Pr_name,p.Pr_price,(p.Pr_Price-s.Pr_discont) as NewPrice,s.Valid_from,s.valid_to
FROM Products p INNER JOIN Spec_Offer s on s.Pr_id=p.Pr_id
GO
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (101, 3000, N'BedroomSet', 3000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (201, 3000, N'Couch', 3000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (301, 2000, N'DiningTable', 3000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (401, 2000, N'CoffeTable', 4000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (501, 1000, N'Warderob', 1000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (601, 1000, N'UpgreadWarderob', 1000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (701, 3000, N'SectorialSofa', 3000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (801, 4000, N'Sekciq', 4000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (1000, NULL, N'Warderobs', 1000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (2000, NULL, N'Tables', 2000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (3000, NULL, N'Sofas', 3000, N'Y')
INSERT [dbo].[Categories] ([Cat_id], [ParentCat_id], [Cat_name], [Galery_id], [sratus]) VALUES (4000, NULL, N'Sekciq', 4000, N'Y')
INSERT [dbo].[Gallery] ([Gallery_id], [Gallery_name], [status]) VALUES (1000, N'Warderobs', N'Y')
INSERT [dbo].[Gallery] ([Gallery_id], [Gallery_name], [status]) VALUES (2000, N'Tables', N'Y')
INSERT [dbo].[Gallery] ([Gallery_id], [Gallery_name], [status]) VALUES (3000, N'Sofas', N'Y')
INSERT [dbo].[Gallery] ([Gallery_id], [Gallery_name], [status]) VALUES (4000, N'BedroomSet', N'Y')
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([User_id], [UserName], [UserPassword], [UserType], [status]) VALUES (1, N'Ani', N'123', 0, NULL)
INSERT [dbo].[Login] ([User_id], [UserName], [UserPassword], [UserType], [status]) VALUES (2, N'Ina', N'123', 1, NULL)
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([Mf_id], [Company_name], [Mf_city], [Mf_address], [Mf_BULSTAT], [Mf_phone], [Mf_MOL], [status]) VALUES (1, N'Mebelino EOOD', N'Plovdiv', N'Mladost', N'9879879879879', N'0878147147', N'Maria Ivanova', N'Y')
INSERT [dbo].[Manufacturer] ([Mf_id], [Company_name], [Mf_city], [Mf_address], [Mf_BULSTAT], [Mf_phone], [Mf_MOL], [status]) VALUES (2, N'MebeliBG OOD', N'Varna', N'Svoboda', N'1472583691472', N'0877369369', N'Anna Petrova', N'Y')
INSERT [dbo].[Manufacturer] ([Mf_id], [Company_name], [Mf_city], [Mf_address], [Mf_BULSTAT], [Mf_phone], [Mf_MOL], [status]) VALUES (3, N'RMebel OOD', N'Sofia', N'Dianabad', N'1234567897896', N'0888 020202', N'Peta Peeva', N'Y')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (4, 1500, 1, 300.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (5, 2304, 1, 135.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (5, 3700, 2, 1800.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (6, 1500, 2, 25.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (6, 3102, 2, 1200.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (7, 2303, 1, 240.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (7, 2402, 2, 240.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (7, 4801, 1, 400.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (8, 2301, 1, 283.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (8, 2303, 1, 240.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (8, 2403, 1, 130.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (9, 2301, 1, 283.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (9, 2303, 1, 240.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (9, 2403, 1, 130.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (10, 2401, 1, 140.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (10, 3102, 2, 1200.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (10, 3700, 1, 900.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (11, 1500, 1, 300.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (11, 2401, 1, 140.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (11, 3700, 1, 900.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (12, 2400, 1, 120.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (12, 2401, 1, 140.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (12, 3700, 1, 900.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (13, 2401, 1, 140.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (13, 3700, 1, 900.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (14, 2305, 1, 200.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (14, 4801, 1, 400.0000)
INSERT [dbo].[OrderDetail] ([Order_id], [Product_id], [Quantity], [OD_Price]) VALUES (15, 2303, 1, 240.0000)
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (1, N'2', CAST(N'2015-05-12' AS Date), CAST(N'2015-05-17' AS Date), 1, N'София', NULL)
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (2, N'2', CAST(N'2015-07-20' AS Date), CAST(N'2015-07-25' AS Date), 1, N'Пловдив', NULL)
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (3, N'Ani', CAST(N'2016-06-06' AS Date), CAST(N'2016-06-11' AS Date), 1, N'София', NULL)
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (4, N'Ani', CAST(N'2016-06-06' AS Date), CAST(N'2016-06-11' AS Date), 1, N'София', NULL)
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (5, N'Ani', CAST(N'2016-06-06' AS Date), CAST(N'2016-06-11' AS Date), 1, N'Петрич', NULL)
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (6, N'Ani', CAST(N'2016-06-06' AS Date), CAST(N'2016-06-11' AS Date), 1, N'Петрич', N'0897 99 15 15 ')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (7, N'Ani', CAST(N'2016-06-06' AS Date), CAST(N'2016-06-11' AS Date), 1, N'Бургас', NULL)
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (8, N'Ani', CAST(N'2016-06-06' AS Date), CAST(N'2016-06-11' AS Date), 1, N'София', NULL)
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (9, N'Ani', CAST(N'2016-06-06' AS Date), CAST(N'2016-06-11' AS Date), 1, N'Burgas', N'0787 87 87 11')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (10, N'Ani', CAST(N'2016-06-11' AS Date), CAST(N'2016-06-16' AS Date), 1, N'Sofia', N'0888 77 10 77')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (11, N'Ani', CAST(N'2016-06-11' AS Date), CAST(N'2016-06-16' AS Date), 1, N'Sofia', N'0888 77 10 77')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (12, N'Ani', CAST(N'2016-06-11' AS Date), CAST(N'2016-06-16' AS Date), 1, N'Костенец', N'0888 77 10 77')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (13, N'Ani', CAST(N'2016-06-11' AS Date), CAST(N'2016-06-16' AS Date), 1, N'Костенец', N'0888 77 10 77')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (14, N'Qni', CAST(N'2016-06-13' AS Date), CAST(N'2016-06-18' AS Date), 1, N'', N'')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (15, N'Qni', CAST(N'2016-06-13' AS Date), CAST(N'2016-06-18' AS Date), 1, N'', N'')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (16, N'Qni', CAST(N'2016-06-13' AS Date), CAST(N'2016-06-18' AS Date), 1, N'', N'')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (17, N'Qni', CAST(N'2016-06-13' AS Date), CAST(N'2016-06-18' AS Date), 1, N'', N'')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (18, N'Qni', CAST(N'2016-06-13' AS Date), CAST(N'2016-06-18' AS Date), 1, N'', N'')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (19, N'Qni', CAST(N'2016-06-13' AS Date), CAST(N'2016-06-18' AS Date), 1, N'', N'')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (20, N'Ani', CAST(N'2016-06-13' AS Date), CAST(N'2016-06-18' AS Date), 1, N'', N'')
INSERT [dbo].[Orders] ([Order_id], [UserName], [Order_date], [Shipped_date], [OrderStatusID], [DeliveryAddress], [Info]) VALUES (21, N'Ani', CAST(N'2016-06-13' AS Date), CAST(N'2016-06-18' AS Date), 1, N'Sofia', N'08222222222')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatus]) VALUES (1, N'поръчан')
INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatus]) VALUES (2, N'обработка')
INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatus]) VALUES (3, N'доставен')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
SET IDENTITY_INSERT [dbo].[OrderStatusOrders] ON 

INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (1, 6, 1, CAST(N'2016-06-06' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (2, 7, 1, CAST(N'2016-06-06' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (3, 8, 1, CAST(N'2016-06-06' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (4, 10, 1, CAST(N'2016-06-11' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (5, 11, 1, CAST(N'2016-06-11' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (6, 12, 1, CAST(N'2016-06-11' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (7, 13, 1, CAST(N'2016-06-11' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (8, 14, 1, CAST(N'2016-06-13' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (9, 15, 1, CAST(N'2016-06-13' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (10, 16, 1, CAST(N'2016-06-13' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (11, 17, 1, CAST(N'2016-06-13' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (12, 18, 1, CAST(N'2016-06-13' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (13, 19, 1, CAST(N'2016-06-13' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (14, 20, 1, CAST(N'2016-06-13' AS Date))
INSERT [dbo].[OrderStatusOrders] ([ID], [Order_id], [OrderStatusID], [DateStatus]) VALUES (15, 21, 1, CAST(N'2016-06-13' AS Date))
SET IDENTITY_INSERT [dbo].[OrderStatusOrders] OFF
INSERT [dbo].[Pictures] ([Picture_id], [Picture_name], [Picture_link]) VALUES (201, N'Kara', NULL)
INSERT [dbo].[Pictures] ([Picture_id], [Picture_name], [Picture_link]) VALUES (301, N'Oazis', NULL)
INSERT [dbo].[Pictures] ([Picture_id], [Picture_name], [Picture_link]) VALUES (601, N'Asia', NULL)
INSERT [dbo].[Pictures] ([Picture_id], [Picture_name], [Picture_link]) VALUES (701, N'Sofi', NULL)
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (1500, 1, 501, N'Warderob Petia', CAST(300.00 AS Numeric(8, 2)), N'Warderob', N'60/2000/2700', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (1501, 1, 501, N'Warderob Prolet', CAST(310.00 AS Numeric(8, 2)), N'Warderob', N'60/1800/2200', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (1502, 2, 501, N'Warderob Adel', CAST(400.00 AS Numeric(8, 2)), N'Warderob', N'60/1800/2200', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (1503, 1, 501, N'Warderob Maria', CAST(300.00 AS Numeric(8, 2)), N'Warderob', N'60/1800/2400', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (1504, 1, 501, N'Warderob Diana', CAST(300.00 AS Numeric(8, 2)), N'Warderob', N'60/1800/2400', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (1505, 2, 501, N'Warderob Tania', CAST(450.00 AS Numeric(8, 2)), N'Warderob', N'60/2000/3200', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (1600, 1, 601, N'UpgradesWardrobes Diana', CAST(130.00 AS Numeric(8, 2)), N'UpgradesWardrobes', N'60/50/2400', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (1601, 1, 601, N'UpgradesWardrobes Oberon', CAST(130.00 AS Numeric(8, 2)), N'UpgradesWardrobes', N'60/50/2400', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (1602, 2, 601, N'UpgradesWardrobes Uili', CAST(100.00 AS Numeric(8, 2)), N'UpgradesWardrobes', N'60/50/1600', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2301, 1, 301, N'Dinning Table Sandra', CAST(300.00 AS Numeric(8, 2)), N'Dinning Table', N'50/60/80', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2302, 1, 301, N'Dinning Table Petia', CAST(200.00 AS Numeric(8, 2)), N'Dinning Table', N'50/60/80', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2303, 1, 301, N'Dinning Table Katrin', CAST(250.00 AS Numeric(8, 2)), N'Dinning Table', N'50/60/80', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2304, 2, 301, N'Dinning Table Ema', CAST(150.00 AS Numeric(8, 2)), N'Dinning Table', N'50/60/50', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2305, 1, 301, N'Dinning Table Ani', CAST(200.00 AS Numeric(8, 2)), N'Dinning Table', N'50/60/80', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2306, 2, 301, N'Dinning Table Ina', CAST(160.00 AS Numeric(8, 2)), N'Dinning Table', N'50/60/50', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2400, 2, 401, N'CofeeTable Nina', CAST(120.00 AS Numeric(8, 2)), N'CofeeTable', N'50/50/70', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2401, 2, 401, N'CofeeTable Nadia', CAST(150.00 AS Numeric(8, 2)), N'CofeeTable', N'50/50/60', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2402, 1, 401, N'CofeeTable Lili', CAST(130.00 AS Numeric(8, 2)), N'CofeeTable', N'50/50/50', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2403, 2, 401, N'CofeeTable Lotos', CAST(130.00 AS Numeric(8, 2)), N'CofeeTable', N'50/50/50', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2404, 2, 401, N'CofeeTable Marina', CAST(140.00 AS Numeric(8, 2)), N'CofeeTable', N'50/50/70', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (2406, 1, 401, N'CofeeTable Ring', CAST(150.00 AS Numeric(8, 2)), N'CofeeTable', N'50/50/50', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3100, 2, 101, N'BedroomSet Stefani', CAST(700.00 AS Numeric(8, 2)), N'BedroomSet', N'140/60/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3101, 1, 101, N'BedroomSet Tania', CAST(600.00 AS Numeric(8, 2)), N'BedroomSet', N'140/60/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3102, 2, 101, N'BedroomSet Petia', CAST(610.00 AS Numeric(8, 2)), N'BedroomSet', N'140/60/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3103, 1, 101, N'BedroomSet Beti', CAST(650.00 AS Numeric(8, 2)), N'BedroomSet', N'140/60/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3104, 1, 101, N'BedroomSet Moni', CAST(710.00 AS Numeric(8, 2)), N'BedroomSet', N'140/60/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3105, 2, 101, N'BedroomSet Oazis', CAST(670.00 AS Numeric(8, 2)), N'BedroomSet', N'140/60/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3106, 2, 101, N'BedroomSet Oazis2', CAST(700.00 AS Numeric(8, 2)), N'BedroomSet', N'140/60/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3200, 2, 201, N'Couch Nina', CAST(350.00 AS Numeric(8, 2)), N'Couch', N'70/80/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3201, 1, 201, N'Couch Dani', CAST(400.00 AS Numeric(8, 2)), N'Couch', N'70/80/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3700, 2, 701, N'SectionalSofa Opal', CAST(900.00 AS Numeric(8, 2)), N'SectionalSofa', N'1600/1200/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (3701, 1, 701, N'SectionalSofa Oreol', CAST(1000.00 AS Numeric(8, 2)), N'SectionalSofa', N'2000/1100/2000', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (4801, 1, 801, N'Cupboard Vili', CAST(400.00 AS Numeric(8, 2)), N'Cupboard', N'50/1600/1500', N'Y')
INSERT [dbo].[Products] ([Pr_id], [Mf_id], [Cat_id], [Pr_name], [Pr_Price], [Pr_discriptions], [Pr_size], [status]) VALUES (4802, 2, 801, N'Cupboard Maia', CAST(600.00 AS Numeric(8, 2)), N'Cupboard', N'50/1700/2300', N'Y')
SET IDENTITY_INSERT [dbo].[Spec_Offer] ON 

INSERT [dbo].[Spec_Offer] ([SOffer_id], [Pr_id], [Pr_discont], [Valid_from], [valid_to], [status]) VALUES (1, 2303, CAST(10.00 AS Numeric(8, 2)), CAST(N'2016-05-17' AS Date), CAST(N'2016-05-30' AS Date), N'Y')
INSERT [dbo].[Spec_Offer] ([SOffer_id], [Pr_id], [Pr_discont], [Valid_from], [valid_to], [status]) VALUES (2, 2304, CAST(15.00 AS Numeric(8, 2)), CAST(N'2016-05-17' AS Date), CAST(N'2016-07-12' AS Date), N'Y')
INSERT [dbo].[Spec_Offer] ([SOffer_id], [Pr_id], [Pr_discont], [Valid_from], [valid_to], [status]) VALUES (6, 2401, CAST(10.00 AS Numeric(8, 2)), CAST(N'2016-05-10' AS Date), CAST(N'2016-07-12' AS Date), N'Y')
INSERT [dbo].[Spec_Offer] ([SOffer_id], [Pr_id], [Pr_discont], [Valid_from], [valid_to], [status]) VALUES (8, 2406, CAST(12.00 AS Numeric(8, 2)), CAST(N'2016-05-15' AS Date), CAST(N'2016-07-15' AS Date), N'Y')
INSERT [dbo].[Spec_Offer] ([SOffer_id], [Pr_id], [Pr_discont], [Valid_from], [valid_to], [status]) VALUES (10, 2402, CAST(10.00 AS Numeric(8, 2)), CAST(N'2016-05-17' AS Date), CAST(N'2016-07-15' AS Date), N'Y')
INSERT [dbo].[Spec_Offer] ([SOffer_id], [Pr_id], [Pr_discont], [Valid_from], [valid_to], [status]) VALUES (11, 2301, CAST(17.00 AS Numeric(8, 2)), CAST(N'2016-04-10' AS Date), CAST(N'2016-05-27' AS Date), N'Y')
SET IDENTITY_INSERT [dbo].[Spec_Offer] OFF
SET IDENTITY_INSERT [dbo].[UserDetail] ON 

INSERT [dbo].[UserDetail] ([UD_id], [User_id], [UD_name], [EGN/BULSTAT], [UD_city], [UD_address], [UD_email], [UD_phone]) VALUES (1, 1, N'Ani Angelova', N'7705061234', N'Sofia', N'Mladost', N'a@abv', N'0888121212')
INSERT [dbo].[UserDetail] ([UD_id], [User_id], [UD_name], [EGN/BULSTAT], [UD_city], [UD_address], [UD_email], [UD_phone]) VALUES (2, 2, N'Ina Ivanova', N'8712192345', N'Plovdiv', N'Lulin', N'i@abv', N'0877141414')
SET IDENTITY_INSERT [dbo].[UserDetail] OFF
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([ParentCat_id])
REFERENCES [dbo].[Categories] ([Cat_id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Gallery] FOREIGN KEY([Galery_id])
REFERENCES [dbo].[Gallery] ([Gallery_id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Gallery]
GO
ALTER TABLE [dbo].[GalleryDetail]  WITH CHECK ADD  CONSTRAINT [FK_GalleryDetail_Gallery] FOREIGN KEY([Gallery_id])
REFERENCES [dbo].[Gallery] ([Gallery_id])
GO
ALTER TABLE [dbo].[GalleryDetail] CHECK CONSTRAINT [FK_GalleryDetail_Gallery]
GO
ALTER TABLE [dbo].[GalleryDetail]  WITH CHECK ADD  CONSTRAINT [FK_GalleryDetail_Pictures] FOREIGN KEY([Picture_id])
REFERENCES [dbo].[Pictures] ([Picture_id])
GO
ALTER TABLE [dbo].[GalleryDetail] CHECK CONSTRAINT [FK_GalleryDetail_Pictures]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Orders] ([Order_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Products1] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Products] ([Pr_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Products1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderStatus] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([OrderStatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_OrderStatus]
GO
ALTER TABLE [dbo].[OrderStatusOrders]  WITH CHECK ADD  CONSTRAINT [FK_OrderStatusOrders_Orders] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Orders] ([Order_id])
GO
ALTER TABLE [dbo].[OrderStatusOrders] CHECK CONSTRAINT [FK_OrderStatusOrders_Orders]
GO
ALTER TABLE [dbo].[OrderStatusOrders]  WITH CHECK ADD  CONSTRAINT [FK_OrderStatusOrders_OrderStatus] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([OrderStatusID])
GO
ALTER TABLE [dbo].[OrderStatusOrders] CHECK CONSTRAINT [FK_OrderStatusOrders_OrderStatus]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories1] FOREIGN KEY([Cat_id])
REFERENCES [dbo].[Categories] ([Cat_id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Manufacturer] FOREIGN KEY([Mf_id])
REFERENCES [dbo].[Manufacturer] ([Mf_id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Manufacturer]
GO
ALTER TABLE [dbo].[Spec_Offer]  WITH CHECK ADD  CONSTRAINT [FK_Spec_Offer_Products] FOREIGN KEY([Pr_id])
REFERENCES [dbo].[Products] ([Pr_id])
GO
ALTER TABLE [dbo].[Spec_Offer] CHECK CONSTRAINT [FK_Spec_Offer_Products]
GO
ALTER TABLE [dbo].[UserDetail]  WITH CHECK ADD  CONSTRAINT [FK_UserDetail_Login] FOREIGN KEY([User_id])
REFERENCES [dbo].[Login] ([User_id])
GO
ALTER TABLE [dbo].[UserDetail] CHECK CONSTRAINT [FK_UserDetail_Login]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrders]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertOrders]
@UserName nvarchar(50),
@Order_date date,
@Shipped_date date,
@DeliveryAddress nvarchar(250),
@Info nvarchar(max),
@orderid int output

AS 
BEGIN
	DECLARE @SQL_STRING nvarchar(max)
	BEGIN TRY
		INSERT INTO [dbo].[Orders](  UserName, Order_date, Shipped_date, OrderStatusID, DeliveryAddress,Info )  
		VALUES(@UserName, @Order_date, @Shipped_date,1, @DeliveryAddress,@Info)
		select  @orderid=@@IDENTITY
		return @orderid
	END TRY
	BEGIN CATCH
		SET @SQL_STRING=N'Poruchkata ne moje da bade dobavena/This Order can not be added!'
		RAISERROR(@SQL_STRING,16,1)
   END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertProduct]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertProduct]
@Pr_id int=null,
@Mf_id int=null,
@Cat_id int=null,
@Pr_name nvarchar(50)=null,
@Pr_price numeric(8,2)=null,
@Pr_discription text=null,
@Pr_size nvarchar(50)=null,
@status char(1)=null

AS
BEGIN
   DECLARE @msg nvarchar(100)
   BEGIN TRY
	INSERT INTO [dbo].[Products](Pr_id,Mf_id,Cat_id,Pr_name,Pr_Price,Pr_discriptions,Pr_size,status)
	VALUES(@Pr_id,@Mf_id,@Cat_id,@Pr_name,@Pr_price,@Pr_discription,@Pr_size,@status)
   END TRY
   BEGIN CATCH 
	   SET @msg=N'Producta ne moje da bade dobaven/This product can not be added!'
	   RAISERROR(@msg,16,1)
   END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertSpecOffer]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insertSpecOffer]
@Pr_id int=null,
@Pr_discont numeric(8,2)=null,
@Valid_from date=null,
@Valid_to date=null,
@status char=null
	
AS 
BEGIN
	DECLARE @SQL_STRING nvarchar(max)
	BEGIN TRY
		INSERT INTO Spec_Offer(Pr_id,Pr_discont, Valid_from,valid_to,status)
		VALUES(@Pr_id,@Pr_discont,@Valid_from,@Valid_to,@status)
	END TRY
	BEGIN CATCH
		SET @SQL_STRING=N'Ofertata ne moje da bade dobavena/This offer can not be added!'
		RAISERROR(@SQL_STRING,16,1)
   END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_OrderDetail]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_OrderDetail]
@Order_id int,
@Pr_id int,
@Qty int,
@Price money

AS 
BEGIN
	DECLARE @SQL_STRING nvarchar(max)
	BEGIN TRY
		INSERT INTO [dbo].[OrderDetail](Order_id, Product_id,Quantity, OD_Price) 
		VALUES(@Order_id, @Pr_id, @Qty, @Price  )
	END TRY
	BEGIN CATCH
		SET @SQL_STRING=N'Detailite na Poruchkata ne mogat da badat dobaveni/The OrderDetails can not be added!'
		RAISERROR(@SQL_STRING,16,1)
   END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[sp_SearchProduct]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SearchProduct]
 @Pr_id int=null,
 @Pr_name nvarchar(50)

 AS
 bEGIN
  DECLARE @SQL_STRING  nvarchar(max)
  SET @SQL_STRING=
  'select * from Products
  where 1=1 '
	  if @Pr_id is not null 
	   set @SQL_STRING=@SQL_STRING +'AND Pr_id = '+cast(@Pr_id as varchar(10))+' '
	  if @Pr_name is not null
	   set @SQL_STRING=@SQL_STRING +'AND Pr_name like''%' +@Pr_name+'%'' '
	exec (@SQL_STRING) 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateProducts]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateProducts]
@Pr_id int,
@Mf_id int,
@Cat_id int,
@Pr_name nvarchar(50),
@Pr_price numeric(8,2),
@Pr_discription text,
@Pr_size nvarchar(50),
@status char(1)

AS
  BEGIN
  UPDATE [dbo].[Product]
  SET 
	Mf_id=@Mf_id,Cat_id=@Cat_id,Pr_name=@Pr_name,Pr_Price=@Pr_price,Pr_discriptions=@Pr_discription,Pr_size=@Pr_size,status=@status
     WHERE Pr_id=@Pr_id
 END

GO
/****** Object:  StoredProcedure [dbo].[sp_updateSpecOffer]    Script Date: 13-Jun-16 10:15:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_updateSpecOffer]
@S_Offer_id int=null,
@Pr_id int=null,
@Pr_discont numeric(8,2)=null,
@Valid_from date=null,
@Valid_to date=null,
@status char=null
	
AS 
BEGIN
  UPDATE Spec_Offer
  SET
	Pr_id=@Pr_id,Pr_discont=@Pr_discont, Valid_from=@Valid_from,valid_to=@Valid_to,status=@status
	WHERE SOffer_id=@S_Offer_id
  END

GO
USE [master]
GO
ALTER DATABASE [DProect] SET  READ_WRITE 
GO
