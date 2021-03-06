USE [master]
GO
/****** Object:  Database [Computer_Сompany]    Script Date: 09.12.2021 10:59:53 ******/
CREATE DATABASE [Computer_Сompany]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Computer_Сompany', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Computer_Сompany.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Computer_Сompany_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Computer_Сompany_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Computer_Сompany] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Computer_Сompany].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Computer_Сompany] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Computer_Сompany] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Computer_Сompany] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Computer_Сompany] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Computer_Сompany] SET ARITHABORT OFF 
GO
ALTER DATABASE [Computer_Сompany] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Computer_Сompany] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Computer_Сompany] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Computer_Сompany] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Computer_Сompany] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Computer_Сompany] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Computer_Сompany] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Computer_Сompany] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Computer_Сompany] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Computer_Сompany] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Computer_Сompany] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Computer_Сompany] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Computer_Сompany] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Computer_Сompany] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Computer_Сompany] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Computer_Сompany] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Computer_Сompany] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Computer_Сompany] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Computer_Сompany] SET  MULTI_USER 
GO
ALTER DATABASE [Computer_Сompany] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Computer_Сompany] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Computer_Сompany] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Computer_Сompany] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Computer_Сompany] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Computer_Сompany] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Computer_Сompany] SET QUERY_STORE = OFF
GO
USE [Computer_Сompany]
GO
/****** Object:  Table [dbo].[Components]    Script Date: 09.12.2021 10:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Components](
	[IdComponents] [int] NOT NULL,
	[IdType] [int] NOT NULL,
	[Brand] [nvarchar](100) NOT NULL,
	[Firm] [nvarchar](100) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[ReleaseDate] [date] NULL,
	[Characteristic] [nvarchar](100) NULL,
	[WarrantyPeriod] [date] NULL,
	[Description] [nvarchar](100) NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Components_1] PRIMARY KEY CLUSTERED 
(
	[IdComponents] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 09.12.2021 10:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[IdCustomer] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Telephone] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 09.12.2021 10:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[DateOrders] [date] NOT NULL,
	[DateExecution] [date] NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[IdComponents1] [int] NOT NULL,
	[IdComponents2] [int] NOT NULL,
	[IdComponents3] [int] NOT NULL,
	[ShereOfPrepayment] [money] NOT NULL,
	[PaymentMark] [bit] NOT NULL,
	[ExecutionMark] [bit] NOT NULL,
	[Price] [money] NOT NULL,
	[WarrantyPeriod] [date] NOT NULL,
	[IdService1] [int] NOT NULL,
	[IdService2] [int] NOT NULL,
	[IdService3] [int] NOT NULL,
	[IdStaff] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 09.12.2021 10:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[IdPosition] [int] NOT NULL,
	[NamePosition] [nvarchar](100) NOT NULL,
	[Money] [money] NOT NULL,
	[Responsibilities] [nvarchar](100) NULL,
	[Requirements] [nvarchar](100) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[IdPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 09.12.2021 10:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[IdService] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[IdService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 09.12.2021 10:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[IdStaff] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Age] [int] NOT NULL,
	[Floor] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Telephone] [int] NULL,
	[PassportData] [int] NULL,
	[IdPosition] [int] NOT NULL,
 CONSTRAINT [PK_Staff_1] PRIMARY KEY CLUSTERED 
(
	[IdStaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeComponents]    Script Date: 09.12.2021 10:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeComponents](
	[IdType] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_TypeComponents] PRIMARY KEY CLUSTERED 
(
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Components]  WITH CHECK ADD  CONSTRAINT [FK_Components_TypeComponents] FOREIGN KEY([IdType])
REFERENCES [dbo].[TypeComponents] ([IdType])
GO
ALTER TABLE [dbo].[Components] CHECK CONSTRAINT [FK_Components_TypeComponents]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Components] FOREIGN KEY([IdComponents1])
REFERENCES [dbo].[Components] ([IdComponents])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Components]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Components1] FOREIGN KEY([IdComponents2])
REFERENCES [dbo].[Components] ([IdComponents])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Components1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Components2] FOREIGN KEY([IdComponents3])
REFERENCES [dbo].[Components] ([IdComponents])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Components2]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer1] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([IdCustomer])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Service] FOREIGN KEY([IdService1])
REFERENCES [dbo].[Service] ([IdService])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Service]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Service1] FOREIGN KEY([IdService2])
REFERENCES [dbo].[Service] ([IdService])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Service1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Service2] FOREIGN KEY([IdService3])
REFERENCES [dbo].[Service] ([IdService])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Service2]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Staff] FOREIGN KEY([IdStaff])
REFERENCES [dbo].[Staff] ([IdStaff])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Staff]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Position1] FOREIGN KEY([IdPosition])
REFERENCES [dbo].[Position] ([IdPosition])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Position1]
GO
USE [master]
GO
ALTER DATABASE [Computer_Сompany] SET  READ_WRITE 
GO
