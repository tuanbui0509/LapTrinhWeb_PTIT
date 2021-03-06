USE [bakeryshop]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 12/26/2020 3:08:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[email] [varchar](40) NOT NULL,
	[user_name] [varchar](40) NULL,
	[fullname] [nvarchar](256) NULL,
	[password] [nvarchar](256) NULL,
	[gender] [bit] NULL,
	[image] [varchar](500) NULL,
	[birthday] [date] NULL,
	[phone] [char](10) NULL,
	[Address] [nvarchar](256) NULL,
	[IdRole] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 12/26/2020 3:08:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDER](
	[id_order] [int] IDENTITY(1,1) NOT NULL,
	[customer_address] [nvarchar](256) NULL,
	[customer_email] [varchar](256) NULL,
	[customer_name] [nvarchar](256) NULL,
	[customer_phone] [char](10) NULL,
	[order_date] [date] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDER_DETAIL]    Script Date: 12/26/2020 3:08:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL](
	[id_detail] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quality] [int] NULL,
	[id_order] [int] NULL,
	[id_product] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 12/26/2020 3:08:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[id_product] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](256) NULL,
	[size] [float] NULL,
	[price] [float] NULL,
	[flavour] [nvarchar](100) NULL,
	[quality] [int] NULL,
	[style] [nvarchar](100) NULL,
	[image] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 12/26/2020 3:08:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE](
	[IdRole] [int] NOT NULL,
	[nameRole] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ACCOUNT]  WITH CHECK ADD FOREIGN KEY([IdRole])
REFERENCES [dbo].[ROLE] ([IdRole])
GO
ALTER TABLE [dbo].[ORDER_DETAIL]  WITH CHECK ADD FOREIGN KEY([id_order])
REFERENCES [dbo].[ORDER] ([id_order])
GO
ALTER TABLE [dbo].[ORDER_DETAIL]  WITH CHECK ADD FOREIGN KEY([id_product])
REFERENCES [dbo].[PRODUCT] ([id_product])
GO
