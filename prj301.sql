USE [prj301_Viet]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 7/18/2021 8:45:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[adID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NOT NULL,
	[password] [varchar](32) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[adID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 7/18/2021 8:45:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[bID] [int] IDENTITY(1,1) NOT NULL,
	[bname] [varchar](30) NOT NULL,
	[bimage] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 7/18/2021 8:45:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[cID] [int] NULL,
	[oID] [varchar](30) NOT NULL,
	[cname] [nvarchar](100) NULL,
	[caddress] [nvarchar](100) NULL,
	[cphone] [varchar](30) NULL,
	[dateCreate] [datetime] NULL,
	[total] [money] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[oID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 7/18/2021 8:45:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[pID] [varchar](30) NOT NULL,
	[oID] [varchar](30) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[pID] ASC,
	[oID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/18/2021 8:45:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cateID] [int] IDENTITY(1,1) NOT NULL,
	[status] [bit] NULL,
	[cateName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/18/2021 8:45:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[cID] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[cName] [nvarchar](100) NOT NULL,
	[username] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[cID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 7/18/2021 8:45:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[fID] [int] IDENTITY(1,1) NOT NULL,
	[cID] [int] NULL,
	[fcontent] [nvarchar](1000) NULL,
	[fimage] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/18/2021 8:45:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[pID] [varchar](30) NOT NULL,
	[pname] [nvarchar](100) NOT NULL,
	[price] [money] NULL,
	[quantity] [int] NULL,
	[description] [nvarchar](100) NOT NULL,
	[image] [varchar](100) NOT NULL,
	[cateID] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([adID], [username], [password]) VALUES (1, N'viet', N'viet12345')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([bID], [bname], [bimage]) VALUES (2, N'homepage', N'the-body-shop-homepage.jpg')
INSERT [dbo].[Banner] ([bID], [bname], [bimage]) VALUES (4, N'teatrea', N'teatree.jpg')
INSERT [dbo].[Banner] ([bID], [bname], [bimage]) VALUES (5, N'tbs4', N'the-body-shop-4.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
INSERT [dbo].[Bill] ([cID], [oID], [cname], [caddress], [cphone], [dateCreate], [total], [status]) VALUES (2, N'1f128', N'Thanh', N'Hung Yen', N'2556478', CAST(N'2021-07-17T22:34:18.363' AS DateTime), 12.1000, 4)
INSERT [dbo].[Bill] ([cID], [oID], [cname], [caddress], [cphone], [dateCreate], [total], [status]) VALUES (1, N'1T9GF', N'Quoc', N'Nam Dinh', N'023546457', CAST(N'2021-07-17T22:19:26.140' AS DateTime), 20.5600, 4)
INSERT [dbo].[Bill] ([cID], [oID], [cname], [caddress], [cphone], [dateCreate], [total], [status]) VALUES (1, N'IjdGU', N'Trung', N'Ha Noi', N'02341546', CAST(N'2021-07-16T13:38:33.850' AS DateTime), 38.1000, 3)
GO
INSERT [dbo].[BillDetail] ([pID], [oID], [quantity], [price], [total]) VALUES (N'p01', N'1T9GF', 2, 10.2800, 20.5600)
INSERT [dbo].[BillDetail] ([pID], [oID], [quantity], [price], [total]) VALUES (N'p02', N'IjdGU', 1, 20.9400, 20.9400)
INSERT [dbo].[BillDetail] ([pID], [oID], [quantity], [price], [total]) VALUES (N'p03', N'1f128', 1, 12.1000, 12.1000)
INSERT [dbo].[BillDetail] ([pID], [oID], [quantity], [price], [total]) VALUES (N'p05', N'IjdGU', 1, 17.1600, 17.1600)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cateID], [status], [cateName]) VALUES (4, 1, N'Body wash')
INSERT [dbo].[Category] ([cateID], [status], [cateName]) VALUES (5, 1, N'Face wash')
INSERT [dbo].[Category] ([cateID], [status], [cateName]) VALUES (6, 1, N'Toner')
INSERT [dbo].[Category] ([cateID], [status], [cateName]) VALUES (11, 1, N'Perfume')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([cID], [email], [cName], [username], [password], [status]) VALUES (1, N'hmviet2211@gmail.com', N'Hoang Viet', N'viet', N'12345678', 1)
INSERT [dbo].[Customer] ([cID], [email], [cName], [username], [password], [status]) VALUES (2, N'trungdo@gmail.com', N'Trung Do', N'trung', N'123456789', 1)
INSERT [dbo].[Customer] ([cID], [email], [cName], [username], [password], [status]) VALUES (3, N'mup@gmail.com', N'Quoc Tran', N'mupdeptrai', N'123456789', 1)
INSERT [dbo].[Customer] ([cID], [email], [cName], [username], [password], [status]) VALUES (4, N'phudz@gmail.com', N'Phu Nguyen', N'Phu', N'12345678', 1)
INSERT [dbo].[Customer] ([cID], [email], [cName], [username], [password], [status]) VALUES (5, N'manhpd@gmail.com', N'Manh Phan', N'manh', N'123456789', 1)
INSERT [dbo].[Customer] ([cID], [email], [cName], [username], [password], [status]) VALUES (6, N'huyenntt@gmail.com', N'Huyen Nguyen', N'huyen', N'123456789', 1)
INSERT [dbo].[Customer] ([cID], [email], [cName], [username], [password], [status]) VALUES (7, N'toan@gmail.com', N'Toan Nguyen', N'toan', N'123456789', 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p01', N'Tea Tree Skin Clearing Facial Wash 250ML', 10.2800, 98, N'Cools and soothes skin', N'treatreeclearingfacialwash.jpg', 5, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p02', N'Drops Of Light Pure Clarifying Face Wash 125ML', 20.9400, 97, N'A rich foaming cleanser that brightens skin morning and night.', N'dropoflight.jpg.jpg', 5, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p03', N'Carrot Wash Energizing Face Cleanser 100ml', 12.1000, 96, N'Skin feels cleaner, smoother, energized and purified from daily urban grime', N'Carrot Wash Energizing Face Cleanser 100ml.jpg', 5, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p04', N'Himalayan Charcoal Purifying Clay Wash 125ML', 17.1600, 100, N'Cleans and purifies skin and helps unclog pores', N'himalayan-charcoal-purifying-clay-wash-1-640x640_1.jpg', 5, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p05', N'Tea Tree 3-In-1 Wash Scrub Mask 125ML', 17.1600, 99, N'Simplify your daily skin care routine with a 3-in-1 solution', N'Tea Tree 3-In-1 Wash Scrub Mask 125ML.jpg', 5, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p06', N'Vitamin C Facial Cleansing Polish 125ML', 17.1600, 100, N'A face wash that brightens skin while exfoliating in one step ', N'Vitamin C Facial Cleansing Polish 125ML.jpg', 5, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p08', N'Almond Milk & Honey Soothing & Caring Shower Cream 60ML', 3.5000, 100, N'Bath cream that cares and smooths the skin ', N'Almond Milk & Honey Soothing & Caring Shower Cream 60ML.jpg', 4, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p09', N'Shower Gel Olive 60ML', 2.4600, 100, N'The fresh scent of the Mediterranean ', N'Shower Gel Olive 60ML.jpg', 4, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p10', N'Moringa Shower Gel 750ML', 21.0000, 100, N'Moringa Shower Gel is rich in foam with moringa seed oil and pure floral scent ', N'Moringa Shower Gel 750ML.jpg', 4, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p11', N'British Rose Shower Gel 250ML', 8.6000, 100, N'Wake up your skin with an irresistible rose scent ', N'British Rose Shower Gel 250ML.jpg', 4, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p12', N'Pink Grapefruit Shower Gel 60ML', 4.0000, 100, N'Refresh your senses and immerse yourself in the enticing aroma of Red Grapefruit', N'Pink Grapefruit Shower Gel 60ML.jpg', 4, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p13', N'Cool Daisy Shower Gel 250ml', 4.6000, 100, N'This special edition shower gel will give you a wonderfully clean feeling ', N'Cool Daisy Shower Gel 250ml.jpg', 4, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p14', N'Tea Tree Skin Clearing Toner 250ML', 13.3400, 100, N'Suitable for acne-prone skin, balancing water for acne-prone skin ', N'Tea Tree Skin Clearing Toner 250ML.jpg', 6, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p15', N'Seaweed Clarifying Toner 250ML', 14.8500, 100, N'The product cleans the skin, makes the skin fresh and does not contain alcohol ', N'Seaweed Clarifying Toner 250ML.jpg', 6, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p16', N'British Rose Petal-Soft Gel Toner 250ML', 24.8300, 100, N'Fortified with real rose petals and Community Trade organic aloe from Mexico ', N'British Rose Petal-Soft Gel Toner 250ML.jpg', 6, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p17', N'Chinese Ginseng & Rice Clarifying Milky Toner 250ML', 24.8500, 100, N'Extracted from Chinese rice and ginseng along with natural sesame seed oil from Nicaragua ', N'Chinese Ginseng & Rice Clarifying Milky Toner 250ML.jpg', 6, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p18', N'Vitamin E Hydrating Toner 250ML', 15.0000, 100, N'Balancing Vitamin E Hydrating Toner washes away all traces of excess makeup or cleanser ', N'Vitamin E Hydrating Toner 250ML.jpg', 6, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p19', N'Aloe Calming Toner 250ML', 14.3500, 100, N'Alcohol-free toner extracted from Aloe suitable for sensitive skin da ', N'Aloe Calming Toner 250ML.jpg', 6, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p20', N'Black Musk Eau de Toilette 60ml', 60.1500, 100, N'Become irresistible with the enchanting scent of Black Musk - the most sexy and mysterious fragrance', N'Black Musk Eau de Toilette 60ml.jpg', 11, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p21', N'Activis Eau De Toilette 100ml', 47.2700, 100, N'strong citrus notes, blended with the main notes of mint and mint, with a base of sandalwood ', N'Activist Eau De Toilette 100ml.jpg', 11, 1)
INSERT [dbo].[Product] ([pID], [pname], [price], [quantity], [description], [image], [cateID], [status]) VALUES (N'p22', N'Black Musk Night Bloom Eau de Toilette 60ML', 60.1500, 100, N'Inspired by mysterious flowers that bloom and smell at night ', N'Black Musk Night Bloom Eau de Toilette 60ML.jpg', 11, 1)
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT (getdate()) FOR [dateCreate]
GO
ALTER TABLE [dbo].[Bill] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([cID])
REFERENCES [dbo].[Customer] ([cID])
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD FOREIGN KEY([oID])
REFERENCES [dbo].[Bill] ([oID])
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD FOREIGN KEY([pID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD FOREIGN KEY([cID])
REFERENCES [dbo].[Customer] ([cID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cateID])
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD CHECK  ((len([password])>=(8)))
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD CHECK  ((len([password])>=(8)))
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD CHECK  (([price]>=(0)))
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD CHECK  (([quantity]>=(0)))
GO
