-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 25, 2023 lúc 07:05 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an_mau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `reduced_price` double(10,2) NOT NULL DEFAULT 0.00,
  `input_day` date NOT NULL,
  `id_category` int(11) NOT NULL,
  `especially` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `reduced_price`, `input_day`, `id_category`, `especially`, `image`, `description`, `view`) VALUES
(3, 'iPhone 13 Pro Max 128GB', 1173.00, 1200.00, '2023-02-24', 3, 'true', 'product1.png', 'CPU: Apple A15 Bionic, Màn hình:  6.7 inch, RAM: 6GB', 0),
(4, 'Samsung Galaxy Z Fold4 5G 256GB', 1652.00, 0.00, '2023-02-24', 3, 'false', 'product2.png', 'CPU: Snapdragon 8+ Gen 1, Màn hình:  7.6 inch, RAM: 12GB', 0),
(5, 'Xiaomi Redmi 10 4GB-128GB 2021', 165.20, 0.00, '2023-02-24', 3, 'false', 'product3.png', 'CPU: MediaTek Helio G88, Màn hình: 6.5 inch, RAM:  4GB', 0),
(6, 'iPhone 12 64GB', 717.40, 0.00, '2023-02-24', 3, 'true', 'product4.png', 'CPU: Apple A14 Bionic, Màn hình: 6.1 inch, RAM: 4GB', 0),
(7, 'iPad Pro 11 2021 M1 Wi-Fi 128GB', 87.00, 0.00, '2023-02-15', 6, 'false', 'product11.png', 'CPU: Apple M1, Màn hình: 11.0 inch, RAM: 8GB', 0),
(8, 'iPad Gen 9 2021 10.2 inch WiFi 64GB', 391.30, 0.00, '2023-02-01', 6, 'true', 'product12.png', 'CPU: Apple A13 Bionic, Màn hình: 10.2 inch, RAM: 3GB', 0),
(9, 'iPad mini 6 2021 8.3 inch WiFi 64GB', 582.60, 0.00, '2023-02-12', 6, 'true', 'product13.png', 'CPU: Apple A15 Bionic, Màn hình: 8.3 inch, RAM: 4GB', 0),
(10, 'Asus TUF Gaming FA506IHRB-HN019W', 652.20, 0.00, '2023-02-11', 4, 'false', 'product5.png', 'CPU: Ryzen 5, Màn hình: 15.6 inch, RAM: 8GB', 0),
(11, 'Lenovo Gaming IdeaPad 3 15IAH7 i5', 1043.00, 0.00, '2023-01-31', 4, 'false', 'product6.png', 'CPU: Core i5, Màn hình: 15.6 inch, RAM: 16GB', 0),
(12, 'HP Gaming VICTUS 16-e0175AX', 891.30, 0.00, '2023-02-03', 4, 'false', 'product7.png', 'CPU: Rezen 5, Màn hình: 16.1 inch, RAM: 8GB', 0),
(13, 'Apple Watch SE dây cao su', 28.26, 0.00, '2023-02-15', 5, 'false', 'product8.png', 'Màn hình: 1.61 inch, LTPO OLED, Bộ nhớ trong: 32GB', 0),
(14, 'Apple Watch SE GPS', 391.30, 0.00, '2023-02-04', 5, 'false', 'product9.png', 'Màn hình: 448 x 368 Pixels, Bộ nhớ trong: 32GB', 0),
(15, 'Apple Watch Series 3 GPS 38mm', 204.40, 0.00, '2023-02-14', 5, 'true', 'product10.png', 'Màn hình: 340 x 272 Pixels, Bộ nhớ trong: 8GB', 0),
(16, 'Chuột không dây Targus W600', 8.70, 0.00, '2023-02-03', 7, 'false', 'product14.png', 'Loại chuột: Chuột không dây, Kiểu kết nối: Bluetooth', 0),
(17, 'Chuột không dây quang Microsoft 1850', 14.43, 0.00, '2023-02-16', 7, 'false', 'product15.png', 'Loại chuột: Chuột không dây, Kiểu kết nối: Bluetooth', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_product_categories` (`id_category`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `lk_product_categories` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
