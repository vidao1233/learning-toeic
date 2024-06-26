USE [master]
GO
/****** Object:  Database [toeic-web-db]    Script Date: 5/5/2024 8:56:43 PM ******/
CREATE DATABASE [toeic-web-db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'toeic-web-db', FILENAME = N'/var/opt/mssql/data/toeic-web-db.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'toeic-web-db_log', FILENAME = N'/var/opt/mssql/data/toeic-web-db_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [toeic-web-db] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [toeic-web-db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [toeic-web-db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [toeic-web-db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [toeic-web-db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [toeic-web-db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [toeic-web-db] SET ARITHABORT OFF 
GO
ALTER DATABASE [toeic-web-db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [toeic-web-db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [toeic-web-db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [toeic-web-db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [toeic-web-db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [toeic-web-db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [toeic-web-db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [toeic-web-db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [toeic-web-db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [toeic-web-db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [toeic-web-db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [toeic-web-db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [toeic-web-db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [toeic-web-db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [toeic-web-db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [toeic-web-db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [toeic-web-db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [toeic-web-db] SET RECOVERY FULL 
GO
ALTER DATABASE [toeic-web-db] SET  MULTI_USER 
GO
ALTER DATABASE [toeic-web-db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [toeic-web-db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [toeic-web-db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [toeic-web-db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [toeic-web-db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [toeic-web-db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'toeic-web-db', N'ON'
GO
ALTER DATABASE [toeic-web-db] SET QUERY_STORE = ON
GO
ALTER DATABASE [toeic-web-db] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [toeic-web-db]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/5/2024 8:56:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[idAdmin] [uniqueidentifier] NOT NULL,
	[idUser] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[idAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerQuestions]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerQuestions](
	[idAnswer] [uniqueidentifier] NOT NULL,
	[idQuestion] [uniqueidentifier] NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[QuestionidQuestion] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AnswerQuestions] PRIMARY KEY CLUSTERED 
(
	[idAnswer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[DateOfBirth] [nvarchar](max) NULL,
	[Gender] [bit] NULL,
	[ImageURL] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[idComment] [uniqueidentifier] NOT NULL,
	[idLesson] [uniqueidentifier] NOT NULL,
	[idCommentReply] [uniqueidentifier] NULL,
	[idUser] [nvarchar](450) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[createdDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[idComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[idCourse] [uniqueidentifier] NOT NULL,
	[idProfessor] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[isVip] [bit] NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[idCourse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lessons](
	[idLesson] [uniqueidentifier] NOT NULL,
	[idCourse] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[isVip] [bit] NULL,
 CONSTRAINT [PK_Lessons] PRIMARY KEY CLUSTERED 
(
	[idLesson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethods](
	[idMethod] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PaymentMethods] PRIMARY KEY CLUSTERED 
(
	[idMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[idPayment] [uniqueidentifier] NOT NULL,
	[idMethod] [uniqueidentifier] NOT NULL,
	[idStudent] [uniqueidentifier] NOT NULL,
	[idPackage] [uniqueidentifier] NOT NULL,
	[message] [nvarchar](max) NOT NULL,
	[paymentDate] [datetime2](7) NOT NULL,
	[paymentAmount] [float] NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[idPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Professors]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professors](
	[idProfessor] [uniqueidentifier] NOT NULL,
	[idUser] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Professors] PRIMARY KEY CLUSTERED 
(
	[idProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[idQuestion] [uniqueidentifier] NOT NULL,
	[idQuiz] [uniqueidentifier] NULL,
	[idUnit] [uniqueidentifier] NULL,
	[idProfessor] [uniqueidentifier] NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[answer] [nvarchar](max) NOT NULL,
	[explaination] [nvarchar](max) NOT NULL,
	[choice_1] [nvarchar](max) NOT NULL,
	[choice_2] [nvarchar](max) NOT NULL,
	[choice_3] [nvarchar](max) NOT NULL,
	[choice_4] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[idQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quizs]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quizs](
	[idQuiz] [uniqueidentifier] NOT NULL,
	[idLesson] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Quizs] PRIMARY KEY CLUSTERED 
(
	[idQuiz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[idReport] [uniqueidentifier] NOT NULL,
	[idUser] [nvarchar](450) NOT NULL,
	[idAdmin] [uniqueidentifier] NOT NULL,
	[idPost] [uniqueidentifier] NOT NULL,
	[reason] [nvarchar](max) NOT NULL,
	[isCheck] [bit] NOT NULL,
	[reportDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[idReport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResetPasswords]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResetPasswords](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[OTP] [nvarchar](max) NOT NULL,
	[InsertDateTimeUTC] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ResetPasswords] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScoreParams]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScoreParams](
	[correctAnswers] [int] IDENTITY(1,1) NOT NULL,
	[listenningScore] [int] NOT NULL,
	[readingScore] [int] NOT NULL,
 CONSTRAINT [PK_ScoreParams] PRIMARY KEY CLUSTERED 
(
	[correctAnswers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[idStudent] [uniqueidentifier] NOT NULL,
	[idUser] [nvarchar](450) NOT NULL,
	[freeTest] [bit] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[idStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestParts]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestParts](
	[partId] [uniqueidentifier] NOT NULL,
	[partName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TestParts] PRIMARY KEY CLUSTERED 
(
	[partId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestQuestionUnits]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestQuestionUnits](
	[idQuestionUnit] [uniqueidentifier] NOT NULL,
	[idTest] [uniqueidentifier] NOT NULL,
	[idTestPart] [uniqueidentifier] NOT NULL,
	[paragraph] [nvarchar](max) NULL,
	[audio] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[script] [nvarchar](max) NULL,
	[translation] [nvarchar](max) NULL,
 CONSTRAINT [PK_TestQuestionUnits] PRIMARY KEY CLUSTERED 
(
	[idQuestionUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestRecords]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestRecords](
	[idRecord] [uniqueidentifier] NOT NULL,
	[idTest] [uniqueidentifier] NOT NULL,
	[idStudent] [uniqueidentifier] NOT NULL,
	[createDate] [datetime2](7) NOT NULL,
	[listenCorrect] [int] NOT NULL,
	[listenScore] [int] NOT NULL,
	[readingCorrect] [int] NOT NULL,
	[readScore] [int] NOT NULL,
	[correctAns] [int] NOT NULL,
	[wrongAns] [int] NOT NULL,
	[totalScore] [int] NOT NULL,
 CONSTRAINT [PK_TestRecords] PRIMARY KEY CLUSTERED 
(
	[idRecord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tests]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tests](
	[idTest] [uniqueidentifier] NOT NULL,
	[idType] [uniqueidentifier] NOT NULL,
	[idProfessor] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[createDate] [datetime2](7) NOT NULL,
	[useDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Tests] PRIMARY KEY CLUSTERED 
(
	[idTest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestTypes]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestTypes](
	[idTestType] [uniqueidentifier] NOT NULL,
	[typeName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TestTypes] PRIMARY KEY CLUSTERED 
(
	[idTestType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAnswers]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAnswers](
	[idUAnswer] [uniqueidentifier] NOT NULL,
	[idQuestion] [uniqueidentifier] NOT NULL,
	[idRecord] [uniqueidentifier] NOT NULL,
	[idStudent] [uniqueidentifier] NOT NULL,
	[userChoice] [nvarchar](max) NOT NULL,
	[state] [bit] NOT NULL,
 CONSTRAINT [PK_UserAnswers] PRIMARY KEY CLUSTERED 
(
	[idUAnswer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VipPackages]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VipPackages](
	[idPackage] [uniqueidentifier] NOT NULL,
	[idAdmin] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[price] [float] NOT NULL,
	[duration] [int] NOT NULL,
 CONSTRAINT [PK_VipPackages] PRIMARY KEY CLUSTERED 
(
	[idPackage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VipStudents]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VipStudents](
	[idVipStudent] [uniqueidentifier] NOT NULL,
	[idStudent] [uniqueidentifier] NOT NULL,
	[vipExpire] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_VipStudents] PRIMARY KEY CLUSTERED 
(
	[idVipStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vocabularies]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vocabularies](
	[idVoc] [uniqueidentifier] NOT NULL,
	[idTopic] [uniqueidentifier] NOT NULL,
	[idProfessor] [uniqueidentifier] NOT NULL,
	[engWord] [nvarchar](max) NOT NULL,
	[pronunciation] [nvarchar](max) NULL,
	[wordType] [nvarchar](max) NULL,
	[meaning] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Vocabularies] PRIMARY KEY CLUSTERED 
(
	[idVoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VocabularyTopics]    Script Date: 5/5/2024 8:56:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VocabularyTopics](
	[idVocTopic] [uniqueidentifier] NOT NULL,
	[idProfessor] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_VocabularyTopics] PRIMARY KEY CLUSTERED 
(
	[idVocTopic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240503164026_add comment', N'6.0.24')
GO
INSERT [dbo].[Admins] ([idAdmin], [idUser]) VALUES (N'40a2f803-373d-414b-8094-f4cb70dbd72f', N'a411f3a0-b853-4c9c-a36a-727aa77a65b6')
INSERT [dbo].[Admins] ([idAdmin], [idUser]) VALUES (N'0639a5b1-1011-47de-bfff-e3f1512377c4', N'b0c9d868-5e6a-4c2c-8747-2dcc88f4d31a')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1257b8ad-564a-456f-81a1-d38f180ddd63', N'Student', N'Student', N'2')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'35564c0c-f6fc-4ce5-ad98-f3c362e90ed1', N'VipStudent', N'VipStudent', N'3')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8111cfd6-214a-4694-a13c-c6ec3d7f56b2', N'Admin', N'Admin', N'1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9faf18a9-5a41-4b13-9db3-63246839aea9', N'Professor', N'Professor', N'4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'02605646-f2c3-4ece-9b52-99a0914861de', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'072692d4-1c61-445b-a7e8-01672a0232ff', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'14fb1aac-2dbd-47bf-bdc6-a155b49d44ec', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'18da0d58-07aa-40d1-8c5b-ae18449ce329', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'20966528-2d60-46f9-b5e8-0a71fa2eaf64', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'35c35401-ce6c-4568-a19a-f8b4fffbf05b', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'420f91ad-2927-4181-a1fb-52095831e965', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'51449878-5a22-4ed4-9d6d-cd477d2a2d92', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'60c3c9b1-52e4-4a25-af37-e6ae8cc79e0d', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8b42ddeb-1f7a-4907-a67a-04033ed516d4', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8c363548-940b-4a4d-8d11-88eedcacd9f3', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'93baafda-a67a-42c1-96f5-138f0af0cb5c', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a751f260-9e0c-4af0-9df2-ff763f7bd68f', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'afe3d1ee-bbdb-48da-8559-49902648fc3b', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'baf4e2a1-7cc6-4995-94a2-159df307faf1', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c2627f0b-dc5a-4479-afcf-82ed326fd035', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cecd5dc8-f0cc-420d-b5da-ca97587a3c0d', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd8e8141d-844e-4000-ba4a-b94caeae66ee', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ee7696f1-510e-4524-a6e9-729c645c8d7f', N'1257b8ad-564a-456f-81a1-d38f180ddd63')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'02605646-f2c3-4ece-9b52-99a0914861de', N'35564c0c-f6fc-4ce5-ad98-f3c362e90ed1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'60c3c9b1-52e4-4a25-af37-e6ae8cc79e0d', N'35564c0c-f6fc-4ce5-ad98-f3c362e90ed1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'93baafda-a67a-42c1-96f5-138f0af0cb5c', N'35564c0c-f6fc-4ce5-ad98-f3c362e90ed1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a751f260-9e0c-4af0-9df2-ff763f7bd68f', N'35564c0c-f6fc-4ce5-ad98-f3c362e90ed1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'afe3d1ee-bbdb-48da-8559-49902648fc3b', N'35564c0c-f6fc-4ce5-ad98-f3c362e90ed1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd8e8141d-844e-4000-ba4a-b94caeae66ee', N'35564c0c-f6fc-4ce5-ad98-f3c362e90ed1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a411f3a0-b853-4c9c-a36a-727aa77a65b6', N'8111cfd6-214a-4694-a13c-c6ec3d7f56b2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b0c9d868-5e6a-4c2c-8747-2dcc88f4d31a', N'8111cfd6-214a-4694-a13c-c6ec3d7f56b2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0eaf6926-d068-49a3-a42e-ce446d603178', N'9faf18a9-5a41-4b13-9db3-63246839aea9')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'02605646-f2c3-4ece-9b52-99a0914861de', N'Users', NULL, NULL, 0, NULL, N'quocchi', N'QUOCCHI', N'quocchi1905@gmail.com', N'QUOCCHI1905@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEI7hYUjiWTOYi4UuhYXn6zovWb5WDliHoB8mfrbFAm1YWPY5YWozYEZo8eqAbYvffg==', N'WEAARWFY7MMQSIEDZT6XRC7MXKCBI3TV', N'4a32cb2c-087d-4fcf-82de-02030562fbaa', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'072692d4-1c61-445b-a7e8-01672a0232ff', N'Users', NULL, NULL, 0, NULL, N'phunghx', N'PHUNGHX', N'phunghx@hcmute.edu.vn', N'PHUNGHX@HCMUTE.EDU.VN', 1, N'AQAAAAEAACcQAAAAEBC2EwFtuJSeL/s88WEDeyMQMjOnpUFSdecSfvc0JAoSjrdzR6UgsuExY/uaR6y3IA==', N'V3YHJ4XX3ZPTUFREUUMI54TJQ7QMBIXJ', N'd6ef689a-9a7e-416a-959c-983b77e8480b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0eaf6926-d068-49a3-a42e-ce446d603178', N'Users', N'Trần Ngô Bích Du', N'2001-01-01', 1, N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1703436193/yd8yrzroj8q89wvdjak1.jpg', N'pro1', N'PRO1', N'user@example.com', N'USER@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEAWbdORvdLKZjUTxQ7y2UVB6MTBrcUrouwAV811yVpSv304QsNcOLZW+DtTXIgK/0A==', N'XS243MD7EF2WHJBXTNNGKHEHWZ5WGCCP', N'2a995fb5-40ad-4179-9e0f-afac28f89b3c', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'14fb1aac-2dbd-47bf-bdc6-a155b49d44ec', N'Users', NULL, NULL, 0, NULL, N'vidao1233', N'VIDAO1233', N'vidao1233@gmail.com', N'VIDAO1233@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFQatmitlCFJlA3v0aSCw3QFJwMjq2FF6BWpbdkU8DL4rKb/lk4rfuxl4C4Szllx6Q==', N'X62SETKJVGCG5P6WNGPTIX336FDWH46Z', N'fcdb3232-a62c-4108-8dca-6424bda33e31', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'18da0d58-07aa-40d1-8c5b-ae18449ce329', N'Users', NULL, NULL, 0, NULL, N'stu2', N'STU2', N'stu2@gmail.com', N'STU2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEB2qz9uy2FmmlBJyj7AdlRijQ2MmiHALjjsR9jpFmA6lljeug03u74PReIs4b1dBtQ==', N'QZ3OOXNRR3LK7CA2IQ4VSYJJ7WIU5C37', N'cc7a7a91-907d-4fc3-9317-a06591d9de79', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'20966528-2d60-46f9-b5e8-0a71fa2eaf64', N'Users', N'doduongthaituan', N'2023-12-19', 0, N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1702802845/uozmwnbtrhdsbb76jpmk.png', N'tuan', N'TUAN', N'doduongthaituan201102@gmail.com', N'DODUONGTHAITUAN201102@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHFtBF4tXUFozqHBkQ24/+mwiF3HbunUO7UXSVM9yx1ogiBko83jZCGD7eb05yr8HA==', N'LXBHPI JCZSKCLWUACSOED5C7JU5MCK', N'2f31ef24-ac30-4d73-b03b-e5fa43f0353e', N'0987654321', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'35c35401-ce6c-4568-a19a-f8b4fffbf05b', N'Users', NULL, NULL, 0, NULL, N'dongthinhpt02', N'DONGTHINHPT02', N'trandongthinh@gmail.com', N'TRANDONGTHINH@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPHHHF7B4rhcrz2jnNXgW5iA/+K+d5jj9/ItcgaynLtmVQT9/it+2DoBp/me0VuSHQ==', N'MMKTNEV5ZPED3TXX4X4B3JB2XCZSYLS7', N'c6885f15-284d-4d1b-8f6d-bc99e4d6b043', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'420f91ad-2927-4181-a1fb-52095831e965', N'Users', NULL, NULL, 0, NULL, N'du2309', N'DU2309', N'20110618@student.hcmute.edu.vn', N'20110618@STUDENT.HCMUTE.EDU.VN', 1, N'AQAAAAEAACcQAAAAENC3cPccActupJBiSw6oFLhZcbBTxSG1bgGmQ4Xu8pJu75RmlakAtXsvkqttY+WAww==', N'BXV3KBR5CH7XAEUORML36GXFNBU7QZVO', N'297776f1-48c3-4d4d-b2c7-8e040da913d0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'51449878-5a22-4ed4-9d6d-cd477d2a2d92', N'Users', N'陈日南', N'2023-11-28', 0, N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1703330608/k6uqjit3f3q7dx0anpvk.jpg', N'phc@123', N'PHC@123', N'20110701@student.hcmute.edu.vn', N'20110701@STUDENT.HCMUTE.EDU.VN', 1, N'AQAAAAEAACcQAAAAEMIZzcPbzwfH0twu0ChMa48llAKUcI4iGvxH4q9y3YaCQoWFL46XO/b6Yg1nrKPNqA==', N'QA2USIJTKVPV7O2QZ2DEOJ7DMIMD2HHH', N'3002a662-5da4-495e-800e-34fd72eca79a', N'<script>alert(document.cookie)</script>', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'60c3c9b1-52e4-4a25-af37-e6ae8cc79e0d', N'Users', N'Vũ Hoàng Anh', N'2023-12-29', 0, N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1702818950/wwoepoguzwxaqnk56nkk.png', N'hoangvuanh', N'HOANGVUANH101@GMAIL.COM', N'hoangvuanh101@gmail.com', N'HOANGVUANH101@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIJvCiYCVi2T9A+H9mbXYERqPYssH4QvhvcGIC4S5T+f74Fu6zyJY/zD5SSTF9tfzw==', N'WUBJPMBSJ5SXTBVSONFK2TZQNA4HNUM7', N'f49735af-e8d1-4253-8f09-56fd0c3414e4', N'0965120724', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8b42ddeb-1f7a-4907-a67a-04033ed516d4', N'Users', NULL, NULL, 0, NULL, N'ngan2512', N'NGAN2512', N'len ckimngan2512@gmail.com', N'LEN CKIMNGAN2512@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMJXMIycFkUSBYNpP9Cn3bveZQzEjzaX5Nv1WruIN48X3OevOVi2og3EHKV+8F81Ow==', N'UPBY2LMMTDUGY7F6BA6LNDFAJZOKXERE', N'bcea79ed-baef-4b18-a9cc-6f844dbd1534', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8c363548-940b-4a4d-8d11-88eedcacd9f3', N'Users', N'Nguyễn Thị Tiết Quyên', N'2002-04-23', 0, N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1702797031/yq2hxyqnulgcly9okpuv.jpg', N'quyen2304', N'QUYEN2304', N'tietquyen24042002@gmail.com', N'TIETQUYEN24042002@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDa6H+MFTwJRyieIfVpPclWrcqvCYyr5HZmeig+N1fdWJztrMMewFNTe3Zi1mD4LWQ==', N'6O62M726AWKM5A5VPG3STCWEDJW4M34T', N'f0e54be0-8a48-4fcb-b9c0-efd3d62f10d6', N'0383775930', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'93baafda-a67a-42c1-96f5-138f0af0cb5c', N'Users', N'Fix', N'07/30/2001', 1, NULL, N'stu1', N'STU1', N'stu1@example.com', N'STU1@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEAtpacNISVspk23Og/tZMJau2lAC0rS2cXayStnPhyG6RXrYa0ngV7L8eVzrH67EYA==', N'25X7CXTM2XJPXNQAAYLJRX6ITMDI6X6L', N'ad6ff42e-5963-4236-a785-31f52d648bab', N'1234567890', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a411f3a0-b853-4c9c-a36a-727aa77a65b6', N'Users', N'Admin 2', NULL, 0, NULL, N'admin2', N'ADMIN2', N'admin2@gmail.com', N'ADMIN2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHCq5tYgtzPoTbtaCThVlRWFs2/CT9VqbnQXEC5n7jCzuxxUPzMlFA4xfWqFp70VfQ==', N'H6XALDXJNEXSIIVXV463ZGPPYBDURHQK', N'de2827f8-15d1-4859-8be1-0c1e8ad5048b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a751f260-9e0c-4af0-9df2-ff763f7bd68f', N'Users', N'Đào Vi', N'2001-07-30', 1, N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1711224561/pod2zttkzbn8y9l7vh0d.jpg', N'testConf', N'TESTCONF', N'20110223@student.hcmute.edu.vn', N'20110223@STUDENT.HCMUTE.EDU.VN', 1, N'AQAAAAEAACcQAAAAEKMSzPlyepWdz2QCNg77QNv/D62Mre9ZEVBJzEl0k1pWLDH4+DFIFem4txVXI8Rh3w==', N'SUU3TBJ5CWU5U7SC7T43RJRKER7SNXOL', N'9f382f58-c651-4077-a94b-5cd739a6c0a3', N'1692364105', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'afe3d1ee-bbdb-48da-8559-49902648fc3b', N'Users', NULL, NULL, 0, NULL, N'nhuqin03', N'NHUQIN03', N'quynhle.795396@gmail.com', N'QUYNHLE.795396@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJHenr/Skjqs9KnyM2Uyly/bRDyJ3KduN/RkIPA ptnetVhn7ocLhWMa+YobT/f3Q==', N'LIUEQFN726YXAUYFTSQ2FKRU5RRR3MIS', N'f8a0c3e1-e0ea-4f7a-adf5-525c21399a5a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b0c9d868-5e6a-4c2c-8747-2dcc88f4d31a', N'Users', N'Dao Vi', N'07/30/2001', 1, N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1702302120/vowd7enmzeqwtiow6ki5.png', N'admin1', N'ADMIN1', N'admin1@example.com', N'ADMIN1@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEDATtKY/rvxT0Qt5ZmwcXhMsk7Mg+OhsGdVlkyiavW22eRALOdHfYqUFIHwlWyoS2w==', N'LCZBPKWF3EDSNEGH7TVV2DOADFQYIIBI', N'6ac78822-e564-4119-83f5-bb5484401caa', N'1234567890', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'baf4e2a1-7cc6-4995-94a2-159df307faf1', N'Users', NULL, NULL, 0, NULL, N'thanhduy', N'THANHDUY', N'dtb1742002@gmail.com', N'DTB1742002@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHhoikz7od1kFFR9jBOklNzsHY+8rDWQ45vHBNnuhm9G0sXNB2u/gV+qexJ1WS0oiw==', N'S4XXK7UKDU2XKZZ4WZ43CIJUQZEWICPK', N'ac1ecd6f-1fca-405b-8705-6a507e8f1084', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c2627f0b-dc5a-4479-afcf-82ed326fd035', N'Users', NULL, NULL, 0, NULL, N'sloth', N'SLOTH', N'minhchinh290@gmail.com', N'MINHCHINH290@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP5XyaGIRuLczEw9uewvoIQL1Et+AR2iofzReNRpO2pwsGHOJdUjtDRteXAHtoQgAQ==', N'2NYCAO7M7ROCBPJ46XN5Z33DMACJUDZP', N'c9d49a0c-2d03-4cac-9fb4-4617cbb2374d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cecd5dc8-f0cc-420d-b5da-ca97587a3c0d', N'Users', NULL, NULL, 0, NULL, N'Testdemo', N'TESTDEMO', N'chatgpt2@anonyviet.com', N'CHATGPT2@ANONYVIET.COM', 0, N'AQAAAAEAACcQAAAAEENbYkK2QdmvPcdP9S23dPwpGD4V/5pvVALkP9ijihIcSz6q8mnEvcEmcosyZ9pm5g==', N'GFEOECGNBI7HCDRP2MYVIJDTWR3XIBKS', N'f572aaa8-2353-468d-b8c4-3c4908bea55a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd8e8141d-844e-4000-ba4a-b94caeae66ee', N'Users', N'Trần Ngô Bích Du', N'2001-01-01', 1, N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1703600100/jxk8iycdyag5jrmygacq.jpg', N'dutran', N'DUTRAN', N'dutran2392002@gmail.com', N'DUTRAN2392002@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGLRZSuyySMtgmVUBsJTsq8/tXKLePNJ/3g75G9y1K7MB4/WUmFtczM1OUfbgylJfQ==', N'SPIDA44J6IJTLCMNKAGSMGQZ5BL6FNCW', N'dc6acd70-4ab8-4d84-98a0-31a0d19693aa', N'0979037001', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Fullname], [DateOfBirth], [Gender], [ImageURL], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ee7696f1-510e-4524-a6e9-729c645c8d7f', N'Users', N'string', NULL, 0, NULL, N'string1', N'STRING1', N'user1@example.com', N'USER1@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEMC20lubOInAfyy3BpodOekWTup1VxwS5OeXiQ72+Txv80S56xtC2nKH4KcFRS8Irg==', N'LD2GLB75XY7NPWXYVRWUA7PD52RMPZ3L', N'6de4ddef-2688-4fc8-9a9f-da1e6b3d3fb9', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Comments] ([idComment], [idLesson], [idCommentReply], [idUser], [content], [createdDate]) VALUES (N'7ce894ae-3b5d-4d4f-e55d-08dc6c5a6b42', N'fbb34767-d4d2-48ec-887a-1c0ccf8e5b98', NULL, N'60c3c9b1-52e4-4a25-af37-e6ae8cc79e0d', N'amazing !!', CAST(N'2024-05-04T16:50:07.7790000' AS DateTime2))
INSERT [dbo].[Comments] ([idComment], [idLesson], [idCommentReply], [idUser], [content], [createdDate]) VALUES (N'39f8db64-caba-4f89-e55e-08dc6c5a6b42', N'fbb34767-d4d2-48ec-887a-1c0ccf8e5b98', N'7ce894ae-3b5d-4d4f-e55d-08dc6c5a6b42', N'60c3c9b1-52e4-4a25-af37-e6ae8cc79e0d', N'amazing 1', CAST(N'2024-05-04T16:50:07.7790000' AS DateTime2))
INSERT [dbo].[Comments] ([idComment], [idLesson], [idCommentReply], [idUser], [content], [createdDate]) VALUES (N'1d069675-d0c6-47b0-e55f-08dc6c5a6b42', N'fbb34767-d4d2-48ec-887a-1c0ccf8e5b98', N'7ce894ae-3b5d-4d4f-e55d-08dc6c5a6b42', N'60c3c9b1-52e4-4a25-af37-e6ae8cc79e0d', N'amazing 2', CAST(N'2024-05-04T16:54:44.7400000' AS DateTime2))
INSERT [dbo].[Comments] ([idComment], [idLesson], [idCommentReply], [idUser], [content], [createdDate]) VALUES (N'61fa1444-dd30-40d9-e560-08dc6c5a6b42', N'fbb34767-d4d2-48ec-887a-1c0ccf8e5b98', N'39f8db64-caba-4f89-e55e-08dc6c5a6b42', N'60c3c9b1-52e4-4a25-af37-e6ae8cc79e0d', N'amazing 3', CAST(N'2024-05-04T16:50:07.7790000' AS DateTime2))
INSERT [dbo].[Comments] ([idComment], [idLesson], [idCommentReply], [idUser], [content], [createdDate]) VALUES (N'518fc506-ecdc-450e-3c54-08dc6c98e401', N'13439918-544b-4a3e-a803-2b7184d564a4', NULL, N'd8e8141d-844e-4000-ba4a-b94caeae66ee', N'bài học hữu ích', CAST(N'2024-05-05T09:05:27.0000000' AS DateTime2))
INSERT [dbo].[Comments] ([idComment], [idLesson], [idCommentReply], [idUser], [content], [createdDate]) VALUES (N'1e94b163-99c3-41f2-3c55-08dc6c98e401', N'13439918-544b-4a3e-a803-2b7184d564a4', NULL, N'd8e8141d-844e-4000-ba4a-b94caeae66ee', N'i like it', CAST(N'2024-05-05T08:32:42.0000000' AS DateTime2))
INSERT [dbo].[Comments] ([idComment], [idLesson], [idCommentReply], [idUser], [content], [createdDate]) VALUES (N'79e0073a-6daf-4749-3c5c-08dc6c98e401', N'13439918-544b-4a3e-a803-2b7184d564a4', N'1e94b163-99c3-41f2-3c55-08dc6c98e401', N'420f91ad-2927-4181-a1fb-52095831e965', N'i like it too update', CAST(N'2024-05-05T09:24:27.0000000' AS DateTime2))
GO
INSERT [dbo].[Courses] ([idCourse], [idProfessor], [name], [description], [isVip]) VALUES (N'9f6dfe05-743e-4c75-a5e0-517ef47d5e0c', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'ADVANCED GRAMMAR', N'Khóa học ngữ pháp nâng cao', 0)
INSERT [dbo].[Courses] ([idCourse], [idProfessor], [name], [description], [isVip]) VALUES (N'47defd5e-812c-4b33-8a05-5568676db3e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'From Zero to Hero cập nhật', N'Khóa học cho người mất gốc', 0)
INSERT [dbo].[Courses] ([idCourse], [idProfessor], [name], [description], [isVip]) VALUES (N'6e778ced-ec5c-48ef-bfac-56b6cd72175f', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'TOIEC BASIC', N'Khóa học căn bản giúp học viên hiểu về cấu trúc đề thi cũng như cách làm của từng part cập nhật', 0)
INSERT [dbo].[Courses] ([idCourse], [idProfessor], [name], [description], [isVip]) VALUES (N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'BASIC GRAMMAR', N'Khóa học ngữ pháp căn bản cho người mất gốc.', 0)
GO
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'5150cebe-5b1b-4895-87d3-0463a243d5f1', N'9f6dfe05-743e-4c75-a5e0-517ef47d5e0c', N'PRESENT PERFECT TENSE', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; background-color: #f8cac6; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">1. Form</span></span></span></span></span></span></p>
<div style="margin-left: 41px;">
<table style="border: none; border-collapse: collapse; height: 299px; width: 1433px;" width="827"><colgroup> <col style="width: 301.667px;" width="58"/> <col style="width: 651.667px;" width="315"/> <col style="width: 477.667px;" width="187"/> </colgroup>
<tbody>
<tr style="height: 92.5938px;">
<td style="vertical-align: top; padding: 7px; width: 58px; border: 1px solid #000000; height: 92.5938px;">
<p style="line-height: 1.7999999999999998; text-align: center;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(+)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px; width: 315px; border: 1px solid #000000; height: 92.5938px;">
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">I, You, We, They + have </span></span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">He, She, It + has</span></span></span></span></span></span></span></p>
</td>
<td rowspan="3" style="vertical-align: top; padding: 7px; width: 187px; border: 1px solid #000000; height: 277.781px;"><br/><br/><span style="background-color: #ffffff; color: #000000;"> </span>
<p> </p>
<p> </p>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;"> V3 (past participle)</span></span></span></span></span></span></span></p>
</td>
</tr>
<tr style="height: 92.5938px;">
<td style="vertical-align: top; padding: 7px; width: 58px; border: 1px solid #000000; height: 92.5938px;">
<p style="line-height: 1.7999999999999998; text-align: center;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(-)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px; width: 315px; border: 1px solid #000000; height: 92.5938px;">
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">I, You, We, They + have not / haven’t</span></span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">He, She, It + has not / hasn’t</span></span></span></span></span></span></span></p>
</td>
</tr>
<tr style="height: 92.5938px;">
<td style="vertical-align: top; padding: 7px; width: 58px; border: 1px solid #000000; height: 92.5938px;">
<p style="line-height: 1.7999999999999998; text-align: center;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(?)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px; width: 315px; border: 1px solid #000000; height: 92.5938px;">
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">Have + I, You, We, They </span></span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">Has + He, She, It</span></span></span></span></span></span></span></p>
</td>
</tr>
</tbody>
</table>
</div>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; background-color: #f8cac6; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">2. Usage</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Present Perfect Tense describes an action or event that has just happened.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Present Perfect Tense describes an action that was repetitive many times in the past and may also be repeated in the present or future.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Present Perfect Tense describes an action that started in the past, continues to present, and is likely to carry on in the future.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Present Perfect Tense describes an action or event happening in the past when the speaker didn''t know or didn''t want to mention the exact time.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Present Perfect Tense describes an action or event that happened in the past but the result is still in the present.</span></span></span></span></span></span><br/><span style="background-color: #ffffff; color: #000000;"> </span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-left: 28px; margin-top: 3px;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">E.g.</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> </span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">I </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">have just seen</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> my sister in the park.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">She </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">has finished</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> her homework recently.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Daisy </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">has read</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> that novel several times.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">I </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">have seen</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> “Titanic” three times.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Mary </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">has lived</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> in this house for ten years.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">They </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">have studied</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> English since 1990.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">I </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">have ne</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> to Hanoi.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">He </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">has done</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> his housework.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">He </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">has broken</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> his leg, so he can’t play tennis.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">You</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">’ve broken</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> this watch. (It isn’t working now.)</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; background-color: #f8cac6; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">3. Signals</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">just, recently, lately</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">never, ever</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">already</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">yet</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">since + a point of time</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">for + a period of time</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">so far = until now = up to now = up to the present</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">so far / till now</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">up to now</span></span></span></span></span></span></li>
</ul></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'cbd2ccec-e0be-4613-9f71-0889fafca3a9', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'SENTENCE ELEMENTS', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p><span style="background-color: #f8cac6;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;">1. What is a sentence?</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- A sentence may be composed of five different elements.</span></p>
<ul>
<li aria-level="1" style="font-weight: 400;"><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Subjects</span></li>
<li aria-level="1" style="font-weight: 400;"><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Verbs</span></li>
<li aria-level="1" style="font-weight: 400;"><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Objects</span></li>
<li aria-level="1" style="font-weight: 400;"><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Complements</span></li>
<li aria-level="1" style="font-weight: 400;"><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Adverbials</span></li>
</ul>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- The shortest sentence consists of a subject and verb.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong><em>Example: </em></strong><span style="text-decoration: underline;"><span style="font-weight: 400;">He</span></span><span style="font-weight: 400;"> </span><span style="font-weight: 400;"><span style="text-decoration: underline;">smiles</span>.</span></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">                 S       V</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>2. Sentence elements </strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;"><strong>2.1. Subjects </strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- Subject is a word or group of words which tells who/what the sentence is about or what/who does the action.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">- The subject could be considered as </span><em><span style="font-weight: 400;">simple, compound</span></em><span style="font-weight: 400;">, or </span><em><span style="font-weight: 400;">complete subject</span></em><span style="font-weight: 400;">:</span></span></p>
<ul>
<li aria-level="1"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong> Simple subjects: </strong><span style="font-weight: 400;">The simple subject is the main word or words in the complete subject.</span></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g: A lovely </span><strong>boy </strong><span style="font-weight: 400;">is playing with his mother.</span></span></p>
<ul>
<li aria-level="1"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Compound subjects: </strong><span style="font-weight: 400;">A compound subject contains two or more subjects that have the same verb.</span></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g:</span><strong> </strong><span style="font-weight: 400;">A lovely </span><strong>boy </strong><span style="font-weight: 400;">and his </span><strong>mother</strong><span style="font-weight: 400;"> are in the house.</span></span></p>
<ul>
<li aria-level="1"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Complete subjects: </strong><span style="font-weight: 400;">The complete subject includes all the words that tell who or what the sentence is about.</span></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g:  A</span><strong> lovely boy</strong><span style="font-weight: 400;"> is playing with his mother.</span></span></p>
<p> </p>
<p><span style="background-color: #eccafa;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;">2.2. Verbs </strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- Verb, the second most important element in a sentence, can be just a single word (verb) or group of words containing main verb and auxiliary verbs.</span></p>
<ul>
<li aria-level="1" style="font-weight: 400;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;"> </span><strong>a single verb:</strong></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g: They </span><strong>laughed </strong><span style="font-weight: 400;">loudly.</span></span></p>
<ul>
<li aria-level="1" style="font-weight: 400;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;"> </span><strong>a main verb and auxiliary verb</strong></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g: She </span><strong>had finished </strong><span style="font-weight: 400;">her meal when we arrived.</span></span></p>
<p> </p>
<p><span style="background-color: #eccafa;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;">2.3. Objects </strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- Object is a word or group of words which receives the action from the verbs; for examples,</span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- There are three types of objects: direct object, indirect object, and object of preposition.</span></p>
<ul>
<li aria-level="1"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;"> </span><strong>Direct objects (DO): </strong><span style="font-weight: 400;">The direct object receives the action from the verb; it stands after a transitive verb - a verb that needs object.</span></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g: A boy is playing </span><strong>football</strong><span style="font-weight: 400;">.</span></span></p>
<ul>
<li aria-level="1"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Indirect objects (IO): </strong><span style="font-weight: 400;">The indirect object tells who the direct object is for or to; it is used with ditransitive verbs - a verb that needs two objects such as tell, buy, give, offer, sent, provide, etc.</span></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g: My mother bought </span><strong>me </strong><span style="font-weight: 400;">a dictionary. (''a dictionary'' is for ''me''.)</span></span></p>
<ul>
<li aria-level="1"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong> Object of prepositions: </strong><span style="font-weight: 400;">The object of preposition stands after a preposition such as at, on, in, for, etc.</span></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g: They are od </span><span style="font-weight: 400;">at</span><span style="font-weight: 400;"> </span><strong>maths.</strong></span></p>
<p> </p>
<p><span style="background-color: #eccafa;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;">2.4. Complements</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- Complement is a word or group of words which completes the meaning of a subject or object.</span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- There are two types of complements: subject complements and object complements.</span></p>
<ul>
<li aria-level="1" style="font-weight: 400;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Subject complements</strong><span style="font-weight: 400;">: The subject complements complete the meaning of the subjects; they normally stand after linking verbs.</span></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g: Vutha is </span><strong>a businessman</strong><span style="font-weight: 400;">.</span></span></p>
<ul>
<li aria-level="1"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Object complements: </strong><span style="font-weight: 400;">The object complements complete the meaning of the objects; they normally stand after direct objects.</span></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g: We find the food </span><strong>disgusting</strong><span style="font-weight: 400;">. </span></span></p>
<p> </p>
<p><span style="background-color: #eccafa;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;">2.5. Adverbials</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- Adverbial is a word or group of words which is used as an adverb in a sentence.</span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- The adverbial could be an adverb, adverb phrase, or prepositional phrase used as an adverb.</span></p>
<ul>
<li aria-level="1"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>An adverb</strong></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>     </strong><span style="font-weight: 400;">E.g: I get up </span><strong>early</strong><span style="font-weight: 400;">.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">            He drives </span><strong>carefully</strong><span style="font-weight: 400;">.</span></span></p>
<ul>
<li aria-level="1"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong> An adverb phrase</strong></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>     </strong><span style="font-weight: 400;">E.g: </span><strong> </strong><span style="font-weight: 400;">They work</span><strong> very hard.</strong></span></p>
<ul>
<li aria-level="1"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong> A prepositional phrase used as an adverb</strong></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g: They are</span><strong> at a hotel.</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>                 </strong><span style="font-weight: 400;"> I''m ing</span><strong> to the bank.</strong></span></p>
<p> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'1de04d4a-ad49-4fb2-8c38-0d64148517b6', N'9f6dfe05-743e-4c75-a5e0-517ef47d5e0c', N'PRESENT PERFECT CONTINUOUS TENSE', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">1. Form</span></span></span></span></span></span></p>
<div style="margin-left: 41px;">
<table style="border: none; border-collapse: collapse; height: 324px; width: 1305px;" width="750"><colgroup> <col style="width: 275.333px;" width="58"/> <col style="width: 615.333px;" width="332"/> <col style="width: 414.333px;" width="170"/> </colgroup>
<tbody>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 58px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(+)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 332px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">I, You, We, They + have </span></span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">He, She, It + has</span></span></span></span></span></span></span></p>
</td>
<td rowspan="3" style="vertical-align: top; padding: 7px 7px 7px 7px; width: 170px; border: 1px solid #000000;">
<p><br/><br/><span style="color: #000000; background-color: #ffffff;"> </span></p>
<p> </p>
<p> </p>
<p> <span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">been + V-ing</span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 58px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(-)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 332px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">I, You, We, They + have not / haven’t</span></span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">He, She, It + has not / hasn’t</span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 58px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(?)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 332px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">Have + I, You, We, They </span></span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">Has + He, She, It</span></span></span></span></span></span></span></p>
</td>
</tr>
</tbody>
</table>
</div>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">2. Usage</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Present Perfect Continuous / Progressive Tense describes an action or event that started in the past and continues up to the present. This usage is often accompanied by </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">since + a point of time</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">for + a period of time</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Present Perfect Continuous / Progressive Tense shows an action that has just finished and led to a result in present.</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-left: 28px; margin-top: 3px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">E.g.</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> </span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">I </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">have been studying </span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">French for five years.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">They </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">have been living </span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">in this city since 1995.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">How long </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">have</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> you </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">been waiting </span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">for her?</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">You’re out of breath. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">Have</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> you </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">been running</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">?</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">3. Signals</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">all day</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">for four years</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">since 1993</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">how long</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">the whole week</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 7px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">***Note: </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Don’t use </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">Continuous</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> Aspects with stative verbs (</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">to be, see, hear, understand, know, like, want, glance, feel, think, smell, love, hate, realize, seem, remember, forget, ...)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 7px; margin-bottom: 16px;"> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'16b4a47f-3a58-4cf7-a3ad-0d9fe9f6dd8b', N'9f6dfe05-743e-4c75-a5e0-517ef47d5e0c', N'PAST PERFECT CONTINUOUS TENSE', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; margin-bottom: 16px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">1. Form</span></span></span></span></span></span></p>
<div>
<table style="border: none; border-collapse: collapse; height: 230px; width: 1483px;" width="1008"><colgroup> <col style="width: 730px;" width="113"/> <col style="width: 752px;" width="513"/> </colgroup>
<tbody>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 113px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; text-align: center; margin: 16px 10px 16px 9px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(+)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 513px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; margin-left: 22px; text-indent: -12pt; text-align: center; margin-top: 7px; margin-bottom: 16px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">Subject + had been + V-ing</span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 113px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; text-align: center; margin: 16px 10px 16px 9px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(-)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 513px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; margin-left: 22px; text-indent: -12pt; text-align: center; margin-top: 7px; margin-bottom: 16px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">Subject + had not / hadn’t + been + V-ing</span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 113px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; text-align: center; margin: 16px 10px 16px 9px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(?)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 513px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; margin-left: 22px; text-indent: -12pt; text-align: center; margin-top: 7px; margin-bottom: 16px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">Had + subject + been + V-ing?</span></span></span></span></span></span></span></p>
</td>
</tr>
</tbody>
</table>
</div>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; margin-bottom: 16px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">2. Usage</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Past Perfect Continuous/Progressive Tense shows an action or a habit happening over a period of time in the past prior to some other past event.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Past Perfect Continuous/Progressive Tense illustrates a past action being in progress is interrupted by another action in the past.</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-left: 28px; margin-top: 3px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">E.g.</span></span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The men </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">had been playing</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> cards for 3 hours before I came.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">They </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">had been living</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> in London for 10 years when I met them. </span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; margin-bottom: 16px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">3. Signals</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">for / since</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">how long</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">before &gt;&lt; after</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">once</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">until that day</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">when</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">all day</span></span></span></span></span></span><br/><span style="color: #000000; background-color: #ffffff;"> </span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 7px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap; background-color: #fbeeb8;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">***Note:<span style="background-color: #ffffff;"> </span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Don’t use </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">Continuous</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> Aspects with stative verbs (</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">to be, see, hear, understand, know, like, want, glance, feel, think, smell, love, hate, realize, seem, remember, forget, ...</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">)</span></span></span></span></span></span></p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'18080d32-3e99-4dc9-ba07-13bc4ea1ad50', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'NOUNS', N'<div class="dialog-theory-modal-content-text"><p style="text-align: justify; margin-bottom: 11px;"> </p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>1. What is a noun?</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">A noun is a word that names <strong>something</strong>, such as <strong>a person, place, thing, or idea.</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u>Example</u>: </em>factory, approval, construction, London, etc.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"> </p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>2. Functions of a noun</strong></span></span></span></p>
<table align="center" class="Table" style="width: 100%; border-collapse: collapse; height: 245px;" width="602">
<tbody>
<tr style="height: 49px;">
<td style="padding: 7px; border: 1px solid black; width: 46.6811%; height: 49px;" valign="top">
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Functions of a noun</strong></span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: 1px solid black; border-right: 1px solid black; border-left: none; width: 53.3189%; height: 49px;" valign="top">
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Examples</strong></span></span></span></p>
</td>
</tr>
<tr style="height: 49px;">
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.6811%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">As a subject</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.3189%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The <strong>seminar</strong> will be held next week.</span></span></span></p>
</td>
</tr>
<tr style="height: 49px;">
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.6811%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">As an object of a verb</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.3189%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I enjoyed his <strong>presentation</strong>.</span></span></span></p>
</td>
</tr>
<tr style="height: 49px;">
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.6811%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">As an object of a preposition</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.3189%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">There was a <strong>complaint</strong> from the customer.</span></span></span></p>
</td>
</tr>
<tr style="height: 49px;">
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.6811%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">As a complement</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.3189%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Mr.John will become the next <strong>mayor.</strong></span></span></span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>3. Positions of a noun</strong></span></span></span></p>
<table align="center" class="Table" style="border-collapse: collapse; height: 323px; width: 99.6259%;">
<tbody>
<tr>
<td style="padding: 7px; border: 1px solid black; width: 46.7074%;" valign="top">
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Positions of a noun</strong></span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: 1px solid black; border-right: 1px solid black; border-left: none; width: 53.2926%;" valign="top">
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Examples</strong></span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.7074%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">After an indefinite article (a, an) or a definite article (the)</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.2926%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I am looking for <strong>a chair</strong></span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.7074%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">After an adjective </span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.2926%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">It is a <strong>od solution</strong></span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.7074%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">After a possessive adjective (my, her, his, etc) </span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.2926%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">David is one of<strong> my</strong> <strong>colleagues.</strong></span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.7074%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">After a preposition</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.2926%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">They offer <strong>a variety of services.</strong></span></span></span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>4. Countable nouns &amp; uncountable nouns </strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Countable nouns</strong> are nouns which can be counted, even if the number might be extraordinarily high (like counting all the people in the world). Countable nouns can be used with a/an, the, some, any, a few, and many.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u>Example:</u></em><em> </em>office, product, etc</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong>Uncountable nouns </strong>are nouns that come in a state or quantity which is impossible to count; liquids are uncountable, as are things that act like liquids (sand, air). They are always considered to be singular, and can be used with some, any, a little, and much.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u>Example:</u></em> intelligence, information, etc.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>5. Proper nouns &amp; Common nouns</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-<strong> Proper noun</strong> is a specific name of a person, place, or thing, and is always capitalized.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example: </em></strong>Does Helen have much homework to do this evening? ⇒ Helen is the name of a specific person</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong>Common noun</strong> is the generic name of an item in a class or group and is not capitalized unless appearing at the beginning of a sentence or in a title.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong><em> </em>The boy crossed the river. ⇒ Girl is a common noun; we do not learn the identity of the girl by reading this sentence, though we know the action she takes. River is also a common noun in this sentence.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>    <em> <span style="background: #ffffff;">+</span></em><span style="background-color: #ffffff;"><em> </em><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Types of common nouns:</span> </span></strong></span></span></span></p>
<ul>
<li style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Concrete noun </strong>is something that is perceived by the senses; something that is physical or real.</span></span></span></li>
</ul>
<p style="margin-left: 48px; text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong><strong> </strong>I heard the doorbell ⇒ Doorbell is a real thing that can be sensed.</span></span></span></p>
<ul>
<li style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Abstract noun</strong> is something that cannot be perceived by the senses.</span></span></span></li>
</ul>
<p style="margin-left: 48px; text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example: </em></strong>We can’t imagine the courage it took to do that ⇒ Courage is an abstract noun. Courage can’t be seen, heard, or sensed in any other way, but we know it exists.</span></span></span></p>
<ul>
<li style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Collective noun</strong> denotes a group or collection of people or things.</span></span></span></li>
</ul>
<p style="margin-left: 48px; text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example: </em></strong>That pack of lies is disgraceful. ⇒ Pack of lies as used here is a collective noun. Collective nouns take a singular verb as if they are one entity – in this case, the singular verb is.</span></span></span></p>
<p style="margin-left: 48px; text-align: justify; margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>6. Nouns suffixes </strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- When a noun suffix is added to a verb or an adjective, a noun will be formed.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- Some common noun suffixes:</span></span></span></p>
<table align="center" class="Table" style="width: 1803px; border-collapse: collapse; height: 1036px;" width="602">
<tbody>
<tr>
<td style="padding: 7px; border: 1px solid black; width: 813.797px;" valign="top">
<p align="center" style="margin-bottom: 11px; text-align: center;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Noun suffixes</strong></span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: 1px solid black; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Examples</strong></span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ion / -sion / -tion /</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background: white;">demonstrate</span> ⇒ demonstration</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ity</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">active ⇒ activity</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- ness</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">weak ⇒ weakness</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-or/-er</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background: white;">work </span>⇒ worker</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">supervise ⇒ supervisor</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ism</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background: white;">multicultural </span>⇒ multiculturalism</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ment</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">employ ⇒ employment</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-al </span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">propose ⇒ proposal</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-sis</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">analyze ⇒ analysis </span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ure </span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">fail ⇒ failure</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ship</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">intern ⇒ internship</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-th</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">grow ⇒ growth</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ant</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">participate ⇒ participant</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ee</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">interview ⇒ interviewee </span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ance/-ency </span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">important ⇒ importance</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">efficient ⇒ efficiency</span></span></span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'18080d32-3e99-4dc9-ba07-13bc4ea1ad52', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'NOUNS', N'<div class="dialog-theory-modal-content-text"><p style="text-align: justify; margin-bottom: 11px;"> </p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>1. What is a noun?</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">A noun is a word that names <strong>something</strong>, such as <strong>a person, place, thing, or idea.</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u>Example</u>: </em>factory, approval, construction, London, etc.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"> </p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>2. Functions of a noun</strong></span></span></span></p>
<table align="center" class="Table" style="width: 100%; border-collapse: collapse; height: 245px;" width="602">
<tbody>
<tr style="height: 49px;">
<td style="padding: 7px; border: 1px solid black; width: 46.6811%; height: 49px;" valign="top">
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Functions of a noun</strong></span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: 1px solid black; border-right: 1px solid black; border-left: none; width: 53.3189%; height: 49px;" valign="top">
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Examples</strong></span></span></span></p>
</td>
</tr>
<tr style="height: 49px;">
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.6811%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">As a subject</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.3189%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The <strong>seminar</strong> will be held next week.</span></span></span></p>
</td>
</tr>
<tr style="height: 49px;">
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.6811%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">As an object of a verb</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.3189%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I enjoyed his <strong>presentation</strong>.</span></span></span></p>
</td>
</tr>
<tr style="height: 49px;">
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.6811%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">As an object of a preposition</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.3189%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">There was a <strong>complaint</strong> from the customer.</span></span></span></p>
</td>
</tr>
<tr style="height: 49px;">
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.6811%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">As a complement</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.3189%; height: 49px;" valign="top">
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Mr.John will become the next <strong>mayor.</strong></span></span></span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>3. Positions of a noun</strong></span></span></span></p>
<table align="center" class="Table" style="border-collapse: collapse; height: 323px; width: 99.6259%;">
<tbody>
<tr>
<td style="padding: 7px; border: 1px solid black; width: 46.7074%;" valign="top">
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Positions of a noun</strong></span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: 1px solid black; border-right: 1px solid black; border-left: none; width: 53.2926%;" valign="top">
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Examples</strong></span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.7074%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">After an indefinite article (a, an) or a definite article (the)</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.2926%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I am looking for <strong>a chair</strong></span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.7074%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">After an adjective </span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.2926%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">It is a <strong>od solution</strong></span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.7074%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">After a possessive adjective (my, her, his, etc) </span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.2926%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">David is one of<strong> my</strong> <strong>colleagues.</strong></span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 46.7074%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">After a preposition</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 53.2926%;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">They offer <strong>a variety of services.</strong></span></span></span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>4. Countable nouns &amp; uncountable nouns </strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Countable nouns</strong> are nouns which can be counted, even if the number might be extraordinarily high (like counting all the people in the world). Countable nouns can be used with a/an, the, some, any, a few, and many.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u>Example:</u></em><em> </em>office, product, etc</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong>Uncountable nouns </strong>are nouns that come in a state or quantity which is impossible to count; liquids are uncountable, as are things that act like liquids (sand, air). They are always considered to be singular, and can be used with some, any, a little, and much.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u>Example:</u></em> intelligence, information, etc.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>5. Proper nouns &amp; Common nouns</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-<strong> Proper noun</strong> is a specific name of a person, place, or thing, and is always capitalized.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example: </em></strong>Does Helen have much homework to do this evening? ⇒ Helen is the name of a specific person</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong>Common noun</strong> is the generic name of an item in a class or group and is not capitalized unless appearing at the beginning of a sentence or in a title.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong><em> </em>The boy crossed the river. ⇒ Girl is a common noun; we do not learn the identity of the girl by reading this sentence, though we know the action she takes. River is also a common noun in this sentence.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>    <em> <span style="background: #ffffff;">+</span></em><span style="background-color: #ffffff;"><em> </em><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Types of common nouns:</span> </span></strong></span></span></span></p>
<ul>
<li style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Concrete noun </strong>is something that is perceived by the senses; something that is physical or real.</span></span></span></li>
</ul>
<p style="margin-left: 48px; text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong><strong> </strong>I heard the doorbell ⇒ Doorbell is a real thing that can be sensed.</span></span></span></p>
<ul>
<li style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Abstract noun</strong> is something that cannot be perceived by the senses.</span></span></span></li>
</ul>
<p style="margin-left: 48px; text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example: </em></strong>We can’t imagine the courage it took to do that ⇒ Courage is an abstract noun. Courage can’t be seen, heard, or sensed in any other way, but we know it exists.</span></span></span></p>
<ul>
<li style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Collective noun</strong> denotes a group or collection of people or things.</span></span></span></li>
</ul>
<p style="margin-left: 48px; text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example: </em></strong>That pack of lies is disgraceful. ⇒ Pack of lies as used here is a collective noun. Collective nouns take a singular verb as if they are one entity – in this case, the singular verb is.</span></span></span></p>
<p style="margin-left: 48px; text-align: justify; margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>6. Nouns suffixes </strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- When a noun suffix is added to a verb or an adjective, a noun will be formed.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- Some common noun suffixes:</span></span></span></p>
<table align="center" class="Table" style="width: 1803px; border-collapse: collapse; height: 1036px;" width="602">
<tbody>
<tr>
<td style="padding: 7px; border: 1px solid black; width: 813.797px;" valign="top">
<p align="center" style="margin-bottom: 11px; text-align: center;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Noun suffixes</strong></span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: 1px solid black; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Examples</strong></span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ion / -sion / -tion /</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background: white;">demonstrate</span> ⇒ demonstration</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ity</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">active ⇒ activity</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- ness</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">weak ⇒ weakness</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-or/-er</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background: white;">work </span>⇒ worker</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">supervise ⇒ supervisor</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ism</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background: white;">multicultural </span>⇒ multiculturalism</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ment</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">employ ⇒ employment</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-al </span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">propose ⇒ proposal</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-sis</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">analyze ⇒ analysis </span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ure </span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">fail ⇒ failure</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ship</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">intern ⇒ internship</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-th</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">grow ⇒ growth</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ant</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">participate ⇒ participant</span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ee</span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">interview ⇒ interviewee </span></span></span></p>
</td>
</tr>
<tr>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: 1px solid black; width: 813.797px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">-ance/-ency </span></span></span></p>
</td>
<td style="border-bottom: 1px solid black; padding: 7px; border-top: none; border-right: 1px solid black; border-left: none; width: 958.203px;" valign="top">
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">important ⇒ importance</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">efficient ⇒ efficiency</span></span></span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'64d4c3a5-52d7-4120-81b7-14d2d02e3f7f', N'6e778ced-ec5c-48ef-bfac-56b6cd72175f', N'Part 4: Bài nói ngắn', N'<p style="text-align: center;"><u>chữ gạch dưới</u></p><p style="text-align: center;"><em>chữ nghiêng</em></p><p style="text-align: center;"><strong>chữ đậm</strong></p><p style="text-align: center;"><span style="font-size: 24px;">chữ to</span></p><ul><li><span style="font-size: 24px;">item 1</span></li><li><span style="font-size: 24px;">item 2<br></span><br></li><br></ul><table style="border-collapse: collapse; width: 1009px; height: 80px;"><tbody> <tr> <td style="width: 33.3333%;">header 1</td> <td style="width: 33.3333%;">header 2</td> <td style="width: 33.3333%;">header 3</td></tr> <tr> <td style="width: 33.3333%;">content 1</td> <td style="width: 33.3333%;">content 2</td> <td style="width: 33.3333%;">content 3</td></tr> <tr> <td style="width: 33.3333%;">center content 1</td> <td style="width: 33.3333%;">center content 1<br></td> <td style="width: 33.3333%;">center content 1</td></tr></tbody></table><p>''</p>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'fbb34767-d4d2-48ec-887a-1c0ccf8e5b98', N'6e778ced-ec5c-48ef-bfac-56b6cd72175f', N'Part 2: Hỏi-đáp', N'<p style="text-align: center;"><u>chữ gạch dưới</u></p><p style="text-align: center;"><em>chữ nghiêng</em></p><p style="text-align: center;"><strong>chữ đậm</strong></p><p style="text-align: center;"><span style="font-size: 24px;">chữ to</span></p><ul><li><span style="font-size: 24px;">item 1</span></li><li><span style="font-size: 24px;">item 2<br></span><br></li><br></ul><table style="border-collapse: collapse; width: 1009px; height: 80px;"><tbody> <tr> <td style="width: 33.3333%;">header 1</td> <td style="width: 33.3333%;">header 2</td> <td style="width: 33.3333%;">header 3</td></tr> <tr> <td style="width: 33.3333%;">content 1</td> <td style="width: 33.3333%;">content 2</td> <td style="width: 33.3333%;">content 3</td></tr> <tr> <td style="width: 33.3333%;">center content 1</td> <td style="width: 33.3333%;">center content 1<br></td> <td style="width: 33.3333%;">center content 1</td></tr></tbody></table><p>''</p>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'13439918-544b-4a3e-a803-2b7184d564a4', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'ADJECTIVES', N'<div class="dialog-theory-modal-content-text"><p style="margin-bottom: 11px; text-align: center;"> </p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>1. Functions of Adjectives</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Adjectives describe the aspects of nouns. When an adjective is describing a noun, we say it is "modifying" it. Adjectives can:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Describe feelings or qualities</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">He is a <strong>lonely</strong> man.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">They are <strong>honest</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Give nationality or origin</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I heard a <strong>French</strong> song.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">This clock is <strong>German</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Our house is <strong>Victorian</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Tell more about a thing''s characteristics</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">That is a <strong>flashy</strong> car.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The knife is <strong>sharp</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Tell us about age</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">He''s a <strong>young</strong> man.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">My coat is <strong>old</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Tell us about size and measurement</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">John is a <strong>tall</strong> man.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">This film is <strong>long</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Tell us about colour</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Paul wore a <strong>red</strong> shirt.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The sunset was <strong>crimson</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Tell us what something is made of</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The table is <strong>wooden</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">She wore a <strong>cotton</strong> dress.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Tell us about shape</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I sat at a <strong>round</strong> table.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The envelope is <strong>square</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Express a judgement or a value</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">That was a <strong>fantastic</strong> film.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Grammar is <strong>complicated</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"> </p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>2. Using Adjectives</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Adjectives in English usually appear in front of the noun that they modify.</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The <strong>beautiful</strong> girl ignored me.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The <strong>fast red</strong> car drove away.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>- Adjectives can also appear after being and sensing verbs like <em>to be</em>, <em>to seem</em>, <em>to look</em> &amp; <em>to taste</em>.</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Italy is <strong>beautiful</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I don''t think she seems <strong>nice</strong> at all.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">You look <strong>tired</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">This meat tastes <strong>funny</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong>Some exceptions:</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>+ Adjectives appear after the noun in some fixed expressions</strong>.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The <strong>Princess Royal</strong> is visiting Oxford today.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The <strong>President elect</strong> made a speech last night.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">He received a <strong>court martial</strong> the following week.</span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>+ The adjectives <em>involved</em></strong><strong>, <em>present</em> &amp; <em>concerned</em> can appear either before or after the noun that they modify, but with a different meaning depending on the placement.</strong></span></span></span></p>
<p style="text-align: justify; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<table style="height: 242px; width: 100%;">
<tbody>
<tr>
<td style="text-align: center; width: 25.294%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong>Adjective placed after the noun</strong></span></p>
</td>
<td style="text-align: center; width: 32.0025%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong>Meaning</strong></span></p>
</td>
<td style="text-align: center; width: 20.5831%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong>Adjective placed before the noun</strong></span></p>
</td>
<td style="text-align: center; width: 19.1208%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong>Adjective placed before the noun</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 25.294%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">I want to see the people <strong>involved</strong>.</span></p>
</td>
<td style="width: 32.0025%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">I want to see the people who have something to do with this matter.</span></p>
</td>
<td style="width: 20.5831%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">It was an <strong>involved</strong> discussion.</span></p>
</td>
<td style="width: 19.1208%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">The discussion was detailed &amp; complex.</span></p>
</td>
</tr>
<tr>
<td style="width: 25.294%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Here is a list of the people <strong>present</strong> at the meeting.</span></p>
</td>
<td style="width: 32.0025%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Here is a list of the people who were at the meeting.</span></p>
</td>
<td style="width: 20.5831%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">The <strong>present</strong> situation is not sustainable.</span></p>
</td>
<td style="width: 19.1208%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">The current situation is not sustainable.</span></p>
</td>
</tr>
<tr>
<td style="width: 25.294%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">I need to see the man <strong>concerned</strong> by this accusation.</span></p>
</td>
<td style="width: 32.0025%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">I need to see the man who has been accused.</span></p>
</td>
<td style="width: 20.5831%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">A <strong>concerned</strong> father came to see me today.</span></p>
</td>
<td style="width: 19.1208%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">A worried father came to see me today.</span></p>
</td>
</tr>
</tbody>
</table>
<p> </p>
<p><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>3. Common forms of Adjectives</strong></span></span></span></p>
<table style="width: 100%; height: 756px;">
<tbody>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong>Forms</strong></span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong>Examples</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-able</span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">considerable</span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-ible</span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">eligible</span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-ive </span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">effective</span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-ous</span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">dangerous</span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-ic</span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">economic</span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-ical</span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">identical</span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-ful/ness</span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">helpful/helpless</span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-ent</span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">excellent</span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-ory</span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">compulsory</span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-ish</span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">selfish</span></p>
</td>
</tr>
<tr>
<td style="width: 45.977%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">-ial</span></p>
</td>
<td style="width: 54.023%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">special</span></p>
</td>
</tr>
</tbody>
</table>
<p> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'187777b5-d48c-4460-961c-2d6dd73ad936', N'9f6dfe05-743e-4c75-a5e0-517ef47d5e0c', N'CONDITIONAL SENTENCES', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">There are five main ways of constructing conditional sentences in English. In all cases, these sentences are made up of an <em>If</em> clause and a main clause. In many negative conditional sentences, there is an equivalent sentence construction using <strong><em>"unless"</em></strong> instead of <strong><em>"if"</em></strong>.</span></p>
<table style="width: 99.7862%; height: 230px;">
<tbody>
<tr>
<td style="text-align: center; width: 17.0513%;">
<p style="text-align: center;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Conditional sentence type</strong></span></p>
</td>
<td style="text-align: center; width: 37.4799%;">
<p style="text-align: center;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Usage</strong></span></p>
</td>
<td style="text-align: center; width: 12.8502%;">
<p style="text-align: center;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If clause verb tense</strong></span></p>
</td>
<td style="text-align: center; width: 32.5375%;">
<p style="text-align: center;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Main clause verb tense</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 17.0513%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Zero</strong></span></p>
</td>
<td style="width: 37.4799%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">General truths</span></p>
</td>
<td style="width: 12.8502%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Simple present</span></p>
</td>
<td style="width: 32.5375%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Simple present</span></p>
</td>
</tr>
<tr>
<td style="width: 17.0513%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Type 1</strong></span></p>
</td>
<td style="width: 37.4799%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">A possible condition and its probable result</span></p>
</td>
<td style="width: 12.8502%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Simple present</span></p>
</td>
<td style="width: 32.5375%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Simple future</span></p>
</td>
</tr>
<tr>
<td style="width: 17.0513%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Type 2</strong></span></p>
</td>
<td style="width: 37.4799%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">A hypothetical condition and its probable result</span></p>
</td>
<td style="width: 12.8502%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Simple past</span></p>
</td>
<td style="width: 32.5375%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Present conditional or Present continuous conditional</span></p>
</td>
</tr>
<tr>
<td style="width: 17.0513%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Type 3</strong></span></p>
</td>
<td style="width: 37.4799%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">An unreal past condition and its probable result in the past</span></p>
</td>
<td style="width: 12.8502%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Past perfect</span></p>
</td>
<td style="width: 32.5375%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Perfect conditional</span></p>
</td>
</tr>
<tr>
<td style="width: 17.0513%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Mixed type</strong></span></p>
</td>
<td style="width: 37.4799%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">An unreal past condition and its probable result in the present</span></p>
</td>
<td style="width: 12.8502%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Past perfect</span></p>
</td>
<td style="width: 32.5375%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Present conditional</span></p>
</td>
</tr>
</tbody>
</table>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>1. The zero conditional</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">We use the <strong>zero conditional</strong> to talk about things that are always true.</span></p>
<table style="height: 191px; width: 100%;">
<tbody>
<tr>
<td style="width: 49.4662%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If clause</strong></span></p>
</td>
<td style="width: 50.5338%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Main clause</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.4662%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If + simple present</strong></span></p>
</td>
<td style="width: 50.5338%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>simple present</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.4662%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If this thing happens</span></p>
</td>
<td style="width: 50.5338%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">that thing happens.</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><u>Examples: </u></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If you heat ice, it melts.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If it rains, the grass gets wet.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>2. Type 1 conditional</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">We use the<strong> first conditional</strong> when we talk about real and possible situations.</span></p>
<table style="height: 175px; width: 99.4655%;">
<tbody>
<tr>
<td style="width: 49.4628%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If clause</strong></span></p>
</td>
<td style="width: 50.4843%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Main clause</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.4628%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If + simple present</strong></span></p>
</td>
<td style="width: 50.4843%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>simple future</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.4628%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If this thing happens</span></p>
</td>
<td style="width: 50.4843%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">that thing will happen.</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><u>Examples:</u></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If you don''t hurry, you will miss the train.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If it rains today, you will get wet.</span></p>
<p><br/><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>3. Type 2 conditional</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">The <strong>second conditional</strong> is used to talk about ‘unreal’ or impossible things.</span></p>
<table style="height: 235px; width: 99.6259%;">
<tbody>
<tr>
<td style="width: 49.0476%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If clause</strong></span></p>
</td>
<td style="width: 50.9524%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Main clause</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.0476%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If + simple past</strong></span></p>
</td>
<td style="width: 50.9524%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>present conditional or present continuous conditional</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.0476%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If this thing happened</span></p>
</td>
<td style="width: 50.9524%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">that thing would happen. (but I''m not sure this thing will happen) OR</span><br/><br/><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">that thing would be happening.</span></p>
</td>
</tr>
</tbody>
</table>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><u>Examples:</u></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If you went to bed earlier, you would not be so tired.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If I spoke Italian, I would be working in Italy.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>4. Type 3 conditional</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Third conditional</strong> sentences describe the past. They describe something that <strong>didn’t happen. </strong></span></p>
<table style="height: 5px; width: 99.1983%;">
<tbody>
<tr>
<td style="width: 49.3093%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If clause</strong></span></p>
</td>
<td style="width: 50.6907%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Main clause</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.3093%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If + past perfect</strong></span></p>
</td>
<td style="width: 50.6907%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>perfect conditional or perfect continuous conditional</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.3093%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If this thing had happened</span></p>
</td>
<td style="width: 50.6907%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">that thing would have happened. (but neither of those things really happened) OR that thing would have been happening.</span></p>
</td>
</tr>
</tbody>
</table>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><u>Examples:</u></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If you had studied harder, you would have passed the exam.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If it had rained, you would have tten wet.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>5. Mixed type conditional</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">In <strong>mixed conditional </strong>sentences the time in the ‘if’ clause is not the same as the time in the main clause. There can be various combinations.</span></p>
<table style="width: 98.7707%; height: 161px;">
<tbody>
<tr>
<td style="width: 49.4859%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If clause</strong></span></p>
</td>
<td style="width: 50.4608%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Main clause</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.4859%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>If + past perfect or simple past</strong></span></p>
</td>
<td style="width: 50.4608%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>present conditional or perfect conditional</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.4859%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If this thing had happened</span></p>
</td>
<td style="width: 50.4608%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">that thing would happen. (but this thing didn''t happen so that thing isn''t happening)</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><u>Examples:</u></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If I had worked harder at school, I would have a better job now.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">If we had looked at the map, we wouldn''t be lost.</span></p>
<p> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'5ff23b35-de17-4a3e-9e29-385ed515d1c9', N'9f6dfe05-743e-4c75-a5e0-517ef47d5e0c', N'PHRASES & CLAUSES OF EFFECT', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong><em>So</em></strong><span style="font-weight: 400;"> can be followed by an adjective / adverb while </span><strong><em>such</em></strong><span style="font-weight: 400;"> is followed by a noun phrase. We use these structures when we want to say that sth happens because someone or something has a quality to an unusually large extent.</span></span></p>
<table style="width: 100%; height: 258.094px;">
<tbody>
<tr style="height: 51.6094px;">
<td style="width: 50.1163%; height: 51.6094px;">
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">So + adj + that </span></p>
</td>
<td style="width: 49.8837%; height: 51.6094px;">
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">The house was so big (that) we decided to sell it.</span></p>
</td>
</tr>
<tr style="height: 51.6094px;">
<td style="width: 50.1163%; height: 51.6094px;">
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">So + adv + that </span></p>
</td>
<td style="width: 49.8837%; height: 51.6094px;">
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">He dressed so quickly that he put his boots on the wrong feet.</span></p>
</td>
</tr>
<tr style="height: 51.6094px;">
<td style="width: 50.1163%; height: 51.6094px;">
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">such + a/ an + adj + singular countable noun + (that)</span></p>
</td>
<td style="width: 49.8837%; height: 51.6094px;">
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">It was such a big house (that) we decided to sell it.</span></p>
</td>
</tr>
<tr style="height: 51.6094px;">
<td style="width: 50.1163%; height: 51.6094px;">
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">such + adj + plural countable noun + (that)</span></p>
</td>
<td style="width: 49.8837%; height: 51.6094px;">
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">They are such friendly people (that) they make you feel welcome.</span></p>
</td>
</tr>
<tr style="height: 51.6562px;">
<td style="width: 50.1163%; height: 51.6562px;">
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">such + adj + uncountable noun + (that)</span></p>
</td>
<td style="width: 49.8837%; height: 51.6562px;">
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">It was such hot weather (that) we went swimming. </span></p>
</td>
</tr>
</tbody>
</table>
<p style="text-align: justify;"><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">- In addition, we can use the following structures:</span></p>
<ul style="text-align: justify;">
<li aria-level="1" style="font-weight: 400;"><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">too + adj/ adv + to_infinitive</span></li>
</ul>
<p style="text-align: justify;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>E.g:</strong><span style="font-weight: 400;"> He is </span><strong>too short</strong><span style="font-weight: 400;"> to play baseball.</span></span></p>
<p style="text-align: justify;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">       Tim spoke </span><strong>too quickly</strong><span style="font-weight: 400;"> to understand.  </span></span></p>
<p style="text-align: justify;"><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong><span style="text-decoration: underline;">Note:</span></strong> "Too much" &amp; "Too many" are often used before noun.</span></p>
<p style="text-align: justify;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>E.g: </strong><span style="font-weight: 400;">Andrew spent </span><strong>too much time</strong><span style="font-weight: 400;"> working.</span></span></p>
<ul style="text-align: justify;">
<li aria-level="1" style="font-weight: 400;"><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Adj/ Adv + enough + to_infinitive</span></li>
</ul>
<p style="text-align: justify;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>E.g: </strong><span style="font-weight: 400;">Mary is </span><strong>old enough</strong><span style="font-weight: 400;"> to do what she wants.</span></span></p>
<p style="text-align: justify;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>        </strong><span style="font-weight: 400;">He didn’t jump </span><strong>high enough</strong><span style="font-weight: 400;"> to win a prize.</span></span></p>
<p style="text-align: justify;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="text-decoration: underline;"><strong>Note:</strong></span><span style="font-weight: 400;"> "Enough" is often used before noun.</span></span></p>
<p style="text-align: justify;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>E.g:</strong><span style="font-weight: 400;"> I have </span><strong>enough strength</strong><span style="font-weight: 400;"> to lift that box.</span></span></p>
<p style="text-align: justify;"> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'3eb1ba03-67b5-4ccc-8892-49c23829f828', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'CONJUNCTIONS', N'<div class="dialog-theory-modal-content-text"><p align="center" style="text-align: center; margin-bottom: 11px;"> </p>
<p style="margin-top: 15px; text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">1. What is Conjunction?</span></strong></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- Conjunctions are words that link other words, phrases, or clauses together.</span></span></span></span></span></p>
<p style="text-align: justify;"> </p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">2. Types of Conjunctions</span></strong></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #eccafa;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">2.1. Coordinating conjunctions:</span> </strong></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Coordinating conjunctions allow you to join words, phrases, and clauses of equal grammatical rank in a sentence. The most common coordinating conjunctions are <strong><em>for, and, nor, but, or, yet, and so</em></strong>; you can remember them by using the mnemonic device FANBOYS.</span></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><em><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Examples:</span></em></strong></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">The new building is very modern <strong>and</strong> innovative</span></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">The meeting started thirty minutes a, <strong>yet</strong> some of the seats are still vacant.</span></span></span></span></span></p>
<p style="text-align: justify;"> </p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #eccafa;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">2.2. Correlative conjunctions:</span></strong></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Correlative conjunctions are pairs of conjunctions that work together. Some examples are <strong><em>either/or, neither/nor, </em></strong>and <strong><em>not only/but also.</em></strong></span></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><em><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Examples:</span></em> </strong></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Both</span></strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"> the color <strong>and</strong> the style match our product’s concept.</span></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Not only</span></strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"> the manager <strong>but also</strong> the staffs agree with the new contract.</span></span></span></span></span></p>
<p style="text-align: justify;"> </p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #eccafa;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">2.3. Subordinating conjunctions:</span></strong></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Subordinating conjunctions join independent and dependent clauses. A subordinating conjunction can signal a cause-and-effect relationship, a contrast, or some other kind of relationship between the clauses. Common subordinating conjunctions are <strong><em>because, since, as, although, though, while, and whereas. </em></strong>Sometimes an adverb, such as until, after, or before can function as a conjunction.</span></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><em><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Examples:</span></em> </strong></span></span></span></span></p>
<p style="text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Although </span></strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">some applications were submitted late, we decided to accept them all. </span></span></span></span></span></p>
<p style="margin-bottom: 16px; text-align: justify;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Mr. Martino will take charge of this project <strong>while</strong> the manager is away. </span></span></span></span></span></p>
<p style="margin-bottom: 16px; text-align: justify;"> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'28a2d3b3-f8fd-4b32-a215-504ad330108c', N'9f6dfe05-743e-4c75-a5e0-517ef47d5e0c', N'NUMERIC EXPRESSIONS BEFORE NOUNS', N'<div class="dialog-theory-modal-content-text"><p style="margin-bottom: 11px; text-align: center;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>1. MUCH, MANY AND A LOT OF</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- We use <strong><em>Many</em></strong> and <strong><em>A lot of</em></strong> with countable nouns in the plural.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">They saw <strong>many stars</strong> in the sky.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">They grow a <strong>lot of bananas</strong> in Ecuador.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- We use <strong><em>Much</em></strong> and <strong><em>A lot of</em></strong> with uncountable nouns.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">They eat <strong>a lot of rice</strong> in Malaysia.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">My family doesn’t eat <strong>much red meat.</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-color: #fbeeb8;"><strong><u>NOTE:</u></strong></span><strong> </strong>We prefer to use <strong><em>A lot of</em></strong> and <strong><em>Lots of </em></strong>in affirmative sentences and <strong><em>Much</em></strong> and <strong><em>Many</em></strong> in negative sentences and questions.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>2. A FEW AND FEW/ A LITTLE AND LITTLE</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">These expressions show the speaker’s attitude towards the quantity he/ she is referring to.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- <strong><em>A few</em></strong> (for countable nouns) and <strong><em>A little</em></strong> (for uncountable nouns) describe the quantity in a positive way.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I’ve t <strong>a few</strong> friends (Maybe not many, but enough)</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I’ve t <strong>a little</strong> money (I’ve t enough to live on)</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- <strong><em>Few</em></strong> and <strong><em>Little</em></strong> describe the quantity in a negative way.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples: </em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Few</strong> people visited him in hospital (=he has almost no visitors)</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">He had <strong>little</strong> money (=almost no money)</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="color: #000000; background-color: #f8cac6;"><strong><span style="font-size: 16px; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">3. ALL </span></span></span></strong></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>“All”</em></strong> is used to talk about a whole group, with a special emphasis on the fact that nothing has been left out.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- It can be used in the following ways:</span></span></span></p>
<table style="width: 99.4655%; height: 297px;">
<tbody>
<tr>
<td rowspan="5" style="width: 10.1614%;">
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">All +</span></p>
</td>
<td style="width: 12.8496%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">1</span></p>
</td>
<td style="width: 21.4517%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">-</span></p>
</td>
<td style="width: 55.4844%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">uncountable noun or countable noun in plural</span></p>
</td>
</tr>
<tr>
<td style="width: 12.8496%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">2</span></p>
</td>
<td style="width: 21.4517%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">the</span></p>
</td>
<td style="width: 55.4844%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">uncountable noun or countable noun in plural</span></p>
</td>
</tr>
<tr>
<td style="width: 12.8496%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">3</span></p>
</td>
<td style="width: 21.4517%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">my, your, etc</span></p>
</td>
<td style="width: 55.4844%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">countable noun in plural</span></p>
</td>
</tr>
<tr>
<td style="width: 12.8496%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">4a</span></p>
</td>
<td style="width: 21.4517%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">this, that</span></p>
</td>
<td style="width: 55.4844%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">uncountable noun</span></p>
</td>
</tr>
<tr>
<td style="width: 12.8496%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">4b</span></p>
</td>
<td style="width: 21.4517%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">these, those</span></p>
</td>
<td style="width: 55.4844%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">countable noun in plural</span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"><span style="color: #000000; background-color: #ffffff;"><em><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif; background-color: #ffffff;">Examples: </span></em></span></p>
<table style="height: 372px; width: 99.1983%;">
<tbody>
<tr>
<td style="width: 44.5292%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">1</span></p>
</td>
<td style="width: 55.4708%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><strong>All cheese </strong>contains protein</span><br/><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><strong>All children </strong>need affection</span></p>
</td>
</tr>
<tr>
<td style="width: 44.5292%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">2</span></p>
</td>
<td style="width: 55.4708%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><strong>All the people </strong>in the room were silent.</span><br/><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">Have you eaten <strong>all the bread</strong>?</span></p>
</td>
</tr>
<tr>
<td style="width: 44.5292%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">3</span></p>
</td>
<td style="width: 55.4708%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">I''ve invited <strong>all my friends </strong>to the party.</span></p>
</td>
</tr>
<tr>
<td style="width: 44.5292%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">4a</span></p>
</td>
<td style="width: 55.4708%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">Who''s left <strong>all this paper </strong>on my desk?</span></p>
</td>
</tr>
<tr>
<td style="width: 44.5292%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">4b</span></p>
</td>
<td style="width: 55.4708%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">Look at <strong>all those </strong>balloons!</span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="color: #000000; background-color: #f8cac6;"><strong><span style="font-size: 16px; background-color: #f8cac6;">4. BOTH </span></strong></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong><em>“Both”</em></strong> refers to the whole pair and is equivalent to "one and the other".</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- It can be used in the following ways:</span></span></span></p>
<table style="height: 248px; width: 98.8776%;">
<tbody>
<tr>
<td rowspan="4" style="width: 14.3321%;">
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">Both +</span></p>
</td>
<td style="width: 8.05841%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">1</span></p>
</td>
<td style="width: 22.283%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">-</span></p>
</td>
<td rowspan="4" style="width: 55.3265%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">   countable noun in the plural</span></p>
</td>
</tr>
<tr>
<td style="width: 8.05841%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">2</span></p>
</td>
<td style="width: 22.283%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">the</span></p>
</td>
</tr>
<tr>
<td style="width: 8.05841%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">3</span></p>
</td>
<td style="width: 22.283%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">my, your, etc.</span></p>
</td>
</tr>
<tr>
<td style="width: 8.05841%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">4</span></p>
</td>
<td style="width: 22.283%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">these, those</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><em>Examples: </em></span></p>
<table style="width: 98.6638%; height: 196px;">
<tbody>
<tr>
<td style="width: 22.4392%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">1</span></p>
</td>
<td style="width: 77.5074%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><strong>Both children </strong>were born in Italy.</span></p>
</td>
</tr>
<tr>
<td style="width: 22.4392%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">2</span></p>
</td>
<td style="width: 77.5074%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">He has crashed <strong>both (of) the cars.</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 22.4392%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">3</span></p>
</td>
<td style="width: 77.5074%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><strong>Both (of) my parents </strong>have fair hair.</span></p>
</td>
</tr>
<tr>
<td style="width: 22.4392%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">4</span></p>
</td>
<td style="width: 77.5074%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">You can take <strong>both (of) these books </strong>back to the library.</span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="color: #000000; background-color: #f8cac6;"><strong><span style="font-size: 16px; font-family: arial, helvetica, sans-serif; background-color: #f8cac6;">5. EACH </span></strong></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>-<strong> “Each”</strong></em><strong> </strong>is a way of seeing the members of a group as individuals.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Each </strong>child received a present. </span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Each of </strong>the children received a present.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="color: #000000; background-color: #f8cac6;"><strong><span style="font-size: 16px; background-color: #f8cac6;">6. EVERY </span></strong></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>-<strong> “Every”</strong></em><strong> </strong>is a way of seeing a group as a series of members</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Example</em>: <strong>Every </strong>child in the world deserves affection.<em> </em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- It can also express different points in a series, especially with time expressions:</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Every </strong>third morning John es jogging. </span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">This magazine is published <strong>every </strong>other week.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="color: #000000; background-color: #f8cac6; font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>7. EITHER </strong></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>- <strong>“Either”</strong></em> is positive and when used alone, refers to one of the two members of the pair. It is equivalent to "one or the other". Because it refers to just one member of a pair, either must be used before a singular noun. It can also be used with a plural noun or pronoun if followed by "of".</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I can stay at <strong>either hotel</strong>.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Either day</strong> is fine for me.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">There are two chairs here. You can take <strong>either of them</strong>.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Either of you</strong> can come.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong><em>“Either” </em></strong>can also be used with or in a construction that talks about each member of the pair in turn. The meaning remains the same, but in this case either is not functioning as a distributive. It is functioning as a conjunction.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="color: #000000; background-color: #ffffff;"><em><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Examples:</span></span></span></em></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">You can have <strong>either</strong> ice cream <strong>or</strong> chocolate cake.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I will come on <strong>either</strong> Thursday <strong>or</strong> Friday.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="color: #000000; background-color: #f8cac6;"><strong><span style="font-size: 16px; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">8. NEITHER </span></span></span></strong></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong><em>“Neither”</em> </strong>is negative and when used alone, refers to the whole pair. It is equivalent to "not one or the other". Because it refers to just one member of a pair, neither must be used before a singular noun. It can also be used with a plural noun or pronoun if followed by "of".</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples: </em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Neither chair</strong> is any od.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Neither brother</strong> came.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong><em>“Neither”</em></strong> can also be used with nor in a construction that talks about each member of the pair in turn. The meaning remains the same, but in this case neither is not functioning as a distributive. It is functioning as a conjunction.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">You can have <strong>neither </strong>cookies <strong>nor</strong> candy.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">It is <strong>neither</strong> raining <strong>nor</strong> snowing.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong><em>“Neither”</em> </strong>is negative and when used alone, refers to the whole pair. It is equivalent to "not one or the other". Because it refers to just one member of a pair, neither must be used before a singular noun. It can also be used with a plural noun or pronoun if followed by "of".</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Examples: </em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Neither chair</strong> is any od.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>Neither brother</strong> came.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- <strong><em>“Neither”</em></strong> can also be used with nor in a construction that talks about each member of the pair in turn. The meaning remains the same, but in this case neither is not functioning as a distributive. It is functioning as a conjunction.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Examples:</em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">You can have <strong>neither </strong>cookies <strong>nor</strong> candy.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">It is <strong>neither</strong> raining <strong>nor</strong> snowing.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="background-color: #fbeeb8; color: #000000;"><strong><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #fbeeb8;">NOTE:</span></strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>1. Numeric expression before countable and uncountable nouns</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><strong>Numeric expression before countable nouns only: </strong>each, every, another, many, a few, few, fewer, several, one of the, BOTH a number of, a variety of, etc.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><strong>Numeric expression before uncountable nouns only: </strong>much, a little, little, less, etc.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><em>Examples:</em><strong> </strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">We don''t have very many copies left. (copies- countable noun)</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">There was little doubt in my mind. (doubt- uncountable noun)</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>2. Numeric expressions before singular and plural countable nouns</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><strong>Numeric expressions before singular countable nouns: </strong>each, every, another, etc</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><strong>Numeric expressions before plural countable nouns:</strong> many, a lot of, one of the, most, a few, few, several, both, a number of, a variety of, some, all, other, etc.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;"><em>Examples:</em> </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">She knows every student in the school. (student- singular noun).</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #ffffff;">Both the women were French. (women- plural noun)</span></p>
<p> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'2ff2006b-c181-43b0-b9f3-5a27da3305e8', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'PASSIVE VOICE', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>1. Functions of the passive voice</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">The passive voice is used to show interest in the person or object that experiences an action rather than the person or object that performs the action. In other words, the most important thing or person becomes the subject of the sentence.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>2. Forming the passive voice</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">The passive voice in English is composed of two elements:</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>The appropriate form of the verb ''to be'' + past participle</strong></span></p>
<table>
<tbody>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Affirmative</strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Negative</strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Interrogative</strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Negative interrogative</strong></span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">The house was built in 1899.      </span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">The house wasn''t built in 1899.</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Was the house built in 1899?</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Wasn''t the house built in 1899?</span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"> </span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">These houses were built in 1899.</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">These houses weren''t built in 1899.</span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Were these houses built in 1899?    </span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Weren''t these houses built in 1899?</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"> </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>3. To keep, active and passive voice</strong></span></p>
<table>
<tbody>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Tense</strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Active voice</strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Passive voice</strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Active sentence</strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Passive equivalent</strong></span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Simple present </strong><strong> </strong></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">keep</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">is kept</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">I keep the butter in the fridge.</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">The butter is kept in the fridge.</span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Present continuous</strong></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">is keeping</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">is being kept</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">John is keeping my house tidy.</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">My house is being kept tidy.</span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Simple past      </strong><strong> </strong></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">kept </span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">was kept</span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Mary kept her schedule meticulously.      </span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Mary''s schedule was kept meticulously.</span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Past continuous      </strong><strong> </strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">was keeping      </span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">was being kept </span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">The theater was keeping a seat for you. </span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">A seat was being kept for you.</span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Present perfect  </strong><strong> </strong></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">have kept </span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">have been kept </span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">I have kept all your old letters.    </span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">All your old letters have been kept.</span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Past perfect      </strong><strong> </strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">had kept</span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">had been kept </span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">He had kept up his training regimen for a month.</span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">His training regimen had been kept up for a month.</span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Simple Future   </strong><strong> </strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">will keep </span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">will be kept</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Mark will keep the ficus.</span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">The ficus will be kept.</span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Conditional Present </strong><strong> </strong></span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">would keep      </span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">would be kept </span></p>
</td>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">If you told me, I would keep your secret.    </span><span style="font-weight: 400;"> </span></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">If you told me, your secret would be kept.</span></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Conditional Past</strong></span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">would have kept </span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">would have been kept </span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">I would have kept your bicycle here if you had left it with me.  </span></p>
</td>
<td>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Your bicycle would have been kept here if you had left it with me.</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"> </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>4. Passive voice with infinitives</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">The infinitive passive voice is used after modal verbs and other most verbs normally followed by an infinitive.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong><em>Examples:</em></strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">You </span><strong>have to be tested </strong><span style="font-weight: 400;">on your English grammar.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">John </span><strong>might be promoted</strong><span style="font-weight: 400;"> next year.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">She </span><strong>wants to be invited</strong><span style="font-weight: 400;"> to the party.</span></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"> </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>5. Passive voice with gerunds</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Gerunds are used after prepositions and verbs normally followed by a gerund.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong><em>Examples:</em></strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">I </span><strong>remember being taught</strong><span style="font-weight: 400;"> to drive.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">The children are excited </span><strong>about being taken</strong><span style="font-weight: 400;"> to the zoo.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">The children are excited </span><strong>to be taken</strong><span style="font-weight: 400;"> to the zoo.</span></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"> </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>6. Using "to need" in passive constructions</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">You can also use the verb to need followed by the gerund in an active construction with a passive meaning. The important thing in our minds in these sentences is the person or thing that will experience the action, not the person performing the action.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong><em>Examples:</em></strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">The ceiling </span><strong>needs painting</strong><span style="font-weight: 400;">.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">My hair </span><strong>needs cutting.</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">That faucet</span><strong> needs fixing.</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;"> </span><strong><em>*** NOTE:</em></strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Only </span><strong>Transitive Verb</strong><span style="font-weight: 400;"> has two voices - </span><strong>Active and Passive Voices</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"> </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>7. Subjects, Verb and Objects</strong></span></p>
<table>
<tbody>
<tr>
<td>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Subjects</strong><span style="font-weight: 400;"> - One who does an action.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Verb</strong><span style="font-weight: 400;"> - Action is called verb.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Objects</strong><span style="font-weight: 400;"> - One who is affected by the action of subject.</span></span></p>
</td>
</tr>
</tbody>
</table>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">Example:</span></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong><em>The teacher punished the boy.</em></strong></span></p>
<ul>
<li aria-level="1" style="font-weight: 400;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">Subject - teacher</span></em><em><span style="font-weight: 400;"><br/></span></em><em><span style="font-weight: 400;">Verb - punished</span></em><em><span style="font-weight: 400;"><br/></span></em><em><span style="font-weight: 400;">Object – boy</span></em></span></li>
</ul>
<ul>
<li aria-level="1" style="font-weight: 400;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>The teacher punished the boy.</strong><span style="font-weight: 400;"> (Active Voice)</span><span style="font-weight: 400;"><br/></span><span style="font-weight: 400;">When this sentence is converted to passive voice the ''object'' act as ''subject'' and vice-versa.</span></span></li>
<li aria-level="1" style="font-weight: 400;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>The boy was punished by the teacher.</strong><span style="font-weight: 400;"> (Passive Voice)</span><span style="font-weight: 400;"><br/></span><span style="font-weight: 400;">Subject - boy</span><span style="font-weight: 400;"><br/></span><span style="font-weight: 400;">Verb - punished</span><span style="font-weight: 400;"><br/></span><span style="font-weight: 400;">Object - teacher</span><span style="font-weight: 400;"><br/></span><span style="font-weight: 400;"> </span></span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong><em>Example:</em></strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              The dog bit the man. (Active Voice)</span></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              The man was bitten by the dog. (Passive Voice)</span></em></span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              I gave him a rupee. (Active Voice)</span></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              A rupee was given to him by me. (Passive Voice)</span></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              He was given a rupee by me. (Passive Voice)</span></em></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"> </span></p>
<ul>
<li aria-level="1" style="font-weight: 400;"><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">When Active Voice contains two object the passive voice can be written in 2 forms such as:</span></li>
</ul>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong><em>Example:</em></strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              The teacher gave me two books. (Active Voice)</span></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              Two books were given to me by the teacher. (Passive Voice)</span></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              I was given two books by the teacher. (Passive Voice)</span></em></span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">Here ''two books''(Direct Object) and ''me''(Indirect Object) are the two objects.</span></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              I gave him a rupee. (Active Voice)</span></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              A rupee was given to him by me. (Passive Voice)</span></em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><em><span style="font-weight: 400;">              He was given a rupee by me. (Passive Voice)</span></em></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"> </span></p>
<ul>
<li aria-level="1" style="font-weight: 400;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">If Active Voice contains ''Continuous Form Of Verb (verb showing a continuous action) then use ''being'' with verb in Passive Voice</span><span style="font-weight: 400;"><br/></span><span style="font-weight: 400;"><br/></span><strong><em>Example:</em></strong><strong><em><br/></em></strong><strong> </strong><span style="font-weight: 400;">             </span><em><span style="font-weight: 400;"> Juli is writing a letter. (Active Voice)</span></em><em><span style="font-weight: 400;"><br/></span></em><em><span style="font-weight: 400;">              A letter is being written by juli. (Passive Voice)</span></em></span></li>
</ul>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"> </span></p>
<ul>
<li aria-level="1" style="font-weight: 400;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">If Active Voice is in ''Perfect Tense'' then use ''been'' in Passive Voice</span><span style="font-weight: 400;"><br/></span><span style="font-weight: 400;"><br/></span><strong><em>Example:</em></strong><strong><em><br/></em></strong><strong><em> </em></strong><em><span style="font-weight: 400;">              John has killed a snake. (Active Voice)</span></em><em><span style="font-weight: 400;"><br/></span></em><em><span style="font-weight: 400;">              A snake has been killed by John. (Passive Voice)</span></em></span></li>
</ul>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;"> </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">If Active Voice is in ''Future Tense'' then use ''been'' in Passive Voice</span><span style="font-weight: 400;"><br/></span><span style="font-weight: 400;"><br/></span><strong><em>Example:</em></strong><strong><em><br/></em></strong><strong><em> </em></strong><em><span style="font-weight: 400;">              He will have brought some oranges. (Active Voice)</span></em><em><span style="font-weight: 400;"><br/></span></em><em><span style="font-weight: 400;">              Some oranges will have been brought by him. (Passive Voice)</span></em></span></p>
<p> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'cd527088-daf2-43ae-95e5-636fbb79e457', N'9f6dfe05-743e-4c75-a5e0-517ef47d5e0c', N'PHRASES & CLAUSES OF PURPOSE', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">- You use a purpose clause when you want to </span><strong>explain the reason</strong><span style="font-weight: 400;"> for a person''s action.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">- The most common type of purpose clause is a </span><strong>to-infinitive</strong><span style="font-weight: 400;"> clause.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>E.g: </strong><span style="font-weight: 400;">Sarah went to the computer lab</span><strong> to </strong><span style="font-weight: 400;">print out her research report.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">This can only be used </span><span style="font-weight: 400;">if the subject of the main verb is the same as the subject of the infinitive clause.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">- In formal writing, </span><strong>in order to</strong><span style="font-weight: 400;"> and </span><strong>so as to</strong><span style="font-weight: 400;"> are often used when the </span><span style="font-weight: 400;">subjects are the same.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>E.g: </strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Sarah went to the computer lab </span><strong>in order to</strong><span style="font-weight: 400;"> print out her research report.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Sarah went to the computer lab </span><strong>so as to </strong><span style="font-weight: 400;">print out her research report.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">- </span><strong>So</strong><span style="font-weight: 400;"> (informal), </span><strong>so that </strong><span style="font-weight: 400;">and </span><strong>in order that </strong><span style="font-weight: 400;">are used with a subordinate clause. The subjects in both clauses can be the same or different.</span></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">These conjunctions are usually followed by a modal verb.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>E.g: </strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">I gave Ann my telephone number </span><strong>so </strong><span style="font-weight: 400;">she </span><strong>could</strong><span style="font-weight: 400;"> contact me.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">I hurried up </span><strong>so that</strong><span style="font-weight: 400;"> I </span><strong>would</strong><span style="font-weight: 400;"> not be late.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Today I will make dinner</span><strong> in order that </strong><span style="font-weight: 400;">you </span><strong>can </strong><span style="font-weight: 400;">rest.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">-  </span><strong>So that/ In order that + Subject + can/ will + verb = Future</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Ex: I''ve come here</span><strong> so that we can talk</strong><span style="font-weight: 400;">.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">I will give her a key </span><strong>so that/in order that she can get </strong><span style="font-weight: 400;">into the flat at any time.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">- </span><strong>So that/ In order that + Subject + could/ would + verb = past</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Ex: He spoke quietly </span><strong>so that nobody could hear him.</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">I left the note on the pillow </span><strong>so that/in order that he could find it.</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>NOTE:</strong><strong> </strong><span style="font-weight: 400;">For negative purpose, we use: in order not to/ so as not to + V_infinitive</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>E.g: </strong><span style="font-weight: 400;">We walked in quietly </span><strong>so as not to</strong><span style="font-weight: 400;"> wake up the children.</span></span></p>
<p> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'a53b51e8-f4d8-4964-9f75-6849a03a9c19', N'6e778ced-ec5c-48ef-bfac-56b6cd72175f', N'Part 6: Hoàn thành đoạn văn', N'<p style="text-align: center;"><u>chữ gạch dưới</u></p><p style="text-align: center;"><em>chữ nghiêng</em></p><p style="text-align: center;"><strong>chữ đậm</strong></p><p style="text-align: center;"><span style="font-size: 24px;">chữ to</span></p><ul><li><span style="font-size: 24px;">item 1</span></li><li><span style="font-size: 24px;">item 2<br></span><br></li><br></ul><table style="border-collapse: collapse; width: 1009px; height: 80px;"><tbody> <tr> <td style="width: 33.3333%;">header 1</td> <td style="width: 33.3333%;">header 2</td> <td style="width: 33.3333%;">header 3</td></tr> <tr> <td style="width: 33.3333%;">content 1</td> <td style="width: 33.3333%;">content 2</td> <td style="width: 33.3333%;">content 3</td></tr> <tr> <td style="width: 33.3333%;">center content 1</td> <td style="width: 33.3333%;">center content 1<br></td> <td style="width: 33.3333%;">center content 1</td></tr></tbody></table><p>''</p>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'40f320f4-4d53-41e1-961e-73a0e21ba101', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'VERBS', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>1. What is a verb?</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">A verb can be defined as a word that expresses an action or a state of being. Most verbs provide key information about the subject of a sentence and are central to the sentence''s predicate.</span></p>
<p> </p>
<p><span style="background-color: #f8cac6;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;">2. Types of verbs</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">While all verbs express action or describe a state of being, there are not just two types of verbs. Explore six key verb types to further expand your knowledge of this all-important part of speech.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;"><strong>2.1. Action verbs</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Most verbs are action verbs. As the name indicates, these verbs describe actions. They describe things a person can do or demonstrate. </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>E.g. </strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>to accept </strong><span style="font-weight: 400;">- She</span><strong> accepted </strong><span style="font-weight: 400;">the job offer.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>to ask</strong><span style="font-weight: 400;"> - She </span><strong>asked</strong><span style="font-weight: 400;"> to borrow a pencil.</span></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Action verbs can be either transitive or intransitive.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;"><strong>2.2. Transitive verbs</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Transitive verbs are action verbs that always express doable activities that relate or affect someone or something else. These other things are generally direct objects, nouns or pronouns that are affected by the verb, though some verbs can also take an indirect object, such as show, take, and make. In a sentence with a transitive verb, someone or something receives the action of the verb.</span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">E.g.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Molly </span><strong>drove </strong><span style="font-weight: 400;">the car.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Sam </span><strong>wants</strong><span style="font-weight: 400;"> a bike.</span></span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;"><strong>2.3. Intransitive verbs</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Intransitive verbs are also verbs that show action. Unlike transitive verbs, they are ones that are not followed by a direct object. Nothing is receiving the action of the verb. Instead, the action is being performed by the subject of the sentence.</span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">E.g. </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">The plane</span><strong> lands</strong><span style="font-weight: 400;"> at 5 o''clock.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">I </span><strong>arrived</strong><span style="font-weight: 400;"> at the coffee shop.</span></span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;"><strong>2.4. Linking verbs</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Linking verbs do not express action. Rather, they connect the subject to the additional information that''s about to come. In other words, they link the subject to details about the subject. Various forms of the verb "to be" are linking verbs, including verbs like "am," "is," "are," and "were."</span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">E.g. </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Damien </span><strong>is </strong><span style="font-weight: 400;">an expert craftsman.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">I </span><strong>am </strong><span style="font-weight: 400;">Jennifer.</span></span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;"><strong>2.5. Helping verbs</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Helping verbs do exactly what it seems like they should do. They help. That is, they help the main verb of the sentence by extending its meaning. They are used in cases where the linking verb on its own is not sufficient to form a complete thought or sentence.</span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">E.g.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">I </span><strong>have </strong><span style="font-weight: 400;">been there before.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">I </span><strong>am </strong><span style="font-weight: 400;">walking to the store.</span></span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;"><strong>2.6. Stative verbs</strong></span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">Stative verbs are more difficult to identify as verbs. They describe a position or state of being; they have no duration, no beginning and no end. They''re more intangible than action verbs. While they don''t perform any action, notice that they''re typically followed by a direct object.</span></p>
<p><span style="font-weight: 400; font-family: arial, helvetica, sans-serif; font-size: 12pt;">E.g. </span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">You </span><strong>deserve </strong><span style="font-weight: 400;">a prize.</span></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Jane </span><strong>dislikes </strong><span style="font-weight: 400;">humidity.</span></span></p>
<p> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'c7a710cb-2d3c-4b67-b562-7626338202ef', N'9f6dfe05-743e-4c75-a5e0-517ef47d5e0c', N'TO INFINITIVES AND GERUNDS', N'<div class="dialog-theory-modal-content-text"><p align="center" style="text-align: center; margin-bottom: 11px;"> </p>
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; background-color: #bfedd2; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">INFINITIVES</span></strong></span></span></span></p>
<p style="margin-bottom: 16px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- An <strong><em>infinitive</em></strong> is a verb combined with the word to. Most often, an infinitive acts as a noun in the sentence. Less frequently, it acts as an adjective or an adverb.</span></span></span></span></span></p>
<p style="margin-bottom: 16px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I want <strong>to </strong> home early today. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I hope <strong>to be</strong> chosen as a member. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I prefer <strong>to </strong> there earlier. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">You need <strong>to consider</strong> various rules in writing sentences. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">You have <strong>to explain</strong> your reasoning in detail. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">You might wish <strong>to act</strong> as a teacher. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="color: black;">To leave</span></strong><span style="color: black;"> for a vacation is my only wish at this time. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">A common mistake in a relationship is <strong>not to trust</strong> the other person. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Help me <strong>to save</strong> the trees! </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="color: black;">To be mentally healthy</span></strong><span style="color: black;">, you must read books. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Do you want me <strong>to fill out</strong> this form? </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Here is our <strong>to-do list</strong>. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It was nice <strong>to meet</strong> you. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It is time <strong>to move</strong> on. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I am young enough <strong>to change</strong> my habits. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Don''t forget <strong>not to make</strong> grammar mistakes. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">You are required <strong>to leave</strong> all your belongings here. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I came <strong>to see</strong> a doctor today. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">You have <strong>to work</strong> harder to succeed. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I need <strong>to take </strong>three more classes to finish my graduate study. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I t closer to the speaker <strong>to listen</strong> clearly. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Be sure <strong>to check</strong> if you have tickets. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I am ing <strong>to buy</strong> the new computer. </span></span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- Generally, it is not common to split to and the verb except for when you want to emphasize the verb.</span></span></span></span></span></p>
<p style="margin-bottom: 16px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I want you <strong>to immediately stop</strong> doing that. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">You have <strong>to seriously work</strong> hard to succeed. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">You need <strong>to definitely explain</strong> your reasoning in detail. </span></span></span></span></p>
<p> </p>
<p><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- Commonly, an <strong><em>infinitive</em></strong> is used with the subject it. The sentence structure is "It is + <strong><em>infinitive</em></strong>" It refers to the <strong><em>infinitive</em></strong>. This expression is used in many ways.</span></span></span></span></span></p>
<p style="margin-bottom: 16px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It is time <strong>to do</strong> Math. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It is common <strong>to think</strong> that way. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It is appropriate <strong>to keep</strong> a low profile. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It was nice <strong>to see</strong> you. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It was my pleasure <strong>to meet</strong> you. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It was my honor <strong>to have</strong> dinner with you. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It is od <strong>to see</strong> you. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It was great <strong>to  on</strong> a trip with them. </span></span></span></span></p>
<p> </p>
<p><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background: #ffffff;"><span style="color: black;">- Both gerunds and <strong><em>infinitive</em></strong> phrases can function as nouns, in a variety of ways. Gerunds and infinitives can follow certain verbs but not others. You need to remember which verbs can be followed by only a gerund or only an <strong><em>infinitive</em></strong>.</span></span><br/><br/><span style="color: black;">+ <strong>Verbs that can precede only gerunds: </strong>consider, suggest, enjoy, deny, avoid, miss, mind, practice, postpone, resist, finish, quit, give up, put off<br/><br/><strong>+ Verbs that can precede only <em>infinitives</em>: </strong>offer, decide, hope, attempt, promise, agree, afford, deserve, refuse, undertake, learn, fail, seem, appear, tend, pretend, choose, demand, desire, guarantee, claim, manage, determine, expect, want, wish<br/><br/>+ <strong>Verbs that can precede either gerunds or <em>infinitives</em> without changing meanings: </strong>continue, like, love, begin, start, propose, neglect, stand, hate<br/><br/>+ <strong>Verbs that can precede either gerunds or <em>infinitives</em> but change meanings: </strong>forget, remember, stop, try</span></span></span></span></p>
<p style="margin-bottom: 16px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><span style="color: black;">I <strong>stopped watching</strong> the movie. (I no longer watched the movie.) </span></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 11pt;"><span style="line-height: 150%;"><span style="font-family: Calibri,sans-serif;"><em><span style="font-size: 14.0pt;"><span style="font-family: ''Arial'',''sans-serif'';"><span style="color: black;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;">I <strong>stopped to watch</strong> the movie. (I stopped what I was doing to watch the movie.)</span></span> </span></span></span></em></span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px; text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #bfedd2;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">GERUNDS</span></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #f8cac6; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>1. Usage</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">The gerund looks<em> </em>exactly the same as a present participle, and for this reason it is now common to call both forms <em>''the <strong>-ing form''</strong>. </em>However it is useful to understand the difference between the two. The gerund always has the same function as a noun (although it looks like a verb), so it can be used:</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- as the subject of the sentence</span></span></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="color: black;">Hunting </span></strong><span style="color: black;">tigers is dangerous. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="color: black;">Flying </span></strong><span style="color: black;">makes me nervous. </span></span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">- <strong>as the complement of the verb <em>''to be'' </em></strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><span style="color: black;">One of his duties is <strong>attending </strong>meetings. </span></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><span style="color: black;">The hardest thing about learning<strong> </strong>English is <strong>understanding</strong> the gerund. </span></em></span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- <strong>after prepositions</strong></span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">+ The gerund <em>must </em>be used when a verb comes after a preposition</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Can you sneeze without <strong>opening </strong>your mouth? </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">She is od at <strong>painting</strong>. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">They''re keen on <strong>windsurfing</strong>. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">My father decided against <strong>postponing </strong>his trip to Hungary. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">+ This is also true of certain expressions ending in a preposition, e.g. <em>in spite of, there''s no point in..: </em></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">There''s no point in <strong>waiting</strong>. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">In spite of <strong>missing </strong>the train, we arrived on time. </span></span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- <strong>after some phrasal verbs</strong></span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Phrasal verbs are composed of a verb + preposition or adverb.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">When will you <strong>give up smoking?</strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">She always<strong> puts off ing </strong>to the dentist.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">There are some phrasal verbs that include the word "to" as a preposition for example <strong><em>to look forward to, to take to, to be accustomed to, to get around to, &amp; to be used to. </em></strong>It is important to recognize that the word "to" is a preposition in these cases because it must be followed by a gerund. It is not part of the infinitive form of the verb. You can check whether "to" is a preposition or part of the infinitive. If you can put the pronoun "it" after the word "to" and form a meaningful sentence, then the word "to" is a preposition and must be followed by a gerund.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>look forward to</strong> <strong>hearing</strong> from you soon.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>look forward to it.</strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I am <strong>used to waiting</strong> for buses.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I am <strong>used to it.</strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- <strong>in compound nouns</strong></span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">In compound nouns using the gerund, it is clear that the meaning is that of a noun, not of a continuous verb.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I am giving Sally a <strong>driving lesson</strong>.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">They have a <strong>swimming pool</strong> in their back yard.</span></span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- </span></span><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">after some expressions</span></span></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">The gerund is necessary after the expressions <strong><em>can''t help, can''t stand, to be worth, &amp; it''s no use.</em></strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><span style="color: black;">She couldn''t help <strong>falling </strong>in love with him. </span></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><span style="color: black;">I can''t stand <strong>being </strong>stuck in traffic jams. </span></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><span style="color: black;">It''s no use/od <strong>trying </strong>to escape. </span></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><span style="color: black;">It might be worth <strong>phoning </strong>the station to check the time of the train. </span></em></span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #f8cac6; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>2. Verbs followed by Gerunds</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">The gerund is commonly used after quite a few different verbs. The most important of these verbs are shown below. All of these verbs can be followed by nouns instead of gerunds. Remember, gerunds always function as nouns in sentences. Some of these verbs can also be followed by a that-clause.</span></span></span></span></p>
<p style="margin-bottom: 11px; text-align: center;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>VERBS WHICH CAN BE FOLLOWED BY NOUNS OR GERUNDS</strong></span></span></span></p>
<table style="height: 424px; width: 97.969%;">
<tbody>
<tr>
<td style="width: 19.9545%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">avoid</span></p>
</td>
<td style="width: 24.8858%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">celebrate</span></p>
</td>
<td style="width: 23.1656%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">consider</span></p>
</td>
<td style="width: 31.8813%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">contemplate</span></p>
</td>
</tr>
<tr>
<td style="width: 19.9545%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">defer</span></p>
</td>
<td style="width: 24.8858%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">delay</span></p>
</td>
<td style="width: 23.1656%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">entail</span></p>
</td>
<td style="width: 31.8813%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">detest</span></p>
</td>
</tr>
<tr>
<td style="width: 19.9545%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">dislike</span></p>
</td>
<td style="width: 24.8858%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">dread</span></p>
</td>
<td style="width: 23.1656%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">enjoy</span></p>
</td>
<td style="width: 31.8813%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">escape</span></p>
</td>
</tr>
<tr>
<td style="width: 19.9545%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">excuse</span></p>
</td>
<td style="width: 24.8858%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">finish</span></p>
</td>
<td style="width: 23.1656%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">forgive</span></p>
</td>
<td style="width: 31.8813%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">involve</span></p>
</td>
</tr>
<tr>
<td style="width: 19.9545%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">keep</span></p>
</td>
<td style="width: 24.8858%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">mind</span></p>
</td>
<td style="width: 23.1656%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">loathe</span></p>
</td>
<td style="width: 31.8813%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">miss</span></p>
</td>
</tr>
<tr>
<td style="width: 19.9545%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">pardon</span></p>
</td>
<td style="width: 24.8858%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">postpone</span></p>
</td>
<td style="width: 23.1656%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">prevent</span></p>
</td>
<td style="width: 31.8813%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">resent</span></p>
</td>
</tr>
<tr>
<td style="width: 19.9545%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">risk</span></p>
</td>
<td style="width: 24.8858%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">save</span></p>
</td>
<td style="width: 23.1656%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">save</span></p>
</td>
<td style="width: 31.8813%;">
<p> </p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: normal;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>avoid ing</strong> to the dentist.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>avoid</strong> chocolate.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>miss taking</strong> walks in the morning.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>miss</strong> England.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>have</strong> <strong>finished working</strong>.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>have</strong> <strong>finished</strong> the cake.</span></span></span></span></p>
<p style="margin-bottom: 11px; text-align: center;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>VERBS WHICH CAN BE FOLLOWED BY NOUNS, GERUNDS,<br/>OR A THAT-CLAUSE</strong></span></span></span></p>
<table style="height: 86px; width: 97.8087%;">
<tbody>
<tr>
<td style="width: 19.7922%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">acknowledge</span></p>
</td>
<td style="width: 25.4237%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">admit</span></p>
</td>
<td style="width: 23.1861%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">anticipate</span></p>
</td>
<td style="width: 31.5979%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">appreciate</span></p>
</td>
</tr>
<tr>
<td style="width: 19.7922%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">deny</span></p>
</td>
<td style="width: 25.4237%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">imagine</span></p>
</td>
<td style="width: 23.1861%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">mean</span></p>
</td>
<td style="width: 31.5979%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">mention</span></p>
</td>
</tr>
<tr>
<td style="width: 19.7922%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">propose</span></p>
</td>
<td style="width: 25.4237%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">recall</span></p>
</td>
<td style="width: 23.1861%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">recollect</span></p>
</td>
<td style="width: 31.5979%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">report</span></p>
</td>
</tr>
<tr>
<td style="width: 19.7922%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">suggest</span></p>
</td>
<td style="width: 25.4237%;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">understand</span></p>
</td>
<td style="width: 23.1861%;">
<p> </p>
</td>
<td style="width: 31.5979%;">
<p> </p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: normal;"><em><u><span style="color: black;">Examples: </span></u></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>can''t imagine living</strong> in that big house.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>can''t imagine</strong> a purple unicorn in my yard.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>can''t imagine</strong> <strong>that</strong> he lied on purpose.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>understand</strong> French.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I <strong>understand fishing</strong> pretty well.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">I<strong> understand that </strong>you would prefer to stay.</span></span></span></span></p>
<p style="margin-bottom: 11px;"> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'1e201ab9-579d-40b8-a317-8355d590df53', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'PREPOSITIONS', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p style="text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #bfedd2;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">PREPOSITIONS WITH ADJECTIVES</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Some adjectives  with certain prepositions. There is </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">no real pattern</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> – you need to learn them as you meet them. Here are some examples but remember that there are </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">many other adjectives + preposition</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">combinations </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">that are not covered here.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">1. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“AT”</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">I''m quite </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">od at </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">English but I''m bad at maths and I''m terrible at physics.</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">2. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“FOR”</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Jogging is </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">od for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> your health but smoking is bad for you.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">The town is </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">famous for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> its cheese.</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">[As well as ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">od for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'', ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">bad for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' and ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">famous for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' we also say ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">qualified for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">ready for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'', ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">responsible for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'', ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">suitable for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' and several others.]</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">3. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“OF”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">I''m perfectly </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">capable of </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">doing it myself, thank you.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">I''m very </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">fond of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> this old sweatshirt.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">[As well as ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">capable of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' and ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">fond of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' we also say ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">aware of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'', ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">full of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'', ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">tired of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' and several others.]</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">4. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“WITH”</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">We''re very </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">pleased with</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> your progress.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">You''re not still </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">angry with </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">me are you?</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">[As well as ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">pleased with</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' and ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">angry with</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' we also say ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">bored with</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'', ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">delighted with</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'', ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">satisfied with</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' and several others.]</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">5. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“TO”</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">She''s the one who''s </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">married to </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">a doctor, isn''t she?</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">You''ll be</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;"> responsible to </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">the head of the Finance department.</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">[Notice that you can be </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">responsible fo</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">r something but </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">responsible to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> someone.]</span></span></span></span></span></span></p>
<p><br/><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Other common adjectives + preposition combinations include ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">interested in</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">'' and ''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">keen on</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">''. It''s a od idea to make a note of new combinations in your vocabulary notebook as you meet them. Remember too that a preposition is followed by a noun or a gerund (''ing'' form).</span></span></span></span></span></span></p>
<p> </p>
<p style="text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #bfedd2;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">PREPOSITIONS WITH NOUNS</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">1. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“FOR”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Use </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">''for''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> preceded by the following nouns:</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">check </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">for (amount of money)</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">She gave me a check </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> $50.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">demand</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> for something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Unfortunately, there wasn''t enough demand </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> our product.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">need</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> for something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">There is a real need </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> discipline in this class.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">reason </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">for something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">I have a reason </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> doing that!</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">2. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“IN”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Use </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">''in''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> preceded by the following nouns:</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">rise </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">in something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">There has been a rise </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">in</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> prices recently.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">an </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">increase </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">in something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">We have seen many increases </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">in </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">production levels.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">fall </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">in something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">There has been a fall </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">in </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">prices recently.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">decrease </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">in something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">We have seen many decreases </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">in </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">production levels.</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">3. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“OF”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Use </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">''of''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> preceded by the following nouns:</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">cause </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">of something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">She is the cause </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> all his problems.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">photograph </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">OR a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">picture </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">of something or someone</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">He took a photograph </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the mountains.</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">4. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“TO”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Use </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">''to''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> preceded by the following nouns:</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">damage </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">to something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">I did a lot of damage </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> my car the other day.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">an </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">invitation </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">to a celebration of some type</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">We were invited </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> their wedding.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">reaction </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">to something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Her reaction </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> his behavior was quite funny.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">solution </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">to a problem</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">He provided the solution </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">to </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">our financial situation.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">an </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">attitude </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">to something (or TOWARDS something)</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Your attitude</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;"> to </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">your problems doesn''t help them get resolved.</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">5. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“WITH”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Use</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;"> ''with'' </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">preceded by the following nouns:</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">relationship </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">with someone or something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">My relationship </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">with</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> Mary is wonderful.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">connection </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">with someone or something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">His connections</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;"> with </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">the CIA are very limited.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">contact </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">with someone or something</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Have you had any contact </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">with </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Sarah?</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">6. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“BETWEEN”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Use</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;"> ''between''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> preceded by the following nouns:</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">connection </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">between </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">TWO </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">things</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">There is no connection </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">between</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the two crimes.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">relationship </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">between </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">TWO </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">things</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The relationship </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">between</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the two friends was very strong.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">contact </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">between </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">TWO </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">things</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">There is little contact </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">between </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">the two parents.</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">difference </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">between </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">TWO </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">things</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">E.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">There is no difference </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">between </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">those two colors.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"> </p>
<p style="text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #bfedd2;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">PREPOSITIONS WITH VERBS</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Some verbs are usually followed by prepositions before the object of the verb. These are called </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">dependent prepositions</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> and they are</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;"> followed</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> by a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">noun </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">or a </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">gerund </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">(''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">ing</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' form).</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">He''s waiting </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">for </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">a bus.</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">⇒ </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">For </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">is the dependent preposition for </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">wait</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">''</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">We can use other prepositions with </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">wait</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">'' – e.g. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">He waited at the bus stop</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> – but </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">''</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> is the dependent preposition.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><em><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="text-decoration: none;">Here are some other verbs with their dependent prepositions:</span></span></span></span></span></em></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">1. Verbs with </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">''FOR''</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">He </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">apologized for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> being late. You can also ''apologize to someone''</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">I </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">applied for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> the job but I didn''t get it.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">How do you </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">ask for </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">a coffee in Polish?</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">She spent many years </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">caring for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> her aged parents.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">I can''t  out tonight because I have to </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">prepare for</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> my interview tomorrow.</span></span></span></span></span></span><br/><span style="color: #000000;"> </span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">2. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">''FROM''</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">This spray should </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">protect you from</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> mosquitoes.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Has he </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">recovered from </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">his illness yet?</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">He won an award because he </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">saved someone from</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> drowning.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">I </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">suffer from</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> hay fever.</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">3. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">''IN''</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">She </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">believes in</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> ghosts.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Our company </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">specializes in </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">computer software.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">You have to work hard if you want to </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">succeed in</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> life.</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">4. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">''OF''</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">I don''t </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">approve of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> your language, young man.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Our dog </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">died of </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">old age.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">This shampoo </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">smells of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> bananas.</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">5. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">''ON''</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">The film is </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">based on</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> the novel by Boris Pasternak.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">If you make so much noise I can''t </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">concentrate on</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> my work.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Come on! We''re</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;"> relying on</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> you!</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">We don''t </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">agree on</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> anything but we''re od friends.</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">6. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">''TO''</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Can I </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">introduce you to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> my wife?</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Please </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">refer to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> the notes at the end for more information.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Nobody </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">responded to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> my complaint.</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">7. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">''WITH''</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">I </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">agree with</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> everything you''ve said.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">My secretary will </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">provide you with</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> more information if you need it.</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">** There are many more verb + dependent preposition combinations – make a note of them as you meet them</span></span></span></span></span></span></p>
<p style="text-align: center;"> </p>
<p style="text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #bfedd2;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">PREPOSITIONS OF PLACE</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">1. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“AT”</span></span></span></span></span></span></p>
<div style="margin-left: 52px;">
<table style="border: none; border-collapse: collapse; table-layout: fixed; width: 1387px; height: 429px;" width="NaN"><colgroup> <col style="width: 683px;"/> <col style="width: 703px;"/> </colgroup>
<tbody>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; border: 1px solid #000000;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">At home</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; border: 1px solid #000000;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">At the theatre</span></span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; border: 1px solid #000000;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">At the seaside</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; border: 1px solid #000000;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">At the grocer’s, at the hairdresser’s, at the doctor’s</span></span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; border: 1px solid #000000;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">At school</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; border: 1px solid #000000;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">At the bottom</span></span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; border: 1px solid #000000;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">At the foot of the page</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; border: 1px solid #000000;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">At the beginning, at the end (of the lesson,...)</span></span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; border: 1px solid #000000;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">At the shop</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; border: 1px solid #000000;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">(to arrive) at the airport, railway station,...</span></span></span></span><br/><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">[</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">** </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">arrive at</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> is used for small places</span></span></span></span><br/><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">    </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">arrive in</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> is used for bigger places (cities, countries)]</span></span></span></span></span></span></span></span></p>
</td>
</tr>
</tbody>
</table>
</div>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">2. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“IN”</span></span></span></span></span></span></p>
<div style="margin-left: 52px;">
<table style="border: none; border-collapse: collapse; table-layout: fixed; width: 1385px; height: 301px;" width="NaN"><colgroup> <col style="width: 685px;"/> <col style="width: 699px;"/> </colgroup>
<tbody>
<tr style="height: 99.5625px;">
<td style="vertical-align: top; padding: 7px; border: 1px solid #000000; height: 99.5625px;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">In (something/somewhere)</span></span></span></span></span></span></span></span></p>
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">e.g. in the dinning-room, in the box, in the desk</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px; border: 1px solid #000000; height: 99.5625px;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">In + cities / countries / regions / …</span></span></span></span></span></span></span></span></p>
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">e.g. in the dinning-room, in the box, in the desk, in the North</span></span></span></span></span></span></span></span></p>
</td>
</tr>
<tr style="height: 47.1875px;">
<td style="vertical-align: top; padding: 7px; border: 1px solid #000000; height: 47.1875px;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">In my opinion</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px; border: 1px solid #000000; height: 47.1875px;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">In od weather</span></span></span></span></span></span></span></span></p>
</td>
</tr>
<tr style="height: 47.1875px;">
<td style="vertical-align: top; padding: 7px; border: 1px solid #000000; height: 47.1875px;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">In (the) newspaper</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px; border: 1px solid #000000; height: 47.1875px;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">In the (a) middle of (the room)</span></span></span></span></span></span></span></span></p>
</td>
</tr>
<tr style="height: 47.1875px;">
<td style="vertical-align: top; padding: 7px; border: 1px solid #000000; height: 47.1875px;" width="NaN">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">In English, German,...</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px; border: 1px solid #000000; height: 47.1875px;" width="NaN"> </td>
</tr>
</tbody>
</table>
</div>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">3. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“ON”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">On </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">means that something is in a position that is physically touching, covering or attached to something.</span></span></span></span></span></span></p>
<div style="margin-left: 52px;">
<table style="border: none; border-collapse: collapse; height: 226px; width: 1388px;" width="920"><colgroup> <col style="width: 686px;" width="248"/> <col style="width: 702px;" width="300"/> </colgroup>
<tbody>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 248px; border: 1px solid #000000;">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">On (something/somewhere)</span></span></span></span></span></span></span></span></p>
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">e.g. on the table, on the floor</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 300px; border: 1px solid #000000;">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">on horseback</span></span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 248px; border: 1px solid #000000;">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">On foot</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 300px; border: 1px solid #000000;">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">On TV</span></span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 248px; border: 1px solid #000000;">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">On the radio</span></span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 300px; border: 1px solid #000000;">
<p style="line-height: 1.2;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">On the beach</span></span></span></span></span></span></span></span></p>
</td>
</tr>
</tbody>
</table>
</div>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">4. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“IN FRONT OF”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">In front of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> is the opposite of </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">behind. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">It means at the front (part) of something.</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- A band plays their music </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">in front of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> an audience.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- The teacher stands </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">in front of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the students.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- The man standing in the line </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">in front of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> me smells bad.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Teenagers normally squeeze their zits </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">in front of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> a mirror.</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">5. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“BEHIND”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Behind</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> is the opposite of </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">In front of. </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">It means at the back (part) of something.</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- When the teacher writes on the whiteboard, the students are </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">behind</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> him (or her).</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Who is that person </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">behind</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the mask?</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- I slowed down because there was a police car </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">behind </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">me.</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">6. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“BETWEEN”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Between</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> normally refers to something in the middle of two objects or things (or places).</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- There are mountains </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">between </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Chile and Argentina.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- The number 5 is </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">between</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the numbers 4 and 6.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- There is a sea (The English Channel) </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">between</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> England and France.</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">7. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“ACROSS FROM / OPPOSITE”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Across from</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> and </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Opposite </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">mean the same thing. It usually refers to something being in front of something else BUT there is normally something between them like a street or table. It is similar to saying that someone (or a place) is on the other side of something.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- I live </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">across from</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> a supermarket (= it is on the other side of the road)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- The chess players sat </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">opposite</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> each other before they began their game. (= They are in front of each other and there is a table between them)</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">8. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“NEXT TO / BESIDE”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Next to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> and </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Beside </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">mean the same thing. It usually refers to a thing (or person) that is at the side of another thing.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- At a wedding, the bride stands </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">next to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the groom.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Guards stand </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">next to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the entrance of the bank.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- He walked </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">beside</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> me as we went down the street.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- In this part of town there isn''t a footpath </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">beside</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the road so you have to be careful.</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">9. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“NEAR / CLOSE”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Near</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> and </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Close to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> mean the same thing. It is similar to next to/beside but there is more of a distance between the two things.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- The receptionist is </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">near</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the front door.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- This building is </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">near</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> a subway station.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- We couldn''t park the car </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">close to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the store.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Our house is </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">close to</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> a supermarket.</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">10. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“ABOVE / OVER”</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Above</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> and </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Over</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> have a similar meaning. They both mean "at a higher position than X" but above normally refers to being directly (vertically) above you.</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Planes normally fly</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;"> above</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the clouds.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- There is a ceiling </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">above</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> you.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- There is a halo </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">over </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">my head. ;)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- We put a sun umbrella </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">over</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the table so we wouldn''t get so hot.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Our neighbors in the apartment </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">above </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">us are really noisy.</span></span></span></span></span></span></p>
<p> </p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Over </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">can also mean: physically covering the surface of something and is often used with the word </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">All as </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">in </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">All over.</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- There is water </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">all over</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the floor.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- I accidentally spilled red wine </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">all over</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the new carpet.</span></span></span></span></span></span></p>
<p> </p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Over</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> is often used as a Preposition of Movement too.</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">11. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“UNDER / BELOW”</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Under </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">and </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Below </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">have a similar meaning. They mean at a lower level. (Something is above it).</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Your legs are </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">under </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">the table.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Monsters live </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">under</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> your bed.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- A river flows</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;"> under</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> a bridge.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- How long can you stay </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">under</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the water?</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Miners work </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">below </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">the surface of the Earth.</span></span></span></span></span></span></p>
<p> </p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Sometimes we use the word </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">underneath </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">instead of </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">under</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> and </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">beneath</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> instead of</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;"> below</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">. There is no difference in meaning though they are less common nowadays.</span></span></span></span></span></span></li>
</ul>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Under </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">is often used as a Preposition of Movement too.</span></span></span></span></span></span></li>
</ul>
<p style="text-align: center;"> </p>
<p style="text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #bfedd2;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">PREPOSITIONS OF TIME</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">1. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“AT”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- at 4 o’clock, at 5 p.m, at 1 a.m (specific times)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- at night / noon / midday</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- at Christmas, at Easter, at Whitsun (holiday period)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- at once</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- at last</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">                                          </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"><span style="white-space: pre;"> </span></span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- at the moment </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">/</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> at present </span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- at weekends</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">2. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“IN”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Year (</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> 1980, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> 1870, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> 2000,...)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Month (</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> June, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> May, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> August,...)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Season (</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> spring, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> summer, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> winter, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> autumn,...)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 16px; margin-bottom: 16px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Time in a day, except for </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">at night</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> (</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the morning, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the afternoon, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the evening)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 43px; text-indent: -7pt; margin-top: 7px; padding: 0pt 0pt 0pt 7pt;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">IN TIME</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> (He came to the party </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">in time</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">)</span></span></span></span></span></span></p>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">3. With </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">“ON”</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 33px; margin-top: 7px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Days in a week (</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">on</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> Sunday, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">on</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> Monday, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">on</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> Tuesday,...)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 33px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- Month + date (My birthday is </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">on</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> June 10th.)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 33px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">- </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">ON TIME</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> (The film was shown </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">on time</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">.)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">*** Note:</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">- The Weekend</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Sometimes you will hear </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">AT the weekend</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> and sometimes </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">ON the weekend</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">. They are both correct. ON the weekend is used in the United States whereas AT the weekend is used in the United Kingdom.</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">E.g. Where did you  on the weekend? (US)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;">Where did you  at the weekend? (British)</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">- We don''t use Prepositions</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">Remember! We </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">do not </span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">use </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">at, on, in, </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">or</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: italic;"><span style="text-decoration: none;"> </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">the </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">with the following expressions:</span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-top: 16px; margin-bottom: 16px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: italic;"><span style="text-decoration: none;">Today, tomorrow, yesterday, this morning, tonight, last, next, every</span></span></span></span></span></span></p>
<p align="center" style="text-align: center; margin-bottom: 11px;"> </p>
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #bfedd2;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">PREPOSITION OF MOVEMENT</span></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Here are some prepositions that pertain to movement:</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>1.</strong> <strong>TO </strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>''To'' </em></strong>is used when there is a specific destination in mind. The destination can be a number of things:</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- A place:</span></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Examples: </em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I''m ing<strong> to </strong>the doctor''s.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Can you direct me<strong> to </strong>the nearest post office?</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- <strong>An event:</strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Examples:</em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Are you ing<strong> to </strong>the party?</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I have never been <strong>to </strong>a concert.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- <strong>A person:</strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Examples: </em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">She came up <strong>to</strong> me.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I  <strong>to </strong>my father for advice.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- <strong>A position:</strong></span> </span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Examples:</em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">The bathroom is <strong>to</strong> your left.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">Keep <strong>to</strong> the left.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>2.</strong> <strong>TOWARDS</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>''Towards''</em></strong> is used in the following instances:</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- When one has movement in a particular direction in mind, rather than simply a destination</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> He was walking menacingly <strong><em>towards</em></strong> me.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- Or to refer to a position, in relation to a direction from the point of view of the speaker</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> He was sitting with his back <strong><em>towards </em></strong>me.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>3. THROUGH</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>''Through''</em></strong> refers to the following types of movement:</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- Within a space, which can be thought of as surrounding, enclosing or around the object</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> The train went <strong><em>through</em></strong> the tunnel.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- Movement across something, i.e. from one side of it to the other</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> He cut <strong><em>through</em></strong> the gauze.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>4.</strong> <strong>INTO </strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>''Into''</em></strong> refers to the following types of movement:</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- Movement from the outside to the inside of something that can be imagined as surrounding, enclosing or around the object</span>:</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> He t <strong><em>into</em></strong> the car.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- Movement causing something to hit something else</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> He swerved <strong><em>into</em></strong> the tree.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>5. ACROSS </strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>''Across''</em></strong> is used to describe:</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- Movement from one end of something to the other</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Examples: </em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">He walked <strong><em>across</em></strong> the road.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">He strode <strong><em>across </em></strong>the bridge.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- Something''s position when it stretches over the surface it is on</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> There was a barricade <strong><em>across </em></strong>the road.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- To describe something''s position when it is at the opposite end from one''s position</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> We went to the restaurant <strong><em>across </em></strong>the road.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>6. OVER</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>''Over'' </em></strong>is used in the following instances</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- To describe something''s position when it is above something else</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> The bottle is in the cabinet <strong><em>over</em></strong> the sink in the kitchen.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- To describe something''s position when it covers a surface</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> A white cloth had been spread <strong><em>over</em></strong> the corpse.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>7. ALONG</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>''Along''</em></strong> is used to describe</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- Movement in a line</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> We walked <strong><em>along</em></strong> the river.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- The collective position of a group of things that are in a line</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> He lived in one of the houses <strong><em>along </em></strong>the river.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>8. IN</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>''In'' </em></strong>is used in the following instances:</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- Something''s position in relation to the area or space or place surrounding it</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Examples:</em></strong> </span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">We are ing to have our picnic <strong><em>in </em></strong>the park.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">I left my car <strong><em>in </em></strong>the garage.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- To express towards the inside of something</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> Put the pickle<strong><em> in </em></strong>the cabinet.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>9. ON </strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>''On'' </em></strong>is used in the following instances:</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- To describe something''s position in relation to a surface</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> There was an array of food<strong><em> on </em></strong>the table.</span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- To describe movement in the direction of a surface</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Example:</em></strong> The rain falling <strong><em>on </em></strong>the roof kept me from sleeping.</span></span></span></p>
<p style="margin-bottom: 11px;"> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'71f63ced-4a03-4a82-900f-d12138d015f0', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'FUTURE SIMPLE TENSE', N'<div class="dialog-theory-modal-content-text"><p> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">1. Form</span></span></span></span></span></span></p>
<div style="margin-left: 41px;">
<table style="border: none; border-collapse: collapse; height: 323px; width: 1426px;" width="720"><colgroup> <col style="width: 322px;" width="58"/> <col style="width: 647px;" width="332"/> <col style="width: 455px;" width="170"/> </colgroup>
<tbody>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 58px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(+)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 332px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">You, He, She, It, They + will</span></span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">I, We + will / shall </span></span></span></span></span></span></span></p>
</td>
<td rowspan="3" style="vertical-align: top; padding: 7px 7px 7px 7px; width: 170px; border: 1px solid #000000;"><br/><br/><span style="color: #000000; background-color: #ffffff;"> </span>
<p> </p>
<p> </p>
<p><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;"> V(bare-inf.)</span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 58px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(-)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 332px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">You, He, She, It, They + won’t </span></span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">I, We + will / shall + not </span></span></span></span></span></span></span></p>
</td>
</tr>
<tr>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 58px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; text-align: center;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">(?)</span></span></span></span></span></span></span></p>
</td>
<td style="vertical-align: top; padding: 7px 7px 7px 7px; width: 332px; border: 1px solid #000000;">
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">Will + You, He, She, It, They</span></span></span></span></span></span></span></p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="overflow: hidden;"><span style="overflow-wrap: break-word;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-style: normal;"><span style="text-decoration: none;">Will / Shall + I, We</span></span></span></span></span></span></span></p>
</td>
</tr>
</tbody>
</table>
</div>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">2. Usage</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Future Simple Tense shows an action that will happen in the future without any plans or arrangements in advance.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">The Future Simple Tense expresses a determination, an opinion, a promise, or a decision right at the time of speaking.</span></span></span></span></span></span></li>
</ul>
<p style="line-height: 1.7999999999999998; margin-left: 28px; margin-top: 3px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">E.g.</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> </span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">He </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">will come back</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> next week.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">We </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">will/ shall need</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> the money on the 15th.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">I think Liverpool </span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">will win.</span></span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">I</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">’ll phone</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> you tonight.</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">“You can have it for $50 ” “OK, I</span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: underline;"><span style="text-decoration-skip-ink: none;">’ll buy</span></span></span></span></span><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;"> it.”</span></span></span></span></span></span></li>
</ul>
<p> </p>
<p style="line-height: 1.7999999999999998; margin-left: 25px; text-indent: -12pt; margin-top: 7px; padding: 0pt 0pt 0pt 12pt;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: bold;"><span style="font-style: normal;"><span style="text-decoration: none;">3. Signals</span></span></span></span></span></span></p>
<ul>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">someday</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">tomorrow</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">in (future year, month, week)</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">on (future day)</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">next (month, week, year, name of day)</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">this (month, week, afternoon, year)</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">soon</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">I expect / think / don''t think / wonder / hope / suppose</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">I’m sure / not sure</span></span></span></span></span></span></li>
<li aria-level="1" style="list-style-type: disc;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="font-variant: normal; white-space: pre-wrap;"><span style="font-weight: 400;"><span style="font-style: normal;"><span style="text-decoration: none;">probably / presumably / maybe / perhaps /...</span></span></span></span></span></span></li>
</ul>
<p> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'c22824c1-f5bd-469b-b125-ec1cc46fe4b9', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'MODAL VERBS', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>1. What are modal verbs?</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">- Modal verbs are special verbs that behave irregularly in English. They are different from normal verbs like work, play, visit. They give additional information about the function of the main verb that follows it. They have a great variety of communicative functions.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">- Here are some characteristics of modal verbs:</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">+ They never change their form. You can''t add "s", "ed", "ing"...</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">+ They are always followed by an infinitive without "to" (e.g. the bare infinitive.)</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>2. List of modal verbs with examples</strong></span></p>
<table style="width: 100%; height: 1550.89px;">
<tbody>
<tr style="height: 72.7812px;">
<td style="width: 11.7737%; height: 72.7812px;">
<p style="text-align: center;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Modal Verb</strong></span></p>
</td>
<td style="width: 29.8081%; height: 72.7812px;">
<p style="text-align: center;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Uses</strong></span></p>
</td>
<td style="width: 52.6767%; height: 72.7812px;">
<p style="text-align: center;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Examples</strong></span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td rowspan="2" style="width: 11.7737%; height: 123.172px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>must</strong></span></p>
</td>
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Strong obligation        </span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">You must stop when the traffic lights turn red.</span></p>
</td>
</tr>
<tr style="height: 72.7812px;">
<td style="width: 29.8081%; height: 72.7812px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">logical conclusion / Certainty   </span></p>
</td>
<td style="width: 52.6767%; height: 72.7812px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">He must be very tired. He''s been working all day long.</span></p>
</td>
</tr>
<tr style="height: 72.7812px;">
<td style="width: 11.7737%; height: 72.7812px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>must not    </strong></span></p>
</td>
<td style="width: 29.8081%; height: 72.7812px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">prohibition</span></p>
</td>
<td style="width: 52.6767%; height: 72.7812px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">You must not smoke in the hospital.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td rowspan="3" style="width: 11.7737%; height: 151.172px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>can</strong></span></p>
</td>
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">ability        </span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">I can swim.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">permission</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Can I use your phone, please?</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">possibility</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Smoking can cause cancer.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td rowspan="3" style="width: 11.7737%; height: 151.172px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>could</strong></span></p>
</td>
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">ability in the past         </span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">When I was younger I could run fast.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">polite permission</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Excuse me, could I just say something?</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">possibility </span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">It could rain tomorrow!</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td rowspan="2" style="width: 11.7737%; height: 100.781px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>may</strong></span></p>
</td>
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">permission</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">May I use your phone, please?</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">possibility, probability </span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">It may rain tomorrow!</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td rowspan="2" style="width: 11.7737%; height: 100.781px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>might</strong></span></p>
</td>
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">polite permission        </span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Might I suggest an idea?</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">possibility, probability </span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">I might  on holiday to Australia next year.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td rowspan="3" style="width: 11.7737%; height: 151.172px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>should</strong></span></p>
</td>
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Saying what’s right or correct</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">You should sort out this problem at once.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Recommending action</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">I think we should check everything again.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Uncertain prediction</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Profits should increase next year.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 11.7737%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>ought to</strong></span></p>
</td>
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Saying what’s right or correct</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">We ought to employ a professional writer.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td rowspan="4" style="width: 11.7737%; height: 201.562px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>will </strong></span></p>
</td>
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Instant decisions</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">I can’t see any taxis so I’ll walk.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Offer</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">I’ll do that for you if you like.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Promise</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">I’ll get back to you first thing on Monday.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Certain prediction</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Profits will increase next year.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td rowspan="6" style="width: 11.7737%; height: 375.125px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>would </strong></span></p>
</td>
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Asking for permission</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Would you mind if I opened the door?</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Request</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Would you pass the salt please?</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Request</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Would you mind waiting a moment?</span></p>
</td>
</tr>
<tr style="height: 86.7812px;">
<td style="width: 29.8081%; height: 86.7812px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Making arrangements</span></p>
</td>
<td style="width: 52.6767%; height: 86.7812px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Would three o’clock suit you?</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">That’d be fine.</span></p>
</td>
</tr>
<tr style="height: 50.3906px;">
<td style="width: 29.8081%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Invitation</span></p>
</td>
<td style="width: 52.6767%; height: 50.3906px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Would you like to play lf this Friday?</span></p>
</td>
</tr>
<tr style="height: 86.7812px;">
<td style="width: 29.8081%; height: 86.7812px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Preferences</span></p>
</td>
<td style="width: 52.6767%; height: 86.7812px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Would you prefer tea or coffee?</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">I’d like tea, please.</span></p>
</td>
</tr>
</tbody>
</table>
<p> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'98e08057-9e66-40e3-a1e5-f259b9b61911', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'PRONOUNS', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #f8cac6;"><strong>I. Introduction to pronouns</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><em>Pronouns</em></strong> take the place of nouns in sentences. Pronouns work in sentences the same way as nouns. Pronouns are used so that nouns are not repeated. A pronoun generally refers back to a noun that was written earlier. There are many different kinds of pronouns. Each kind has different forms and rules for when it is used.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #f8cac6;"><strong>II.</strong> <strong>Types of pronouns</strong></span></p>
<p><span style="color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;"><strong>1. Personal pronouns</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Personal pronouns refer to a specific person or persons. The personal pronouns are <strong><em>I, you, he, she, it, we and they.</em></strong> Personal pronouns change form depending on their role in a sentence. The subjective case means the pronoun is used as the subject of a sentence or a clause. The subjective personal pronouns are I, he, she, you, it, we and they.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Examples:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><em>We</em></strong> are ing to the meeting in the same car.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><em>She</em></strong> is ing to send the fax now.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">The other cases are <strong><u>objective</u></strong> and <strong><u>possessive</u></strong>. Objective case means a pronoun usually is the object of the verb or a preposition in a sentence. Objective pronouns are me, him, her, us and them.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Examples:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">The metal chair gave <strong><em>him</em></strong> an electric shock.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Let <strong><em>us</em></strong> finalize the contract.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Frank took a phone message for <strong><em>her</em></strong>.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><span style="background-color: #ffffff;"><strong><u>Note:</u></strong> </span>When there is a linking verb in a sentence, the pronoun that follows it must be in the subjective, not objective, case. A common linking verb is any form of the verb be such as <em>is</em>, <em>are</em>, <em>was</em> and <em>were</em>.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Incorrect:          This is <strong><em>her</em></strong> speaking.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Correct:             This is <strong><em>she</em></strong> speaking.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">The possessive case pronoun shows ownership. The possessive pronouns are <em>my</em>, <em>mine</em>, <em>our</em>, <em>ours</em>, <em>his</em>, <em>her</em>, <em>hers</em>, <em>their</em>, <em>theirs</em>.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Examples:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><em>My</em></strong> boss approves of my conducting of the interview.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Michael bumped <strong><em>his</em></strong> hip against the desk.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><u>Note:</u></strong><strong> </strong>Only the personal pronouns have these three cases. All other types of pronouns only have their regular (dictionary) form and a possessive case. The exception is the relative pronoun <em>who</em>. <em>Whom</em> is the objective case and whose is the possessive case.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #eccafa;"><strong>2. Relative pronouns</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Relative pronouns are <em>which</em>, <em>that</em>, and <em>who </em>/ <em>whom</em>. Relative pronouns relate groups of words to nouns or other pronouns.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Example:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">The secretary gave three boxes to the mailman <strong><em>who</em></strong> entered the office.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>That</em> and <em>which</em> can only refer to things. <em>Who</em> and <em>whom</em> can only refer to people. <em>Who</em> is used as the subject of a sentence or a clause. <em>Whom</em> is always the object of a verb or prepositional phrase.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Examples:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">He doesn''t know <strong><em>whom</em></strong> to assign to the project.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">(Whom<em> is the object of the verb to assign</em>.)</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><em>Who</em></strong> will be assigned to the project has not been decided.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">(Who <em>is the subject of the verb will be assigned</em>.)</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #eccafa;"><strong>3. Intensive pronouns </strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Intensive pronouns add emphasis to a noun or another pronoun. The form of an intensive pronoun is a personal pronoun plus -<em>self</em>: himself, herself, myself, yourself, themselves, ourselves.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Example:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">He <strong><em>himself</em></strong> made the coffee.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #eccafa;"><strong>4. Reflexive pronouns </strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Reflexive pronouns show that the sentence subject also receives the action of the verb in the sentence. Reflexive pronouns have the same form as intensive ones: a personal pronoun plus -<em>self</em>.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Example:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">You might injure <strong><em>yourself</em></strong>.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong>Note:</strong> Objective or possessive pronouns are mistakenly used when a reflexive one is needed.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Incorrect:           Help <strong><em>you</em></strong> to whatever you need.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Correct:             Help <strong><em>yourself</em></strong> to whatever you need.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #eccafa;"><strong>5. Indefinite pronouns</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Indefinite pronouns function as nouns, but they do not replace a noun. Indefinite pronouns include <em>everybody</em> and <em>some</em>.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Example:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><em>Everybody</em></strong> admires the company’s president.</span></p>
<p> </p>
<p><span style="color: #000000; background-color: #eccafa;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;"><strong>6. </strong></span><strong style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #eccafa;">Demonstrative pronouns</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Demonstrative pronouns identify or point to nouns. Demonstrative pronouns include <em>this</em>, <em>that</em> and <em>such</em>.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Example:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><em>This</em></strong> is the cup he used.</span></p>
<p> </p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000; background-color: #eccafa;"><strong>7. Interrogative pronouns</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Interrogative pronouns introduce questions. Interrogative pronouns include <em>who</em>, <em>which</em> and <em>what</em>.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Example:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><em>Who</em></strong> will be making a speech tonight?</span></p>
<p> </p>
<p><span style="color: #000000; background-color: #f8cac6;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>III. </strong></span><strong style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;">Pronoun agreement with the noun</strong></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">One general rule for all pronouns is that a singular noun must be replaced with a singular pronoun. Also, a plural noun must be replaced with a plural pronoun.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Examples:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><em>I</em></strong> have to do a presentation tomorrow for <strong><em>my</em></strong> manager.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">The <strong><em>employees</em></strong> want <strong><em>their</em></strong> afternoon break to start later.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><u>Note:</u></strong> It is important to remember that any word with an <em>every</em>, like <em>everybody</em>, <em>everyone</em>, or <em>everything</em> is singular, not plural. Therefore, <em>every</em> type words need a singular pronoun like <em>his</em> or <em>her</em>, and not a plural one like <em>their</em>.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Incorrect:          <strong><em>Everybody</em></strong> needs to hand in <strong><em>their</em></strong> report to the manager.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Correct:             Everybody needs to hand in <strong><em>his</em></strong> report to the manager.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">Another general rule is that the pronoun must have the same gender (feminine, masculine or neuter) as the noun it replaces.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><em>Examples:</em></span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;"><strong><em>Julie</em></strong> wants to upgrade <strong><em>her</em></strong> computer software.</span></p>
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; color: #000000;">The <strong><em>computer</em></strong> had new software installed on <strong><em>its</em></strong> hard drive.</span></p>
<p> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'8d8562b8-4b1c-44e6-b3ce-f4ddf3fa4f8e', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'RELATIVE CLAUSES', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Relative clauses are non-essential parts of a sentence.</span> <span style="color: black;">They may add meaning, but if they are removed, the sentence will still function grammatically. There are two types of relative clauses in English including <strong><em>Defining and Non-defining clause.</em></strong></span></span></span></span></p>
<p><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>1.</strong> <strong>Defining relative clauses</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">A <strong>"defining" </strong>or identifying clause tells us which specific person or thing we are talking about in a larger group of people or things. If a defining relative clause is removed, the meaning of the sentence changes significantly.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Examples: </span></em></strong><span style="color: black;">Dogs <strong>that like cats</strong> are very unusual. In this sentence, we understand that there are many dogs, but it is clear that we are only talking about the ones <em>that like cats. </em></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Other examples: </span></em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Children <strong>who hate chocolate</strong> are uncommon.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">They live in a house <strong>whose roof is full of holes.</strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">An elephant is an animal <strong>that lives in hot countries.</strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Let''s  to a country <strong>where the sun always shines.</strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-color: #fbeeb8;"><strong><u><span style="color: black;">NOTE:</span></u></strong></span><strong> </strong><span style="color: black;">Commas <strong>are not used</strong> in defining relative clauses.</span></span></span></span></p>
<p align="center" style="text-align: center; margin-bottom: 11px;"><span style="font-size: 16px; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>[Relative pronouns in defining clauses]</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">The following relative pronouns are used in defining relative clauses:</span></span></span></span></p>
<table style="width: 98.2897%; height: 229px;">
<tbody>
<tr>
<td style="width: 19.1892%; text-align: center;">
<p> </p>
</td>
<td style="width: 19.8649%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Person</strong></span></p>
</td>
<td style="width: 19.5946%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Thing</strong></span></p>
</td>
<td style="width: 12.7027%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Place</strong></span></p>
</td>
<td style="width: 13.6486%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Time</strong></span></p>
</td>
<td style="width: 15%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong>Reason</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 19.1892%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Subject</span></p>
</td>
<td style="width: 19.8649%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">who/that</span></p>
</td>
<td style="width: 19.5946%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">which/that</span></p>
</td>
<td style="width: 12.7027%; text-align: center;">
<p> </p>
</td>
<td style="width: 13.6486%; text-align: center;">
<p> </p>
</td>
<td style="width: 15%; text-align: center;">
<p> </p>
</td>
</tr>
<tr>
<td style="width: 19.1892%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Object</span></p>
</td>
<td style="width: 19.8649%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">who/whom/that</span></p>
</td>
<td style="width: 19.5946%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">which/that</span></p>
</td>
<td style="width: 12.7027%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">where</span></p>
</td>
<td style="width: 13.6486%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">when</span></p>
</td>
<td style="width: 15%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">why</span></p>
</td>
</tr>
<tr>
<td style="width: 19.1892%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">Possessive</span></p>
</td>
<td style="width: 19.8649%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">whose</span></p>
</td>
<td style="width: 19.5946%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;">whose</span></p>
</td>
<td style="width: 12.7027%; text-align: center;">
<p> </p>
</td>
<td style="width: 13.6486%; text-align: center;">
<p> </p>
</td>
<td style="width: 15%; text-align: center;">
<p> </p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #fbeeb8;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><u><span style="color: black;">NOTE:</span></u></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- <em>Who</em></span></span></strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">, <strong><em>whom</em></strong> and <strong><em>which</em></strong> can be replaced by <strong><em>that</em></strong>. This is very common in spoken English</span></span><span style="color: black;">.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- The relative pronoun cannot be omitted if it is the subject of the clause.</span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Example:</span></u></em><u> </u><span style="color: black;">The woman <strong>who/that spoke at the meeting</strong> was very knowledgeable.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- The relative pronoun can be omitted when it is the object of the clause.</span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><u><span style="color: black;">Example:</span></u></em><u> </u><span style="color: black;">The woman <strong>(who/that) the man loved</strong> was living in New York.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">(You can usually decide whether a relative pronoun is an object because it is normally followed by another subject + verb)</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- <strong><em>Whose</em></strong><em> </em>is used for things as well as for people.</span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Examples: </span></em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">The man <strong>whose car was stolen</strong>.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">A tree<em> </em><strong>whose leaves have fallen</strong>. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- <strong><em>Whom</em></strong><em> </em>is very formal and is only used in written English. You can use <strong><em>who/ that</em></strong><em> </em>or omit the pronoun completely:</span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Examples: </span></em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">The doctor <strong><em>whom/who/that/ I was hoping to see </em></strong>wasn''t on duty.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">-<strong> </strong><strong><em>That</em></strong><em> </em>normally follows words like <strong><em>something, anything, everything, nothing, all</em></strong><em> </em>and <strong>superlatives</strong>.</span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Examples:</span></em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">There''s something <strong><em>that you should know</em></strong><em>. </em></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">It was the best film <strong><em>that I''ve ever seen</em></strong><em>. </em></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">A clown is someone <strong><em>who makes you laugh</em></strong><em>. </em></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">An elephant is an animal <strong><em>that lives in hot countries</em></strong>.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">The plums <strong><em>that were in the fridge </em></strong>were delicious. I have eaten them.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Nothing <strong><em>that anyone does </em></strong>can replace my lost bag.</span></span></span></span></p>
<p style="margin-bottom: 11px;"> </p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #f8cac6;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>2. Non-defining relative clauses</strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">A <strong><em>non-defining</em></strong> or non-essential clause gives us more information about the person or thing we are talking about. If a non-defining relative clause is removed from a sentence, we lose some detail, but the overall meaning of the sentence remains the same. Non-defining relative clauses are always set off from the rest of the sentence with commas or parentheses.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Examples: </span></em></strong><span style="color: black;">rillas, <strong>which are large and originate in Africa</strong>, can sometimes be found in zoos.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><span style="color: black;">(In this sentence we are talking about all rillas, not just some of them. The information in the non-defining relative clause tells us something more about rillas in general. It does not define a small group of rillas or an individual rilla.)</span></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Other examples:</span></em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">John''s mother, <strong>who lives in Scotland</strong>, has 6 grandchildren.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">My friend John, <strong>who went to the same school as me</strong>, has just written a best-selling novel.</span></span></span></span></p>
<p style="margin-bottom: 11px; text-align: center;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="color: #833c0b;">[Relative pronouns in non-defining clauses]</span></strong></span></span></span></p>
<table style="width: 98.8776%; height: 20px;">
<tbody>
<tr>
<td style="width: 30.9718%; text-align: center;">
<p> </p>
</td>
<td style="width: 24.4099%; text-align: center;">
<p style="text-align: center;"><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;"><strong>Person</strong></span></p>
</td>
<td style="width: 22.4414%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;"><strong>Thing</strong></span></p>
</td>
<td style="width: 22.0477%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;"><strong>Place</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 30.9718%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">Subject</span></p>
</td>
<td style="width: 24.4099%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">who</span></p>
</td>
<td style="width: 22.4414%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">which</span></p>
</td>
<td style="width: 22.0477%; text-align: center;">
<p> </p>
</td>
</tr>
<tr>
<td style="width: 30.9718%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">Object</span></p>
</td>
<td style="width: 24.4099%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">who/whom</span></p>
</td>
<td style="width: 22.4414%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">which</span></p>
</td>
<td style="width: 22.0477%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">where</span></p>
</td>
</tr>
<tr>
<td style="width: 30.9718%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">Possessive</span></p>
</td>
<td style="width: 24.4099%; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">whose</span></p>
</td>
<td style="width: 22.4414%; text-align: center;">
<p> </p>
</td>
<td style="width: 22.0477%; text-align: center;">
<p> </p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #fbeeb8;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><u><span style="color: black;">NOTE:</span></u></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- In non-defining clauses, you cannot use <em>''that'' </em>instead of <em>who, whom </em>or <em>which</em>.</span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- You cannot leave out the relative pronoun, even when it is the object of the verb in the relative clause:</span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em><span style="color: black;">Examples:</span></em></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">He gave me the letter, <strong>which was in a blue envelope</strong>. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">He gave me the letter, <strong>which I read immediately.</strong> </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- The preposition in these clauses can  at the end of the clause.</span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Example:</span></em></strong><span style="color: black;"> This is Stratford-on-Avon, <strong>which you have all heard about</strong>.<em> </em></span></span></span></span></p>
<p style="margin-bottom: 11px;"><em><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- This pattern is often used in spoken English, but in written or formal English you can also put the preposition before the pronoun.</span></span></span></span></span></em></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Example:</span></em></strong><span style="color: black;"> Stratford-on-Avon, <strong>about which many people have written</strong> is Shakespeare''s birthplace. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="color: black;">- Non-defining clauses can be introduced by expressions like <strong><em>all of, many of </em>+ relative pronoun.</strong></span></span></span></span></span></p>
<table style="width: 99.0379%; height: 22px;">
<tbody>
<tr style="height: 50.3906px;">
<td style="width: 39.8144%; height: 50.3906px; text-align: center;">
<p> </p>
</td>
<td style="width: 30.0938%; height: 50.3906px; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;"><strong>Person</strong></span></p>
</td>
<td style="width: 29.9607%; height: 50.3906px; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;"><strong>Thing</strong></span></p>
</td>
</tr>
<tr style="height: 95.1719px;">
<td style="width: 39.8144%; height: 95.1719px; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">all of, any of, some of, a few of, both of, each of, either of, half of, many of, most of, much of, none of, one of, two of, etc.</span></p>
</td>
<td style="width: 30.0938%; height: 95.1719px; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">whom</span></p>
</td>
<td style="width: 29.9607%; height: 95.1719px; text-align: center;">
<p><span style="font-size: 12pt; font-family: arial, helvetica, sans-serif;">which</span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Examples:</span></em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">There were a lot of people at the party, <strong><em>many of whom </em></strong>I had known for years.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">He was carrying his belongings, <strong><em>many of which </em></strong>were broken.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">He had thousands of books, <strong>most of which he had read.</strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; color: #000000; background-color: #ffffff;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">- The relative pronoun <strong><em>which</em></strong><em> </em>at the beginning of a non-defining relative clause, can refer to all the information contained in the previous part of the sentence, rather than to just one word.</span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><span style="color: black;">Examples:</span></em></strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">Chris did really well in his exams, <strong>which was a big surprise</strong>. </span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="color: black;">She''s studying to become a doctor, <strong>which is difficult.</strong></span></span></span></span></p>
<p style="margin-bottom: 11px;"> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'7da86eff-9ef7-4739-bf2f-f4e8395cc4f6', N'9f6dfe05-743e-4c75-a5e0-517ef47d5e0c', N'ADVERBIAL CLAUSES OF TIME', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;"><strong>1. What are Adverbial Clauses of Time?</strong></span></p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">Adverbial clause of time is a subordinate clause used to show when something happens. It uses subordinate conjunctions like </span><em><span style="font-weight: 400;">when, before, after, as, by the time, while, until, as soon as, until, till, since, no sooner than, as long as</span></em><span style="font-weight: 400;"> etc.</span></span></p>
<p style="text-align: left;"> </p>
<p style="text-align: left;"><span style="background-color: #f8cac6;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #f8cac6;">2. Examples for Adverb Clauses of Time</strong></span></p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="background-color: #eccafa;"><strong>2.1. When: </strong></span><span style="font-weight: 400;">The word ‘when’ is generally used to indicate ‘at the moment’ or ‘at the time’. You can also notice the difference in the tenses that are used. All these clauses are in relation to the clause which indicates that they are beginning with time. While you are using the word ‘when’ then make sure that it will take the form of simple past or simple present. Most of the dependent clauses change the tense in relation to the ‘when’ clause.</span></span></p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g. Maria was talking on the phone </span><strong>when </strong><span style="font-weight: 400;">all her friends arrived at the party.</span></span></p>
<p style="text-align: left;"> </p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="background-color: #eccafa;"><strong>2.2. Before:</strong></span><span style="font-weight: 400;"><span style="background-color: #eccafa;"> </span>The word ‘before’ is used to indicate the ‘before moment’. Make sure that you remember to use the word ‘before’ in a simple past or present.</span></span></p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g. The food will be finished </span><strong>before </strong><span style="font-weight: 400;">Meghna arrives.</span></span></p>
<p style="text-align: left;"> </p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="background-color: #eccafa;"><strong>2.3. After: </strong></span><span style="font-weight: 400;">The word ‘after’ will indicate the event which is happening ‘after’ something. The word is used to explain the future moments, past or past perfect.</span></span></p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g. He will finish the homework </span><strong>after </strong><span style="font-weight: 400;">returning from the zoo.</span></span></p>
<p style="text-align: left;"> </p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="background-color: #eccafa;"><strong>2.4. While, as: </strong></span><span style="font-weight: 400;">The words ‘while’ and ‘as’ are used in combination which will both work in the past continuous tense. It explains the ‘during that time’ moment in the sentence. It will indicate the action in progress.</span></span></p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g. I began working </span><strong>while </strong><span style="font-weight: 400;">I was washing the dishes.</span></span></p>
<p style="text-align: left;"> </p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="background-color: #eccafa;"><strong>2.5. By the time: </strong></span><span style="font-weight: 400;">It is basically used to express or convey the idea of an event that is completed before another. You must note that this word is used as an adverbial clause in the past perfect tense and future perfect tense. It will impact the main clause of the sentence.</span></span></p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g. Students will have finished their homework </span><strong>by the time</strong><span style="font-weight: 400;"> teachers arrive.</span></span></p>
<p style="text-align: left;"> </p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><strong><span style="background-color: #eccafa;">2.6. Until, till:</span> </strong><span style="font-weight: 400;">With these adverbial clauses, you can express ‘up to that time’. It will be used in either a simple past or simple present. Let’s have a look at the examples.</span></span></p>
<p style="text-align: left;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt;"><span style="font-weight: 400;">E.g. We should wait </span><strong>until </strong><span style="font-weight: 400;">she finished her cooking.</span></span></p>
<p style="text-align: left;"> </p></div>', 0)
INSERT [dbo].[Lessons] ([idLesson], [idCourse], [title], [content], [isVip]) VALUES (N'abc6e480-3169-4ac7-8679-ff1c9f24a0d0', N'1aeb7d2d-b809-45ae-bff2-83f1c143a2f5', N'ADVERBS', N'<div class="dialog-theory-modal-content-text"><p style="text-align: center;"> </p>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="background-color: #f8cac6;">1. Function of adverbs</span> </strong><br/><strong>- Adverbs modify or tell us more about other words, usually verbs</strong></span></span></span></p>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em><br/>The bus moved <strong>slowly.</strong><br/>The bears ate <strong>greedily. </strong><br/><br/><strong>- Sometimes they tell us more about adjectives</strong><br/><em>Examples:</em><br/>You look <strong>absolutely</strong> fabulous<br/><br/><strong>- They can also modify other adverbs</strong><br/><em>Examples:</em><br/>She played the violin <strong>extremely</strong> well.<br/>You''re speaking<strong> too </strong>quietly.</span></span></span></p>
<p> </p>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><span style="background-color: #f8cac6;"><strong>2. Form of adverbs </strong></span><br/></span></span></span></p>
<p><span style="font-size: 16px; background-color: #eccafa; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">2.1.</span></strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"> In most cases, an <strong>adverb</strong> is formed by adding <strong>''-ly''</strong> to an <strong>adjective:</strong></span></span></span></span></p>
<table style="height: 242px; width: 100%;" width="604">
<tbody>
<tr>
<td style="text-align: center; width: 284.594px;">
<p style="text-align: center;"><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>Adjective</strong></span></p>
</td>
<td style="text-align: center; width: 273.844px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>Adverb</strong></span></p>
</td>
</tr>
<tr>
<td style="text-align: center; width: 284.594px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">quick</span></p>
</td>
<td style="text-align: center; width: 273.844px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">quickly</span></p>
</td>
</tr>
<tr>
<td style="text-align: center; width: 284.594px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">cheap</span></p>
</td>
<td style="text-align: center; width: 273.844px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">cheap</span></p>
</td>
</tr>
<tr>
<td style="text-align: center; width: 284.594px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">slow</span></p>
</td>
<td style="text-align: center; width: 273.844px;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">slowly</span></p>
</td>
</tr>
</tbody>
</table>
<p> </p>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em><br/>Time es <strong>quickly.</strong><br/>He walked <strong>slowly</strong> to the door.<br/>She <strong>certainly</strong> had an interesting life.<br/>He <strong>carefully</strong> picked up the sleeping child.<br/><br/>- If the adjective ends in <strong>''-y''</strong>, replace the <strong>''y''</strong> with <strong>''i''</strong> and add <strong>''-ly'':</strong></span></span></span></p>
<table style="width: 99.8397%; height: 62px;">
<tbody>
<tr style="height: 47px;">
<td style="width: 49.6553%; height: 47px; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>Adjective</strong></span></p>
</td>
<td style="width: 50.1744%; height: 47px; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>Adverb</strong></span></p>
</td>
</tr>
<tr style="height: 47px;">
<td style="width: 49.6553%; height: 47px; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">easy</span></p>
</td>
<td style="width: 50.1744%; height: 47px; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">easily</span></p>
</td>
</tr>
<tr style="height: 47px;">
<td style="width: 49.6553%; height: 47px; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">angry</span></p>
</td>
<td style="width: 50.1744%; height: 47px; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">angrily</span></p>
</td>
</tr>
<tr style="height: 47px;">
<td style="width: 49.6553%; height: 47px; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">happy</span></p>
</td>
<td style="width: 50.1744%; height: 47px; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">happily</span></p>
</td>
</tr>
<tr style="height: 47px;">
<td style="width: 49.6553%; height: 47px; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">lucky</span></p>
</td>
<td style="width: 50.1744%; height: 47px; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">luckily</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- If the adjective ends in <strong>-''able'', ''-ible'', or ''-le''</strong>, replace the <strong>''-e'' </strong>with <strong>''-y'':</strong></span></span></span></p>
<table style="width: 99.6793%; height: 207px;">
<tbody>
<tr>
<td style="width: 50.0768%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>Adjective</strong></span></p>
</td>
<td style="width: 49.9232%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>Adverb</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 50.0768%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">probable</span></p>
</td>
<td style="width: 49.9232%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">probably</span></p>
</td>
</tr>
<tr>
<td style="width: 50.0768%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">terrible</span></p>
</td>
<td style="width: 49.9232%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">probably</span></p>
</td>
</tr>
<tr>
<td style="width: 50.0768%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">gentle</span></p>
</td>
<td style="width: 49.9232%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">gently</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">- If the adjective ends in <strong>''-ic''</strong>, add <strong>''-ally'':</strong></span></span></span></p>
<table style="height: 201px; width: 99.5724%;">
<tbody>
<tr>
<td style="width: 49.7364%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>Adjective</strong></span></p>
</td>
<td style="width: 50.2636%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>Adverb</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 49.7364%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">basic</span></p>
</td>
<td style="width: 50.2636%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">basically</span></p>
</td>
</tr>
<tr>
<td style="width: 49.7364%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">economic</span></p>
</td>
<td style="width: 50.2636%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">economically</span></p>
</td>
</tr>
<tr>
<td style="width: 49.7364%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">tragic</span></p>
</td>
<td style="width: 50.2636%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">tragically</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em><u>Note:</u></em></strong></span></span></span></p>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Exception:<strong> public – publicly</strong></em><br/><br/><span style="background-color: #eccafa;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">2.2.</span></strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"> Some adverbs have the<strong> same form </strong>as the adjectives:</span></span></span></span></span></p>
<table style="height: 329px; width: 99.6259%;">
<tbody>
<tr>
<td style="width: 48.1481%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>Adjective</strong></span></p>
</td>
<td style="width: 51.8519%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;"><strong>Adverb</strong></span></p>
</td>
</tr>
<tr>
<td style="width: 48.1481%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">early</span></p>
</td>
<td style="width: 51.8519%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">early</span></p>
</td>
</tr>
<tr>
<td style="width: 48.1481%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">late</span></p>
</td>
<td style="width: 51.8519%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">late</span></p>
</td>
</tr>
<tr>
<td style="width: 48.1481%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">fast</span></p>
</td>
<td style="width: 51.8519%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">fast</span></p>
</td>
</tr>
<tr>
<td style="width: 48.1481%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">near</span></p>
</td>
<td style="width: 51.8519%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">near</span></p>
</td>
</tr>
<tr>
<td style="width: 48.1481%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">hard</span></p>
</td>
<td style="width: 51.8519%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">hard</span></p>
</td>
</tr>
<tr>
<td style="width: 48.1481%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">straight</span></p>
</td>
<td style="width: 51.8519%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">straight</span></p>
</td>
</tr>
<tr>
<td style="width: 48.1481%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">high</span></p>
</td>
<td style="width: 51.8519%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">high</span></p>
</td>
</tr>
<tr>
<td style="width: 48.1481%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">wrong</span></p>
</td>
<td style="width: 51.8519%; text-align: center;">
<p><span style="font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: #ffffff; color: #000000;">wrong</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong><em>Examples: </em></strong><br/>It is a <strong>fast</strong> car.<br/>He drives very<strong> fast. </strong></span></span></span><br/><span style="background-color: #ffffff; color: #000000;"> </span></p>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">This is a <strong>hard</strong> exercise.<br/>He works<strong> hard.</strong></span></span></span><br/><span style="background-color: #ffffff; color: #000000;"> </span></p>
<p><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">We saw many <strong>high</strong> buildings.<br/>The bird flew <strong>high</strong> in the sky.<br/><br/><span style="background-color: #eccafa;"><strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">2.3.</span></strong><span style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"> <strong>''Well'' </strong>and <strong>''od''</strong></span></span></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><strong>''Well'' </strong>is the adverb that corresponds to the adjective <strong>''od''. </strong></span></span></span></p>
<p style="margin-bottom: 11px;"><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;"><em>Examples:</em><br/>He is a <strong>od </strong>student.<br/>He studies<strong> well. </strong></span></span></span></p>
<p style="margin-bottom: 11px;"><br/><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">She is a<strong> od </strong>pianist.<br/>She plays the piano <strong>well. </strong></span></span></span></p>
<p style="margin-bottom: 11px;"><br/><span style="font-size: 16px; background-color: #ffffff; color: #000000;"><span style="font-family: Arial,Helvetica,sans-serif;"><span style="line-height: 150%;">They are <strong>od </strong>swimmers.<br/>They swim <strong>well.</strong></span></span></span></p>
<p style="margin-bottom: 11px;"> </p></div>', 0)
GO
INSERT [dbo].[PaymentMethods] ([idMethod], [name]) VALUES (N'497fde6e-2c13-487f-bf9b-749afe24c4fa', N'VNPAY')
INSERT [dbo].[PaymentMethods] ([idMethod], [name]) VALUES (N'4a7f956c-c7cd-4883-ac5a-e4ebe532fbb6', N'MOMO')
GO
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'0b9062d8-d9a1-49a8-ab7e-2d3f07e01e4c', N'4a7f956c-c7cd-4883-ac5a-e4ebe532fbb6', N'809de52d-b38e-4ca7-87fe-61f2ddcc41df', N'c5efdd6d-a0c1-4d7a-bb83-0537cfc88a8c', N'Success', CAST(N'2023-12-23T16:21:56.6079591' AS DateTime2), 10000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'1844adc5-d015-4748-83c5-34c5f5cf8135', N'497fde6e-2c13-487f-bf9b-749afe24c4fa', N'9e86ba70-2c80-4d57-9b1a-2251aa482442', N'c5efdd6d-a0c1-4d7a-bb83-0537cfc88a8c', N'Success', CAST(N'2023-12-17T07:44:36.4961812' AS DateTime2), 10000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'b6f637ec-caab-4b0f-ae81-3730d800fdd3', N'497fde6e-2c13-487f-bf9b-749afe24c4fa', N'd16e24cd-55c2-40f5-96e5-24d8f6a64650', N'c5efdd6d-a0c1-4d7a-bb83-0537cfc88a8c', N'Success', CAST(N'2024-03-23T20:16:45.0742125' AS DateTime2), 10000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'7f1f5bab-3034-4d32-9156-960eab129b99', N'497fde6e-2c13-487f-bf9b-749afe24c4fa', N'809de52d-b38e-4ca7-87fe-61f2ddcc41df', N'933bdeed-d52b-4811-b075-34ecf6b25d64', N'Success', CAST(N'2023-12-16T07:10:56.7820415' AS DateTime2), 4500000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'8ec97338-7822-49cd-8b93-974213979032', N'497fde6e-2c13-487f-bf9b-749afe24c4fa', N'e7cb3e86-fb46-4939-bee2-df8ac03bf142', N'c5efdd6d-a0c1-4d7a-bb83-0537cfc88a8c', N'Success', CAST(N'2023-12-23T16:03:32.6096520' AS DateTime2), 10000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'8cba280f-c737-4972-93bf-a15cd849c6c4', N'4a7f956c-c7cd-4883-ac5a-e4ebe532fbb6', N'809de52d-b38e-4ca7-87fe-61f2ddcc41df', N'933bdeed-d52b-4811-b075-34ecf6b25d64', N'Success', CAST(N'2023-12-16T07:09:31.6420340' AS DateTime2), 45000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'f71edf95-6282-4c56-b9a5-acaebbecb24e', N'497fde6e-2c13-487f-bf9b-749afe24c4fa', N'584f0a2f-0b11-4846-8038-39fa365ff2c7', N'933bdeed-d52b-4811-b075-34ecf6b25d64', N'Success', CAST(N'2023-12-17T13:16:46.6824916' AS DateTime2), 450000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'ae6c2691-8bbd-429b-921e-bec1f4aa7e4a', N'497fde6e-2c13-487f-bf9b-749afe24c4fa', N'85e8b325-d152-4296-a060-854176f10787', N'c5efdd6d-a0c1-4d7a-bb83-0537cfc88a8c', N'Success', CAST(N'2023-12-16T04:18:59.2571668' AS DateTime2), 1000000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'7daee990-6e12-461b-9f12-c4b4bcea6cc7', N'497fde6e-2c13-487f-bf9b-749afe24c4fa', N'809de52d-b38e-4ca7-87fe-61f2ddcc41df', N'933bdeed-d52b-4811-b075-34ecf6b25d64', N'Success', CAST(N'2023-12-17T09:00:58.3437683' AS DateTime2), 45000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'7cc9b94a-77e2-46fb-aa63-dcb49d68285e', N'4a7f956c-c7cd-4883-ac5a-e4ebe532fbb6', N'85e8b325-d152-4296-a060-854176f10787', N'c5efdd6d-a0c1-4d7a-bb83-0537cfc88a8c', N'Success', CAST(N'2024-01-01T02:56:36.5492372' AS DateTime2), 10000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'91799285-3eb8-4e25-9187-e37bd76716f4', N'497fde6e-2c13-487f-bf9b-749afe24c4fa', N'809de52d-b38e-4ca7-87fe-61f2ddcc41df', N'c5efdd6d-a0c1-4d7a-bb83-0537cfc88a8c', N'Success', CAST(N'2023-12-17T09:09:07.8311380' AS DateTime2), 10000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'37b6a79e-7bad-4ff1-884c-ecca6c6873a7', N'4a7f956c-c7cd-4883-ac5a-e4ebe532fbb6', N'85e8b325-d152-4296-a060-854176f10787', N'c5efdd6d-a0c1-4d7a-bb83-0537cfc88a8c', N'Success', CAST(N'2023-12-16T03:43:36.6001623' AS DateTime2), 10000)
INSERT [dbo].[Payments] ([idPayment], [idMethod], [idStudent], [idPackage], [message], [paymentDate], [paymentAmount]) VALUES (N'bafaf877-6ec3-4653-836d-f1c0123fb147', N'497fde6e-2c13-487f-bf9b-749afe24c4fa', N'85e8b325-d152-4296-a060-854176f10787', N'c5efdd6d-a0c1-4d7a-bb83-0537cfc88a8c', N'Success', CAST(N'2023-12-16T03:47:37.8378434' AS DateTime2), 1000000)
GO
INSERT [dbo].[Professors] ([idProfessor], [idUser]) VALUES (N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'0eaf6926-d068-49a3-a42e-ce446d603178')
GO
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'd2eac385-f384-43f3-9ea8-122f3e9fc0c2', NULL, N'e8ef007c-f12e-42ce-a518-199c6dfea9e0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What did the woman do last week?', N'3', N'', N'She had a business meeting with Mr. Ransh.', N'She made changes in a blueprint design.', N'She sent an e-mail to Mr. Ransh.', N'She talked with Mr. Ransh on the phone.')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'db0947b4-0088-44d3-875d-15240d2e8d9d', NULL, N'62ffc65b-2175-4d7a-be0a-6d50dfb234df', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'At 8:59 A.M., what does Ms. Randolph most likely mean when she writes, "Not at all"?', N'3', N'Lúc 8:59 sáng, cô Randolph rất có thể có ý gì khi cô viết, "Not at all"?', N'She would like to participate in an interview.', N'She does not think Mr. Erickson should be hired.', N' She feels comfortable fulfilling a request.', N'She has not read Mr. Erickson''s writing.')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'e85102ad-849f-4b3c-bdb6-18ad2b2fe91f', NULL, N'c779db4d-134c-496c-88e8-cc3d9ff584e0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Because it is taking____ long for the staff to get used to the software, the office manager is planning to organize a training workshop.', N'2', N'"Unexpectedly" means "in a way that is not expected" which has the most appropriate meaning ', N'immediately', N'unexpectedly', N'exactly', N'attentively')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'1f1128ce-b690-4280-8ee2-1c13796a042b', NULL, N'11026fa9-f772-430e-a225-eaee80daa6dd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'4', N'', N'serve', N'served', N'server', N'service')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'658977f0-67e0-409f-9ec7-2d859dee4fe2', NULL, N'c779db4d-134c-496c-88e8-cc3d9ff584e0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'A special luncheon for the advertising team will be____ in the main banquet hall of the Phalya Hotel.', N'3', N'"Held" is the past participle of "hold". "Hold" means "to have something such as a meeting or an election" which has the most appropriate meaning ', N'staged', N'referred', N'held', N'went')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'5697dc40-1252-40e1-9e58-37ddd7b4a4de', NULL, N'313ed1d7-170a-4209-b19a-045df03ba253', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'1', N'', N' ', N' ', N' ', N' ')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'45f66bbd-e6a2-41f4-8ae9-3cba4e7b9b55', NULL, N'62ffc65b-2175-4d7a-be0a-6d50dfb234df', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'According to the discussion, what is important to Mr. Peters about a new hire?', N'4', N'Theo cuộc thảo luận, điều gì quan trọng đối với ông Peters về việc tuyển dụng mới?', N' Prior news reporting experience', N'Ability to begin working immediately', N'Communicating well with colleagues', N'Staying with the company over the long term')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'c36533c1-de88-4d56-8c66-3d7c5bfd6f85', NULL, N'e8ef007c-f12e-42ce-a518-199c6dfea9e0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What will the woman most likely do next?
', N'2', N'', N'Call Mr. Ransh', N'Send a document', N'Visit Mr. Ransh', N' Redesign the blueprints')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'8832a138-650a-4c03-b532-4065f306d81a', NULL, N'2e9a8c14-83de-4954-b470-5e1ded39e4a7', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Why is the man impressed?', N'1', N'', N' The equipment is of high quality.', N'The factory is selling expensive devices.', N'The robots are working instead of people.', N'The machines are very clean.')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'de2bb0e5-9350-4819-bb31-444066307b1f', NULL, N'11026fa9-f772-430e-a225-eaee80daa6dd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'1', N'', N'apologize', N'organize', N'realize', N'recognize')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'7b129c34-bd0d-431d-aaf2-44bc6debc8b9', NULL, N'11026fa9-f772-430e-a225-eaee80daa6dd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'2', N'', N'Along', N'During', N'Without', N'Between')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'b3b10cd4-090d-4bab-877c-503c4794430f', NULL, N'c779db4d-134c-496c-88e8-cc3d9ff584e0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'The botanical garden____ on the south side of the island and can easily be found on any map.', N'1', N'Be located on => A is correct ', N'is located', N'locates', N'locating', N'was locating')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'62fa145e-fd5e-451c-b51b-50de0a3228f7', NULL, N'95703af1-8ca0-4fce-95b7-81387f0f30f6', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What will happen on August 4?', N'1', N'', N'Dr. Alfson’s new book will be available.', N' A new research project will be launched.', N'The radio will broadcast an interview.', N' The results of a study will be announced.')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'b6cb4b12-46b9-401f-ae0d-54fa1b3e1862', NULL, N'2e9a8c14-83de-4954-b470-5e1ded39e4a7', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Where is this conversation most likely taking place?', N'4', N'', N' At a robot exhibition', N'At a computer system convention', N'At a machinery shop', N' In a manufacturing plant')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'612c93e7-c842-465b-bab9-5d841c07d310', NULL, N'ad570d7b-6349-49ee-b2d8-a6bb027a7415', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What will the listeners probably do next?', N'1', N'', N'Read a brochure', N'Watch a presentation', N'Reserve a booth', N'Register for activities')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'a663619c-1889-49e5-ab04-6817e6908c25', NULL, N'95703af1-8ca0-4fce-95b7-81387f0f30f6', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Who most likely is Ted Costello?', N'3', N'', N'A newspaper reporter', N'A computer scientist', N'A radio host', N'A research assistant')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'784b09fc-16fe-4bc6-aa3e-685f3b5ff282', NULL, N'c779db4d-134c-496c-88e8-cc3d9ff584e0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'____ newly-hired employees on the management level should attend the training workshop about the company values.', N'4', N'All + plural noun (employees) ', N'Neither', N'Every', N'Each', N'All')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'58375f17-e8a1-4dd9-89df-68f9f4402d29', NULL, N'ad570d7b-6349-49ee-b2d8-a6bb027a7415', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What is the speaker talking about?', N'1', N'', N'A medical conference', N'A technology exhibition', N'A political convention', N'A career fair')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'c8b27f89-b1a8-49d2-9c56-8717fefff6a8', NULL, N'c102addf-436b-4081-9eb7-6888dff05602', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'3', N'', N' ', N' ', N' ', N' ')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'4abaee29-6544-445c-af03-87d72d2a9f97', NULL, N'e8ef007c-f12e-42ce-a518-199c6dfea9e0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Why is Mr. Ransh upset?', N'1', N'', N'He did not receive a document.', N'The woman canceled an appointment.', N'He doesn’t like the woman’s design.', N'The construction of a building has cancelled.')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'54df5f08-837d-400d-aa63-88eecc002d6a', NULL, N'62ffc65b-2175-4d7a-be0a-6d50dfb234df', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What is indicated about Mr. Erickson?', N'2', N'Điều gì được chỉ ra về anh Erickson?', N'He has never been on a job interview before.', N'He has held many different types of jobs.', N'He is taking over Mr. Peters'' position.', N'He is a former colleague of Ms. Montaine.')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'f25a690b-0157-4060-9fda-955073a90d3d', NULL, N'348e21d5-8d34-490d-ac10-11e60d0d4e52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'1', N'', N' ', N' ', N' ', N' ')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'b11aaab3-6de1-48a6-a2ca-9612dc872a5a', NULL, N'98fc1d04-8ee3-42b1-9074-e47c521837c7', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'2', N'', N' ', N' ', N' ', N' ')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'e2f91d97-be37-4b9d-84e7-a3b16db1485c', NULL, N'95703af1-8ca0-4fce-95b7-81387f0f30f6', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What does Dr. Alfson specialize in?', N'4', N'', N' Music education', N'Market research', N'Mergers and acquisitions', N'The study of language')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'c4f80da8-d990-4af7-a0ba-a56b432bd2ea', NULL, N'c779db4d-134c-496c-88e8-cc3d9ff584e0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Masara Bankole, an award-winning____ at the Toronto Star, has agreed to host radio show for charity fundraising.', N'2', N'The blank needs a noun. "Journalist" means "a person who writes news stories or articles for a newspaper or magazine or broadcasts them on radio or television" which has the most appropriate meaning ', N'journal', N'journalist', N'journalism', N'journalistic')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'180cc4cb-662c-4339-9b2f-ae4894ffe93c', NULL, N'e30fd4bc-2264-4838-be33-7dd428fb5a28', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'1', N'"Problem" means "a situation, person, or thing that needs attention and needs to be dealt with or solved" which has the most appropriate meaning ', N'problem', N'charge', N'meeting', N'decision')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'7749550b-df52-4771-bccb-af4af6492e5c', NULL, N'c779db4d-134c-496c-88e8-cc3d9ff584e0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Relative housing values have dropped more than 10 percent from ____ peak in the first half of the year.', N'2', N'We need a possessive adjective before the noun "peak" => B is correct ', N'they', N'their', N'them', N'theirs')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'fd695a05-1311-4a02-ba54-b2d24c0fd113', NULL, N'49b8292c-6a0d-4f8d-bc13-cffcf81da701', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Where most likely is Patrick?', N'4', N'', N'At his home', N'In his office', N'At a restaurant', N'On a business trip')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'11fa3506-96a3-4ec2-b719-c55ad1dab013', NULL, N'e30fd4bc-2264-4838-be33-7dd428fb5a28', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'1', N'The blank needs a verb => D is correct ', N'functionally', N'functional', N'function', N'functioning')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'3ab45e88-d9dc-4264-81b6-d3bc7284a098', NULL, N'ba5a2bda-44ac-42e2-8f8b-6799cd1aba43', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'4', N'', N' ', N' ', N' ', N' ')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'bcb3cfc9-9ce5-4ba1-8fa9-dce508632032', NULL, N'b3066233-2ab8-43b7-bf72-7880fc6b2cc1', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'1', N'', N' ', N' ', N' ', N' ')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'4991fe6a-8c39-4676-82bd-e48cc64e158c', NULL, N'2e9a8c14-83de-4954-b470-5e1ded39e4a7', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What is the woman wondering?', N'1', N'', N'The cost of a system upgrade', N'The location of a factory', N'A time for installation', N'A report on company’s performance')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'e6b039a3-fa2a-485b-a0d3-f10d091a1386', NULL, N'49b8292c-6a0d-4f8d-bc13-cffcf81da701', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What does the woman want to find?', N'2', N'', N'Some money', N'A file', N'An office key', N' A check')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'4d1661bc-6ce3-4fb9-87d7-f834c79250bf', NULL, N'e30fd4bc-2264-4838-be33-7dd428fb5a28', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ', N'4', N'"Promptly" means "quickly, without delay, or at the arranged time" which has the most appropriate meaning ', N'casually', N'collectively', N'frequently', N'promptly')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'8114b622-fb30-4261-8537-fb65b9fed72f', NULL, N'ad570d7b-6349-49ee-b2d8-a6bb027a7415', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What will the listeners probably do next?', N'1', N'', N'Read a brochure', N'Watch a presentation', N'Reserve a booth', N'Register for activities')
INSERT [dbo].[Questions] ([idQuestion], [idQuiz], [idUnit], [idProfessor], [content], [answer], [explaination], [choice_1], [choice_2], [choice_3], [choice_4]) VALUES (N'e53884cd-0bd8-44cf-ac86-fbee26970dae', NULL, N'49b8292c-6a0d-4f8d-bc13-cffcf81da701', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'What will John most likely do next?', N'1', N'', N'Check his office', N' Bring Patrick', N'Postpone a meeting', N'Reply to a letter')
GO
INSERT [dbo].[Quizs] ([idQuiz], [idLesson], [title]) VALUES (N'492234cc-ec4d-4247-83a7-cfff491a1cea', N'fbb34767-d4d2-48ec-887a-1c0ccf8e5b98', N'Quiz 1')
GO
SET IDENTITY_INSERT [dbo].[ResetPasswords] ON 

INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (1, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'741323', CAST(N'2023-12-02T16:05:01.8875937' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (2, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'163431', CAST(N'2023-12-02T16:38:37.6398358' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (3, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'524933', CAST(N'2023-12-02T16:40:31.2680565' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (4, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'215222', CAST(N'2023-12-03T03:03:23.6301153' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (5, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'529164', CAST(N'2023-12-03T03:04:36.1670884' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (6, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'488210', CAST(N'2023-12-03T03:05:25.9369374' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (7, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'107886', CAST(N'2023-12-03T03:09:52.4228065' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (8, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'427277', CAST(N'2023-12-03T03:16:20.2245129' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (9, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'582614', CAST(N'2023-12-03T03:17:49.2420130' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (10, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'318915', CAST(N'2023-12-03T07:33:11.5827431' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (11, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'386538', CAST(N'2023-12-03T12:47:37.3440449' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (12, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'984452', CAST(N'2023-12-04T02:35:47.3968471' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (13, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'848102', CAST(N'2023-12-04T10:31:47.4359071' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (14, N'aa461c41-a60b-4cc7-b646-275cd9d5a052', N'982171', CAST(N'2023-12-04T12:24:43.8124230' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (15, N'f9f8da23-d5d4-491a-9f23-0ff20bbfa274', N'404651', CAST(N'2023-12-08T04:19:02.4985470' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (16, N'02605646-f2c3-4ece-9b52-99a0914861de', N'810850', CAST(N'2023-12-17T07:12:53.6308406' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (17, N'20966528-2d60-46f9-b5e8-0a71fa2eaf64', N'261122', CAST(N'2023-12-17T08:29:50.3673580' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (18, N'd864c1ae-0c07-4e25-b12e-a1a11e70846a', N'104948', CAST(N'2023-12-17T10:02:56.4372281' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (1016, N'd8e8141d-844e-4000-ba4a-b94caeae66ee', N'390410', CAST(N'2023-12-18T09:44:44.9442565' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (2016, N'3bd8684e-2afa-4cd3-8926-ec54d20a6375', N'865919', CAST(N'2023-12-23T10:35:28.6530974' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (3016, N'02605646-f2c3-4ece-9b52-99a0914861de', N'305187', CAST(N'2023-12-24T15:09:21.3252730' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (3017, N'baa07045-d1e0-4b3d-8dde-3eda71aeace3', N'173522', CAST(N'2023-12-24T15:09:48.4732194' AS DateTime2))
INSERT [dbo].[ResetPasswords] ([Id], [UserId], [OTP], [InsertDateTimeUTC]) VALUES (3018, N'1d0f2800-ac77-4ca3-998d-ff654010211c', N'430636', CAST(N'2024-03-09T03:02:01.6514162' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ResetPasswords] OFF
GO
SET IDENTITY_INSERT [dbo].[ScoreParams] ON 

INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (1, 5, 5)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (2, 5, 5)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (3, 5, 5)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (4, 5, 5)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (5, 5, 5)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (6, 5, 5)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (7, 10, 5)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (8, 15, 5)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (9, 20, 5)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (10, 25, 10)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (11, 30, 15)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (12, 35, 20)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (13, 40, 25)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (14, 45, 30)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (15, 50, 35)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (16, 55, 40)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (17, 60, 45)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (18, 65, 50)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (19, 70, 55)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (20, 75, 60)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (21, 80, 65)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (22, 85, 70)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (23, 90, 75)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (24, 95, 80)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (25, 100, 90)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (26, 105, 95)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (27, 110, 100)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (28, 115, 110)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (29, 120, 115)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (30, 125, 120)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (31, 135, 125)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (32, 140, 130)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (33, 145, 135)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (34, 150, 140)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (35, 155, 145)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (36, 160, 150)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (37, 165, 155)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (38, 170, 160)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (39, 180, 170)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (40, 185, 175)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (41, 190, 180)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (42, 195, 185)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (43, 200, 195)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (44, 210, 200)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (45, 220, 205)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (46, 225, 210)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (47, 230, 220)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (48, 235, 225)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (49, 240, 230)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (50, 245, 235)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (51, 250, 240)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (52, 255, 250)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (53, 260, 255)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (54, 270, 260)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (55, 275, 270)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (56, 280, 275)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (57, 285, 280)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (58, 295, 285)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (59, 300, 290)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (60, 305, 295)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (61, 310, 300)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (62, 315, 305)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (63, 320, 310)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (64, 325, 320)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (65, 330, 325)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (66, 335, 330)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (67, 340, 335)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (68, 345, 340)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (69, 350, 345)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (70, 360, 350)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (71, 365, 355)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (72, 370, 360)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (73, 375, 365)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (74, 380, 370)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (75, 390, 375)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (76, 395, 380)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (77, 400, 385)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (78, 405, 390)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (79, 410, 395)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (80, 420, 400)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (81, 425, 405)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (82, 430, 405)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (83, 435, 410)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (84, 440, 415)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (85, 450, 420)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (86, 455, 425)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (87, 460, 430)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (88, 470, 435)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (89, 475, 445)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (90, 480, 450)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (91, 485, 455)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (92, 490, 465)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (93, 495, 470)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (94, 495, 480)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (95, 495, 485)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (96, 495, 490)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (97, 495, 495)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (98, 495, 495)
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (99, 495, 495)
GO
INSERT [dbo].[ScoreParams] ([correctAnswers], [listenningScore], [readingScore]) VALUES (100, 495, 495)
SET IDENTITY_INSERT [dbo].[ScoreParams] OFF
GO
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'70c0d1fb-9560-4c7b-bf48-00a2e20090a8', N'ee7696f1-510e-4524-a6e9-729c645c8d7f', 1)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'9e86ba70-2c80-4d57-9b1a-2251aa482442', N'02605646-f2c3-4ece-9b52-99a0914861de', 0)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'd16e24cd-55c2-40f5-96e5-24d8f6a64650', N'a751f260-9e0c-4af0-9df2-ff763f7bd68f', 0)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'a8a48b84-9582-4188-b734-2fe263931c31', N'14fb1aac-2dbd-47bf-bdc6-a155b49d44ec', 0)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'131e19dd-5701-4f20-89ff-31abfa8eda7d', N'cecd5dc8-f0cc-420d-b5da-ca97587a3c0d', 1)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'a9eb916c-4cb1-484c-9c76-35f25d2d25c8', N'420f91ad-2927-4181-a1fb-52095831e965', 0)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'584f0a2f-0b11-4846-8038-39fa365ff2c7', N'60c3c9b1-52e4-4a25-af37-e6ae8cc79e0d', 1)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'f81e016f-3b17-45a4-bbe2-61423474891f', N'072692d4-1c61-445b-a7e8-01672a0232ff', 1)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'809de52d-b38e-4ca7-87fe-61f2ddcc41df', N'93baafda-a67a-42c1-96f5-138f0af0cb5c', 0)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'85e8b325-d152-4296-a060-854176f10787', N'd8e8141d-844e-4000-ba4a-b94caeae66ee', 0)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'dee402d4-ae90-4849-aa88-9a0929a948a2', N'8c363548-940b-4a4d-8d11-88eedcacd9f3', 1)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'742beeb6-ee0d-4aef-bed4-c51959fdab57', N'51449878-5a22-4ed4-9d6d-cd477d2a2d92', 1)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'7f2fe79b-332a-4c62-ae98-c773a4143f0b', N'35c35401-ce6c-4568-a19a-f8b4fffbf05b', 1)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'ab7c49e5-83a3-4a60-8c9f-d338ea253fb0', N'18da0d58-07aa-40d1-8c5b-ae18449ce329', 1)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'e7cb3e86-fb46-4939-bee2-df8ac03bf142', N'afe3d1ee-bbdb-48da-8559-49902648fc3b', 0)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'4fc74c3a-afae-4a88-b3b9-ebde46e07d62', N'20966528-2d60-46f9-b5e8-0a71fa2eaf64', 0)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'9e5f7936-0882-441a-885e-f76aa5e831cf', N'8b42ddeb-1f7a-4907-a67a-04033ed516d4', 1)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'bfb7fc94-a3ca-4aa7-a439-fc1afa45d572', N'c2627f0b-dc5a-4479-afcf-82ed326fd035', 1)
INSERT [dbo].[Students] ([idStudent], [idUser], [freeTest]) VALUES (N'34f66a47-e71e-4ff7-837b-feee18d9e37b', N'baf4e2a1-7cc6-4995-94a2-159df307faf1', 0)
GO
INSERT [dbo].[TestParts] ([partId], [partName]) VALUES (N'8bd8ddc1-8e0b-4839-98b6-48419ed575a1', N'Part 7')
INSERT [dbo].[TestParts] ([partId], [partName]) VALUES (N'cd946869-8b95-44ef-a4c5-93bc490c844a', N'Part 3')
INSERT [dbo].[TestParts] ([partId], [partName]) VALUES (N'128f202b-94e7-4c8c-a70f-cdc0426e0e13', N'Part 6')
INSERT [dbo].[TestParts] ([partId], [partName]) VALUES (N'fd59d12e-5f96-4b05-a727-cf0eaf096255', N'Part 2')
INSERT [dbo].[TestParts] ([partId], [partName]) VALUES (N'fd79dfe1-2b02-4223-a838-d69cb4b8ca5e', N'Part 5')
INSERT [dbo].[TestParts] ([partId], [partName]) VALUES (N'6109a25d-bc56-4007-8071-da3fc87fb2b3', N'Part 4')
INSERT [dbo].[TestParts] ([partId], [partName]) VALUES (N'1baa42ee-9ad8-4cf3-b8d9-dd1d848d4ca6', N'Part 1')
GO
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'313ed1d7-170a-4209-b19a-045df03ba253', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'fd59d12e-5f96-4b05-a727-cf0eaf096255', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702360129/tkfisoihmbq1gcvzmvxd.mp3', NULL, N'Has the plumber stopped the leak in the upstairs restroom?
(A) Yes, it’s working fine now.
(B) No, I live downstairs.
(C) Try calling a professional.', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'348e21d5-8d34-490d-ac10-11e60d0d4e52', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'fd59d12e-5f96-4b05-a727-cf0eaf096255', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702360490/vhc4t8lphlk3ntu8wcjx.mp3', NULL, N'When do you want to leave for the concert hall?
(A) How about an hour from now?
(B) At the Mont mery Theater.
(C) My favorite band is playing.', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'e8ef007c-f12e-42ce-a518-199c6dfea9e0', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'cd946869-8b95-44ef-a4c5-93bc490c844a', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702362250/wpqjipykj2i1979fuifk.mp3', NULL, N'M: Mandy, Mr. Ransh just called me. He sounded pretty upset about not receiving any design blueprints yet. You''d better send him something soon.
W: Really? That''s weird. I sent him a blueprint by e-mail last week!
M: Hmm. Are you sure? Maybe you sent it to the wrong e-mail address.
W: No. I have his correct address saved in my computer directory. Well, I should send him a blueprint again right away anyway.', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'2e9a8c14-83de-4954-b470-5e1ded39e4a7', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'cd946869-8b95-44ef-a4c5-93bc490c844a', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702361498/uaxxovvnp2p3dmjtpryb.mp3', NULL, N'W: Look at all the robotics we are using on the manufacturing assembly line. They are all automatically operated.
M: I can see. It’s really impressive. You know, factories rarely use such high-quality devices these days.
W: Yes. So I need to find the right system to handle all the equipment we’ve installed. The system we’re currently using needs to be upgraded. How much would it cost to do business with your company?', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'ba5a2bda-44ac-42e2-8f8b-6799cd1aba43', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'1baa42ee-9ad8-4cf3-b8d9-dd1d848d4ca6', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702354220/n2r5wy38je7e7ufvuuuf.mp3', N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1702354221/t5wn0knfqtczxlifxbcy.png', N'(A) They’re greeting each other.
(B)They’re walking beside the lake.
(C)They’re suntanning on the grass.
(D)They’re carrying backpacks on their shoulders.', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'c102addf-436b-4081-9eb7-6888dff05602', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'1baa42ee-9ad8-4cf3-b8d9-dd1d848d4ca6', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702355610/tgewvabdilpuhpzgy2w9.mp3', N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1702355611/nhzjcovyin8vdupa771s.png', N'(A) The passengers are boarding the aircraft.
(B)The flight is departing for the destination.
(C)The plane has landed at the airport for a time.
(D)The surface of the plane is damaged.', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'62ffc65b-2175-4d7a-be0a-6d50dfb234df', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'8bd8ddc1-8e0b-4839-98b6-48419ed575a1', N'<div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><b style="box-sizing: border-box; font-weight: bolder;">Ashley Montaine 8:54 A.M.:</b><span>&nbsp;</span>How did the interview with Mr. Erickson  ?</div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><b style="box-sizing: border-box; font-weight: bolder;">Dan Campbell 8:55 A.M.:</b><span>&nbsp;</span>I really enjoyed meeting him. I think he''d be a great reporter here. He seems smart and organized, and his samples show that he''s a great writer.</div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><b style="box-sizing: border-box; font-weight: bolder;">Ashley Montaine 8:57 A.M.:</b><span>&nbsp;</span>Brooke, can you contact Mr. Erickson to set up the next interview? Is that a problem?<br style="box-sizing: border-box;"></div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><b style="box-sizing: border-box; font-weight: bolder;">Dan Campbell 8:58 A.M.:</b><span>&nbsp;</span>I''d really like to work with him. It is very important that he impress Mr. Peters.<br style="box-sizing: border-box;"></div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><b style="box-sizing: border-box; font-weight: bolder;">Brooke Randolph 8:59 A.M.:<span>&nbsp;</span></b>Not at all.<br style="box-sizing: border-box;"></div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><b style="box-sizing: border-box; font-weight: bolder;">Ashley Montaine 9:00 A.M.:<span>&nbsp;</span></b>Thanks. I also see that he has a varied work history. That will make him a well-rounded reporter.<br style="box-sizing: border-box;"></div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><b style="box-sizing: border-box; font-weight: bolder;">Brooke Randolph 9:02 A.M.:</b><span>&nbsp;</span>When would you like to meet with him again?<br style="box-sizing: border-box;"></div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><b style="box-sizing: border-box; font-weight: bolder;">Dan Campbell 9:03 A.M.:</b><span>&nbsp;</span>Ashley, I believe you will participate in the next interview. Note that Mr. Peters is probably  ing to ask why Mr. Erickson wants to transition from freelance writing to in-house news reporting. Also, Mr. Peters will want assurances that he''s committed and will stick around for several years.</div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><b style="box-sizing: border-box; font-weight: bolder;">Ashley Montaine 9:04 A.M.:</b><span>&nbsp;</span>Brooke, Mr. Peters and I are both free Friday morning.<br style="box-sizing: border-box;"></div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><b style="box-sizing: border-box; font-weight: bolder;">Brooke Randolph 9:06 A.M.:</b><span>&nbsp;</span>Great. I''ll write an e-mail shortly.</div>', NULL, NULL, N'null', N'Ashley Montaine 8:54 A.M.: Cuộc phỏng vấn với anh Erickson diễn ra như thế nào?

Dan Campbell 8:55 A.M.: Tôi thực sự rất thích được gặp anh ấy. Tôi nghĩ rằng anh ấy sẽ là một phóng viên giỏi ở đây. Anh ấy có vẻ thông minh và có tổ chức, và các mẫu viết thử của anh ấy cho thấy anh ấy là một cây viết tuyệt vời.

Ashley Montaine 8:57 A.M.: Brooke, bạn có thể liên hệ với ông Erickson để sắp xếp cuộc phỏng vấn tiếp theo không? Đó có phải là vấn đề không?

Dan Campbell 8:58 A.M.: Tôi thực sự muốn làm việc với anh ấy. Điều rất quan trọng là anh ấy phải gây ấn tượng với ông Peters.

Brooke Randolph 8:59 A.M.: Không có vấn đề gì.

Ashley Montaine 9:00 A.M.:  Cảm ơn nhiều. Tôi cũng thấy rằng anh ấy có một quá trình làm việc đa dạng. Điều đó sẽ khiến anh ấy trở thành một phóng viên toàn diện.

Brooke Randolph 9:02 A.M.: Khi nào bạn muốn gặp lại anh ấy?

Dan Campbell 9:03 A.M.: Ashley, tôi tin rằng bạn sẽ tham gia vào cuộc phỏng vấn tiếp theo. Lưu ý rằng ông Peters có thể sẽ hỏi tại sao anh Erickson muốn chuyển từ viết báo tự do sang báo cáo tin tức nội bộ. N ài ra, ông Peters sẽ muốn một đảm bảo rằng anh ấy cam kết và sẽ gắn bó trong vài năm.

Ashley Montaine 9:04 A.M.: Brooke, ông Peters và tôi đều rảnh vào sáng thứ Sáu.

Brooke Randolph 9:06 A.M.: Tuyệt vời. Tôi sẽ viết một e-mail ngay.')
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'b3066233-2ab8-43b7-bf72-7880fc6b2cc1', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'1baa42ee-9ad8-4cf3-b8d9-dd1d848d4ca6', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702356285/diukocsvuj8en6pdnkmb.mp3', N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1702356287/bi4anweyzgplaj4u266m.png', N'(A) Several ships are docked at a pier.
(B)The liner is passing under the bridge.
(C) The sailors are lowering the sails.
(D) The motorboat is cruising through the harbor.', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'e30fd4bc-2264-4838-be33-7dd428fb5a28', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'128f202b-94e7-4c8c-a70f-cdc0426e0e13', N'<p style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; margin-block: auto; font-weight: 400; color: rgb(29, 29, 29); font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgba(242, 243, 247, 0.3); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">The IT department maintains the proper working order of all on-site computer hardware. We also ensure that the accompanying software (131) ___ at its top level of performance.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">If you are having trouble with your office computer, please contact the IT department on extension 233 and leave a message explaining the (132) ___<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">To best serve you, we ask you to include as many details as possible. This includes when the issue began. (133)___.The more information we have, the faster we can find a solution.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">We will (134) ____ contact you to set up a time for a visit from one of our technicians.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Thank you for your cooperation.</p>', NULL, NULL, NULL, N'Bộ phận CNTT duy trì trật tự hoạt động thích hợp của tất cả phần cứng máy tính tại chỗ. Chúng tôi cũng đảm bảo rằng phần mềm đi kèm đang hoạt động ở mức hiệu suất cao nhất.
Nếu máy tính văn phòng của bạn gặp sự cố, vui lòng liên hệ bộ phận IT theo số máy nhánh 233 và để lại tin nhắn giải thích sự cố
Để phục vụ bạn tốt nhất, chúng tôi yêu cầu bạn cung cấp càng nhiều chi tiết càng tốt. Điều này bao gồm thời điểm vấn đề bắt đầu. Đồng thời, hãy cho chúng tôi biết bạn đang làm gì ngay trước đó. Càng có nhiều thông tin, chúng tôi càng có thể tìm ra giải pháp nhanh hơn.
Chúng tôi sẽ nhanh chóng liên hệ với bạn để sắp xếp thời gian cho một trong các kỹ thuật viên của chúng tôi đến thăm.
Cảm ơn bạn đã hợp tác của bạn.')
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'95703af1-8ca0-4fce-95b7-81387f0f30f6', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'6109a25d-bc56-4007-8071-da3fc87fb2b3', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702362685/m3us2sy9qpdwlcp1tosi.mp3', NULL, N'M: Welcome to Language Today on KXRP Radio. (71) I’m Ted Costello, and I’ll be your host this hour. For today’s show, I’m thrilled to be interviewing (72) language specialist Dr. Eric Alfson right here in the studio. (72) Dr. Alfson has recently completed groundbreaking research into child language acquisition in bilingual homes. He has agreed to tell us about the surprising results even before (73) his new book hits stores on August 4. Dr. Alfson, it’s a pleasure to welcome you to this program.', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'ad570d7b-6349-49ee-b2d8-a6bb027a7415', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'6109a25d-bc56-4007-8071-da3fc87fb2b3', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702362985/y2cq9fedny4faecuuedf.mp3', N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1702362989/cpg88biyc4hqrsuxndyt.png', N'M:  od afternoon. (98) I’d like to take a moment to talk about the upcoming Annual Conference for Healthcare Professionals. The attendance of this event is one of the highest in the industry, and it will be a great chance to show off our products to these professionals. (99) I’ve given you each a pamphlet that highlights the event’s activities and speakers. I hope it will encourage you to attend. (100)And I’m planning to reserve a booth for both weekend days. I think this is the best value considering our budget.', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'5b611b88-9fe4-485f-bf62-ca2f513aaac5', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'8bd8ddc1-8e0b-4839-98b6-48419ed575a1', N'<p style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; margin-block: auto; font-weight: 400; color: rgb(29, 29, 29); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgba(242, 243, 247, 0.3); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; font-size: 16px;"><strong><em style="font-family: impact, charcoal, sans-serif; font-size: 30px;">refer to the following flyer, Web site and e-mail.</em></strong><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">Come to the Bates Museum!</strong><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">We will help you make the most of your experience by giving you a guided tour of our fascinating exhibits. These displays change every few months, so check our schedule below before you reserve a spot.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">Who Were the Vikings?</strong>(January-March)<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Despite popular legend, the majority of people who lived across Scandinavia during the Viking Age were actually not warriors at all. So, what were they?<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">The History of the Railways</strong><span>&nbsp;</span>(April-May)<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">We often think of the railway as part of the Industrial Revolution, but the history of rail transport actually dates back as far as the ancient Greeks!<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">Exploring the Ocean<span>&nbsp;</span></strong>(June only)<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Intended for the brave and curious, this tour takes participants into the depths of the ocean. Separated only by some glass walls, you will see live deep-sea animals up close and personal.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">From the King''s Castle</strong><span>&nbsp;</span>(July-September)<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">This tour contains many of the works of art formerly collected and displayed by King Castle XIV in the French Palace of Versailles during the 17th century.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">Ancient Ancestors</strong><span>&nbsp;</span>(October-December)<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">This tour takes you into the world of the First Nations, who were the first<span>&nbsp;</span><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">figures<span>&nbsp;</span></strong>to live in North America.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">_____________________________<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">www.batesmuseum.com/registration<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"></p><h4 align="center" style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400; color: rgb(29, 29, 29); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgba(242, 243, 247, 0.3); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; font-size: 16px;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">TOUR REGISTRATION</strong></h4><p style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; margin-block: auto; font-weight: 400; color: rgb(29, 29, 29); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgba(242, 243, 247, 0.3); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; font-size: 16px;">&nbsp;<br></p><p style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; margin-block: auto; font-weight: 400; color: rgb(29, 29, 29); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgba(242, 243, 247, 0.3); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; font-size: 16px;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Please fill out every line of this form and then click “SUBMIT” at the bottom of this screen. If you have questions about your chosen tour, please contact the museum at 555-293-8237 or e-mail<u style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">tours@batesmuseum.com</u>.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Name: Terry Turner<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Phone number: 555-828-7089<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">E-mail address: tturner@funmail.org<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Date: August 1<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Number of participants: five<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Tour Time:<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">□ 10:00 A.M.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">□ 2:00 P.M.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">□ 12:00 P.M.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">□ 4:00 P.M.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">SUBMIT</strong><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">________________________<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">To:</strong>Terry Turner (tturner@funmail.org)<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">From:</strong>Bates Museum (donotreply@batesmuseum.com)<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">Date:</strong>July 29<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">Subject:</strong>Your tour booking<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Dear Patron,<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Thank you for your booking. Please note the following about your upcoming tour:<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">1)Guests should arrive 10 minutes prior to the scheduled tour time.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">2)The museum can accommodate groups between 6 and 15 people. We will split all groups with more than 15 people into two in order to pass through the exhibits easily. Likewise, groups with fewer than 6 participants will be grouped together with another party, so we use our tour guides as efficiently as possible.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">3)No outside food or drink is allowed in the museum.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">4) Children under the age of 10 must be accompanied by an adult at all times.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">We appreciate your interest in the Bates Museum!<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;"><br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">** This is an automated message. Do not reply directly to this message. **</p>', N'null', N'null', N'null', N'tham khảo tờ rơi, trang web và e-mail sau đây.

Hãy đến Bảo tàng Bates!

Chúng tôi sẽ giúp bạn tận dụng tối đa trải nghiệm của mình bằng cách cung cấp cho bạn chuyến tham quan có hướng dẫn đến các triển lãm hấp dẫn của chúng tôi. Những màn hình này thay đổi vài tháng một lần, vì vậy hãy kiểm tra lịch trình của chúng tôi bên dưới trước khi bạn đặt chỗ.')
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'c779db4d-134c-496c-88e8-cc3d9ff584e0', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'fd79dfe1-2b02-4223-a838-d69cb4b8ca5e', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'49b8292c-6a0d-4f8d-bc13-cffcf81da701', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'cd946869-8b95-44ef-a4c5-93bc490c844a', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702361116/k6mord3rtp8rsttwfizj.mp3', NULL, N'W: Hey, John. Do you know where the budget file is? I can’t find it.
M: No, Jean, I have no idea. Why don’t you ask Patrick?
W: Patrick’s out of town right now, and I am sure he doesn’t have it. Hmm, are you sure it’s not in your office?
M: Well, I’ll check once more, but I’ll probably be giving you the same answer.', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'98fc1d04-8ee3-42b1-9074-e47c521837c7', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'fd59d12e-5f96-4b05-a727-cf0eaf096255', NULL, N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1702359163/zxeulbahc30f5trixruo.mp3', NULL, N'Can you pack the shipment to Toronto now?
(A) Fragile dishes.
(B) Of course, just a minute.
(C) I need it back soon.', NULL)
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'11026fa9-f772-430e-a225-eaee80daa6dd', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'128f202b-94e7-4c8c-a70f-cdc0426e0e13', N'<div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">To continue providing the highest level of ----- (131) to our corporate tenants, we have scheduled the south lobby restrooms for maintenance this weekend, May 13 and May 14. ----- (132) this time, the restrooms will be out of order, so tenants and their guests should instead use the facilities in the north lobby.</div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">We ----- (133) for any inconvenience this might cause. -----(134).</div><div style="box-sizing: border-box; color: rgb(26, 26, 26); font-family: Roboto, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Denville Property Management Partners</div>', NULL, NULL, NULL, N'Để tiếp tục cung cấp dịch vụ (131) ở mức cao nhất cho người thuê công ty của chúng ta, chúng ta đã lên lịch bảo trì các phòng vệ sinh ở sảnh phía nam vào cuối tuần này, ngày 13 tháng 5 và ngày 14 tháng 5. Trong suốt (132) thời gian này, các phòng vệ sinh sẽ không hoạt động, vì vậy người thuê và khách của họ nên sử dụng các tiện nghi ở sảnh phía bắc để thay thế.

Chúng tôi xin lỗi (133) vì bất kỳ sự bất tiện nào mà điều này có thể gây ra. Các câu hỏi hoặc nhận xét có thể được chuyển đến văn phòng Quản lý (134).

Đối tác Quản lý Tài sản Denville')
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'dadbf0ea-ede1-4d08-95a6-f204014cf7fa', N'f321156b-8a5d-4134-862e-c22dbf3f0448', N'128f202b-94e7-4c8c-a70f-cdc0426e0e13', N'<h4 align="center" style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400; color: rgb(29, 29, 29); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgba(242, 243, 247, 0.3); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; font-size: 16px;"><strong style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 700;">NOTICE TO EMPLOYEES</strong></h4><p style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; margin-block: auto; font-weight: 400; color: rgb(29, 29, 29); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgba(242, 243, 247, 0.3); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; font-size: 16px;">The IT department maintains the proper working order of all on-site computer hardware. We also ensure that the accompanying software<em><strong> (131) ___ </strong></em>at its top level of performance.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">If you are having trouble with your office computer, please contact the IT department on extension 233 and leave a message explaining the (132) ___<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">To best serve you, we ask you to include as many details as possible. This includes when the issue began. (133)___.The more information we have, the faster we can find a solution.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">We will (134) ____ contact you to set up a time for a visit from one of our technicians.<br style="box-sizing: inherit; font-family: SVN-Poppins, sans-serif; font-weight: 400;">Thank you for your cooperation.</p>', NULL, NULL, NULL, N'THÔNG BÁO DÀNH CHO NHÂN VIÊN
Bộ phận CNTT duy trì trật tự hoạt động thích hợp của tất cả phần cứng máy tính tại chỗ. Chúng tôi cũng đảm bảo rằng phần mềm đi kèm (131) ___ ở mức hiệu suất cao nhất.
Nếu bạn gặp sự cố với máy tính văn phòng của mình, vui lòng liên hệ với bộ phận CNTT theo số máy nhánh 233 và để lại tin nhắn giải thích (132) ___
Để phục vụ bạn tốt nhất, chúng tôi yêu cầu bạn cung cấp càng nhiều chi tiết càng tốt. Điều này bao gồm thời điểm vấn đề bắt đầu. (133)___.Càng có nhiều thông tin, chúng ta càng có thể tìm ra giải pháp nhanh hơn.
Chúng tôi sẽ (134) ____ liên hệ với bạn để sắp xếp thời gian cho một trong những kỹ thuật viên của chúng tôi đến thăm.
Cảm ơn bạn đã hợp tác của bạn.')
INSERT [dbo].[TestQuestionUnits] ([idQuestionUnit], [idTest], [idTestPart], [paragraph], [audio], [image], [script], [translation]) VALUES (N'bcda8089-e15a-45a6-bed4-f5bd1132e3e4', N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'1baa42ee-9ad8-4cf3-b8d9-dd1d848d4ca6', N'<p><br></p>', N'http://res.cloudinary.com/dru8wcmtb/video/upload/v1703603606/vex3nvebpsrygdpygdtc.mp3', N'http://res.cloudinary.com/dru8wcmtb/image/upload/v1703603608/i8fmvgn3dcl1llapyjvq.png', N'(A) Some products are stacked on the rack.
(B)A boat is floating on the water.
(C)Some people are rowing a boat.
(D)A man is putting on a cap.', NULL)
GO
INSERT [dbo].[Tests] ([idTest], [idType], [idProfessor], [name], [createDate], [useDate]) VALUES (N'eaff9bcd-d736-4697-a9e8-1d48b05c41bf', N'bd687156-3499-4bb6-a345-fc3e120612d0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'EST 2022 Test 3 MiniTest', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tests] ([idTest], [idType], [idProfessor], [name], [createDate], [useDate]) VALUES (N'b620e770-e42b-4b3b-b57c-361fdef1a8c1', N'9c2cdc56-6774-4304-ad5e-c88403cc0e18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'EST 2022 Test 3 FullTest', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tests] ([idTest], [idType], [idProfessor], [name], [createDate], [useDate]) VALUES (N'e109ad2c-6eda-4395-8638-74ebf489b1c6', N'9c2cdc56-6774-4304-ad5e-c88403cc0e18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'EST 2022 Test 1 FullTest', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tests] ([idTest], [idType], [idProfessor], [name], [createDate], [useDate]) VALUES (N'd6f4bc74-798c-46e8-bf80-bc8bd65b9432', N'9c2cdc56-6774-4304-ad5e-c88403cc0e18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'EST 2022 Test 2 FullTest', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tests] ([idTest], [idType], [idProfessor], [name], [createDate], [useDate]) VALUES (N'f321156b-8a5d-4134-862e-c22dbf3f0448', N'bd687156-3499-4bb6-a345-fc3e120612d0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'EST 2022 Test 1 MiniTest Update', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Tests] ([idTest], [idType], [idProfessor], [name], [createDate], [useDate]) VALUES (N'fa2ae6c6-7081-4527-83f9-d96aba65c1f2', N'bd687156-3499-4bb6-a345-fc3e120612d0', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'EST 2022 Test 2 MiniTest', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[TestTypes] ([idTestType], [typeName]) VALUES (N'9c2cdc56-6774-4304-ad5e-c88403cc0e18', N'FullTest')
INSERT [dbo].[TestTypes] ([idTestType], [typeName]) VALUES (N'bd687156-3499-4bb6-a345-fc3e120612d0', N'MiniTest')
GO
INSERT [dbo].[VipPackages] ([idPackage], [idAdmin], [name], [description], [price], [duration]) VALUES (N'd843f5f3-ef8f-44f4-bf0f-040ef24f7355', N'0639a5b1-1011-47de-bfff-e3f1512377c4', N'Gói VIP trải nghiệm', N'Thử nghiệm tài khoản VIP', 50000, 3)
INSERT [dbo].[VipPackages] ([idPackage], [idAdmin], [name], [description], [price], [duration]) VALUES (N'c5efdd6d-a0c1-4d7a-bb83-0537cfc88a8c', N'40a2f803-373d-414b-8094-f4cb70dbd72f', N'GÓI VIP CƠ BẢN', N'Cho phép người dùng truy cập mọi tiện ích trong vòng một tháng', 10000, 1)
INSERT [dbo].[VipPackages] ([idPackage], [idAdmin], [name], [description], [price], [duration]) VALUES (N'933bdeed-d52b-4811-b075-34ecf6b25d64', N'0639a5b1-1011-47de-bfff-e3f1512377c4', N'GÓI VIP NÂNG CAO', N'Cho phép người dùng truy cập mọi tiện ích trong vòng 6 tháng', 450000, 6)
GO
INSERT [dbo].[VipStudents] ([idVipStudent], [idStudent], [vipExpire]) VALUES (N'f5b526e2-cead-482a-bc52-06d423ca4cb1', N'd16e24cd-55c2-40f5-96e5-24d8f6a64650', CAST(N'2024-04-23T20:16:45.1582487' AS DateTime2))
INSERT [dbo].[VipStudents] ([idVipStudent], [idStudent], [vipExpire]) VALUES (N'716e3b63-52b7-48b4-9337-69950dbcbbd9', N'85e8b325-d152-4296-a060-854176f10787', CAST(N'2024-07-09T20:24:43.2530982' AS DateTime2))
INSERT [dbo].[VipStudents] ([idVipStudent], [idStudent], [vipExpire]) VALUES (N'bdcf31c4-a51a-4527-82f9-aab4eda63084', N'9e86ba70-2c80-4d57-9b1a-2251aa482442', CAST(N'2024-01-17T07:44:36.6421281' AS DateTime2))
INSERT [dbo].[VipStudents] ([idVipStudent], [idStudent], [vipExpire]) VALUES (N'df52fb02-d11d-44a9-bf38-ac5772f238c1', N'584f0a2f-0b11-4846-8038-39fa365ff2c7', CAST(N'2024-06-17T13:16:46.8334003' AS DateTime2))
INSERT [dbo].[VipStudents] ([idVipStudent], [idStudent], [vipExpire]) VALUES (N'c6ddd632-cc08-4b31-80e3-e52863665c94', N'809de52d-b38e-4ca7-87fe-61f2ddcc41df', CAST(N'2025-08-16T07:09:32.7734842' AS DateTime2))
INSERT [dbo].[VipStudents] ([idVipStudent], [idStudent], [vipExpire]) VALUES (N'e1f8fa07-31a4-43db-9243-ee47c8a16702', N'e7cb3e86-fb46-4939-bee2-df8ac03bf142', CAST(N'2024-01-23T16:03:32.7095528' AS DateTime2))
GO
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'8d01df7a-6c2a-4e38-b0fb-000119384181', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Subject', N'/ˈsʌbʤɪkt/', N'noun', N'môn học')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'f2cddc7d-44c7-4d44-b7c4-0107973f14f3', N'bce9032e-0bb5-4e2f-bd9b-31c8ae444a52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Explore', N'/ɪksˈplɔ/', N'verb', N'đi thám hiểm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e9bc29d5-c5c1-4e0e-bcc8-01dc8a78a951', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Porridge', N'/ˈpɒrɪdʒ/', N'noun', N'cháo')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'c044a49c-db7d-4495-96ff-02b8e341e0ba', N'fdc85a13-60ec-4164-9922-3929b0dd0c22', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Poet', N'/ˈpoʊət/', N'noun', N'nhà thơ, thi sĩ')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'fe917f1f-68a4-41e2-90c9-02be849af6fa', N'fdc85a13-60ec-4164-9922-3929b0dd0c22', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Culture', N'/ˈkʌlʧər/', N'noun', N'văn hóa')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e269c2ed-d347-40e8-9b46-035ed5dcccac', N'97ecf8d6-0569-4bee-82d1-5ef7a8ea5a78', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Holding company', N'/ˈhəʊldɪŋ ˈkʌmpəni/', N'noun', N'Công ty mẹ')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'0583b735-f8ec-4538-a9a5-0467bd77fdcb', N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Fitting room', N'/’fɪtɪŋ/ /rum/', N'noun', N'phòng thử đồ')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'3c863931-f995-4584-98bc-050e30d71a1f', N'fdc85a13-60ec-4164-9922-3929b0dd0c22', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Author', N'/ˈɔθər/', N'noun', N'tác giả')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'8d2ecb90-e742-4f5c-aed0-05df02d18818', N'721f82eb-6a13-4de1-a115-460531510c7c', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Wife', N'/waɪf/', N'noun', N'vợ')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'598f10a1-72c6-46af-ac5f-061b169b0d9c', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Body', N'/ˈbɑdi/', N'noun', N'cơ thể')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'4bf56d4b-cfc7-45a7-ac7c-063d8fcd6a68', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Dumplings', N'/ˈdʌmplɪŋ/', N'noun', N'bánh bao hấp')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'08369114-6f48-4a48-97a0-064c05557532', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Sign up', N'up /saɪn ʌp/', N'noun', N'đăng ký')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'2a60b63c-41f4-4fd9-8cc6-065b7204c744', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Physics', N'/ˈfɪzɪks/', N'noun', N'môn vật lý')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'a2d397b6-eec4-49b0-b691-067817505d48', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Sole', N'/səʊl/', N'noun', N'cá bơn')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'4066f27e-25b7-4952-ad78-0885d2eb267b', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Arm', N'/ɑrm/', N'noun', N'cánh tay')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'f3544fc9-13d2-4ebf-9544-09b0419b8543', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Quiet', N'/ˈkwaɪət/', N'adj', N'im lặng, trầm tính')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'0f156af7-cabd-435d-8fcd-09cfd147d04f', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Chalk', N'/ʧɔːk/', N'noun', N'phấn viết bảng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'6ddf079f-39fd-41dc-8bbe-0a38fa9d2257', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Backpack', N'/ˈbækˌpæk/', N'noun', N'cặp sách')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'fcf6bfba-fa98-458f-b79e-0a540503bc73', N'bce41039-a78d-4298-8f50-4224340cd0b9', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Hot chocolate', N'/hɒt ˈʧɒkəlɪt/', N'noun', N'sô cô la nóng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'3fc96c82-8a07-4985-87f6-0a8394f03d43', N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Complaint', N'/kəmˈpleɪnt/', N'verb', N'phàn nàn')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'82c3a01d-1a69-4f55-a82e-0afd60607da4', N'97ecf8d6-0569-4bee-82d1-5ef7a8ea5a78', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Corporation', N'/kɔːpəˈreɪʃn/', N'noun', N'Tập đoàn')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'43745615-1b68-419f-bfcc-0b3decf8e21c', N'a413d1b1-8dce-4b21-ae82-3616de156806', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'White', N'/waɪt/', N'adj', N'màu trắng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'a2b7db2b-9fda-488d-885b-0ce48d30bc22', N'bce9032e-0bb5-4e2f-bd9b-31c8ae444a52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Chat with friends', N'/ʧæt wɪð frɛndz/', N'verb', N'tán gẫu với bạn bè')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'8005bc06-bf52-4ed0-8f14-0d47dfde71f1', N'16e9e5ff-df19-432f-bfe0-a2f1cc3716e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Happy', N'/ˈhæpi/', N'adj', N'vui vẻ, hạnh phúc')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'cfbec25d-11b8-4f66-866a-0d8ded331b71', N'721f82eb-6a13-4de1-a115-460531510c7c', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Daughter-in-law', N'/ˈdɔt̮ər ɪn lɔ/', N'noun', N'con dâu')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'b0d542ea-0d1b-410d-8f62-0ec186d11ce0', N'1061d61d-d0cc-4123-ba65-607586d3607a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Broadcast', N'/ˈbrɔdˌkæst/', N'verb', N'phát sóng; (n) chương trình phát sóng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'98275483-30fb-494e-91b8-0ff1f9f5bfc9', N'fdc85a13-60ec-4164-9922-3929b0dd0c22', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Applaud', N'/əˈplɔd/', N'verb', N'vỗ tay, tán thưởng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'dac04c58-ddf5-44bf-8cc1-1030c6dc83f8', N'fdc85a13-60ec-4164-9922-3929b0dd0c22', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Clap', N'/klæp/', N'verb', N'vỗ tay')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'726c5768-08b8-4166-b4ad-1055eed28816', N'bce9032e-0bb5-4e2f-bd9b-31c8ae444a52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Read books', N'/riːd bʊks/', N'verb', N'đọc sách')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'9f7204da-298d-400f-b0d8-105cd7a9e7b3', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'History', N'/ˈhɪstəri/', N'noun', N'môn lịch sử')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'aeed4a30-5e4c-473e-99ec-10fc292f08a7', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Selfish', N'/ˈsɛlfɪʃ/', N'adj', N'ích kỷ')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'06683d36-f162-45b2-a2c9-112afd1581b2', N'16e9e5ff-df19-432f-bfe0-a2f1cc3716e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Disappointed', N'/ˌdɪsəˈpɔɪntɪd/', N'adj', N'thất vọng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'038d7092-9c16-4b74-8885-11378acf65a1', N'bce41039-a78d-4298-8f50-4224340cd0b9', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Cocoa', N'/ˈkəʊkəʊ', N'noun', N'ca cao')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'3589492d-e00d-41ea-a5d2-1139439d1034', N'1061d61d-d0cc-4123-ba65-607586d3607a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Subtitle', N'/ˈsʌbˌtaɪtəl/', N'noun', N'phụ đề')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'd542d134-3609-420e-b0a5-118e815c94b1', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Eye', N'/aɪ/', N'noun', N'mắt')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'c32cdc3d-0ea9-499a-b31d-11a7ccf3e57c', N'2e10c0fb-82e8-4c5b-a567-8758238aa13a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Groundwater', N'/ˈɡraʊndwɔːtər/', N'noun', N'nước ngầm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'11f0a2f9-98cf-4b5c-ac97-121142b432d1', N'a413d1b1-8dce-4b21-ae82-3616de156806', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Purple', N'/ˈpɜː(ɹ).pəl/', N'adj', N'màu tím')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'f0fa9817-131f-46b5-a448-1223bd7de80b', N'bce9032e-0bb5-4e2f-bd9b-31c8ae444a52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Build things', N'/bɪld θɪŋz/', N'verb', N'chơi xếp hình')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'c91f9b60-64da-43be-8486-126e95c2ea57', N'9d446d63-8055-4802-a831-c2b9cce62d21', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Lovely', N'/ˈlʌvli/', N'adj', N'đáng yêu')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'c49007bf-9d1c-461d-af3c-12914221e6de', N'54c6e232-c588-483e-82e1-b91e1b24c294', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Message', N'/ˈmɛsəʤ/', N'noun', N'tin nhắn')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'ef223e70-42ea-4aef-bbb4-12be31b26731', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Roasted duck', N'/roʊstəd dʌk/', N'noun', N'vịt nướng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'bf568f3e-bc0f-46fd-a14e-12d9d955d596', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Brave', N'/breɪv/', N'adj', N'can đảm, dũng cảm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'b646aa2e-12ee-4ff9-85cb-131bc2c357a3', N'721f82eb-6a13-4de1-a115-460531510c7c', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Aunt', N'/ɑːnt/', N'noun', N'bác gái/cô/dì')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'85135a1f-fe27-453a-9151-1415e7ab3fd5', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Lazy', N'/ˈleɪzi/', N'adj', N'lười biếng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'175a1162-1c1f-485d-af89-142659bc8a8e', N'1061d61d-d0cc-4123-ba65-607586d3607a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Column', N'/ˈkɑləm/', N'noun', N'chuyên mục')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'f9347503-4a65-44fc-b633-146b883591cd', N'2e10c0fb-82e8-4c5b-a567-8758238aa13a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Forest fire', N'/ˈfɒr.ɪst ˌfaɪər/', N'noun', N'cháy rừng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'02266dc0-f0e7-4bbd-b4ad-15306044ec19', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Spaghetti', N'/spəˈɡet.i/', N'noun', N'mỳ Ý')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'bff626b3-55c5-4047-a991-16f879238476', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'School garden', N'/skuːl ˈgɑːdn/', N'noun', N'sân vườn trường')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'f536dc10-0053-4e87-a5c0-171c87c5205a', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Speaker', N'/ˈspikər/', N'noun', N'loa')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e7fc1c0f-4a48-4d06-a4cc-171f3337bd98', N'a413d1b1-8dce-4b21-ae82-3616de156806', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Pink', N'/pɪŋk/', N'adj', N'màu hồng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'65c21dd4-1b06-428e-be82-17f92c42095b', N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Shopping list', N'/ˈʃɑːpɪŋ lɪst/', N'noun', N'danh sách đồ cần mua')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'1e8afde4-f182-4de1-8bdf-18191bbd8580', N'd69daf8e-81d7-40fc-9b75-957d4822fbc4', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Pinafore dress', N'/’pinəfɔdres/', N'noun', N'váy sát nách')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'9e9a08d3-e8f5-4fa4-b7fc-186dacd9c49b', N'9d446d63-8055-4802-a831-c2b9cce62d21', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Body shape', N'ˈbɑdi ʃeɪp/', N'noun', N'vóc dáng, thân hình')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e5354701-d08b-4923-adc1-189ae897e9a0', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Waist', N'/weɪst/', N'noun', N'vòng eo, eo')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'9f68110a-4b90-48b3-b9ba-18d4701fa989', N'fdc85a13-60ec-4164-9922-3929b0dd0c22', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Photographer', N'/fəˈtɑgrəfər/', N'noun', N'nhiếp ảnh gia')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'b3728f07-7bd7-439f-9b42-1920801e0e02', N'97ecf8d6-0569-4bee-82d1-5ef7a8ea5a78', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Audit Department', N'/‘ɔ:dit dɪˈpɑːrt.mənt/', N'noun', N'Phòng Kiểm toán')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e1c61a4b-cd26-43dc-a88e-19d795b7c4a7', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Hard-working', N'/hɑrd-ˈwɜrkɪŋ/', N'adj', N'siêng năng, chăm chỉ')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'41aaf642-e05a-4397-bfd6-1a41f4abf00d', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Scissors', N'/ˈsɪzəz/', N'noun', N'kéo')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'0f52b5d4-e878-401e-99c1-1b0eafcd8ced', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Shy', N'/ʃaɪ/', N'adj', N'nhút nhát, rụt rè')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'4f690da2-dd67-4086-87cd-1b17bd76cdeb', N'bce41039-a78d-4298-8f50-4224340cd0b9', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Coconut milk', N'/ˈkəʊkənʌt mɪlk/', N'noun', N'sữa dừa')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e1a6849e-c727-473b-8575-1b8133bab616', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Neck', N'/nɛk/', N'noun', N'cổ')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'fd7aee65-33ae-4561-a404-1bbd9145fdee', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Log in', N'in /lɔg ɪn/', N'noun', N'đăng nhập')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'80895bc2-9188-4f32-a9a5-1becd2848849', N'fdc85a13-60ec-4164-9922-3929b0dd0c22', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Singer', N'/ˈsɪŋər/', N'noun', N'ca sĩ')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'3309cb7f-b499-4ac8-aff2-1c8e19831030', N'bce9032e-0bb5-4e2f-bd9b-31c8ae444a52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Knit', N'/nɪt/', N'verb', N'đan lát')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'8b5d7e23-8d0d-4ab7-b09d-1d7b15dd8c7b', N'97ecf8d6-0569-4bee-82d1-5ef7a8ea5a78', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Company', N'/ˈkʌmpəni/', N'noun', N'Công ty')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'33e8f75b-51e5-440b-af6a-1d7e2c0a3087', N'16e9e5ff-df19-432f-bfe0-a2f1cc3716e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Sick', N'/sɪk/', N'adj', N'ốm yếu, ốm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'7357cd46-3233-486b-a774-1dba21e84722', N'54c6e232-c588-483e-82e1-b91e1b24c294', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Stamp', N'/stæmp/', N'noun', N'tem')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'7c07eb10-393f-4c57-afd2-1ded93f8061f', N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Trolley', N'/’trɑli/', N'noun', N'xe đẩy mua sắm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'179a3b34-e5b0-4130-872b-1e194d2dbb4b', N'bce41039-a78d-4298-8f50-4224340cd0b9', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Soda', N'/ˈsəʊdə/', N'noun', N'nước ngọt')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e37bd25d-9c7e-49e4-ae53-1ebc34da0a25', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Grilled lamb chops', N'/ ɡrɪld læm tʃɒp', N'noun', N'sườn cừu nướng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'89758a3d-60f2-4376-9ca3-1ef2f1a44b46', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Friendly', N'/ˈfrɛndli/', N'adj', N'thân thiện')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'ee223800-d3e4-4e4d-9c24-1efa6ed05648', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Friendly', N'/ˈfrɛndli/', N'adj', N'thân thiện')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'78d9bcbb-23ec-4fa6-bd3d-201ceb90d0e8', N'2e10c0fb-82e8-4c5b-a567-8758238aa13a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Climate', N'/ˈklaɪ.mət/', N'noun', N'khí hậu')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'712497e2-d8cb-499f-afbf-209e448dd17d', N'1061d61d-d0cc-4123-ba65-607586d3607a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Article', N'/ˈɑrtɪkəl/', N'noun', N'bài báo')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'3c64d217-43e6-4f93-9d66-21d9cf8f1c7e', N'bce9032e-0bb5-4e2f-bd9b-31c8ae444a52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Surf net', N'/sɜːf nɛt/', N'verb', N'lướt net')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'c5434729-bc63-4b5a-870a-225af1efc3c0', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Head', N'/hɛd/', N'noun', N'đầu')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'320d736a-5fc7-4ec3-9460-23dec5934834', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Kind', N'/kaɪnd/', N'adj', N'tử tế, tốt bụng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'77f23264-81be-4c99-a7ed-241eaf9402d4', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Quiet', N'/ˈkwaɪət/', N'adj', N'im lặng, trầm tính')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'07f9786e-4e2e-4e5b-961a-253cec8296c4', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Compass', N'/ˈkʌmpəs/', N'noun', N'com-pa')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'4d5abb19-ab28-4b16-97bc-268990e01cf5', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Chair', N'/ʧeə/', N'noun', N'ghế')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'b78cfdc6-ca3c-4759-bb09-2697d5b10d9a', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Keyboard', N'/ˈkiˌbɔrd/', N'noun', N'bàn phím máy tính')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'b3b50965-1599-490c-ae9f-26c31919f46a', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Freshwater fish', N'/ˈfrɛˌʃwɔtər fɪʃ/', N'noun', N'cá nước ngọt')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'3c2e582a-c7c3-4883-a911-27bbbbc7191b', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Click', N'/klɪk/', N'noun', N'nhấp chuột')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'96c81c26-75f9-4935-9e1f-27e371cce8b6', N'195877e6-0fe9-4de8-b8bc-1010af42ef5a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Dove', N'/dʌv/', N'noun', N'chim bồ câu')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'6e2a9c85-f4cd-4387-b75c-28008bd2b829', N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Sell', N'/sel/', N'verb', N'bán')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'da1cc9af-4c74-477a-8998-28b30412477e', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Easy- ing', N'/ˈizi-ˈ ʊɪŋ/', N'adj', N'thoải mái')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e8fc9d65-5e25-4137-8b80-28c0228f17ce', N'9d446d63-8055-4802-a831-c2b9cce62d21', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Thin', N'/θɪn/', N'adj', N'gầy')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e4dc73bf-8a7e-4246-a7d2-28cb77b2cd67', N'16e9e5ff-df19-432f-bfe0-a2f1cc3716e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Disgusted', N'/dɪsˈgʌstɪd/', N'noun', N'kinh tởm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e38d64d9-f817-47a7-819d-2952ddfc8649', N'88428cce-b2c5-4897-a1c3-ebae3a0bf90a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Dry', N'/drai/', N'adj', N'hanh khô')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'f5d1f85f-94f5-4390-b4e9-2a3aeb95ef9c', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'High school', N'/ˈhaɪ ˌskuːl/', N'noun', N'trường cấp ba')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'd16c1d15-b0e4-4215-a216-2a8c78679a91', N'9d446d63-8055-4802-a831-c2b9cce62d21', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Muscular', N'/ˈmʌskjələr/', N'adj', N'cơ bắp, lực lưỡng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'c764122c-4189-488a-9995-2aa469420eab', N'54c6e232-c588-483e-82e1-b91e1b24c294', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Receive', N'/rəˈsiv/', N'verb', N'nhận được')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'21202b55-2f07-4a29-895f-2aebddaa47c3', N'bce9032e-0bb5-4e2f-bd9b-31c8ae444a52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Play computer games', N'/pleɪ kəmˈpjuːtə geɪmz/', N'verb', N'chơi game')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'6f75f1ba-83ff-44ac-8ce6-2b296e08bc94', N'bce9032e-0bb5-4e2f-bd9b-31c8ae444a52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Play an instrument', N'/pleɪ ən ˈɪnstrʊmənt/', N'verb', N'chơi nhạc cụ')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'b2e1950c-bf2a-4131-b996-2d288e09a922', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Brain', N'/breɪn/', N'noun', N'não')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'8875c9f9-f71c-451b-a7fc-2d3ca8542f65', N'16e9e5ff-df19-432f-bfe0-a2f1cc3716e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Nervous', N'/ˈnɜrvəs/', N'adj', N'lo lắng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'b59d376d-7cd2-44dd-8a01-2d548f6b6dcf', N'bce9032e-0bb5-4e2f-bd9b-31c8ae444a52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Take photo', N'/teɪk ˈfəʊtəʊ/', N'verb', N'chụp ảnh')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'3023982b-b751-4326-8ff9-2e2eaf1a65cc', N'97ecf8d6-0569-4bee-82d1-5ef7a8ea5a78', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'International Payment Department', N'/,intə’næ∫ənl ˈpeɪ.mənt dɪˈpɑːrt.mənt/', N'noun', N'Phòng Thanh toán quốc tế')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'31d0e7ef-a537-4d47-be30-2e4d216862cf', N'bce41039-a78d-4298-8f50-4224340cd0b9', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Tea', N'/tiː/', N'noun', N'trà')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'2b4506c0-6886-4783-a686-2ee20c2c5300', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Blackboard', N'/ˈblækbɔːd/', N'noun', N'bảng đen')
GO
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'41348a0e-0f21-4b46-97e9-2f609d8c486e', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Link', N'/lɪŋk/', N'noun', N'đường dẫn')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'f644d015-3185-4d65-a598-2f79db9e6277', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Pasta', N'/ˈpɑːstə/', N'noun', N'mì ống, mì sợi')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'50295127-e0fd-4a46-b34f-304870eba856', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Heart', N'/hɑrt/', N'noun', N'trái tim')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'b5e8fa22-02cd-4c22-9932-30d43af7f9da', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Shy', N'/ʃaɪ/', N'adj', N'nhút nhát, rụt rè')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'36bf3b07-427e-48d8-9457-30e42bb4f2c8', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Hotpot', N'/ˈhɒt.pɒt/', N'noun', N'lẩu')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'94e309d0-4699-45a2-9a0b-31362517cebe', N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Shopping list', N'/lɪst/', N'noun', N'danh sách mua sắm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'2f088102-7f8a-4ef9-8e1f-32a6a24c2912', N'54c6e232-c588-483e-82e1-b91e1b24c294', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Text', N'/tɛkst/', N'verb', N'nhắn tin; tin nhắn (n)')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'536c0a40-66a1-4b17-9882-32d89cb83e02', N'195877e6-0fe9-4de8-b8bc-1010af42ef5a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Turkey', N'/ˈtɜːki/', N'noun', N'gà tây')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'd1e875e9-7d43-4934-9bdb-32fa0c416279', N'195877e6-0fe9-4de8-b8bc-1010af42ef5a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' ldfish', N'/ˈgəʊldfɪʃ/', N'noun', N'cá vàng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'd52e3593-cdbc-4276-94cc-33ac26e9560a', N'a413d1b1-8dce-4b21-ae82-3616de156806', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Blue', N'/bluː/', N'adj', N'màu xanh')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'a425c9aa-4870-4d56-81a8-33c1d807cb61', N'54c6e232-c588-483e-82e1-b91e1b24c294', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Phone number', N'number /foʊn ˈnʌmbər/', N'noun', N'số điện thoại')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'00b2bf96-33e2-42d2-a141-344d845ec04a', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Octopus', N'/ˈɒk.tə.pəs/', N'noun', N'bạch tuộc')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'45a1fac2-6308-4453-af12-347f65fe893e', N'd69daf8e-81d7-40fc-9b75-957d4822fbc4', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Miniskirt', N'/mɪniskɜːt/', N'noun', N'chân váy ngắn')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'2f487811-1c3c-48d2-999b-3731e398d0ec', N'195877e6-0fe9-4de8-b8bc-1010af42ef5a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Chicken', N'/ˈʧɪkɪn/', N'noun', N'con gà')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'ba4cb77a-1423-42f4-9b9c-37740a3bf92a', N'2e10c0fb-82e8-4c5b-a567-8758238aa13a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Deforestation', N'/ˌdiːˌfɑːrɪˈsteɪʃn/', N'noun', N'sự phá rừng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'15d06698-6995-4884-acaf-37edcef66f34', N'a413d1b1-8dce-4b21-ae82-3616de156806', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Navy', N'/ˈneɪ.vi/', N'adj', N'xanh da trời đậm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'ddac92fb-7c78-4095-b890-37f8a3b9d676', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Blog', N'/blɔg/', N'noun', N'nhật ký trực tuyến')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'4f2b3bfa-e0a5-4f2b-a711-38ca838ff146', N'bce41039-a78d-4298-8f50-4224340cd0b9', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Iced tea', N'/aɪst tiː/', N'noun', N'trà đá')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'464ecd2b-7c55-4b7c-9855-38db01b58db2', N'fdc85a13-60ec-4164-9922-3929b0dd0c22', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Performance', N'/pərˈfɔrməns/', N'noun', N'phần trình diễn, tiết mục')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'c52617b3-7f60-466d-9e18-38e629ac298e', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Social studies', N'/ˈsəʊʃəl ˈstʌdiz/', N'noun', N'môn xã hội học')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'979d861f-4710-48ff-8185-38fd2da11aa0', N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Shopping bag', N'/’ʃɑpɪŋ/ /bæɡ/', N'noun', N'túi mua sắm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'f4bce954-d409-44e0-a0f6-3acc71e2062d', N'bce41039-a78d-4298-8f50-4224340cd0b9', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Water', N'/ˈwɔːtə/', N'noun', N'nước uống')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'7e5070da-f4bc-4d77-9f41-3ae507c8e215', N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Squid', N'/skwɪd/', N'noun', N'mực')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'ba7b351f-c766-4588-9cd7-3b1cf7defdde', N'16e9e5ff-df19-432f-bfe0-a2f1cc3716e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Guilty', N'/ˈgɪlti/', N'adj', N'cảm thấy tội lỗi')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'8a21823b-90b4-4820-9388-3b67504899ff', N'd69daf8e-81d7-40fc-9b75-957d4822fbc4', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Sheath dress', N'/ʃiːθ dres/', N'noun', N'váy bút chì')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'0b85e931-b2b1-4be4-a60c-3b6ae06e2af9', N'9d446d63-8055-4802-a831-c2b9cce62d21', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Fat', N'/fæt/', N'adj', N'thừa cân, béo')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'c09203d8-c1dc-4038-ab25-3c26f5b1eaa4', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Belly', N'/ˈbɛli/', N'noun', N'bụng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'7406ea55-64e2-4815-8fb5-3d011d8dd2e3', N'9d446d63-8055-4802-a831-c2b9cce62d21', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Fit', N'/fɪt/', N'adj', N'cân đối, gọn gàng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'b735cf10-ea86-4a1d-8e69-3dc2f0d03bb8', N'97ecf8d6-0569-4bee-82d1-5ef7a8ea5a78', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Product Development Department', N'/‘prɔdəkt di’veləpmənt dɪˈpɑːrt.mənt/', N'noun', N'Phòng Nghiên cứu và phát triển sản phẩm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'97ec1385-9eb2-4f36-ae7e-3def83b847f2', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Energetic', N'/ɛnərˈʤɛtɪk/', N'adj', N'tràn đầy năng lượng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'8e0117f9-9f22-4070-aa7e-3e3dd9386505', N'195877e6-0fe9-4de8-b8bc-1010af42ef5a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Shrimp', N'/ʃrɪmp/', N'noun', N'con tôm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'c693e449-bf11-43e3-975c-3eb5781b4f2b', N'1061d61d-d0cc-4123-ba65-607586d3607a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Commercial', N'/kəˈmɜrʃəl/', N'noun', N'quảng cáo')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'3fd611f7-9065-4bbd-8463-3f08b59c7bfc', N'88428cce-b2c5-4897-a1c3-ebae3a0bf90a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Overcast', N'/,əʊvə’kɑ:st/', N'adj', N'âm u')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'258cd778-5e6f-4a3e-afb3-3f1cacb65d19', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Back', N'/bæk/', N'noun', N'lưng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'685001d9-bd2f-4f1b-950e-3f3b4633be12', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Program', N'/ˈproʊˌgræm/', N'noun', N'chương trình máy tính')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'44dffa03-cdbc-4419-9300-3f794a93d49b', N'721f82eb-6a13-4de1-a115-460531510c7c', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Uncle', N'/ˈʌŋkl/', N'noun', N'bác trai/cậu/chú')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'e50fb164-57c5-4b19-a383-3fd92f44cc8c', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'English', N'/ˈɪŋglɪʃ/', N'noun', N'tiếng Anh')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'7ad0101a-0a78-4591-af79-42da723028fd', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Ear', N'/Ir/', N'noun', N'tai')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'4b0d06be-9793-4dd9-9a0e-43eec451d668', N'88428cce-b2c5-4897-a1c3-ebae3a0bf90a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Drizzle', N'/’drizl/', N'noun', N'cơn mưa phùn')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'a9a1c663-3be0-4178-bd43-44d9b2bed161', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Install', N'/ɪnˈstɔl/', N'noun', N'cài đặt, lắp đặt')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'1a0c9781-1c3d-4ef2-aa5d-456157db5b7d', N'16e9e5ff-df19-432f-bfe0-a2f1cc3716e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Surprised', N'/sərˈpraɪzd/', N'adj', N'ngạc nhiên')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'911554ec-f148-458e-8440-46f53af6dbd2', N'bce41039-a78d-4298-8f50-4224340cd0b9', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Coffee', N'/ˈkɒfi/', N'noun', N'cà phê')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'd6960e10-e2c2-4331-abc3-486488b8f44c', N'88428cce-b2c5-4897-a1c3-ebae3a0bf90a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Humid', N'/’hju:mid/', N'adj', N'ẩm')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'9d9171bb-5039-4320-aa64-48e7c6b26d76', N'88428cce-b2c5-4897-a1c3-ebae3a0bf90a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Freezing', N'/’fri:ziɳ/', N'adj', N'lạnh cóng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'4a6e1ffe-9648-4e22-b096-49124d296cef', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Clock', N'/klɒk/', N'noun', N'đồng hồ')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'57852aba-0980-4c13-b216-492a32508f86', N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Elementary school', N'/ˌɛlɪˈmɛntəri skuːl/', N'noun', N'trường tiểu học')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'710100d8-511a-4878-9764-49a6834b96d5', N'195877e6-0fe9-4de8-b8bc-1010af42ef5a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N' at', N'/gəʊt/', N'noun', N'con dê')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'eebac200-afe1-4574-9a05-4b40beaebc3c', N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Foot', N'/fʊt/', N'noun', N'bàn chân')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'0d9a6344-e0d9-47dc-8647-4b7bd2847863', N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Counter', N'/’kaʊntər/', N'noun', N'quầy tính tiền')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'5b1ba939-e834-49fd-ac90-4bb725f9e663', N'16e9e5ff-df19-432f-bfe0-a2f1cc3716e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Thirsty', N'/ˈθɜrsti/', N'adj', N'khát')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'4cbec947-196d-477a-a0d0-4c223d7d2b77', N'9d446d63-8055-4802-a831-c2b9cce62d21', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Look', N'/lʊk/', N'noun', N'vẻ n ài')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'0c2a4021-4baa-49a7-850d-4c26308117d7', N'54c6e232-c588-483e-82e1-b91e1b24c294', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Hotline', N'/ˈhɑtˌlaɪn/', N'noun', N'đường dây nóng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'5dc3945b-6e10-49e7-b385-4ea005643efc', N'97ecf8d6-0569-4bee-82d1-5ef7a8ea5a78', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Joint venture company', N'/ˌdʒɔɪnt ˈventʃə(r)/', N'noun', N'Công ty liên doanh')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'8f46ff96-bfee-45ef-841e-4efd289ce806', N'bce41039-a78d-4298-8f50-4224340cd0b9', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Fruit juice', N'/fruːt ʤuːs/', N'noun', N'nước hoa quả')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'36636ba7-ce5a-4ce2-b9e9-4f17075cc7ca', N'16e9e5ff-df19-432f-bfe0-a2f1cc3716e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Worried', N'/ˈwɜrid/', N'adj', N'lo lắng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'875f3e19-ccc5-46b7-af67-4fa89c365247', N'd69daf8e-81d7-40fc-9b75-957d4822fbc4', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Straight dress', N'/streɪt dres/', N'noun', N'váy suông')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'4660f942-3105-4ac0-97c0-50b7e3b065b5', N'fdc85a13-60ec-4164-9922-3929b0dd0c22', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Video', N'/ˈvɪdioʊ/', N'noun', N'đoạn phim')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'2c9c1ea0-0f69-4341-b0a5-50f5818b66a4', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Ebook', N'/i-bʊk/', N'noun', N'sách điện tử')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'1aaba4e9-ddd3-4481-95a3-5197a905f74c', N'97ecf8d6-0569-4bee-82d1-5ef7a8ea5a78', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Public Relations Department', N'/ˌpʌb.lɪk rɪˈleɪ.ʃənz dɪˈpɑːrt.mənt/', N'noun', N'Phòng Quan hệ công chúng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'ca17e1ca-3003-4d0e-80ab-51a0be84171c', N'd69daf8e-81d7-40fc-9b75-957d4822fbc4', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Slacks', N'/slæk/', N'noun', N'váy rộng xoè')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'9ac04419-3476-4d5c-9cda-52e0ee636245', N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Shop window', N'/’wɪndoʊ/', N'noun', N'cửa kính trưng bày')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'b6e15c75-6c82-4d27-9d09-538b625a951b', N'd69daf8e-81d7-40fc-9b75-957d4822fbc4', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Ruffled dress', N'/rʌfld dres/', N'noun', N'váy xếp tầng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'90eeb584-25af-4039-a88f-53ea6bb3afc8', N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Generous', N'/ˈʤɛnərəs/', N'adj', N'hào phóng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'080821f6-7791-49ba-b5a7-542da13b75f1', N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Aisle', N'/aɪl/', N'noun', N'quầy hàng')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'757ca514-7a18-443b-98be-545f739c0b83', N'9d446d63-8055-4802-a831-c2b9cce62d21', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Cute', N'/Kjut/', N'adj', N'đáng yêu, dễ thương')
INSERT [dbo].[Vocabularies] ([idVoc], [idTopic], [idProfessor], [engWord], [pronunciation], [wordType], [meaning]) VALUES (N'1855598c-0147-4711-b99b-f38060a4736c', N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Social network', N'network /ˈsoʊʃəl ˈnɛˌtwɜrk/', N'noun', N'mạng xã hội')
GO
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'd4d3a504-209d-40c8-9124-002b48d82035', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Tính cách')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'972aa447-28b3-4f97-b86c-0cb1f200372d', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Món ăn – thực phẩm')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'195877e6-0fe9-4de8-b8bc-1010af42ef5a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Con vật nuôi')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'a3ec4f2e-e8f7-477d-b3bb-299b258419bd', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Máy tính & mạng internet')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'bce9032e-0bb5-4e2f-bd9b-31c8ae444a52', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Sở thích đầy đủ nhất')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'3ea35e97-f820-4780-b5d3-344457e6a878', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Du lịch')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'd1210dee-26e2-44da-a220-351ef47cde18', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Trường học')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'a413d1b1-8dce-4b21-ae82-3616de156806', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Màu sắc cho người mất gốc')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'fdc85a13-60ec-4164-9922-3929b0dd0c22', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Nghệ thuật')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'bce41039-a78d-4298-8f50-4224340cd0b9', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Thức uống')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'721f82eb-6a13-4de1-a115-460531510c7c', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Gia đình')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'97ecf8d6-0569-4bee-82d1-5ef7a8ea5a78', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Kinh doanh')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'1061d61d-d0cc-4123-ba65-607586d3607a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Truyền hình & báo chí')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'2e10c0fb-82e8-4c5b-a567-8758238aa13a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Môi trường')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'd69daf8e-81d7-40fc-9b75-957d4822fbc4', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Quần áo và thời trang')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'46ec0e4f-a022-47d9-b1a3-9a7b4da3cfe2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Mua sắm')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'16e9e5ff-df19-432f-bfe0-a2f1cc3716e2', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Cảm xúc')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'f62f918e-5ba9-4aef-9844-b646532e3e80', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Cơ thể con người')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'54c6e232-c588-483e-82e1-b91e1b24c294', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Điện thoại & thư tín')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'9d446d63-8055-4802-a831-c2b9cce62d21', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'N ại hình')
INSERT [dbo].[VocabularyTopics] ([idVocTopic], [idProfessor], [name]) VALUES (N'88428cce-b2c5-4897-a1c3-ebae3a0bf90a', N'df2b3fc0-0a65-416f-aff9-073e53ffcaac', N'Thời tiết')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Admins_idUser]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Admins_idUser] ON [dbo].[Admins]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AnswerQuestions_QuestionidQuestion]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AnswerQuestions_QuestionidQuestion] ON [dbo].[AnswerQuestions]
(
	[QuestionidQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_idLesson]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_idLesson] ON [dbo].[Comments]
