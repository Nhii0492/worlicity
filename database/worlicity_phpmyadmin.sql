-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 29, 2024 lúc 06:00 AM
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `property_images`
--

CREATE TABLE `property_images` (
  `image_id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `image_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'nhantran', 'ef8a25eca73e7c0f0bc20aab73dd826d', 'ttnhan2642@gmail.com', '0935614863', 1, '2024-04-28 02:23:07', '2024-04-28 02:29:31', 'Trần Thành Nhân', 'Sơn Trà', 'Việt Nam', 'Nhantran Admin', 'https://www.facebook.com/nhantran26.04', NULL, NULL),
(2, 'nhinguyen', '7c532ec14dd3837666138edbbd90172d', 'nhinguyen0492@gmail.com', '0901167702', 2, '2024-04-28 02:28:34', '2024-04-28 02:28:52', 'Nguyễn Thục Nhi', 'Hải Châu', 'Việt Nam', 'Thục Nhi User', 'https://www.facebook.com/nhii0492', NULL, NULL),
(3, 'tranthanhnhan', 'e10adc3949ba59abbe56e057f20f883e', 'undefeder@gmai.com', '', NULL, '2024-04-28 03:29:14', '2024-04-28 03:29:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news_blog`
--
ALTER TABLE `news_blog`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `properties`
--
ALTER TABLE `properties`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `property_details`
--
ALTER TABLE `property_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `property_images`
--
ALTER TABLE `property_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
