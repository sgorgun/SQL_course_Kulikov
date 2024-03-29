USE [master]
GO
/****** Object:  Database [exploration]     ******/
CREATE DATABASE [exploration]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'exploration', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\exploration.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'exploration_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\exploration_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [exploration] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [exploration].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [exploration] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [exploration] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [exploration] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [exploration] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [exploration] SET ARITHABORT OFF 
GO
ALTER DATABASE [exploration] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [exploration] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [exploration] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [exploration] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [exploration] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [exploration] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [exploration] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [exploration] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [exploration] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [exploration] SET  DISABLE_BROKER 
GO
ALTER DATABASE [exploration] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [exploration] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [exploration] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [exploration] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [exploration] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [exploration] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [exploration] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [exploration] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [exploration] SET  MULTI_USER 
GO
ALTER DATABASE [exploration] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [exploration] SET DB_CHAINING OFF 
GO
ALTER DATABASE [exploration] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [exploration] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [exploration] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [exploration] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [exploration] SET QUERY_STORE = OFF
GO
USE [exploration]
GO
/****** Object:  Table [dbo].[cities]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cities](
	[ct_id] [int] IDENTITY(1,1) NOT NULL,
	[ct_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_cities] PRIMARY KEY CLUSTERED 
(
	[ct_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[computers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[computers](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[c_room] [int] NULL,
	[c_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_computers] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[connections]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[connections](
	[cn_from] [int] NOT NULL,
	[cn_to] [int] NOT NULL,
	[cn_cost] [money] NULL,
	[cn_bidir] [char](1) NOT NULL,
 CONSTRAINT [PK_connections] PRIMARY KEY CLUSTERED 
(
	[cn_from] ASC,
	[cn_to] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dates]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dates](
	[d] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[library_in_json]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[library_in_json](
	[lij_id] [int] IDENTITY(1,1) NOT NULL,
	[lij_book] [nvarchar](150) NOT NULL,
	[lij_author] [nvarchar](2000) NOT NULL,
	[lij_genre] [nvarchar](2000) NOT NULL,
 CONSTRAINT [PK_library_in_json] PRIMARY KEY CLUSTERED 
(
	[lij_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[overflow]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[overflow](
	[x] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rooms]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[r_id] [int] IDENTITY(1,1) NOT NULL,
	[r_name] [nvarchar](50) NOT NULL,
	[r_space] [tinyint] NOT NULL,
 CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopping]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopping](
	[sh_id] [int] IDENTITY(1,1) NOT NULL,
	[sh_transaction] [int] NOT NULL,
	[sh_category] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_shopping] PRIMARY KEY CLUSTERED 
(
	[sh_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_pages]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_pages](
	[sp_id] [int] IDENTITY(1,1) NOT NULL,
	[sp_parent] [int] NULL,
	[sp_name] [nvarchar](200) NULL,
 CONSTRAINT [PK_site_pages] PRIMARY KEY CLUSTERED 
(
	[sp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table_with_nulls]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_with_nulls](
	[x] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test_counts]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_counts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fni] [int] NULL,
	[fwi] [int] NULL,
	[fni_nn] [int] NOT NULL,
	[fwi_nn] [int] NOT NULL,
 CONSTRAINT [PK_test_counts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cities] ON 

INSERT [dbo].[cities] ([ct_id], [ct_name]) VALUES (1, N'London')
INSERT [dbo].[cities] ([ct_id], [ct_name]) VALUES (2, N'Paris')
INSERT [dbo].[cities] ([ct_id], [ct_name]) VALUES (3, N'Madrid')
INSERT [dbo].[cities] ([ct_id], [ct_name]) VALUES (4, N'Tokyo')
INSERT [dbo].[cities] ([ct_id], [ct_name]) VALUES (5, N'Moscow')
INSERT [dbo].[cities] ([ct_id], [ct_name]) VALUES (6, N'Kiev')
INSERT [dbo].[cities] ([ct_id], [ct_name]) VALUES (7, N'Minsk')
INSERT [dbo].[cities] ([ct_id], [ct_name]) VALUES (8, N'Riga')
INSERT [dbo].[cities] ([ct_id], [ct_name]) VALUES (9, N'Warsaw')
INSERT [dbo].[cities] ([ct_id], [ct_name]) VALUES (10, N'Berlin')
SET IDENTITY_INSERT [dbo].[cities] OFF
GO
SET IDENTITY_INSERT [dbo].[computers] ON 

INSERT [dbo].[computers] ([c_id], [c_room], [c_name]) VALUES (1, 1, N'The computer A in the room 1')
INSERT [dbo].[computers] ([c_id], [c_room], [c_name]) VALUES (2, 1, N'The computer B in the room 1')
INSERT [dbo].[computers] ([c_id], [c_room], [c_name]) VALUES (3, 2, N'The computer A in the room 2')
INSERT [dbo].[computers] ([c_id], [c_room], [c_name]) VALUES (4, 2, N'The computer B in the room 2')
INSERT [dbo].[computers] ([c_id], [c_room], [c_name]) VALUES (5, 2, N'The computer C in the room 2')
INSERT [dbo].[computers] ([c_id], [c_room], [c_name]) VALUES (6, NULL, N'Unassigned computer A')
INSERT [dbo].[computers] ([c_id], [c_room], [c_name]) VALUES (7, NULL, N'Unassigned computer B')
INSERT [dbo].[computers] ([c_id], [c_room], [c_name]) VALUES (8, NULL, N'Unassigned computer C')
SET IDENTITY_INSERT [dbo].[computers] OFF
GO
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (1, 5, 10.0000, N'Y')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (1, 7, 20.0000, N'N')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (2, 6, 50.0000, N'N')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (3, 6, 5.0000, N'N')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (4, 8, 35.0000, N'N')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (6, 8, 40.0000, N'Y')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (7, 1, 25.0000, N'N')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (7, 2, 15.0000, N'Y')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (7, 3, 5.0000, N'N')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (8, 4, 30.0000, N'N')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (8, 9, 15.0000, N'Y')
INSERT [dbo].[connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES (9, 1, 20.0000, N'N')
GO
SET IDENTITY_INSERT [dbo].[library_in_json] ON 

INSERT [dbo].[library_in_json] ([lij_id], [lij_book], [lij_author], [lij_genre]) VALUES (1, N'Eugene Onegin', N'[{"id":7,"name":"Alexander Pushkin"}]', N'[{"id":1,"name":"Poetry"},{"id":5,"name":"Classic"}]')
INSERT [dbo].[library_in_json] ([lij_id], [lij_book], [lij_author], [lij_genre]) VALUES (2, N'The Art of Computer Programming', N'[{"id":1,"name":"Donald Knuth"}]', N'[{"id":2,"name":"Programming"},{"id":5,"name":"Classic"}]')
INSERT [dbo].[library_in_json] ([lij_id], [lij_book], [lij_author], [lij_genre]) VALUES (3, N'Course of Theoretical Physics', N'[{"id":4,"name":"Lev Landau"},{"id":5,"name":"Evgeny Lifshitz"}]', N'[{"id":5,"name":"Classic"}]')
INSERT [dbo].[library_in_json] ([lij_id], [lij_book], [lij_author], [lij_genre]) VALUES (4, N'Foundation and Empire', N'[{"id":2,"name":"Isaac Asimov"}]', N'[{"id":6,"name":"Science Fiction"}]')
INSERT [dbo].[library_in_json] ([lij_id], [lij_book], [lij_author], [lij_genre]) VALUES (5, N'Programming Psychology', N'[{"id":3,"name":"Dale Carnegie"},{"id":6,"name":"Bjarne Stroustrup"}]', N'[{"id":2,"name":"Programming"},{"id":3,"name":"Psychology"}]')
INSERT [dbo].[library_in_json] ([lij_id], [lij_book], [lij_author], [lij_genre]) VALUES (6, N'The Fisherman and the Golden Fish', N'[{"id":7,"name":"Alexander Pushkin"}]', N'[{"id":1,"name":"Poetry"},{"id":5,"name":"Classic"}]')
INSERT [dbo].[library_in_json] ([lij_id], [lij_book], [lij_author], [lij_genre]) VALUES (7, N'The C++ Programming Language', N'[{"id":6,"name":"Bjarne Stroustrup"}]', N'[{"id":2,"name":"Programming"}]')
SET IDENTITY_INSERT [dbo].[library_in_json] OFF
GO
SET IDENTITY_INSERT [dbo].[rooms] ON 

INSERT [dbo].[rooms] ([r_id], [r_name], [r_space]) VALUES (1, N'A room with two computers', 5)
INSERT [dbo].[rooms] ([r_id], [r_name], [r_space]) VALUES (2, N'A room with three computers', 5)
INSERT [dbo].[rooms] ([r_id], [r_name], [r_space]) VALUES (3, N'An empty room 1', 2)
INSERT [dbo].[rooms] ([r_id], [r_name], [r_space]) VALUES (4, N'An empty room 2', 2)
INSERT [dbo].[rooms] ([r_id], [r_name], [r_space]) VALUES (5, N'An empty room 3', 2)
SET IDENTITY_INSERT [dbo].[rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[shopping] ON 

INSERT [dbo].[shopping] ([sh_id], [sh_transaction], [sh_category]) VALUES (1, 1, N'Bag')
INSERT [dbo].[shopping] ([sh_id], [sh_transaction], [sh_category]) VALUES (2, 1, N'Dress')
INSERT [dbo].[shopping] ([sh_id], [sh_transaction], [sh_category]) VALUES (3, 1, N'Bag')
INSERT [dbo].[shopping] ([sh_id], [sh_transaction], [sh_category]) VALUES (4, 2, N'Bag')
INSERT [dbo].[shopping] ([sh_id], [sh_transaction], [sh_category]) VALUES (5, 2, N'Skirt')
INSERT [dbo].[shopping] ([sh_id], [sh_transaction], [sh_category]) VALUES (6, 3, N'Dress')
INSERT [dbo].[shopping] ([sh_id], [sh_transaction], [sh_category]) VALUES (7, 3, N'Skirt')
INSERT [dbo].[shopping] ([sh_id], [sh_transaction], [sh_category]) VALUES (8, 3, N'Shoes')
INSERT [dbo].[shopping] ([sh_id], [sh_transaction], [sh_category]) VALUES (9, 3, N'Hat')
INSERT [dbo].[shopping] ([sh_id], [sh_transaction], [sh_category]) VALUES (10, 4, N'Bag')
SET IDENTITY_INSERT [dbo].[shopping] OFF
GO
SET IDENTITY_INSERT [dbo].[site_pages] ON 

INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (1, NULL, N'Main')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (2, 1, N'For subscribers')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (3, 1, N'For sponsors')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (4, 1, N'For advertisers')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (5, 2, N'News')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (6, 2, N'Statistics')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (7, 3, N'Offers')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (8, 3, N'Success stories')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (9, 4, N'Events')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (10, 1, N'Contacts')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (11, 3, N'Documents')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (12, 6, N'Current')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (13, 6, N'Archive')
INSERT [dbo].[site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES (14, 6, N'Non-official')
SET IDENTITY_INSERT [dbo].[site_pages] OFF
GO
/****** Object:  Index [idx_d]     ******/
CREATE NONCLUSTERED INDEX [idx_d] ON [dbo].[dates]
(
	[d] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_fwi]     ******/