(
	[idLesson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Comments_idUser]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_idUser] ON [dbo].[Comments]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Courses_idProfessor]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Courses_idProfessor] ON [dbo].[Courses]
(
	[idProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lessons_idCourse]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Lessons_idCourse] ON [dbo].[Lessons]
(
	[idCourse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_idMethod]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_idMethod] ON [dbo].[Payments]
(
	[idMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_idPackage]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_idPackage] ON [dbo].[Payments]
(
	[idPackage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_idStudent]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_idStudent] ON [dbo].[Payments]
(
	[idStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Professors_idUser]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Professors_idUser] ON [dbo].[Professors]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_idProfessor]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_idProfessor] ON [dbo].[Questions]
(
	[idProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_idQuiz]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_idQuiz] ON [dbo].[Questions]
(
	[idQuiz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_idUnit]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_idUnit] ON [dbo].[Questions]
(
	[idUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Quizs_idLesson]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Quizs_idLesson] ON [dbo].[Quizs]
(
	[idLesson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reports_idAdmin]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Reports_idAdmin] ON [dbo].[Reports]
(
	[idAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Reports_idUser]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Reports_idUser] ON [dbo].[Reports]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Students_idUser]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Students_idUser] ON [dbo].[Students]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestQuestionUnits_idTest]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_TestQuestionUnits_idTest] ON [dbo].[TestQuestionUnits]
