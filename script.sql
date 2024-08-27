USE [DuDu]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/20/2023 8:19:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 12/20/2023 8:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[imageID] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](max) NULL,
	[productID] [int] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[imageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/20/2023 8:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[total] [money] NULL,
	[address] [nvarchar](150) NULL,
	[note] [nvarchar](150) NULL,
	[date] [datetime] NULL,
	[ship] [nvarchar](50) NULL,
	[discount] [float] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_List]    Script Date: 12/20/2023 8:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_List](
	[listID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NULL,
	[type] [nvarchar](100) NULL,
	[size] [nvarchar](100) NULL,
	[quantity] [int] NULL,
	[orderID] [int] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order_List] PRIMARY KEY CLUSTERED 
(
	[listID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/20/2023 8:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[categoryID] [int] NULL,
	[image] [nvarchar](max) NULL,
	[detail] [nvarchar](max) NULL,
	[shopID] [int] NULL,
	[price] [money] NULL,
	[name] [nvarchar](250) NULL,
	[rate] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 12/20/2023 8:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Review_ID] [int] IDENTITY(1,1) NOT NULL,
	[Product_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Date_Posted] [datetime] NOT NULL,
	[Reported] [int] NULL,
	[Banned] [bit] NULL,
	[BannedCount] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 12/20/2023 8:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[shopID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[userID] [int] NULL,
	[rate] [float] NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[shopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/20/2023 8:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[dob] [date] NULL,
	[email] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[role] [int] NULL,
	[avatar] [nvarchar](max) NULL,
	[describe] [nvarchar](100) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 12/20/2023 8:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[voucherID] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NULL,
	[discount] [float] NULL,
	[due] [datetime] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[voucherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 12/20/2023 8:19:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[warehouseID] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NULL,
	[type] [nvarchar](100) NULL,
	[size] [nvarchar](100) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[warehouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryID], [name]) VALUES (1, N'Dress')
INSERT [dbo].[Category] ([categoryID], [name]) VALUES (2, N'Shirt')
INSERT [dbo].[Category] ([categoryID], [name]) VALUES (3, N'T-shirt')
INSERT [dbo].[Category] ([categoryID], [name]) VALUES (4, N'Jacket')
INSERT [dbo].[Category] ([categoryID], [name]) VALUES (5, N'FootWear')
INSERT [dbo].[Category] ([categoryID], [name]) VALUES (6, N'UnderWear')
INSERT [dbo].[Category] ([categoryID], [name]) VALUES (7, N'Pant')
INSERT [dbo].[Category] ([categoryID], [name]) VALUES (9, N'Bag')
INSERT [dbo].[Category] ([categoryID], [name]) VALUES (10, N'Accessory')
INSERT [dbo].[Category] ([categoryID], [name]) VALUES (11, N'Skirt')
INSERT [dbo].[Category] ([categoryID], [name]) VALUES (12, N'Suit')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([imageID], [image], [productID]) VALUES (1, N'img/ao1_1.png', 1)
INSERT [dbo].[Image] ([imageID], [image], [productID]) VALUES (2, N'img/ao1_2.png', 1)
INSERT [dbo].[Image] ([imageID], [image], [productID]) VALUES (3, N'img/ao1_3.png', 1)
INSERT [dbo].[Image] ([imageID], [image], [productID]) VALUES (4, N'img/ao1_4.png', 1)
INSERT [dbo].[Image] ([imageID], [image], [productID]) VALUES (5, N'img/ao1_5.png', 1)
INSERT [dbo].[Image] ([imageID], [image], [productID]) VALUES (6, N'img/ao1_6.png', 1)
INSERT [dbo].[Image] ([imageID], [image], [productID]) VALUES (8, N'img/chuot1_1.png', 2)
INSERT [dbo].[Image] ([imageID], [image], [productID]) VALUES (9, N'img/whitedress.jpg', 52)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderID], [userID], [total], [address], [note], [date], [ship], [discount], [status]) VALUES (122, 29, 85246000.0000, N'128 may dien', N'', CAST(N'2023-12-15T03:21:46.000' AS DateTime), N'Standard-Delivery', 0, N'Processing')
INSERT [dbo].[Order] ([orderID], [userID], [total], [address], [note], [date], [ship], [discount], [status]) VALUES (123, 29, 81020000.0000, N'128 may dien', N'', CAST(N'2023-12-15T04:18:04.000' AS DateTime), N'Standard-Delivery', 0, N'Processing')
INSERT [dbo].[Order] ([orderID], [userID], [total], [address], [note], [date], [ship], [discount], [status]) VALUES (124, 29, 85246000.0000, N'392 thon 4 thach hoa thach that', N'', CAST(N'2023-12-17T00:18:29.000' AS DateTime), N'Standard-Delivery', 0, N'Confirmed')
INSERT [dbo].[Order] ([orderID], [userID], [total], [address], [note], [date], [ship], [discount], [status]) VALUES (125, 29, 29123000.0000, N'128 may dien', N'', CAST(N'2023-12-17T00:19:17.000' AS DateTime), N'Standard-Delivery', 0, N'Pending')
INSERT [dbo].[Order] ([orderID], [userID], [total], [address], [note], [date], [ship], [discount], [status]) VALUES (126, 35, 27020000.0000, N're', N'', CAST(N'2023-12-17T00:40:06.000' AS DateTime), N'Standard-Delivery', 0, N'Pending')
INSERT [dbo].[Order] ([orderID], [userID], [total], [address], [note], [date], [ship], [discount], [status]) VALUES (127, 29, 87189760.0000, N'123 op', N'', CAST(N'2023-12-17T08:30:37.000' AS DateTime), N'Standard-Delivery', 0, N'Pending')
INSERT [dbo].[Order] ([orderID], [userID], [total], [address], [note], [date], [ship], [discount], [status]) VALUES (128, 35, 87189760.0000, N're', N'', CAST(N'2023-12-17T09:23:12.000' AS DateTime), N'Standard-Delivery', 0, N'Pending')
INSERT [dbo].[Order] ([orderID], [userID], [total], [address], [note], [date], [ship], [discount], [status]) VALUES (129, 35, 87189760.0000, N'thai nguyen', N'shippppp', CAST(N'2023-12-17T10:53:35.000' AS DateTime), N'Standard-Delivery', 0, N'Pending')
INSERT [dbo].[Order] ([orderID], [userID], [total], [address], [note], [date], [ship], [discount], [status]) VALUES (130, 36, 348699040.0000, N'Ha Noi', N'', CAST(N'2023-12-20T20:04:32.000' AS DateTime), N'Standard-Delivery', 0, N'Pending')
INSERT [dbo].[Order] ([orderID], [userID], [total], [address], [note], [date], [ship], [discount], [status]) VALUES (131, 38, 174379520.0000, N'Thái Nguyên', N'', CAST(N'2023-12-20T20:05:38.000' AS DateTime), N'Standard-Delivery', 0, N'Pending')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_List] ON 

INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (110, 1, N'White', N'M', 2, 65, N'Delivered')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (111, 2, N'Pink', N'', 5, 65, N'Confirmed')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (112, 1, N'White', N'XL', 5, 66, N'Delivered')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (113, 1, N'White', N'M', 4, 66, N'Confirmed')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (114, 1, N'Cream', N'M', 3, 67, N'Dispatched')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (115, 3, N'', N'', 4, 68, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (116, 4, N'', N'Small', 4, 68, N'Confirmed')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (117, 2, N'Black', N'', 5, 69, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (118, 3, N'', N'', 4, 71, N'Confirmed')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (119, 1, N'Cream', N'M', 5, 72, N'Confirmed')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (120, 2, N'Pink', N'', 4, 72, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (121, 1, N'White', N'M', 3, 73, N'Confirmed')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (122, 2, N'Pink', N'', 5, 73, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (123, 1, N'White', N'M', 4, 74, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (124, 2, N'Pink', N'', 5, 74, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (125, 1, N'Cream', N'M', 3, 75, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (126, 2, N'Pink', N'', 4, 75, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (127, 1, N'Cream', N'M', 5, 76, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (128, 1, N'Cream', N'S', 3, 76, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (129, 2, N'Black', N'', 3, 76, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (130, 3, N'', N'', 3, 76, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (131, 2, N'Pink', N'', 3, 77, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (132, 2, N'Black', N'', 3, 78, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (133, 3, N'', N'', 3, 78, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (134, 1, N'Cream', N'M', 3, 79, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (135, 1, N'White', N'XL', 3, 79, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (136, 2, N'Pink', N'', 3, 79, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (137, 1, N'Cream', N'M', 3, 80, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (138, 2, N'Pink', N'', 4, 80, N'Confirmed')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (139, 1, N'Cream', N'M', 3, 81, N'Confirmed')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (140, 1, N'Cream', N'S', 3, 81, N'Confirmed')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (141, 3, N'', N'', 3, 81, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (142, 1, N'Cream', N'L', 6, 82, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (143, 1, N'Cream', N'S', 3, 82, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (144, 1, N'White', N'M', 4, 83, N'Confirmed')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (145, 1, N'White', N'M', 3, 84, N'Processing')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (146, 1, N'White', N'M', 3, 85, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (147, 1, N'White', N'M', 4, 86, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (148, 1, N'Cream', N'S', 3, 87, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (149, 1, N'Cream', N'S', 3, 88, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (150, 1, N'White', N'M', 3, 89, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (151, 1, N'White', N'XL', 3, 90, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (152, 1, N'White', N'M', 4, 91, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (153, 1, N'White', N'M', 4, 92, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (154, 1, N'White', N'M', 4, 93, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (155, 1, N'White', N'M', 1, 94, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (156, 1, N'White', N'XL', 4, 95, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (157, 1, N'White', N'XL', 4, 96, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (158, 1, N'Cream', N'L', 3, 97, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (159, 1, N'White', N'XL', 4, 98, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (160, 1, N'White', N'XL', 4, 99, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (161, 1, N'White', N'XL', 4, 100, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (162, 1, N'White', N'XL', 4, 101, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (163, 1, N'White', N'M', 2, 102, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (164, 1, N'Cream', N'M', 3, 103, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (165, 1, N'Cream', N'M', 3, 104, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (166, 1, N'White', N'XL', 4, 105, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (167, 8, N'Normal', N'XL', 4, 106, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (168, 10, N'Black', N'', 4, 107, N'Delivered')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (169, 1, N'White', N'M', 3, 108, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (170, 2, N'Pink', N'', 3, 108, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (171, 1, N'Cream', N'S', 3, 109, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (172, 10, N'Black', N'', 11, 110, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (173, 40, N'White', N'32', 1, 113, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (174, 40, N'Blue', N'32', 1, 114, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (175, 40, N'White', N'M', 1, 115, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (176, 60, N'Blue', N'M', 2, 116, N'Delivered')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (177, 73, N'', N'M', 2, 117, N'Delivered')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (178, 70, N'', N'XL', 3, 118, N'Dispatched')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (179, 73, N'', N'L', 1, 119, N'Processing')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (180, 70, N'', N'M', 2, 119, N'Processing')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (181, 70, N'', N'M', 1, 121, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (182, 73, N'', N'L', 1, 121, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (183, 73, N'', N'M', 1, 122, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (184, 70, N'', N'XL', 2, 122, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (185, 73, N'', N'XL', 3, 123, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (186, 70, N'', N'M', 2, 124, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (187, 73, N'', N'M', 1, 124, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (188, 70, N'Leather', N'XL', 1, 125, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (189, 73, N'', N'M', 1, 126, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (190, 61, N'', N'35', 1, 127, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (191, 61, N'', N'34', 1, 128, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (192, 61, N'', N'34', 1, 129, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (193, 61, N'', N'35', 4, 130, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (194, 61, N'', N'34', 1, 131, N'Pending')
INSERT [dbo].[Order_List] ([listID], [productID], [type], [size], [quantity], [orderID], [status]) VALUES (195, 61, N'', N'35', 1, 131, N'Pending')
SET IDENTITY_INSERT [dbo].[Order_List] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (61, 9, N'img/tote.png', N'Unlined embroidered canvas exterior
Made in Italy
Open top styling
One main compartment
Dual top handles
Original Dior dustbag, authenticity card, and care booklet included
Measures approx 36 cm W x 18 cm H x 27 cm D
Top handles with a 15 cm drop
Our Style No. FNEF-WY1786
Manufacturer Style No. 6391173', 23, 87169760.0000, N'Dior Book Tote Bag', 3)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (62, 9, N'img/diorbag2.png', N'Cannage stitched quilted calfskin with leather lining and gold-tone hardware
Made in Italy
Foldover top with turnlock closure
One main compartment with single zip and slip pockets
Back slip pocket
Circa 2021
Measures approx 20 cm W x 13 cm H x 8 cm D
Adjustable shoulder strap with a 53 cm drop
Our Style No. FNEF-WY865
Manufacturer Style No. 5684397', 23, 102809400.0000, N'Dior Cannage Caro Leather Chain Shoulder Bag', 0)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (63, 10, N'img/yellowband.png', N'The Mitzah scarf features a white and gold-tone silk twill Butterfly Around The World motif by Pietro Ruffo, showcasing the collection’s signature butterfly theme. The timeless, elongated style with pointed ends is further embellished with a contrasting Christian Dior signature jacquard band on the back. The Mitzah scarf will lend the finishing touch to any modern look and may be tied around the neck, at the wrist or on a bag, and can be coordinated with other Butterfly Around The World creations.

White and gold-tone Butterfly Around The World print
Contrasting jacquard band with Christian Dior signature on back
Pointed ends
100% silk twill
Made in Italy', 23, 6700000.0000, N'BUTTERFLY AROUND THE WORLD MITZAH SCARF', 0)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (64, 4, N'img/diorcoat1.png', N'Part of the DiorAlps capsule collection, the puffer jacket showcases the iconic blue Dior Oblique motif. Crafted in quilted technical taffeta, the style is enhanced by a stand collar, utilitarian-inspired belt highlighting the waist and a Christian Dior signature on the back. The elegant and practical puffer jacket can be worn with other creations from the DiorAlps capsule collection.

Christian Dior signature on the back
Embroidered bee emblem
Utilitarian-inspired belt
Front zip closure with concealed snaps
Zipped wrist pocket for a ski pass
Windproof lining and membrane
Filling: 100% polyester
100% polyester
Made in Italy', 23, 160000000.0000, N'DIORALPS PUFFER JACKET WITH BELT', 0)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (65, 4, N'img/GucciCoat1.png', N'The Cruise 2024 collection features a wide range of pant suits in houndstooth, Prince of Wales, and classic menswear patterns. Worn separately or as an ensemble, blazers, pants, and skirts form an essential part of the transitional season wardrobe. This structured jacket is presented in black GG wool lamé and illuminated with gold-toned metal buttons.

Black GG wool lamé
Gold-toned metal buttons
Lined
Full canvas construction
Point revers
Double breasted
Three flap pockets
Button closure
Length: 27.9", based on a size 38 (IT)
Made in Italy
The product shown in this image is a size 38 (IT)', 29, 104285750.0000, N'GG WOOL LAMÉ JACKET', 0)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (66, 7, N'img/lvpjama1.png', N'Floral Monogram Wide-Leg Pajama Pants ', 31, 55053175.0000, N'Floral Monogram Wide-Leg Pajama Pants ', 0)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (67, 11, N'img/skirtlv.png', N'Tiered Floral Print Mini Skirt ', 31, 67179425.0000, N'Tiered Floral Print Mini Skirt ', 0)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (68, 10, N'img/redwound1lv.png', N'Logomania Scarf', 31, 11034887.0000, N'Logomania Scarf', 0)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (69, 12, N'img/suitlv1.png', N'Single-Breasted Silk Blend Pont Neuf Jacket', 31, 94584750.0000, N'Single-Breasted Silk Blend Pont Neuf Jacket', 0)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (70, 7, N'img/tuxedolv1pant.png', N'Wool Tuxedo Cigarette Pants', 31, 29103000.0000, N'Wool Tuxedo Cigarette Pants', 4)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (71, 4, N'img/bluejacketdior.png', N'The knit cardigan presents a timeless silhouette. Crafted in blue cashmere jersey, it is accented by a Christian Dior Couture signature in a frame embroidered on the front above a patch pocket. The comfortable cardigan will complete any relaxed outfit with a touch of elegance.

Christian Dior Couture embroidery on the front
Dior signature horn button closure
Front patch pockets
100% cashmere (7-gauge)*
Made in Italy', 23, 49000000.0000, N'CHRISTIAN DIOR COUTURE CARDIGAN', 0)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (72, 9, N'img/guccibag.png', N'Introduced for Cruise 2024, the main characteristic of the new recycled polyester is the GG logo. The fabric is lightweight thanks to the play of yarns and of a high quality, allowing styles to remain unlined. The final result is technical yet elegant accessories that offer practicality with a modern feel. Here it appears in dark blue and beige atop this crossbody bag, complete with a Gucci Made in Italy patch.

Dark blue and beige GG recycled polyester
Blue grosgrain trim
Demetra details—crafted from at least 70% of vegetable raw materials from renewable sources (viscose, wood pulp, bio-based polyurethane)
Gucci Made In Italy patch
Outside: 1 zip pocket
Adjustable and detachable shoulder strap with 20.5" drop
Zip closure
8.7"W x 5.9"H x 2.4"D
Made in Italy', 29, 40756800.0000, N'MEDIUM GG POLYESTER CROSSBODY BAG', 0)
INSERT [dbo].[Product] ([productID], [categoryID], [image], [detail], [shopID], [price], [name], [rate]) VALUES (73, 2, N'img/shirtlv.png', N'Short-Sleeved Damier Wool Shirt', 31, 27000000.0000, N'Short-Sleeved Damier Wool Shirt', 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Review_ID], [Product_ID], [User_ID], [Rating], [Comment], [Date_Posted], [Reported], [Banned], [BannedCount]) VALUES (1, 70, 29, 2, N'lo', CAST(N'2023-12-15T04:15:33.527' AS DateTime), 0, 1, NULL)
INSERT [dbo].[Reviews] ([Review_ID], [Product_ID], [User_ID], [Rating], [Comment], [Date_Posted], [Reported], [Banned], [BannedCount]) VALUES (2, 61, 29, 4, N'Ngon
', CAST(N'2023-12-15T05:43:27.080' AS DateTime), 2, 1, NULL)
INSERT [dbo].[Reviews] ([Review_ID], [Product_ID], [User_ID], [Rating], [Comment], [Date_Posted], [Reported], [Banned], [BannedCount]) VALUES (3, 61, 29, 2, N'LOlo', CAST(N'2023-12-15T05:43:27.080' AS DateTime), 0, 1, NULL)
INSERT [dbo].[Reviews] ([Review_ID], [Product_ID], [User_ID], [Rating], [Comment], [Date_Posted], [Reported], [Banned], [BannedCount]) VALUES (4, 61, 29, 1, N'OAOA', CAST(N'2023-12-15T05:43:27.080' AS DateTime), 0, 1, NULL)
INSERT [dbo].[Reviews] ([Review_ID], [Product_ID], [User_ID], [Rating], [Comment], [Date_Posted], [Reported], [Banned], [BannedCount]) VALUES (5, 61, 32, 3, N'dm', CAST(N'2023-12-15T05:54:07.610' AS DateTime), 0, 0, 1)
INSERT [dbo].[Reviews] ([Review_ID], [Product_ID], [User_ID], [Rating], [Comment], [Date_Posted], [Reported], [Banned], [BannedCount]) VALUES (7, 61, 33, 4, N'dm', CAST(N'2023-12-15T06:07:35.137' AS DateTime), 0, 1, 2)
INSERT [dbo].[Reviews] ([Review_ID], [Product_ID], [User_ID], [Rating], [Comment], [Date_Posted], [Reported], [Banned], [BannedCount]) VALUES (6, 61, 33, 4, N'ngon taaa', CAST(N'2023-12-15T06:07:35.137' AS DateTime), 0, 1, 2)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (1, N'Levents', 1, 4.7)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (2, N'Logitech', 1, 4.8)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (3, N'Edifier', 1, 4.9)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (4, N'Lock&Lock', 8, 4.6)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (5, N'Cocolux', 9, 4.7)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (6, N'Casio', 10, 3.4)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (7, N'NXB Trẻ', 1, 4.6)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (8, N'Perfect Diary', 1, 2.4)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (9, N'Nikon Fe ', 1, 4.5)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (10, N'Xiaomi', 1, 2.3)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (11, N'Unilever', 1, 3.2)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (12, N'Campus', 1, 2.2)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (13, N'CATNIP', 1, 2.1)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (14, N'MyKingDom', 1, 2.6)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (15, N'Small Gym', 1, 2.3)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (16, N'Động Lực', 1, 2.8)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (17, N'Foodie', 1, 2.8)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (18, N'HealthyLife', 1, 3.9)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (19, N'EverythingUNeed', 1, 3.4)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (20, N'Wellness', 1, 3)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (21, N'Bobby', 1, 2.2)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (23, N'Diorr', 29, 0)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (29, N'Gucci', 29, 0)
INSERT [dbo].[Shop] ([shopID], [name], [userID], [rate]) VALUES (31, N'Louis Vuitton', 29, 0)
SET IDENTITY_INSERT [dbo].[Shop] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userID], [username], [password], [firstname], [lastname], [dob], [email], [gender], [address], [phone], [role], [avatar], [describe], [status]) VALUES (29, N'lo', N'gs9cjHzyLVV3JTOK/aQ0xDYDkHQ=', N'loc111111', N'truong', CAST(N'2002-10-05' AS Date), N'noneednowok@Gmail.com', N'Male', N'128 may dien', N'0877064413', 4, N'avataruploads/shoedior.png', N'no bio yet.', NULL)
INSERT [dbo].[User] ([userID], [username], [password], [firstname], [lastname], [dob], [email], [gender], [address], [phone], [role], [avatar], [describe], [status]) VALUES (30, N'loclacvang123456@gmail.com', N'sD33FkMnQvd/jQmWJ/znjhzbEiM=', NULL, NULL, NULL, N'loclacvang123456@gmail.com', NULL, NULL, NULL, 1, N'avataruploads/download.png', NULL, NULL)
INSERT [dbo].[User] ([userID], [username], [password], [firstname], [lastname], [dob], [email], [gender], [address], [phone], [role], [avatar], [describe], [status]) VALUES (31, N'viet121212', N'W6gAOXqaRZYCdRLEQZMDJAmRPFw=', N'Viet', N'Nguyen', CAST(N'2002-10-05' AS Date), N'noneednowok@gmail.com', N'Male', N'123', N'0843447146', 1, N'https://p16-va-default.akamaized.net/img/musically-maliva-obj/1644144695787526~c5_720x720.jpeg', N'no bio yet.', NULL)
INSERT [dbo].[User] ([userID], [username], [password], [firstname], [lastname], [dob], [email], [gender], [address], [phone], [role], [avatar], [describe], [status]) VALUES (32, N'nguyenviet123', N'4KIGBN+0grDFhacNL/BUg4ecN1k=', N'viet', N'nguyen', CAST(N'2001-02-08' AS Date), N'nguyenviettx2001@gmail.com', N'Male', N'HN', N'0376201567', 0, N'https://p16-va-default.akamaized.net/img/musically-maliva-obj/1644144695787526~c5_720x720.jpeg', N'no bio yet.', 1)
INSERT [dbo].[User] ([userID], [username], [password], [firstname], [lastname], [dob], [email], [gender], [address], [phone], [role], [avatar], [describe], [status]) VALUES (33, N'lo123456', N'oImjAvDABPblVrjEffsuhY7Y4rI=', N'Loc', N'truong', CAST(N'2002-10-05' AS Date), N'noneednowok@gmail.com', N'Male', N'34ewgw', N'0877064413', 3, N'https://p16-va-default.akamaized.net/img/musically-maliva-obj/1644144695787526~c5_720x720.jpeg', N'no bio yet.', NULL)
INSERT [dbo].[User] ([userID], [username], [password], [firstname], [lastname], [dob], [email], [gender], [address], [phone], [role], [avatar], [describe], [status]) VALUES (34, N'loc121212', N'gs9cjHzyLVV3JTOK/aQ0xDYDkHQ=', N'Loc', N'Truong', CAST(N'2002-10-05' AS Date), N'noneednowok@gmail.com', N'Male', N'2345 may', N'0844064413', 1, N'https://p16-va-default.akamaized.net/img/musically-maliva-obj/1644144695787526~c5_720x720.jpeg', N'no bio yet.', NULL)
INSERT [dbo].[User] ([userID], [username], [password], [firstname], [lastname], [dob], [email], [gender], [address], [phone], [role], [avatar], [describe], [status]) VALUES (35, N'sa', N'jXi8nVZhgLleWz06pZ611BgdUxk=', N'efe', N'fefef', CAST(N'2002-10-05' AS Date), N'noneednowok@gmail.com', N'Male', N're', N'0877064413', 1, N'avataruploads/lvpjama1.png', N'no bio yet.', NULL)
INSERT [dbo].[User] ([userID], [username], [password], [firstname], [lastname], [dob], [email], [gender], [address], [phone], [role], [avatar], [describe], [status]) VALUES (36, N'duong', N'1fgGUrVdaoi22Mpqr9TmPuPUuzU=', N'duong', N'nguyen', CAST(N'1998-03-17' AS Date), N'duongdmhe141178@fpt.edu.vn', N'Male', N'Ha Noi', N'0964489927', 0, N'avataruploads/LVpant1.png', N'no bio yet.', NULL)
INSERT [dbo].[User] ([userID], [username], [password], [firstname], [lastname], [dob], [email], [gender], [address], [phone], [role], [avatar], [describe], [status]) VALUES (37, N'vietnguyen', N'RLrl6WZLMKF2ihafePC4a4HBGZY=', N'viet7316287368127', N'nguyen', CAST(N'2001-06-13' AS Date), N'noneednowok@gmail.com', N'Male', N'thai nguyen', N'0376201567', 2, N'https://p16-va-default.akamaized.net/img/musically-maliva-obj/1644144695787526~c5_720x720.jpeg', N'no bio yet.', NULL)
INSERT [dbo].[User] ([userID], [username], [password], [firstname], [lastname], [dob], [email], [gender], [address], [phone], [role], [avatar], [describe], [status]) VALUES (38, N'nguyenviet12345', N'xPhA3r8d4/BhPeeqcYo84wfZLrs=', N'Nguyen Viet', N'Viet', CAST(N'2007-02-20' AS Date), N'vietnthe153566@fpt.edu.vn', N'Male', N'Thái Nguyên', N'0376201567', 1, N'avataruploads/ao4_1.png', N'no bio yet.', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([voucherID], [code], [discount], [due]) VALUES (2, N'loc', 0.2, NULL)
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
SET IDENTITY_INSERT [dbo].[Warehouse] ON 

INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (1, 1, N'Cream', N'S', 38)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (2, 1, N'White', N'M', 53)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (3, 1, N'Blue', N'S', 0)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (4, 1, N'Cream', N'XXL', 0)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (5, 1, N'Cream', N'M', 90)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (6, 1, N'Cream', N'L', 48)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (7, 1, N'Cream', N'XL', 0)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (8, 2, N'Pink', NULL, 60)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (9, 1, N'White', N'XL', 49)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (10, 3, NULL, NULL, 38)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (11, 4, NULL, N'Big', 85)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (12, 2, N'Black', NULL, 45)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (15, 2, N'White', NULL, 67)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (16, 4, NULL, N'Small', 35)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (18, 8, N'Limited Edition', N'S', 56)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (19, 8, N'Normal', N'S', 32)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (20, 8, N'Normal', N'M', 78)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (21, 8, N'Normal', N'L', 56)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (22, 8, N'Normal', N'XL', 53)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (23, 10, N'Blue', NULL, 54)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (24, 10, N'Black', NULL, 30)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (25, 46, N'Blue ', N'40', 40)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (27, 46, N'Blue', N'39', 23)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (28, 47, N'blue', N'23', 34)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (29, 48, N'yo', N'23', 23)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (30, 40, N'Blue', N'32', 49)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (31, 40, N'White', N'32', 49)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (32, 40, N'White', N'31', 50)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (33, 40, N'White', N'S', 50)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (34, 40, N'White', N'M', 49)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (35, 40, N'White', N'XL', 20)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (37, 60, N'Blue', N'L', 15)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (38, 73, NULL, N'XL', 20)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (39, 73, NULL, N'L', 52)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (40, 73, NULL, N'M', 7)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (46, 71, N'Blue', N'S', 15)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (47, 71, N'Red', N'XL', 30)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (48, 70, N'Leather', N'M', 45)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (49, 61, NULL, N'34', 20)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (50, 61, NULL, N'35', 30)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (51, 70, N'Leather', N'L', 11)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (52, 69, NULL, N'M', 16)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (53, 69, NULL, N'L', 75)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (54, 69, NULL, N'S', 32)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (55, 68, NULL, NULL, 90)
INSERT [dbo].[Warehouse] ([warehouseID], [productID], [type], [size], [quantity]) VALUES (56, 71, N'Green', N'L', 12)
SET IDENTITY_INSERT [dbo].[Warehouse] OFF
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ((0)) FOR [Reported]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ((0)) FOR [Banned]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ((0)) FOR [BannedCount]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([userID])
REFERENCES [dbo].[User] ([userID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Shop] FOREIGN KEY([shopID])
REFERENCES [dbo].[Shop] ([shopID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Shop]
GO
