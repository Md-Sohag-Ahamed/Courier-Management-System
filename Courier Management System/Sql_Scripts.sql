USE [Courier Management System]
GO
/****** Object:  Table [dbo].[AreaInfo]    Script Date: 10/31/2023 8:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaInfo](
	[aAreaID] [int] IDENTITY(1,1) NOT NULL,
	[aAreaName] [varchar](50) NOT NULL,
	[aCost] [float] NULL,
 CONSTRAINT [PK_AreaInfo] PRIMARY KEY CLUSTERED 
(
	[aAreaName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 10/31/2023 8:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking](
	[bID] [int] IDENTITY(1,1) NOT NULL,
	[bOriginFirstName] [varchar](50) NULL,
	[bOriginLastName] [varchar](50) NULL,
	[bOriginAddress] [varchar](50) NULL,
	[bOriginPhoneNo] [varchar](50) NULL,
	[bDestFirstName] [varchar](50) NULL,
	[bDestLastName] [varchar](50) NULL,
	[bDestAddress] [varchar](50) NULL,
	[bDestPhoneNo] [varchar](50) NULL,
	[bWeight] [float] NULL,
	[bDescription] [varchar](50) NULL,
	[bTye] [varchar](20) NULL,
	[bCost] [float] NULL,
	[id] [bigint] NULL,
	[dID] [int] NULL,
	[bOriginArea] [varchar](50) NULL,
	[bDestArea] [varchar](50) NULL,
	[bOriginCost] [float] NULL,
	[bDestCost] [float] NULL,
	[status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[bID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deliveryMen]    Script Date: 10/31/2023 8:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deliveryMen](
	[dID] [int] IDENTITY(1,1) NOT NULL,
	[dFirstName] [varchar](50) NULL,
	[dLastName] [varchar](50) NULL,
	[dPhoneNo] [int] NULL,
	[dSalary] [int] NULL,
	[dAddress] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[dID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 10/31/2023 8:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[comm] [varchar](50) NULL,
	[userID] [bigint] NULL,
	[userName] [varchar](50) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[siteuser]    Script Date: 10/31/2023 8:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[siteuser](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[emailid] [varchar](50) NULL,
	[password] [char](10) NULL,
	[address] [varchar](50) NULL,
	[usertype] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tracking]    Script Date: 10/31/2023 8:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tracking](
	[trackiingID] [int] IDENTITY(1,1) NOT NULL,
	[bID] [int] NULL,
	[diD] [int] NULL,
 CONSTRAINT [PK_Tracking] PRIMARY KEY CLUSTERED 
(
	[trackiingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [FK_userID] FOREIGN KEY([id])
REFERENCES [dbo].[siteuser] ([id])
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [FK_userID]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_siteuser] FOREIGN KEY([userID])
REFERENCES [dbo].[siteuser] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_siteuser]
GO
ALTER TABLE [dbo].[Tracking]  WITH CHECK ADD  CONSTRAINT [FK_Tracking_booking] FOREIGN KEY([bID])
REFERENCES [dbo].[booking] ([bID])
GO
ALTER TABLE [dbo].[Tracking] CHECK CONSTRAINT [FK_Tracking_booking]
GO
ALTER TABLE [dbo].[Tracking]  WITH CHECK ADD  CONSTRAINT [FK_Tracking_deliveryMen] FOREIGN KEY([diD])
REFERENCES [dbo].[deliveryMen] ([dID])
GO
ALTER TABLE [dbo].[Tracking] CHECK CONSTRAINT [FK_Tracking_deliveryMen]
GO
