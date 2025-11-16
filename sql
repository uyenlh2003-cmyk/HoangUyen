#Tạo cơ sở dữ liệu
create database COURSE_ENROLLMENT
use COURSE_ENROLLMENT

#Tạo bảng
----Bảng Khoa
create table DEPARTMENTS(Dno varchar(10) not null primary key, 
Dname varchar(50) not null, Location varchar(50) not null)
----Bảng Sinh viên
create table STUDENTS( Sno char(12) not null primary key, Sname varchar(50) not null,
Class varchar(20) not null, DateOfBirth date not null, 
Gender bit not null, Saddress varchar(100) not null, Email varchar(100) unique, Dno varchar(10) not null)
----Bảng Môn họ
create table COURSES(Cno VARchar(10) not null primary key,
Cname varchar(50) not null, Credit int default 3 check (Credit>0) not null, 
CourseType char(2) not null, Dno varchar(10) not null)
----Bảng Đăng ký học phần
create table ENROLLMENTS(Sno char(12) not null, Cno vARchar(10) not null, Time_Enroll Date not null, 
 Semester char(1) not null, SchoolYear char(9) not null, Fee int,
 Constraint PK primary key(Sno, Cno))

#Thiết lập ràng buộc khóa ngoại
alter table enrollments
add constraint FK_students foreign key (Sno) references students(Sno)
alter table enrollments
add constraint FK_courses foreign key (Cno) references courses(Cno)
alter table students
add constraint FK_departments foreign key (Dno) references departments(Dno)
alter table courses
add constraint FK_department foreign key(Dno) references departments(Dno)

