USE [master]
GO
/****** Object:  Database [library_exp] ******/
CREATE DATABASE [library_exp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'library_exp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\library_exp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'library_exp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\library_exp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [library_exp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [library_exp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [library_exp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [library_exp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [library_exp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [library_exp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [library_exp] SET ARITHABORT OFF 
GO
ALTER DATABASE [library_exp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [library_exp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [library_exp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [library_exp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [library_exp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [library_exp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [library_exp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [library_exp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [library_exp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [library_exp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [library_exp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [library_exp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [library_exp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [library_exp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [library_exp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [library_exp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [library_exp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [library_exp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [library_exp] SET  MULTI_USER 
GO
ALTER DATABASE [library_exp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [library_exp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [library_exp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [library_exp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [library_exp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [library_exp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [library_exp] SET QUERY_STORE = OFF
GO
USE [library_exp]
GO
/****** Object:  Table [dbo].[authors] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[a_id] [int] IDENTITY(1,1) NOT NULL,
	[a_name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_authors] PRIMARY KEY CLUSTERED 
(
	[a_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[b_id] [int] IDENTITY(1,1) NOT NULL,
	[b_name] [nvarchar](150) NOT NULL,
	[b_year] [smallint] NOT NULL,
	[b_quantity] [smallint] NOT NULL,
 CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED 
(
	[b_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genres] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genres](
	[g_id] [int] IDENTITY(1,1) NOT NULL,
	[g_name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_genres] PRIMARY KEY CLUSTERED 
(
	[g_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_genres_g_name] UNIQUE NONCLUSTERED 
(
	[g_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m2m_books_authors] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m2m_books_authors](
	[b_id] [int] NOT NULL,
	[a_id] [int] NOT NULL,
 CONSTRAINT [PK_m2m_books_authors] PRIMARY KEY CLUSTERED 
(
	[b_id] ASC,
	[a_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m2m_books_genres] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m2m_books_genres](
	[b_id] [int] NOT NULL,
	[g_id] [int] NOT NULL,
 CONSTRAINT [PK_m2m_books_genres] PRIMARY KEY CLUSTERED 
(
	[b_id] ASC,
	[g_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subscribers] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subscribers](
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[s_name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_subscribers] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subscriptions] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subscriptions](
	[sb_id] [int] IDENTITY(1,1) NOT NULL,
	[sb_subscriber] [int] NOT NULL,
	[sb_book] [int] NOT NULL,
	[sb_start] [date] NOT NULL,
	[sb_finish] [date] NOT NULL,
	[sb_is_active] [char](1) NOT NULL,
 CONSTRAINT [PK_subscriptions] PRIMARY KEY CLUSTERED 
(
	[sb_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[m2m_books_authors]  WITH CHECK ADD  CONSTRAINT [FK_m2m_books_authors_authors] FOREIGN KEY([a_id])
REFERENCES [dbo].[authors] ([a_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[m2m_books_authors] CHECK CONSTRAINT [FK_m2m_books_authors_authors]
GO
ALTER TABLE [dbo].[m2m_books_authors]  WITH CHECK ADD  CONSTRAINT [FK_m2m_books_authors_books] FOREIGN KEY([b_id])
REFERENCES [dbo].[books] ([b_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[m2m_books_authors] CHECK CONSTRAINT [FK_m2m_books_authors_books]
GO
ALTER TABLE [dbo].[m2m_books_genres]  WITH CHECK ADD  CONSTRAINT [FK_m2m_books_genres_books] FOREIGN KEY([b_id])
REFERENCES [dbo].[books] ([b_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[m2m_books_genres] CHECK CONSTRAINT [FK_m2m_books_genres_books]
GO
ALTER TABLE [dbo].[m2m_books_genres]  WITH CHECK ADD  CONSTRAINT [FK_m2m_books_genres_genres] FOREIGN KEY([g_id])
REFERENCES [dbo].[genres] ([g_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[m2m_books_genres] CHECK CONSTRAINT [FK_m2m_books_genres_genres]
GO
ALTER TABLE [dbo].[subscriptions]  WITH CHECK ADD  CONSTRAINT [FK_subscriptions_books] FOREIGN KEY([sb_book])
REFERENCES [dbo].[books] ([b_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[subscriptions] CHECK CONSTRAINT [FK_subscriptions_books]
GO
ALTER TABLE [dbo].[subscriptions]  WITH CHECK ADD  CONSTRAINT [FK_subscriptions_subscribers] FOREIGN KEY([sb_subscriber])
REFERENCES [dbo].[subscribers] ([s_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[subscriptions] CHECK CONSTRAINT [FK_subscriptions_subscribers]
GO
ALTER TABLE [dbo].[subscriptions]  WITH CHECK ADD  CONSTRAINT [check_enum] CHECK  (([sb_is_active]='N' OR [sb_is_active]='Y'))
GO
ALTER TABLE [dbo].[subscriptions] CHECK CONSTRAINT [check_enum]
GO
USE [master]
GO
ALTER DATABASE [library_exp] SET  READ_WRITE 
GO
