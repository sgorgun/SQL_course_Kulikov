USE [master]
GO
/****** Object:  Database [library] ******/
CREATE DATABASE [library]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'library', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\library.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'library_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\library_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [library] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [library].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [library] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [library] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [library] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [library] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [library] SET ARITHABORT OFF 
GO
ALTER DATABASE [library] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [library] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [library] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [library] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [library] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [library] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [library] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [library] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [library] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [library] SET  DISABLE_BROKER 
GO
ALTER DATABASE [library] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [library] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [library] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [library] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [library] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [library] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [library] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [library] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [library] SET  MULTI_USER 
GO
ALTER DATABASE [library] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [library] SET DB_CHAINING OFF 
GO
ALTER DATABASE [library] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [library] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [library] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [library] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [library] SET QUERY_STORE = OFF
GO
USE [library]
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
SET IDENTITY_INSERT [dbo].[authors] ON 

INSERT [dbo].[authors] ([a_id], [a_name]) VALUES (1, N'Donald Knuth')
INSERT [dbo].[authors] ([a_id], [a_name]) VALUES (2, N'Isaac Asimov')
INSERT [dbo].[authors] ([a_id], [a_name]) VALUES (3, N'Dale Carnegie')
INSERT [dbo].[authors] ([a_id], [a_name]) VALUES (4, N'Lev Landau')
INSERT [dbo].[authors] ([a_id], [a_name]) VALUES (5, N'Evgeny Lifshitz')
INSERT [dbo].[authors] ([a_id], [a_name]) VALUES (6, N'Bjarne Stroustrup')
INSERT [dbo].[authors] ([a_id], [a_name]) VALUES (7, N'Alexander Pushkin')
SET IDENTITY_INSERT [dbo].[authors] OFF
GO
SET IDENTITY_INSERT [dbo].[books] ON 

INSERT [dbo].[books] ([b_id], [b_name], [b_year], [b_quantity]) VALUES (1, N'Eugene Onegin', 1985, 2)
INSERT [dbo].[books] ([b_id], [b_name], [b_year], [b_quantity]) VALUES (2, N'The Fisherman and the Golden Fish', 1990, 3)
INSERT [dbo].[books] ([b_id], [b_name], [b_year], [b_quantity]) VALUES (3, N'Foundation and Empire', 2000, 5)
INSERT [dbo].[books] ([b_id], [b_name], [b_year], [b_quantity]) VALUES (4, N'Programming Psychology', 1998, 1)
INSERT [dbo].[books] ([b_id], [b_name], [b_year], [b_quantity]) VALUES (5, N'The C++ Programming Language', 1996, 3)
INSERT [dbo].[books] ([b_id], [b_name], [b_year], [b_quantity]) VALUES (6, N'Course of Theoretical Physics', 1981, 12)
INSERT [dbo].[books] ([b_id], [b_name], [b_year], [b_quantity]) VALUES (7, N'The Art of Computer Programming', 1993, 7)
SET IDENTITY_INSERT [dbo].[books] OFF
GO
SET IDENTITY_INSERT [dbo].[genres] ON 

INSERT [dbo].[genres] ([g_id], [g_name]) VALUES (5, N'Classic')
INSERT [dbo].[genres] ([g_id], [g_name]) VALUES (4, N'Science')
INSERT [dbo].[genres] ([g_id], [g_name]) VALUES (1, N'Poetry')
INSERT [dbo].[genres] ([g_id], [g_name]) VALUES (2, N'Programming')
INSERT [dbo].[genres] ([g_id], [g_name]) VALUES (3, N'Psychology')
INSERT [dbo].[genres] ([g_id], [g_name]) VALUES (6, N'Science Fiction')
SET IDENTITY_INSERT [dbo].[genres] OFF
GO
INSERT [dbo].[m2m_books_authors] ([b_id], [a_id]) VALUES (1, 7)
INSERT [dbo].[m2m_books_authors] ([b_id], [a_id]) VALUES (2, 7)
INSERT [dbo].[m2m_books_authors] ([b_id], [a_id]) VALUES (3, 2)
INSERT [dbo].[m2m_books_authors] ([b_id], [a_id]) VALUES (4, 3)
INSERT [dbo].[m2m_books_authors] ([b_id], [a_id]) VALUES (4, 6)
INSERT [dbo].[m2m_books_authors] ([b_id], [a_id]) VALUES (5, 6)
INSERT [dbo].[m2m_books_authors] ([b_id], [a_id]) VALUES (6, 4)
INSERT [dbo].[m2m_books_authors] ([b_id], [a_id]) VALUES (6, 5)
INSERT [dbo].[m2m_books_authors] ([b_id], [a_id]) VALUES (7, 1)
GO
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (1, 1)
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (1, 5)
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (2, 1)
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (2, 5)
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (3, 6)
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (4, 2)
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (4, 3)
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (5, 2)
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (6, 5)
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (7, 2)
INSERT [dbo].[m2m_books_genres] ([b_id], [g_id]) VALUES (7, 5)
GO
SET IDENTITY_INSERT [dbo].[subscribers] ON 

INSERT [dbo].[subscribers] ([s_id], [s_name]) VALUES (1, N'Ivanov I.I.')
INSERT [dbo].[subscribers] ([s_id], [s_name]) VALUES (2, N'Petrov P.P.')
INSERT [dbo].[subscribers] ([s_id], [s_name]) VALUES (3, N'Sidorov S.S.')
INSERT [dbo].[subscribers] ([s_id], [s_name]) VALUES (4, N'Sidorov S.S.')
SET IDENTITY_INSERT [dbo].[subscribers] OFF
GO
SET IDENTITY_INSERT [dbo].[subscriptions] ON 

INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (2, 1, 1, CAST(N'2011-01-12' AS Date), CAST(N'2011-02-12' AS Date), N'N')
INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (3, 3, 3, CAST(N'2012-05-17' AS Date), CAST(N'2012-07-17' AS Date), N'Y')
INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (42, 1, 2, CAST(N'2012-06-11' AS Date), CAST(N'2012-08-11' AS Date), N'N')
INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (57, 4, 5, CAST(N'2012-06-11' AS Date), CAST(N'2012-08-11' AS Date), N'N')
INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (61, 1, 7, CAST(N'2014-08-03' AS Date), CAST(N'2014-10-03' AS Date), N'N')
INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (62, 3, 5, CAST(N'2014-08-03' AS Date), CAST(N'2014-10-03' AS Date), N'Y')
INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (86, 3, 1, CAST(N'2014-08-03' AS Date), CAST(N'2014-09-03' AS Date), N'Y')
INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (91, 4, 1, CAST(N'2015-10-07' AS Date), CAST(N'2015-03-07' AS Date), N'Y')
INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (95, 1, 4, CAST(N'2015-10-07' AS Date), CAST(N'2015-11-07' AS Date), N'N')
INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (99, 4, 4, CAST(N'2015-10-08' AS Date), CAST(N'2025-11-08' AS Date), N'Y')
INSERT [dbo].[subscriptions] ([sb_id], [sb_subscriber], [sb_book], [sb_start], [sb_finish], [sb_is_active]) VALUES (100, 1, 3, CAST(N'2011-01-12' AS Date), CAST(N'2011-02-12' AS Date), N'N')
SET IDENTITY_INSERT [dbo].[subscriptions] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_genres_g_name] ******/
ALTER TABLE [dbo].[genres] ADD  CONSTRAINT [UQ_genres_g_name] UNIQUE NONCLUSTERED 
(
	[g_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER DATABASE [library] SET  READ_WRITE 
GO