#Thêm dữ liệu
----Sinh viên
insert into STUDENTS(Sno, Sname, Class, DateOfBirth, Gender, Saddress, Email, Dno)
values
( '123456789012', 'NguyenCuuHaiUyen', '48K05', '2004-06-04', 1, 'Hue','Uyen@gmail.com', 'A101'),
( '123456789013', 'NguyenCuuHaDuyen', '48K05', '2004-06-01',1, 'DaNang','Duyen@gmail.com','A102' ),
( '123456789014', 'TranMinhHa', '48K13.1', '2004-01-01', 1, 'DaNang','Ha@gmail.com','A103' ),
( '123456789015', 'TranHuyHung', '48K05', '2004-08-04', 0, 'QuangNam','Hung@gmail.com','A104' ),
( '123456789016', 'LeMinhDat', '48K13.1', '2004-08-06', 0, 'Hue','Dat12@gmail.com', 'A105'),
( '123456789017', 'TranDanLe', '48K13.1', '2004-08-11', 0, 'QuangTri','Le@gmail.com', 'A102'),
( '123456789018', 'HanhNguyen', '48K05', '2004-09-01', 1, 'DaNang','Nguyen@gmail.com', 'A103'),
( '123456789019', 'LeMinhHung', '48K12.1', '2004-01-06', 0, 'HaTinh','Hung12@gmail.com', 'A104'),
( '123456789020', 'TranHungViet', '48K13.1', '2004-08-06', 0, 'Hue','Viet@gmail.com', 'A105'),
( '123456789021', 'TranPhuongThao', '48K05', '2004-10-01', 1, 'Hue','Dat@gmail.com', 'A106'),
( '123456789022', 'TranPhuongNhi', '48K06.2', '2004-11-01', 1, 'NgheAn','Nhi@gmail.com', 'A107'),
( '123456789023', 'NguyenVanKhai', '48K05', '2004-02-15', 0, 'Hue', 'khai@gmail.com', 'A101'),
( '123456789024', 'LeThiMyLinh', '48K06.2', '2004-03-21', 1, 'DaNang', 'mylinh@gmail.com', 'A102'),
( '123456789025', 'TranBaoLong', '48K13.1', '2004-05-10', 0, 'AnGiang', 'longbao@gmail.com', 'A103'),
( '123456789026', 'VoKimAnh', '48K05', '2004-12-09', 1, 'DaNang', 'kimanh@gmail.com', 'A104'),
( '123456789027', 'PhamThanhNam', '48K12.1', '2004-07-14', 0, 'QuangTri', 'thanhnam@gmail.com', 'A105'),
( '123456789028', 'NgoMinhTuan', '48K12.1', '2004-03-30', 0, 'Hue', 'minhtuan@gmail.com', 'A106'),
( '123456789029', 'HoangThiLan', '48K06.2', '2004-09-25', 1, 'DaNang', 'lanhoang@gmail.com', 'A107'),
( '123456789030', 'TrinhHoaiPhong', '48K13.1', '2004-10-22', 0, 'DaNang', 'hoaiphong@gmail.com', 'A102'),
( '123456789031', 'NguyenThiNgoc', '48K05', '2004-01-19', 1, 'Hue', 'ngocnguyen@gmail.com', 'A103'),
( '123456789032', 'LeQuocVu', '48K12.1', '2004-04-28', 0, 'DaNang', 'quocvu@gmail.com', 'A104'),
( '123456789033', 'DaoMinhQuynh', '48K06.2', '2004-06-16', 1, 'Hue', 'quynhdao@gmail.com', 'A105'),
( '123456789034', 'PhamGiaHuy', '48K13.1', '2004-03-07', 0, 'Hue', 'giayhuy@gmail.com', 'A106'),
( '123456789035', 'TranKhanhLinh', '48K05', '2004-11-30', 1, 'QuangNgai', 'khanhlinh@gmail.com', 'A107'),
( '123456789036', 'VoThanhPhat', '48K13.1', '2004-07-01', 0, 'Hue', 'thanhphat@gmail.com', 'A101'),
( '123456789037', 'LeThuyTrang', '48K06.2', '2004-02-11', 1, 'HaTinh', 'thuytrang@gmail.com', 'A102'),
( '123456789038', 'NguyenBaoChau', '48K05', '2004-05-17', 1, 'BinhDinh', 'baochau@gmail.com', 'A103'),
( '123456789039', 'HoangMinhTri', '48K12.1', '2004-08-23', 0, 'HungYen', 'minhtri@gmail.com', 'A104'),
( '123456789040', 'TruongNgocAnh', '48K05', '2004-09-12', 1, 'QuyNhon', 'ngocanhtruong@gmail.com', 'A105'),
( '123456789041', 'DinhQuangHuy', '48K13.1', '2004-12-20', 0, 'QuangNam', 'quanghuy@gmail.com', 'A106'),
( '123456789042', 'NguyenThanhTuan', '48K12.1', '2004-10-05', 0, 'Hue', 'thanhtuan@gmail.com', 'A107');
 ----Môn học
 insert into COURSES(Cno, Cname, Credit, CourseType, Dno)
 values( 'MIS2001', 'MIS',4,'BB','A101'),
 ( 'LAW2001', 'LAW',4,'BB','A102'),
 ( 'STA2001', 'STATISTICS',3,'BB','A103'),
 ( 'DAT2001', 'DATA',3,'BB','A104'),
 ( 'ENG2001', 'ENGLISH',4,'BB','A105'),
 ( 'MAR2001', 'MARKETING',3,'TC','A106'),
 ( 'ECO2001', 'ECO',2,'TC','A101')
 ----Khoa
 insert into DEPARTMENTS(Dno, Dname, Location)
 values( 'A101', 'Ketin','H101'),
 ( 'A102', 'KinhTe','H102'),
 ( 'A103', 'Marketing','H103'),
 ( 'A104', 'QuanTriKinhDoanh','H104'),
 ( 'A105', 'Luat','H105'),
 ( 'A106', 'KeToan','H106'),
 ( 'A107', 'ThuongMai','H107')
 ----Đăng kí học phần
 insert into ENROLLMENTS(Sno, Cno, Time_Enroll, Semester, SchoolYear, Fee)
 values( '123456789012', 'MIS2001', '2021-08-04', 1, '2021-2022', ''),
 ( '123456789013', 'LAW2001', '2021-08-04', 1, '2021-2022', ''),
 ( '123456789014', 'STA2001', '2021-08-01', 2, '2021-2022', ''),
 ( '123456789015', 'DAT2001', '2021-08-04', 2, '2021-2022', ''),
 ( '123456789016', 'ENG2001', '2021-08-04', 1, '2021-2022', ''),
 ( '123456789017', 'MAR2001', '2021-08-12', 2, '2021-2022', ''),
 ( '123456789018', 'ENG2001', '2021-08-11', 1, '2021-2022', ''),
 ( '123456789019', 'ECO2001', '2021-08-04', 2, '2021-2022', ''),
 ( '123456789020', 'STA2001', '2021-08-12', 2, '2021-2022', ''),
 ( '123456789021', 'MIS2001', '2021-08-04', 1, '2021-2022', ''),
 ( '123456789022', 'STA2001', '2021-08-12', 2, '2021-2022', '')

