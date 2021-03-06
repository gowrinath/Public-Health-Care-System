USE [PHR_DB]
GO
/****** Object:  Table [dbo].[uploadfiles]    Script Date: 12/12/2012 17:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uploadfiles](
	[oid] [int] NULL,
	[oname] [nvarchar](50) NULL,
	[fileid] [int] NULL,
	[fname] [varchar](max) NULL,
	[filee] [varbinary](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[upload_file_details]    Script Date: 12/12/2012 17:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[upload_file_details](
	[oid] [int] NULL,
	[oname] [nvarchar](50) NULL,
	[fileid] [int] NULL,
	[fname] [varchar](max) NULL,
	[filee] [nvarchar](max) NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[storedatas]    Script Date: 12/12/2012 17:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[storedatas](
	[userid] [int] NULL,
	[entext] [varchar](max) NULL,
	[decdata] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[searchuserreg]    Script Date: 12/12/2012 17:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[searchuserreg](
	[id] [int] NULL,
	[name] [varchar](50) NULL,
	[uname] [nvarchar](50) NULL,
	[pwd] [nvarchar](50) NULL,
	[mobile] [numeric](10, 0) NULL,
	[mail] [nvarchar](50) NULL,
	[role] [varchar](50) NULL,
	[dob] [date] NULL,
	[status] [varchar](50) NULL,
	[skey] [nvarchar](50) NULL,
	[pkey] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phrownersrecords]    Script Date: 12/12/2012 17:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phrownersrecords](
	[oid] [int] NULL,
	[oname] [varchar](50) NULL,
	[dob] [date] NULL,
	[blood] [nvarchar](50) NULL,
	[contactno] [numeric](18, 0) NULL,
	[datelastphysical] [date] NULL,
	[resultoftest] [nvarchar](max) NULL,
	[illness] [nvarchar](max) NULL,
	[resultdate] [date] NULL,
	[medicinename] [nvarchar](50) NULL,
	[dosage] [nvarchar](50) NULL,
	[howlong] [nvarchar](50) NULL,
	[allergies] [varchar](max) NULL,
	[allergytype] [varchar](max) NULL,
	[history] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[docid] [int] NULL,
	[status] [varchar](50) NULL,
	[fseckey] [nvarchar](50) NULL,
	[fprikey] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phrownerreg]    Script Date: 12/12/2012 17:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phrownerreg](
	[id] [int] NULL,
	[name] [varchar](50) NULL,
	[uname] [nvarchar](50) NULL,
	[pwd] [nvarchar](50) NULL,
	[mobile] [numeric](18, 0) NULL,
	[mail] [nvarchar](50) NULL,
	[role] [varchar](50) NULL,
	[dob] [date] NULL,
	[status] [varchar](50) NULL,
	[skey] [nvarchar](50) NULL,
	[pkey] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emergency]    Script Date: 12/12/2012 17:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emergency](
	[mailid] [nvarchar](max) NULL,
	[name] [nvarchar](50) NULL,
	[secret] [nvarchar](50) NULL,
	[status] [varchar](50) NULL,
	[skey] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
