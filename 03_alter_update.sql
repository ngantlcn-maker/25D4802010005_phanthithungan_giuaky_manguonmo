-- Cau 2a: Thêm cột sdt vào bảng doc_gia và cập nhật số điện thoại cho DG01
ALTER TABLE doc_gia ADD COLUMN sdt VARCHAR(15);
UPDATE doc_gia SET sdt = '0988000001' WHERE ma_dg = 'DG01';

-- Cau 2b: Tăng số bản thêm 2 cho các sách thuộc thể loại Tin học (ma_tl = 'TH')
UPDATE sach SET so_ban = so_ban + 2 WHERE ma_tl = 'TH';

-- Cau 2c: Thêm độc giả mới DG09 và 2 lượt mượn sách tương ứng
INSERT INTO doc_gia (ma_dg, ho_ten, khoa, ngay_dang_ky) 
VALUES ('DG09', 'Ngo Van Phuc', 'Kinh te', '2026-10-05');

INSERT INTO muon_sach (ma_dg, ma_sach, ngay_muon, ngay_tra) 
VALUES 
    ('DG09', 'S006', '2026-10-05', NULL),
    ('DG09', 'S009', '2026-10-07', NULL);

-- Cau 2d: Xóa sách có mã S010
-- Lưu ý: Nếu sách S010 có liên quan đến bảng muon_sach, ta xóa lịch sử mượn liên quan tới S010 trước (nếu có) rồi mới xóa sách:
DELETE FROM muon_sach WHERE ma_sach = 'S010';
DELETE FROM sach WHERE ma_sach = 'S010';
