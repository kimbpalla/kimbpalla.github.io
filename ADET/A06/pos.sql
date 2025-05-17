-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 05:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(4) NOT NULL,
  `categoryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'Fresh Produce'),
(2, 'Meat & Seafood'),
(3, 'Dairy & Egg'),
(4, 'Snacks & Sweets'),
(5, 'Canned Goods'),
(6, 'Beverages'),
(7, 'Pantry Staples');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(4) NOT NULL,
  `categoryID` int(4) NOT NULL,
  `productName` varchar(40) NOT NULL,
  `productCode` varchar(20) NOT NULL,
  `productPrice` int(4) NOT NULL,
  `productImage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `productName`, `productCode`, `productPrice`, `productImage`) VALUES
(1, 1, 'Bananas', 'BNN', 62, 'banana.png'),
(2, 1, 'Red Apples', 'APL', 167, 'apple.png'),
(3, 1, 'Grapes', 'GRP', 182, 'grape.png'),
(4, 1, 'Yellow Mangoes', 'MNG', 154, 'mango.png'),
(5, 1, 'Cherry Tomatoes', 'TCHR', 140, 'tomato.png'),
(6, 1, 'Orange', 'ORG', 120, 'orange.png'),
(7, 1, 'Pineapple', 'PNE', 80, 'pineapple.png'),
(8, 1, 'Watermelon', 'WML', 120, 'watermelon.png'),
(9, 1, 'Avocado', 'AVC', 60, 'avocado.png'),
(10, 1, 'Carrots', 'CRT', 106, 'carrot.png'),
(11, 1, 'Green Leaf Lettuce', 'GRLL', 84, 'lettuce.png'),
(12, 1, 'Cucumber', 'CCR', 65, 'cucumber.png'),
(13, 1, 'Broccoli Crowns', 'BRC', 135, 'broccoli.png'),
(14, 1, 'Sweet Corn', 'SCRN', 45, 'corn.png'),
(15, 1, 'Squash', 'SQH', 80, 'squash.png'),
(16, 1, 'Okra', 'OKR', 40, 'okra.png'),
(17, 1, 'Eggplant', 'EPT', 50, 'eggplant.png'),
(18, 1, 'Siling Labuyo', 'CHL', 50, 'chili.png'),
(19, 2, 'Beef Rounds', 'BFR', 420, 'm1.png'),
(20, 2, 'Pork Belly', 'PRK', 310, 'm2.png'),
(21, 2, 'Chicken Breast', 'CKN', 250, 'm3.png'),
(22, 2, 'Ground Beef', 'GRBF', 360, 'm4.png'),
(23, 2, 'Pork Chops', 'PKN', 295, 'm5.png'),
(24, 2, 'Chicken Wings', 'CWNG', 210, 'm6.png'),
(25, 2, 'Beef Brisket', 'BFBR', 430, 'm7.png'),
(26, 2, 'Pork Tenderloin', 'PTND', 350, 'm8.png'),
(27, 2, 'Ground Pork', 'GRDP', 280, 'm9.png'),
(28, 2, 'Shrimps', 'SHR', 600, 's1.png'),
(29, 2, 'Salmon', 'SLM', 950, 's2.png'),
(30, 2, 'Squid', 'SQD', 480, 's3.png'),
(31, 2, 'Tilapia', 'TLP', 180, 's4.png'),
(32, 2, 'Bangus', 'BNG', 230, 's5.png'),
(33, 2, 'Mackerel', 'MKR', 320, 's6.png'),
(34, 2, 'Farm Crabs', 'FCRB', 580, 's7.png'),
(35, 2, 'Lobster', 'LBS', 1400, 's8.png'),
(36, 2, 'Scallops', 'SLP', 700, 's9.png'),
(37, 3, 'Fresh Cow\'s Milk', 'FCM', 90, 'd1.png'),
(38, 3, 'UHT Milk (Boxed)', 'UHTM', 75, 'd2.png'),
(39, 3, 'Cheddar Cheese Block', 'CHZ', 150, 'd3.png'),
(40, 3, 'Sliced Cheese', 'SLCD', 110, 'd4.png'),
(41, 3, 'Fruit Yogurt Cup', 'FYC', 40, 'd5.png'),
(42, 3, 'All-Purpose Cream', 'APC', 90, 'd6.png'),
(43, 3, 'Salted Butter', 'SLTB', 95, 'd7.png'),
(44, 3, 'White Eggs', 'WHT', 200, 'd9.png'),
(45, 3, 'Brown Eggs', 'BRW', 110, 'd8.png'),
(46, 4, 'Potato Chips', 'PCH', 85, 'sn1.png'),
(47, 4, 'Corn Chips', 'CNC', 35, 'sn2.png'),
(48, 4, 'Salted Pretzels', 'SPZ', 35, 'sn3.png'),
(49, 4, 'Butter Popcorn', 'BPC', 45, 'sn4.png'),
(50, 4, 'Mixed Nuts', 'MNS', 35, 'sn5.png'),
(51, 4, 'Savory Crackers', 'SCR', 30, 'sn6.png'),
(52, 4, 'Cheese Tortillos Chips', 'CTC', 45, 'sn7.png'),
(53, 4, 'Pic-A', 'PIC', 60, 'sn8.png'),
(54, 4, 'Clover Cheese', 'CLV', 30, 'sn9.png'),
(55, 4, 'Chocolate Goya', 'CHG', 55, 'sw1.png'),
(56, 4, 'Rebisco Choco', 'CFB', 15, 'sw2.png'),
(57, 4, 'Potchi Gummy Bears', 'PGB', 30, 'sw3.png'),
(58, 4, 'Marshmallows', 'MAL', 38, 'sw4.png'),
(59, 4, 'Lipps', 'MHC', 35, 'sw5.png'),
(60, 4, 'Lollipops (Assorted)', 'LPA', 20, 'sw6.png'),
(61, 4, 'Chocolate Chip Cookies', 'CC', 65, 'sw7.png'),
(62, 4, 'Fudgee Bar Chocolate', 'FBC', 55, 'sw8.png'),
(63, 4, 'White Rabbit Buttertoffee', 'WTB', 35, 'sw9.png'),
(64, 5, '555 Sardines in Tomato Sauce', '555', 25, 'c1.png'),
(65, 5, 'Argentina Corned Beef', 'ARG', 40, 'c2.png'),
(66, 5, 'Mega Tuna Flakes in Oil', 'MGT', 45, 'c3.png'),
(67, 5, 'Ligo Sardines Spanish Style', 'LIG', 32, 'c4.png'),
(68, 5, 'Hunt\'s Pork & Beans', 'HUN', 35, 'c5.png'),
(69, 5, 'Jolly Corn Kernels', 'JCK', 30, 'c6.png'),
(70, 5, 'Clara Ole Whole Tomatoes', 'CLO', 40, 'c7.png'),
(71, 5, 'Alaska Evaporated Milk', 'ALK', 40, 'c8.png'),
(72, 5, 'Angel Condensed Milk', 'ANG', 45, 'c9.png'),
(73, 6, 'Coca-Cola', 'CC', 25, 'sd1.png'),
(74, 6, 'Sprite', 'SPRT', 25, 'sd2.png'),
(75, 6, 'Royal', 'RYL', 25, 'sd3.png'),
(76, 6, 'Wilkins Mineral Water', 'WIL', 15, 'wtr1.png'),
(77, 6, 'Absolute Distilled', 'ABSD', 20, 'wtr2.png'),
(78, 6, 'Nature\'s Spring Water', 'NSW', 15, 'wtr3.png'),
(79, 6, 'Zesto Mango Juice', 'ZMJ', 20, 'ju1.png'),
(80, 6, 'Del Monte Pineapple', 'DMPI', 35, 'ju2.png'),
(81, 6, 'Minute Maid Orange', 'MMCL', 25, 'ju3.png'),
(82, 7, 'White Rice (Dinorado 5KG)', 'WR', 465, 'ps1.png'),
(83, 7, 'All-Purpose Flour', 'APF', 93, 'ps2.png'),
(84, 7, 'White Sugar', 'WS', 80, 'ps3.png'),
(85, 7, 'Iodized Salt', 'IS', 55, 'ps4.png'),
(86, 7, 'Powdered Milk', 'PM', 109, 'ps5.png'),
(87, 7, 'Coconut Oil', 'C0', 580, 'ps6.png'),
(88, 7, 'Soy Sauce', 'SS', 52, 'ps7.png'),
(89, 7, 'Cane Vinegar', 'CV', 90, 'ps8.png'),
(90, 7, 'Elbow Macaroni Pasta', 'EMP', 80, 'ps9.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
