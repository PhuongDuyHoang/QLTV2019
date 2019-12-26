USE [master]
GO

WHILE EXISTS(select NULL from sys.databases where name='QuanLyThuVien')
BEGIN
    DECLARE @SQL varchar(max)
    SELECT @SQL = COALESCE(@SQL,'') + 'Kill ' + Convert(varchar, SPId) + ';'
    FROM MASTER..SysProcesses
    WHERE DBId = DB_ID(N'QuanLyThuVien') AND SPId <> @@SPId
    EXEC(@SQL)
    DROP DATABASE [QuanLyThuVien]
END
GO

set dateformat dmy

USE [master]
GO
/****** Object:  Database [QuanLyThuVien]    Script Date: 6/10/2018 10:23:54 PM ******/
CREATE DATABASE [QuanLyThuVien]
 CONTAINMENT = NONE
GO
ALTER DATABASE [QuanLyThuVien] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyThuVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyThuVien]
GO
/****** Object:  Table [tblChiTietPhieuMuon]    Script Date: 6/10/2018 10:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblChiTietPhieuMuon](
	[machitietphieumuon] [nvarchar](8) NOT NULL,
	[maphieumuonsach] [nvarchar](8) NOT NULL,
	[masach] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_tblChiTietPhieuMuon] PRIMARY KEY CLUSTERED 
(
	[machitietphieumuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [tblChiTietPhieuMuon] values ('CTPM0001', 'PMS00001', 'S0000004')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0002', 'PMS00001', 'S0000010')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0003', 'PMS00002', 'S0000007')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0004', 'PMS00002', 'S0000011')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0005', 'PMS00002', 'S0000002')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0006', 'PMS00002', 'S0000005')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0007', 'PMS00003', 'S0000200')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0008', 'PMS00004', 'S0000008')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0009', 'PMS00004', 'S0000012')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0010', 'PMS00004', 'S0000013')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0011', 'PMS00005', 'S0000001')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0012', 'PMS00006', 'S0000003')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0013', 'PMS00007', 'S0000009')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0014', 'PMS00007', 'S0000812')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0015', 'PMS00008', 'S0000300')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0016', 'PMS00008', 'S0000512')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0017', 'PMS00009', 'S0000712')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0018', 'PMS00010', 'S0000311')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0019', 'PMS00010', 'S0000019')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0020', 'PMS00010', 'S0000098')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0021', 'PMS00011', 'S0000998')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0022', 'PMS00011', 'S0000111')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0023', 'PMS00011', 'S0000055')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0024', 'PMS00012', 'S0000198')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0025', 'PMS00013', 'S0000199')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0026', 'PMS00013', 'S0000299')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0027', 'PMS00014', 'S0000140')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0028', 'PMS00015', 'S0000799')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0029', 'PMS00015', 'S0000811')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0030', 'PMS00016', 'S0000333')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0031', 'PMS00017', 'S0000212')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0032', 'PMS00018', 'S0000113')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0033', 'PMS00019', 'S0000252')
GO
insert into [tblChiTietPhieuMuon] values ('CTPM0034', 'PMS00020', 'S0000414')
GO

/****** Object:  Table [tblChiTietPhieuTra]    Script Date: 6/10/2018 10:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblChiTietPhieuTra](
	[machitietphieutra] [nvarchar](8) NOT NULL,
	[masach] [nvarchar](8) NOT NULL,
	[maphieutrasach] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_tblChiTietPhieuTra] PRIMARY KEY CLUSTERED 
(
	[machitietphieutra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [tblChiTietPhieuTra] values ('CTPT0001', 'S0000010', 'PTS00001')
GO
insert into [tblChiTietPhieuTra] values ('CTPT0002', 'S0000011', 'PTS00002')
GO
insert into [tblChiTietPhieuTra] values ('CTPT0003', 'S0000007', 'PTS00002')
GO
insert into [tblChiTietPhieuTra] values ('CTPT0004', 'S0000200', 'PTS00003')
GO
insert into [tblChiTietPhieuTra] values ('CTPT0005', 'S0000008', 'PTS00004')
GO
insert into [tblChiTietPhieuTra] values ('CTPT0006', 'S0000001', 'PTS00005')
GO
insert into [tblChiTietPhieuTra] values ('CTPT0007', 'S0000003', 'PTS00006')
GO
insert into [tblChiTietPhieuTra] values ('CTPT0008', 'S0000004', 'PTS00001')
GO
insert into [tblChiTietPhieuTra] values ('CTPT0009', 'S0000002', 'PTS00002')
GO
insert into [tblChiTietPhieuTra] values ('CTPT0010', 'S0000005', 'PTS00002')
GO

/****** Object:  Table [tblDocGia]    Script Date: 6/10/2018 10:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblDocGia](
	[madocgia] [nvarchar](8) NOT NULL,
	[hotendocgia] [nvarchar](50) NOT NULL,
	[ngaysinh] [datetime] NOT NULL,
	[diachi] [nvarchar](50) NOT NULL,
	[email] [nvarchar](30) NOT NULL,
	[ngaylapthe] [datetime] NOT NULL,
	[maloaidocgia] [char](1) NOT NULL,
 CONSTRAINT [PK_tblDocGia] PRIMARY KEY CLUSTERED 
(
	[madocgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

insert into [tblDocGia] values ('DG000000', '', '', '', '', '', '')
GO
insert into [tblDocGia] values ('DG000001', N'Phan Thanh Tùng', '31/01/1998', N'Linh Trung, Thủ Đức, HCM', 'thanhtunga1lqd@gmail.com', '24/06/2018', '1')
GO
insert into [tblDocGia] values ('DG000002', N'Nguyễn Thành Luân', '01/01/1998', N'Linh Trung, Thủ Đức, HCM', 'thanhluana2lqd@gmail.com', '24/06/2018', '2')
GO
insert into [tblDocGia] values ('DG000003', N'Nguyễn Văn A', '01/05/1997', N'Linh Trung, Thủ Đức, HCM', 'nva@gmail.com', '24/06/2018', '2')
GO
insert into [tblDocGia] values ('DG000004', N'Trần Thị B', '31/10/1998', N'Linh Trung, Thủ Đức, HCM', 'ttb@gmail.com', '23/06/2018', '1')
GO
insert into [tblDocGia] values ('DG000005', N'Trần Thị Bưởi', '18/01/1998', N'Linh Trung, Thủ Đức, HCM', 'tbuoi@gmail.com', '22/06/2018', '1')
GO
insert into [tblDocGia] values ('DG000006', N'Vương Giả', '23/12/1995', N'Phường 10, Phú Nhuận, HCM', 'vuonggia@gmail.com', '23/06/2018', '2')
GO
insert into [tblDocGia] values ('DG000007', N'Lưu Bị', '01/02/1990', N'Phường 5, Quận 3, HCM', 'luubi@gmail.com', '20/05/2018', '1')
GO
insert into [tblDocGia] values ('DG000008', N'Tào Tháo', '03/03/1998', N'Bén Nghé, Quận 1, HCM', 'taothao@gmail.com', '23/05/2018', '1')
GO
insert into [tblDocGia] values ('DG000009', N'Lữ Bố', '12/12/1988', N'Phường 26, Bình Thạnh, HCM', 'lubo@gmail.com', '01/04/2018', '2')
GO
insert into [tblDocGia] values ('DG000010', N'Tôn Sách', '10/06/1980', N'Đakao, Quận 1, HCM', 'tonsach@gmail.com', '03/05/2018', '2')
GO
insert into [tblDocGia] values ('DG000011', N'Trần Bình', '10/06/1980', N'Phường 10, Quận Tân Bình, HCM', 'tranbinh@gmail.com', '03/12/2017', '2')
GO

/****** Object:  Table [tblLoaiDocGia]    Script Date: 6/10/2018 10:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tblLoaiDocGia](
	[maloaidocgia] [char](1) NOT NULL,
	[tenloaidocgia] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tblLoaiDocGia] PRIMARY KEY CLUSTERED 
(
	[maloaidocgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

insert into [tblLoaiDocGia] values ('', '')
GO
insert into [tblLoaiDocGia] values ('1', 'X')
GO
insert into [tblLoaiDocGia] values ('2', 'Y')
GO

/****** Object:  Table [tblNhaXuatBan]    Script Date: 6/10/2018 10:23:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tblNhaXuatBan](
	[manhaxuatban] [nvarchar](8) NOT NULL,
	[tennhaxuatban] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblNhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[manhaxuatban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [tblNhaXuatBan] values ('', '')
GO
insert into [tblNhaXuatBan] values ('NXB00001', N'NXB Trẻ')
GO
insert into [tblNhaXuatBan] values ('NXB00002', N'NXB Già')
GO
insert into [tblNhaXuatBan] values ('NXB00003', N'NXB Kim Đồng')
GO
insert into [tblNhaXuatBan] values ('NXB00004', N'NXB Giáo Dục')
GO
insert into [tblNhaXuatBan] values ('NXB00005', N'NXB Thanh Niên')
GO
insert into [tblNhaXuatBan] values ('NXB00006', N'NXB Thiếu Niên')
GO
insert into [tblNhaXuatBan] values ('NXB00007', N'NXB Ngô Quốc')
GO
insert into [tblNhaXuatBan] values ('NXB00008', N'NXB Nguỵ Quốc')
GO
insert into [tblNhaXuatBan] values ('NXB00009', N'NXB Thục Quốc')
GO
insert into [tblNhaXuatBan] values ('NXB00010', N'NXB Nhã Nam')
GO
insert into [tblNhaXuatBan] values ('NXB00011', N'NXB Thái Hà')
GO
insert into [tblNhaXuatBan] values ('NXB00012', N'NXB Thanh Tùng')
GO
insert into [tblNhaXuatBan] values ('NXB00013', N'NXB Phương Nam')
GO
insert into [tblNhaXuatBan] values ('NXB00014', N'NXB Đông A')
GO
insert into [tblNhaXuatBan] values ('NXB00015', N'NXB Alpha Books')
GO
insert into [tblNhaXuatBan] values ('NXB00016', N'NXB First News')
GO
insert into [tblNhaXuatBan] values ('NXB00017', N'NXB Đông Tây')
GO
insert into [tblNhaXuatBan] values ('NXB00018', N'NXB Đại học Quốc Gia Tp. Hồ Chí Minh')
GO
insert into [tblNhaXuatBan] values ('NXB00019', N'NXB Sư Phạm')
GO
insert into [tblNhaXuatBan] values ('NXB00020', N'NXB Thành Luân')
GO

/****** Object:  Table [dbo].[tblPhieuMuonSach]    Script Date: 6/25/2018 8:12:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblPhieuMuonSach](
	[maphieumuonsach] [nvarchar](8) NOT NULL,
	[ngaymuon] [datetime] NOT NULL,
	[madocgia] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_tblPhieuMuonSach] PRIMARY KEY CLUSTERED 
(
	[maphieumuonsach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [tblPhieuMuonSach] values ('PMS00001', '25/06/2018', 'DG000001')
GO
insert into [tblPhieuMuonSach] values ('PMS00002', '28/06/2018', 'DG000002')
GO
insert into [tblPhieuMuonSach] values ('PMS00003', '28/06/2018', 'DG000003')
GO
insert into [tblPhieuMuonSach] values ('PMS00004', '29/06/2018', 'DG000004')
GO
insert into [tblPhieuMuonSach] values ('PMS00005', '29/06/2018', 'DG000005')
GO
insert into [tblPhieuMuonSach] values ('PMS00006', '29/06/2018', 'DG000006')
GO
insert into [tblPhieuMuonSach] values ('PMS00007', '30/06/2018', 'DG000007')
GO                                         
insert into [tblPhieuMuonSach] values ('PMS00008', '30/06/2018', 'DG000008')
GO
insert into [tblPhieuMuonSach] values ('PMS00009', '30/06/2018', 'DG000009')
GO
insert into [tblPhieuMuonSach] values ('PMS00010', '30/06/2018', 'DG000010')
GO
insert into [tblPhieuMuonSach] values ('PMS00011', '30/06/2018', 'DG000001')
GO
insert into [tblPhieuMuonSach] values ('PMS00012', '30/06/2018', 'DG000002')
GO
insert into [tblPhieuMuonSach] values ('PMS00013', '30/06/2018', 'DG000003')
GO
insert into [tblPhieuMuonSach] values ('PMS00014', '30/06/2018', 'DG000004')
GO
insert into [tblPhieuMuonSach] values ('PMS00015', '30/06/2018', 'DG000005')
GO
insert into [tblPhieuMuonSach] values ('PMS00016', '30/06/2018', 'DG000006')
GO
insert into [tblPhieuMuonSach] values ('PMS00017', '01/07/2018', 'DG000007')
GO
insert into [tblPhieuMuonSach] values ('PMS00018', '01/07/2018', 'DG000008')
GO
insert into [tblPhieuMuonSach] values ('PMS00019', '01/07/2018', 'DG000009')
GO
insert into [tblPhieuMuonSach] values ('PMS00020', '01/07/2018', 'DG000010')
GO
 

/****** Object:  Table [dbo].[tblPhieuTraSach]    Script Date: 6/25/2018 8:15:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblPhieuTraSach](
	[maphieutrasach] [nvarchar](8) NOT NULL,
	[ngaytra] [datetime] NOT NULL,
	[madocgia] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_tblPhieuTraSach] PRIMARY KEY CLUSTERED 
(
	[maphieutrasach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [tblPhieuTraSach] values ('PTS00001', '27/06/2018', 'DG000001')
GO
insert into [tblPhieuTraSach] values ('PTS00002', '29/06/2018', 'DG000002')
GO
insert into [tblPhieuTraSach] values ('PTS00003', '30/06/2018', 'DG000003')
GO
insert into [tblPhieuTraSach] values ('PTS00004', '30/06/2018', 'DG000004')
GO
insert into [tblPhieuTraSach] values ('PTS00005', '30/06/2018', 'DG000005')
GO
insert into [tblPhieuTraSach] values ('PTS00006', '30/06/2018', 'DG000006')
GO
insert into [tblPhieuTraSach] values ('PTS00007', '29/06/2018', 'DG000001')
GO
insert into [tblPhieuTraSach] values ('PTS00008', '30/06/2018', 'DG000006')
GO


/****** Object:  Table [dbo].[tblSach]    Script Date: 6/25/2018 8:15:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblSach](
	[masach] [nvarchar](8) NOT NULL,
	[tensach] [nvarchar](50) NOT NULL,
	[manhaxuatban] [nvarchar](8) NOT NULL,
	[ngaynhap] [datetime] NOT NULL,
	[matrangthai] [int] NOT NULL,
	[namxuatban] [int] NOT NULL,
	[trigia] [int] NOT NULL,
	[madocgiamuon] [nvarchar](8)
 CONSTRAINT [PK_tblSach] PRIMARY KEY CLUSTERED 
(
	[masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [tblSach] values ('S0000000', '', '', '', '', '', '', '')
GO
insert into [tblSach] values ('S0000001', N'Sách đỏ', 'NXB00006', '01/01/2016', 2, 2012, 100000, 'DG000001')
GO
insert into [tblSach] values ('S0000002', N'Sách lược của người giàu', 'NXB00002', '01/01/2016', 1, 2012, 52000, '')
GO
insert into [tblSach] values ('S0000003', N'Tam Quốc Diễn Nghĩa 4', 'NXB00008', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000004', N'Tây Du Ký', 'NXB00001', '01/01/2016', 2, 2010, 450000, '')
GO
insert into [tblSach] values ('S0000005', N'Harry Potter 1', 'NXB00006', '01/01/2016', 1, 2012, 2000000, '')
GO
insert into [tblSach] values ('S0000006', N'Harry Potter 2', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000007', N'Harry Potter 3', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000008', N'Harry Potter 4', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000009', N'Harry Potter 5', 'NXB00006', '01/01/2016', 2, 2012, 200000, 'DG000007')
GO
insert into [tblSach] values ('S0000010', N'Harry Potter 6', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000011', N'Harry Potter 7', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000012', N'Tam Quốc Diễn Nghĩa 1', 'NXB00008', '01/01/2016', 2, 2011, 500000, 'DG000004')
GO
insert into [tblSach] values ('S0000013', N'Tam Quốc Diễn Nghĩa 2', 'NXB00008', '01/01/2016', 2, 2011, 500000, 'DG000010')
GO
insert into [tblSach] values ('S0000014', N'Tam Quốc Diễn Nghĩa 3', 'NXB00008', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000015', N'Sherlock Holmes 1', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000016', N'Sherlock Holmes 2', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000017', N'Sherlock Holmes 3', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000018', N'Chuyện hai thành phố 1', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000019', N'Chuyện hai thành phố 2', 'NXB00019', '01/01/2016', 1, 2010, 780000, 'DG000010')
GO
insert into [tblSach] values ('S0000020', N'Chuyện hai thành phố 3', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000021', N'Chúa tể của những chiếc nhẫn 1', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000022', N'Chúa tể của những chiếc nhẫn 2', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000023', N'Chúa tể của những chiếc nhẫn 3', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000024', N'Chúa tể của những chiếc nhẫn 4', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000025', N'Chúa tể của những chiếc nhẫn 5', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000026', N'Hoàng tử bé', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000027', N'The Hobbit 1', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000028', N'The Hobbit 2', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000029', N'The Hobbit 3', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000030', N'The Hobbit 4', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000031', N'The Hobbit 5', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000032', N'Hồng Lâu Mộng', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000033', N'Người da đen nhỏ', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000034', N'Biên niên sử Narnia', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000035', N'Cô gái: lịch sử của cuộc khám phá', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000036', N'Mật mã Da Vinci', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000037', N'Cách nghĩ để thành công', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000038', N'Nhà giả kim', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000039', N'Con đường giải thoát', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000040', N'Lolita', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000041', N'Heidis Years of Wandering and Learning', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000042', N'Anne tóc đỏ dưới chái nhà xanh', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000043', N'Ngựa ô yêu dấu', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000044', N'Tên của hoa hồng', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000045', N'Đại bàng hạ cánh', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000046', N'Đồi thỏ', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000047', N'Báo cáo Hite', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000048', N'Charlottes Web', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000049', N'The Ginger Man', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000050', N'The Tale of Peter Rabbit', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000051', N'Harry Potter and the Deathly Hallows', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000052', N'Jonathan Livingston Seagull', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000053', N'A Message to Garcia', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000054', N'Sophies World', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000055', N'Angels and Demons', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000056', N'How the Steel Was Tempered', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000057', N'Voyna i mir; War and Peace', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000058', N'The Adventures of Pinocchio', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000059', N'You Can Heal Your Life', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000060', N'Kane and Abel', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000061', N'The Diary of a Young Girl', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000062', N'In His Steps: What Would Jesus Do?', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000063', N'To Kill a Mockingbird', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000064', N'Valley of the Dolls', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000065', N'Gone with the Wind', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000066', N'One Hundred Years of Solitude', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000067', N'The Purpose Driven Life', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000068', N'The Thorn Birds', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000069', N'The Revolt of Mamie Stover', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000070', N'The Girl with the Dragon Tattoo', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000071', N'The Very Hungry Caterpillar', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000072', N'The Lion, the Witch and the Wardrobe', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000073', N'She: A History of Adventure', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000074', N'The Da Vinci Code', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000075', N'Think and grow rich', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000076', N'The Catcher in the Rye', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000077', N'The Alchemist', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000078', N'Steps to Christ', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000079', N'Anne of Green Gables', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000080', N'His Grooms and Companions', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000081', N'Il Nome della Rosa', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000082', N'The Eagle Has Landed', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000083', N'Watership Down', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000084', N'Charlotte và Wilbur', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000085', N'Người đàn ông đào hoa', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000086', N'Chuyện ngắn về thỏ Peter', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000087', N'Harry Potter và Bảo bối Tử thần', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000088', N'Hải âu Jonathan Livingston', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000089', N'Bức thư gửi Garcia', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000090', N'Thế giới của Sophie', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000091', N'Thiên thần và ác quỷ', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000092', N'Thép đã tôi thế đấy !', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000093', N'Chiến tranh và hòa bình', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000094', N'Những cuộc phiêu lưu của Pinocchio', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000095', N'Chữa lành nỗi đau', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000096', N'Hai số phận Kane and Abel', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000097', N'Nhật ký Anne Frank', 'NXB00001', '01/01/2016', 1, 2010, 780000, 'DG000010')
GO
insert into [tblSach] values ('S0000098', N'Những bước chân Ngài', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000099', N'Giết con chim nhại', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000100', N'Thung lũng búp bê', 'NXB00001', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000101', N'Cuốn theo chiều gió', 'NXB00001', '01/01/2016', 2, 2012, 100000, '')
GO
insert into [tblSach] values ('S0000102', N'Trăm năm cô đơn', 'NXB00002', '01/01/2016', 1, 2012, 52000, '')
GO
insert into [tblSach] values ('S0000103', N'Sống Theo Đúng Mục Đích', 'NXB00002', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000104', N'Tiếng chim hót trong bụi mận gai', 'NXB00001', '01/01/2016', 2, 2010, 450000, '')
GO
insert into [tblSach] values ('S0000105', N'Cuộc nổi dậy của Mamie Stover', 'NXB00002', '01/01/2016', 1, 2012, 2000000, '')
GO
insert into [tblSach] values ('S0000106', N'Cô gái với hình xăm rồng', 'NXB00002', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000107', N'Con sâu bướm đói', 'NXB00002', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000108', N'Hành tinh Trái đất vĩ đại đã chết', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000109', N'Ai đã lấy miếng pho mát của tôi?', 'NXB00006', '01/01/2016', 2, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000110', N'Gió qua rặng liễu', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000111', N'Một chín tám tư', 'NXB00006', '01/01/2016', 1, 2012, 200000, 'DG000001')
GO
insert into [tblSach] values ('S0000112', N'Bảy thói quen của người thành đạt', 'NXB00008', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000113', N'Lời tiên tri Celestine', 'NXB00008', '01/01/2016', 2, 2011, 500000, 'DG000008')
GO
insert into [tblSach] values ('S0000114', N'Đấu trường sinh tử', 'NXB00008', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000115', N'Bố già', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000116', N'Truyện tình yêu', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000117', N'Lang đồ đằng', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000118', N'Cô gái bán thân hạnh phúc: câu chuyện của tôi', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000119', N'Hàm cá mập', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000120', N'Mãi yêu con', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000121', N'Căn phòng nữ', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000122', N'Tâm sự bà bầu', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000123', N'Những cuộc phiêu lưu của Huckleberry Finn', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000124', N'Nhật ký bí mật của Adrian Mole, Tuổi 13 3/4', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000125', N'Kon-Tiki: Vượt Thái Bình Dương trên bè', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000126', N'The Late, Great Planet Earth', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000127', N'Who Moved My Cheese?', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000128', N'The Wind in the Willows', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000129', N'Nineteen Eighty-Four', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000130', N'The 7 Habits of Highly Effective People', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000131', N'The Celestine Prophecy', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000132', N'The Hunger Games', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000133', N'The Godfather', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000134', N'Love Story', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000135', N'Wolf Totem', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000136', N'My Own Story', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000137', N'The Happy Hooker', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000138', N'Jaws', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000139', N'Love You Forever', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000140', N'The Womens Room', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000141', N'What to Expect When You''re Expecting', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000142', N'The Adventures of Huckleberry Finn', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000143', N'The Secret Diary of Adrian Mole', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000144', N'Kon-Tiki', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000145', N'Across the Pacific in a Raft', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000146', N'Spencer Johnson', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000147', N'Kenneth Grahame	', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000148', N'George Orwell', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000149', N'Stephen R. Covey', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000150', N'Khi lỗi thuộc về những vì sao', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000151', N'Lạc vào chốn hoang dã', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000152', N'Bí mật', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000153', N'Nỗi sợ trên không', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000154', N'Nơi trái tim hội ngộ', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000155', N'Tạm biệt mặt trăng', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000156', N'Chuyện dài bất tận', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000157', N'Thử đoán xem tôi yêu bạn nhiều như thế nào', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000158', N'Tướng quân', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000159', N'Chú chó Puppy nhỏ mọn', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000160', N'Những trụ cột của trái đất', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000161', N'Đắc nhân tâm', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000162', N'Mùi hương', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000163', N'Chùm nho uất hận', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000164', N'Rừng Na Uy', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000165', N'Vượn trần trụi', 'NXB00002', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000166', N'Lược sử thời gian', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000167', N'Big Bang', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000168', N'Cuộc đời của Pi', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000169', N'The Fault in Our Stars', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000170', N'Where the Wild Things Are', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000171', N'The Secret', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000172', N'Fear of Flying', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000173', N'The Shack', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000174', N'Goodnight Moon', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000175', N'Die unendliche Geschichte', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000176', N'The Neverending Story', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000177', N'Guess How Much I Love You', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000178', N'The Poky Little Puppy', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000179', N'The Pillars of the Earth', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000180', N'How to Win Friends and Influence People', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000181', N'Hey, Girl!', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000182', N'Did you know?', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000183', N'Das Parfum', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000184', N'The Horse Whisperer', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000185', N'La sombra del viento', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000186', N'The Shadow of the Wind', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000187', N'Guide to the Galaxy	', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000188', N'Tuesdays with Morrie', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000189', N'I love you!', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000190', N'Little Acre', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000191', N'Vadove ti porta il cuore', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000192', N'Follow Your Heart', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000193', N'The Outsiders', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000194', N'Charlie and the Chocolate Factory', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000195', N'Leave someone behind', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000196', N'Na Uy Wood', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000197', N'Peyton Place', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000198', N'Dune', 'NXB00003', '01/01/2016', 1, 2010, 780000, 'DG000002')
GO
insert into [tblSach] values ('S0000199', N'La Peste', 'NXB00003', '01/01/2016', 1, 2010, 780000, 'DG000003')
GO
insert into [tblSach] values ('S0000200', N'The Plague', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000201', N'No Longer Human', 'NXB00003', '01/01/2016', 2, 2012, 100000, '')
GO
insert into [tblSach] values ('S0000202', N'And', 'NXB00003', '01/01/2016', 1, 2012, 52000, '')
GO
insert into [tblSach] values ('S0000203', N'I Miss You', 'NXB00008', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000204', N'The Naked Ape', 'NXB00001', '01/01/2016', 2, 2010, 450000, '')
GO
insert into [tblSach] values ('S0000205', N'The Bridges of Madison County', 'NXB00006', '01/01/2016', 1, 2012, 2000000, '')
GO
insert into [tblSach] values ('S0000206', N'Ein Psychologe erlebt das Konzentrationslager ', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000207', N'Search for Meaning', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000208', N'So Much', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000209', N'Divina Commedia', 'NXB00006', '01/01/2016', 2, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000210', N'Divine Comedy', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000211', N'Every day', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000212', N'Things Fall Apart', 'NXB00008', '01/01/2016', 2, 2011, 500000, 'DG000007')
GO
insert into [tblSach] values ('S0000213', N'The Prophet', 'NXB00008', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000214', N'The Exorcist', 'NXB00008', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000215', N'The Gruffalo', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000216', N'Catch-22', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000217', N'Eye of the Needle', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000218', N'A Brief History of Time', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000219', N'The Cat in the Hat', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000220', N'The Lovely Bones', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000221', N'Wild Swans', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000222', N'Santa Evita', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000223', N'Mi', 'NXB00003', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000224', N'Un di Velt Hot Geshvign', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000225', N'Night', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000226', N'Luu', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000227', N'The Kite Runner', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000228', N'Confucius from the Heart', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000229', N'The Total Woman', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000230', N'Knowledge-value Revolution', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000231', N'Problems in China Socialist Economy', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000232', N'What Color is Your Parachute?', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000233', N'The Dukan Diet', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000234', N'The Joy of Sex', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000235', N'My life', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000236', N'The Gospel According to Peanuts', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000237', N'A Wrinkle in Time', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000238', N'Life of Pi', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000239', N'Without You', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000240', N'Don Quixote', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000241', N'Twilight', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000242', N'New Moon', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000243', N'Eclipse', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000244', N'Breaking Dawn', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000245', N'Chạng vạng', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000246', N'Trăng non', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000247', N'Nhật thực', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000248', N'Hừng đông', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000249', N'My Grand Daughter', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000250', N'Goosebumps', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000251', N'Perry Mason', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000252', N'Berenstain Bears', 'NXB00004', '01/01/2016', 1, 2010, 780000, 'DG000009')
GO
insert into [tblSach] values ('S0000253', N'Choose Your Own Adventure', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000254', N'Sweet Valley High', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000255', N'Noddy', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000256', N'Nancy Drew', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000257', N'Nội', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000258', N'The Railway Series', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000259', N'Thomas the Tank Engine & Friends', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000260', N'San-Antonio', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000261', N'The Baby-sitters Club', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000262', N'Star Wars 1', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000263', N'Star Wars 2', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000264', N'Star Wars 3', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000265', N'Star Wars 4', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000266', N'Star Wars 5', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000267', N'Star Wars 6', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000268', N'Star Wars 7', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000269', N'Star Wars 8', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000270', N'Star Wars 9', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000271', N'Star Wars 10', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000272', N'Solo Story', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000273', N'Peter Rabbit', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000274', N'Perter Bealish', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000275', N'Chicken Soup for the Soul', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000276', N'Frank Merriwell', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000277', N'Game of Thrones 1', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000278', N'Game of Thrones 2', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000279', N'Game of Thrones 3', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000280', N'Game of Thrones 4', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000281', N'Game of Thrones 5', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000282', N'Game of Thrones 6', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000283', N'Game of Thrones 7', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000284', N'Game of Thrones 8', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000285', N'Game of Thrones 9', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000286', N'Game of Thrones 10', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000287', N'Musashi', 'NXB00004', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000288', N'American Girl', 'NXB00005', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000289', N'The Chronicles of Narnia', 'NXB00005', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000290', N'Mr. Men', 'NXB00005', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000291', N'Twilight', 'NXB00005', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000292', N'Clifford the Big Red Dog', 'NXB00005', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000293', N'James Bond', 'NXB00005', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000294', N'Martine', 'NXB00005', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000295', N'Nijntje', 'NXB00005', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000296', N'Miffy', 'NXB00005', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000297', N'Fear Street', 'NXB00005', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000298', N'The Vampire Chronicles', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000299', N'Pippi Longstocking', 'NXB00005', '01/01/2016', 1, 2010, 780000, 'DG000003')
GO
insert into [tblSach] values ('S0000300', N'OSS 117', 'NXB00005', '01/01/2016', 1, 2010, 780000, 'DG000008')
GO
insert into [tblSach] values ('S0000301', N'Diary of a Wimpy Kid', 'NXB00005', '01/01/2016', 2, 2012, 100000, '')
GO
insert into [tblSach] values ('S0000302', N'Winnie-the-Pooh', 'NXB00002', '01/01/2016', 1, 2012, 52000, '')
GO
insert into [tblSach] values ('S0000303', N'Magic Tree House series', 'NXB00005', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000304', N'Left Behind', 'NXB00005', '01/01/2016', 2, 2010, 450000, '')
GO
insert into [tblSach] values ('S0000305', N'Eng-Viet Dictionary', 'NXB00006', '01/01/2016', 1, 2012, 2000000, '')
GO
insert into [tblSach] values ('S0000306', N'Oxford Dictionary', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000307', N'A Series of Unfortunate Events', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000308', N'Đảo Hải Tặc Tập 1', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000309', N'Đảo Hải Tặc Tập 2', 'NXB00019', '01/01/2016', 2, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000310', N'Đảo Hải Tặc Tập 3', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000311', N'Đảo Hải Tặc Tập 4', 'NXB00019', '01/01/2016', 1, 2012, 200000, 'DG000010')
GO
insert into [tblSach] values ('S0000312', N'Đảo Hải Tặc Tập 5', 'NXB00019', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000313', N'Đảo Hải Tặc Tập 6', 'NXB00019', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000314', N'Đảo Hải Tặc Tập 7', 'NXB00019', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000315', N'Đảo Hải Tặc Tập 8', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000316', N'Đảo Hải Tặc Tập 9', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000317', N'Đảo Hải Tặc Tập 10', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000318', N'Đảo Hải Tặc Tập 11', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000319', N'Đảo Hải Tặc Tập 12', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000320', N'Đảo Hải Tặc Tập 13', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000321', N'Đảo Hải Tặc Tập 14', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000322', N'Đảo Hải Tặc Tập 15', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000323', N'Đảo Hải Tặc Tập 16', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000324', N'Đảo Hải Tặc Tập 17', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000325', N'Đảo Hải Tặc Tập 18', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000326', N'Đảo Hải Tặc Tập 19', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000327', N'Đảo Hải Tặc Tập 20', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000328', N'Đảo Hải Tặc Tập 21', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000329', N'Đảo Hải Tặc Tập 22', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000330', N'Đảo Hải Tặc Tập 23', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000331', N'Đảo Hải Tặc Tập 24', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000332', N'Đảo Hải Tặc Tập 25', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000333', N'Đảo Hải Tặc Tập 26', 'NXB00019', '01/01/2016', 1, 2010, 780000, 'DG000006')
GO
insert into [tblSach] values ('S0000334', N'Đảo Hải Tặc Tập 27', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000335', N'Đảo Hải Tặc Tập 28', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000336', N'Đảo Hải Tặc Tập 29', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000337', N'Đảo Hải Tặc Tập 30', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000338', N'Đảo Hải Tặc Tập 31', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000339', N'Đảo Hải Tặc Tập 32', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000340', N'Đảo Hải Tặc Tập 33', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000341', N'Đảo Hải Tặc Tập 34', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000342', N'Đảo Hải Tặc Tập 35', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000343', N'Đảo Hải Tặc Tập 36', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000344', N'Đảo Hải Tặc Tập 37', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000345', N'Đảo Hải Tặc Tập 38', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000346', N'Đảo Hải Tặc Tập 39', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000347', N'Đảo Hải Tặc Tập 40', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000348', N'Đảo Hải Tặc Tập 41', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000349', N'Đảo Hải Tặc Tập 42', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000350', N'Đảo Hải Tặc Tập 43', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000351', N'Đảo Hải Tặc Tập 44', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000352', N'Đảo Hải Tặc Tập 45', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000353', N'Đảo Hải Tặc Tập 46', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000354', N'Đảo Hải Tặc Tập 47', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000355', N'Đảo Hải Tặc Tập 48', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000356', N'Đảo Hải Tặc Tập 49', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000357', N'Đảo Hải Tặc Tập 50', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000358', N'Đảo Hải Tặc Tập 51', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000359', N'Đảo Hải Tặc Tập 52', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000360', N'Đảo Hải Tặc Tập 53', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000361', N'Đảo Hải Tặc Tập 54', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000362', N'Đảo Hải Tặc Tập 55', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000363', N'Đảo Hải Tặc Tập 56', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000364', N'Đảo Hải Tặc Tập 57', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000365', N'Đảo Hải Tặc Tập 58', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000366', N'Đảo Hải Tặc Tập 59', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000367', N'Đảo Hải Tặc Tập 60', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000368', N'Đảo Hải Tặc Tập 61', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000369', N'Đảo Hải Tặc Tập 62', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000370', N'Đảo Hải Tặc Tập 63', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000371', N'Đảo Hải Tặc Tập 64', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000372', N'Đảo Hải Tặc Tập 65', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000373', N'Đảo Hải Tặc Tập 66', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000374', N'Đảo Hải Tặc Tập 67', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000375', N'Đảo Hải Tặc Tập 68', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000376', N'Đảo Hải Tặc Tập 69', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000377', N'Đảo Hải Tặc Tập 70', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000378', N'Đảo Hải Tặc Tập 71', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000379', N'Đảo Hải Tặc Tập 72', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000380', N'Đảo Hải Tặc Tập 73', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000381', N'Đảo Hải Tặc Tập 74', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000382', N'Đảo Hải Tặc Tập 75', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000383', N'Đảo Hải Tặc Tập 76', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000384', N'Đảo Hải Tặc Tập 77', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000385', N'Đảo Hải Tặc Tập 78', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000386', N'Đảo Hải Tặc Tập 79', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000387', N'Đảo Hải Tặc Tập 80', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000388', N'Đảo Hải Tặc Tập 81', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000389', N'Đảo Hải Tặc Tập 82', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000390', N'Đảo Hải Tặc Tập 83', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000391', N'Đảo Hải Tặc Tập 84', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000392', N'Đảo Hải Tặc Tập 85', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000393', N'Đảo Hải Tặc Tập 86', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000394', N'Đảo Hải Tặc Tập 87', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000395', N'Đảo Hải Tặc Tập 88', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000396', N'Đảo Hải Tặc Tập 89', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000397', N'Đảo Hải Tặc Tập 90', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000398', N'Đảo Hải Tặc Tập 91', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000399', N'Đảo Hải Tặc Tập 92', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000400', N'Đảo Hải Tặc Tập 93', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000401', N'Đảo Hải Tặc Tập 94', 'NXB00019', '01/01/2016', 2, 2012, 100000, '')
GO
insert into [tblSach] values ('S0000402', N'Đảo Hải Tặc Tập 95', 'NXB00019', '01/01/2016', 1, 2012, 52000, '')
GO
insert into [tblSach] values ('S0000403', N'Đảo Hải Tặc Tập 96', 'NXB00019', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000404', N'Đảo Hải Tặc Tập 97', 'NXB00019', '01/01/2016', 2, 2010, 450000, '')
GO
insert into [tblSach] values ('S0000405', N'Đảo Hải Tặc Tập 98', 'NXB00019', '01/01/2016', 1, 2012, 2000000, '')
GO
insert into [tblSach] values ('S0000406', N'Đảo Hải Tặc Tập 99', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000407', N'Đảo Hải Tặc Tập 100', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000408', N'Đảo Hải Tặc Tập 101', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000409', N'Đảo Hải Tặc Tập 102', 'NXB00019', '01/01/2016', 2, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000410', N'Đảo Hải Tặc Tập 103', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000411', N'Đảo Hải Tặc Tập 104', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000412', N'Đảo Hải Tặc Tập 105', 'NXB00019', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000413', N'Đảo Hải Tặc Tập 106', 'NXB00019', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000414', N'Đảo Hải Tặc Tập 107', 'NXB00019', '01/01/2016', 1, 2011, 500000, 'DG000010')
GO
insert into [tblSach] values ('S0000415', N'Đảo Hải Tặc Tập 108', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000416', N'Đảo Hải Tặc Tập 109', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000417', N'Đảo Hải Tặc Tập 110', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000418', N'Đảo Hải Tặc Tập 111', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000419', N'Đảo Hải Tặc Tập 112', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000420', N'Đảo Hải Tặc Tập 113', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000421', N'Đảo Hải Tặc Tập 114', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000422', N'Đảo Hải Tặc Tập 115', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000423', N'Đảo Hải Tặc Tập 116', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000424', N'Đảo Hải Tặc Tập 117', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000425', N'Đảo Hải Tặc Tập 118', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000426', N'Đảo Hải Tặc Tập 119', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000427', N'Đảo Hải Tặc Tập 120', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000428', N'Đảo Hải Tặc Tập 121', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000429', N'Đảo Hải Tặc Tập 121', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000430', N'Đảo Hải Tặc Tập 122', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000431', N'Đảo Hải Tặc Tập 123', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000432', N'Đảo Hải Tặc Tập 124', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000433', N'Đảo Hải Tặc Tập 125', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000434', N'Đảo Hải Tặc Tập 126', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000435', N'Đảo Hải Tặc Tập 127', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000436', N'Đảo Hải Tặc Tập 128', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000437', N'Đảo Hải Tặc Tập 129', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000438', N'Đảo Hải Tặc Tập 130', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000439', N'Đảo Hải Tặc Tập 131', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000440', N'Đảo Hải Tặc Tập 132', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000441', N'Đảo Hải Tặc Tập 133', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000442', N'Đảo Hải Tặc Tập 134', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000443', N'Đảo Hải Tặc Tập 135', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000444', N'Đảo Hải Tặc Tập 136', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000445', N'Đảo Hải Tặc Tập 137', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000446', N'Đảo Hải Tặc Tập 138', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000447', N'Đảo Hải Tặc Tập 139', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000448', N'Đảo Hải Tặc Tập 140', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000449', N'Đảo Hải Tặc Tập 141', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000450', N'Đảo Hải Tặc Tập 142', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000451', N'Đảo Hải Tặc Tập 143', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000452', N'Đảo Hải Tặc Tập 144', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000453', N'Đảo Hải Tặc Tập 145', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000454', N'Fifty Shades of Grey', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000455', N'Little House on the Prairie', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000456', N'Jack Reacher', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000457', N'Lantern Books', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000458', N'Arch Books', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000459', N'Discworld', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000460', N'Where is Wally?', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000461', N'Millennium Trilogy', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000462', N'Men Are from Mars, Women Are from Venus', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000463', N'The Hardy Boys', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000464', N'The Bobbsey Twins', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000465', N'Tarzan', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000466', N'The Hunger Games trilogy', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000467', N'Naruto Tập 1', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000468', N'Naruto Tập 2', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000469', N'Naruto Tập 3', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000470', N'Naruto Tập 4', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000471', N'Naruto Tập 5', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000472', N'Naruto Tập 6', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000473', N'Naruto Tập 7', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000474', N'Naruto Tập 8', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000475', N'Naruto Tập 9', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000476', N'Naruto Tập 10', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000477', N'Naruto Tập 11', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000478', N'Naruto Tập 12', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000479', N'Naruto Tập 13', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000480', N'Naruto Tập 14', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000481', N'Naruto Tập 15', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000482', N'Naruto Tập 16', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000483', N'Naruto Tập 17', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000484', N'Naruto Tập 18', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000485', N'Naruto Tập 19', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000486', N'Naruto Tập 20', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000487', N'Naruto Tập 20', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000488', N'Naruto Tập 21', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000489', N'Naruto Tập 22', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000490', N'Naruto Tập 23', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000491', N'Naruto Tập 24', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000492', N'Naruto Tập 25', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000493', N'Naruto Tập 26', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000494', N'Naruto Tập 27', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000495', N'Naruto Tập 28', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000496', N'Naruto Tập 29', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000497', N'Naruto Tập 30', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000498', N'Naruto Tập 31', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000499', N'Naruto Tập 32', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000500', N'Naruto Tập 33', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000501', N'Naruto Tập 34', 'NXB00007', '01/01/2016', 2, 2012, 100000, '')
GO
insert into [tblSach] values ('S0000502', N'Naruto Tập 35', 'NXB00007', '01/01/2016', 1, 2012, 52000, '')
GO
insert into [tblSach] values ('S0000503', N'Naruto Tập 36', 'NXB00007', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000504', N'Naruto Tập 37', 'NXB00007', '01/01/2016', 2, 2010, 450000, '')
GO
insert into [tblSach] values ('S0000505', N'Naruto Tập 38', 'NXB00007', '01/01/2016', 1, 2012, 2000000, '')
GO
insert into [tblSach] values ('S0000506', N'Naruto Tập 39', 'NXB00007', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000507', N'Naruto Tập 40', 'NXB00007', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000508', N'Naruto Tập 41', 'NXB00007', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000509', N'Naruto Tập 42', 'NXB00007', '01/01/2016', 2, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000510', N'Naruto Tập 43', 'NXB00007', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000511', N'Naruto Tập 44', 'NXB00007', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000512', N'Naruto Tập 45', 'NXB00007', '01/01/2016', 2, 2011, 500000, 'DG000007')
GO
insert into [tblSach] values ('S0000513', N'Naruto Tập 46', 'NXB00007', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000514', N'Naruto Tập 47', 'NXB00007', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000515', N'Naruto Tập 48', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000516', N'Naruto Tập 49', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000517', N'Naruto Tập 50', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000518', N'Naruto Tập 51', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000519', N'Naruto Tập 52', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000520', N'Naruto Tập 53', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000521', N'Naruto Tập 54', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000522', N'Naruto Tập 55', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000523', N'Naruto Tập 56', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000524', N'Naruto Tập 57', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000525', N'Naruto Tập 58', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000526', N'Naruto Tập 59', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000527', N'Naruto Tập 60', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000528', N'Naruto Tập 61', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000529', N'Naruto Tập 62', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000530', N'Naruto Tập 63', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000531', N'Naruto Tập 64', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000532', N'Naruto Tập 65', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000533', N'Naruto Tập 66', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000534', N'Naruto Tập 67', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000535', N'Naruto Tập 68', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000536', N'Naruto Tập 69', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000537', N'Naruto Tập 70', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000538', N'Naruto Tập 71', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000539', N'Naruto Tập 72', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000540', N'Naruto Tập 73', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000541', N'Naruto Tập 74', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000542', N'Naruto Tập 75', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000543', N'Naruto Tập 76', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000544', N'Naruto Tập 77', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000545', N'Naruto Tập 78', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000546', N'Naruto Tập 79', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000547', N'Naruto Tập 80', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000548', N'Naruto Tập 81', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000549', N'Naruto Tập 82', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000550', N'Naruto Tập 83', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000551', N'Naruto Tập 84', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000552', N'Naruto Tập 85', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000553', N'Naruto Tập 86', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000554', N'Naruto Tập 87', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000555', N'Naruto Tập 88', 'NXB00007', '01/01/2016', 1, 2010, 780000, 'DG000001')
GO
insert into [tblSach] values ('S0000556', N'Naruto Tập 89', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000557', N'Naruto Tập 90', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000558', N'Naruto Tập 91', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000559', N'Naruto Tập 92', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000560', N'Naruto Tập 93', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000561', N'Naruto Tập 94', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000562', N'Naruto Tập 95', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000563', N'Naruto Tập 96', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000564', N'Naruto Tập 97', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000565', N'Naruto Tập 98', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000566', N'Naruto Tập 99', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000567', N'Naruto Tập 100', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000568', N'Naruto Tập 101', 'NXB00007', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000569', N'First Library Of Learning', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000570', N'Junie B. Jones', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000571', N'The Wheel of Time', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000572', N'Harry Hole', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000573', N'Paddington Bear', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000574', N'The Inheritance Cycle', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000575', N'Tokugawa Ieyasu', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000576', N'Ramona', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000577', N'The Dark Tower', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000578', N'Nontan', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000579', N'Curious George', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000580', N'Thuyè̂n trưởng Quà̂n Lót', 'NXB00008', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000581', N'Đảo Hải Tặc Tập 145', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000582', N'Đảo Hải Tặc Tập 146', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000583', N'Đảo Hải Tặc Tập 147', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000584', N'Đảo Hải Tặc Tập 148', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000585', N'Đảo Hải Tặc Tập 149', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000586', N'Đảo Hải Tặc Tập 150', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000587', N'Đảo Hải Tặc Tập 151', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000588', N'Đảo Hải Tặc Tập 152', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000589', N'Đảo Hải Tặc Tập 153', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000590', N'Đảo Hải Tặc Tập 154', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000591', N'Đảo Hải Tặc Tập 155', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000592', N'Đảo Hải Tặc Tập 156', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000593', N'Đảo Hải Tặc Tập 157', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000594', N'Đảo Hải Tặc Tập 158', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000595', N'Đảo Hải Tặc Tập 159', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000596', N'Đảo Hải Tặc Tập 160', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000597', N'Đảo Hải Tặc Tập 161', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000598', N'Đảo Hải Tặc Tập 162', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000599', N'Đảo Hải Tặc Tập 163', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000600', N'Đảo Hải Tặc Tập 164', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000601', N'Đảo Hải Tặc Tập 165', 'NXB00019', '01/01/2016', 2, 2012, 100000, '')
GO
insert into [tblSach] values ('S0000602', N'Đảo Hải Tặc Tập 166', 'NXB00019', '01/01/2016', 1, 2012, 52000, '')
GO
insert into [tblSach] values ('S0000603', N'Đảo Hải Tặc Tập 167', 'NXB00019', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000604', N'Đảo Hải Tặc Tập 168', 'NXB00019', '01/01/2016', 2, 2010, 450000, '')
GO
insert into [tblSach] values ('S0000605', N'Đảo Hải Tặc Tập 169', 'NXB00019', '01/01/2016', 1, 2012, 2000000, '')
GO
insert into [tblSach] values ('S0000606', N'Đảo Hải Tặc Tập 170', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000607', N'Đảo Hải Tặc Tập 171', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000608', N'Đảo Hải Tặc Tập 172', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000609', N'Đảo Hải Tặc Tập 173', 'NXB00019', '01/01/2016', 2, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000610', N'Đảo Hải Tặc Tập 174', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000611', N'Đảo Hải Tặc Tập 175', 'NXB00019', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000612', N'Đảo Hải Tặc Tập 176', 'NXB00019', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000613', N'Đảo Hải Tặc Tập 177', 'NXB00019', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000614', N'Đảo Hải Tặc Tập 178', 'NXB00019', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000615', N'Đảo Hải Tặc Tập 179', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000616', N'Đảo Hải Tặc Tập 180', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000617', N'Đảo Hải Tặc Tập 181', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000618', N'Đảo Hải Tặc Tập 182', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000619', N'Đảo Hải Tặc Tập 183', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000620', N'Đảo Hải Tặc Tập 184', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000621', N'Đảo Hải Tặc Tập 185', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000622', N'Đảo Hải Tặc Tập 186', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000623', N'Đảo Hải Tặc Tập 187', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000624', N'Đảo Hải Tặc Tập 188', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000625', N'Đảo Hải Tặc Tập 189', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000626', N'Đảo Hải Tặc Tập 190', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000627', N'Đảo Hải Tặc Tập 191', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000628', N'Đảo Hải Tặc Tập 192', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000629', N'Đảo Hải Tặc Tập 193', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000630', N'Đảo Hải Tặc Tập 194', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000631', N'Đảo Hải Tặc Tập 195', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000632', N'Đảo Hải Tặc Tập 196', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000633', N'Đảo Hải Tặc Tập 197', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000634', N'Đảo Hải Tặc Tập 198', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000635', N'Đảo Hải Tặc Tập 199', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000636', N'Đảo Hải Tặc Tập 200', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000637', N'Đảo Hải Tặc Tập 201', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000638', N'Đảo Hải Tặc Tập 202', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000639', N'Đảo Hải Tặc Tập 203', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000640', N'Đảo Hải Tặc Tập 204', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000641', N'Đảo Hải Tặc Tập 205', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000642', N'Đảo Hải Tặc Tập 206', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000643', N'Đảo Hải Tặc Tập 207', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000644', N'Đảo Hải Tặc Tập 208', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000645', N'Đảo Hải Tặc Tập 209', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000646', N'Đảo Hải Tặc Tập 210', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000647', N'Đảo Hải Tặc Tập 211', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000648', N'Đảo Hải Tặc Tập 212', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000649', N'Đảo Hải Tặc Tập 213', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000650', N'Đảo Hải Tặc Tập 214', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000651', N'Đảo Hải Tặc Tập 215', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000652', N'Đảo Hải Tặc Tập 216', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000653', N'Đảo Hải Tặc Tập 217', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000654', N'Đảo Hải Tặc Tập 218', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000655', N'Đảo Hải Tặc Tập 219', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000656', N'Đảo Hải Tặc Tập 220', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000657', N'Đảo Hải Tặc Tập 221', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000658', N'Đảo Hải Tặc Tập 222', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000659', N'Đảo Hải Tặc Tập 223', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000660', N'Đảo Hải Tặc Tập 224', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000661', N'Đảo Hải Tặc Tập 225', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000662', N'Đảo Hải Tặc Tập 226', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000663', N'Đảo Hải Tặc Tập 227', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000664', N'Đảo Hải Tặc Tập 228', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000665', N'Đảo Hải Tặc Tập 229', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000666', N'Đảo Hải Tặc Tập 230', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000667', N'Đảo Hải Tặc Tập 231', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000668', N'Đảo Hải Tặc Tập 232', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000669', N'Đảo Hải Tặc Tập 233', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000670', N'Đảo Hải Tặc Tập 234', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000671', N'Đảo Hải Tặc Tập 235', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000672', N'Đảo Hải Tặc Tập 236', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000673', N'Đảo Hải Tặc Tập 237', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000674', N'Đảo Hải Tặc Tập 238', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000675', N'Đảo Hải Tặc Tập 239', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000676', N'Đảo Hải Tặc Tập 240', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000677', N'Đảo Hải Tặc Tập 241', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000678', N'Đảo Hải Tặc Tập 242', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000679', N'Đảo Hải Tặc Tập 243', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000680', N'Đảo Hải Tặc Tập 244', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000681', N'Đảo Hải Tặc Tập 245', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000682', N'Đảo Hải Tặc Tập 246', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000683', N'Đảo Hải Tặc Tập 247', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000684', N'Đảo Hải Tặc Tập 248', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000685', N'Đảo Hải Tặc Tập 249', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000686', N'Đảo Hải Tặc Tập 250', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000687', N'Đảo Hải Tặc Tập 251', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000688', N'Đảo Hải Tặc Tập 252', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000689', N'Đảo Hải Tặc Tập 253', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000690', N'Đảo Hải Tặc Tập 254', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000691', N'Đảo Hải Tặc Tập 255', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000692', N'Đảo Hải Tặc Tập 256', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000693', N'Đảo Hải Tặc Tập 257', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000694', N'Đảo Hải Tặc Tập 258', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000695', N'Đảo Hải Tặc Tập 259', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000696', N'Đảo Hải Tặc Tập 260', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000697', N'Đảo Hải Tặc Tập 261', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000698', N'Đảo Hải Tặc Tập 262', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000699', N'Đảo Hải Tặc Tập 263', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000700', N'Đảo Hải Tặc Tập 264', 'NXB00019', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000701', N'Đảo Hải Tặc Tập 265', 'NXB00019', '01/01/2016', 2, 2012, 100000, '')
GO
insert into [tblSach] values ('S0000702', N'Đảo Hải Tặc Tập 266', 'NXB00019', '01/01/2016', 1, 2012, 52000, '')
GO
insert into [tblSach] values ('S0000703', N'Đảo Hải Tặc Tập 267', 'NXB00019', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000704', N'Đảo Hải Tặc Tập 268', 'NXB00019', '01/01/2016', 2, 2010, 450000, '')
GO
insert into [tblSach] values ('S0000705', N'Đảo Hải Tặc Tập 269', 'NXB00019', '01/01/2016', 1, 2012, 2000000, '')
GO
insert into [tblSach] values ('S0000706', N'Mike-neko Holmes series', 'NXB00006', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000707', N'Rich Dad, Poor Dad', 'NXB00009', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000708', N'Kurt Wallander', 'NXB00009', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000709', N'Sagaen om Isfolket', 'NXB00009', '01/01/2016', 2, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000710', N'The Legend of the Ice People', 'NXB00009', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000711', N'Fear Street', 'NXB00009', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000712', N'The Vampire Chronicles', 'NXB00009', '01/01/2016', 2, 2011, 500000, 'DG000009')
GO
insert into [tblSach] values ('S0000713', N'Pippi Longstocking', 'NXB00009', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000714', N'Yutaka Hara', 'NXB00009', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000715', N'The Joy of Cooking	', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000716', N'Super Mapple', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000717', N'Chart Shiki', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000718', N'Eigo Kihon Tangoshu', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000719', N'Compilation of basic English vocabulary', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000720', N'Siken Ni Deru Eitango', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000721', N'English vocabulary in examinations', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000722', N'Shin Eiwa Chu Jiten', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000723', N'Tân từ điển Anh-Nhật-Hoa', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000724', N'Tân từ điển', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000725', N'Tân Thế Giới', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000726', N'Hai thế giới', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000727', N'Thần thoại Hy Lạp', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000728', N'Thần thoại Bắc Âu', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000729', N'Hercules', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000730', N'Zeus', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000731', N'Ô đi xê', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000732', N'Khải huyền', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000733', N'Địa đàng', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000734', N'Vội vàng', 'NXB00009', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000735', N'Số đỏ', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000736', N'Những người khốn khổ', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000737', N'Người cùng khổ', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000738', N'Hồng lâu mộng', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000739', N'Thuỷ hử', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000740', N'Obunsha Kogo Jiten', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000741', N'Obunsha ', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000742', N'Dictionary of Archaisms', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000743', N'Sanseido Kokugo Jiten', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000744', N'Sanseido ', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000745', N'Dictionary of the Nhật Language', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000746', N'Katei Ni Okeru Jissaiteki Kango No Hiketsu', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000747', N'Key to Practical Personal Care at Home', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000748', N'C Program Design', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000749', N'Clean Code', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000750', N'Tôi đi code dạo', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000751', N'Nhập môn lập trình', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000752', N'Kỹ thuật lập trình', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000753', N'Hệ điều hành', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000754', N'Cấu trúc dữ liệu và giải thuật', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000755', N'Lập trình trực quan', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000756', N'Lập trình hướng đối tượng', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000757', N'Code Complete', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000758', N'Beginning of C++ ', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000759', N'The Little Prince', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000760', N'Le Petit Prince', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000761', N'Au Revoir', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000762', N'Bonjour', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000763', N'Bí ẩn tuổi thơ', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000764', N'Hành trình đi tìm ngôi sao bán hàng chuyên nghiệp', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000765', N'Phê bình văn học hậu hiện đại Việt Nam', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000766', N'Lời người Man di hiện đại', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000767', N'Nguyễn Văn Vĩnh là ai?', 'NXB00010', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000768', N'Chủ nghĩa tự do truyền thống ', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000769', N'Việt Nam hành trình đi đến phồn vinh', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000770', N'Khoa học thách thức của thế kỷ 21', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000771', N'Vũ trụ và hoa sen', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000772', N'Hướng đến kỷ nguyên hậu nhà nước phúc lợi', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000773', N'Từ Mỹ học đến các loại hình nghệ thuật', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000774', N'Nghệ thuật viết luận văn', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000775', N'Đối thoại Socratic 1', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000776', N'Emile hay là về giáo dục', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000777', N'Kafka vì một nền văn học thiểu số', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000778', N'Cẩm nang xây dựng dự án', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000779', N'Văn minh vật chất người việt', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000780', N'Đạo đức học Phật giáo', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000781', N'Pyotr Đại đế', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000782', N'Tri thức khách quan', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000783', N'Cách ta nghĩ', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000784', N'Phạm Quỳnh du ký', 'NXB00011', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000785', N'Phác thảo văn học Việt Nam hiện đại', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000786', N'Các nguyên tố', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000787', N'Giáo dục: Xin cho tôi nói thẳng', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000788', N'Tâm lý học đám đông', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000789', N'Bàn về tự do', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000790', N'Famil, Friends, and Country', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000791', N'Phương pháp 6', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000792', N'Plan B', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000793', N'Ý nghĩa mọi thứ trên đời', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000794', N'Vật lý hiện đại giữa đời thường', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000795', N'Những đỉnh cao chỉ huy', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000796', N'Gullible du ký', 'NXB00012', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000797', N'Nhập môn tư duy sáng tạo khoa học', 'NXB00013', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000798', N'Ảnh hưởng của sức mạnh trên biển', 'NXB00014', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000799', N'Sụp đổ', 'NXB00015', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000800', N'Đường sống', 'NXB00016', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000801', N'Thám tử lừng danh Conan Tập 1', 'NXB00018', '01/01/2016', 2, 2012, 100000, '')
GO
insert into [tblSach] values ('S0000802', N'Thám tử lừng danh Conan Tập 2', 'NXB00018', '01/01/2016', 1, 2012, 52000, '')
GO
insert into [tblSach] values ('S0000803', N'Thám tử lừng danh Conan Tập 3', 'NXB00018', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000804', N'Thám tử lừng danh Conan Tập 4', 'NXB00018', '01/01/2016', 2, 2010, 450000, '')
GO
insert into [tblSach] values ('S0000805', N'Thám tử lừng danh Conan Tập 5', 'NXB00018', '01/01/2016', 1, 2012, 2000000, '')
GO
insert into [tblSach] values ('S0000806', N'Thám tử lừng danh Conan Tập 6', 'NXB00018', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000807', N'Thám tử lừng danh Conan Tập 7', 'NXB00018', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000808', N'Thám tử lừng danh Conan Tập 8', 'NXB00018', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000809', N'Thám tử lừng danh Conan Tập 9', 'NXB00018', '01/01/2016', 2, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000810', N'Thám tử lừng danh Conan Tập 10', 'NXB00018', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000811', N'Thám tử lừng danh Conan Tập 11', 'NXB00018', '01/01/2016', 1, 2012, 200000, 'DG000005')
GO
insert into [tblSach] values ('S0000812', N'Thám tử lừng danh Conan Tập 12', 'NXB00018', '01/01/2016', 2, 2011, 500000, 'DG000007')
GO
insert into [tblSach] values ('S0000813', N'Thám tử lừng danh Conan Tập 13', 'NXB00018', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000814', N'Thám tử lừng danh Conan Tập 14', 'NXB00018', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000815', N'Thám tử lừng danh Conan Tập 15', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000816', N'Thám tử lừng danh Conan Tập 16', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000817', N'Thám tử lừng danh Conan Tập 17', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000818', N'Thám tử lừng danh Conan Tập 18', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000819', N'Thám tử lừng danh Conan Tập 19', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000820', N'Thám tử lừng danh Conan Tập 20', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000821', N'Thám tử lừng danh Conan Tập 21', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000822', N'Thám tử lừng danh Conan Tập 22', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000823', N'Thám tử lừng danh Conan Tập 23', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000824', N'Thám tử lừng danh Conan Tập 24', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000825', N'Thám tử lừng danh Conan Tập 25', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000826', N'Thám tử lừng danh Conan Tập 26', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000827', N'Thám tử lừng danh Conan Tập 27', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000828', N'Thám tử lừng danh Conan Tập 28', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000829', N'Thám tử lừng danh Conan Tập 29', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000830', N'Thám tử lừng danh Conan Tập 30', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000831', N'Thám tử lừng danh Conan Tập 31', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000832', N'Thám tử lừng danh Conan Tập 32', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000833', N'Thám tử lừng danh Conan Tập 33', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000834', N'Thám tử lừng danh Conan Tập 34', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000835', N'Thám tử lừng danh Conan Tập 35', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000836', N'Thám tử lừng danh Conan Tập 36', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000837', N'Thám tử lừng danh Conan Tập 37', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000838', N'Thám tử lừng danh Conan Tập 38', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000839', N'Thám tử lừng danh Conan Tập 39', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000840', N'Thám tử lừng danh Conan Tập 40', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000841', N'Thám tử lừng danh Conan Tập 41', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000842', N'Thám tử lừng danh Conan Tập 42', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000843', N'Thám tử lừng danh Conan Tập 43', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000844', N'Thám tử lừng danh Conan Tập 44', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000845', N'Thám tử lừng danh Conan Tập 45', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000846', N'Thám tử lừng danh Conan Tập 46', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000847', N'Thám tử lừng danh Conan Tập 47', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000848', N'Thám tử lừng danh Conan Tập 48', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000849', N'Thám tử lừng danh Conan Tập 49', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000850', N'Thám tử lừng danh Conan Tập 50', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000851', N'Thám tử lừng danh Conan Tập 51', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000852', N'Thám tử lừng danh Conan Tập 52', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000853', N'Thám tử lừng danh Conan Tập 53', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000854', N'Thám tử lừng danh Conan Tập 54', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000855', N'Thám tử lừng danh Conan Tập 55', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000856', N'Thám tử lừng danh Conan Tập 56', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000857', N'Thám tử lừng danh Conan Tập 57', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000858', N'Thám tử lừng danh Conan Tập 58', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000859', N'Thám tử lừng danh Conan Tập 59', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000860', N'Thám tử lừng danh Conan Tập 60', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000861', N'Thám tử lừng danh Conan Tập 61', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000862', N'Thám tử lừng danh Conan Tập 62', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000863', N'Thám tử lừng danh Conan Tập 63', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000864', N'Thám tử lừng danh Conan Tập 64', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000865', N'Thám tử lừng danh Conan Tập 65', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000866', N'Thám tử lừng danh Conan Tập 66', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000867', N'Thám tử lừng danh Conan Tập 67', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000868', N'Thám tử lừng danh Conan Tập 68', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000869', N'Thám tử lừng danh Conan Tập 69', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000870', N'Thám tử lừng danh Conan Tập 70', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000871', N'Thám tử lừng danh Conan Tập 71', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000872', N'Thám tử lừng danh Conan Tập 72', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000873', N'Thám tử lừng danh Conan Tập 73', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000874', N'Thám tử lừng danh Conan Tập 74', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000875', N'Thám tử lừng danh Conan Tập 75', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000876', N'Thám tử lừng danh Conan Tập 76', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000877', N'Thám tử lừng danh Conan Tập 77', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000878', N'Thám tử lừng danh Conan Tập 78', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000879', N'Thám tử lừng danh Conan Tập 79', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000880', N'Thám tử lừng danh Conan Tập 80', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000881', N'Thám tử lừng danh Conan Tập 81', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000882', N'Thám tử lừng danh Conan Tập 82', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000883', N'Thám tử lừng danh Conan Tập 83', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000884', N'Thám tử lừng danh Conan Tập 84', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000885', N'Thám tử lừng danh Conan Tập 85', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000886', N'Thám tử lừng danh Conan Tập 86', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000887', N'Thám tử lừng danh Conan Tập 87', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000888', N'Thám tử lừng danh Conan Tập 88', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000889', N'Thám tử lừng danh Conan Tập 89', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000890', N'Thám tử lừng danh Conan Tập 90', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000891', N'Thám tử lừng danh Conan Tập 91', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000892', N'Thám tử lừng danh Conan Tập 92', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000893', N'Thám tử lừng danh Conan Tập 93', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000894', N'Thám tử lừng danh Conan Tập 94', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000895', N'Thám tử lừng danh Conan Tập 95', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000896', N'Thám tử lừng danh Conan Tập 96', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000897', N'Thám tử lừng danh Conan Tập 97', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000898', N'Thám tử lừng danh Conan Tập 98', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000899', N'Thám tử lừng danh Conan Tập 99', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000900', N'Thám tử lừng danh Conan Tập 100', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000901', N'Thám tử lừng danh Conan Tập 101', 'NXB00018', '01/01/2016', 2, 2012, 100000, '')
GO
insert into [tblSach] values ('S0000902', N'Thám tử lừng danh Conan Tập 102', 'NXB00018', '01/01/2016', 1, 2012, 52000, '')
GO
insert into [tblSach] values ('S0000903', N'Thám tử lừng danh Conan Tập 103', 'NXB00018', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000904', N'Thám tử lừng danh Conan Tập 104', 'NXB00018', '01/01/2016', 2, 2010, 450000, '')
GO
insert into [tblSach] values ('S0000905', N'Thám tử lừng danh Conan Tập 105', 'NXB00018', '01/01/2016', 1, 2012, 2000000, '')
GO
insert into [tblSach] values ('S0000906', N'Thám tử lừng danh Conan Tập 106', 'NXB00018', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000907', N'Thám tử lừng danh Conan Tập 107', 'NXB00018', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000908', N'Thám tử lừng danh Conan Tập 108', 'NXB00018', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000909', N'Thám tử lừng danh Conan Tập 109', 'NXB00018', '01/01/2016', 2, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000910', N'Thám tử lừng danh Conan Tập 110', 'NXB00018', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000911', N'Thám tử lừng danh Conan Tập 111', 'NXB00018', '01/01/2016', 1, 2012, 200000, '')
GO
insert into [tblSach] values ('S0000912', N'Thám tử lừng danh Conan Tập 112', 'NXB00018', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000913', N'Thám tử lừng danh Conan Tập 113', 'NXB00018', '01/01/2016', 2, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000914', N'Thám tử lừng danh Conan Tập 114', 'NXB00018', '01/01/2016', 1, 2011, 500000, '')
GO
insert into [tblSach] values ('S0000915', N'Thám tử lừng danh Conan Tập 115', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000916', N'Thám tử lừng danh Conan Tập 116', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000917', N'Thám tử lừng danh Conan Tập 117', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000918', N'Thám tử lừng danh Conan Tập 118', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000919', N'Thám tử lừng danh Conan Tập 119', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000920', N'Thám tử lừng danh Conan Tập 120', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000921', N'Thám tử lừng danh Conan Tập 121', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000922', N'Thám tử lừng danh Conan Tập 122', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000923', N'Thám tử lừng danh Conan Tập 123', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000924', N'Thám tử lừng danh Conan Tập 124', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000925', N'Thám tử lừng danh Conan Tập 125', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000926', N'Thám tử lừng danh Conan Tập 126', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000927', N'Thám tử lừng danh Conan Tập 127', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000928', N'Thám tử lừng danh Conan Tập 128', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000929', N'Thám tử lừng danh Conan Tập 129', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000930', N'Thám tử lừng danh Conan Tập 130', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000931', N'Thám tử lừng danh Conan Tập 131', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000932', N'Thám tử lừng danh Conan Tập 132', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000933', N'Thám tử lừng danh Conan Tập 133', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000934', N'Thám tử lừng danh Conan Tập 134', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000935', N'Thám tử lừng danh Conan Tập 135', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000936', N'Thám tử lừng danh Conan Tập 136', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000937', N'Thám tử lừng danh Conan Tập 137', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000938', N'Thám tử lừng danh Conan Tập 138', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000939', N'Thám tử lừng danh Conan Tập 139', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000940', N'Thám tử lừng danh Conan Tập 140', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000941', N'Thám tử lừng danh Conan Tập 141', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000942', N'Thám tử lừng danh Conan Tập 141', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000943', N'Thám tử lừng danh Conan Tập 143', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000944', N'Thám tử lừng danh Conan Tập 144', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000945', N'Thám tử lừng danh Conan Tập 145', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000946', N'Thám tử lừng danh Conan Tập 146', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000947', N'Thám tử lừng danh Conan Tập 147', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000948', N'Thám tử lừng danh Conan Tập 148', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000949', N'Thám tử lừng danh Conan Tập 149', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000950', N'Thám tử lừng danh Conan Tập 150', 'NXB00018', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000951', N'Đô Rê Mon Tập 1', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000952', N'Đô Rê Mon Tập 2', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000953', N'Đô Rê Mon Tập 3', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000954', N'Đô Rê Mon Tập 4', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000955', N'Đô Rê Mon Tập 5', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000956', N'Đô Rê Mon Tập 6', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000957', N'Đô Rê Mon Tập 7', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000958', N'Đô Rê Mon Tập 8', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000959', N'Đô Rê Mon Tập 9', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000960', N'Đô Rê Mon Tập 10', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000961', N'Đô Rê Mon Tập 11', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000962', N'Đô Rê Mon Tập 12', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000963', N'Đô Rê Mon Tập 13', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000964', N'Đô Rê Mon Tập 14', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000965', N'Đô Rê Mon Tập 15', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000966', N'Đô Rê Mon Tập 16', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000967', N'Đô Rê Mon Tập 17', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000968', N'Đô Rê Mon Tập 18', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000969', N'Đô Rê Mon Tập 19', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000970', N'Đô Rê Mon Tập 20', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000971', N'Đô Rê Mon Tập 21', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000972', N'Đô Rê Mon Tập 22', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000973', N'Đô Rê Mon Tập 23', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000974', N'Đô Rê Mon Tập 24', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000975', N'Đô Rê Mon Tập 25', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000976', N'Đô Rê Mon Tập 26', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000977', N'Đô Rê Mon Tập 27', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000978', N'Đô Rê Mon Tập 28', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000979', N'Đô Rê Mon Tập 29', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000980', N'Đô Rê Mon Tập 30', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000981', N'Đô Rê Mon Tập 31', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000982', N'Đô Rê Mon Tập 32', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000983', N'Đô Rê Mon Tập 33', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000984', N'Đô Rê Mon Tập 34', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000985', N'Đô Rê Mon Tập 35', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000986', N'Đô Rê Mon Tập 36', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000987', N'Đô Rê Mon Tập 37', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000988', N'Đô Rê Mon Tập 38', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000989', N'Đô Rê Mon Tập 39', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000990', N'Đô Rê Mon Tập 40', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000991', N'Đô Rê Mon Tập 41', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000992', N'Đô Rê Mon Tập 42', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000993', N'Đô Rê Mon Tập 43', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000994', N'Đô Rê Mon Tập 44', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000995', N'Đô Rê Mon Tập 45', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000996', N'Đô Rê Mon Tập 46', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000997', N'Đô Rê Mon Tập 47', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO
insert into [tblSach] values ('S0000998', N'Đô Rê Mon Tập 48', 'NXB00020', '01/01/2016', 1, 2010, 780000, 'DG000001')
GO
insert into [tblSach] values ('S0000999', N'Đô Rê Mon Tập 49', 'NXB00020', '01/01/2016', 1, 2010, 780000, '')
GO


/****** Object:  Table [dbo].[tblTacGia]    Script Date: 6/25/2018 8:16:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTacGia](
	[matacgia] [nvarchar](8) NOT NULL,
	[tentacgia] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblTacGia] PRIMARY KEY CLUSTERED 
(
	[matacgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [tblTacGia] values ('TG000', '')
GO
insert into [tblTacGia] values ('TG001', N'Phan Thanh Tùng')
GO
insert into [tblTacGia] values ('TG002', N'Nguyễn Thành Luân') 
GO
insert into [tblTacGia] values ('TG003', N'Nguyễn Văn A')
GO
insert into [tblTacGia] values ('TG004', N'Lại Thi Lại')
GO
insert into [tblTacGia] values ('TG005', N'Nguyễn Nhật Ánh')
GO
insert into [tblTacGia] values ('TG006', N'Trang Hạ')
GO
insert into [tblTacGia] values ('TG007', N'Nguyễn Phong Việt')
GO
insert into [tblTacGia] values ('TG008', N'Sơn Tùng')
GO
insert into [tblTacGia] values ('TG009', N'Anh Khang')
GO
insert into [tblTacGia] values ('TG010', N'Sơn Paris')
GO
insert into [tblTacGia] values ('TG011', N'Gào')
GO
insert into [tblTacGia] values ('TG012', N'Thét')
GO
insert into [tblTacGia] values ('TG013', N'Phan Thanh Tuấn')
GO
insert into [tblTacGia] values ('TG014', N'Phan Quân')
GO
insert into [tblTacGia] values ('TG015', N'Phan Hải')
GO
insert into [tblTacGia] values ('TG016', N'Phan Thị')
GO
insert into [tblTacGia] values ('TG017', N'Phan Phong Trào')
GO
insert into [tblTacGia] values ('TG018', N'Phan Xuân Quang')
GO
insert into [tblTacGia] values ('TG019', N'Lê Xuân Trường')
GO
insert into [tblTacGia] values ('TG020', N'Hà Nội')
GO
insert into [tblTacGia] values ('TG021', N'Hồ Chí Minh')
GO
insert into [tblTacGia] values ('TG022', N'Đà Nẵng')
GO
insert into [tblTacGia] values ('TG023', N'Phan Cuồng')
GO
insert into [tblTacGia] values ('TG024', N'Phan Thành')
GO
insert into [tblTacGia] values ('TG025', N'Nguyễn Ngọc Thạch')
GO
insert into [tblTacGia] values ('TG026', N'Đỗ Nhật Nam')
GO
insert into [tblTacGia] values ('TG027', N'Hamlet Trương')
GO
insert into [tblTacGia] values ('TG028', N'Iris Cao')
GO
insert into [tblTacGia] values ('TG029', N'Adam Lalana')
GO
insert into [tblTacGia] values ('TG030', N'Ronaldo')
GO
insert into [tblTacGia] values ('TG031', N'Wayne Bruce')
GO
insert into [tblTacGia] values ('TG032', N'Clark Kent')
GO
insert into [tblTacGia] values ('TG033', N'Diana Prince')
GO
insert into [tblTacGia] values ('TG034', N'Iron Man')
GO
insert into [tblTacGia] values ('TG035', N'Tony Stark')
GO
insert into [tblTacGia] values ('TG036', N'Bruce Banner')
GO
insert into [tblTacGia] values ('TG037', N'Steve Roger')
GO
insert into [tblTacGia] values ('TG038', N'Thor')
GO
insert into [tblTacGia] values ('TG039', N'Hawkeye')
GO
insert into [tblTacGia] values ('TG040', N'Natasha')
GO
insert into [tblTacGia] values ('TG041', N'Vision')
GO
insert into [tblTacGia] values ('TG042', N'Xuân Diệu')
GO
insert into [tblTacGia] values ('TG043', N'Xuân Quỳnh')
GO
insert into [tblTacGia] values ('TG044', N'Tú Xương')
GO
insert into [tblTacGia] values ('TG045', N'Tú Mỡ')
GO
insert into [tblTacGia] values ('TG046', N'Đỗ Trọng Phụng')
GO
insert into [tblTacGia] values ('TG047', N'Hồ Xuân Hương')
GO
insert into [tblTacGia] values ('TG048', N'Bà Huyện Thanh Quan')
GO
insert into [tblTacGia] values ('TG049', N'Nguyễn Du')
GO
insert into [tblTacGia] values ('TG050', N'Đỗ Phủ')
GO
insert into [tblTacGia] values ('TG051', N'Nguyễn Bỉnh Khiêm')
GO
insert into [tblTacGia] values ('TG052', N'Chế Lan Viên')
GO
insert into [tblTacGia] values ('TG053', N'Lê Đạt')
GO
insert into [tblTacGia] values ('TG054', N'Lê Đỗ')
GO
insert into [tblTacGia] values ('TG055', N'Lê Rớt')
GO
insert into [tblTacGia] values ('TG056', N'Lê Tạch')
GO
insert into [tblTacGia] values ('TG057', N'Nguyễn Trãi')
GO
insert into [tblTacGia] values ('TG058', N'Tản Đà')
GO
insert into [tblTacGia] values ('TG059', N'Cao Bá Quát')
GO
insert into [tblTacGia] values ('TG060', N'Hàn Mạc Tử')
GO
insert into [tblTacGia] values ('TG061', N'Nguyễn Duy')
GO
insert into [tblTacGia] values ('TG062', N'Tố Hữu')
GO
insert into [tblTacGia] values ('TG063', N'Nguyễn Bính')
GO
insert into [tblTacGia] values ('TG064', N'Nguyễn Khuyến')
GO
insert into [tblTacGia] values ('TG065', N'Huy Cận')
GO
insert into [tblTacGia] values ('TG066', N'Luân Cận')
GO
insert into [tblTacGia] values ('TG067', N'Phan Bội Châu')
GO
insert into [tblTacGia] values ('TG068', N'Phan Chu Trinh')
GO
insert into [tblTacGia] values ('TG069', N'Lưu Quang Vũ')
GO
insert into [tblTacGia] values ('TG070', N'Bằng Việt')
GO
insert into [tblTacGia] values ('TG071', N'Quách Gia')
GO
insert into [tblTacGia] values ('TG072', N'Thu Bồn')
GO
insert into [tblTacGia] values ('TG073', N'Trần Đăng Khoa')
GO
insert into [tblTacGia] values ('TG074', N'Nguyễn Khoa Điềm')
GO
insert into [tblTacGia] values ('TG075', N'Nguyễn Đình Chiểu')
GO
insert into [tblTacGia] values ('TG076', N'Nguyễn Công Trứ')
GO
insert into [tblTacGia] values ('TG077', N'Lưu Trọng Lư')
GO
insert into [tblTacGia] values ('TG078', N'Đỗ Trung Quân')
GO
insert into [tblTacGia] values ('TG079', N'Lý Bạch')
GO
insert into [tblTacGia] values ('TG080', N'Bạch Cư Dị')
GO
insert into [tblTacGia] values ('TG081', N'Vương Duy')
GO
insert into [tblTacGia] values ('TG082', N'Khổng Tử')
GO
insert into [tblTacGia] values ('TG083', N'Đỗ Mục')
GO
insert into [tblTacGia] values ('TG084', N'Gia Cát Lượng')
GO
insert into [tblTacGia] values ('TG085', N'Tào Tháo')
GO
insert into [tblTacGia] values ('TG086', N'Tào Thực')
GO
insert into [tblTacGia] values ('TG087', N'Lục Tốn')
GO
insert into [tblTacGia] values ('TG088', N'Chu Du')
GO
insert into [tblTacGia] values ('TG089', N'Tuân Úc')
GO
insert into [tblTacGia] values ('TG090', N'Trương Cáp')
GO
insert into [tblTacGia] values ('TG091', N'Bàng Thống')
GO
insert into [tblTacGia] values ('TG092', N'Đồng Hoa')
GO
insert into [tblTacGia] values ('TG093', N'Đinh Diện')
GO
insert into [tblTacGia] values ('TG094', N'Đinh Mặc')
GO
insert into [tblTacGia] values ('TG095', N'Ngô Thừa Ân')
GO
insert into [tblTacGia] values ('TG096', N'J.K.Rowling')
GO
insert into [tblTacGia] values ('TG097', N'William Shakespeare')
GO
insert into [tblTacGia] values ('TG098', N'Lev Tolstoy')
GO
insert into [tblTacGia] values ('TG099', N'Victor Hugo')
GO
insert into [tblTacGia] values ('TG100', N'Puskin')
GO

/****** Object:  Table [dbo].[tblTacGiaSach]    Script Date: 6/25/2018 8:16:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTacGiaSach](
	[matacgiasach] [nvarchar](8) NOT NULL,
	[masach] [nvarchar](8) NULL,
	[matacgia] [nvarchar](8) NULL,
 CONSTRAINT [PK_tblTacGiaSach] PRIMARY KEY CLUSTERED 
(
	[matacgiasach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [tblTacGiaSach] values ('TGS00001', 'S0000001', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00002', 'S0000002', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00003', 'S0000003', 'TG006')
GO
insert into [tblTacGiaSach] values ('TGS00004', 'S0000004', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00005', 'S0000005', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00006', 'S0000006', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00007', 'S0000007', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00008', 'S0000008', 'TG031')
GO
insert into [tblTacGiaSach] values ('TGS00009', 'S0000009', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00010', 'S0000010', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00011', 'S0000011', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00012', 'S0000012', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00013', 'S0000013', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00014', 'S0000014', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00015', 'S0000015', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00016', 'S0000016', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00017', 'S0000017', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00018', 'S0000018', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00019', 'S0000019', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00020', 'S0000020', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00021', 'S0000021', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00022', 'S0000022', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00023', 'S0000023', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00024', 'S0000024', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00025', 'S0000025', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00026', 'S0000026', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00027', 'S0000027', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00028', 'S0000028', 'TG046')
GO
insert into [tblTacGiaSach] values ('TGS00029', 'S0000029', 'TG080')
GO
insert into [tblTacGiaSach] values ('TGS00030', 'S0000030', 'TG060')
GO
insert into [tblTacGiaSach] values ('TGS00031', 'S0000031', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00032', 'S0000032', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00033', 'S0000033', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00034', 'S0000034', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00035', 'S0000035', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00036', 'S0000036', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00037', 'S0000037', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00038', 'S0000038', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00039', 'S0000039', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00040', 'S0000040', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00041', 'S0000041', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00042', 'S0000042', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00043', 'S0000043', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00044', 'S0000044', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00045', 'S0000045', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00046', 'S0000046', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00047', 'S0000047', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00048', 'S0000048', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00049', 'S0000049', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00050', 'S0000050', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00051', 'S0000051', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00052', 'S0000052', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00053', 'S0000053', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00054', 'S0000054', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00055', 'S0000055', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00056', 'S0000056', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00057', 'S0000057', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00058', 'S0000058', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00059', 'S0000059', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00060', 'S0000060', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00061', 'S0000061', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00062', 'S0000062', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00063', 'S0000063', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00064', 'S0000064', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00065', 'S0000065', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00066', 'S0000066', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00067', 'S0000067', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00068', 'S0000068', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00069', 'S0000069', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00070', 'S0000070', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00071', 'S0000071', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00072', 'S0000072', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00073', 'S0000073', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00074', 'S0000074', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00075', 'S0000075', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00076', 'S0000076', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00077', 'S0000077', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00078', 'S0000078', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00079', 'S0000079', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00080', 'S0000080', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00081', 'S0000081', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00082', 'S0000082', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00083', 'S0000083', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00084', 'S0000084', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00085', 'S0000085', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00086', 'S0000086', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00087', 'S0000087', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00088', 'S0000088', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00089', 'S0000089', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00090', 'S0000090', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00091', 'S0000091', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00092', 'S0000092', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00093', 'S0000093', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00094', 'S0000094', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00095', 'S0000095', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00096', 'S0000096', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00097', 'S0000097', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00098', 'S0000098', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00099', 'S0000099', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00100', 'S0000100', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00101', 'S0000101', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00102', 'S0000102', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00103', 'S0000103', 'TG006')
GO
insert into [tblTacGiaSach] values ('TGS00104', 'S0000104', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00105', 'S0000105', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00106', 'S0000106', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00107', 'S0000107', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00108', 'S0000108', 'TG031')
GO
insert into [tblTacGiaSach] values ('TGS00109', 'S0000109', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00110', 'S0000110', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00111', 'S0000111', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00112', 'S0000112', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00113', 'S0000113', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00114', 'S0000114', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00115', 'S0000115', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00116', 'S0000116', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00117', 'S0000117', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00118', 'S0000118', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00119', 'S0000119', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00120', 'S0000120', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00121', 'S0000121', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00122', 'S0000122', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00123', 'S0000123', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00124', 'S0000124', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00125', 'S0000125', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00126', 'S0000126', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00127', 'S0000127', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00128', 'S0000128', 'TG046')
GO
insert into [tblTacGiaSach] values ('TGS00129', 'S0000129', 'TG080')
GO
insert into [tblTacGiaSach] values ('TGS00130', 'S0000130', 'TG060')
GO
insert into [tblTacGiaSach] values ('TGS00131', 'S0000131', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00132', 'S0000132', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00133', 'S0000133', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00134', 'S0000134', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00135', 'S0000135', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00136', 'S0000136', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00137', 'S0000137', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00138', 'S0000138', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00139', 'S0000139', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00140', 'S0000140', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00141', 'S0000141', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00142', 'S0000142', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00143', 'S0000143', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00144', 'S0000144', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00145', 'S0000145', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00146', 'S0000146', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00147', 'S0000147', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00148', 'S0000148', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00149', 'S0000149', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00150', 'S0000150', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00151', 'S0000151', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00152', 'S0000152', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00153', 'S0000153', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00154', 'S0000154', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00155', 'S0000155', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00156', 'S0000156', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00157', 'S0000157', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00158', 'S0000158', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00159', 'S0000159', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00160', 'S0000160', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00161', 'S0000161', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00162', 'S0000162', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00163', 'S0000163', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00164', 'S0000164', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00165', 'S0000165', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00166', 'S0000166', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00167', 'S0000167', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00168', 'S0000168', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00169', 'S0000169', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00170', 'S0000170', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00171', 'S0000171', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00172', 'S0000172', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00173', 'S0000173', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00174', 'S0000174', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00175', 'S0000175', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00176', 'S0000176', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00177', 'S0000177', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00178', 'S0000178', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00179', 'S0000179', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00180', 'S0000180', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00181', 'S0000181', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00182', 'S0000182', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00183', 'S0000183', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00184', 'S0000184', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00185', 'S0000185', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00186', 'S0000186', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00187', 'S0000187', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00188', 'S0000188', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00189', 'S0000189', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00190', 'S0000190', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00191', 'S0000191', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00192', 'S0000192', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00193', 'S0000193', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00194', 'S0000194', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00195', 'S0000195', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00196', 'S0000196', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00197', 'S0000197', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00198', 'S0000198', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00199', 'S0000199', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00200', 'S0000200', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00201', 'S0000201', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00202', 'S0000202', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00203', 'S0000203', 'TG006')
GO
insert into [tblTacGiaSach] values ('TGS00204', 'S0000204', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00205', 'S0000205', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00206', 'S0000206', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00207', 'S0000207', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00208', 'S0000208', 'TG031')
GO
insert into [tblTacGiaSach] values ('TGS00209', 'S0000209', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00210', 'S0000210', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00211', 'S0000211', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00212', 'S0000212', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00213', 'S0000213', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00214', 'S0000214', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00215', 'S0000215', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00216', 'S0000216', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00217', 'S0000217', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00218', 'S0000218', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00219', 'S0000219', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00220', 'S0000220', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00221', 'S0000221', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00222', 'S0000222', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00223', 'S0000223', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00224', 'S0000224', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00225', 'S0000225', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00226', 'S0000226', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00227', 'S0000227', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00228', 'S0000228', 'TG046')
GO
insert into [tblTacGiaSach] values ('TGS00229', 'S0000229', 'TG080')
GO
insert into [tblTacGiaSach] values ('TGS00230', 'S0000230', 'TG060')
GO
insert into [tblTacGiaSach] values ('TGS00231', 'S0000231', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00232', 'S0000232', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00233', 'S0000233', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00234', 'S0000234', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00235', 'S0000235', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00236', 'S0000236', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00237', 'S0000237', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00238', 'S0000238', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00239', 'S0000239', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00240', 'S0000240', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00241', 'S0000241', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00242', 'S0000242', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00243', 'S0000243', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00244', 'S0000244', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00245', 'S0000245', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00246', 'S0000246', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00247', 'S0000247', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00248', 'S0000248', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00249', 'S0000249', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00250', 'S0000250', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00251', 'S0000251', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00252', 'S0000252', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00253', 'S0000253', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00254', 'S0000254', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00255', 'S0000255', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00256', 'S0000256', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00257', 'S0000257', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00258', 'S0000258', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00259', 'S0000259', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00260', 'S0000260', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00261', 'S0000261', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00262', 'S0000262', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00263', 'S0000263', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00264', 'S0000264', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00265', 'S0000265', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00266', 'S0000266', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00267', 'S0000267', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00268', 'S0000268', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00269', 'S0000269', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00270', 'S0000270', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00271', 'S0000271', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00272', 'S0000272', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00273', 'S0000273', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00274', 'S0000274', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00275', 'S0000275', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00276', 'S0000276', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00277', 'S0000277', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00278', 'S0000278', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00279', 'S0000279', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00280', 'S0000280', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00281', 'S0000281', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00282', 'S0000282', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00283', 'S0000283', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00284', 'S0000284', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00285', 'S0000285', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00286', 'S0000286', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00287', 'S0000287', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00288', 'S0000288', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00289', 'S0000289', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00290', 'S0000290', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00291', 'S0000291', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00292', 'S0000292', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00293', 'S0000293', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00294', 'S0000294', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00295', 'S0000295', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00296', 'S0000296', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00297', 'S0000297', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00298', 'S0000298', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00299', 'S0000299', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00300', 'S0000300', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00301', 'S0000301', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00302', 'S0000302', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00303', 'S0000303', 'TG006')
GO
insert into [tblTacGiaSach] values ('TGS00304', 'S0000304', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00305', 'S0000305', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00306', 'S0000306', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00307', 'S0000307', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00308', 'S0000308', 'TG031')
GO
insert into [tblTacGiaSach] values ('TGS00309', 'S0000309', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00310', 'S0000310', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00311', 'S0000311', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00312', 'S0000312', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00313', 'S0000313', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00314', 'S0000314', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00315', 'S0000315', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00316', 'S0000316', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00317', 'S0000317', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00318', 'S0000318', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00319', 'S0000319', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00320', 'S0000320', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00321', 'S0000321', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00322', 'S0000322', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00323', 'S0000323', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00324', 'S0000324', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00325', 'S0000325', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00326', 'S0000326', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00327', 'S0000327', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00328', 'S0000328', 'TG046')
GO
insert into [tblTacGiaSach] values ('TGS00329', 'S0000329', 'TG080')
GO
insert into [tblTacGiaSach] values ('TGS00330', 'S0000330', 'TG060')
GO
insert into [tblTacGiaSach] values ('TGS00331', 'S0000331', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00332', 'S0000332', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00333', 'S0000333', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00334', 'S0000334', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00335', 'S0000335', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00336', 'S0000336', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00337', 'S0000337', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00338', 'S0000338', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00339', 'S0000339', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00340', 'S0000340', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00341', 'S0000341', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00342', 'S0000342', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00343', 'S0000343', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00344', 'S0000344', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00345', 'S0000345', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00346', 'S0000346', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00347', 'S0000347', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00348', 'S0000348', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00349', 'S0000349', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00350', 'S0000350', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00351', 'S0000351', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00352', 'S0000352', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00353', 'S0000353', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00354', 'S0000354', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00355', 'S0000355', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00356', 'S0000356', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00357', 'S0000357', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00358', 'S0000358', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00359', 'S0000359', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00360', 'S0000360', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00361', 'S0000361', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00362', 'S0000362', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00363', 'S0000363', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00364', 'S0000364', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00365', 'S0000365', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00366', 'S0000366', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00367', 'S0000367', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00368', 'S0000368', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00369', 'S0000369', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00370', 'S0000370', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00371', 'S0000371', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00372', 'S0000372', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00373', 'S0000373', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00374', 'S0000374', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00375', 'S0000375', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00376', 'S0000376', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00377', 'S0000377', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00378', 'S0000378', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00379', 'S0000379', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00380', 'S0000380', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00381', 'S0000381', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00382', 'S0000382', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00383', 'S0000383', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00384', 'S0000384', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00385', 'S0000385', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00386', 'S0000386', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00387', 'S0000387', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00388', 'S0000388', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00389', 'S0000389', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00390', 'S0000390', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00391', 'S0000391', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00392', 'S0000392', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00393', 'S0000393', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00394', 'S0000394', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00395', 'S0000395', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00396', 'S0000396', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00397', 'S0000397', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00398', 'S0000398', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00399', 'S0000399', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00400', 'S0000400', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00401', 'S0000401', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00402', 'S0000402', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00403', 'S0000403', 'TG006')
GO
insert into [tblTacGiaSach] values ('TGS00404', 'S0000404', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00405', 'S0000405', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00406', 'S0000406', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00407', 'S0000407', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00408', 'S0000408', 'TG031')
GO
insert into [tblTacGiaSach] values ('TGS00409', 'S0000409', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00410', 'S0000410', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00411', 'S0000411', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00412', 'S0000412', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00413', 'S0000413', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00414', 'S0000414', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00415', 'S0000415', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00416', 'S0000416', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00417', 'S0000417', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00418', 'S0000418', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00419', 'S0000419', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00420', 'S0000420', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00421', 'S0000421', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00422', 'S0000422', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00423', 'S0000423', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00424', 'S0000424', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00425', 'S0000425', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00426', 'S0000426', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00427', 'S0000427', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00428', 'S0000428', 'TG046')
GO
insert into [tblTacGiaSach] values ('TGS00429', 'S0000429', 'TG080')
GO
insert into [tblTacGiaSach] values ('TGS00430', 'S0000430', 'TG060')
GO
insert into [tblTacGiaSach] values ('TGS00431', 'S0000431', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00432', 'S0000432', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00433', 'S0000433', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00434', 'S0000434', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00435', 'S0000435', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00436', 'S0000436', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00437', 'S0000437', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00438', 'S0000438', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00439', 'S0000439', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00440', 'S0000440', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00441', 'S0000441', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00442', 'S0000442', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00443', 'S0000443', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00444', 'S0000444', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00445', 'S0000445', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00446', 'S0000446', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00447', 'S0000447', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00448', 'S0000448', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00449', 'S0000449', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00450', 'S0000450', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00451', 'S0000451', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00452', 'S0000452', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00453', 'S0000453', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00454', 'S0000454', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00455', 'S0000455', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00456', 'S0000456', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00457', 'S0000457', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00458', 'S0000458', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00459', 'S0000459', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00460', 'S0000460', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00461', 'S0000461', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00462', 'S0000462', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00463', 'S0000463', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00464', 'S0000464', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00465', 'S0000465', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00466', 'S0000466', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00467', 'S0000467', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00468', 'S0000468', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00469', 'S0000469', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00470', 'S0000470', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00471', 'S0000471', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00472', 'S0000472', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00473', 'S0000473', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00474', 'S0000474', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00475', 'S0000475', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00476', 'S0000476', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00477', 'S0000477', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00478', 'S0000478', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00479', 'S0000479', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00480', 'S0000480', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00481', 'S0000481', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00482', 'S0000482', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00483', 'S0000483', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00484', 'S0000484', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00485', 'S0000485', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00486', 'S0000486', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00487', 'S0000487', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00488', 'S0000488', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00489', 'S0000489', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00490', 'S0000490', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00491', 'S0000491', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00492', 'S0000492', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00493', 'S0000493', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00494', 'S0000494', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00495', 'S0000495', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00496', 'S0000496', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00497', 'S0000497', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00498', 'S0000498', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00499', 'S0000499', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00500', 'S0000500', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00501', 'S0000501', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00502', 'S0000502', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00503', 'S0000503', 'TG006')
GO
insert into [tblTacGiaSach] values ('TGS00504', 'S0000504', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00505', 'S0000505', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00506', 'S0000506', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00507', 'S0000507', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00508', 'S0000508', 'TG031')
GO
insert into [tblTacGiaSach] values ('TGS00509', 'S0000509', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00510', 'S0000510', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00511', 'S0000511', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00512', 'S0000512', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00513', 'S0000513', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00514', 'S0000514', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00515', 'S0000515', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00516', 'S0000516', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00517', 'S0000517', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00518', 'S0000518', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00519', 'S0000519', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00520', 'S0000520', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00521', 'S0000521', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00522', 'S0000522', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00523', 'S0000523', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00524', 'S0000524', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00525', 'S0000525', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00526', 'S0000526', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00527', 'S0000527', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00528', 'S0000528', 'TG046')
GO
insert into [tblTacGiaSach] values ('TGS00529', 'S0000529', 'TG080')
GO
insert into [tblTacGiaSach] values ('TGS00530', 'S0000530', 'TG060')
GO
insert into [tblTacGiaSach] values ('TGS00531', 'S0000531', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00532', 'S0000532', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00533', 'S0000533', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00534', 'S0000534', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00535', 'S0000535', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00536', 'S0000536', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00537', 'S0000537', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00538', 'S0000538', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00539', 'S0000539', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00540', 'S0000540', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00541', 'S0000541', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00542', 'S0000542', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00543', 'S0000543', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00544', 'S0000544', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00545', 'S0000545', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00546', 'S0000546', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00547', 'S0000547', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00548', 'S0000548', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00549', 'S0000549', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00550', 'S0000550', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00551', 'S0000551', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00552', 'S0000552', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00553', 'S0000553', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00554', 'S0000554', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00555', 'S0000555', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00556', 'S0000556', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00557', 'S0000557', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00558', 'S0000558', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00559', 'S0000559', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00560', 'S0000560', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00561', 'S0000561', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00562', 'S0000562', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00563', 'S0000563', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00564', 'S0000564', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00565', 'S0000565', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00566', 'S0000566', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00567', 'S0000567', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00568', 'S0000568', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00569', 'S0000569', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00570', 'S0000570', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00571', 'S0000571', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00572', 'S0000572', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00573', 'S0000573', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00574', 'S0000574', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00575', 'S0000575', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00576', 'S0000576', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00577', 'S0000577', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00578', 'S0000578', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00579', 'S0000579', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00580', 'S0000580', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00581', 'S0000581', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00582', 'S0000582', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00583', 'S0000583', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00584', 'S0000584', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00585', 'S0000585', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00586', 'S0000586', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00587', 'S0000587', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00588', 'S0000588', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00589', 'S0000589', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00590', 'S0000590', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00591', 'S0000591', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00592', 'S0000592', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00593', 'S0000593', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00594', 'S0000594', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00595', 'S0000595', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00596', 'S0000596', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00597', 'S0000597', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00598', 'S0000598', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00599', 'S0000599', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00600', 'S0000600', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00601', 'S0000601', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00602', 'S0000602', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00603', 'S0000603', 'TG006')
GO
insert into [tblTacGiaSach] values ('TGS00604', 'S0000604', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00605', 'S0000605', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00606', 'S0000606', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00607', 'S0000607', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00608', 'S0000608', 'TG031')
GO
insert into [tblTacGiaSach] values ('TGS00609', 'S0000609', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00610', 'S0000610', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00611', 'S0000611', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00612', 'S0000612', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00613', 'S0000613', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00614', 'S0000614', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00615', 'S0000615', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00616', 'S0000616', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00617', 'S0000617', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00618', 'S0000618', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00619', 'S0000619', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00620', 'S0000620', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00621', 'S0000621', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00622', 'S0000622', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00623', 'S0000623', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00624', 'S0000624', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00625', 'S0000625', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00626', 'S0000626', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00627', 'S0000627', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00628', 'S0000628', 'TG046')
GO
insert into [tblTacGiaSach] values ('TGS00629', 'S0000629', 'TG080')
GO
insert into [tblTacGiaSach] values ('TGS00630', 'S0000630', 'TG060')
GO
insert into [tblTacGiaSach] values ('TGS00631', 'S0000631', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00632', 'S0000632', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00633', 'S0000633', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00634', 'S0000634', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00635', 'S0000635', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00636', 'S0000636', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00637', 'S0000637', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00638', 'S0000638', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00639', 'S0000639', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00640', 'S0000640', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00641', 'S0000641', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00642', 'S0000642', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00643', 'S0000643', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00644', 'S0000644', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00645', 'S0000645', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00646', 'S0000646', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00647', 'S0000647', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00648', 'S0000648', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00649', 'S0000649', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00650', 'S0000650', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00651', 'S0000651', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00652', 'S0000652', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00653', 'S0000653', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00654', 'S0000654', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00655', 'S0000655', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00656', 'S0000656', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00657', 'S0000657', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00658', 'S0000658', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00659', 'S0000659', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00660', 'S0000660', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00661', 'S0000661', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00662', 'S0000662', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00663', 'S0000663', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00664', 'S0000664', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00665', 'S0000665', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00666', 'S0000666', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00667', 'S0000667', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00668', 'S0000668', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00669', 'S0000669', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00670', 'S0000670', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00671', 'S0000671', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00672', 'S0000672', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00673', 'S0000673', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00674', 'S0000674', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00675', 'S0000675', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00676', 'S0000676', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00677', 'S0000677', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00678', 'S0000678', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00679', 'S0000679', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00680', 'S0000680', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00681', 'S0000681', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00682', 'S0000682', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00683', 'S0000683', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00684', 'S0000684', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00685', 'S0000685', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00686', 'S0000686', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00687', 'S0000687', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00688', 'S0000688', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00689', 'S0000689', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00690', 'S0000690', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00691', 'S0000691', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00692', 'S0000692', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00693', 'S0000693', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00694', 'S0000694', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00695', 'S0000695', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00696', 'S0000696', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00697', 'S0000697', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00698', 'S0000698', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00699', 'S0000699', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00700', 'S0000700', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00701', 'S0000701', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00702', 'S0000702', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00703', 'S0000703', 'TG006')
GO
insert into [tblTacGiaSach] values ('TGS00704', 'S0000704', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00705', 'S0000705', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00706', 'S0000706', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00707', 'S0000707', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00708', 'S0000708', 'TG031')
GO
insert into [tblTacGiaSach] values ('TGS00709', 'S0000709', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00710', 'S0000710', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00711', 'S0000711', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00712', 'S0000712', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00713', 'S0000713', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00714', 'S0000714', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00715', 'S0000715', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00716', 'S0000716', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00717', 'S0000717', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00718', 'S0000718', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00719', 'S0000719', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00720', 'S0000720', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00721', 'S0000721', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00722', 'S0000722', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00723', 'S0000723', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00724', 'S0000724', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00725', 'S0000725', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00726', 'S0000726', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00727', 'S0000727', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00728', 'S0000728', 'TG046')
GO
insert into [tblTacGiaSach] values ('TGS00729', 'S0000729', 'TG080')
GO
insert into [tblTacGiaSach] values ('TGS00730', 'S0000730', 'TG060')
GO
insert into [tblTacGiaSach] values ('TGS00731', 'S0000731', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00732', 'S0000732', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00733', 'S0000733', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00734', 'S0000734', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00735', 'S0000735', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00736', 'S0000736', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00737', 'S0000737', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00738', 'S0000738', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00739', 'S0000739', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00740', 'S0000740', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00741', 'S0000741', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00742', 'S0000742', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00743', 'S0000743', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00744', 'S0000744', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00745', 'S0000745', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00746', 'S0000746', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00747', 'S0000747', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00748', 'S0000748', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00749', 'S0000749', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00750', 'S0000750', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00751', 'S0000751', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00752', 'S0000752', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00753', 'S0000753', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00754', 'S0000754', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00755', 'S0000755', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00756', 'S0000756', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00757', 'S0000757', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00758', 'S0000758', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00759', 'S0000759', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00760', 'S0000760', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00761', 'S0000761', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00762', 'S0000762', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00763', 'S0000763', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00764', 'S0000764', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00765', 'S0000765', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00766', 'S0000766', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00767', 'S0000767', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00768', 'S0000768', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00769', 'S0000769', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00770', 'S0000770', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00771', 'S0000771', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00772', 'S0000772', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00773', 'S0000773', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00774', 'S0000774', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00775', 'S0000775', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00776', 'S0000776', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00777', 'S0000777', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00778', 'S0000778', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00779', 'S0000779', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00780', 'S0000780', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00781', 'S0000781', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00782', 'S0000782', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00783', 'S0000783', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00784', 'S0000784', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00785', 'S0000785', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00786', 'S0000786', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00787', 'S0000787', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00788', 'S0000788', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00789', 'S0000789', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00790', 'S0000790', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00791', 'S0000791', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00792', 'S0000792', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00793', 'S0000793', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00794', 'S0000794', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00795', 'S0000795', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00796', 'S0000796', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00797', 'S0000797', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00798', 'S0000798', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00799', 'S0000799', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00800', 'S0000800', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00801', 'S0000801', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00802', 'S0000802', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00803', 'S0000803', 'TG006')
GO
insert into [tblTacGiaSach] values ('TGS00804', 'S0000804', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00805', 'S0000805', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00806', 'S0000806', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00807', 'S0000807', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00808', 'S0000808', 'TG031')
GO
insert into [tblTacGiaSach] values ('TGS00809', 'S0000809', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00810', 'S0000810', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00811', 'S0000811', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00812', 'S0000812', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00813', 'S0000813', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00814', 'S0000814', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00815', 'S0000815', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00816', 'S0000816', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00817', 'S0000817', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00818', 'S0000818', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00819', 'S0000819', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00820', 'S0000820', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00821', 'S0000821', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00822', 'S0000822', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00823', 'S0000823', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00824', 'S0000824', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00825', 'S0000825', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00826', 'S0000826', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00827', 'S0000827', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00828', 'S0000828', 'TG046')
GO
insert into [tblTacGiaSach] values ('TGS00829', 'S0000829', 'TG080')
GO
insert into [tblTacGiaSach] values ('TGS00830', 'S0000830', 'TG060')
GO
insert into [tblTacGiaSach] values ('TGS00831', 'S0000831', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00832', 'S0000832', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00833', 'S0000833', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00834', 'S0000834', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00835', 'S0000835', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00836', 'S0000836', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00837', 'S0000837', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00838', 'S0000838', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00839', 'S0000839', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00840', 'S0000840', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00841', 'S0000841', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00842', 'S0000842', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00843', 'S0000843', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00844', 'S0000844', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00845', 'S0000845', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00846', 'S0000846', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00847', 'S0000847', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00848', 'S0000848', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00849', 'S0000849', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00850', 'S0000850', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00851', 'S0000851', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00852', 'S0000852', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00853', 'S0000853', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00854', 'S0000854', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00855', 'S0000855', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00856', 'S0000856', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00857', 'S0000857', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00858', 'S0000858', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00859', 'S0000859', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00860', 'S0000860', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00861', 'S0000861', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00862', 'S0000862', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00863', 'S0000863', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00864', 'S0000864', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00865', 'S0000865', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00866', 'S0000866', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00867', 'S0000867', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00868', 'S0000868', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00869', 'S0000869', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00870', 'S0000870', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00871', 'S0000871', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00872', 'S0000872', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00873', 'S0000873', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00874', 'S0000874', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00875', 'S0000875', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00876', 'S0000876', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00877', 'S0000877', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00878', 'S0000878', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00879', 'S0000879', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00880', 'S0000880', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00881', 'S0000881', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00882', 'S0000882', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00883', 'S0000883', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00884', 'S0000884', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00885', 'S0000885', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00886', 'S0000886', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00887', 'S0000887', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00888', 'S0000888', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00889', 'S0000889', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00890', 'S0000890', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00891', 'S0000891', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00892', 'S0000892', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00893', 'S0000893', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00894', 'S0000894', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00895', 'S0000895', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00896', 'S0000896', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00897', 'S0000897', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00898', 'S0000898', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00899', 'S0000899', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00900', 'S0000900', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00901', 'S0000901', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00902', 'S0000902', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00903', 'S0000903', 'TG006')
GO
insert into [tblTacGiaSach] values ('TGS00904', 'S0000904', 'TG018')
GO
insert into [tblTacGiaSach] values ('TGS00905', 'S0000905', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00906', 'S0000906', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00907', 'S0000907', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00908', 'S0000908', 'TG031')
GO
insert into [tblTacGiaSach] values ('TGS00909', 'S0000909', 'TG001')
GO
insert into [tblTacGiaSach] values ('TGS00910', 'S0000910', 'TG019')
GO
insert into [tblTacGiaSach] values ('TGS00911', 'S0000911', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00912', 'S0000912', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00913', 'S0000913', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00914', 'S0000914', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00915', 'S0000915', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00916', 'S0000916', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00917', 'S0000917', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00918', 'S0000918', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00919', 'S0000919', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00920', 'S0000920', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00921', 'S0000921', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00922', 'S0000922', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00923', 'S0000923', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00924', 'S0000924', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00925', 'S0000925', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00926', 'S0000926', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00927', 'S0000927', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00928', 'S0000928', 'TG046')
GO
insert into [tblTacGiaSach] values ('TGS00929', 'S0000929', 'TG080')
GO
insert into [tblTacGiaSach] values ('TGS00930', 'S0000930', 'TG060')
GO
insert into [tblTacGiaSach] values ('TGS00931', 'S0000931', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00932', 'S0000932', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00933', 'S0000933', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00934', 'S0000934', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00935', 'S0000935', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00936', 'S0000936', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00937', 'S0000937', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00938', 'S0000938', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00939', 'S0000939', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00940', 'S0000940', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00941', 'S0000941', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00942', 'S0000942', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00943', 'S0000943', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00944', 'S0000944', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00945', 'S0000945', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00946', 'S0000946', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00947', 'S0000947', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00948', 'S0000948', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00949', 'S0000949', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00950', 'S0000950', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00951', 'S0000951', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00952', 'S0000952', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00953', 'S0000953', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00954', 'S0000954', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00955', 'S0000955', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00956', 'S0000956', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00957', 'S0000957', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00958', 'S0000958', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00959', 'S0000959', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00960', 'S0000960', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00961', 'S0000961', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00962', 'S0000962', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00963', 'S0000963', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00964', 'S0000964', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00965', 'S0000965', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00966', 'S0000966', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00967', 'S0000967', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00968', 'S0000968', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00969', 'S0000969', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00970', 'S0000970', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00971', 'S0000971', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00972', 'S0000972', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00973', 'S0000973', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00974', 'S0000974', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00975', 'S0000975', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00976', 'S0000976', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00977', 'S0000977', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00978', 'S0000978', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00979', 'S0000979', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00980', 'S0000980', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00981', 'S0000981', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00982', 'S0000982', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00983', 'S0000983', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00984', 'S0000984', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00985', 'S0000985', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00986', 'S0000986', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00987', 'S0000987', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00988', 'S0000988', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00989', 'S0000989', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00990', 'S0000990', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00991', 'S0000991', 'TG098')
GO
insert into [tblTacGiaSach] values ('TGS00992', 'S0000992', 'TG010')
GO
insert into [tblTacGiaSach] values ('TGS00993', 'S0000993', 'TG020')
GO
insert into [tblTacGiaSach] values ('TGS00994', 'S0000994', 'TG030')
GO
insert into [tblTacGiaSach] values ('TGS00995', 'S0000995', 'TG022')
GO
insert into [tblTacGiaSach] values ('TGS00996', 'S0000996', 'TG033')
GO
insert into [tblTacGiaSach] values ('TGS00997', 'S0000997', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00998', 'S0000998', 'TG044')
GO
insert into [tblTacGiaSach] values ('TGS00999', 'S0000999', 'TG044')
GO

/****** Object:  Table [dbo].[tblThamSo]    Script Date: 6/25/2018 8:16:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblThamSo](
	[tuoitoithieu] [smallint] NOT NULL,
	[tuoitoida] [smallint] NOT NULL,
	[hansudung] [smallint] NOT NULL,
	[namxuatbantoithieu] [smallint] NOT NULL,
	[soluongsachmuontoida] [smallint] NOT NULL,
	[thoigianmuontoida] [smallint] NOT NULL
) ON [PRIMARY]

GO

insert into [tblThamSo] values (18, 55, 6, 8, 5, 4)
GO

/****** Object:  Table [dbo].[tblTheLoai]    Script Date: 6/25/2018 8:18:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTheLoai](
	[matheloai] [nvarchar](8) NOT NULL,
	[tentheloai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblTheLoai] PRIMARY KEY CLUSTERED 
(
	[matheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [tblTheLoai] values ('', '')
GO
insert into [tblTheLoai] values ('TL1', 'A')
GO
insert into [tblTheLoai] values ('TL2', 'B')
GO
insert into [tblTheLoai] values ('TL3', 'C')
GO

/****** Object:  Table [dbo].[tblTheLoaiSach]    Script Date: 6/25/2018 8:19:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTheLoaiSach](
	[matheloaisach] [nvarchar](8) NULL,
	[masach] [nvarchar](8) NULL,
	[matheloai] [nvarchar](8) NULL
) ON [PRIMARY]

GO

insert into [tblTheLoaiSach] values ('TLS00001', 'S0000001', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00002', 'S0000002', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00003', 'S0000003', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00004', 'S0000004', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00005', 'S0000005', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00006', 'S0000006', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00007', 'S0000007', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00008', 'S0000008', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00009', 'S0000009', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00010', 'S0000010', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00011', 'S0000011', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00012', 'S0000012', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00013', 'S0000013', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00014', 'S0000014', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00015', 'S0000015', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00016', 'S0000016', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00017', 'S0000017', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00018', 'S0000018', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00019', 'S0000019', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00020', 'S0000020', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00021', 'S0000021', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00022', 'S0000022', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00023', 'S0000023', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00024', 'S0000024', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00025', 'S0000025', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00026', 'S0000026', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00027', 'S0000027', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00028', 'S0000028', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00029', 'S0000029', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00030', 'S0000030', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00031', 'S0000031', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00032', 'S0000032', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00033', 'S0000033', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00034', 'S0000034', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00035', 'S0000035', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00036', 'S0000036', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00037', 'S0000037', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00038', 'S0000038', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00039', 'S0000039', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00040', 'S0000040', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00041', 'S0000041', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00042', 'S0000042', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00043', 'S0000043', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00044', 'S0000044', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00045', 'S0000045', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00046', 'S0000046', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00047', 'S0000047', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00048', 'S0000048', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00049', 'S0000049', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00050', 'S0000050', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00051', 'S0000051', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00052', 'S0000052', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00053', 'S0000053', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00054', 'S0000054', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00055', 'S0000055', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00056', 'S0000056', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00057', 'S0000057', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00058', 'S0000058', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00059', 'S0000059', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00060', 'S0000060', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00061', 'S0000061', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00062', 'S0000062', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00063', 'S0000063', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00064', 'S0000064', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00065', 'S0000065', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00066', 'S0000066', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00067', 'S0000067', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00068', 'S0000068', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00069', 'S0000069', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00070', 'S0000070', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00071', 'S0000071', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00072', 'S0000072', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00073', 'S0000073', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00074', 'S0000074', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00075', 'S0000075', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00076', 'S0000076', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00077', 'S0000077', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00078', 'S0000078', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00079', 'S0000079', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00080', 'S0000080', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00081', 'S0000081', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00082', 'S0000082', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00083', 'S0000083', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00084', 'S0000084', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00085', 'S0000085', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00086', 'S0000086', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00087', 'S0000087', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00088', 'S0000088', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00089', 'S0000089', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00090', 'S0000090', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00091', 'S0000091', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00092', 'S0000092', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00093', 'S0000093', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00094', 'S0000094', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00095', 'S0000095', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00096', 'S0000096', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00097', 'S0000097', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00098', 'S0000098', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00099', 'S0000099', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00100', 'S0000100', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00101', 'S0000101', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00102', 'S0000102', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00103', 'S0000103', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00104', 'S0000104', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00105', 'S0000105', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00106', 'S0000106', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00107', 'S0000107', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00108', 'S0000108', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00109', 'S0000109', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00110', 'S0000110', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00111', 'S0000111', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00112', 'S0000112', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00113', 'S0000113', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00114', 'S0000114', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00115', 'S0000115', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00116', 'S0000116', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00117', 'S0000117', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00118', 'S0000118', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00119', 'S0000119', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00120', 'S0000120', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00121', 'S0000121', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00122', 'S0000122', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00123', 'S0000123', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00124', 'S0000124', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00125', 'S0000125', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00126', 'S0000126', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00127', 'S0000127', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00128', 'S0000128', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00129', 'S0000129', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00130', 'S0000130', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00131', 'S0000131', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00132', 'S0000132', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00133', 'S0000133', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00134', 'S0000134', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00135', 'S0000135', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00136', 'S0000136', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00137', 'S0000137', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00138', 'S0000138', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00139', 'S0000139', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00130', 'S0000140', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00141', 'S0000141', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00142', 'S0000142', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00143', 'S0000143', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00144', 'S0000144', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00145', 'S0000145', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00146', 'S0000146', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00147', 'S0000147', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00148', 'S0000148', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00149', 'S0000149', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00150', 'S0000150', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00151', 'S0000151', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00152', 'S0000152', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00153', 'S0000153', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00154', 'S0000154', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00155', 'S0000155', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00156', 'S0000156', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00157', 'S0000157', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00158', 'S0000158', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00159', 'S0000159', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00160', 'S0000160', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00161', 'S0000161', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00162', 'S0000162', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00163', 'S0000163', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00164', 'S0000164', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00165', 'S0000165', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00166', 'S0000166', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00167', 'S0000167', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00168', 'S0000168', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00169', 'S0000169', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00170', 'S0000170', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00171', 'S0000171', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00172', 'S0000172', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00173', 'S0000173', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00174', 'S0000174', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00175', 'S0000175', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00176', 'S0000176', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00177', 'S0000177', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00178', 'S0000178', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00179', 'S0000179', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00180', 'S0000180', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00181', 'S0000181', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00182', 'S0000182', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00183', 'S0000183', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00184', 'S0000184', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00185', 'S0000185', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00186', 'S0000186', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00187', 'S0000187', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00188', 'S0000188', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00189', 'S0000189', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00190', 'S0000190', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00191', 'S0000191', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00192', 'S0000192', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00193', 'S0000193', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00194', 'S0000194', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00195', 'S0000195', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00196', 'S0000196', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00197', 'S0000197', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00198', 'S0000198', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00199', 'S0000199', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00200', 'S0000200', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00201', 'S0000201', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00202', 'S0000202', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00203', 'S0000203', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00204', 'S0000204', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00205', 'S0000205', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00206', 'S0000206', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00207', 'S0000207', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00208', 'S0000208', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00209', 'S0000209', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00210', 'S0000210', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00211', 'S0000211', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00212', 'S0000212', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00213', 'S0000213', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00214', 'S0000214', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00215', 'S0000215', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00216', 'S0000216', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00217', 'S0000217', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00218', 'S0000218', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00219', 'S0000219', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00220', 'S0000220', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00221', 'S0000221', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00222', 'S0000222', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00223', 'S0000223', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00224', 'S0000224', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00225', 'S0000225', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00226', 'S0000226', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00227', 'S0000227', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00228', 'S0000228', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00229', 'S0000229', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00230', 'S0000230', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00231', 'S0000231', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00232', 'S0000232', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00233', 'S0000233', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00234', 'S0000234', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00235', 'S0000235', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00236', 'S0000236', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00237', 'S0000237', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00238', 'S0000238', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00239', 'S0000239', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00240', 'S0000240', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00241', 'S0000241', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00242', 'S0000242', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00243', 'S0000243', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00244', 'S0000244', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00245', 'S0000245', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00246', 'S0000246', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00247', 'S0000247', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00248', 'S0000248', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00249', 'S0000249', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00250', 'S0000250', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00251', 'S0000251', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00252', 'S0000252', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00253', 'S0000253', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00254', 'S0000254', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00255', 'S0000255', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00256', 'S0000256', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00257', 'S0000257', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00258', 'S0000258', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00259', 'S0000259', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00260', 'S0000260', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00261', 'S0000261', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00262', 'S0000262', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00263', 'S0000263', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00264', 'S0000264', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00265', 'S0000265', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00266', 'S0000266', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00267', 'S0000267', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00268', 'S0000268', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00269', 'S0000269', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00270', 'S0000270', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00271', 'S0000271', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00272', 'S0000272', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00273', 'S0000273', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00274', 'S0000274', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00275', 'S0000275', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00276', 'S0000276', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00277', 'S0000277', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00278', 'S0000278', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00279', 'S0000279', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00280', 'S0000280', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00281', 'S0000281', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00282', 'S0000282', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00283', 'S0000283', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00284', 'S0000284', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00285', 'S0000285', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00286', 'S0000286', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00287', 'S0000287', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00288', 'S0000288', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00289', 'S0000289', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00290', 'S0000290', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00291', 'S0000291', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00292', 'S0000292', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00293', 'S0000293', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00294', 'S0000294', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00295', 'S0000295', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00296', 'S0000296', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00297', 'S0000297', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00298', 'S0000298', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00299', 'S0000299', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00300', 'S0000300', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00301', 'S0000301', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00302', 'S0000302', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00303', 'S0000303', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00304', 'S0000304', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00305', 'S0000305', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00306', 'S0000306', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00307', 'S0000307', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00308', 'S0000308', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00309', 'S0000309', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00310', 'S0000310', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00311', 'S0000311', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00312', 'S0000312', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00313', 'S0000313', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00314', 'S0000314', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00315', 'S0000315', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00316', 'S0000316', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00317', 'S0000317', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00318', 'S0000318', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00319', 'S0000319', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00320', 'S0000320', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00321', 'S0000321', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00322', 'S0000322', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00323', 'S0000323', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00324', 'S0000324', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00325', 'S0000325', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00326', 'S0000326', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00327', 'S0000327', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00328', 'S0000328', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00329', 'S0000329', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00330', 'S0000330', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00331', 'S0000331', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00332', 'S0000332', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00333', 'S0000333', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00334', 'S0000334', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00335', 'S0000335', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00336', 'S0000336', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00337', 'S0000337', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00338', 'S0000338', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00339', 'S0000339', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00340', 'S0000340', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00341', 'S0000341', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00342', 'S0000342', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00343', 'S0000343', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00344', 'S0000344', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00345', 'S0000345', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00346', 'S0000346', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00347', 'S0000347', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00348', 'S0000348', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00349', 'S0000349', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00350', 'S0000350', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00351', 'S0000351', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00352', 'S0000352', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00353', 'S0000353', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00354', 'S0000354', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00355', 'S0000355', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00356', 'S0000356', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00357', 'S0000357', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00358', 'S0000358', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00359', 'S0000359', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00360', 'S0000360', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00361', 'S0000361', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00362', 'S0000362', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00363', 'S0000363', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00364', 'S0000364', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00365', 'S0000365', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00366', 'S0000366', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00367', 'S0000367', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00368', 'S0000368', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00369', 'S0000369', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00370', 'S0000370', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00371', 'S0000371', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00372', 'S0000372', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00373', 'S0000373', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00374', 'S0000374', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00375', 'S0000375', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00376', 'S0000376', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00377', 'S0000377', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00378', 'S0000378', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00379', 'S0000379', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00380', 'S0000380', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00381', 'S0000381', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00382', 'S0000382', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00383', 'S0000383', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00384', 'S0000384', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00385', 'S0000385', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00386', 'S0000386', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00387', 'S0000387', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00388', 'S0000388', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00389', 'S0000389', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00390', 'S0000390', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00391', 'S0000391', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00392', 'S0000392', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00393', 'S0000393', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00394', 'S0000394', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00395', 'S0000395', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00396', 'S0000396', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00397', 'S0000397', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00398', 'S0000398', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00399', 'S0000399', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00400', 'S0000400', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00401', 'S0000401', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00402', 'S0000402', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00403', 'S0000403', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00404', 'S0000404', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00405', 'S0000405', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00406', 'S0000406', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00407', 'S0000407', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00408', 'S0000408', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00409', 'S0000409', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00410', 'S0000410', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00411', 'S0000411', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00412', 'S0000412', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00413', 'S0000413', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00414', 'S0000414', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00415', 'S0000415', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00416', 'S0000416', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00417', 'S0000417', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00418', 'S0000418', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00419', 'S0000419', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00420', 'S0000420', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00421', 'S0000421', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00422', 'S0000422', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00423', 'S0000423', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00424', 'S0000424', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00425', 'S0000425', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00426', 'S0000426', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00427', 'S0000427', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00428', 'S0000428', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00429', 'S0000429', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00430', 'S0000430', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00431', 'S0000431', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00432', 'S0000432', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00433', 'S0000433', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00434', 'S0000434', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00435', 'S0000435', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00436', 'S0000436', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00437', 'S0000437', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00438', 'S0000438', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00439', 'S0000439', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00440', 'S0000440', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00441', 'S0000441', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00442', 'S0000442', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00443', 'S0000443', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00444', 'S0000444', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00445', 'S0000445', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00446', 'S0000446', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00447', 'S0000447', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00448', 'S0000448', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00449', 'S0000449', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00450', 'S0000450', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00451', 'S0000451', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00452', 'S0000452', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00453', 'S0000453', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00454', 'S0000454', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00455', 'S0000455', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00456', 'S0000456', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00457', 'S0000457', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00458', 'S0000458', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00459', 'S0000459', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00460', 'S0000460', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00461', 'S0000461', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00462', 'S0000462', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00463', 'S0000463', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00464', 'S0000464', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00465', 'S0000465', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00466', 'S0000466', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00467', 'S0000467', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00468', 'S0000468', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00469', 'S0000469', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00470', 'S0000470', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00471', 'S0000471', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00472', 'S0000472', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00473', 'S0000473', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00474', 'S0000474', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00475', 'S0000475', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00476', 'S0000476', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00477', 'S0000477', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00478', 'S0000478', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00479', 'S0000479', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00480', 'S0000480', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00481', 'S0000481', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00482', 'S0000482', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00483', 'S0000483', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00484', 'S0000484', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00485', 'S0000485', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00486', 'S0000486', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00487', 'S0000487', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00488', 'S0000488', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00489', 'S0000489', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00490', 'S0000490', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00491', 'S0000491', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00492', 'S0000492', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00493', 'S0000493', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00494', 'S0000494', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00495', 'S0000495', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00496', 'S0000496', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00497', 'S0000497', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00498', 'S0000498', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00499', 'S0000499', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00500', 'S0000500', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00501', 'S0000501', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00502', 'S0000502', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00503', 'S0000503', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00504', 'S0000504', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00505', 'S0000505', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00506', 'S0000506', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00507', 'S0000507', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00508', 'S0000508', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00509', 'S0000509', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00510', 'S0000510', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00511', 'S0000511', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00512', 'S0000512', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00513', 'S0000513', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00514', 'S0000514', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00515', 'S0000515', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00516', 'S0000516', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00517', 'S0000517', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00518', 'S0000518', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00519', 'S0000519', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00520', 'S0000520', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00521', 'S0000521', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00522', 'S0000522', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00523', 'S0000523', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00524', 'S0000524', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00525', 'S0000525', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00526', 'S0000526', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00527', 'S0000527', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00528', 'S0000528', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00529', 'S0000529', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00530', 'S0000530', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00531', 'S0000531', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00532', 'S0000532', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00533', 'S0000533', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00534', 'S0000534', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00535', 'S0000535', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00536', 'S0000536', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00537', 'S0000537', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00538', 'S0000538', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00539', 'S0000539', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00540', 'S0000540', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00541', 'S0000541', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00542', 'S0000542', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00543', 'S0000543', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00544', 'S0000544', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00545', 'S0000545', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00546', 'S0000546', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00547', 'S0000547', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00548', 'S0000548', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00549', 'S0000549', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00550', 'S0000550', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00551', 'S0000551', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00552', 'S0000552', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00553', 'S0000553', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00554', 'S0000554', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00555', 'S0000555', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00556', 'S0000556', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00557', 'S0000557', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00558', 'S0000558', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00559', 'S0000559', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00560', 'S0000560', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00561', 'S0000561', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00562', 'S0000562', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00563', 'S0000563', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00564', 'S0000564', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00565', 'S0000565', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00566', 'S0000566', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00567', 'S0000567', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00568', 'S0000568', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00569', 'S0000569', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00570', 'S0000570', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00571', 'S0000571', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00572', 'S0000572', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00573', 'S0000573', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00574', 'S0000574', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00575', 'S0000575', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00576', 'S0000576', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00577', 'S0000577', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00578', 'S0000578', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00579', 'S0000579', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00580', 'S0000580', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00581', 'S0000581', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00582', 'S0000582', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00583', 'S0000583', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00584', 'S0000584', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00585', 'S0000585', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00586', 'S0000586', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00587', 'S0000587', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00588', 'S0000588', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00589', 'S0000589', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00590', 'S0000590', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00591', 'S0000591', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00592', 'S0000592', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00593', 'S0000593', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00594', 'S0000594', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00595', 'S0000595', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00596', 'S0000596', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00597', 'S0000597', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00598', 'S0000598', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00599', 'S0000599', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00600', 'S0000600', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00601', 'S0000601', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00602', 'S0000602', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00603', 'S0000603', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00604', 'S0000604', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00605', 'S0000605', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00606', 'S0000606', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00607', 'S0000607', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00608', 'S0000608', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00609', 'S0000609', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00610', 'S0000610', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00611', 'S0000611', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00612', 'S0000612', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00613', 'S0000613', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00614', 'S0000614', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00615', 'S0000615', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00616', 'S0000616', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00617', 'S0000617', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00618', 'S0000618', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00619', 'S0000619', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00620', 'S0000620', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00621', 'S0000621', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00622', 'S0000622', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00623', 'S0000623', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00624', 'S0000624', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00625', 'S0000625', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00626', 'S0000626', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00627', 'S0000627', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00628', 'S0000628', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00629', 'S0000629', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00630', 'S0000630', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00631', 'S0000631', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00632', 'S0000632', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00633', 'S0000633', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00634', 'S0000634', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00635', 'S0000635', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00636', 'S0000636', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00637', 'S0000637', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00638', 'S0000638', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00639', 'S0000639', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00640', 'S0000640', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00641', 'S0000641', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00642', 'S0000642', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00643', 'S0000643', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00644', 'S0000644', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00645', 'S0000645', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00646', 'S0000646', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00647', 'S0000647', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00648', 'S0000648', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00649', 'S0000649', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00650', 'S0000650', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00651', 'S0000651', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00652', 'S0000652', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00653', 'S0000653', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00654', 'S0000654', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00655', 'S0000655', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00656', 'S0000656', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00657', 'S0000657', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00658', 'S0000658', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00659', 'S0000659', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00660', 'S0000660', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00661', 'S0000661', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00662', 'S0000662', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00663', 'S0000663', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00664', 'S0000664', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00665', 'S0000665', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00666', 'S0000666', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00667', 'S0000667', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00668', 'S0000668', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00669', 'S0000669', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00670', 'S0000670', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00671', 'S0000671', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00672', 'S0000672', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00673', 'S0000673', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00674', 'S0000674', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00675', 'S0000675', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00676', 'S0000676', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00677', 'S0000677', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00678', 'S0000678', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00679', 'S0000679', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00680', 'S0000680', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00681', 'S0000681', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00682', 'S0000682', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00683', 'S0000683', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00684', 'S0000684', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00685', 'S0000685', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00686', 'S0000686', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00687', 'S0000687', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00688', 'S0000688', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00689', 'S0000689', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00690', 'S0000690', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00691', 'S0000691', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00692', 'S0000692', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00693', 'S0000693', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00694', 'S0000694', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00695', 'S0000695', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00696', 'S0000696', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00697', 'S0000697', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00698', 'S0000698', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00699', 'S0000699', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00700', 'S0000700', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00701', 'S0000701', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00702', 'S0000702', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00703', 'S0000703', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00704', 'S0000704', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00705', 'S0000705', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00706', 'S0000706', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00707', 'S0000707', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00708', 'S0000708', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00709', 'S0000709', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00710', 'S0000710', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00711', 'S0000711', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00712', 'S0000712', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00713', 'S0000713', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00714', 'S0000714', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00715', 'S0000715', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00716', 'S0000716', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00717', 'S0000717', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00718', 'S0000718', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00719', 'S0000719', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00720', 'S0000720', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00721', 'S0000721', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00722', 'S0000722', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00723', 'S0000723', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00724', 'S0000724', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00725', 'S0000725', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00726', 'S0000726', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00727', 'S0000727', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00728', 'S0000728', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00729', 'S0000729', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00730', 'S0000730', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00731', 'S0000731', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00732', 'S0000732', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00733', 'S0000733', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00734', 'S0000734', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00735', 'S0000735', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00736', 'S0000736', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00737', 'S0000737', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00738', 'S0000738', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00739', 'S0000739', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00740', 'S0000740', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00741', 'S0000741', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00742', 'S0000742', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00743', 'S0000743', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00744', 'S0000744', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00745', 'S0000745', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00746', 'S0000746', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00747', 'S0000747', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00748', 'S0000748', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00749', 'S0000749', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00750', 'S0000750', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00751', 'S0000751', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00752', 'S0000752', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00753', 'S0000753', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00754', 'S0000754', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00755', 'S0000755', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00756', 'S0000756', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00757', 'S0000757', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00758', 'S0000758', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00759', 'S0000759', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00760', 'S0000760', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00761', 'S0000761', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00762', 'S0000762', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00763', 'S0000763', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00764', 'S0000764', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00765', 'S0000765', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00766', 'S0000766', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00767', 'S0000767', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00768', 'S0000768', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00769', 'S0000769', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00770', 'S0000770', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00771', 'S0000771', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00772', 'S0000772', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00773', 'S0000773', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00774', 'S0000774', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00775', 'S0000775', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00776', 'S0000776', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00777', 'S0000777', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00778', 'S0000778', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00779', 'S0000779', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00780', 'S0000780', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00781', 'S0000781', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00782', 'S0000782', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00783', 'S0000783', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00784', 'S0000784', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00785', 'S0000785', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00786', 'S0000786', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00787', 'S0000787', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00788', 'S0000788', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00789', 'S0000789', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00790', 'S0000790', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00791', 'S0000791', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00792', 'S0000792', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00793', 'S0000793', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00794', 'S0000794', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00795', 'S0000795', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00796', 'S0000796', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00797', 'S0000797', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00798', 'S0000798', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00799', 'S0000799', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00800', 'S0000800', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00801', 'S0000801', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00802', 'S0000802', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00803', 'S0000803', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00804', 'S0000804', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00805', 'S0000805', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00806', 'S0000806', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00807', 'S0000807', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00808', 'S0000808', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00809', 'S0000809', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00810', 'S0000810', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00811', 'S0000811', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00812', 'S0000812', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00813', 'S0000813', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00814', 'S0000814', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00815', 'S0000815', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00816', 'S0000816', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00817', 'S0000817', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00818', 'S0000818', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00819', 'S0000819', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00820', 'S0000820', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00821', 'S0000821', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00822', 'S0000822', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00823', 'S0000823', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00824', 'S0000824', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00825', 'S0000825', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00826', 'S0000826', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00827', 'S0000827', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00828', 'S0000828', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00829', 'S0000829', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00830', 'S0000830', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00831', 'S0000831', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00832', 'S0000832', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00833', 'S0000833', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00834', 'S0000834', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00835', 'S0000835', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00836', 'S0000836', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00837', 'S0000837', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00838', 'S0000838', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00839', 'S0000839', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00840', 'S0000840', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00841', 'S0000841', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00842', 'S0000842', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00843', 'S0000843', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00844', 'S0000844', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00845', 'S0000845', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00846', 'S0000846', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00847', 'S0000847', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00848', 'S0000848', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00849', 'S0000849', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00850', 'S0000850', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00851', 'S0000851', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00852', 'S0000852', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00853', 'S0000853', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00854', 'S0000854', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00855', 'S0000855', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00856', 'S0000856', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00857', 'S0000857', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00858', 'S0000858', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00859', 'S0000859', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00860', 'S0000860', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00861', 'S0000861', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00862', 'S0000862', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00863', 'S0000863', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00864', 'S0000864', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00865', 'S0000865', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00866', 'S0000866', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00867', 'S0000867', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00868', 'S0000868', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00869', 'S0000869', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00870', 'S0000870', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00871', 'S0000871', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00872', 'S0000872', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00873', 'S0000873', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00874', 'S0000874', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00875', 'S0000875', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00876', 'S0000876', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00877', 'S0000877', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00878', 'S0000878', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00879', 'S0000879', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00880', 'S0000880', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00881', 'S0000881', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00882', 'S0000882', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00883', 'S0000883', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00884', 'S0000884', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00885', 'S0000885', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00886', 'S0000886', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00887', 'S0000887', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00888', 'S0000888', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00889', 'S0000889', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00890', 'S0000890', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00891', 'S0000891', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00892', 'S0000892', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00893', 'S0000893', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00894', 'S0000894', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00895', 'S0000895', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00896', 'S0000896', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00897', 'S0000897', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00898', 'S0000898', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00899', 'S0000899', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00900', 'S0000900', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00901', 'S0000901', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00902', 'S0000902', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00903', 'S0000903', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00904', 'S0000904', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00905', 'S0000905', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00906', 'S0000906', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00907', 'S0000907', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00908', 'S0000908', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00909', 'S0000909', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00910', 'S0000910', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00911', 'S0000911', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00912', 'S0000912', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00913', 'S0000913', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00914', 'S0000914', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00915', 'S0000915', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00916', 'S0000916', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00917', 'S0000917', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00918', 'S0000918', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00919', 'S0000919', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00920', 'S0000920', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00921', 'S0000921', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00922', 'S0000922', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00923', 'S0000923', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00924', 'S0000924', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00925', 'S0000925', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00926', 'S0000926', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00927', 'S0000927', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00928', 'S0000928', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00929', 'S0000929', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00930', 'S0000930', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00931', 'S0000931', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00932', 'S0000932', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00933', 'S0000933', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00934', 'S0000934', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00935', 'S0000935', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00936', 'S0000936', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00937', 'S0000937', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00938', 'S0000938', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00939', 'S0000939', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00940', 'S0000940', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00941', 'S0000941', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00942', 'S0000942', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00943', 'S0000943', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00944', 'S0000944', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00945', 'S0000945', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00946', 'S0000946', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00947', 'S0000947', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00948', 'S0000948', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00949', 'S0000949', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00950', 'S0000950', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00951', 'S0000951', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00952', 'S0000952', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00953', 'S0000953', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00954', 'S0000954', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00955', 'S0000955', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00956', 'S0000956', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00957', 'S0000957', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00958', 'S0000958', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00959', 'S0000959', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00960', 'S0000960', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00961', 'S0000961', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00962', 'S0000962', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00963', 'S0000963', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00964', 'S0000964', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00965', 'S0000965', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00966', 'S0000966', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00967', 'S0000967', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00968', 'S0000968', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00969', 'S0000969', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00970', 'S0000970', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00971', 'S0000971', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00972', 'S0000972', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00973', 'S0000973', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00974', 'S0000974', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00975', 'S0000975', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00976', 'S0000976', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00977', 'S0000977', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00978', 'S0000978', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00979', 'S0000979', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00980', 'S0000980', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00981', 'S0000981', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00982', 'S0000982', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00983', 'S0000983', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00984', 'S0000984', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00985', 'S0000985', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00986', 'S0000986', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00987', 'S0000987', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00988', 'S0000988', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00989', 'S0000989', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00990', 'S0000990', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00991', 'S0000991', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00992', 'S0000992', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00993', 'S0000993', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00994', 'S0000994', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00995', 'S0000995', 'TL2')
GO
insert into [tblTheLoaiSach] values ('TLS00996', 'S0000996', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00997', 'S0000997', 'TL3')
GO
insert into [tblTheLoaiSach] values ('TLS00998', 'S0000998', 'TL1')
GO
insert into [tblTheLoaiSach] values ('TLS00999', 'S0000999', 'TL2')
GO



/****** Object:  Table [dbo].[tblTrangThai]    Script Date: 6/25/2018 8:19:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTrangThai](
	[matrangthai] [int] NOT NULL,
	[tentrangthai] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_tblTrangThai] PRIMARY KEY CLUSTERED 
(
	[matrangthai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

insert into [tblTrangThai] values ('', '')
GO
insert into [tblTrangThai] values (1, N'Còn sách')
GO
insert into [tblTrangThai] values (2, N'Đã mượn')
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTaiKhoan](
	[mataikhoan] [nvarchar](8) NOT NULL,
	[id] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[maloaitaikhoan] [int] NULL,
 CONSTRAINT [PK_tblTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[mataikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- tai khoan
insert into [tblTaiKhoan] values ('TK001', 'ADMIN', 'admin', 1)
GO
insert into [tblTaiKhoan] values ('TK002', 'EMP001', 'emp001', 2)
GO
insert into [tblTaiKhoan] values ('TK003', 'EMP002', 'emp002', 2)
GO
insert into [tblTaiKhoan] values ('TK004', 'EMP003', 'emp003', 2)
GO
insert into [tblTaiKhoan] values ('TK005', 'EMP004', 'emp004', 2)
GO
insert into [tblTaiKhoan] values ('TK006', 'EMP005', 'emp005', 2)
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblLoaiTaiKhoan](
	[maloaitaikhoan] [int] NOT NULL,
	[loaitaikhoan] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[maloaitaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

--loai tai khoan
insert into [tblLoaiTaiKhoan] values (1, 'ADMIN')
GO
insert into [tblLoaiTaiKhoan] values (2, 'EMPLOYEE')
GO

-- Add constraint
--1
ALTER TABLE [tblDocGia] ADD CONSTRAINT [FK_tblDocGia_tblLoaiDocGia] 
FOREIGN KEY ([maloaidocgia]) REFERENCES [tblLoaiDocGia]([maloaidocgia])
GO
ALTER TABLE [tblDocGia] CHECK CONSTRAINT [FK_tblDocGia_tblLoaiDocGia]
GO
--2
ALTER TABLE [tblPhieuMuonSach] ADD CONSTRAINT [FK_tblDocGia_tblPhieuMuonSach] 
FOREIGN KEY ([madocgia]) REFERENCES [tblDocGia]([madocgia])
GO
ALTER TABLE [tblPhieuMuonSach] CHECK CONSTRAINT [FK_tblDocGia_tblPhieuMuonSach]
GO
--3
ALTER TABLE [tblPhieuTraSach] ADD CONSTRAINT [FK_tblDocGia_tblPhieuTraSach] 
FOREIGN KEY ([madocgia]) REFERENCES [tblDocGia]([madocgia])
GO
ALTER TABLE [tblPhieuTraSach] CHECK CONSTRAINT [FK_tblDocGia_tblPhieuTraSach]
GO
--4
ALTER TABLE [tblChiTietPhieuMuon] ADD CONSTRAINT [FK_tblChiTietPhieuMuon_tblPhieuMuonSach] 
FOREIGN KEY ([maphieumuonsach]) REFERENCES [tblPhieuMuonSach]([maphieumuonsach])
GO
ALTER TABLE [tblChiTietPhieuMuon] CHECK CONSTRAINT [FK_tblChiTietPhieuMuon_tblPhieuMuonSach]
GO
--5
ALTER TABLE [tblChiTietPhieuTra] ADD CONSTRAINT [FK_tblChiTietPhieuTra_tblPhieuTraSach] 
FOREIGN KEY ([maphieutrasach]) REFERENCES [tblPhieuTraSach]([maphieutrasach])
GO
ALTER TABLE [tblChiTietPhieuTra] CHECK CONSTRAINT [FK_tblChiTietPhieuTra_tblPhieuTraSach]
GO
--6
ALTER TABLE [tblChiTietPhieuMuon] ADD CONSTRAINT [FK_tblChiTietPhieuMuon_tblSach] 
FOREIGN KEY ([masach]) REFERENCES [tblSach]([masach])
GO
ALTER TABLE [tblChiTietPhieuMuon] CHECK CONSTRAINT [FK_tblChiTietPhieuMuon_tblSach]
GO
--7
ALTER TABLE [tblChiTietPhieuTra] ADD CONSTRAINT [FK_tblChiTietPhieuTra_tblSach] 
FOREIGN KEY ([masach]) REFERENCES [tblSach]([masach])
GO
ALTER TABLE [tblChiTietPhieuTra] CHECK CONSTRAINT [FK_tblChiTietPhieuTra_tblSach]
GO
--8
ALTER TABLE [tblTacGiaSach] ADD CONSTRAINT [FK_tblTacGiaSach_tblSach] 
FOREIGN KEY ([masach]) REFERENCES [tblSach]([masach])
GO
ALTER TABLE [tblTacGiaSach] CHECK CONSTRAINT [FK_tblTacGiaSach_tblSach]
GO
--9
ALTER TABLE [tblTacGiaSach] ADD CONSTRAINT [FK_tblTacGiaSach_tblTacGia] 
FOREIGN KEY ([matacgia]) REFERENCES [tblTacGia]([matacgia])
GO
ALTER TABLE [tblTacGiaSach] CHECK CONSTRAINT [FK_tblTacGiaSach_tblTacGia]
GO
--10
ALTER TABLE [tblTheLoaiSach] ADD CONSTRAINT [FK_tblTheLoaiSach_tblTheLoai] 
FOREIGN KEY ([matheloai]) REFERENCES [tblTheLoai]([matheloai])
GO
ALTER TABLE [tblTheLoaiSach] CHECK CONSTRAINT [FK_tblTheLoaiSach_tblTheLoai]
GO
--11
ALTER TABLE [tblTheLoaiSach] ADD CONSTRAINT [FK_tblTheLoaiSach_tblSach] 
FOREIGN KEY ([masach]) REFERENCES [tblSach]([masach])
GO
ALTER TABLE [tblTheLoaiSach] CHECK CONSTRAINT [FK_tblTheLoaiSach_tblSach]
GO
--12
ALTER TABLE [tblSach] ADD CONSTRAINT [FK_tblSach_tblTrangThai] 
FOREIGN KEY ([matrangthai]) REFERENCES [tblTrangThai]([matrangthai])
GO
ALTER TABLE [tblSach] CHECK CONSTRAINT [FK_tblSach_tblTrangThai]
GO
--13
ALTER TABLE [tblSach] ADD CONSTRAINT [FK_tblSach_tblNhaXuatBan] 
FOREIGN KEY ([manhaxuatban]) REFERENCES [tblNhaXuatBan]([manhaxuatban])
GO
ALTER TABLE [tblSach] CHECK CONSTRAINT [FK_tblSach_tblNhaXuatBan]
GO
--14
ALTER TABLE [tblTaiKhoan] ADD CONSTRAINT [FK_tblTaiKhoan_tblLoaiTaiKhoan] 
FOREIGN KEY ([maloaitaikhoan]) REFERENCES [tblLoaiTaiKhoan]([maloaitaikhoan])
GO
ALTER TABLE [tblTaiKhoan] CHECK CONSTRAINT [FK_tblTaiKhoan_tblLoaiTaiKhoan]
GO