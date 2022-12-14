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
(1, 'Tr?? Chanh', 46000, 2, 92000, '2022-04-23 03:40:34', '???? ?????t', '??inh Th??y Hoa', '0123456789', 'hoa@gmail.com', 'B???c Li??u'),
(42, 'Tr?? D??u T??y', 24000, 1, 24000, '2022-04-24 07:00:27', '???? ?????t', '??inh Th??y Hoa', '0123456789', 'hoa@gmail.com', 'B???c Li??u'),
(43, 'Tr?? Vi???t Qu???t', 80000, 1, 80000, '2022-04-24 03:31:05', '???? ?????t', '??inh Th??y Hoa', '0123456789', 'hoa@gmail.com', 'B???c Li??u');

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
(3, '??inh Th??y Hoa', 'hoa@gmail.com', '9810784ce10b72a1ef2f50bc5fec59ba'),
(4, 'Nguy???n V??n A', 'a@gmail.com', '0cc175b9c0f1b6a831c399e269772661');

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
(3, '??inh Th??y Hoa', 'hoa@gmail.com', 'C???n c?? th??m nhi???u s???n ph???m h??n v???i gi?? c??? d??nh cho sinh vi??n', 'Gi?? th??nh s???n ph???m');

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
(12, 'Tr?? Chanh', 'Chanh c?? nhi???u d?????ng ch???t t???t cho m???t', 46000, 'Drink955.jpg', 'C??', 'C??n h??ng'),
(13, 'Tr?? Ph??c B???n T???', 'Ph??c b???n t??? l?? lo???i qu??? hi???m r???t l?? ngon', 57000, 'Drink813.jpg', 'C??', 'C??n h??ng'),
(14, 'Tr?? T??o', 'T??o r???t ngon v?? m??t', 17000, 'Drink653.jpg', 'Kh??ng', 'C??n h??ng'),
(15, 'Tr?? V???i', 'V???i r???t m??t khi u???ng l???nh', 32000, 'Drink619.jpg', 'Kh??ng', 'C??n h??ng'),
(16, 'Tr?? Vi???t Qu???t', 'Vi???t qu???t l?? lo???i tr??i c??y thi??n nhi??n r???t t???t cho n??o b???', 80000, 'Drink87.jpg', 'Kh??ng', 'C??n h??ng'),
(17, 'Tr?? Xo??i', 'Xo??i c?? nhi???u d?????ng ch???t t???t ch???ng oxi h??a', 15000, 'Drink354.jpg', 'Kh??ng', 'C??n h??ng'),
(18, 'Tr?? S???a Tr??n Ch??u', 'R???t l?? b??o th??m ngon', 34000, 'Drink170.png', 'Kh??ng', 'C??n h??ng'),
(19, 'Tr?? S???a D??u', 'Ngon xo???n l?????i', 25000, 'Drink997.png', 'C??', 'C??n h??ng'),
(20, 'Tr?? S???a Khoai M??n', 'Khoai m??n c???c k?? ngon', 37000, 'Drink729.png', 'C??', 'C??n h??ng'),
(21, 'B???c X??u', 'V??? g???n gi???ng c?? ph?? s???a nh??ng th??m b??o h??n', 27000, 'Drink249.jpg', 'Kh??ng', 'C??n h??ng'),
(22, 'C?? Ph?? ??en', 'U???ng v??o l?? t???nh', 11000, 'Drink466.jpg', 'Kh??ng', 'C??n h??ng'),
(23, 'C?? ph?? Latte ????', 'Latte ???? r???t th??m m??t v??o ng??y h??', 36000, 'Drink684.png', 'Kh??ng', 'C??n h??ng'),
(24, 'N?????c ??p Cam', 'Cam c?? vitamin C r???t t???t cho n??o b???', 245000, 'Drink682.png', 'Kh??ng', 'C??n h??ng'),
(25, 'N?????c ??p D??u', 'D??u c???c k?? ngon', 19000, 'Drink108.jpg', 'C??', 'C??n h??ng'),
(26, 'N?????c ??p C?? R???t', 'C?? r???t c?? caroten t???t cho s???c kh???e', 254000, 'Drink116.png', 'Kh??ng', 'H???t h??ng'),
(27, 'N?????c ??p Kiwi', 'Ngon xo???n l?????i c??ng Kiwi', 15000, 'Drink437.jpg', 'C??', 'H???t h??ng'),
(28, 'N?????c ??p ???i', '???i t???t cho s???c kh???e l???m ???? nha', 39000, 'Drink602.jpg', 'Kh??ng', 'H???t h??ng'),
(29, 'N?????c ??p Th??m', 'Th??m ng???t ngon b??o gi??n tan', 15000, 'Drink777.png', 'Kh??ng', 'H???t h??ng'),
(30, 'Tr?? S???a ?? L??ng', 'K???t h???p gi???a s???a v?? ?? L??ng c???c k?? th??m ngon', 25000, 'Drink484.png', 'C??', 'H???t h??ng'),
(31, 'Tr?? S???a Socola', 'Socola b??o ng???y th??m ngon', 25000, 'Drink147.png', 'Kh??ng', 'H???t h??ng'),
(33, 'Tr?? Cam ????o', '????o r???t t???t cho tim m???ch', 25000, 'Drink575.jpg', 'C??', 'C??n h??ng');

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
