USE [master]
GO
/****** Object:  Database [DB_Inspirotechs]    Script Date: 26/03/2023 23:29:46 ******/
CREATE DATABASE [DB_Inspirotechs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Inspirotechs', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_Inspirotechs.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Inspirotechs_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DB_Inspirotechs_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DB_Inspirotechs] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Inspirotechs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Inspirotechs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Inspirotechs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Inspirotechs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_Inspirotechs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Inspirotechs] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_Inspirotechs] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Inspirotechs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Inspirotechs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Inspirotechs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Inspirotechs] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_Inspirotechs] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_Inspirotechs] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_Inspirotechs', N'ON'
GO
ALTER DATABASE [DB_Inspirotechs] SET QUERY_STORE = ON
GO
ALTER DATABASE [DB_Inspirotechs] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DB_Inspirotechs]
GO
/****** Object:  Table [dbo].[MasterEmployee]    Script Date: 26/03/2023 23:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterEmployee](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NIK] [bigint] NULL,
	[NamaLengkap] [varchar](50) NULL,
	[NamaPanggilan] [varchar](50) NULL,
	[TempatLahir] [varchar](20) NULL,
	[TanggalLahir] [date] NULL,
	[JenisKelamin] [varchar](10) NULL,
	[AlamatLengkap] [varchar](200) NULL,
	[AlamatDomisili] [varchar](200) NULL,
	[NomerTelepon] [varchar](20) NULL,
	[Email_1] [varchar](50) NULL,
	[Email_2] [varchar](50) NULL,
	[Jabatan] [varchar](20) NULL,
	[UsernameLogin] [varchar](20) NOT NULL,
	[PasswordLogin] [varchar](20) NOT NULL,
	[HakAkses] [varchar](20) NOT NULL,
 CONSTRAINT [PK_MasterEmployee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterMenu]    Script Date: 26/03/2023 23:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterMenu](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[KodeMenu] [varchar](50) NULL,
	[NamaMenu] [varchar](50) NULL,
	[JenisMenu] [varchar](50) NULL,
	[HargaSatuan] [decimal](18, 0) NULL,
 CONSTRAINT [PK_MasterMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterPesanan]    Script Date: 26/03/2023 23:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterPesanan](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[KodePemesanan] [varchar](50) NULL,
	[NamaPemesan] [varchar](50) NULL,
	[KodeMenu] [varchar](50) NULL,
	[NamaMenu] [varchar](50) NULL,
	[JumlahPesanan] [varchar](10) NULL,
	[HargaSatuan] [decimal](18, 0) NULL,
 CONSTRAINT [PK_MasterPesanan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterTransaksi]    Script Date: 26/03/2023 23:29:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterTransaksi](
	[Id] [bigint] NOT NULL,
	[KodeMenu] [varchar](50) NULL,
	[NamaPesanan] [varchar](50) NULL,
	[JumlahPesanan] [varchar](10) NOT NULL,
	[TotalPembayaran] [decimal](18, 0) NULL,
 CONSTRAINT [PK_MasterTransaksi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MasterEmployee] ON 

INSERT [dbo].[MasterEmployee] ([NIK], [NamaLengkap], [NamaPanggilan], [TempatLahir], [TanggalLahir], [JenisKelamin], [AlamatLengkap], [AlamatDomisili], [NomerTelepon], [Email_1], [Email_2], [Jabatan], [UsernameLogin], [PasswordLogin], [HakAkses]) VALUES (3672070411870002, N'Mochammad Reza Fahlevi', N'Resha', N'Serang', CAST(N'1987-04-11' AS Date), N'Pria', N'Jalan Alamanda Kuning. Nomor : 10. RT/RW : 003/007. Komplek / Perumahan : Palm Hills Estate. Kode Pos : 42434. Kecamatan : Purwakarta. Kelurahan : Kota Bumi. Provinsi : Banten, Indonesia', N'Jalan Alamanda Kuning. Nomor : 10. RT/RW : 003/007. Komplek / Perumahan : Palm Hills Estate. Kode Pos : 42434. Kecamatan : Purwakarta. Kelurahan : Kota Bumi. Provinsi : Banten, Indonesia', N'081293400855', N'mochammad_reza_fahlevi@yahoo.com', N'reza.fahlevi087@gmail.com', N'Supervisor', N'Resha', N'P@ssw0rd', N'Administrator')
SET IDENTITY_INSERT [dbo].[MasterEmployee] OFF
GO
SET IDENTITY_INSERT [dbo].[MasterMenu] ON 

INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (1, N'FOD-1', N'Nasi Goreng', N'Food', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (2, N'FOD-2', N'Mie Goreng', N'Food', CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (3, N'FOD-3', N'Mie Rebus', N'Food', CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (4, N'FOD-4', N'Kwetiau Goreng', N'Food', CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (5, N'FOD-5', N'Kwetiau Rebus', N'Food', CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (6, N'FOD-6', N'Roti Bakar Komplit', N'Food', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (7, N'FOD-7', N'Nasi Uduk Komplit', N'Food', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (8, N'FOD-8', N'Pecel Lele + Nasi', N'Food', CAST(18000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (9, N'FOD-9', N'Ayam Goreng + Nasi', N'Food', CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (10, N'FOD-10', N'Bebek Goreng + Nasi', N'Food', CAST(23000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (11, N'FOD-11', N'Pecel Sayur + (Nasi/Lontong/Ketupat)', N'Food', CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (12, N'FOD-12', N'Kredok Sayur + (Nasi/Lontong/Ketupat)', N'Food', CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (13, N'DRK-1', N'Aqua Botol', N'Drink', CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (14, N'DRK-2', N'Es Teh Manis', N'Drink', CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (15, N'DRK-3', N'Es Campur Komplit', N'Drink', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (16, N'DRK-4', N'Teh Tawar Hangat Manis', N'Drink', CAST(2000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (17, N'DRK-5', N'Coca Cola', N'Drink', CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (18, N'DRK-6', N'Sprite', N'Drink', CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (19, N'DRK-7', N'Fanta', N'Drink', CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[MasterMenu] ([Id], [KodeMenu], [NamaMenu], [JenisMenu], [HargaSatuan]) VALUES (20, N'DRK-8', N'Es Kelapa Muda', N'Drink', CAST(8000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[MasterMenu] OFF
GO
USE [master]
GO
ALTER DATABASE [DB_Inspirotechs] SET  READ_WRITE 
GO



--------------------------------------------------------------------------------------------------------------------------------------------------------------------


USE [DB_Inspirotechs]

SELECT 
Id,
NIK,
NamaLengkap,
NamaPanggilan,
Jabatan,
UsernameLogin,
PasswordLogin,
HakAkses,
IsActive
FROM MasterEmployee


SELECT * FROM MasterMenu
SELECT * FROM MasterPesanan
SELECT * FROM MasterTransaksi


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

USE [DB_Inspirotechs]
SELECT
TABLE_CATALOG AS DATABASE_NAME, 
TABLE_SCHEMA + '.' + TABLE_NAME AS TABLE_NAME, 
COLUMN_NAME, 
DATA_TYPE, 
IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'MasterEmployee'