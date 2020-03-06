USE [PromantusDB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Login]    Script Date: 3/2/2020 5:22:01 PM ******/
DROP PROCEDURE [dbo].[Sp_Login]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [FK_UserRoleMapping_Users]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [FK_UserRoleMapping_Role]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__DeletedBy__46E78A0C]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__DeletedOn__45F365D3]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__IsDeleted__44FF419A]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__ModifiedB__440B1D61]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__ModifiedO__4316F928]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__CreatedBy__4222D4EF]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__CreatedOn__412EB0B6]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_Id]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Delet__4F7CD00D]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Delet__4E88ABD4]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__IsDel__4D94879B]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Modif__4CA06362]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Modif__4BAC3F29]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Creat__4AB81AF0]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Creat__49C3F6B7]
GO
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF__Role__DeletedBy__3E52440B]
GO
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF__Role__DeletedOn__3D5E1FD2]
GO
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF__Role__IsDeleted__3C69FB99]
GO
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF__Role__ModifiedBy__3B75D760]
GO
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF__Role__ModifiedOn__3A81B327]
GO
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF__Role__CreatedBy__398D8EEE]
GO
ALTER TABLE [dbo].[Role] DROP CONSTRAINT [DF__Role__CreatedOn__38996AB5]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/2/2020 5:22:01 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserRoleMapping]    Script Date: 3/2/2020 5:22:01 PM ******/
DROP TABLE [dbo].[UserRoleMapping]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/2/2020 5:22:01 PM ******/
DROP TABLE [dbo].[Role]
GO
USE [master]
GO
/****** Object:  Database [PromantusDB]    Script Date: 3/2/2020 5:22:01 PM ******/
DROP DATABASE [PromantusDB]
GO
/****** Object:  Database [PromantusDB]    Script Date: 3/2/2020 5:22:01 PM ******/
CREATE DATABASE [PromantusDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PromantusDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PromantusDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PromantusDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PromantusDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PromantusDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PromantusDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PromantusDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PromantusDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PromantusDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PromantusDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PromantusDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PromantusDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PromantusDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PromantusDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PromantusDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PromantusDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PromantusDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PromantusDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PromantusDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PromantusDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PromantusDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PromantusDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PromantusDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PromantusDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PromantusDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PromantusDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PromantusDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PromantusDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PromantusDB] SET RECOVERY FULL 
GO
ALTER DATABASE [PromantusDB] SET  MULTI_USER 
GO
ALTER DATABASE [PromantusDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PromantusDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PromantusDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PromantusDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PromantusDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PromantusDB', N'ON'
GO
ALTER DATABASE [PromantusDB] SET QUERY_STORE = OFF
GO
USE [PromantusDB]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/2/2020 5:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime] NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoleMapping]    Script Date: 3/2/2020 5:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[RoleID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime] NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserRoleMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/2/2020 5:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[EmpID] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime] NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([Id], [RoleName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (1, N'Admin', CAST(N'2020-03-02T17:15:43.383' AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2020-03-02T17:15:43.383' AS DateTime), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'2020-03-02T17:15:43.383' AS DateTime), N'00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[Role] ([Id], [RoleName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (2, N'Employee', CAST(N'2020-03-02T17:15:54.823' AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2020-03-02T17:15:54.823' AS DateTime), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'2020-03-02T17:15:54.823' AS DateTime), N'00000000-0000-0000-0000-000000000000')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoleMapping] ON 
GO
INSERT [dbo].[UserRoleMapping] ([Id], [UserID], [RoleID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (1, N'81121c5e-8abe-4fc5-b602-0ef096be44fa', 1, CAST(N'2020-03-02T17:21:13.110' AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2020-03-02T17:21:13.110' AS DateTime), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'2020-03-02T17:21:13.110' AS DateTime), N'00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[UserRoleMapping] ([Id], [UserID], [RoleID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (2, N'81121c5e-8abe-4fc5-b602-0ef096be44fa', 2, CAST(N'2020-03-02T17:21:13.110' AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2020-03-02T17:21:13.110' AS DateTime), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'2020-03-02T17:21:13.110' AS DateTime), N'00000000-0000-0000-0000-000000000000')
GO
SET IDENTITY_INSERT [dbo].[UserRoleMapping] OFF
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [EmpID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (N'81121c5e-8abe-4fc5-b602-0ef096be44fa', N'Admin', N'admin', N'00000000-0000-0000-0000-000000000000', CAST(N'2020-03-02T17:19:41.520' AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2020-03-02T17:19:41.520' AS DateTime), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'2020-03-02T17:19:41.520' AS DateTime), N'00000000-0000-0000-0000-000000000000')
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[UserRoleMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserRoleMapping] ADD  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[UserRoleMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[UserRoleMapping] ADD  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[UserRoleMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserRoleMapping] ADD  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[UserRoleMapping] ADD  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[UserRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleMapping_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRoleMapping] CHECK CONSTRAINT [FK_UserRoleMapping_Role]
GO
ALTER TABLE [dbo].[UserRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleMapping_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoleMapping] CHECK CONSTRAINT [FK_UserRoleMapping_Users]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Login]    Script Date: 3/2/2020 5:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Sp_Login] 
	@Type varchar(50),
	@username varchar(50),
	@password varchar(50)=NULL,
	@RoleID int=NULL 
AS
BEGIN
	IF @Type='LoginValidate'
		Begin
		IF @RoleID=0
		BEGIN
		Select  DISTINCT U.id,U.UserName,UR.RoleID
					from users U
					JOIN UserRoleMapping UR ON UR.USERID=U.ID
					JOIN Roles R ON UR.RoleID=R.ID
					where UserName=@username AND [Password]=@password --AND UR.RoleID=@RoleID
		END
		ELSE
		BEGIN
		Select  DISTINCT U.id,U.UserName,UR.RoleID
					from users U
					JOIN UserRoleMapping UR ON UR.USERID=U.ID
					JOIN Roles R ON UR.RoleID=R.ID
					where UserName=@username AND [Password]=@password AND UR.RoleID=@RoleID
		END
		

		--	DECLARE @Rol int;
		--	SET @Rol=CONVERT(INT, @RoleID)
		--	IF @Rol=0
		--		BEGIN
		--		Select  DISTINCT U.id,U.UserName,
		--			[RoleID] = STUFF((    SELECT  DISTINCT ',' + R.RoleName
		--			FROM    Roles R
		--			JOIN UserRoleMapping URM ON URM.UserId=U.Id       
		--			WHERE   R.Id = URM.RoleId
		--			FOR XML PATH('')),1,1,'') 				
		--			from users U
		--			where UserName=@username AND [Password]=@password
		--		END
		--ELSE
		--		BEGIN
		--		Select  DISTINCT U.id,U.UserName,UR.RoleID
		--			from users U
		--			JOIN UserRoleMapping UR ON UR.USERID=U.ID
		--			JOIN Roles R ON UR.RoleID=R.ID
		--			where UserName=@username AND [Password]=@password AND UR.RoleID=@RoleID
		--		END

			

			
		END

		IF @Type='RoleByUser'
		BEGIN
			select R.Id,R.RoleName from UserRoleMapping UR
			JOIN Roles R ON UR.RoleId=R.Id
			JOIN Users U ON U.Id=UR.UserID
			WHERE U.Username=@username ORDER BY R.Id
		END
	
END
GO
USE [master]
GO
ALTER DATABASE [PromantusDB] SET  READ_WRITE 
GO
