Create database QuanLyNhaSach

GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 01/07/2016 23:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [varchar](6) NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [GhiChu]) VALUES (N'1', N'Tiểu Thuyết Tình Cảm Lãng Mạn', NULL)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [GhiChu]) VALUES (N'2', N'Truyện cho tuổi mới lớn', NULL)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [GhiChu]) VALUES (N'3', N'Luyện nói tiếng anh', NULL)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [GhiChu]) VALUES (N'4', N'Văn Học Việt Nam', NULL)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [GhiChu]) VALUES (N'5', N'Truyện Ngắn', NULL)
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 01/07/2016 23:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau]) VALUES (N'admin', N'admin')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau]) VALUES (N'user1', N'user1')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau]) VALUES (N'user2', N'user2')
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau]) VALUES (N'user3', N'user3')
/****** Object:  Table [dbo].[TacGia]    Script Date: 01/07/2016 23:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [varchar](6) NOT NULL,
	[TenTG] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'1', N'Nguyễn Anh Đức                                    ')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'2', N'Nguyễn Nhật Ánh                                   ')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'3', N'Paulo Coelho                                      ')
/****** Object:  Table [dbo].[Sach]    Script Date: 01/07/2016 23:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [varchar](6) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[TheLoai] [varchar](6) NULL,
	[TacGia] [varchar](6) NULL,
	[NhaXuatBan] [varchar](6) NULL,
	[NamXuatBan] [int] NULL,
	[GiaBan] [float] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [TacGia], [NhaXuatBan], [NamXuatBan], [GiaBan], [SoLuong]) VALUES (N'1', N'Nhà Giả Kim', N'1', N'3', N'1', 2013, 59000, 150)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [TacGia], [NhaXuatBan], [NamXuatBan], [GiaBan], [SoLuong]) VALUES (N'2', N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', N'2', N'2', N'2', 2010, 82000, 190)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [TacGia], [NhaXuatBan], [NamXuatBan], [GiaBan], [SoLuong]) VALUES (N'3', N'Luyện Siêu Trí Nhớ Từ Vựng', N'3', N'1', N'3', 2015, 188000, 300)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [TacGia], [NhaXuatBan], [NamXuatBan], [GiaBan], [SoLuong]) VALUES (N'4', N'Chú Bé Rắc Rối', N'4', N'2', N'2', 2014, 48000, 400)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [TacGia], [NhaXuatBan], [NamXuatBan], [GiaBan], [SoLuong]) VALUES (N'5', N'Thương Nhớ Trà Long', N'5', N'2', N'2', 2014, 65000, 270)
/****** Object:  Table [dbo].[PhieuTraHang]    Script Date: 01/07/2016 23:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuTraHang](
	[MaTH] [varchar](6) NOT NULL,
	[MaSach] [varchar](6) NULL,
	[MaKH] [varchar](6) NULL,
	[LyDoTra] [nvarchar](100) NULL,
 CONSTRAINT [PK_PhieuTraHang] PRIMARY KEY CLUSTERED 
(
	[MaTH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhieuTraHang] ([MaTH], [MaSach], [MaKH], [LyDoTra]) VALUES (N'1', N'1', N'1', N'Hư')
INSERT [dbo].[PhieuTraHang] ([MaTH], [MaSach], [MaKH], [LyDoTra]) VALUES (N'2', N'1', N'2', N'Rách ở trang bìa')
INSERT [dbo].[PhieuTraHang] ([MaTH], [MaSach], [MaKH], [LyDoTra]) VALUES (N'3', N'3', N'3', N'Mất trang')
/****** Object:  Table [dbo].[PhieuThuTien]    Script Date: 01/07/2016 23:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuThuTien](
	[MaPTT] [varchar](6) NOT NULL,
	[MaHD] [varchar](6) NULL,
	[NgayThuTien] [datetime] NULL,
	[SoTienThu] [float] NULL,
 CONSTRAINT [PK_PhieuThuTien] PRIMARY KEY CLUSTERED 
(
	[MaPTT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhieuThuTien] ([MaPTT], [MaHD], [NgayThuTien], [SoTienThu]) VALUES (N'1', N'1', CAST(0x0000A48E00000000 AS DateTime), 291000)
INSERT [dbo].[PhieuThuTien] ([MaPTT], [MaHD], [NgayThuTien], [SoTienThu]) VALUES (N'2', N'2', CAST(0x0000A43600000000 AS DateTime), 469000)
INSERT [dbo].[PhieuThuTien] ([MaPTT], [MaHD], [NgayThuTien], [SoTienThu]) VALUES (N'3', N'3', CAST(0x0000A45000000000 AS DateTime), 882000)
/****** Object:  Table [dbo].[PhieuNhapSach]    Script Date: 01/07/2016 23:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhapSach](
	[MaPN] [varchar](6) NOT NULL,
	[MaSach] [varchar](6) NULL,
	[MaNCC] [varchar](6) NULL,
	[SoLuong] [int] NULL,
	[NgayNhap] [datetime] NULL,
 CONSTRAINT [PK_PhieuNhapSach] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhieuNhapSach] ([MaPN], [MaSach], [MaNCC], [SoLuong], [NgayNhap]) VALUES (N'1', N'MS0002', N'NCC002', 10, CAST(0x00009E8B00000000 AS DateTime))
INSERT [dbo].[PhieuNhapSach] ([MaPN], [MaSach], [MaNCC], [SoLuong], [NgayNhap]) VALUES (N'2', N'MS0004', N'NCC002', 20, CAST(0x0000A48300000000 AS DateTime))
INSERT [dbo].[PhieuNhapSach] ([MaPN], [MaSach], [MaNCC], [SoLuong], [NgayNhap]) VALUES (N'3', N'MS0005', N'NCC002', 15, CAST(0x0000A4CE00000000 AS DateTime))
INSERT [dbo].[PhieuNhapSach] ([MaPN], [MaSach], [MaNCC], [SoLuong], [NgayNhap]) VALUES (N'4', N'MS0001', N'NCC001', 50, CAST(0x0000A2F900000000 AS DateTime))
INSERT [dbo].[PhieuNhapSach] ([MaPN], [MaSach], [MaNCC], [SoLuong], [NgayNhap]) VALUES (N'5', N'MS0003', N'NCC003', 100, CAST(0x0000A54D00000000 AS DateTime))
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 01/07/2016 23:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaNXB] [varchar](6) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChiNXB] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](11) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [SoDienThoai]) VALUES (N'1', N'Nhà xuất bản Văn Học                              ', N'18 Nguyễn Trường Tộ, P.Trúc Bạch, Ba Đình, Hà Nội.                                                  ', N'0437161190 ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [SoDienThoai]) VALUES (N'2', N'Nhà xuất bản Trẻ                                  ', N'161B Lý Chính Thắng - Phường 7 - Quận 3 - TP. Hồ Chí Minh                                           ', N'0829316289 ')
INSERT [dbo].[NhaXuatBan] ([MaNXB], [TenNXB], [DiaChiNXB], [SoDienThoai]) VALUES (N'3', N'NXB Đại Học Quốc Gia Hà Nội                       ', N' 16 Hàng Chuối, Hai Bà Trưng, Hà Nội                                                                ', N'0439714899 ')
/****** Object:  Table [dbo].[NhanVien]    Script Date: 01/07/2016 23:37:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](6) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[CMND] [varchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [char](11) NULL,
	[TaiKhoan] [varchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [CMND], [NgaySinh], [DiaChi], [SDT], [TaiKhoan]) VALUES (N'1', N'Nguyễn Anh Đức                                    ', N'0', N'312223679', CAST(0x0000799800000000 AS DateTime), N'319 Dương Bá Trạc, P2, Quận 8, TP Hồ Chí Minh', N'01697921789', N'user1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [CMND], [NgaySinh], [DiaChi], [SDT], [TaiKhoan]) VALUES (N'2', N'Trần Văn Nam                                      ', N'0', N'323335678', CAST(0x00007CA300000000 AS DateTime), N'218 Nguyễn Văn Cừ, Quận 5, TP Hồ CHí Minh', N'0986784265 ', N'user2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [GioiTinh], [CMND], [NgaySinh], [DiaChi], [SDT], [TaiKhoan]) VALUES (N'3', N'Nguyễn Thị Lệ                                     ', N'1', N'234533452', CAST(0x00007F3A00000000 AS DateTime), N'123 Nguyễn Thị Minh Khai, Quận 5, TP Hồ Chí Minh', N'0974534683 ', N'user3')
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 01/07/2016 23:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [varchar](6) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChiNCC] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](11) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [DienThoai]) VALUES (N'1', N'Nhã Nam                                           ', N' 59 Đỗ Quang, phường Trung Hoà, quận Cầu Giấy, Hà Nội                                               ', N'0903244248 ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [DienThoai]) VALUES (N'2', N'NXB Trẻ                                           ', N'161B Lý Chính Thắng - Phường 7 - Quận 3 - TP. Hồ Chí Minh                                           ', N'839316289  ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [DienThoai]) VALUES (N'3', N'MCBook                                            ', N'26/245 Mai Dịch - Cầu Giấy - Hà Nội                                                                 ', N'437921466  ')
/****** Object:  Table [dbo].[KhachHang]    Script Date: 01/07/2016 23:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](6) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SoDienThoai], [Email]) VALUES (N'1', N'Trần Thu Hương                                    ', N'24 Trần Hưng Đạo, Phường 7, Quận 5, Hồ Chí Minh, Việt Nam                                           ', N'0968787545 ', N'tthuong@gmail.com                                 ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SoDienThoai], [Email]) VALUES (N'2', N'Nguyễn Thị Thìn                                   ', N'40 Lê Minh Xuân, phường 8, Tân Bình, Hồ Chí Minh, Việt Nam                                          ', N'0934864756 ', N'ntthin@gmail.com                                  ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChiKH], [SoDienThoai], [Email]) VALUES (N'3', N'Ngô Đình Trọng                                    ', N'300/7/1 Trịnh Đình Trọng, Phú Trung, Tân Phú, Hồ Chí Minh, Việt Nam                                 ', N'01238574958', N'ndtrong@gmail.com                                 ')
/****** Object:  Table [dbo].[HoaDon]    Script Date: 01/07/2016 23:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](6) NOT NULL,
	[MaKH] [varchar](6) NULL,
	[MaNV] [varchar](6) NULL,
	[NgayLapHD] [datetime] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'1', N'1', N'1', CAST(0x0000A48B00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'2', N'3', N'2', CAST(0x0000A43300000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD]) VALUES (N'3', N'2', N'3', CAST(0x0000A44F00000000 AS DateTime))
/****** Object:  Table [dbo].[CongNo]    Script Date: 01/07/2016 23:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CongNo](
	[MaCN] [varchar](6) NOT NULL,
	[MaKH] [varchar](6) NULL,
	[ThoiGian] [datetime] NULL,
	[SoTien] [float] NULL,
	[DaTra] [float] NULL,
 CONSTRAINT [PK_CongNo] PRIMARY KEY CLUSTERED 
(
	[MaCN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CongNo] ([MaCN], [MaKH], [ThoiGian], [SoTien], [DaTra]) VALUES (N'1', N'1', CAST(0x0000A46600000000 AS DateTime), 20000, 2000)
INSERT [dbo].[CongNo] ([MaCN], [MaKH], [ThoiGian], [SoTien], [DaTra]) VALUES (N'2', N'3', CAST(0x0000A4A300000000 AS DateTime), 50000, 10000)
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 01/07/2016 23:37:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [varchar](6) NOT NULL,
	[MaSach] [varchar](6) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSach], [SoLuong]) VALUES (N'1', N'4', 2)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSach], [SoLuong]) VALUES (N'1', N'5', 3)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSach], [SoLuong]) VALUES (N'2', N'1', 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSach], [SoLuong]) VALUES (N'2', N'2', 5)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSach], [SoLuong]) VALUES (N'3', N'1', 4)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSach], [SoLuong]) VALUES (N'3', N'2', 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSach], [SoLuong]) VALUES (N'3', N'3', 3)
