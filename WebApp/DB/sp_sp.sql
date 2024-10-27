USE [web_do_an_vat]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 25/10/2024 17:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaChiTietDonHang] [varchar](50) NOT NULL,
	[MaDonHang] [varchar](50) NULL,
	[MaSanPham] [varchar](50) NULL,
	[SoLuong] [int] NULL,
	[GiaDonVi] [float] NULL,
 CONSTRAINT [PK__ChiTietD__4B0B45DD8D4C978A] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 25/10/2024 17:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [varchar](50) NOT NULL,
	[MaKhachHang] [varchar](50) NULL,
	[NgayDatHang] [datetime] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[TongTien] [decimal](18, 2) NULL,
 CONSTRAINT [PK__DonHang__129584AD29DF0F67] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 25/10/2024 17:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](100) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[DiaChi] [nvarchar](200) NULL,
 CONSTRAINT [PK__KhachHan__88D2F0E520C3E449] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25/10/2024 17:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [varchar](50) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[MoTa] [nvarchar](500) NULL,
	[Gia] [decimal](18, 0) NULL,
	[SoLuongTon] [int] NULL,
 CONSTRAINT [PK__SanPham__FAC7442D18F368DB] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 25/10/2024 17:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaThanhToan] [varchar](50) NOT NULL,
	[MaDonHang] [varchar](50) NULL,
	[NgayThanhToan] [datetime] NULL,
	[PhuongThucThanhToan] [nvarchar](50) NULL,
	[SoTien] [decimal](18, 2) NULL,
 CONSTRAINT [PK__ThanhToa__D4B25844F09901F0] PRIMARY KEY CLUSTERED 
(
	[MaThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi]) VALUES (N'CTDH001', N'DH001', N'SP001', 2, 100.5)
GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi]) VALUES (N'CTDH002', N'DH001', N'SP002', 1, 250)
GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi]) VALUES (N'CTDH003', N'DH002', N'SP003', 4, 300)
GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi]) VALUES (N'CTDH004', N'DH002', N'SP004', 3, 150)
GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi]) VALUES (N'CTDH005', N'DH003', N'SP005', 2, 120)
GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi]) VALUES (N'CTDH006', N'DH003', N'SP006', 1, 500)
GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi]) VALUES (N'CTDH007', N'DH004', N'SP007', 10, 80)
GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi]) VALUES (N'CTDH008', N'DH004', N'SP008', 5, 200)
GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi]) VALUES (N'CTDH009', N'DH005', N'SP009', 6, 175)
GO
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaDonVi]) VALUES (N'CTDH010', N'DH005', N'SP010', 2, 300)
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TrangThai], [TongTien]) VALUES (N'DH001', N'KH001', CAST(N'2024-10-25T15:53:44.070' AS DateTime), N'Chờ xử lý', CAST(451.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TrangThai], [TongTien]) VALUES (N'DH002', N'KH002', CAST(N'2024-10-25T15:53:44.070' AS DateTime), N'Đã thanh toán', CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TrangThai], [TongTien]) VALUES (N'DH003', N'KH003', CAST(N'2024-10-25T15:53:44.070' AS DateTime), N'Đang giao hàng', CAST(760.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TrangThai], [TongTien]) VALUES (N'DH004', N'KH004', CAST(N'2024-10-25T15:53:44.070' AS DateTime), N'Hoàn thành', CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TrangThai], [TongTien]) VALUES (N'DH005', N'KH005', CAST(N'2024-10-25T15:53:44.070' AS DateTime), N'Chờ xử lý', CAST(950.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TrangThai], [TongTien]) VALUES (N'DH006', N'KH006', CAST(N'2024-10-25T15:53:44.070' AS DateTime), N'Đang giao hàng', CAST(220.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TrangThai], [TongTien]) VALUES (N'DH007', N'KH007', CAST(N'2024-10-25T15:53:44.070' AS DateTime), N'Hoàn thành', CAST(500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TrangThai], [TongTien]) VALUES (N'DH008', N'KH008', CAST(N'2024-10-25T15:53:44.070' AS DateTime), N'Đã hủy', CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TrangThai], [TongTien]) VALUES (N'DH009', N'KH009', CAST(N'2024-10-25T15:53:44.070' AS DateTime), N'Chờ xử lý', CAST(650.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TrangThai], [TongTien]) VALUES (N'DH010', N'KH010', CAST(N'2024-10-25T15:53:44.070' AS DateTime), N'Hoàn thành', CAST(780.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [Email], [GioiTinh], [SoDienThoai], [DiaChi]) VALUES (N'KH001', N'Nguyen Van A', N'nguyenvana@gmail.com', N'Nam', N'0901234567', N'123 Đường A, Thành phố B')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [Email], [GioiTinh], [SoDienThoai], [DiaChi]) VALUES (N'KH002', N'Tran Thi B', N'tranthib@gmail.com', N'Nữ', N'0907654321', N'456 Đường C, Thành phố D')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [Email], [GioiTinh], [SoDienThoai], [DiaChi]) VALUES (N'KH003', N'Le Van C', N'levanc@gmail.com', N'Nam', N'0905432167', N'789 Đường E, Thành phố F')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [Email], [GioiTinh], [SoDienThoai], [DiaChi]) VALUES (N'KH004', N'Nguyen Thi D', N'nguyenthid@gmail.com', N'Nữ', N'0909876543', N'321 Đường G, Thành phố H')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [Email], [GioiTinh], [SoDienThoai], [DiaChi]) VALUES (N'KH005', N'Pham Van E', N'phamvane@gmail.com', N'Nam', N'0903456789', N'654 Đường I, Thành phố J')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [Email], [GioiTinh], [SoDienThoai], [DiaChi]) VALUES (N'KH006', N'Tran Van F', N'tranvanf@gmail.com', N'Nam', N'0906789123', N'987 Đường K, Thành phố L')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [Email], [GioiTinh], [SoDienThoai], [DiaChi]) VALUES (N'KH007', N'Nguyen Thi G', N'nguyenthig@gmail.com', N'Nữ', N'0901122334', N'123 Đường M, Thành phố N')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [Email], [GioiTinh], [SoDienThoai], [DiaChi]) VALUES (N'KH008', N'Le Thi H', N'lethih@gmail.com', N'Nữ', N'0903344556', N'456 Đường O, Thành phố P')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [Email], [GioiTinh], [SoDienThoai], [DiaChi]) VALUES (N'KH009', N'Pham Thi I', N'phamthii@gmail.com', N'Nữ', N'0905566778', N'789 Đường Q, Thành phố R')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [Email], [GioiTinh], [SoDienThoai], [DiaChi]) VALUES (N'KH010', N'Hoang Van J', N'hoangvanj@gmail.com', N'Nam', N'0907788990', N'321 Đường S, Thành phố T')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon]) VALUES (N'SP001', N'Sản phẩm A', N'Mô tả sản phẩm A', CAST(101 AS Decimal(18, 0)), 26)
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon]) VALUES (N'SP002', N'Sản phẩm B', N'Mô tả sản phẩm B', CAST(250 AS Decimal(18, 0)), 15)
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon]) VALUES (N'SP003', N'Sản phẩm C', N'Mô tả sản phẩm C', CAST(300 AS Decimal(18, 0)), 10)
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon]) VALUES (N'SP004', N'Sản phẩm D', N'Mô tả sản phẩm D', CAST(150 AS Decimal(18, 0)), 30)
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon]) VALUES (N'SP005', N'Sản phẩm E', N'Mô tả sản phẩm E', CAST(120 AS Decimal(18, 0)), 25)
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon]) VALUES (N'SP006', N'Sản phẩm F', N'Mô tả sản phẩm F', CAST(500 AS Decimal(18, 0)), 5)
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon]) VALUES (N'SP007', N'Sản phẩm G', N'Mô tả sản phẩm G', CAST(80 AS Decimal(18, 0)), 50)
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon]) VALUES (N'SP008', N'Sản phẩm H', N'Mô tả sản phẩm H', CAST(200 AS Decimal(18, 0)), 40)
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon]) VALUES (N'SP009', N'Sản phẩm I', N'Mô tả sản phẩm I', CAST(175 AS Decimal(18, 0)), 60)
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [Gia], [SoLuongTon]) VALUES (N'SP010', N'Sản phẩm J', N'Mô tả sản phẩm J', CAST(300 AS Decimal(18, 0)), 8)
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaDonHang], [NgayThanhToan], [PhuongThucThanhToan], [SoTien]) VALUES (N'TT001', N'DH001', CAST(N'2024-10-25T15:53:49.850' AS DateTime), N'Thẻ tín dụng', CAST(451.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaDonHang], [NgayThanhToan], [PhuongThucThanhToan], [SoTien]) VALUES (N'TT002', N'DH002', CAST(N'2024-10-25T15:53:49.850' AS DateTime), N'Tiền mặt', CAST(1200.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaDonHang], [NgayThanhToan], [PhuongThucThanhToan], [SoTien]) VALUES (N'TT003', N'DH003', CAST(N'2024-10-25T15:53:49.850' AS DateTime), N'Thẻ tín dụng', CAST(760.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaDonHang], [NgayThanhToan], [PhuongThucThanhToan], [SoTien]) VALUES (N'TT004', N'DH004', CAST(N'2024-10-25T15:53:49.850' AS DateTime), N'Chuyển khoản', CAST(350.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaDonHang], [NgayThanhToan], [PhuongThucThanhToan], [SoTien]) VALUES (N'TT005', N'DH005', CAST(N'2024-10-25T15:53:49.850' AS DateTime), N'Thẻ tín dụng', CAST(950.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaDonHang], [NgayThanhToan], [PhuongThucThanhToan], [SoTien]) VALUES (N'TT006', N'DH006', CAST(N'2024-10-25T15:53:49.850' AS DateTime), N'Tiền mặt', CAST(220.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaDonHang], [NgayThanhToan], [PhuongThucThanhToan], [SoTien]) VALUES (N'TT007', N'DH007', CAST(N'2024-10-25T15:53:49.850' AS DateTime), N'Chuyển khoản', CAST(500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaDonHang], [NgayThanhToan], [PhuongThucThanhToan], [SoTien]) VALUES (N'TT008', N'DH008', CAST(N'2024-10-25T15:53:49.850' AS DateTime), N'Thẻ tín dụng', CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaDonHang], [NgayThanhToan], [PhuongThucThanhToan], [SoTien]) VALUES (N'TT009', N'DH009', CAST(N'2024-10-25T15:53:49.850' AS DateTime), N'Tiền mặt', CAST(650.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ThanhToan] ([MaThanhToan], [MaDonHang], [NgayThanhToan], [PhuongThucThanhToan], [SoTien]) VALUES (N'TT010', N'DH010', CAST(N'2024-10-25T15:53:49.850' AS DateTime), N'Chuyển khoản', CAST(780.00 AS Decimal(18, 2)))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__A9D1053445FC8A9F]    Script Date: 25/10/2024 17:13:56 ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [UQ__KhachHan__A9D1053445FC8A9F] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__MaDon__3F466844] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDo__MaDon__3F466844]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__MaSan__403A8C7D] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDo__MaSan__403A8C7D]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__MaKhach__3C69FB99] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__MaKhach__3C69FB99]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK__ThanhToan__MaDon__4316F928] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK__ThanhToan__MaDon__4316F928]
GO
/****** Object:  StoredProcedure [dbo].[SP_SP]    Script Date: 25/10/2024 17:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_SP] 
	@action varchar(50),
    @MaSanPham varchar(50) = NULL,
    @TenSanPham nvarchar(100) = NULL,
	@MoTa nvarchar(100) = NULL,
	@Gia decimal = null,
	@SoLuongTon int = null

AS
BEGIN
	declare @json nvarchar(max)='';
    IF (@action = 'get_infor_sp')
    BEGIN
		SELECT @json=(
        SELECT 
            'get_infor' AS status,
            *
        FROM SanPham
        FOR JSON PATH)
		select @json as [json];
    END

    ELSE IF (@action = 'add_sp')
    BEGIN
        INSERT INTO SanPham (MaSanPham, TenSanPham,MoTa,Gia,SoLuongTon) 
        VALUES (@MaSanPham, @TenSanPham,@MoTa,@Gia,@SoLuongTon);
        SELECT 'ok' AS ok,'Thêm thành công' AS message FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
    END

    ELSE IF (@action = 'update_sp')
    BEGIN
        UPDATE SanPham
        SET TenSanPham = @TenSanPham,MoTa=@MoTa,Gia = @Gia,SoLuongTon=@SoLuongTon
        WHERE MaSanPham = @MaSanPham

        SELECT 'ok' AS ok,'Cập nhật thành công' AS message FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
    END

    ELSE IF (@action = 'delete_sp')
    BEGIN
        DELETE FROM SanPham
        WHERE MaSanPham = @MaSanPham;
        SELECT 'ok' AS ok,'Xóa thành công' AS message FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
    END
END


GO
