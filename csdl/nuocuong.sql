-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8000
-- Generation Time: Apr 24, 2022 at 03:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nuocuong`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
CREATE Database nuocuong;
use nuocuong;
CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `matkhau`) VALUES
(11, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(12, 'hihi@gmail.com', '202cb962ac59075b964b07152d234b70'),
(20, 'hoa@gmail.com', '9810784ce10b72a1ef2f50bc5fec59ba');

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `id` int(11) NOT NULL,
  `thucuong` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` float NOT NULL,
  `soluong` int(10) NOT NULL,
  `tongcong` float NOT NULL,
  `ngaydat` datetime NOT NULL,
  `trangthai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenkhachhang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdtkhachhang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailkhachhang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachikhachhang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`id`, `thucuong`, `gia`, `soluong`, `tongcong`, `ngaydat`, `trangthai`, `tenkhachhang`, `sdtkhachhang`, `emailkhachhang`, `diachikhachhang`) VALUES
(1, 'Trà Chanh', 46000, 2, 92000, '2022-04-23 03:40:34', 'Đã đặt', 'Đinh Thùy Hoa', '0123456789', 'hoa@gmail.com', 'Bạc Liêu'),
(42, 'Trà Dâu Tây', 24000, 1, 24000, '2022-04-24 07:00:27', 'Đã đặt', 'Đinh Thùy Hoa', '0123456789', 'hoa@gmail.com', 'Bạc Liêu'),
(43, 'Trà Việt Quất', 80000, 1, 80000, '2022-04-24 03:31:05', 'Đã đặt', 'Đinh Thùy Hoa', '0123456789', 'hoa@gmail.com', 'Bạc Liêu');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) UNSIGNED NOT NULL,
  `hoten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `hoten`, `email`, `matkhau`) VALUES
(1, 'Nguyen Tran Dang Khoa', 'khoakhoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Đinh Thùy Hoa', 'hoa@gmail.com', '9810784ce10b72a1ef2f50bc5fec59ba'),
(4, 'Nguyễn Văn A', 'a@gmail.com', '0cc175b9c0f1b6a831c399e269772661');

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

CREATE TABLE `phanhoi` (
  `id` int(11) UNSIGNED NOT NULL,
  `hoten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhthuc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phanhoi`
--

INSERT INTO `phanhoi` (`id`, `hoten`, `email`, `noidung`, `hinhthuc`) VALUES
(3, 'Đinh Thùy Hoa', 'hoa@gmail.com', 'Cần có thêm nhiều sản phẩm hơn với giá cả dành cho sinh viên', 'Giá thành sản phẩm');

-- --------------------------------------------------------

--
-- Table structure for table `thucuong`
--

CREATE TABLE `thucuong` (
  `id` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` float NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noibat` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thucuong`
--

INSERT INTO `thucuong` (`id`, `tieude`, `mota`, `gia`, `hinhanh`, `noibat`, `active`) VALUES
(12, 'Trà Chanh', 'Chanh có nhiều dưỡng chất tốt cho mắt', 46000, 'Drink955.jpg', 'Có', 'Còn hàng'),
(13, 'Trà Phúc Bồn Tử', 'Phúc bồn tử là loại quả hiếm rất là ngon', 57000, 'Drink813.jpg', 'Có', 'Còn hàng'),
(14, 'Trà Táo', 'Táo rất ngon và mát', 17000, 'Drink653.jpg', 'Không', 'Còn hàng'),
(15, 'Trà Vải', 'Vải rất mát khi uống lạnh', 32000, 'Drink619.jpg', 'Không', 'Còn hàng'),
(16, 'Trà Việt Quất', 'Việt quất là loại trái cây thiên nhiên rất tốt cho não bộ', 80000, 'Drink87.jpg', 'Không', 'Còn hàng'),
(17, 'Trà Xoài', 'Xoài có nhiều dưỡng chất tốt chống oxi hóa', 15000, 'Drink354.jpg', 'Không', 'Còn hàng'),
(18, 'Trà Sữa Trân Châu', 'Rất là béo thơm ngon', 34000, 'Drink170.png', 'Không', 'Còn hàng'),
(19, 'Trà Sữa Dâu', 'Ngon xoắn lưỡi', 25000, 'Drink997.png', 'Có', 'Còn hàng'),
(20, 'Trà Sữa Khoai Môn', 'Khoai môn cực kì ngon', 37000, 'Drink729.png', 'Có', 'Còn hàng'),
(21, 'Bạc Xĩu', 'Vị gần giống cà phê sữa nhưng thơm béo hơn', 27000, 'Drink249.jpg', 'Không', 'Còn hàng'),
(22, 'Cà Phê Đen', 'Uống vào là tỉnh', 11000, 'Drink466.jpg', 'Không', 'Còn hàng'),
(23, 'Cà phê Latte Đá', 'Latte đá rất thơm mát vào ngày hè', 36000, 'Drink684.png', 'Không', 'Còn hàng'),
(24, 'Nước Ép Cam', 'Cam có vitamin C rất tốt cho não bộ', 245000, 'Drink682.png', 'Không', 'Còn hàng'),
(25, 'Nước Ép Dâu', 'Dâu cực kì ngon', 19000, 'Drink108.jpg', 'Có', 'Còn hàng'),
(26, 'Nước Ép Cà Rốt', 'Cà rốt có caroten tốt cho sức khỏe', 254000, 'Drink116.png', 'Không', 'Hết hàng'),
(27, 'Nước Ép Kiwi', 'Ngon xoắn lưỡi cùng Kiwi', 15000, 'Drink437.jpg', 'Có', 'Hết hàng'),
(28, 'Nước Ép Ổi', 'Ổi tốt cho sức khỏe lắm đó nha', 39000, 'Drink602.jpg', 'Không', 'Hết hàng'),
(29, 'Nước Ép Thơm', 'Thơm ngọt ngon béo giòn tan', 15000, 'Drink777.png', 'Không', 'Hết hàng'),
(30, 'Trà Sữa Ô Lông', 'Kết hợp giữa sữa và Ô Lông cực kì thơm ngon', 25000, 'Drink484.png', 'Có', 'Hết hàng'),
(31, 'Trà Sữa Socola', 'Socola béo ngậy thơm ngon', 25000, 'Drink147.png', 'Không', 'Hết hàng'),
(33, 'Trà Cam Đào', 'Đào rất tốt cho tim mạch', 25000, 'Drink575.jpg', 'Có', 'Còn hàng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thucuong`
--
ALTER TABLE `thucuong`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dathang`
--
ALTER TABLE `dathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `thucuong`
--
ALTER TABLE `thucuong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
