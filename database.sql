USE [master]
GO
/****** Object:  Database [Kullanici_Yetkilendirme]    Script Date: 27.10.2022 16:31:46 ******/
CREATE DATABASE [Kullanici_Yetkilendirme]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kullanici_Yetkilendirme', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Kullanici_Yetkilendirme.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kullanici_Yetkilendirme_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Kullanici_Yetkilendirme_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kullanici_Yetkilendirme].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET  MULTI_USER 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET QUERY_STORE = OFF
GO
USE [Kullanici_Yetkilendirme]
GO
/****** Object:  Table [dbo].[Ekran]    Script Date: 27.10.2022 16:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ekran](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Yetkili] [bit] NULL,
	[KayitTarihi] [nvarchar](50) NULL,
	[KaydedenKullaniciId] [int] NULL,
	[SilmeTarihi] [nvarchar](50) NULL,
	[SilenKullaniciId] [int] NULL,
 CONSTRAINT [PK_Ekran Listesi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Firma]    Script Date: 27.10.2022 16:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firma](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kod] [nvarchar](50) NULL,
	[Ad] [nvarchar](50) NULL,
	[Yetkili] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[KayitTarihi] [nvarchar](50) NULL,
	[KaydedenKullaniciId] [int] NULL,
	[SilmeTarihi] [nvarchar](50) NULL,
	[SilenKullaniciId] [int] NULL,
 CONSTRAINT [PK_Firma] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FirmaAdresBilgileri]    Script Date: 27.10.2022 16:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirmaAdresBilgileri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirmaId] [int] NULL,
	[Varsayilan] [bit] NULL,
	[Tip] [nvarchar](50) NULL,
	[Deger] [nvarchar](50) NULL,
	[Ilce] [nvarchar](50) NULL,
	[Il] [nvarchar](50) NULL,
	[KayitTarihi] [nvarchar](50) NULL,
	[KaydedenKullaniciId] [int] NULL,
	[SilmeTarihi] [nvarchar](50) NULL,
	[SilenKullaniciId] [int] NULL,
 CONSTRAINT [PK_AdresBilgileri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FirmaIletisimBilgileri]    Script Date: 27.10.2022 16:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirmaIletisimBilgileri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirmaId] [int] NULL,
	[Varsayilan] [bit] NULL,
	[Tip] [nvarchar](50) NULL,
	[Deger] [nvarchar](50) NULL,
	[KayitTarihi] [nvarchar](50) NULL,
	[KaydedenKullaniciId] [int] NULL,
	[SilmeTarihi] [nvarchar](50) NULL,
	[SilenKullaniciId] [int] NULL,
 CONSTRAINT [PK_IletisimBilgileri,] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 27.10.2022 16:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [nvarchar](50) NULL,
	[AdSoyad] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Mail] [nchar](50) NULL,
	[Aktif] [bit] NULL,
	[KayitTarihi] [nvarchar](50) NULL,
	[KaydedenKullaniciId] [int] NULL,
	[SilmeTarihi] [nvarchar](50) NULL,
	[SilenKullaniciId] [int] NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciEkranYetki]    Script Date: 27.10.2022 16:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciEkranYetki](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciId] [int] NULL,
	[EkranId] [int] NULL,
	[Yetki] [bit] NULL,
	[KayitTarihi] [nvarchar](50) NULL,
	[KaydedenKullaniciId] [int] NULL,
	[SilmeTarihi] [nvarchar](50) NULL,
	[SilenKullaniciId] [int] NULL,
 CONSTRAINT [PK_KullaniciEkranYetki] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ekran] ON 

INSERT [dbo].[Ekran] ([Id], [Ad], [Yetkili], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (1, N'Ekran1                                            ', NULL, N'2022-02-01                                        ', 1, NULL, NULL)
INSERT [dbo].[Ekran] ([Id], [Ad], [Yetkili], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (2, N'Ekran2                                            ', NULL, N'2022-02-03                                        ', 2, NULL, NULL)
INSERT [dbo].[Ekran] ([Id], [Ad], [Yetkili], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (3, N'Ekran3                                            ', NULL, N'2022-02-05                                        ', 2, NULL, NULL)
INSERT [dbo].[Ekran] ([Id], [Ad], [Yetkili], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (4, N'Ekran4                                            ', NULL, N'2022-02-01                                        ', 1, NULL, NULL)
INSERT [dbo].[Ekran] ([Id], [Ad], [Yetkili], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (5, N'Ekran5                                            ', NULL, N'2022-02-05                                        ', 2, NULL, NULL)
INSERT [dbo].[Ekran] ([Id], [Ad], [Yetkili], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (6, N'Ekran6                                            ', NULL, N'2022-02-11                                        ', 1, NULL, NULL)
INSERT [dbo].[Ekran] ([Id], [Ad], [Yetkili], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (7, N'Ekran7                                            ', NULL, N'2022-02-19                                        ', 2, NULL, NULL)
INSERT [dbo].[Ekran] ([Id], [Ad], [Yetkili], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (8, N'Ekran8                                            ', NULL, N'2022-02-02                                        ', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Ekran] OFF
GO
SET IDENTITY_INSERT [dbo].[Firma] ON 

INSERT [dbo].[Firma] ([Id], [Kod], [Ad], [Yetkili], [Tel], [Adres], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (1, N'1', N'a', N'a1', N'11', N'aa', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firma] ([Id], [Kod], [Ad], [Yetkili], [Tel], [Adres], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (2, N'2', N'b', N'b2', N'22', N'bb', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firma] ([Id], [Kod], [Ad], [Yetkili], [Tel], [Adres], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (3, N'3', N'c', N'c2', N'33', N'cc', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firma] ([Id], [Kod], [Ad], [Yetkili], [Tel], [Adres], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (4, N'4', N'd', N'd4', N'44', N'dd', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firma] ([Id], [Kod], [Ad], [Yetkili], [Tel], [Adres], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (5, N'5', N'e', N'e5', N'55', N'ee', NULL, NULL, NULL, NULL)
INSERT [dbo].[Firma] ([Id], [Kod], [Ad], [Yetkili], [Tel], [Adres], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (6, N'6', N'f', N'f6', N'66', N'ff', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Firma] OFF
GO
SET IDENTITY_INSERT [dbo].[FirmaAdresBilgileri] ON 

INSERT [dbo].[FirmaAdresBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [Ilce], [Il], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (1, 1, 0, N'İş', N'aaa', N'0', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaAdresBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [Ilce], [Il], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (2, 1, 1, N'Ev', N'aa', N'0', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaAdresBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [Ilce], [Il], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (3, 2, 0, N'Ev', N'aa', N'0', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaAdresBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [Ilce], [Il], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (4, 2, 1, N'İş', N'bb', N'0', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaAdresBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [Ilce], [Il], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (5, 3, 1, N'Ev', N'cc', N'0', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaAdresBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [Ilce], [Il], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (6, 4, 1, N'Ev', N'dd', N'0', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaAdresBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [Ilce], [Il], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (7, 5, 1, N'İş', N'ee', N'0', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaAdresBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [Ilce], [Il], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (8, 5, 0, N'Ev', N'ef', N'0', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaAdresBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [Ilce], [Il], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (9, 6, 1, N'İş', N'ff', N'0', N'0', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaAdresBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [Ilce], [Il], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (10, 6, 0, N'ev', N'fr', N'0', N'0', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FirmaAdresBilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[FirmaIletisimBilgileri] ON 

INSERT [dbo].[FirmaIletisimBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (1, 1, 1, N'Cep', N'11', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaIletisimBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (2, 1, 0, N'Ev', N'12', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaIletisimBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (3, 2, 1, N'Ev', N'22', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaIletisimBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (4, 3, 1, N'Ev', N'33', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaIletisimBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (5, 4, 0, N'Ev', N'43', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaIletisimBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (6, 4, 1, N'Cep', N'44', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaIletisimBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (7, 5, 1, N'Ev', N'55', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaIletisimBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (8, 6, 1, N'Cep', N'66', NULL, NULL, NULL, NULL)
INSERT [dbo].[FirmaIletisimBilgileri] ([Id], [FirmaId], [Varsayilan], [Tip], [Deger], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (9, 6, 0, N'Ev', N'788', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FirmaIletisimBilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([Id], [Rol], [AdSoyad], [Sifre], [Mail], [Aktif], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (1, N'Admin', N'Volkan Akkurt', N'123', N'v@gmail.com                                       ', 1, N'2022-01-01                                        ', 1, NULL, NULL)
INSERT [dbo].[Kullanici] ([Id], [Rol], [AdSoyad], [Sifre], [Mail], [Aktif], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (2, N'User', N'Ahmet', N'123', N'a@gmail.com                                       ', 1, N'2022-01-02                                        ', 1, NULL, NULL)
INSERT [dbo].[Kullanici] ([Id], [Rol], [AdSoyad], [Sifre], [Mail], [Aktif], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (3, N'User', N'Ayşe', N'123', N'b@gmail.com                                       ', 0, N'2022-01-03                                        ', 2, NULL, NULL)
INSERT [dbo].[Kullanici] ([Id], [Rol], [AdSoyad], [Sifre], [Mail], [Aktif], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (4, N'Organizer', N'Fırat', N'123', N'f@gmail.com                                       ', 1, N'2022-01-04                                        ', 1, NULL, NULL)
INSERT [dbo].[Kullanici] ([Id], [Rol], [AdSoyad], [Sifre], [Mail], [Aktif], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (5, N'User', N'Merve', N'123', N'm@gmail.com                                       ', 0, N'2022-01-05                                        ', 2, NULL, NULL)
INSERT [dbo].[Kullanici] ([Id], [Rol], [AdSoyad], [Sifre], [Mail], [Aktif], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (45, N'User', N'Fatma Rol', N'123', N'fr@gmail.com                                      ', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Kullanici] ([Id], [Rol], [AdSoyad], [Sifre], [Mail], [Aktif], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (46, N'Organizer', N'Yarkın Çaktırma', N'123', N'yç@gmail.com                                      ', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Kullanici] ([Id], [Rol], [AdSoyad], [Sifre], [Mail], [Aktif], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (47, N'Tolga', N'Tolga', N'123', N'Tolga                                             ', 0, N'Oct 25 2022  4:15PM                               ', 1, NULL, NULL)
INSERT [dbo].[Kullanici] ([Id], [Rol], [AdSoyad], [Sifre], [Mail], [Aktif], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (48, N'Ali', N'Ali', N'123', N'Ali                                               ', 0, N'Oct 25 2022  4:15PM                               ', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciEkranYetki] ON 

INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (1, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (2, 1, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (3, 1, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (4, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (5, 1, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (6, 1, 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (7, 1, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (8, 1, 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (9, 2, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (10, 2, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (11, 2, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (12, 2, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (13, 2, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (14, 2, 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (15, 2, 7, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (16, 2, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (17, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (18, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (19, 3, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (20, 3, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (21, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (22, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (23, 3, 7, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (24, 3, 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (25, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (26, 4, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (27, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (28, 4, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (29, 4, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (30, 4, 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (31, 4, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (32, 4, 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33, 5, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34, 5, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (35, 5, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (36, 5, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (37, 5, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (38, 5, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (39, 5, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (40, 5, 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33976, 45, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33977, 45, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33978, 45, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33979, 45, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33980, 45, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33981, 45, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33982, 45, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33983, 45, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33984, 46, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33985, 46, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33986, 46, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33987, 46, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33988, 46, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33989, 46, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33990, 46, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33991, 46, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33992, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33993, 1, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33994, 1, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33995, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33996, 1, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33997, 1, 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33998, 1, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (33999, 1, 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34000, 2, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34001, 2, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34002, 2, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34003, 2, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34004, 2, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34005, 2, 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34006, 2, 7, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34007, 2, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34008, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34009, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34010, 3, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34011, 3, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34012, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34013, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34014, 3, 7, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34015, 3, 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34016, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34017, 4, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34018, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34019, 4, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34020, 4, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34021, 4, 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34022, 4, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34023, 4, 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34024, 45, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34025, 45, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34026, 45, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34027, 45, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34028, 45, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34029, 45, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34030, 45, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34031, 45, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34032, 5, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34033, 5, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34034, 5, 3, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34035, 5, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34036, 5, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34037, 5, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34038, 5, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34039, 5, 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34040, 46, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34041, 46, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34042, 46, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34043, 46, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34044, 46, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34045, 46, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34046, 46, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34047, 46, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34048, 46, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34049, 46, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34050, 46, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34051, 46, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34052, 46, 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34053, 46, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34054, 46, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34055, 46, 8, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34056, 47, 1, 1, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34057, 47, 2, 0, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34058, 47, 3, 1, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34059, 47, 4, 0, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34060, 47, 5, 1, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34061, 47, 6, 0, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34062, 47, 7, 0, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34063, 47, 8, 0, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34064, 48, 1, 0, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34065, 48, 2, 1, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34066, 48, 3, 0, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34067, 48, 4, 1, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34068, 48, 5, 0, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34069, 48, 6, 1, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34070, 48, 7, 0, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
INSERT [dbo].[KullaniciEkranYetki] ([Id], [KullaniciId], [EkranId], [Yetki], [KayitTarihi], [KaydedenKullaniciId], [SilmeTarihi], [SilenKullaniciId]) VALUES (34071, 48, 8, 0, N'Oct 25 2022  4:15PM', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KullaniciEkranYetki] OFF
GO
ALTER TABLE [dbo].[KullaniciEkranYetki]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciEkranYetki_Ekran] FOREIGN KEY([EkranId])
REFERENCES [dbo].[Ekran] ([Id])
GO
ALTER TABLE [dbo].[KullaniciEkranYetki] CHECK CONSTRAINT [FK_KullaniciEkranYetki_Ekran]
GO
ALTER TABLE [dbo].[KullaniciEkranYetki]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciEkranYetki_Kullanici] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[Kullanici] ([Id])
GO
ALTER TABLE [dbo].[KullaniciEkranYetki] CHECK CONSTRAINT [FK_KullaniciEkranYetki_Kullanici]
GO
USE [master]
GO
ALTER DATABASE [Kullanici_Yetkilendirme] SET  READ_WRITE 
GO
