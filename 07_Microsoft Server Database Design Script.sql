-- MICROSOFT SERVER
USE [master]
GO
/****** Object:  Database [flighbookingsystem] ******/
CREATE DATABASE [flighbookingsystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'flighbookingsystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\flighbookingsystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'flighbookingsystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\flighbookingsystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [flighbookingsystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [flighbookingsystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [flighbookingsystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [flighbookingsystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [flighbookingsystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [flighbookingsystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [flighbookingsystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [flighbookingsystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [flighbookingsystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [flighbookingsystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [flighbookingsystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [flighbookingsystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [flighbookingsystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [flighbookingsystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [flighbookingsystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [flighbookingsystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [flighbookingsystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [flighbookingsystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [flighbookingsystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [flighbookingsystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [flighbookingsystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [flighbookingsystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [flighbookingsystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [flighbookingsystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [flighbookingsystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [flighbookingsystem] SET  MULTI_USER 
GO
ALTER DATABASE [flighbookingsystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [flighbookingsystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [flighbookingsystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [flighbookingsystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [flighbookingsystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [flighbookingsystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [flighbookingsystem] SET QUERY_STORE = OFF
GO
USE [flighbookingsystem]
GO
/****** Object:  Table [dbo].[airplane] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[airplane](
	[airplaneId] [int] IDENTITY(1,1) NOT NULL,
	[companyName] [varchar](200) NOT NULL,
	[numser] [varchar](50) NOT NULL,
	[manufacturer] [varchar](200) NOT NULL,
	[modelNumber] [varchar](50) NOT NULL,
 CONSTRAINT [PK_airplane] PRIMARY KEY CLUSTERED 
(
	[airplaneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[classId] [int] IDENTITY(1,1) NOT NULL,
	[classname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[classId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flight] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flight](
	[flightNum] [varchar](50) NOT NULL,
	[origin] [varchar](100) NOT NULL,
	[departureDate] [date] NOT NULL,
	[departureTime] [time](7) NOT NULL,
	[destination] [varchar](100) NOT NULL,
	[arrDate] [date] NOT NULL,
	[arrTime] [time](7) NOT NULL,
	[airplaneId] [int] NOT NULL,
	[empNum1] [int] NOT NULL,
	[empNum2] [int] NOT NULL,
 CONSTRAINT [PK_flight] PRIMARY KEY CLUSTERED 
(
	[flightNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passenger] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passenger](
	[passengerId] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nchar](100) NOT NULL,
	[name] [nchar](100) NOT NULL,
	[address] [nchar](200) NOT NULL,
	[city] [nchar](50) NOT NULL,
	[state] [char](2) NOT NULL,
	[phone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Passenger] PRIMARY KEY CLUSTERED 
(
	[passengerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pilot] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pilot](
	[empNum] [int] IDENTITY(1,1) NOT NULL,
	[surname] [varchar](100) NULL,
	[name] [varchar](100) NULL,
	[address] [varchar](200) NULL,
	[city] [varchar](50) NULL,
	[state] [char](2) NULL,
	[phone] [varchar](50) NULL,
	[salary] [decimal](7, 2) NULL,
	[position] [varchar](100) NULL,
	[ratingId] [int] NULL,
 CONSTRAINT [PK_Pilot] PRIMARY KEY CLUSTERED 
(
	[empNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[ticketId] [int] IDENTITY(1,1) NOT NULL,
	[ticketNo] [varchar](100) NOT NULL,
	[passengerId] [int] NOT NULL,
	[classId] [int] NOT NULL,
	[flightNum] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ticket] PRIMARY KEY CLUSTERED 
(
	[ticketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[typeRating] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typeRating](
	[ratingId] [int] IDENTITY(1,1) NOT NULL,
	[airplaneId] [int] NOT NULL,
 CONSTRAINT [PK_typeRating] PRIMARY KEY CLUSTERED 
(
	[ratingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[flight]  WITH CHECK ADD  CONSTRAINT [FK_flight_airplane1] FOREIGN KEY([airplaneId])
REFERENCES [dbo].[airplane] ([airplaneId])
GO
ALTER TABLE [dbo].[flight] CHECK CONSTRAINT [FK_flight_airplane1]
GO
ALTER TABLE [dbo].[flight]  WITH CHECK ADD  CONSTRAINT [FK_flight_Pilot] FOREIGN KEY([empNum2])
REFERENCES [dbo].[Pilot] ([empNum])
GO
ALTER TABLE [dbo].[flight] CHECK CONSTRAINT [FK_flight_Pilot]
GO
ALTER TABLE [dbo].[flight]  WITH CHECK ADD  CONSTRAINT [FK_flight_Pilot1] FOREIGN KEY([empNum1])
REFERENCES [dbo].[Pilot] ([empNum])
GO
ALTER TABLE [dbo].[flight] CHECK CONSTRAINT [FK_flight_Pilot1]
GO
ALTER TABLE [dbo].[Pilot]  WITH CHECK ADD  CONSTRAINT [FK_Pilot_typeRating1] FOREIGN KEY([ratingId])
REFERENCES [dbo].[typeRating] ([ratingId])
GO
ALTER TABLE [dbo].[Pilot] CHECK CONSTRAINT [FK_Pilot_typeRating1]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_Class1] FOREIGN KEY([classId])
REFERENCES [dbo].[Class] ([classId])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_Class1]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_flight1] FOREIGN KEY([flightNum])
REFERENCES [dbo].[flight] ([flightNum])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_flight1]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_Passenger1] FOREIGN KEY([passengerId])
REFERENCES [dbo].[Passenger] ([passengerId])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_Passenger1]
GO
ALTER TABLE [dbo].[typeRating]  WITH CHECK ADD  CONSTRAINT [FK_typeRating_airplane1] FOREIGN KEY([airplaneId])
REFERENCES [dbo].[airplane] ([airplaneId])
GO
ALTER TABLE [dbo].[typeRating] CHECK CONSTRAINT [FK_typeRating_airplane1]
GO
USE [master]
GO
ALTER DATABASE [flighbookingsystem] SET  READ_WRITE 
GO