(
	[idTest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestQuestionUnits_idTestPart]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_TestQuestionUnits_idTestPart] ON [dbo].[TestQuestionUnits]
(
	[idTestPart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestRecords_idStudent]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_TestRecords_idStudent] ON [dbo].[TestRecords]
(
	[idStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestRecords_idTest]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_TestRecords_idTest] ON [dbo].[TestRecords]
(
	[idTest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tests_idProfessor]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tests_idProfessor] ON [dbo].[Tests]
(
	[idProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tests_idType]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Tests_idType] ON [dbo].[Tests]
(
	[idType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAnswers_idQuestion]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserAnswers_idQuestion] ON [dbo].[UserAnswers]
(
	[idQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAnswers_idRecord]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserAnswers_idRecord] ON [dbo].[UserAnswers]
(
	[idRecord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAnswers_idStudent]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserAnswers_idStudent] ON [dbo].[UserAnswers]
(
	[idStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VipPackages_idAdmin]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_VipPackages_idAdmin] ON [dbo].[VipPackages]
(
	[idAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VipStudents_idStudent]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_VipStudents_idStudent] ON [dbo].[VipStudents]
(
	[idStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vocabularies_idProfessor]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vocabularies_idProfessor] ON [dbo].[Vocabularies]
(
	[idProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vocabularies_idTopic]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vocabularies_idTopic] ON [dbo].[Vocabularies]
