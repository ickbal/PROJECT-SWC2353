-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 05:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(9) NOT NULL,
  `id_order` int(9) NOT NULL,
  `id_pro` int(9) NOT NULL,
  `quantity` int(9) NOT NULL DEFAULT 0,
  `prices` double(10,2) NOT NULL DEFAULT 0.00,
  `size` varchar(5) NOT NULL,
  `name_pro` varchar(50) DEFAULT NULL,
  `img_pro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `id_order`, `id_pro`, `quantity`, `prices`, `size`, `name_pro`, `img_pro`) VALUES
(201, 141, 90, 2, 0.00, 'L', 'Grey Vest', 'suit (6).png'),
(202, 142, 90, 1, 0.00, 'L', 'Grey Vest', 'suit (6).png'),
(203, 142, 91, 1, 27500000.00, 'XL', 'Black Vest', 'suit (2).png'),
(204, 143, 95, 1, 20000000.00, 'L', 'Ken Vest', 'product-39.png'),
(206, 145, 90, 1, 27000000.00, 'L', 'Grey Vest', 'suit (6).png'),
(207, 146, 97, 1, 27000000.00, 'XXXL', 'Break Vest', 'suit (4).png'),
(208, 147, 100, 1, 590.00, 'S', 'akmal old money', 'Screenshot 2024-11-18 171647.jpg'),
(209, 148, 90, 1, 27000000.00, 'L', 'Grey Vest', 'suit (6).png'),
(210, 149, 93, 1, 3000.00, 'M', 'Kings Vest', 'suit (3).png'),
(211, 150, 93, 1, 3000.00, 'M', 'Kings Vest', 'suit (3).png'),
(212, 151, 93, 1, 3000.00, 'M', 'Kings Vest', 'suit (3).png'),
(213, 152, 90, 1, 1500.00, 'L', 'Grey Vest', 'suit (6).png'),
(216, 155, 90, 1, 1500.00, 'L', 'Grey Vest', 'suit (6).png'),
(218, 157, 95, 6, 3500.00, 'L', 'Ken Vest', 'product-39.png'),
(219, 157, 91, 1, 7000.00, 'XL', 'Black Vest', 'suit (2).png'),
(220, 158, 95, 6, 3500.00, 'L', 'Ken Vest', 'product-39.png'),
(221, 158, 91, 1, 7000.00, 'XL', 'Black Vest', 'suit (2).png'),
(222, 159, 100, 1, 590.00, 'S', 'akmal old money', 'Screenshot 2024-11-18 171647.jpg'),
(223, 160, 94, 1, 3000.00, 'L', 'Supper Vest', 'suit (5).png'),
(224, 160, 95, 2, 3500.00, 'L', 'Ken Vest', 'product-39.png'),
(225, 161, 90, 1, 7599.00, 'L', 'Grey Vest', 'suit (6).png'),
(226, 162, 90, 1, 7599.00, 'L', 'Grey Vest', 'suit (6).png'),
(227, 163, 91, 1, 7000.00, 'XL', 'Black Vest', 'suit (2).png'),
(228, 163, 90, 1, 7599.00, 'L', 'Grey Vest', 'suit (6).png'),
(229, 164, 90, 1, 7599.00, 'L', 'Grey Vest', 'suit (6).png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_catalog`
--

CREATE TABLE `tbl_catalog` (
  `id_catalog_k` int(4) NOT NULL,
  `catalog_name` varchar(50) NOT NULL,
  `prioritize` int(4) NOT NULL DEFAULT 0,
  `display_ctl` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_catalog`
--

INSERT INTO `tbl_catalog` (`id_catalog_k`, `catalog_name`, `prioritize`, `display_ctl`) VALUES
(94, 'Notch', 1, 1),
(95, 'Peak', 1, 1),
(96, 'Shawl', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ban` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`id`, `fname`, `lname`, `sex`, `address`, `email`, `phone`, `user`, `password`, `ban`) VALUES
(32, 'M', 'ADAM', 1, 'KUALA LUMPUR', 'adam1@gmail.com', '01322523636', 'nhatthuong1234', '123', 0),
(39, 'Ahmad', 'Mirza', 1, '1', '2002@gmail.com', '0342888525', 'admin', '123123', 1),
(40, 'Ahmad ', 'khai', 2, '1', '2002@gmail.com', '+84342888525', 'adminthuong42342', '123123', 1),
(41, 'iqbal', 'halizam', 1, '101 shamelin star', 'Iqbalhalizam@gmail.com', '0196223736', 'iqbal', '123', 0),
(42, 'iqbal', 'ickbal', 1, '101 shamelin star', 'iqbalhalizam@gmail.com', '9295603916', 'bal', '123', 0),
(43, '123', 'afif', 1, '105 Clarendon Street', 'afif@gmail.com', '0196223736', 'afif', '123123', 0),
(44, 'harvey', 'harvey', 1, '1180 Johnson Road', 'gv@gmail.com', '0196223736', 'hvy', '123123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(9) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `total_prices` double(10,0) NOT NULL DEFAULT 0,
  `payment` tinyint(1) NOT NULL DEFAULT 1,
  `id_user` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL DEFAULT 'Not note',
  `due_date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `employee_pr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `invoice_id`, `total_prices`, `payment`, `id_user`, `fname`, `lname`, `phone`, `email`, `address`, `notes`, `due_date`, `status`, `employee_pr`) VALUES
