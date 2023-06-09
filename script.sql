USE [master]
GO
/****** Object:  Database [PaySpaceAssessmentWeb]    Script Date: 2023/05/03 05:04:12 ******/
CREATE DATABASE [PaySpaceAssessmentWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PaySpaceAssessmentWeb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PaySpaceAssessmentWeb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PaySpaceAssessmentWeb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PaySpaceAssessmentWeb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PaySpaceAssessmentWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET RECOVERY FULL 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET  MULTI_USER 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PaySpaceAssessmentWeb', N'ON'
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET QUERY_STORE = ON
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PaySpaceAssessmentWeb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2023/05/03 05:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tax]    Script Date: 2023/05/03 05:04:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[annualIncome] [float] NOT NULL,
	[postalCode] [nvarchar](max) NOT NULL,
	[tax] [float] NOT NULL,
	[dateTime] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230502192310_AddTaxToDB', N'8.0.0-preview.3.23174.2')
GO
SET IDENTITY_INSERT [dbo].[Tax] ON 

INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (24, 350000, N'7441', 115500, N'2023/05/03 01:51:04')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (26, 350000, N'7441', 115500, N'2023/05/03 02:16:58')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (27, 350000, N'7441', 115500, N'2023/05/03 02:17:51')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (28, 350000, N'7441', 115500, N'2023/05/03 02:19:23')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (29, 350000, N'7441', 115500, N'2023/05/03 02:26:40')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (30, 350000, N'7441', 115500, N'2023/05/03 02:36:28')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (31, 500000, N'7441', 175000, N'2023/05/03 02:44:06')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (32, 560000, N'7441', 196000, N'2023/05/03 02:44:27')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (34, 350000, N'7441', 115500, N'2023/05/03 02:51:28')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (36, 199000, N'A100', 9950, N'2023/05/03 04:56:28')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (37, 200000, N'A100', 10000, N'2023/05/03 04:58:20')
INSERT [dbo].[Tax] ([Id], [annualIncome], [postalCode], [tax], [dateTime]) VALUES (38, 200000, N'7000', 34000, N'2023/05/03 04:59:26')
SET IDENTITY_INSERT [dbo].[Tax] OFF
GO
USE [master]
GO
ALTER DATABASE [PaySpaceAssessmentWeb] SET  READ_WRITE 
GO
