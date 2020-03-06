USE [PromantusDB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Login]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP PROCEDURE [dbo].[Sp_Login]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [FK_UserRoleMapping_Users]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [FK_UserRoleMapping_Role]
GO
ALTER TABLE [dbo].[State] DROP CONSTRAINT [FK_State_Country]
GO
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT [FK_Skill_Technology]
GO
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [FK_Location_City]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_PAddress]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_LAddress]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Gender]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_EmployeeType]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Company]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [FK_Address_Location]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__DeletedBy__4F7CD00D]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__DeletedOn__4E88ABD4]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__IsDeleted__4D94879B]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__ModifiedB__4CA06362]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__ModifiedO__4BAC3F29]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__CreatedBy__4AB81AF0]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__CreatedOn__49C3F6B7]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_Id]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Delet__47DBAE45]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Delet__46E78A0C]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__IsDel__45F365D3]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Modif__44FF419A]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Modif__440B1D61]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Creat__4316F928]
GO
ALTER TABLE [dbo].[UserRoleMapping] DROP CONSTRAINT [DF__UserRoleM__Creat__4222D4EF]
GO
ALTER TABLE [dbo].[Technology] DROP CONSTRAINT [DF__Technology__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Technology] DROP CONSTRAINT [DF__Technology__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Technology] DROP CONSTRAINT [DF__Technology__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Technology] DROP CONSTRAINT [DF__Technology__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Technology] DROP CONSTRAINT [DF__Technology__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Technology] DROP CONSTRAINT [DF__Technology__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Technology] DROP CONSTRAINT [DF__Technology__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[State] DROP CONSTRAINT [DF__State__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[State] DROP CONSTRAINT [DF__State__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[State] DROP CONSTRAINT [DF__State__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[State] DROP CONSTRAINT [DF__State__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[State] DROP CONSTRAINT [DF__State__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[State] DROP CONSTRAINT [DF__State__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[State] DROP CONSTRAINT [DF__State__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT [DF__Skill__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT [DF__Skill__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT [DF__Skill__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT [DF__Skill__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT [DF__Skill__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT [DF__Skill__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Skill] DROP CONSTRAINT [DF__Skill__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[Position] DROP CONSTRAINT [DF__position__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Position] DROP CONSTRAINT [DF__position__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Position] DROP CONSTRAINT [DF__position__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Position] DROP CONSTRAINT [DF__position__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Position] DROP CONSTRAINT [DF__position__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Position] DROP CONSTRAINT [DF__position__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Position] DROP CONSTRAINT [DF__position__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF__Location__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF__Location__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF__Location__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF__Location__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF__Location__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF__Location__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Location] DROP CONSTRAINT [DF__Location__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[Gender] DROP CONSTRAINT [DF__Gender__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Gender] DROP CONSTRAINT [DF__Gender__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Gender] DROP CONSTRAINT [DF__Gender__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Gender] DROP CONSTRAINT [DF__Gender__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Gender] DROP CONSTRAINT [DF__Gender__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Gender] DROP CONSTRAINT [DF__Gender__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Gender] DROP CONSTRAINT [DF__Gender__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[EmployeeType] DROP CONSTRAINT [DF__EmployeeType__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[EmployeeType] DROP CONSTRAINT [DF__EmployeeType__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[EmployeeType] DROP CONSTRAINT [DF__EmployeeType__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[EmployeeType] DROP CONSTRAINT [DF__EmployeeType__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[EmployeeType] DROP CONSTRAINT [DF__EmployeeType__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[EmployeeType] DROP CONSTRAINT [DF__EmployeeType__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[EmployeeType] DROP CONSTRAINT [DF__EmployeeType__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF__Employee__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF__Employee__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF__Employee__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF__Employee__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF__Employee__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF__Employee__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [DF__Employee__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF__Department__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF__Department__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF__Department__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF__Department__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF__Department__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF__Department__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Department] DROP CONSTRAINT [DF__Department__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF__Country__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF__Country__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF__Country__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF__Country__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF__Country__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF__Country__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF__Country__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[Company] DROP CONSTRAINT [DF__Company__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Company] DROP CONSTRAINT [DF__Company__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Company] DROP CONSTRAINT [DF__Company__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Company] DROP CONSTRAINT [DF__Company__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Company] DROP CONSTRAINT [DF__Company__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Company] DROP CONSTRAINT [DF__Company__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Company] DROP CONSTRAINT [DF__Company__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [DF__City__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [DF__City__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [DF__City__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [DF__City__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [DF__City__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [DF__City__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [DF__City__CreatedOn__3B75D760]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [DF__Address__DeletedBy__412EB0B6]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [DF__Address__DeletedOn__403A8C7D]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [DF__Address__IsDeleted__3F466844]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [DF__Address__ModifiedB__3E52440B]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [DF__Address__ModifiedO__3D5E1FD2]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [DF__Address__CreatedBy__3C69FB99]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [DF__Address__CreatedOn__3B75D760]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserRoleMapping]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[UserRoleMapping]
GO
/****** Object:  Table [dbo].[Technology]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Technology]
GO
/****** Object:  Table [dbo].[State]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[State]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Skill]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Position]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Location]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Gender]
GO
/****** Object:  Table [dbo].[EmployeeType]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[EmployeeType]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Department]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Company]
GO
/****** Object:  Table [dbo].[City]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[City]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP TABLE [dbo].[Address]
GO
/****** Object:  User [Manoj]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP USER [Manoj]
GO
USE [master]
GO
/****** Object:  Database [PromantusDB]    Script Date: 3/6/2020 4:25:28 PM ******/
DROP DATABASE [PromantusDB]
GO
/****** Object:  Database [PromantusDB]    Script Date: 3/6/2020 4:25:28 PM ******/
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
/****** Object:  User [Manoj]    Script Date: 3/6/2020 4:25:28 PM ******/
CREATE USER [Manoj] FOR LOGIN [Manoj] WITH DEFAULT_SCHEMA=[db_owner]
GO
ALTER ROLE [db_owner] ADD MEMBER [Manoj]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [uniqueidentifier] NOT NULL,
	[Address] [nchar](10) NOT NULL,
	[LocationID] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[StateID] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[LocationId] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [uniqueidentifier] NOT NULL,
	[EmployeeID] [nchar](10) NOT NULL,
	[Employee] [nvarchar](50) NOT NULL,
	[GivenName] [nvarchar](50) NOT NULL,
	[SurName] [nvarchar](50) NULL,
	[Mobile1] [numeric](18, 0) NOT NULL,
	[Mobile2] [numeric](18, 0) NULL,
	[DOB] [datetime2](7) NOT NULL,
	[DOJ] [datetime2](7) NOT NULL,
	[GenderID] [int] NOT NULL,
	[PositionID] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[SkillSetIDs] [nvarchar](50) NOT NULL,
	[LocalAddressID] [uniqueidentifier] NOT NULL,
	[PermanentAddressID] [uniqueidentifier] NOT NULL,
	[EmployeeTypeId] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeType]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeType] [nvarchar](50) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_EmployeeType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](50) NULL,
	[CityID] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[positionName] [nvarchar](50) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](50) NULL,
	[TechnologyID] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NULL,
	[CountryID] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technology]    Script Date: 3/6/2020 4:25:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TechnologyName] [nvarchar](50) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NOT NULL,
	[DeletedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Technology] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoleMapping]    Script Date: 3/6/2020 4:25:28 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 3/6/2020 4:25:28 PM ******/
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
SET IDENTITY_INSERT [dbo].[Country] ON 
GO
INSERT [dbo].[Country] ([Id], [CountryName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (1, N'India', CAST(N'2020-03-06T06:55:40.0499590' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[Country] ([Id], [CountryName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (2, N'Test', CAST(N'2020-03-06T06:55:52.2010049' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'2020-03-06T06:56:00.1731067' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', 1, CAST(N'2020-03-06T06:56:04.8381300' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa')
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([Id], [DepartmentName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (1, N'.Net', CAST(N'2020-03-05T13:16:32.8178011' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'2020-03-05T13:57:16.8812963' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[Department] ([Id], [DepartmentName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (2, N'WorkDay', CAST(N'2020-03-05T13:57:39.2382605' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[Department] ([Id], [DepartmentName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (3, N'Test', CAST(N'2020-03-05T13:57:51.1862919' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 1, CAST(N'2020-03-05T14:02:22.9554556' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa')
GO
INSERT [dbo].[Department] ([Id], [DepartmentName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (4, N'Testsdsd', CAST(N'2020-03-06T06:41:41.0239001' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'2020-03-06T06:41:47.6271761' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', 1, CAST(N'2020-03-06T06:42:23.2508596' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa')
GO
INSERT [dbo].[Department] ([Id], [DepartmentName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (5, N'xzcvvzxvzxvxzcvc', CAST(N'2020-03-06T06:43:36.0205673' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'2020-03-06T06:43:42.0691869' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', 1, CAST(N'2020-03-06T06:43:48.0334087' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa')
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 
GO
INSERT [dbo].[Position] ([Id], [positionName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (1, N'asda', CAST(N'2020-03-04T07:59:19.1901715' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 1, CAST(N'2020-03-04T09:31:53.3679168' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa')
GO
INSERT [dbo].[Position] ([Id], [positionName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (2, N'Senior Developer', CAST(N'2020-03-04T08:25:07.1721841' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[Position] ([Id], [positionName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (3, N'asczx', CAST(N'2020-03-05T12:57:15.0939025' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 1, CAST(N'2020-03-05T12:59:56.0003613' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa')
GO
INSERT [dbo].[Position] ([Id], [positionName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (4, N'asdadasd', CAST(N'2020-03-05T12:58:33.0735992' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 1, CAST(N'2020-03-05T12:59:28.8847713' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa')
GO
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (1, N'Admin', CAST(N'2020-03-02T17:15:43.3833333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2020-03-02T17:15:43.3833333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'2020-03-02T17:15:43.3833333' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (2, N'Employee', CAST(N'2020-03-02T17:15:54.8233333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2020-03-02T17:15:54.8233333' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'2020-03-02T17:15:54.8233333' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (4, N'HR', CAST(N'2020-03-03T08:42:18.6209008' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Skill] ON 
GO
INSERT [dbo].[Skill] ([Id], [SkillName], [TechnologyID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (1, N'sadfasdf', 2, CAST(N'2020-03-06T10:44:03.7694858' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
GO
SET IDENTITY_INSERT [dbo].[Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[Technology] ON 
GO
INSERT [dbo].[Technology] ([Id], [TechnologyName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (1, N'dczsxczxccz', CAST(N'2020-03-06T07:10:22.9167224' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'2020-03-06T07:10:28.2773229' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', 1, CAST(N'2020-03-06T07:10:36.4808192' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa')
GO
INSERT [dbo].[Technology] ([Id], [TechnologyName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [DeletedOn], [DeletedBy]) VALUES (2, N'.Net', CAST(N'2020-03-06T07:11:31.2243518' AS DateTime2), N'81121c5e-8abe-4fc5-b602-0ef096be44fa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
GO
SET IDENTITY_INSERT [dbo].[Technology] OFF
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
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF__Address__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF__Address__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF__Address__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF__Address__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF__Address__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF__Address__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF__Address__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Company__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Company__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Company__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Company__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Company__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Company__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Company__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Department__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Department__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Department__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Department__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Department__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Department__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Department__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[EmployeeType] ADD  CONSTRAINT [DF__EmployeeType__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EmployeeType] ADD  CONSTRAINT [DF__EmployeeType__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[EmployeeType] ADD  CONSTRAINT [DF__EmployeeType__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[EmployeeType] ADD  CONSTRAINT [DF__EmployeeType__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[EmployeeType] ADD  CONSTRAINT [DF__EmployeeType__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[EmployeeType] ADD  CONSTRAINT [DF__EmployeeType__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[EmployeeType] ADD  CONSTRAINT [DF__EmployeeType__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF__Location__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF__Location__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF__Location__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF__Location__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF__Location__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF__Location__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF__Location__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Position] ADD  CONSTRAINT [DF__position__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Position] ADD  CONSTRAINT [DF__position__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Position] ADD  CONSTRAINT [DF__position__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Position] ADD  CONSTRAINT [DF__position__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Position] ADD  CONSTRAINT [DF__position__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Position] ADD  CONSTRAINT [DF__position__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Position] ADD  CONSTRAINT [DF__position__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF__Roles__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF__Roles__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF__Roles__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF__Roles__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF__Roles__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF__Roles__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF__Roles__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Skill] ADD  CONSTRAINT [DF__Skill__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Skill] ADD  CONSTRAINT [DF__Skill__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Skill] ADD  CONSTRAINT [DF__Skill__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Skill] ADD  CONSTRAINT [DF__Skill__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Skill] ADD  CONSTRAINT [DF__Skill__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Skill] ADD  CONSTRAINT [DF__Skill__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Skill] ADD  CONSTRAINT [DF__Skill__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
GO
ALTER TABLE [dbo].[Technology] ADD  CONSTRAINT [DF__Technology__CreatedOn__3B75D760]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Technology] ADD  CONSTRAINT [DF__Technology__CreatedBy__3C69FB99]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Technology] ADD  CONSTRAINT [DF__Technology__ModifiedO__3D5E1FD2]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Technology] ADD  CONSTRAINT [DF__Technology__ModifiedB__3E52440B]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Technology] ADD  CONSTRAINT [DF__Technology__IsDeleted__3F466844]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Technology] ADD  CONSTRAINT [DF__Technology__DeletedOn__403A8C7D]  DEFAULT (getdate()) FOR [DeletedOn]
GO
ALTER TABLE [dbo].[Technology] ADD  CONSTRAINT [DF__Technology__DeletedBy__412EB0B6]  DEFAULT (CONVERT([uniqueidentifier],0x00)) FOR [DeletedBy]
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
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Location] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Location]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([Id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Company]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_EmployeeType] FOREIGN KEY([EmployeeTypeId])
REFERENCES [dbo].[EmployeeType] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_EmployeeType]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Gender]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_LAddress] FOREIGN KEY([LocalAddressID])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_LAddress]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_PAddress] FOREIGN KEY([PermanentAddressID])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_PAddress]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_City]
GO
ALTER TABLE [dbo].[Skill]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Technology] FOREIGN KEY([TechnologyID])
REFERENCES [dbo].[Technology] ([Id])
GO
ALTER TABLE [dbo].[Skill] CHECK CONSTRAINT [FK_Skill_Technology]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO
ALTER TABLE [dbo].[UserRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleMapping_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UserRoleMapping] CHECK CONSTRAINT [FK_UserRoleMapping_Role]
GO
ALTER TABLE [dbo].[UserRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleMapping_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoleMapping] CHECK CONSTRAINT [FK_UserRoleMapping_Users]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Login]    Script Date: 3/6/2020 4:25:29 PM ******/
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
