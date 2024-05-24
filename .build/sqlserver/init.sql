USE [master]
GO
/****** Object:  Database [toeic-web-db]    Script Date: 5/24/2024 9:29:09 AM ******/
CREATE DATABASE [toeic-web-db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'toeic-web-db', FILENAME = N'/var/opt/mssql/data/toeic-web-db.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'toeic-web-db_log', FILENAME = N'/var/opt/mssql/data/toeic-web-db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
ALTER DATABASE [toeic-web-db] SET READ_COMMITTED_SNAPSHOT ON 
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/24/2024 9:29:10 AM ******/
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
/****** Object:  Table [dbo].[Admins]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[AnswerQuestions]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[Comments]    Script Date: 5/24/2024 9:29:11 AM ******/
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
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[idComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[Lessons]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[Payments]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[Professors]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[Questions]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[Quizs]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[Reports]    Script Date: 5/24/2024 9:29:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[idReport] [uniqueidentifier] NOT NULL,
	[idUser] [nvarchar](450) NOT NULL,
	[idComment] [uniqueidentifier] NOT NULL,
	[reason] [nvarchar](max) NOT NULL,
	[isCheck] [bit] NOT NULL,
	[reportDate] [datetime2](7) NOT NULL,
	[checkNote] [nvarchar](max) NULL,
	[commentDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[idReport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResetPasswords]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[ScoreParams]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[Students]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[TestParts]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[TestQuestionUnits]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[TestRecords]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[Tests]    Script Date: 5/24/2024 9:29:11 AM ******/
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
	[isVip] [bit] NULL,
 CONSTRAINT [PK_Tests] PRIMARY KEY CLUSTERED 
(
	[idTest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestTypes]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[UserAnswers]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[VipPackages]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[VipStudents]    Script Date: 5/24/2024 9:29:11 AM ******/
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
/****** Object:  Table [dbo].[Vocabularies]    Script Date: 5/24/2024 9:29:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vocabularies](
	[idVoc] [uniqueidentifier] NOT NULL,
	[idTopic] [uniqueidentifier] NOT NULL,
	[idUser] [nvarchar](450) NOT NULL,
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
/****** Object:  Table [dbo].[VocabularyTopics]    Script Date: 5/24/2024 9:29:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VocabularyTopics](
	[idVocTopic] [uniqueidentifier] NOT NULL,
	[idUser] [nvarchar](450) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_VocabularyTopics] PRIMARY KEY CLUSTERED 
(
	[idVocTopic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Admins_idUser]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Admins_idUser] ON [dbo].[Admins]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AnswerQuestions_QuestionidQuestion]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_AnswerQuestions_QuestionidQuestion] ON [dbo].[AnswerQuestions]
(
	[QuestionidQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_idLesson]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_idLesson] ON [dbo].[Comments]
(
	[idLesson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Comments_idUser]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_idUser] ON [dbo].[Comments]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Courses_idProfessor]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Courses_idProfessor] ON [dbo].[Courses]
(
	[idProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lessons_idCourse]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Lessons_idCourse] ON [dbo].[Lessons]
(
	[idCourse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_idMethod]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_idMethod] ON [dbo].[Payments]
(
	[idMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_idPackage]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_idPackage] ON [dbo].[Payments]
(
	[idPackage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_idStudent]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_idStudent] ON [dbo].[Payments]
(
	[idStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Professors_idUser]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Professors_idUser] ON [dbo].[Professors]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_idProfessor]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_idProfessor] ON [dbo].[Questions]
(
	[idProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_idQuiz]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_idQuiz] ON [dbo].[Questions]
(
	[idQuiz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Questions_idUnit]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Questions_idUnit] ON [dbo].[Questions]
(
	[idUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Quizs_idLesson]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Quizs_idLesson] ON [dbo].[Quizs]
(
	[idLesson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reports_idComment]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reports_idComment] ON [dbo].[Reports]
(
	[idComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Reports_idUser]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reports_idUser] ON [dbo].[Reports]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Students_idUser]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Students_idUser] ON [dbo].[Students]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestQuestionUnits_idTest]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_TestQuestionUnits_idTest] ON [dbo].[TestQuestionUnits]
(
	[idTest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestQuestionUnits_idTestPart]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_TestQuestionUnits_idTestPart] ON [dbo].[TestQuestionUnits]
(
	[idTestPart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestRecords_idStudent]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_TestRecords_idStudent] ON [dbo].[TestRecords]
(
	[idStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TestRecords_idTest]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_TestRecords_idTest] ON [dbo].[TestRecords]
(
	[idTest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tests_idProfessor]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tests_idProfessor] ON [dbo].[Tests]
(
	[idProfessor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tests_idType]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Tests_idType] ON [dbo].[Tests]
(
	[idType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAnswers_idQuestion]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserAnswers_idQuestion] ON [dbo].[UserAnswers]
(
	[idQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAnswers_idRecord]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserAnswers_idRecord] ON [dbo].[UserAnswers]
(
	[idRecord] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserAnswers_idStudent]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserAnswers_idStudent] ON [dbo].[UserAnswers]
(
	[idStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VipPackages_idAdmin]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_VipPackages_idAdmin] ON [dbo].[VipPackages]
(
	[idAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VipStudents_idStudent]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_VipStudents_idStudent] ON [dbo].[VipStudents]
(
	[idStudent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vocabularies_idTopic]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Vocabularies_idTopic] ON [dbo].[Vocabularies]
(
	[idTopic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Vocabularies_idUser]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_Vocabularies_idUser] ON [dbo].[Vocabularies]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_VocabularyTopics_idUser]    Script Date: 5/24/2024 9:29:11 AM ******/
CREATE NONCLUSTERED INDEX [IX_VocabularyTopics_idUser] ON [dbo].[VocabularyTopics]
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Reports] ADD  DEFAULT (CONVERT([bit],(0))) FOR [commentDeleted]
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
ALTER TABLE [dbo].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_ReportOfComment] FOREIGN KEY([idComment])
REFERENCES [dbo].[Comments] ([idComment])
GO
ALTER TABLE [dbo].[Reports] CHECK CONSTRAINT [FK_ReportOfComment]
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
ALTER TABLE [dbo].[Vocabularies]  WITH CHECK ADD  CONSTRAINT [FK_VocOfTopic] FOREIGN KEY([idTopic])
REFERENCES [dbo].[VocabularyTopics] ([idVocTopic])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vocabularies] CHECK CONSTRAINT [FK_VocOfTopic]
GO
ALTER TABLE [dbo].[Vocabularies]  WITH CHECK ADD  CONSTRAINT [FK_VocOfUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Vocabularies] CHECK CONSTRAINT [FK_VocOfUser]
GO
ALTER TABLE [dbo].[VocabularyTopics]  WITH CHECK ADD  CONSTRAINT [FK_TopicOfUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[VocabularyTopics] CHECK CONSTRAINT [FK_TopicOfUser]
GO
USE [master]
GO
ALTER DATABASE [toeic-web-db] SET  READ_WRITE 
GO
