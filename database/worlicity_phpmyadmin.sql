-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 09, 2024 lúc 03:10 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `worlicity`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_types`
--

CREATE TABLE `account_types` (
  `account_type_id` int(11) NOT NULL,
  `account_type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account_types`
--

INSERT INTO `account_types` (`account_type_id`, `account_type_name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `areas`
--

CREATE TABLE `areas` (
  `area_id` int(11) NOT NULL,
  `area` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `areas`
--

INSERT INTO `areas` (`area_id`, `area`) VALUES
(1, '10'),
(2, '20'),
(3, '30'),
(4, '40'),
(5, '50'),
(6, '100'),
(7, '150'),
(8, '200'),
(9, '250'),
(10, '300'),
(11, '350'),
(12, '400'),
(13, '450'),
(14, '500');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bathrooms`
--

CREATE TABLE `bathrooms` (
  `bathroom_id` int(11) NOT NULL,
  `bathroom_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bathrooms`
--

INSERT INTO `bathrooms` (`bathroom_id`, `bathroom_count`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bedrooms`
--

CREATE TABLE `bedrooms` (
  `bedroom_id` int(11) NOT NULL,
  `bedroom_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bedrooms`
--

INSERT INTO `bedrooms` (`bedroom_id`, `bedroom_count`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genders`
--

CREATE TABLE `genders` (
  `gender_id` int(11) NOT NULL,
  `gender_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `genders`
--

INSERT INTO `genders` (`gender_id`, `gender_name`) VALUES
(1, 'Tất cả'),
(2, 'Nam'),
(3, 'Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `locations`
--

INSERT INTO `locations` (`location_id`, `property_id`, `latitude`, `longitude`, `address`, `district`) VALUES
(2, 2, NULL, NULL, '146 Bùi Vịnh, phường Hòa Phát, quận Cẩm Lệ, Đà Nẵng', 'Cẩm Lệ'),
(3, 3, NULL, NULL, '196/50 Đường Trần Cao Vân, Phường Tam Thuận, Quận Thanh Khê, Đà Nẵng', 'Thanh Khê'),
(4, 4, NULL, NULL, '123 Núi Thành, Phường Hòa Cường Nam, Quận Hải Châu, Đà Nẵng', 'Hải Châu'),
(5, 5, NULL, NULL, '44 Đào Sư Tích, Phường Hòa Minh, Quận Liên Chiểu, Đà Nẵng', 'Liên Chiểu'),
(6, 6, NULL, NULL, '101/1 Lê Hữu Trác, Phường Phước Mỹ, Quận Sơn Trà, Đà Nẵng', 'Sơn Trà'),
(7, 7, NULL, NULL, 'K35/3 Đường Nam Thành, Phường Hòa Hải, Quận Ngũ Hành Sơn, Đà Nẵng', 'Ngũ Hành Sơn'),
(8, 8, NULL, NULL, '190 Cao Bá Đạt, Phường Hòa Châu, Huyện Hoà Vang, Đà Nẵng', 'Hoà Vang'),
(9, 9, NULL, NULL, '765 Trần Cao Vân, Thanh Khê Tây, Thanh Khê, Đà Nẵng', 'Thanh Khê'),
(10, 10, NULL, NULL, '11 Đường Hà Huy Giáp, Phường Hòa Cường Nam, Hải Châu, Đà Nẵng', 'Hải Châu'),
(11, 11, NULL, NULL, '34 Đường Nguyễn Xuân Khoát, Phường Phước Mỹ, Sơn Trà, Đà Nẵng', 'Sơn Trà'),
(12, 12, NULL, NULL, 'Thanh Lương, Hoà Xuân, Cẩm Lệ', 'Cẩm Lệ'),
(13, 13, NULL, NULL, 'Đường Tốt Động, Phường Hòa Minh, Liên Chiểu, Đà Nẵng', 'Liên Chiểu'),
(14, 14, NULL, NULL, 'Đường Nguyễn Đình Trân, Phường Khuê Mỹ, Ngũ Hành Sơn, Đà Nẵng', 'Ngũ Hành Sơn'),
(15, 15, NULL, NULL, '154 Đường DH8, Phường Hòa Châu, Huyện Hoà Vang, Đà Nẵng', 'Hoà Vang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_blog`
--

CREATE TABLE `news_blog` (
  `news_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `view_count` int(11) DEFAULT 0,
  `news_image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_tags`
--

CREATE TABLE `news_tags` (
  `news_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `properties`
--

CREATE TABLE `properties` (
  `property_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT 1,
  `property_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `price` float DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'unknown',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `age` int(11) DEFAULT NULL,
  `real_area` decimal(10,0) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `view_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `properties`
--

INSERT INTO `properties` (`property_id`, `user_id`, `type_id`, `gender_id`, `property_name`, `description`, `address`, `price`, `status`, `created_at`, `updated_at`, `age`, `real_area`, `unit`, `view_count`) VALUES
(2, 1, 1, 1, 'Phòng trọ mới xây sạch sẽ, có gác lững, khu an ninh tốt', '<p>C&ograve;n 1 ph&ograve;ng trống tho&aacute;t sạch sẽ, c&oacute; g&aacute;c lững. C&oacute; điều ho&agrave;. C&oacute; chỗ để xe , camera an ninh đầy đủ . Wifi miễn ph&iacute;, kh&ocirc;ng chung chủ giờ tự do.</p>', '146 Bùi Vịnh, phường Hòa Phát, quận Cẩm Lệ, Đà Nẵng', 2200000, 'unknown', '2024-05-07 16:00:08', '2024-05-08 14:32:29', 2024, 20, 'tháng', 68),
(3, 1, 1, 1, 'Phòng đẹp đường Trần Cao Vân, có gác lửng, diện tích từ 20-25 m2.', '<p>Ph&ograve;ng trọ mới c&oacute; g&aacute;c lửng , tho&aacute;ng m&aacute;t . nằm tại trung t&acirc;m th&agrave;nh phố gần c&aacute;c trường học, bệnh viện , chợ v&agrave; c&aacute;ch biển 200 m. Khu vực d&acirc;n cư an ninh, Diện t&iacute;ch từ 22-25 m2. Ph&ograve;ng c&oacute; m&aacute;y nước n&oacute;ng, điều h&ograve;a. C&oacute; s&acirc;n để xe v&agrave; s&acirc;n phơi. Wifi Free , camera gi&aacute;m s&aacute;t</p>', '196/50 Đường Trần Cao Vân, Phường Tam Thuận, Quận Thanh Khê, Đà Nẵng', 2500000, 'unknown', '2024-05-08 13:56:18', '2024-05-08 14:32:28', 2020, 25, 'tháng', 44),
(4, 1, 1, 1, 'Phòng trọ Hải Châu giá rẻ 30m2 gần trường đại học Kiến trúc, Đông Á', '<p><strong>Nằm trục đường n&uacute;i th&agrave;nh c&aacute;ch trường đại học Kiến Tr&uacute;c v&agrave; Đ&ocirc;ng &Aacute; chỉ 2 ph&uacute;t đi bộ.</strong></p>\r\n<p><strong>Khu d&acirc;n tr&iacute; cao, y&ecirc;n tĩnh rất th&iacute;ch hợp cho c&aacute;c bạn luyện thi học tập</strong></p>\r\n<p><strong>Tho&aacute;ng m&aacute;t l&agrave; điều kh&ocirc;ng thể thiếu, c&oacute; thể ở gh&eacute;p t&ugrave;y &yacute; c&aacute;c bạn, lối đi ri&ecirc;ng biệt.</strong></p>\r\n<p><strong>Chỗ để xe rộng r&atilde;i, an ninh cực kỳ tốt.</strong></p>\r\n<p><strong>Y&Ecirc;U CẦU</strong></p>\r\n<p><strong>Giữ vệ sinh, v&agrave; kh&ocirc;ng ảnh hưởng đến c&aacute;c bạn xung quanh.</strong></p>\r\n<p><strong>Gi&aacute; tr&ecirc;n chưa phải gi&aacute; cuối c&ograve;n thương lượng sau</strong></p>\r\n<p><strong>C&aacute;c bạn xem tui vui l&ograve;ng gọi điện hoặc zalo cho m&igrave;nh theo</strong></p>\r\n<p><strong>SĐT: 0914065814</strong></p>', '123 Núi Thành, Phường Hòa Cường Nam, Quận Hải Châu, Đà Nẵng', 2000000, 'unknown', '2024-05-08 14:43:03', '2024-05-08 14:44:27', 2022, 30, 'tháng', 32),
(5, 1, 1, 1, 'Cho thuê phòng trọ có điều hòa, an ninh tốt, gần các trường đại học, khu CN, ngay Đào Sư Tích, Đà Nẵng', '<p>Cho thu&ecirc; ph&ograve;ng trọ ở 44 Đ&agrave;o Sư T&iacute;ch, H&ograve;a Minh, Li&ecirc;n Chiểu, Đ&agrave; Nẵng.</p>\r\n<p>G&iacute;a thu&ecirc; <strong><em>1,7 triệu/th&aacute;ng</em></strong>.</p>\r\n<p>Ph&ograve;ng c&oacute; điều ho&agrave;, M&aacute;y nước n&oacute;ng.</p>\r\n<p>C&oacute; S&acirc;n để xe. an ninh tốt, c&oacute; camera 24/24</p>\r\n<p>Vị tr&iacute; đắc địa, gần Khu c&ocirc;ng nghiệp, chợ, trường học sư phạm, b&aacute;ch khoa,</p>\r\n<p>Sinh hoạt giờ tự do, kh&ocirc;ng chung chủ</p>\r\n<p><strong><em>0918.346.292</em></strong></p>', '44 Đào Sư Tích, Phường Hòa Minh, Quận Liên Chiểu, Đà Nẵng', 1700000, 'unknown', '2024-05-08 15:11:16', '2024-05-09 13:01:34', 2024, 20, 'tháng', 15),
(6, 4, 1, 1, 'Cho thuê phòng trọ có gác lửng, cửa sổ, Lê Hữu Trác, Sơn Trà, gần trường CĐ Lương thực thực phẩm', '<p>Cho thu&ecirc; ph&ograve;ng trọ g&aacute;c lửng, c&oacute; cửa sổ tho&aacute;ng m&aacute;t</p>\r\n<p>Ở tầng 3, Diện t&iacute;ch 22m2</p>\r\n<p>Đc: 101/1 L&ecirc; Hữu Tr&aacute;c, Sơn Tr&agrave;, Đ&agrave; Nẵng</p>\r\n<p>Khu vực tiện di chuyển trước trường Cao Đẳng Lương Thực Thực Phẩm, gần chợ, Cầu Rồng</p>\r\n<p>Wifi miễn ph&iacute;, giờ giấc tự do</p>\r\n<p>C&oacute; G&aacute;c Lửng, bếp v&agrave; tủ cho nấu ăn</p>\r\n<p>Camera gi&aacute;m s&aacute;t nh&agrave; xe 24/24</p>\r\n<p>Gi&aacute; <strong>2tr1</strong> <em><strong>(Cọc 1tr)</strong> </em>thanh to&aacute;n tiền theo từng th&aacute;ng</p>\r\n<p>Điện 3.5,5k chữ, nước 35k/ th&aacute;ng ( nam nữ chung được)</p>\r\n<p>Vui l&ograve;ng gọi trực tiếp cảm ơn</p>', '101/1 Lê Hữu Trác, Phường Phước Mỹ, Quận Sơn Trà, Đà Nẵng', 2100000, 'unknown', '2024-05-08 15:16:09', '2024-05-08 16:15:36', 2023, 22, 'tháng', 4),
(7, 4, 1, 2, 'Cho thuê phòng trọ giá rẻ khu vực ngay chợ Non Nước, Ngũ hành sơn', '<p>Cho thu&ecirc; nh&agrave; ngay chợ Non Nước , gần nhiều trường đại học cao đẳng cho c&aacute;c bạn sinh vi&ecirc;n như Đại học c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; truyền th&ocirc;ng Việt - H&agrave;n , Trường ĐH FPT Đ&agrave; Nẵng &hellip;..</p>\r\n<p>C&oacute; lối để xe rộng r&atilde;i</p>\r\n<p>An ninh tốt</p>\r\n<p>ph&ograve;ng ở tho&aacute;ng m&aacute;t sạch sẽ c&oacute; wifi free ( nhiều ph&ograve;ng c&oacute; trang thiết bị đầy đủ như giường , tủ &hellip;)</p>\r\n<p>camera 24/24 n&ecirc;n mọi người c&oacute; thể y&ecirc;n t&acirc;m</p>\r\n<p>tất cả c&aacute;c ph&ograve;ng đều c&oacute; cửa số tho&aacute;ng m&aacute;t nhiều &aacute;nh s&aacute;ng</p>\r\n<p>C&oacute; thể trực tiếp đến xem ph&ograve;ng bất cứ l&uacute;c n&agrave;o . H&atilde;y li&ecirc;n hệ nếu bạn cần nh&eacute;</p>', 'K35/3 Đường Nam Thành, Phường Hòa Hải, Quận Ngũ Hành Sơn, Đà Nẵng', 1500000, 'unknown', '2024-05-08 15:26:32', '2024-05-08 17:02:32', 2023, 20, 'tháng', 4),
(8, 4, 1, 3, 'Cho thuê phòng trọ giá rẻ, mới – đường Cao Bá Đạt', '<p>CHO THU&Ecirc; PH&Ograve;NG TRỌ GI&Aacute; RẺ MỚI X&Acirc;Y:</p>\r\n<p>** M&ocirc; tả:</p>\r\n<p>Trần thả laphong, x&acirc;y cao 5m đảm bảo tho&aacute;ng m&aacute;t, kh&ocirc;ng n&oacute;ng nực trong những ng&agrave;y h&egrave;.</p>\r\n<p>Thiết bị vệ sinh Viglacera h&agrave;ng chất lượng.</p>\r\n<p>Nh&agrave; trọ cao r&aacute;o, khu vực an ninh trật tự. Ph&ograve;ng được ốp tường sạch sẽ.</p>\r\n<p>C&oacute; g&aacute;c lửng rộng r&atilde;i, c&oacute; camera an ninh 24/24</p>\r\n<p>** Tại: Cao B&aacute; Đạt giao với Trịnh Quang Xu&acirc;n &ndash; Ho&agrave; Ch&acirc;u &ndash; Ho&agrave; Vang (Từ đường Phạm H&ugrave;ng rẽ v&agrave;o)</p>\r\n<p>Gi&aacute; thu&ecirc;: 1tr6/ th&aacute;ng</p>\r\n<p>Vui l&ograve;ng li&ecirc;n hệ: <em><strong>0869627282</strong></em></p>', '190 Cao Bá Đạt, Phường Hòa Châu, Huyện Hoà Vang, Đà Nẵng', 1600000, 'unknown', '2024-05-08 15:34:51', '2024-05-08 16:58:39', 2019, 21, 'tháng', 4),
(9, 2, 2, 1, 'Cho thuê nhà 3 tầng mặt tiền Trần Cao Vân, full nội thất, khu kinh doanh đa ngành nghề', '<p>CHO THU&Ecirc; NH&Agrave; 3 TẦNG TRẦN CAO V&Acirc;N</p>\r\n<p>DIỆN T&Iacute;CH 50M2</p>\r\n<p>C&Ocirc;NG NĂNG: 3PN, 3 TOILET, FULL NỘI THẤT.</p>\r\n<p>GẦN NGAY NG&Atilde; 3 , KHU KINH DOANH Đ&Ocirc;NG Đ&Uacute;C, NHỘN NHỊP CẢ NG&Agrave;Y.</p>\r\n<p>GI&Aacute; 16 TRIỆU/TH&Aacute;NG</p>\r\n<p>LI&Ecirc;N HỆ 0935038352</p>', '765 Trần Cao Vân, Thanh Khê Tây, Thanh Khê, Đà Nẵng', 16000000, 'unknown', '2024-05-08 15:45:46', '2024-05-08 16:23:11', 2023, 50, 'tháng', 8),
(10, 1, 2, 1, 'CHO THUÊ NHÀ HÒA CƯỜNG HẢI CHÂU 95M2', '<p>Cho thu&ecirc; nh&agrave; tại trung t&acirc;m Đ&agrave; Nẵng:</p>\r\n<p>- Vị tr&iacute; trung t&acirc;m Đ&agrave; Nẵng, gần s&acirc;n bay, si&ecirc;u thị, v&agrave; khu vui chơi Helio.</p>\r\n<p>- C&aacute;ch c&ocirc;ng vi&ecirc;n Ch&acirc;u &Aacute; v&agrave; c&aacute;c trường Đại học Ngoại Ngữ, Kiến Tr&uacute;c, Đ&ocirc;ng &Aacute; chỉ trong khoảng c&aacute;ch gần.</p>\r\n<p>- Nh&agrave; ri&ecirc;ng rộng r&atilde;i với 3 m&ecirc; lệch.</p>\r\n<p>- Bốn ph&ograve;ng ngủ v&agrave; ba ph&ograve;ng tắm.</p>\r\n<p>- Tổng diện t&iacute;ch sử dụng l&agrave; 80m&sup2;.</p>', '11 Đường Hà Huy Giáp, Phường Hòa Cường Nam, Hải Châu, Đà Nẵng', 15000000, 'unknown', '2024-05-08 16:12:37', '2024-05-09 12:54:10', 2023, 95, 'tháng', 19),
(11, 1, 2, 1, 'Cho thuê nhà 2 tầng mặt tiền đường Nguyễn Xuân Khoát, gần Cầu Rồng, Sơn Trà', '<p>Cho thu&ecirc; nh&agrave; 2 tầng mặt tiền đường Nguyễn Xu&acirc;n Kho&aacute;t, An Hải Bắc, Sơn Tr&agrave;</p>\r\n<p>- Diện t&iacute;ch: 100 m2; Đường 5m5, lề 3m</p>\r\n<p>- Nh&agrave; 2 tầng, 3 ph&ograve;ng ngủ kh&eacute;p k&iacute;n, đầy đủ nội thất, c&oacute; cho kh&aacute;ch nước ngo&agrave;i thu&ecirc;</p>\r\n<p>- Vị tr&iacute;: Gần cầu S&ocirc;ng H&agrave;n, Song song trục đường Phạm Văn Đồng, c&aacute;ch biển chưa đến 1km, Khu phố H&agrave;n sầm uất, nhiều kh&aacute;ch du lịch, th&iacute;ch hợp thu&ecirc; ở kết hợp mở văn ph&ograve;ng</p>\r\n<p>- Gi&aacute; cho thu&ecirc;: 12 triệu / th&aacute;ng, cọc 1 thanh to&aacute;n 3 hoặc 6 th&aacute;ng / lần, HD l&acirc;u d&agrave;i</p>\r\n<p>-------------------------------------</p>\r\n<p>Li&ecirc;n Hệ : THỦY CALL/ZALO 0906449600</p>', '34 Đường Nguyễn Xuân Khoát, Phường Phước Mỹ, Sơn Trà, Đà Nẵng', 12000000, 'unknown', '2024-05-08 16:34:55', '2024-05-08 16:34:55', 2020, 100, 'tháng', 1),
(12, 2, 2, 1, 'Cho thuê nhà 3 tầng Thanh Lương, Hoà Xuân, Cẩm Lệ', '<p>Cho thu&ecirc; nh&agrave; 3 tầng Thanh Lương, Ho&agrave; Xu&acirc;n, Cẩm Lệ</p>\r\n<p>&mdash;&mdash;&mdash;-</p>\r\n<p>C&ocirc;ng năng 3 ph&ograve;ng ngủ, 3 tolet kh&eacute;p k&iacute;n</p>\r\n<p>Nh&agrave; mới nội thất đầy đủ, khu d&acirc;n cư an ninh, đường lớn</p>\r\n<p>C&oacute; s&acirc;n đậu oto</p>\r\n<p>Hướng: T&acirc;y Bắc</p>\r\n<p>Gi&aacute; thu&ecirc; :11 triệu/ th&aacute;ng</p>\r\n<p>️Li&ecirc;n hệ Call/ Zalo : 0935.162.029</p>', 'Thanh Lương, Hoà Xuân, Cẩm Lệ', 11000000, 'unknown', '2024-05-08 16:39:24', '2024-05-08 16:39:24', 2022, 100, 'tháng', 1),
(13, 2, 2, 1, 'Chính chủ cần cho thuê nhà shophouse 3 mặt tiền, 4 tầng, ngã tư đường Hoàng Thị Loan và Tốt Động, Liên Chiểu', '<p>Ch&iacute;nh chủ cho thu&ecirc; nh&agrave; 4 Tầng , 3 Mặt Tiền đường Ho&agrave;ng Thị Loan</p>\r\n<p>Diện t&iacute;ch : ngang 7,7m d&agrave;i 20m</p>\r\n<p>Vị tr&iacute;. Nằm tr&ecirc;n trục đường Ho&agrave;ng Thị Loan, gi&aacute;p với đường Nguyễn Sinh Sắc, Gần biển, gần UbND quận li&ecirc;n chiểu, Gần c&aacute;c trường học, Gần bệnh viện u&ocirc;ng Bứu</p>\r\n<p>Nh&agrave; 3 mặt tiền, tho&aacute;ng đản, d&acirc;n cư Đ&ocirc;ng đ&uacute;c, rất th&iacute;ch hợp cho thu&ecirc; l&agrave;m văn Ph&ograve;ng , Cafe, giải tr&iacute; ....</p>\r\n<p>Ac c&oacute; Nhu cầu Thu&ecirc; lh: 0905878310 ch&iacute;nh chủ</p>', 'Đường Tốt Động, Phường Hòa Minh, Liên Chiểu, Đà Nẵng', 40000000, 'unknown', '2024-05-08 16:44:48', '2024-05-08 17:05:26', 2022, 145, 'tháng', 3),
(14, 4, 2, 1, 'Cho thuê nhà 4 tầng 7PN full nội thất mặt tiền Nguyễn Đình Trân, gần VVMALL và BV 600 giường', '<p>CHO THU&Ecirc; NH&Agrave; 4 TẦNG 7PN FULL NỘI THẤT MẶT TIỀN NGUYỄN Đ&Igrave;NH TR&Acirc;N, GẦN VVMALL V&Agrave; BV NHI.</p>\r\n<p>- Diện t&iacute;ch: 100m2 * 4 tầng. Đường 7m5, trục th&ocirc;ng từ L&ecirc; Văn Hiến ra biển.</p>\r\n<p>- Nh&agrave; mới Nguy&ecirc;n căn 7 ph&ograve;ng ri&ecirc;ng, 7 wc, ph&ograve;ng bếp, ph&ograve;ng kh&aacute;ch, nh&agrave; để xe.</p>\r\n<p>- Nh&agrave; vị tr&iacute; đẹp, Khu Saphia Ngũ H&agrave;nh Sơn rất th&iacute;ch hợp ở văn ph&ograve;ng, c&ocirc;ng ty, ở gia đ&igrave;nh, v.v.v.</p>\r\n<p>- Gi&aacute; cho thu&ecirc;: 18 triệu/th&aacute;ng, cho thu&ecirc; l&acirc;u d&agrave;i, cọc 1 thanh to&aacute;n 6.( gi&aacute; cũ 20tr)</p>\r\n<p>-------------------------------------</p>\r\n<p>Li&ecirc;n Hệ : Giang - 0987654321</p>', 'Đường Nguyễn Đình Trân, Phường Khuê Mỹ, Ngũ Hành Sơn, Đà Nẵng', 18000000, 'unknown', '2024-05-08 16:50:00', '2024-05-08 16:50:01', 2018, 100, 'tháng', 1),
(15, 4, 2, 1, 'Cho thuê nhà 2 tầng đường Đặng Hòa, H. Hòa Vang, DT 5x20m', '<p>Cho thu&ecirc; nh&agrave; 2 tầng đường Đặng H&ograve;a, x&atilde; H&ograve;a Ch&acirc;u, Huyện H&ograve;a Vang, tp. Đ&agrave; Nẵng. DT 5x20m, Nh&agrave; 2 tầng, 3 ph&ograve;ng ngủ, 2 ph&ograve;ng wc, 1 ph&ograve;ng kh&aacute;ch, 1 ph&ograve;ng bếp. Nh&agrave; ngay gần trục đường ch&iacute;nh Phạm H&ugrave;ng, Gần chợ Cẩm Lệ, gần ch&ugrave;a Nam Sơn, mặt v&agrave; lề đường rộng r&atilde;i, &ocirc; t&ocirc; ra v&agrave;o thoải m&aacute;i.</p>\r\n<p>Ph&ugrave; hợp với kh&aacute;ch mua ở, kinh doanh online, l&agrave;m văn ph&ograve;ng,...</p>\r\n<p>Nh&agrave; hướng nam, đ&atilde; c&oacute; sổ.</p>\r\n<p>Khu d&acirc;n cư hiện hữu, đảm bảo an ninh</p>\r\n<p>Gi&aacute; thu&ecirc; chỉ 9 triệu/th&aacute;ng</p>\r\n<p>Ch&iacute;nh chủ cho thu&ecirc;, miễn tiếp trung gian, m&ocirc;i giới.</p>', '154 Đường DH8, Phường Hòa Châu, Huyện Hoà Vang, Đà Nẵng', 9000000, 'unknown', '2024-05-08 16:53:36', '2024-05-08 17:05:33', 2018, 100, 'tháng', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_details`
--

CREATE TABLE `property_details` (
  `detail_id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `bedroom_id` int(11) DEFAULT NULL,
  `bathroom_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `property_details`
--

INSERT INTO `property_details` (`detail_id`, `property_id`, `bedroom_id`, `bathroom_id`, `area_id`) VALUES
(2, 2, 1, 1, 2),
(3, 3, 1, 1, 3),
(4, 4, 1, 1, 3),
(5, 5, 1, 1, 2),
(6, 6, 1, 1, 2),
(7, 7, 1, 1, 2),
(8, 8, 1, 1, 2),
(9, 9, 3, 3, 5),
(10, 10, 4, 3, 6),
(11, 11, 3, 2, 6),
(12, 12, 3, 3, 6),
(13, 13, 8, 8, 7),
(14, 14, 7, 7, 6),
(15, 15, 3, 2, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_images`
--

CREATE TABLE `property_images` (
  `image_id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `image_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `property_images`
--

INSERT INTO `property_images` (`image_id`, `property_id`, `image_url`) VALUES
(7, 2, 'IMG-663a50083a8819.46950716.jpg'),
(8, 2, 'IMG-663a50083ac9b5.03585477.jpg'),
(9, 2, 'IMG-663a50083b06a0.95538796.jpg'),
(10, 2, 'IMG-663a50083b4ee1.23916674.jpg'),
(11, 2, 'IMG-663a50083b9276.75449397.jpg'),
(12, 3, 'IMG-663b8482518c88.50022632.jpg'),
(13, 3, 'IMG-663b848251ce18.90061456.jpg'),
(14, 3, 'IMG-663b84825208a3.33131450.jpg'),
(15, 3, 'IMG-663b8482524056.80176634.jpg'),
(16, 3, 'IMG-663b84825272f3.36582041.jpg'),
(17, 4, 'IMG-663b8f778219b5.88287570.jpg'),
(18, 4, 'IMG-663b8f77826739.38371534.jpg'),
(19, 4, 'IMG-663b8f7782b201.63954497.jpg'),
(20, 5, 'IMG-663b9614e77996.22041614.jpg'),
(21, 5, 'IMG-663b9614e7c0d9.01832636.jpg'),
(22, 5, 'IMG-663b9614e80038.07548709.jpg'),
(23, 5, 'IMG-663b9614e83eb6.85047601.jpg'),
(24, 5, 'IMG-663b9614e8d044.64600583.jpg'),
(25, 5, 'IMG-663b9614e91887.90239821.jpg'),
(26, 6, 'IMG-663b973988fe59.18419910.jpg'),
(27, 6, 'IMG-663b97398967b7.18562968.jpg'),
(28, 6, 'IMG-663b973989d495.48417807.jpg'),
(29, 6, 'IMG-663b97398a1d05.90662949.jpg'),
(30, 6, 'IMG-663b97398a5dd3.50302941.jpg'),
(31, 7, 'IMG-663b99a849c1f8.66824909.jpg'),
(32, 7, 'IMG-663b99a84a0a15.15559026.jpg'),
(33, 7, 'IMG-663b99a84a4256.08761694.jpg'),
(34, 7, 'IMG-663b99a84a7a08.72120165.jpg'),
(35, 7, 'IMG-663b99a84abd64.43333978.jpg'),
(36, 7, 'IMG-663b99a84b9d29.87020391.jpg'),
(37, 8, 'IMG-663b9b9be3a1c7.27511369.jpg'),
(38, 8, 'IMG-663b9b9be420e2.85302315.jpg'),
(39, 8, 'IMG-663b9b9be46434.76861684.jpg'),
(40, 9, 'IMG-663b9e2a5aac30.21086764.jpg'),
(41, 9, 'IMG-663b9e2a5afce9.25947903.jpg'),
(42, 9, 'IMG-663b9e2a5b4573.38904445.jpg'),
(43, 9, 'IMG-663b9e2a5b8292.73660648.jpg'),
(44, 10, 'IMG-663ba47581c654.64014177.jpg'),
(45, 10, 'IMG-663ba475820e97.40620875.jpg'),
(46, 10, 'IMG-663ba475824df6.48463798.jpg'),
(47, 11, 'IMG-663ba9afc1e0f6.99965746.jpg'),
(48, 11, 'IMG-663ba9afc22048.27871141.jpg'),
(49, 11, 'IMG-663ba9afc264a4.85750028.jpg'),
(50, 11, 'IMG-663ba9afc2a214.91050532.jpg'),
(51, 11, 'IMG-663ba9afc2ddf0.87316748.jpg'),
(52, 11, 'IMG-663ba9afc318c3.10316824.jpg'),
(53, 12, 'IMG-663baabc4bd068.80504635.jpg'),
(54, 12, 'IMG-663baabc4c0db3.11067046.jpg'),
(55, 12, 'IMG-663baabc4c45d4.39785397.jpg'),
(56, 12, 'IMG-663baabc4c7d81.25733027.jpg'),
(57, 12, 'IMG-663baabc4cb6d6.83333487.jpg'),
(58, 12, 'IMG-663baabc4cf4b4.13374611.jpg'),
(59, 13, 'IMG-663bac008983c5.03699661.jpg'),
(60, 13, 'IMG-663bac0089ce12.64878277.jpg'),
(61, 13, 'IMG-663bac008a5044.18744584.jpg'),
(62, 13, 'IMG-663bac008a8c71.39312344.jpg'),
(63, 14, 'IMG-663bad38f3ced0.58556816.jpg'),
(64, 14, 'IMG-663bad38f40de8.97289410.jpg'),
(65, 14, 'IMG-663bad390028e3.17639860.jpg'),
(66, 14, 'IMG-663bad39005f57.80208005.jpg'),
(67, 15, 'IMG-663bae104247d6.95850735.jpg'),
(68, 15, 'IMG-663bae10428095.03849716.jpg'),
(69, 15, 'IMG-663bae1042fd22.14449430.jpg'),
(70, 15, 'IMG-663bae10433312.88373273.jpg'),
(71, 15, 'IMG-663bae10436797.76530934.jpg'),
(72, 15, 'IMG-663bae10439cb0.91108413.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_types`
--

CREATE TABLE `property_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `property_types`
--

INSERT INTO `property_types` (`type_id`, `type_name`) VALUES
(1, 'Phòng trọ'),
(2, 'Nhà nguyên căn'),
(3, 'Căn hộ chung cư'),
(4, 'Tìm người ở ghép');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_utilities`
--

CREATE TABLE `property_utilities` (
  `property_id` int(11) NOT NULL,
  `utility_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `property_utilities`
--

INSERT INTO `property_utilities` (`property_id`, `utility_id`) VALUES
(2, 2),
(2, 3),
(2, 10),
(2, 11),
(2, 13),
(2, 15),
(2, 19),
(3, 2),
(3, 5),
(3, 10),
(3, 11),
(3, 13),
(3, 16),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(4, 3),
(4, 9),
(4, 10),
(4, 13),
(4, 15),
(4, 18),
(4, 19),
(4, 20),
(5, 2),
(5, 5),
(5, 7),
(5, 9),
(5, 10),
(5, 13),
(5, 19),
(6, 1),
(6, 2),
(6, 6),
(6, 9),
(6, 10),
(6, 13),
(6, 19),
(6, 21),
(7, 3),
(7, 6),
(7, 10),
(7, 13),
(7, 18),
(7, 19),
(7, 21),
(8, 3),
(8, 10),
(8, 11),
(8, 13),
(8, 15),
(8, 17),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 7),
(9, 8),
(9, 9),
(9, 12),
(9, 13),
(9, 15),
(9, 16),
(9, 18),
(9, 19),
(9, 20),
(10, 1),
(10, 2),
(10, 5),
(10, 7),
(10, 10),
(10, 12),
(10, 13),
(10, 14),
(10, 15),
(10, 19),
(10, 20),
(11, 1),
(11, 10),
(11, 12),
(11, 13),
(11, 15),
(11, 17),
(11, 18),
(11, 19),
(11, 20),
(12, 2),
(12, 3),
(12, 5),
(12, 6),
(12, 7),
(12, 8),
(12, 9),
(12, 10),
(12, 12),
(12, 13),
(12, 15),
(12, 17),
(12, 19),
(13, 1),
(13, 15),
(13, 16),
(13, 19),
(14, 1),
(14, 2),
(14, 3),
(14, 5),
(14, 7),
(14, 8),
(14, 9),
(14, 10),
(14, 12),
(14, 15),
(14, 16),
(14, 18),
(15, 1),
(15, 2),
(15, 5),
(15, 6),
(15, 7),
(15, 8),
(15, 9),
(15, 10),
(15, 12),
(15, 13),
(15, 15),
(15, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `tags_id` int(11) NOT NULL,
  `tags_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`tags_id`, `tags_name`) VALUES
(1, 'Tin tức'),
(2, 'Blog'),
(3, 'Tư vấn'),
(4, 'Chính sách'),
(5, 'Kinh nghiệm'),
(6, 'Phong cách sống'),
(7, 'Thiết kế nội thất'),
(8, 'Cải tạo nhà cửa'),
(9, 'Xây dựng nhà'),
(10, 'Đầu tư'),
(11, 'Pháp lý'),
(12, 'Hướng dẫn'),
(13, 'Phân tích thị trường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fullname` varchar(100) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `avatar_url` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone_number`, `account_type_id`, `created_at`, `updated_at`, `fullname`, `user_address`, `state`, `about`, `facebook`, `avatar_url`, `status`) VALUES
(1, 'nhantran', 'ef8a25eca73e7c0f0bc20aab73dd826d', 'ttnhan2642@gmail.com', '0935614863', 1, '2024-04-28 02:23:07', '2024-05-03 00:23:41', 'Trần Thành Nhân', 'Sơn Trà', 'Việt Nam', 'Nhân Trần Admin 123', 'https://www.facebook.com/nhantran', 'IMG-6631f0b9279b88.43773815.jpg', NULL),
(2, 'nhinguyen', '7c532ec14dd3837666138edbbd90172d', 'nhinguyen0492@gmail.com', '0901167702', 2, '2024-04-28 02:28:34', '2024-05-08 15:39:50', 'Nguyễn Thục Nhi', 'Hải Châu', 'Việt Nam', 'Thục Nhi User', 'https://www.facebook.com/nhii0492', 'IMG-663b9cc614fe82.10380110.jpg', NULL),
(3, 'tranthanhnhan', 'e10adc3949ba59abbe56e057f20f883e', 'undefeder@gmai.com', '', NULL, '2024-04-28 03:29:14', '2024-04-28 03:29:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'sallytran', '693b0f1c07ebd0a2448704f635f58032', 'hgiang140302@gmail.com', '0931915108', NULL, '2024-04-29 14:22:04', '2024-05-01 08:30:22', 'Lê Trần Hương Giang', 'Thanh Khê', 'Việt Nam', 'Sally Trần User', 'https://www.facebook.com/Salilyyyy', 'IMG-6631fd9e0f8a32.11485764.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `utilities`
--

CREATE TABLE `utilities` (
  `utility_id` int(11) NOT NULL,
  `utility_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `utilities`
--

INSERT INTO `utilities` (`utility_id`, `utility_name`) VALUES
(1, 'Ban công'),
(2, 'Điều hòa'),
(3, 'Máy giặt'),
(4, 'Máy sấy quần áo'),
(5, 'Máy nước nóng lạnh'),
(6, 'Bếp gas'),
(7, 'Bếp điện từ'),
(8, 'Tivi'),
(9, 'Tủ lạnh'),
(10, 'Internet(Wi-fi)'),
(11, 'Cho phép vật nuôi'),
(12, 'Nội thất đầy đủ'),
(13, 'Chỗ để xe'),
(14, 'Sân vườn'),
(15, 'Mặt tiền'),
(16, 'Gần biển'),
(17, 'Gần sông'),
(18, 'Gần bệnh viện'),
(19, 'Gần trường học'),
(20, 'Trung tâm thành phố'),
(21, 'Trong hẻm');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`account_type_id`);

--
-- Chỉ mục cho bảng `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`area_id`);

--
-- Chỉ mục cho bảng `bathrooms`
--
ALTER TABLE `bathrooms`
  ADD PRIMARY KEY (`bathroom_id`);

--
-- Chỉ mục cho bảng `bedrooms`
--
ALTER TABLE `bedrooms`
  ADD PRIMARY KEY (`bedroom_id`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `fk_favorite_user` (`user_id`),
  ADD KEY `fk_favorite_property` (`property_id`);

--
-- Chỉ mục cho bảng `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`gender_id`);

--
-- Chỉ mục cho bảng `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `fk_location_property` (`property_id`);

--
-- Chỉ mục cho bảng `news_blog`
--
ALTER TABLE `news_blog`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `fk_news_author` (`author_id`);

--
-- Chỉ mục cho bảng `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`news_id`,`tags_id`),
  ADD KEY `tags_id` (`tags_id`);

--
-- Chỉ mục cho bảng `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`property_id`),
  ADD KEY `fk_property_user` (`user_id`),
  ADD KEY `fk_property_type` (`type_id`),
  ADD KEY `fk_property_gender` (`gender_id`);

--
-- Chỉ mục cho bảng `property_details`
--
ALTER TABLE `property_details`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `fk_property_detail_property` (`property_id`),
  ADD KEY `fk_property_detail_bedroom` (`bedroom_id`),
  ADD KEY `fk_property_detail_bathroom` (`bathroom_id`),
  ADD KEY `fk_property_detail_area` (`area_id`);

--
-- Chỉ mục cho bảng `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `fk_property_image` (`property_id`);

--
-- Chỉ mục cho bảng `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `property_utilities`
--
ALTER TABLE `property_utilities`
  ADD PRIMARY KEY (`property_id`,`utility_id`),
  ADD KEY `utility_id` (`utility_id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tags_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `account_type_id` (`account_type_id`);

--
-- Chỉ mục cho bảng `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`utility_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account_types`
--
ALTER TABLE `account_types`
  MODIFY `account_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `areas`
--
ALTER TABLE `areas`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `bathrooms`
--
ALTER TABLE `bathrooms`
  MODIFY `bathroom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `bedrooms`
--
ALTER TABLE `bedrooms`
  MODIFY `bedroom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `genders`
--
ALTER TABLE `genders`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `news_blog`
--
ALTER TABLE `news_blog`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `properties`
--
ALTER TABLE `properties`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `property_details`
--
ALTER TABLE `property_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `property_images`
--
ALTER TABLE `property_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `property_types`
--
ALTER TABLE `property_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `tags_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `utilities`
--
ALTER TABLE `utilities`
  MODIFY `utility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `fk_favorite_property` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`),
  ADD CONSTRAINT `fk_favorite_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `fk_location_property` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`);

--
-- Các ràng buộc cho bảng `news_blog`
--
ALTER TABLE `news_blog`
  ADD CONSTRAINT `fk_news_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `news_tags`
--
ALTER TABLE `news_tags`
  ADD CONSTRAINT `news_tags_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news_blog` (`news_id`),
  ADD CONSTRAINT `news_tags_ibfk_2` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`tags_id`);

--
-- Các ràng buộc cho bảng `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `fk_property_gender` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`gender_id`),
  ADD CONSTRAINT `fk_property_type` FOREIGN KEY (`type_id`) REFERENCES `property_types` (`type_id`),
  ADD CONSTRAINT `fk_property_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `property_details`
--
ALTER TABLE `property_details`
  ADD CONSTRAINT `fk_property_detail_area` FOREIGN KEY (`area_id`) REFERENCES `areas` (`area_id`),
  ADD CONSTRAINT `fk_property_detail_bathroom` FOREIGN KEY (`bathroom_id`) REFERENCES `bathrooms` (`bathroom_id`),
  ADD CONSTRAINT `fk_property_detail_bedroom` FOREIGN KEY (`bedroom_id`) REFERENCES `bedrooms` (`bedroom_id`),
  ADD CONSTRAINT `fk_property_detail_property` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`);

--
-- Các ràng buộc cho bảng `property_images`
--
ALTER TABLE `property_images`
  ADD CONSTRAINT `fk_property_image` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`);

--
-- Các ràng buộc cho bảng `property_utilities`
--
ALTER TABLE `property_utilities`
  ADD CONSTRAINT `property_utilities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`),
  ADD CONSTRAINT `property_utilities_ibfk_2` FOREIGN KEY (`utility_id`) REFERENCES `utilities` (`utility_id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`account_type_id`) REFERENCES `account_types` (`account_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