CREATE NONCLUSTERED INDEX [idx_fwi] ON [dbo].[test_counts]
(
	[fwi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_fwi_nn]     ******/
CREATE NONCLUSTERED INDEX [idx_fwi_nn] ON [dbo].[test_counts]
(
	[fwi_nn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[computers]  WITH CHECK ADD  CONSTRAINT [FK_computers_rooms] FOREIGN KEY([c_room])
REFERENCES [dbo].[rooms] ([r_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[computers] CHECK CONSTRAINT [FK_computers_rooms]
GO
ALTER TABLE [dbo].[connections]  WITH CHECK ADD  CONSTRAINT [FK_connections_cities1] FOREIGN KEY([cn_from])
REFERENCES [dbo].[cities] ([ct_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[connections] CHECK CONSTRAINT [FK_connections_cities1]
GO
ALTER TABLE [dbo].[connections]  WITH CHECK ADD  CONSTRAINT [FK_connections_cities2] FOREIGN KEY([cn_to])
REFERENCES [dbo].[cities] ([ct_id])
GO
ALTER TABLE [dbo].[connections] CHECK CONSTRAINT [FK_connections_cities2]
GO
ALTER TABLE [dbo].[site_pages]  WITH CHECK ADD  CONSTRAINT [FK_site_pages_site_pages] FOREIGN KEY([sp_parent])
REFERENCES [dbo].[site_pages] ([sp_id])
GO
ALTER TABLE [dbo].[site_pages] CHECK CONSTRAINT [FK_site_pages_site_pages]
GO
ALTER TABLE [dbo].[connections]  WITH CHECK ADD  CONSTRAINT [CHK_bidir] CHECK  (([cn_bidir]='Y' OR [cn_bidir]='N'))
GO
ALTER TABLE [dbo].[connections] CHECK CONSTRAINT [CHK_bidir]
GO
ALTER TABLE [dbo].[library_in_json]  WITH CHECK ADD  CONSTRAINT [lij_author_is_JSON] CHECK  ((isjson([lij_author])=(1)))
GO
ALTER TABLE [dbo].[library_in_json] CHECK CONSTRAINT [lij_author_is_JSON]
GO
ALTER TABLE [dbo].[library_in_json]  WITH CHECK ADD  CONSTRAINT [lij_genre_is_JSON] CHECK  ((isjson([lij_genre])=(1)))
GO
ALTER TABLE [dbo].[library_in_json] CHECK CONSTRAINT [lij_genre_is_JSON]
GO
USE [master]
GO
ALTER DATABASE [exploration] SET  READ_WRITE 
GO
