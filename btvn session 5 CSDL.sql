CREATE TABLE KhachHang (

    MaKH INT,

    HoTen VARCHAR(255),

    Email VARCHAR(255),

    SoDienThoai VARCHAR(15),

    NgayDangKy DATE

);

 

INSERT INTO KhachHang (MaKH, HoTen, Email, SoDienThoai, NgayDangKy) VALUES

(1, 'Nguyễn Văn An', 'an.nguyen@email.com', '0901234567', '2023-10-25'),

(2, 'Trần Thị Bình', 'binh.tran@email.com', '0912345678', '2023-10-26'),

(3, 'Lê Minh Cường', 'cuong.le@email.com', '0987654321', '2023-11-01');

SELECT *
FROM KhachHang;

SELECT 
    HoTen,
    Email
FROM 
    KhachHang;
    
INSERT INTO KhachHang (MaKH, HoTen, Email, SoDienThoai, NgayDangKy) VALUES
(4, 'Phạm Thị Dung', 'dung.pham@email.com', '0934567890', '2023-11-02');

-- Thêm khách hàng Hoàng Văn Em (Mã 5)
INSERT INTO KhachHang (MaKH, HoTen, Email, SoDienThoai, NgayDangKy) VALUES
(5, 'Hoàng Văn Em', 'em.hoang@email.com', '0945678901', '2023-11-03');


CREATE TABLE Sach (

    MaSach VARCHAR(10),

    TenSach VARCHAR(255),

    TacGia VARCHAR(255),

    TheLoai VARCHAR(100),

    GiaBan INT

);


INSERT INTO Sach (MaSach, TenSach, TacGia, TheLoai, GiaBan) VALUES

('SGK01', 'Đắc Nhân Tâm', 'Dale Carnegie', 'Kỹ năng sống', 120000),

('SVK02', 'Nhà Giả Kim', 'Paulo Coelho', 'Văn học', 89000),

('STN03', 'Lược Sử Loài Người', 'Yuval Noah Harari', 'Lịch sử', 150000),

('SKD04', 'Tư Duy Nhanh và Chậm', 'Daniel Kahneman', 'Kinh doanh', 99000);

SET SQL_SAFE_UPDATES = 0;
UPDATE Sach
SET GiaBan = 180000
WHERE MaSach = 'SKD04';

UPDATE Sach
SET TacGia = 'Paulo Coelho'
WHERE MaSach = 'SVK02';

DELETE FROM Sach
WHERE MaSach = 'SGK01';

SELECT *
FROM Sach;