(161, 'KINGSMAN472443', 8359, 0, 42, 'iqbal', '1', '9295603916', 'iqbalhalizam@gmail.com', '101 shamelin star', '', '2024-11-20', 'Delivered', 1),
(162, 'KINGSMAN486004', 8359, 0, 41, 'iqbal', '1', '9295603916', 'iqbalhalizam@gmail.com', '101 shamelin star', '', '2024-11-20', 'Cancel', 1),
(163, 'KINGSMAN545898', 16059, 1, 41, 'iqbal', '1', '9295603916', 'iqbalhalizam@gmail.com', '101 shamelin star', '', '2024-11-20', 'Delivered', 1),
(164, 'KINGSMAN350498', 8359, 0, 41, 'iqbal', '1', '9295603916', 'iqbalhalizam@gmail.com', '101 shamelin star', '', '2024-11-20', 'Delivered', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(6) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `product_img` varchar(50) NOT NULL,
  `product_prices` int(10) NOT NULL DEFAULT 0,
  `catalog_id` int(4) NOT NULL,
  `employee_entry` int(11) NOT NULL,
  `entry_date` date NOT NULL DEFAULT current_timestamp(),
  `sup_id` int(11) NOT NULL,
  `view` tinyint(4) NOT NULL DEFAULT 0,
  `special` tinyint(4) NOT NULL DEFAULT 0,
  `old_prices` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `size` varchar(5) NOT NULL DEFAULT 'L'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `product_name`, `quantity`, `product_img`, `product_prices`, `catalog_id`, `employee_entry`, `entry_date`, `sup_id`, `view`, `special`, `old_prices`, `description`, `size`) VALUES
(90, 'Grey Vest', 142, 'suit (6).png', 7599, 94, 1, '2023-06-08', 16, 1, 1, 111111, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'L'),
(91, 'Black Vest', 146, 'suit (2).png', 7000, 95, 1, '2023-06-08', 16, 1, 1, 27500000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XL'),
(92, 'Brown Vest', 273, 'product-41.png', 5000, 96, 1, '2023-06-08', 16, 1, 1, 20000000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XXL'),
(93, 'Kings Vest', 7, 'suit (3).png', 3000, 96, 1, '2023-06-08', 14, 1, 1, 55000000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'M'),
(94, 'Supper Vest', 149, 'suit (5).png', 3000, 95, 1, '2023-06-08', 14, 1, 1, 27500000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'L'),
(95, 'Ken Vest', 108, 'product-39.png', 3500, 94, 1, '2023-06-08', 14, 1, 1, 20000000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'L'),
(96, 'Max Vest', 123, 'product-43.png', 3000, 94, 1, '2023-06-08', 14, 1, 1, 27000000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XXL'),
(97, 'Break Vest', 123, 'suit (4).png', 2500, 94, 1, '2023-06-08', 16, 1, 1, 27000000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XXXL'),
(100, 'Shirt', 0, 'shirt1.png', 590, 94, 1, '2024-11-18', 14, 0, 1, 600, '111', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(255) NOT NULL,
  `sup_address` varchar(255) NOT NULL,
  `sup_bank` int(11) NOT NULL,
  `sup_tax_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`sup_id`, `sup_name`, `sup_address`, `sup_bank`, `sup_tax_code`) VALUES
(14, 'KUALA LUMPUR', 'MY', 1231231, 123123),
(16, 'Homes', 'US', 1231231, 123123);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name_us` varchar(50) DEFAULT NULL,
  `address_us` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `user` varchar(20) NOT NULL,
  `password_us` varchar(20) NOT NULL,
  `role_us` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name_us`, `address_us`, `email`, `user`, `password_us`, `role_us`) VALUES
(1, 'Ahmad', 'KTXkhuA', '20522000@gm.uit.edu.vn', 'admin', '123123', 1),
(9, 'khai', 'ktxkhuA', '20521331@gmail.com', 'adminhoa', '123123', 1),
(10, 'Vish', 'Củ Chi', '20521515@gmail.com', 'adminlam', '123123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_order` (`id_order`),
  ADD KEY `FK_product` (`id_pro`);

--
-- Indexes for table `tbl_catalog`
--
ALTER TABLE `tbl_catalog`
  ADD PRIMARY KEY (`id_catalog_k`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_employee` (`employee_pr`),
  ADD KEY `FK_client_check` (`id_user`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_product_catalog` (`catalog_id`),
  ADD KEY `fk_employee_entry` (`employee_entry`),
  ADD KEY `fk_supplier` (`sup_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `tbl_catalog`
--
ALTER TABLE `tbl_catalog`
  MODIFY `id_catalog_k` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `FK_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id`),
  ADD CONSTRAINT `FK_product` FOREIGN KEY (`id_pro`) REFERENCES `tbl_product` (`id_product`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `FK_client_check` FOREIGN KEY (`id_user`) REFERENCES `tbl_client` (`id`),
  ADD CONSTRAINT `FK_employee` FOREIGN KEY (`employee_pr`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_employee_entry` FOREIGN KEY (`employee_entry`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `fk_product_catalog` FOREIGN KEY (`catalog_id`) REFERENCES `tbl_catalog` (`id_catalog_k`),
  ADD CONSTRAINT `fk_supplier` FOREIGN KEY (`sup_id`) REFERENCES `tbl_supplier` (`sup_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
