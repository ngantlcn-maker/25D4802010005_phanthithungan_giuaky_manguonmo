-- Cau 3.1
SELECT ma_sach, ten_sach, tac_gia, nam_xb 
FROM sach 
WHERE nam_xb >= 2018 
ORDER BY nam_xb DESC, ten_sach ASC;
-- Cau 3.2
SELECT 
    COUNT(*) AS so_dau_sach, 
    SUM(so_ban) AS tong_so_ban, 
    MAX(nam_xb) AS nam_xb_moi_nhat 
FROM sach;
-- Cau 3.3
SELECT s.ma_sach, s.ten_sach, t.ten_tl, s.so_ban 
FROM sach s 
JOIN the_loai t ON s.ma_tl = t.ma_tl 
WHERE t.ten_tl IN ('Tin hoc', 'Kinh te') 
ORDER BY t.ten_tl ASC, s.ten_sach ASC;
-- Cau 3.4
SELECT t.ten_tl, COUNT(m.ma_sach) AS so_luot_muon 
FROM the_loai t 
JOIN sach s ON t.ma_tl = s.ma_tl 
JOIN muon_sach m ON s.ma_sach = m.ma_sach 
GROUP BY t.ten_tl 
HAVING COUNT(m.ma_sach) >= 4 
ORDER BY so_luot_muon DESC;
-- Cau 3.5
SELECT ma_dg, ho_ten, khoa 
FROM doc_gia 
WHERE ma_dg NOT IN (
    SELECT DISTINCT m.ma_dg 
    FROM muon_sach m 
    JOIN sach s ON m.ma_sach = s.ma_sach 
    JOIN the_loai t ON s.ma_tl = t.ma_tl 
    WHERE t.ten_tl = 'Van hoc'
) 
ORDER BY ma_dg;