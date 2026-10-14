# Bài thi Giữa kỳ - Môn Ứng dụng Mã nguồn mở
- **Họ và tên:** Phan Thị Thu Ngân
- **Cơ sở dữ liệu:** `gk_thuvien`

## Cấu trúc thư mục bài làm
- `sql/01_create.sql`: Lệnh tạo cơ sở dữ liệu và 4 bảng (`the_loai`, `doc_gia`, `sach`, `muon_sach`).
- `sql/02_data.sql`: Dữ liệu mẫu ban đầu.
- `sql/03_alter_update.sql`: Các lệnh chỉnh sửa dữ liệu (`ALTER`, `UPDATE`, `INSERT`, `DELETE`).
- `sql/04_query.sql`: Các câu lệnh truy vấn dữ liệu từ Câu 3.1 đến Câu 3.5.
- `export/ketqua_cau3_4.csv`: Kết quả trích xuất của câu 3.4 (có dòng tiêu đề).
- `export/gk_thuvien_backup.sql`: File backup toàn bộ cơ sở dữ liệu.

## Hướng dẫn trích xuất dữ liệu (Câu 4)
- **Câu 4.1:** Xuất kết quả câu 3.4 ra file `export/ketqua_cau3_4.csv` bằng tính năng Export của pgAdmin.
- **Câu 4.2:** Sao lưu cơ sở dữ liệu bằng lệnh pg_dump:
  ```bash
  pg_dump -U postgres -d gk_thuvien -F p -f export/gk_thuvien_backup.sql