(
	[idTopic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VocabularyTopics_idProfessor]    Script Date: 5/5/2024 8:56:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_VocabularyTopics_idProfessor] ON [dbo].[VocabularyTopics]
(
	[idProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD  CONSTRAINT [FK_AdminOfUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Admins] CHECK CONSTRAINT [FK_AdminOfUser]
GO
ALTER TABLE [dbo].[AnswerQuestions]  WITH CHECK ADD  CONSTRAINT [FK_AnswerQuestions_Questions_QuestionidQuestion] FOREIGN KEY([QuestionidQuestion])
REFERENCES [dbo].[Questions] ([idQuestion])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnswerQuestions] CHECK CONSTRAINT [FK_AnswerQuestions_Questions_QuestionidQuestion]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_CommentsOfLesson] FOREIGN KEY([idLesson])
REFERENCES [dbo].[Lessons] ([idLesson])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_CommentsOfLesson]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_CommentsOfUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_CommentsOfUser]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_CourseOfProfessor] FOREIGN KEY([idProfessor])
REFERENCES [dbo].[Professors] ([idProfessor])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_CourseOfProfessor]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_LessonOfCourse] FOREIGN KEY([idCourse])
REFERENCES [dbo].[Courses] ([idCourse])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_LessonOfCourse]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [PaymentOfMethod] FOREIGN KEY([idMethod])
REFERENCES [dbo].[PaymentMethods] ([idMethod])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [PaymentOfMethod]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [PaymentOfStudent] FOREIGN KEY([idStudent])
REFERENCES [dbo].[Students] ([idStudent])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [PaymentOfStudent]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [PaymentOfVipPackage] FOREIGN KEY([idPackage])
REFERENCES [dbo].[VipPackages] ([idPackage])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [PaymentOfVipPackage]
GO
ALTER TABLE [dbo].[Professors]  WITH CHECK ADD  CONSTRAINT [FK_ProfessorOfUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Professors] CHECK CONSTRAINT [FK_ProfessorOfUser]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_QuestionsOfProfessor] FOREIGN KEY([idProfessor])
REFERENCES [dbo].[Professors] ([idProfessor])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_QuestionsOfProfessor]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_QuestionsOfQuiz] FOREIGN KEY([idQuiz])
REFERENCES [dbo].[Quizs] ([idQuiz])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_QuestionsOfQuiz]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_QuestionsOfUnit] FOREIGN KEY([idUnit])
REFERENCES [dbo].[TestQuestionUnits] ([idQuestionUnit])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_QuestionsOfUnit]
GO
ALTER TABLE [dbo].[Quizs]  WITH CHECK ADD  CONSTRAINT [FK_QuizzesOfLesson] FOREIGN KEY([idLesson])
REFERENCES [dbo].[Lessons] ([idLesson])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Quizs] CHECK CONSTRAINT [FK_QuizzesOfLesson]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_AdminCheckReport] FOREIGN KEY([idAdmin])
REFERENCES [dbo].[Admins] ([idAdmin])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_AdminCheckReport]
GO
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_ReportsOfUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_ReportsOfUser]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_StudentOfUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_StudentOfUser]
GO
ALTER TABLE [dbo].[TestQuestionUnits]  WITH CHECK ADD  CONSTRAINT [FK_UnitOfTestPart] FOREIGN KEY([idTestPart])
REFERENCES [dbo].[TestParts] ([partId])
GO
ALTER TABLE [dbo].[TestQuestionUnits] CHECK CONSTRAINT [FK_UnitOfTestPart]
GO
ALTER TABLE [dbo].[TestQuestionUnits]  WITH CHECK ADD  CONSTRAINT [FK_UnitsOfTest] FOREIGN KEY([idTest])
REFERENCES [dbo].[Tests] ([idTest])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TestQuestionUnits] CHECK CONSTRAINT [FK_UnitsOfTest]
GO
ALTER TABLE [dbo].[TestRecords]  WITH CHECK ADD  CONSTRAINT [RecordOfStudent] FOREIGN KEY([idStudent])
REFERENCES [dbo].[Students] ([idStudent])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TestRecords] CHECK CONSTRAINT [RecordOfStudent]
GO
ALTER TABLE [dbo].[TestRecords]  WITH CHECK ADD  CONSTRAINT [RecordOfTest] FOREIGN KEY([idTest])
REFERENCES [dbo].[Tests] ([idTest])
GO
ALTER TABLE [dbo].[TestRecords] CHECK CONSTRAINT [RecordOfTest]
GO
ALTER TABLE [dbo].[Tests]  WITH CHECK ADD  CONSTRAINT [TestOfProfessor] FOREIGN KEY([idProfessor])
REFERENCES [dbo].[Professors] ([idProfessor])
GO
ALTER TABLE [dbo].[Tests] CHECK CONSTRAINT [TestOfProfessor]
GO
ALTER TABLE [dbo].[Tests]  WITH CHECK ADD  CONSTRAINT [TypeTest] FOREIGN KEY([idType])
REFERENCES [dbo].[TestTypes] ([idTestType])
GO
ALTER TABLE [dbo].[Tests] CHECK CONSTRAINT [TypeTest]
GO
ALTER TABLE [dbo].[UserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_AnswerOfQuestion] FOREIGN KEY([idQuestion])
REFERENCES [dbo].[Questions] ([idQuestion])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAnswers] CHECK CONSTRAINT [FK_AnswerOfQuestion]
GO
ALTER TABLE [dbo].[UserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_AnswerOfStudent] FOREIGN KEY([idStudent])
REFERENCES [dbo].[Students] ([idStudent])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAnswers] CHECK CONSTRAINT [FK_AnswerOfStudent]
GO
ALTER TABLE [dbo].[UserAnswers]  WITH CHECK ADD  CONSTRAINT [FK_RecordAnswer] FOREIGN KEY([idRecord])
REFERENCES [dbo].[TestRecords] ([idRecord])
GO
ALTER TABLE [dbo].[UserAnswers] CHECK CONSTRAINT [FK_RecordAnswer]
GO
ALTER TABLE [dbo].[VipPackages]  WITH CHECK ADD  CONSTRAINT [FK_ManageVipPackage] FOREIGN KEY([idAdmin])
REFERENCES [dbo].[Admins] ([idAdmin])
GO
ALTER TABLE [dbo].[VipPackages] CHECK CONSTRAINT [FK_ManageVipPackage]
GO
ALTER TABLE [dbo].[VipStudents]  WITH CHECK ADD  CONSTRAINT [FK_VipStudentOfStudent] FOREIGN KEY([idStudent])
REFERENCES [dbo].[Students] ([idStudent])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VipStudents] CHECK CONSTRAINT [FK_VipStudentOfStudent]
GO
ALTER TABLE [dbo].[Vocabularies]  WITH CHECK ADD  CONSTRAINT [FK_VocOfProfessor] FOREIGN KEY([idProfessor])
REFERENCES [dbo].[Professors] ([idProfessor])
GO
ALTER TABLE [dbo].[Vocabularies] CHECK CONSTRAINT [FK_VocOfProfessor]
GO
ALTER TABLE [dbo].[Vocabularies]  WITH CHECK ADD  CONSTRAINT [FK_VocOfTopic] FOREIGN KEY([idTopic])
REFERENCES [dbo].[VocabularyTopics] ([idVocTopic])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vocabularies] CHECK CONSTRAINT [FK_VocOfTopic]
GO
ALTER TABLE [dbo].[VocabularyTopics]  WITH CHECK ADD  CONSTRAINT [FK_TopicOfProfessor] FOREIGN KEY([idProfessor])
REFERENCES [dbo].[Professors] ([idProfessor])
GO
ALTER TABLE [dbo].[VocabularyTopics] CHECK CONSTRAINT [FK_TopicOfProfessor]
GO
USE [master]
GO
ALTER DATABASE [toeic-web-db] SET  READ_WRITE 
GO
