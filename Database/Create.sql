USE [master]
GO
/****** Object:  Database [ProjectManagerDB]    Script Date: 3/29/2020 6:23:19 PM ******/
CREATE DATABASE [ProjectManagerDB]
GO
ALTER DATABASE [ProjectManagerDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectManagerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectManagerDB] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [ProjectManagerDB] SET ANSI_NULLS ON 
GO
ALTER DATABASE [ProjectManagerDB] SET ANSI_PADDING ON 
GO
ALTER DATABASE [ProjectManagerDB] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [ProjectManagerDB] SET ARITHABORT ON 
GO
ALTER DATABASE [ProjectManagerDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProjectManagerDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectManagerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [ProjectManagerDB] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [ProjectManagerDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [ProjectManagerDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectManagerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectManagerDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectManagerDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectManagerDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectManagerDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectManagerDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectManagerDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectManagerDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectManagerDB] SET QUERY_STORE = OFF
GO
USE [ProjectManagerDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ProjectManagerDB]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/29/2020 6:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Position] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 3/29/2020 6:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Project2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTask]    Script Date: 3/29/2020 6:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTask](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TimeToComplete] [int] NULL,
	[BeginDate] [date] NULL,
	[EndDate] [date] NULL,
	[Status] [nvarchar](50) NOT NULL,
	[ProjectId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([Id], [Lastname], [Firstname], [Patronymic], [Position]) VALUES (1, N'Goncharik', N'Yury', NULL, N'SeniorSoftwareDeveloper')
GO
INSERT [dbo].[Employee] ([Id], [Lastname], [Firstname], [Patronymic], [Position]) VALUES (2, N'Kema', N'Hooin', NULL, N'SeniorSoftwareDeveloper')
GO
INSERT [dbo].[Employee] ([Id], [Lastname], [Firstname], [Patronymic], [Position]) VALUES (1005, N'Makise', N'Kurisu', NULL, N'SeniorSoftwareDeveloper')
GO
INSERT [dbo].[Employee] ([Id], [Lastname], [Firstname], [Patronymic], [Position]) VALUES (3006, N'Doe', N'John', NULL, N'JuniorSoftwareDeveloper')
GO
INSERT [dbo].[Employee] ([Id], [Lastname], [Firstname], [Patronymic], [Position]) VALUES (3007, N'Petrov', N'Petr', N'Petrovich', N'RegularSoftwareDeveloper')
GO
INSERT [dbo].[Employee] ([Id], [Lastname], [Firstname], [Patronymic], [Position]) VALUES (3009, N'Just', N'Random', N'Guyyyy', N'SeniorSoftwareDeveloper')
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Project] ON 
GO
INSERT [dbo].[Project] ([Id], [Name], [ShortName], [Description]) VALUES (2, N'Main project', N'MP01', N'Just some project description')
GO
INSERT [dbo].[Project] ([Id], [Name], [ShortName], [Description]) VALUES (1004, N'Time Travel Machine Invention', N'ttmtd', N'No one should know that!')
GO
INSERT [dbo].[Project] ([Id], [Name], [ShortName], [Description]) VALUES (1010, N'Project 03', N'P03', NULL)
GO
INSERT [dbo].[Project] ([Id], [Name], [ShortName], [Description]) VALUES (1012, N'Project 04', N'P04', N'sss')
GO
INSERT [dbo].[Project] ([Id], [Name], [ShortName], [Description]) VALUES (1014, N'hhhh', N'hhh', N'hhh')
GO
INSERT [dbo].[Project] ([Id], [Name], [ShortName], [Description]) VALUES (1015, N'Last project', N'Last P', N'testing project id 1015')
GO
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
SET IDENTITY_INSERT [dbo].[ProjectTask] ON 
GO
INSERT [dbo].[ProjectTask] ([Id], [Name], [TimeToComplete], [BeginDate], [EndDate], [Status], [ProjectId], [EmployeeId]) VALUES (2, N'Some quick task', 2, CAST(N'2020-02-02' AS Date), CAST(N'2020-03-22' AS Date), N'InProcess', 1004, 1)
GO
INSERT [dbo].[ProjectTask] ([Id], [Name], [TimeToComplete], [BeginDate], [EndDate], [Status], [ProjectId], [EmployeeId]) VALUES (4, N'Task11', 2, CAST(N'2020-03-09' AS Date), CAST(N'2020-03-09' AS Date), N'InProcess', 1004, 1005)
GO
INSERT [dbo].[ProjectTask] ([Id], [Name], [TimeToComplete], [BeginDate], [EndDate], [Status], [ProjectId], [EmployeeId]) VALUES (13, N'Task33', 11, CAST(N'2020-03-17' AS Date), CAST(N'2020-03-19' AS Date), N'NotStarted', 1010, 2)
GO
INSERT [dbo].[ProjectTask] ([Id], [Name], [TimeToComplete], [BeginDate], [EndDate], [Status], [ProjectId], [EmployeeId]) VALUES (14, N'Task34', 33, CAST(N'2020-03-18' AS Date), CAST(N'2020-03-22' AS Date), N'NotStarted', 2, 1)
GO
INSERT [dbo].[ProjectTask] ([Id], [Name], [TimeToComplete], [BeginDate], [EndDate], [Status], [ProjectId], [EmployeeId]) VALUES (15, N'First training task', 66, CAST(N'2020-04-05' AS Date), CAST(N'2020-05-30' AS Date), N'Delayed', 1012, 2)
GO
INSERT [dbo].[ProjectTask] ([Id], [Name], [TimeToComplete], [BeginDate], [EndDate], [Status], [ProjectId], [EmployeeId]) VALUES (16, N'pttttttt', 1, CAST(N'2020-03-19' AS Date), CAST(N'2020-03-13' AS Date), N'InProcess', 2, 1)
GO
INSERT [dbo].[ProjectTask] ([Id], [Name], [TimeToComplete], [BeginDate], [EndDate], [Status], [ProjectId], [EmployeeId]) VALUES (17, N'new test task', 0, CAST(N'2020-03-19' AS Date), CAST(N'2020-03-20' AS Date), N'NotStarted', 2, 1)
GO
INSERT [dbo].[ProjectTask] ([Id], [Name], [TimeToComplete], [BeginDate], [EndDate], [Status], [ProjectId], [EmployeeId]) VALUES (18, N'test task', 2, CAST(N'2020-03-19' AS Date), CAST(N'2020-03-21' AS Date), N'NotStarted', 1015, 1005)
GO
INSERT [dbo].[ProjectTask] ([Id], [Name], [TimeToComplete], [BeginDate], [EndDate], [Status], [ProjectId], [EmployeeId]) VALUES (1024, N'q', NULL, NULL, NULL, N'NotStarted', 1015, 3009)
GO
INSERT [dbo].[ProjectTask] ([Id], [Name], [TimeToComplete], [BeginDate], [EndDate], [Status], [ProjectId], [EmployeeId]) VALUES (1025, N'Invention of D-mail', 9999, CAST(N'2020-03-11' AS Date), CAST(N'2020-03-19' AS Date), N'InProcess', 1004, 2)
GO
SET IDENTITY_INSERT [dbo].[ProjectTask] OFF
GO
ALTER TABLE [dbo].[ProjectTask]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTask_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[ProjectTask] CHECK CONSTRAINT [FK_ProjectTask_Employee]
GO
ALTER TABLE [dbo].[ProjectTask]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTask_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[ProjectTask] CHECK CONSTRAINT [FK_ProjectTask_Project]
GO
USE [master]
GO
ALTER DATABASE [ProjectManagerDB] SET  READ_WRITE 
GO
