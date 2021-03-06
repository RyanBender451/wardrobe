USE [master]
GO
/****** Object:  Database [Outfits]    Script Date: 2/17/2017 11:53:02 AM ******/
CREATE DATABASE [Outfits]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Outfits', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Outfits.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Outfits_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Outfits_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Outfits] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Outfits].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Outfits] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Outfits] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Outfits] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Outfits] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Outfits] SET ARITHABORT OFF 
GO
ALTER DATABASE [Outfits] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Outfits] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Outfits] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Outfits] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Outfits] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Outfits] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Outfits] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Outfits] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Outfits] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Outfits] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Outfits] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Outfits] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Outfits] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Outfits] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Outfits] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Outfits] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Outfits] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Outfits] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Outfits] SET  MULTI_USER 
GO
ALTER DATABASE [Outfits] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Outfits] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Outfits] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Outfits] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Outfits] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Outfits]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 2/17/2017 11:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [varchar](100) NOT NULL,
	[AccessoryPhoto] [nvarchar](250) NOT NULL,
	[AccessoryType] [varchar](50) NOT NULL,
	[AccessoryColor] [varchar](50) NOT NULL,
	[AccessorySeason] [varchar](50) NOT NULL,
	[AccessoryOccasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 2/17/2017 11:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [varchar](100) NOT NULL,
	[BottomPhoto] [nvarchar](250) NOT NULL,
	[BottomType] [varchar](50) NOT NULL,
	[BottomColor] [varchar](50) NOT NULL,
	[BottomSeason] [varchar](50) NOT NULL,
	[BottomOccasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 2/17/2017 11:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[OutfitName] [varchar](100) NOT NULL,
	[OutfitPhoto] [nvarchar](250) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 2/17/2017 11:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [varchar](100) NOT NULL,
	[ShoePhoto] [nvarchar](250) NOT NULL,
	[ShoeType] [varchar](50) NOT NULL,
	[ShoeColor] [varchar](50) NOT NULL,
	[ShoeSeason] [varchar](50) NOT NULL,
	[ShoeOccasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 2/17/2017 11:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [varchar](100) NOT NULL,
	[TopPhoto] [nvarchar](250) NOT NULL,
	[TopType] [varchar](50) NOT NULL,
	[TopColor] [varchar](50) NOT NULL,
	[TopSeason] [varchar](50) NOT NULL,
	[TopOccasion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessories]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottoms]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoes]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Tops]
GO
USE [master]
GO
ALTER DATABASE [Outfits] SET  READ_WRITE 
GO
