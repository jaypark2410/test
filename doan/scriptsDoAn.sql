USE [diadiemanuong]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 21-12-2018 22:27:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adacc] [nvarchar](50) NOT NULL,
	[adpass] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[adacc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chitietdonhang]    Script Date: 21-12-2018 22:27:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chitietdonhang](
	[iddh] [int] NOT NULL,
	[idta] [nvarchar](50) NOT NULL,
	[soluong] [int] NULL,
	[dongia] [varchar](50) NULL,
 CONSTRAINT [PK_donhangchitiet] PRIMARY KEY CLUSTERED 
(
	[iddh] ASC,
	[idta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[danhmuc]    Script Date: 21-12-2018 22:27:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmuc](
	[iddm] [int] NOT NULL,
	[tendm] [nvarchar](50) NULL,
 CONSTRAINT [PK_danhmuc] PRIMARY KEY CLUSTERED 
(
	[iddm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[donhang]    Script Date: 21-12-2018 22:27:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[donhang](
	[iddh] [int] IDENTITY(1,1) NOT NULL,
	[sdtkh] [varchar](50) NULL,
	[ngaydat] [nvarchar](50) NOT NULL,
	[ghichu] [varchar](50) NULL,
	[trangthai] [nvarchar](50) NULL,
 CONSTRAINT [PK_donhang_1] PRIMARY KEY CLUSTERED 
(
	[iddh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 21-12-2018 22:27:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khachhang](
	[sdtkh] [varchar](50) NOT NULL,
	[matkhau] [nvarchar](50) NULL,
	[hovaten] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](50) NULL,
	[ngaysinh] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[anhkh] [nvarchar](50) NULL,
	[diadiemyeuthich] [nvarchar](50) NULL,
	[diadiemkem] [nvarchar](50) NULL,
 CONSTRAINT [PK_nguoidung] PRIMARY KEY CLUSTERED 
(
	[sdtkh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loaiquanan]    Script Date: 21-12-2018 22:27:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiquanan](
	[idloaiquan] [int] NOT NULL,
	[tenloaiquan] [nvarchar](50) NULL,
 CONSTRAINT [PK_loaiquanan] PRIMARY KEY CLUSTERED 
(
	[idloaiquan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[quan]    Script Date: 21-12-2018 22:27:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quan](
	[idquan] [int] NOT NULL,
	[tenquan] [nvarchar](50) NULL,
	[idloaiquan] [int] NULL,
	[mota] [nvarchar](50) NULL,
	[hinhanhquan] [nvarchar](50) NULL,
	[hinhanhquan1] [nvarchar](50) NULL,
	[hinhanhquan2] [nvarchar](50) NULL,
	[sonha] [nvarchar](50) NULL,
	[tenduong] [nvarchar](50) NULL,
	[tenphuongxa] [nvarchar](50) NULL,
	[tenquanhuyen] [nvarchar](50) NULL,
	[tentp] [nvarchar](50) NULL,
	[giomocua] [nvarchar](50) NULL,
	[giodongcua] [nvarchar](50) NULL,
	[trangthai] [nvarchar](50) NULL,
	[binhluan] [nvarchar](50) NULL,
	[luotxem] [int] NULL,
	[urlggmap] [nvarchar](max) NULL,
	[iddm] [int] NULL,
 CONSTRAINT [PK_chinhanhquan] PRIMARY KEY CLUSTERED 
(
	[idquan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thucan]    Script Date: 21-12-2018 22:27:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thucan](
	[idta] [nvarchar](50) NOT NULL,
	[tenta] [nvarchar](50) NULL,
	[anhta] [nvarchar](50) NULL,
	[thongtinveta] [nvarchar](max) NULL,
	[takhuyenmai] [nvarchar](50) NULL,
	[tahot] [nvarchar](50) NULL,
	[trangthai] [nvarchar](50) NULL,
	[giabandau] [nvarchar](50) NOT NULL,
	[giahientai] [nvarchar](50) NOT NULL,
	[Quantity] [int] NULL,
	[ngaydang] [nvarchar](50) NULL,
	[giamgia] [int] NULL,
	[luotxem] [int] NULL,
	[idquan] [int] NULL,
 CONSTRAINT [PK_sanphamcn] PRIMARY KEY CLUSTERED 
(
	[idta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[admin] ([adacc], [adpass]) VALUES (N'admin', N'E10ADC3949BA59ABBE56E057F20F883E')
INSERT [dbo].[admin] ([adacc], [adpass]) VALUES (N'admin1', N'E10ADC3949BA59ABBE56E057F20F883E')
INSERT [dbo].[admin] ([adacc], [adpass]) VALUES (N'admin2', N'123')
INSERT [dbo].[admin] ([adacc], [adpass]) VALUES (N'nhan', N'123')
INSERT [dbo].[chitietdonhang] ([iddh], [idta], [soluong], [dongia]) VALUES (49, N'2', 1, N'150000')
INSERT [dbo].[chitietdonhang] ([iddh], [idta], [soluong], [dongia]) VALUES (52, N'8', 1, N'500000')
INSERT [dbo].[chitietdonhang] ([iddh], [idta], [soluong], [dongia]) VALUES (53, N'8', 1, N'500000')
INSERT [dbo].[chitietdonhang] ([iddh], [idta], [soluong], [dongia]) VALUES (56, N'1', 1, N'60000')
INSERT [dbo].[chitietdonhang] ([iddh], [idta], [soluong], [dongia]) VALUES (57, N'7', 2, N'2400000')
INSERT [dbo].[chitietdonhang] ([iddh], [idta], [soluong], [dongia]) VALUES (57, N'8', 3, N'1500000')
INSERT [dbo].[chitietdonhang] ([iddh], [idta], [soluong], [dongia]) VALUES (58, N'19', 3, N'240000')
INSERT [dbo].[chitietdonhang] ([iddh], [idta], [soluong], [dongia]) VALUES (58, N'20', 1, N'65000')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (1, N'Sang Trọng')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (2, N'Ăn vặt/vỉa hè')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (3, N'Nhà hàng')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (4, N'Buffet')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (5, N'Ăn chay')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (6, N'Coffee/Dessert')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (7, N'Bar/Pub')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (8, N'Quán nhậu')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (9, N'Bear club')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (10, N'Tiệm Bánh')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (11, N'Khu ăn uống')
INSERT [dbo].[danhmuc] ([iddm], [tendm]) VALUES (12, N'Kinh Craps')
SET IDENTITY_INSERT [dbo].[donhang] ON 

INSERT [dbo].[donhang] ([iddh], [sdtkh], [ngaydat], [ghichu], [trangthai]) VALUES (48, N'0303', N'17/12', N'cayyy', N'0')
INSERT [dbo].[donhang] ([iddh], [sdtkh], [ngaydat], [ghichu], [trangthai]) VALUES (49, N'090', N'17-12-2018 14:09:25', N'cho nư?c ch?m cay', N'0')
INSERT [dbo].[donhang] ([iddh], [sdtkh], [ngaydat], [ghichu], [trangthai]) VALUES (50, N'090', N'17-12-2018 14:09:33', N'cho nư?c ch?m cay', N'0')
INSERT [dbo].[donhang] ([iddh], [sdtkh], [ngaydat], [ghichu], [trangthai]) VALUES (51, N'090', N'17-12-2018 14:09:39', N'cho nư?c ch?m cay', N'0')
INSERT [dbo].[donhang] ([iddh], [sdtkh], [ngaydat], [ghichu], [trangthai]) VALUES (52, N'012', N'17-12-2018 14:10:13', N'sate', N'0')
INSERT [dbo].[donhang] ([iddh], [sdtkh], [ngaydat], [ghichu], [trangthai]) VALUES (53, N'090', N'17-12-2018 14:13:48', N'cho trà đá và khăn ư?t', N'0')
INSERT [dbo].[donhang] ([iddh], [sdtkh], [ngaydat], [ghichu], [trangthai]) VALUES (55, N'090', N'17-12-2018 14:14:16', N'cho trà đá và khăn ư?t', N'0')
INSERT [dbo].[donhang] ([iddh], [sdtkh], [ngaydat], [ghichu], [trangthai]) VALUES (56, N'0321', N'17-12-2018 14:14:52', N'b? hơi tái xíu', N'0')
INSERT [dbo].[donhang] ([iddh], [sdtkh], [ngaydat], [ghichu], [trangthai]) VALUES (57, N'090', N'20-12-2018 00:43:03', N'cho trà đá nha', N'0')
INSERT [dbo].[donhang] ([iddh], [sdtkh], [ngaydat], [ghichu], [trangthai]) VALUES (58, N'090', N'21-12-2018 16:15:11', N'cho ?t s?ng trâu', N'0')
SET IDENTITY_INSERT [dbo].[donhang] OFF
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'012', NULL, N'nhân', N'sang@hoasen.edu.vn', NULL, NULL, N'3', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'0123', N'202CB962AC59075B964B07152D234B70', N'it', N'nha@fr', NULL, NULL, N'fefe', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'0123548', N'EEAFB716F93FA090D7716749A6EEFA72', NULL, N'sang@hoasen.edu.vn', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'0303', NULL, N'nhân', N'nhan@gmail', NULL, NULL, N'q2', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'0321', NULL, N'tài', N'sang@hoasen.edu.vn', NULL, NULL, N'q gò vấp', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'03245', N'123456', N'nhân', N'nhan@gmail', N'nam', N'24-10-1997', N'tttt', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'090', N'202CB962AC59075B964B07152D234B70', N'meo meo', N'sang@hoasen.edu.vn', NULL, NULL, N'quan bình thạnh', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'0900', NULL, NULL, N'sang@hoasen.edu.vn', NULL, NULL, N'fef', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'0903', NULL, N'meo meo', N'sang@hoasen.edu.vn', NULL, NULL, N'grsg', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'096', NULL, N'meo meo', N'sang@hoasen.edu.vn', NULL, NULL, N'52', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'098945415', NULL, NULL, N'feadwada@ffea', NULL, NULL, N'feafae', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'0991', N'E10ADC3949BA59ABBE56E057F20F883E', N'meo meo', N'sang@hoasen.edu.vn', NULL, NULL, N'qbình thạnh', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'0992', N'202CB962AC59075B964B07152D234B70', N'bao', N'sang@hoasen.edu.vn', NULL, NULL, N'q tân bình', NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'1234568f', N'FE743D8D97AA7DFC6C93CCDC2E749513', NULL, N'nhan.vt2126@sinhvien.hoasen.edu.vn', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'423432', N'1CDBC566AB18141DBF2586D9707CDFDC', N'fsdfsdf', N'fsdfsdfdsf', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'456', N'FE743D8D97AA7DFC6C93CCDC2E749513', NULL, N'nha@.edu.vn', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'465', N'250CF8B51C773F3F8DC8B4BE867A9A02', N'vo thanh bc', N'ccvhjgjh@tfgh.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[khachhang] ([sdtkh], [matkhau], [hovaten], [email], [gioitinh], [ngaysinh], [diachi], [anhkh], [diadiemyeuthich], [diadiemkem]) VALUES (N'ghgj', N'202CB962AC59075B964B07152D234B70', N'vo thanh b', N'fghfhg@gghj.com', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[loaiquanan] ([idloaiquan], [tenloaiquan]) VALUES (1, N'Quán nướng')
INSERT [dbo].[loaiquanan] ([idloaiquan], [tenloaiquan]) VALUES (2, N'Quán lẩu')
INSERT [dbo].[loaiquanan] ([idloaiquan], [tenloaiquan]) VALUES (3, N'Quán Ăn Vặt')
INSERT [dbo].[loaiquanan] ([idloaiquan], [tenloaiquan]) VALUES (4, N'Quán Coffee')
INSERT [dbo].[loaiquanan] ([idloaiquan], [tenloaiquan]) VALUES (5, N'Quán chiên')
INSERT [dbo].[loaiquanan] ([idloaiquan], [tenloaiquan]) VALUES (6, N'Quán Nướng, Lẩu')
INSERT [dbo].[loaiquanan] ([idloaiquan], [tenloaiquan]) VALUES (7, N'Quán dồ ăn có nước')
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (1, N'Làng nướng Nam Bộ', 1, N'Quán nướng', N'images/langnuong1.jpg', N'images/langnuong2.jpg', N'images/langnuong3.jpg', N'5C5', N' Nguyễn Đình Chiểu', N'Đa Kao', N'Quận 1', N'Hồ Chí Minh', N'8:00', N'23:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.295022878982!2d106.6999473143369!3d10.788701261918256!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f4ad1f7f103%3A0xa26af4d307cb9f6b!2zUXXDoW4gTsaw4bubbmcgxJBhS2Fv!5e0!3m2!1svi!2s!4v1544409143494', 1)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (2, N'Hừng Đông', 6, N'Hải Sản Tươi Sống', N'images/haisan1.jpg', N'images/haisan2.jpg', N'images/haisan3.jpg', N'63 ', N'Cao Thắng', N'3', N'Quận 3', N'Hồ Chí Minh', N'7:00', N'23:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5257552283856!2d106.67843941433682!3d10.770985762240501!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f21a1ca4189%3A0xdcc84562f8d63b64!2zNjMgQ2FvIFRo4bqvbmcsIFBoxrDhu51uZyAzLCBRdeG6rW4gMywgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1544407869601', 1)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (3, N'Phở Hùng', 7, N'Phở Ngon', N'images/pho1.jpg', N'images/pho2.jpg', N'images/pho3.jpg', N'241-243 ', N'Nguyễn Trãi', N'Nguyễn Cư Trinh', N'Quận 1', N'Hồ Chí Minh', N'6:00', N'23:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15678.101656072402!2d106.67187331991835!3d10.77101198143187!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f19d15e3a81%3A0xdcd7728d53d90a88!2zUGjhu58gSMO5bmc!5e0!3m2!1svi!2s!4v1544407963663', 1)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (4, N'Bà Hường', 3, N'Báng tráng ngon', N'images/banhtrang1.jpg', N'images/banhtrang2.jpg', N'images/banhtrang3.jpg', N'Lô 5', N'Triệu Nữ Vương', N'Hải Châu 2', N'Quận Hải Châu', N'Đà Nẵng', N'8:00', N'23:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.949216899731!2d108.21323451438532!3d16.06812484373666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142183597f2c257%3A0x24470cb37d957a6a!2zUXXDoW4gQsOhbmggVHLDoW5nIFRo4buLdCBIZW8gQsOgIEjGsOG7nW5n!5e0!3m2!1svi!2s!4v1544408054787', 2)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (5, N'Lì', 3, N'Phá Lấu Ăn Vặt', N'images/phalau1.jpg', N'images/phalau2.jpg', N'images/phalau3.jpg', N'150', N'Hào Nam', N'Chợ Dừa', N'Quận Đống Đa', N' Hà Nội', N'6:00', N'23:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.1745155999165!2d105.82542071445461!3d21.02570209325965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab766af263db%3A0x729ea38c84a8c017!2zUXXDoW4gUGjDoSBM4bqldQ!5e0!3m2!1svi!2s!4v1544408119554', 2)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (6, N'KFC', 5, N'KFC', N'images/kfc1.jpg', N'images/kfc1.jpg', N'images/kfc1.jpg', N'Siêu Thị Co.op Mart, 36', N'Nguyễn Thái Học', N'7', N'', N'Thành phố Bà Rịa - Vũng Tàu', N'17:00', N'23:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d125570.90027414644!2d107.0528083!3d10.4143762!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31756fc0d4c18489%3A0x36263a8675fad804!2sKFC+Coop+Mart+Vung+Tau!5e0!3m2!1svi!2s!4v1544409583400', 11)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (7, N'Nhân Quán', 7, N'Hủ Tiếu', N'images/nhanquan1.jpg', N'images/nhanquan1.jpg', N'images/nhanquan1.jpg', N'A68', N'Nguyễn Trãi', N'Nguyễn Cư Trinh', N'Quận 1', N'Hồ Chí Minh', N'9:00', N'23:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.587966801109!2d106.68566601433668!3d10.766204262327365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f1826fa0bc5%3A0x89f7afc499faaece!2zSOG7pyBUw611IE5Iw4JOIFFVw4FO!5e0!3m2!1svi!2s!4v1544408403354', 3)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (8, N'Bột chiên', 5, N'Bột Chiên', N'images/botchien1.jpg', N'images/botchien1.jpg', N'images/botchien1.jpg', N'40/53A', N' Đoàn Văn Bơ,', N'9', N'Quận 4', N'Hồ Chí Minh', N'18:00', N'23:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15678.3505029374!2d106.67909991991773!3d10.766230481992142!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f6b13cb37e5%3A0xf9ac6bc58e2a8038!2zQuG7mXQgY2hpw6puIMOUbmcgQmE!5e0!3m2!1svi!2s!4v1544408452741', 2)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (9, N'Coffe Runam', 4, N'Coffee', N'images/caferunam.jpg', N'images/caferunam.jpg', N'images/caferunam.jpg', N'1', N'Mạc Thị Bưởi', N'Bến Nghé', N'Quận 1', N'Hồ Chí Minh', N'8:00', N'23:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4581061795975!2d106.70139015!3d10.776182799999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f46ee847895%3A0x8f4a08e0f60f62b!2zQ8OgIHBow6ogUnVOYW0!5e0!3m2!1svi!2s!4v1544407307139', 6)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (10, N'Coffe Bitexco', 4, N'Coffee', N'images/cafebitexco1.jpg', N'images/cafebitexco1.jpg', N'images/cafebitexco1.jpg', N'3', N'Hải triều', N'3', N'Quận 1', N'Hồ Chí Minh', N'8:00', N'24:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4581061795975!2d106.70139015!3d10.776182799999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f4147b79d6b%3A0x877917a13c532039!2sCafe+Terrace+Bitexco!5e0!3m2!1svi!2s!4v1544407397789', 6)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (11, N'Bar Rocco', 4, N'Bar Rocco', N'images/barroco.jpg', N'images/barroco1.jpg', N'images/barroco2.jpg', N'264', N'Nam Kỳ Khởi Nghĩa', N'8', N'Quận 3', N'Hồ Chí Minh', N'8:00', N'21:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.3120193680834!2d106.68451821433669!3d10.78739726194195!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f2d74dada25%3A0xd22fe3896f18f0f!2sBarocco+Club!5e0!3m2!1svi!2s!4v1544408529015', 9)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (12, N'Bar 212', 4, N'Bar 212', N'images/bar2121.jpg', N'images/bar2122.jpg', N'images/bar2123.jpg', N'212', N'Nguyễn Trãi', N'Phạm Ngũ Lão', N'Quận 1', N'Hồ Chí Minh', N'8:00', N'22:00', NULL, NULL, NULL, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.578423784636!2d106.68592601433662!3d10.76693786231401!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f17f5f311c1%3A0xff6ed23ffdf921ed!2s212+Club!5e0!3m2!1svi!2s!4v1544408579215', 7)
INSERT [dbo].[quan] ([idquan], [tenquan], [idloaiquan], [mota], [hinhanhquan], [hinhanhquan1], [hinhanhquan2], [sonha], [tenduong], [tenphuongxa], [tenquanhuyen], [tentp], [giomocua], [giodongcua], [trangthai], [binhluan], [luotxem], [urlggmap], [iddm]) VALUES (13, N'Nhân', 1, N'Bán đồng hồ', NULL, NULL, NULL, NULL, N'Nguyễn thị định', N'phường thạnh mỹ lợi', N'q2', N'thành phố hcm', N'7h', N'22h', N'0', N'0', 1, NULL, 12)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'1', N'Nui xào bò', N'images/ta1.jpg', N'Nui, thịt bò (xay), phô mai mozzarella sợi, sốt cà chua, dầu hào, hạt nêm, đường, Tỏi', NULL, NULL, NULL, N'49000', N'60000', 4, NULL, 0, 1, 1)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'10', N'Phở tái nạm', N'images/ta10.jpg', N'Bánh phở tươi, thịt bò nạm, thịt bò thái sẵn để làm tái, Muối, tiêu, nước mắm, vị phở, sá sùng khô (nếu có), thịt thăn bò, xương bò, gừng, hành tây to', NULL, NULL, NULL, N'49000', N'100000', 4, NULL, 0, 27, 3)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'11', N'Phở tự chọn', N'images/ta11.jpg', N'Thịt filet bò thái mỏng (ăn tái), Thịt nạm bò, Bánh phở , Tương đen ăn phở + tương ớt đỏ, Xương ống/đuôi Bò khoảng 1 kg, Gân bò, Bò viên (nếu thích), Hành lá, hành tây, hành tím, ngò rí, chanh, ớt, mực/râu mực (1 ít) thay thế cho sá sùng,', NULL, NULL, NULL, N'49000', N'200000', 12, NULL, 0, 1, 3)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'12', N'Bánh tráng trộn', N'images/ta12.jpg', N'Bánh tráng cắt sẵn (ít hay nhiều tùy theo sở thích), đậu phộng rang, khô bò đã xé nhuyễn, trái xoài sống bào sợi, Ớt bột,tỏi,sả,tôm khô,hành tím,ớt trái,nước mắm,đườg cát rau răm', NULL, NULL, NULL, N'49000', N'25000', 12, NULL, 0, 2, 4)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'13', N'Bánh tráng nướng', N'images/ta13.jpg', N'Làm tóp mỡ, mỡ heo đã lọc da, đường, ớt bột, nước mắm, nước lọc, Làm nước gia vị trộn, sate ớt nhỏ', NULL, NULL, NULL, N'49000', N'20000', 12, NULL, 0, 3, 4)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'14', N'Bánh tráng sate chanh', N'images/ta14.jpg', N'Làm tóp mỡ, mỡ heo đã lọc da, đường, ớt bột, nước mắm, nước lọc, Làm nước gia vị trộn, sate ớt nhỏ', NULL, NULL, NULL, N'49000', N'15000', 12, NULL, 0, 2, 4)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'15', N'Phá lấu mì gói', N'images/ta15.jpg', N'Các loại lòng heo, bò tuy thích. Minh thi chọn.., gan, pheo non, tổ ong, lưỡi heo, tai heo, tim heo, Ngũ vị hương, ớt khô, gia vị, gừng, nuoc dừa', NULL, NULL, NULL, N'49000', N'30000', 12, NULL, 0, 27, 5)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'16', N'Bánh mì phá lấu', N'images/ta16.jpg', N'Các loại lòng heo, bò tuy thích. Minh thi chọn.., gan, pheo non, tổ ong, lưỡi heo, tai heo, tim heo, Ngũ vị hương, ớt khô, gia vị, gừng, nuoc dừa', NULL, NULL, NULL, N'49000', N'50000', 12, NULL, 0, 0, 5)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'17', N'3 miếng gà giòn cay + 1 nước', N'images/ta17.jpg', N'Gà : đùi, và cánh gà, Sả băm :, Ớt băm, Gia vị', NULL, NULL, NULL, N'49000', N'165000', 12, NULL, 0, 37, 6)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'18', N'5 miếng gà giòn cay + 1 nước', N'images/ta18.png', N'Gà : đùi, và cánh gà, Sả băm :, Ớt băm, Gia vị', NULL, NULL, NULL, N'49000', N'205000', 12, NULL, 0, 7, 6)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'19', N'Hủ tiếu giò heo', N'images/ta19.jpg', N'Sườn heo (có thể thay bằng xương heo), bò viên, con tôm thẻ, Hành tây, cải trắng, Hành tỏi băm, Hẹ, ngò rí, Gia vị', NULL, NULL, NULL, N'49000', N'80000', 12, NULL, 0, 9, 7)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'2', N'Sườn xào chua cay', N'images/ta2.JPG', N'Sườn dừa chay, Đường, Dấm, Tỏi (hoặc baro), Tiêu, Ớt (hoặc tương ớt), Dầu ăn, Bột đao', NULL, NULL, NULL, N'49000', N'150000', 5, NULL, 0, 23, 1)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'20', N'Hủ tiếu thập cẩm', N'images/ta20.png', N'Sườn heo (có thể thay bằng xương heo), bò viên, con tôm thẻ, Hành tây, cải trắng, Hành tỏi băm, Hẹ, ngò rí, Gia vị', NULL, NULL, NULL, N'49000', N'65000', 8, NULL, 0, 37, 7)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'21', N'Bột chiên', N'images/ta21.jpg', N'Bột gạo, Bột năng, Trứng gà. Hành lá. Nước tương. Giấm đỏ, Đu đủ xanh bào sợi', NULL, NULL, NULL, N'49000', N'30000', 8, NULL, 0, 77, 8)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'22', N'Coffee đen', N'images/ta22.jpg', N'Cafe đen pha sẵn, Siro đường, Đá viên: 1 viên to', NULL, NULL, NULL, N'49000', N'120000', 13, NULL, 0, 37, 9)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'23', N'Coffee sữa', N'images/ta23.jpg', N'Cafe đen pha sẵn, Siro đường, Đá viên: 1 viên to,sữa.', NULL, NULL, NULL, N'49000', N'150000', 44, NULL, 0, 3, 9)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'24', N'Coffee phân chồn', N'images/ta24.jpg', N'Cafe đen pha sẵn, Siro đường, Đá viên: 1 viên to', NULL, NULL, NULL, N'49000', N'460000', 8, NULL, 0, 73, 9)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'25', N'Nước uống có ga', N'images/25.jpg', N'Từ nhà máy sản xuất nước ngọt đóng chai', NULL, NULL, NULL, N'49000', N'95000', 14, NULL, 0, 0, 9)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'26', N'Soda tự chọn', N'images/ta26.JPG', N'Hàng ngoại.', NULL, NULL, NULL, N'49000', N'149000', 55, NULL, 0, 37, 10)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'27', N'Chocolate nóng', N'images/ta27.jpg', N'Kem tươi nóng loại nước, Phần mousse cà phê:, cà phê hoà tan, sửa tươi ấm, lòng đỏ trứng, đường, lá Gelatin, kem tươi kg phải loại nước (loại đánh bông rồi)', NULL, NULL, NULL, N'49000', N'75000', 44, NULL, 0, 33, 10)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'28', N'Cacao sữa', N'images/ta28.jpg', N'Kem tươi nóng loại nước, Phần mousse cà phê:, cà phê hoà tan, sửa tươi ấm, lòng đỏ trứng, đường, lá Gelatin, kem tươi kg phải loại nước (loại đánh bông rồi)', NULL, NULL, NULL, N'49000', N'89000', 67, NULL, 0, 73, 10)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'29', N'Capuchino nóng', N'images/ta29.jpg', N'Kem tươi nóng loại nước, Phần mousse cà phê:, cà phê hoà tan, sửa tươi ấm, lòng đỏ trứng, đường, lá Gelatin, kem tươi kg phải loại nước (loại đánh bông rồi)', NULL, NULL, NULL, N'49000', N'89000', 88, NULL, 0, 3, 10)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'3', N'Thịt Bò xào củ hành', N'images/ta3.jpg', N'Củ kiệu, khăn bàn bò (loại miềm), Gia vị', NULL, NULL, NULL, N'49000', N'160000', 6, NULL, 0, 58, 1)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'30', N'Capuchino đá xay', N'images/ta30.jpg', N'Kem tươi nóng loại nước, Phần mousse cà phê:, cà phê hoà tan, sửa tươi ấm, lòng đỏ trứng, đường, lá Gelatin, kem tươi kg phải loại nước (loại đánh bông rồi)', NULL, NULL, NULL, N'49000', N'250000', 6, NULL, 0, 73, 10)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'31', N'Coffee đá', N'images/ta31.jpg', N'Kem tươi nóng loại nước, Phần mousse cà phê:, cà phê hoà tan, sửa tươi ấm, lòng đỏ trứng, đường, lá Gelatin, kem tươi kg phải loại nước (loại đánh bông rồi)', NULL, NULL, NULL, N'49000', N'150000', 5, NULL, 0, 73, 10)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'32', N'X.O', N'images/ta32.jpg', N'Rượu nhập.', NULL, NULL, NULL, N'49000', N'3120000', 6, NULL, 0, 0, 11)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'33', N'Henessy', N'images/ta33.jpg', N'Rượu nhập.', NULL, NULL, NULL, N'49000', N'5000000', 8, NULL, 0, 73, 11)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'34', N'Vang đỏ', N'images/ta34.jpg', N'Rượu nhập.', NULL, NULL, NULL, N'49000', N'9900000', 7, NULL, 0, 73, 12)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'35', N'Chuối hột', N'images/ta35.jpg', N'Rượu nhập.', NULL, NULL, NULL, N'49000', N'60000', 27, NULL, 0, 73, 12)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'36', N'Nếp mới', N'images/ta36.jpg', N'Rượu nhập.', NULL, NULL, NULL, N'49000', N'50000', 1, NULL, 0, 0, 12)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'37', N'Vodka', N'images/ta37.JPG', N'Rượu nhập.', NULL, NULL, NULL, N'49000', N'7000000', 7, NULL, 0, 3, 11)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'4', N'Sườn nướng', N'images/ta4.jpg', N'Sườn non, sốt ướp thịt nướng, tương ớt xí muội, nước mắm (ăn mặn thì thêm vào), Hành tím tỏi, rượu rum hoặc rượu nấu ăn', NULL, NULL, NULL, N'49000', N'360000', 4, NULL, 0, 3, 1)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'5', N'Thịt heo nướng khói', N'images/ta5.jpg', N'Sườn non, sốt ướp thịt nướng, tương ớt xí muội, nước mắm (ăn mặn thì thêm vào), Hành tím tỏi, rượu rum hoặc rượu nấu ăn', NULL, NULL, NULL, N'49000', N'250000', 5, NULL, 0, 6, 1)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'6', N'Mề gà nướng', N'images/ta6.jpg', N'Mề gà, tim gà, bột tỏi, dầu hào, sốt teriyaki, sốt tiêu đen, tương ớt', NULL, NULL, NULL, N'49000', N'600000', 6, NULL, 0, 7, 1)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'7', N'Tôm hùm Sate Tứ Xuyên', N'images/ta7.jpg', N'Tôm hùm, tôm càng, tôm sú: tôm lớn 2 con, tôm nhỏ 6-10 con, tiêu, nước mắm ngon, phô mai', NULL, NULL, NULL, N'49000', N'1200000', 7, NULL, 0, 3, 2)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'8', N'Lẩu thái', N'images/ta8.jpg', N'Sốt lẩu Thái Cholimex (hoặc lá chanh Thái, me khô, củ riềng) nên mua chai sốt nấu cho nhanh, Tôm, mực, thịt bò bắp, nghêu dùng để nhúng lẩu, dừa lấy nước, thơm, sả (3 củ đập dập, 3 củ băm nhuyễn), Tỏi băm, ớt băm, bột ớt, Rau ăn kèm: cải xanh, đọt bí, bông bí, đọt rau muống, bắp chuối bào', NULL, NULL, NULL, N'49000', N'500000', 7, NULL, 0, 27, 2)
INSERT [dbo].[thucan] ([idta], [tenta], [anhta], [thongtinveta], [takhuyenmai], [tahot], [trangthai], [giabandau], [giahientai], [Quantity], [ngaydang], [giamgia], [luotxem], [idquan]) VALUES (N'9', N'Phở tái', N'images/ta9.jpg', N'Và không thể thiếu bánh phở 0,5 kg và giá, rau thơm, Xương ống heo , Nước lường, Quế, hồi, thảo, Đinh hương, tiểu hồi, Hành tây, gừng, củ hành tím, hành lá, Thịt bò phile, Đường phèn', NULL, NULL, NULL, N'70000', N'50000', 6, NULL, 0, 83, 3)
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_chitietdonhang_donhang] FOREIGN KEY([iddh])
REFERENCES [dbo].[donhang] ([iddh])
GO
ALTER TABLE [dbo].[chitietdonhang] CHECK CONSTRAINT [FK_chitietdonhang_donhang]
GO
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_chitietdonhang_thucan] FOREIGN KEY([idta])
REFERENCES [dbo].[thucan] ([idta])
GO
ALTER TABLE [dbo].[chitietdonhang] CHECK CONSTRAINT [FK_chitietdonhang_thucan]
GO
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD  CONSTRAINT [FK_donhang_khachhang] FOREIGN KEY([sdtkh])
REFERENCES [dbo].[khachhang] ([sdtkh])
GO
ALTER TABLE [dbo].[donhang] CHECK CONSTRAINT [FK_donhang_khachhang]
GO
ALTER TABLE [dbo].[quan]  WITH CHECK ADD  CONSTRAINT [FK_quan_danhmuc] FOREIGN KEY([iddm])
REFERENCES [dbo].[danhmuc] ([iddm])
GO
ALTER TABLE [dbo].[quan] CHECK CONSTRAINT [FK_quan_danhmuc]
GO
ALTER TABLE [dbo].[quan]  WITH CHECK ADD  CONSTRAINT [FK_quan_loaiquanan] FOREIGN KEY([idloaiquan])
REFERENCES [dbo].[loaiquanan] ([idloaiquan])
GO
ALTER TABLE [dbo].[quan] CHECK CONSTRAINT [FK_quan_loaiquanan]
GO
ALTER TABLE [dbo].[thucan]  WITH CHECK ADD  CONSTRAINT [FK_thucan_quan] FOREIGN KEY([idquan])
REFERENCES [dbo].[quan] ([idquan])
GO
ALTER TABLE [dbo].[thucan] CHECK CONSTRAINT [FK_thucan_quan]
GO
