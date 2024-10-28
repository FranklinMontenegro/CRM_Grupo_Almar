USE [master]
GO
/****** Object:  Database [Db_GrupoAlmar_CRM]    Script Date: 28/10/2024 7:06:01 ******/
CREATE DATABASE [Db_GrupoAlmar_CRM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db_GrupoAlmar_CRM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Db_GrupoAlmar_CRM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Db_GrupoAlmar_CRM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Db_GrupoAlmar_CRM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Db_GrupoAlmar_CRM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET ARITHABORT OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET RECOVERY FULL 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET  MULTI_USER 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET QUERY_STORE = OFF
GO
USE [Db_GrupoAlmar_CRM]
GO
/****** Object:  Table [dbo].[tbactividad]    Script Date: 28/10/2024 7:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbactividad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProspecto] [int] NULL,
	[Descripcion] [varchar](50) NULL,
	[Fecha] [datetime] NULL,
	[IdTipo] [int] NULL,
	[Calificacion] [int] NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
	[Estado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbprospecto]    Script Date: 28/10/2024 7:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbprospecto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identificacion] [varchar](20) NULL,
	[Nombres] [varchar](100) NULL,
	[Celular] [varchar](20) NULL,
	[Correo] [varchar](50) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
	[Estado] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbtipoActividad]    Script Date: 28/10/2024 7:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbtipoActividad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[FechaCreacion] [datetime] NULL,
	[UsuarioCreacion] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [varchar](50) NULL,
	[Estado] [char](1) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Db_GrupoAlmar_CRM] SET  READ_WRITE 
GO
