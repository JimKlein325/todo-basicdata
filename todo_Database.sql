CREATE DATABASE [todo]
GO
USE [todo]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 7/12/2016 11:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tasks]    Script Date: 7/12/2016 11:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[category_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name]) VALUES (1, N'house work')
INSERT [dbo].[categories] ([id], [name]) VALUES (2, N'shopping')
INSERT [dbo].[categories] ([id], [name]) VALUES (3, N'yardwork')
SET IDENTITY_INSERT [dbo].[categories] OFF