#Cập nhật dữ liệu theo yêu cầu: Đổi mã môn MIS2001 thành Database
update COURSES 
set Cno='Database'
where Cno='MIS2001' 
 
#Cập nhật lại tín chỉ
update COURSES
set Credit=3
where Cno='Database'

#Tính học phí dựa trên số tín chỉ
update ENROLLMENTS
set Fee= Credit*470000
from ENROLLMENTS inner join COURSES on ENROLLMENTS.Cno=COURSES.Cno

#Số lượng học phần theo khoa
select Dno,count(*) as SoHocPhan
from COURSES 
group by Dno
order by count(*) desc

#Top 10 sinh viên đăng ký nhiều học phần nhất trong kỳ 2
select top 10 enrollments.Sno ,STUDENTS.Sname, count(*) as SoHocPhanDangKi
from STUDENTS inner join enrollments on enrollments.Sno=STUDENTS.Sno
where ENROLLMENTS.Semester=2 and SchoolYear='2021-2022'
group by enrollments.Sno, STUDENTS.Sname
order by SoHocPhanDangKi desc

#Số sinh viên đăng ký từng môn trong học kỳ 2
select Cno, count(*) as SoSinhVienDangKi
from enrollments 
where ENROLLMENTS.Semester=2 and schoolyear='2021-2022'
group by Cno

Sinh viên có tổng tín chỉ đăng ký > 15 (tín chỉ tối thiểu)
select sno, sum(credit) as credit
from STUDENTS inner join ENROLLMENTS on STUDENTS.sno=ENROLLMENTS.sno
where Semester=2 and SchoolYear='2021-2022'
group by sno
having sum(credit)>15

#Số lượng đăng ký học phần theo môn (tín chỉ < 25)
select Cno, sum(*) as SoLuongDangKiHocPhan
from ENROLLMENTS inner join COURSES on ENROLLMENTS.Cno=COURSES.Cno
where Semester=2
group by Cno 
having sum(credit)<25

#Thống kê số lượng SV đăng ký theo khoa, môn và học kỳ
select dname, semester, cname, count(*) as sosvdangki
from DEPARTMENTS
inner join COURSES on DEPARTMENTS.dno=COURSES.dno
inner join ENROLLMENTS on ENROLLMENTS.cno=COURSES.cno
where SchoolYear='2021-2022'
group by dname, semester, cname
order by

#Môn đăng ký đúng lúc 12h trưa (giờ mở tín chỉ)
select cno, count(*) as credit
from ENROLLMENTS 
where hour(time_enroll)=12 and Time_Enroll='2023-03-24'
group by Cno
having count(*)>60

#Tính học phí trung bình theo khoa
select d.Dname, avg(e.Fee) as HocPhiTrungBinh
from DEPARTMENTS d
join STUDENTS s on d.Dno = s.Dno
join ENROLLMENTS e on s.Sno = e.Sno
group by d.Dname

#Liệt kê các môn không có sinh viên nào đăng ký
select c.Cno, c.Cname
from COURSES c
where not exists (select 1 from ENROLLMENTS e
    where e.Cno = c.Cno)

#Khoa có tổng số tín chỉ cao nhất
select top 1 d.Dname, sum(c.Credit) as TongTinChi
from DEPARTMENTS d
join COURSES c on d.Dno = c.Dno
group by d.Dname
order by TongTinChi desc
