-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2022 at 01:36 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'admin', 'admin', 'admin@gamil.com', '81dc9bdb52d04dc20036dbd8313ed055', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands`
--

CREATE TABLE `tbl_brands` (
  `brandId` int NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brands`
--

INSERT INTO `tbl_brands` (`brandId`, `brandName`) VALUES
(1, 'Apex'),
(2, 'Bata'),
(3, 'Zeil'),
(4, 'Lotto');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(6, 'ca0ctd80fn4dfhhrdjubsecir0', 15, 'Boots Shoes Maca', 139, 2, 'upload/7ade07fcb9.jpg'),
(5, '1nu9m3l3r8hvqnmsfgrng09m40', 15, 'Boots Shoes Maca', 139, 3, 'upload/7ade07fcb9.jpg'),
(4, '1nu9m3l3r8hvqnmsfgrng09m40', 7, 'Boots Shoes Maca', 139, 2, 'upload/6d09ea4cfa.jpg'),
(7, 'ca0ctd80fn4dfhhrdjubsecir0', 7, 'Boots Shoes Maca', 139, 1, 'upload/6d09ea4cfa.jpg'),
(8, 'ca0ctd80fn4dfhhrdjubsecir0', 14, 'Boots Shoes Maca', 139, 3, 'upload/7ddd61b8c5.jpg'),
(9, 'qg6tgv7bpc03qd712fugali3pn', 3, ' Taja Commissioner', 139, 1, 'upload/b0e6a4b2ee.jpg'),
(14, '40taddau2gfiqll12rkhrnb267', 7, 'Boots Shoes Maca', 139, 1, 'upload/6d09ea4cfa.jpg'),
(15, 'ndjd1ug59eoo2hhe2hbvm5o4jo', 11, 'Boots Shoes Maca', 139, 1, 'upload/545600fc9b.jpg'),
(16, 'ndjd1ug59eoo2hhe2hbvm5o4jo', 7, 'Boots Shoes Maca', 139, 1, 'upload/6d09ea4cfa.jpg'),
(17, '2hk0nv2vfvgvd861jg6ptti5gh', 11, 'Boots Shoes Maca', 139, 1, 'upload/545600fc9b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Sneakers shoes'),
(2, 'Slip-Ons &amp; Loafers'),
(3, 'Formal Shoes'),
(4, 'Sandals'),
(5, 'House Slippers'),
(6, 'Ankle Boots'),
(7, 'Flip Flops');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customerId` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customerId`, `name`, `city`, `zip`, `email`, `address`, `country`, `phone`, `password`) VALUES
(1, 'User', 'Rajshahi', 6600, 'user@gmail.com', 'Rajshahi,Talimari', 'Bangladesh', '017xxxxxxxxxxx', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Sanaul', 'Rajshahi', 6600, 'sanaul@gmail.com', 'Talaimari,Rajshahi', 'Bangladesh', '01717752950', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int NOT NULL,
  `cmrId` int NOT NULL,
  `productId` int NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(3, 1, 14, 'Boots Shoes Maca', 1, 139, 'upload/7ddd61b8c5.jpg', '2022-05-07 10:47:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int NOT NULL,
  `brandId` int NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(1, ' Boots Shoes Maca', 6, 1, 'Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 139.00, 'upload/23a7278ec1.jpg', 0),
(2, 'Minam Meaghan', 6, 3, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/690c4c3eaa.jpg', 0),
(3, ' Taja Commissioner', 2, 2, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/b0e6a4b2ee.jpg', 0),
(4, 'Russ Men\'s Sneakers', 1, 2, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/f7bd388f62.jpg', 0),
(5, 'Boots Shoes Maca', 6, 1, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/d18825406a.jpg', 0),
(6, 'Boots Shoes Maca', 6, 1, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/95bac0d705.jpg', 0),
(7, 'Boots Shoes Maca', 1, 3, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/6d09ea4cfa.jpg', 0),
(8, 'Boots Shoes Maca', 1, 2, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/822a4db9fa.jpg', 0),
(9, 'Boots Shoes Maca', 1, 3, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/fbd17e571e.jpg', 1),
(10, 'Boots Shoes Maca', 6, 2, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/0d9cb585a1.jpg', 1),
(11, 'Boots Shoes Maca', 1, 1, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/545600fc9b.jpg', 1),
(12, 'Boots Shoes Maca', 6, 1, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/4fde17f9b7.jpg', 1),
(13, 'Boots Shoes Maca', 6, 4, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/6a99a55631.jpg', 1),
(14, 'Boots Shoes Maca', 1, 2, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/7ddd61b8c5.jpg', 1),
(15, 'Boots Shoes Maca', 1, 3, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/7ade07fcb9.jpg', 1),
(17, 'Womens Boots Shoes Maca', 6, 2, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/p&gt;', 139.00, 'upload/cda719a87e.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brands`
--
ALTER TABLE `tbl_brands`
  MODIFY `brandId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customerId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
