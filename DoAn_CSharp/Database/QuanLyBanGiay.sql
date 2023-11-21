create Database QuanLyBanGiay
use QuanLyBanGiay
-- Tạo bảng chucvu
CREATE TABLE chucvu (
    MaCV INT PRIMARY KEY,
    TenCV NVARCHAR(255)
);

-- Tạo bảng nhanvien


-- Tạo bảng khachhang
CREATE TABLE khachhang (
    MaKH INT PRIMARY KEY,
    HoTenKH NVARCHAR(255),
    DiaChiKH NVARCHAR(255),
    SDTKH NVARCHAR(15),
    CMNDKH NVARCHAR(20),
    GioiTinhKH NVARCHAR(10),
    TrangThaiKH NVARCHAR(255)
);
CREATE TABLE nhanvien (
    MaNV INT PRIMARY KEY,
    MaCV INT,
    TenTaiKhoanNV NVARCHAR(255),
    MatKhauNV NVARCHAR(255),
    HoTenNV NVARCHAR(255),
    GioiTinhNV NVARCHAR(10),
    NgaySinh DATE,
    DiaChiNV NVARCHAR(255),
    EmailNV NVARCHAR(255),
    SDTNV NVARCHAR(15),
    TrangThaiNV NVARCHAR(255),
    FOREIGN KEY (MaCV) REFERENCES chucvu(MaCV)
);

-- Tạo bảng nhacungcap
CREATE TABLE nhacungcap (
    MaNCC INT PRIMARY KEY,
    TenNCC NVARCHAR(255),
    DiaChiNCC NVARCHAR(255),
    SDTNCC NVARCHAR(15),
    Email NVARCHAR(255),
    TrangThaiNCC NVARCHAR(255)
);

-- Tạo bảng danhmuc
CREATE TABLE danhmuc (
    MaDanhMuc INT PRIMARY KEY,
    TenDM NVARCHAR(255),
    TrangThaiDM NVARCHAR(255)
);

-- Tạo bảng hoadon
CREATE TABLE hoadon (
    MaHD INT PRIMARY KEY,
    MaKH INT,
    MaNV INT,
    NgayLapHD DATE,
    TongTien FLOAT,
    FOREIGN KEY (MaKH) REFERENCES khachhang(MaKH),
    FOREIGN KEY (MaNV) REFERENCES nhanvien(MaNV)
);

-- Tạo bảng phieunhap
CREATE TABLE phieunhap (
    MaPhieuNhap INT PRIMARY KEY,
    MaNV INT,
    NgayLapPhieu DATE,
    TrangThaiPN NVARCHAR(255),
    FOREIGN KEY (MaNV) REFERENCES nhanvien(MaNV)
);

-- Tạo bảng sanpham
CREATE TABLE sanpham (
    MaSP INT PRIMARY KEY,
    MaNCC INT,
    MaDM INT,
    TenSP NVARCHAR(255),
    SizeSP NVARCHAR(50),
    SoLuongSP INT,
    MieuTaSP NVARCHAR(MAX),
    DonGia FLOAT,
    TrangThaiSP NVARCHAR(255),
    AnhSP NVARCHAR(255),
    FOREIGN KEY (MaNCC) REFERENCES nhacungcap(MaNCC),
    FOREIGN KEY (MaDM) REFERENCES danhmuc(MaDanhMuc)
);

-- Tạo bảng chitiethd
CREATE TABLE chitiethd (
    MaCTHD INT PRIMARY KEY,
    MaHD INT,
    MaSP INT,
    DonGia FLOAT,
    SizeSP NVARCHAR(50),
    ThanhTien FLOAT,
    FOREIGN KEY (MaHD) REFERENCES hoadon(MaHD),
    FOREIGN KEY (MaSP) REFERENCES sanpham(MaSP)
);

-- Tạo bảng chitietphieunhajp
CREATE TABLE chitietphieunhajp (
    MaCTPN INT PRIMARY KEY,
    MaPhieuNhap INT,
    MaSP INT,
    SoLuongNhap INT,
    FOREIGN KEY (MaPhieuNhap) REFERENCES phieunhap(MaPhieuNhap),
    FOREIGN KEY (MaSP) REFERENCES sanpham(MaSP)
);