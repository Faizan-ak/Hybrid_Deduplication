USE [Consistency_Service]
GO
/****** Object:  Table [dbo].[M_Cloud]    Script Date: 11/13/2014 15:23:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cloud](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[Cloud_Name] [varchar](max) NOT NULL,
	[Cloud_Uname] [varchar](max) NOT NULL,
	[Cloud_PWD] [varchar](max) NOT NULL,
	[Cloud_URL] [varchar](max) NOT NULL,
	[Cloud_Flag] [varchar](max) NOT NULL,
 CONSTRAINT [PK_M_Cloud] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_IP]    Script Date: 11/13/2014 15:23:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_IP](
	[IP_ID] [int] IDENTITY(1,1) NOT NULL,
	[IP_Address] [varchar](max) NULL,
	[IP_LocationName] [varchar](max) NULL,
	[IP_Server] [int] NULL,
	[IP_Remark] [varchar](max) NULL,
 CONSTRAINT [PK_M_IP] PRIMARY KEY CLUSTERED 
(
	[IP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_User]    Script Date: 11/13/2014 15:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_User](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](max) NOT NULL,
	[Pwd] [varchar](max) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[City] [varchar](max) NOT NULL,
	[Mobile] [varchar](max) NOT NULL,
	[EmailID] [varchar](max) NOT NULL,
 CONSTRAINT [PK_M_User] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_SERVER_India]    Script Date: 11/13/2014 15:23:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_SERVER_India](
	[FID] [int] NULL,
	[F_Name] [varchar](max) NULL,
	[F_MAC] [varchar](max) NULL,
	[F_Time] [varchar](max) NULL,
	[F_Date] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_SERVER_USA]    Script Date: 11/13/2014 15:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_SERVER_USA](
	[FID] [int] NULL,
	[F_Name] [varchar](max) NULL,
	[F_MAC] [varchar](max) NULL,
	[F_Time] [varchar](max) NULL,
	[F_Date] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Trans]    Script Date: 11/13/2014 15:24:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Trans](
	[Tno] [int] IDENTITY(1,1) NOT NULL,
	[UID] [nchar](10) NULL,
	[FName] [varchar](max) NULL,
	[Time] [varchar](max) NULL,
	[Date] [varchar](max) NULL,
	[Remark] [varchar](max) NULL,
 CONSTRAINT [PK_M_Trans] PRIMARY KEY CLUSTERED 
(
	[Tno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_File]    Script Date: 11/13/2014 15:23:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_File](
	[FID] [int] IDENTITY(1,1) NOT NULL,
	[F_Name] [varchar](max) NOT NULL,
	[F_Ex] [varchar](max) NOT NULL,
	[F_LastUpdate] [varchar](max) NOT NULL,
	[Avg_Intervel] [int] NOT NULL,
	[F_MAC] [varchar](max) NOT NULL,
	[UID] [int] NOT NULL,
	[SID] [int] NOT NULL,
 CONSTRAINT [PK_M_File] PRIMARY KEY CLUSTERED 
(
	[FID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_HAS]    Script Date: 11/13/2014 15:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_HAS](
	[HAS_ID] [int] IDENTITY(1,1) NOT NULL,
	[FID] [int] NOT NULL,
	[Last_Audit] [varchar](max) NOT NULL,
 CONSTRAINT [PK_M_HAS] PRIMARY KEY CLUSTERED 
(
	[HAS_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Admin]    Script Date: 11/13/2014 15:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Admin](
	[Uname] [varchar](max) NOT NULL,
	[Pwd] [varchar](max) NOT NULL,
	[Name] [varchar](max) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Server]    Script Date: 11/13/2014 15:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Server](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[SName] [varchar](max) NOT NULL,
	[SPath] [varchar](max) NOT NULL,
	[CID] [int] NOT NULL,
	[IP_ID] [int] NOT NULL,
 CONSTRAINT [PK_M_Server] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
