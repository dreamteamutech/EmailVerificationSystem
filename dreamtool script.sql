USE [DreamTool]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 03/05/2013 08:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organization](
	[OrgId] [int] IDENTITY(1,1) NOT NULL,
	[OrgName] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrgId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 03/05/2013 08:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Branch](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [varchar](120) NULL,
	[OrgId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/05/2013 08:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](120) NULL,
	[Lname] [varchar](120) NULL,
	[BranchId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Email]    Script Date: 03/05/2013 08:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Email](
	[EmailId] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](120) NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Validation]    Script Date: 03/05/2013 08:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Validation](
	[ValidId] [int] IDENTITY(1,1) NOT NULL,
	[DateSent] [date] NULL,
	[Delivered] [int] NULL,
	[Opened] [int] NULL,
	[EmalId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ValidId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__Branch__OrgId__0519C6AF]    Script Date: 03/05/2013 08:52:29 ******/
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD FOREIGN KEY([OrgId])
REFERENCES [dbo].[Organization] ([OrgId])
GO
/****** Object:  ForeignKey [FK__Customer__Branch__09DE7BCC]    Script Date: 03/05/2013 08:52:29 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([BranchId])
GO
/****** Object:  ForeignKey [FK__Email__CustomerI__0EA330E9]    Script Date: 03/05/2013 08:52:29 ******/
ALTER TABLE [dbo].[Email]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
/****** Object:  ForeignKey [FK__Validatio__EmalI__1BFD2C07]    Script Date: 03/05/2013 08:52:29 ******/
ALTER TABLE [dbo].[Validation]  WITH CHECK ADD FOREIGN KEY([EmalId])
REFERENCES [dbo].[Email] ([EmailId])
GO
