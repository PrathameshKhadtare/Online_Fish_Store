-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 08:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefishshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `fish_shop_admin_registrations`
--

CREATE TABLE `fish_shop_admin_registrations` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_shop_admin_registrations`
--

INSERT INTO `fish_shop_admin_registrations` (`admin_id`, `admin_username`, `admin_email`, `admin_password`) VALUES
(1, 'psk', 'psk@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `fish_shop_category`
--

CREATE TABLE `fish_shop_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_shop_category`
--

INSERT INTO `fish_shop_category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Betta Fish', '230419082952.jpg'),
(2, 'Flowerhorn Fish', '230419083604.jpg'),
(3, 'Arowana Fish', '230419083901.jpg'),
(4, 'Fish Accessories', '230419084046.jpg'),
(5, 'Salt Water Fishes', '230419084804.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fish_shop_orders`
--

CREATE TABLE `fish_shop_orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_shop_orders`
--

INSERT INTO `fish_shop_orders` (`orders_id`, `users_id`, `delivery_date`, `payment_method`, `total_amount`) VALUES
(1, 2, '2020-08-09', 'Cash', '1000'),
(2, 1, '2024-04-20', 'Card', '2800');

-- --------------------------------------------------------

--
-- Table structure for table `fish_shop_orders_detail`
--

CREATE TABLE `fish_shop_orders_detail` (
  `orders_detail_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_shop_orders_detail`
--

INSERT INTO `fish_shop_orders_detail` (`orders_detail_id`, `orders_id`, `product_name`, `quantity`) VALUES
(1, 1, 'Green Arowana', 1),
(2, 1, 'Rosetail Betta ', 1),
(3, 2, 'FullMoon Betta ', 1),
(4, 2, 'Crowntail Betta ', 1),
(5, 2, 'Tan King Flowerhorn', 1),
(6, 2, 'Kamfa Malau Flowerhorn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fish_shop_product`
--

CREATE TABLE `fish_shop_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(300) NOT NULL,
  `product_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_shop_product`
--

INSERT INTO `fish_shop_product` (`product_id`, `product_name`, `product_category`, `product_price`, `product_description`, `product_image`) VALUES
(1, 'FullMoon Betta ', 1, '500', 'This is FullMoon Betta Fish.', '2304190853430.jpg'),
(2, 'Crowntail Betta ', 1, '500', 'This is Crowntail Betta Fish.', '2304190903540.jpg'),
(3, 'Rose Tail Betta', 1, '500', 'This is Rose Tail Betta Fish.', '2304190907480.jpg'),
(4, 'Dumbo Ear Betta ', 1, '500', 'This is Dumbo Ear Betta Fish.', '2304190910570.jpg'),
(5, 'Kamfa Flowerhorn', 2, '900', 'This is Kamfa Flowerhorn Fish.', '2304190934080.jpg'),
(6, 'Golden Base Flowerhorn', 2, '900', 'This is Golden Base Flowerhorn Fish.', '2304190937020.jpg'),
(7, 'Golden Monkey Flowerhorn', 2, '900', 'This is Golden Monkey Flowerhorn Fish.', '2304190940280.jpeg'),
(8, 'Canister Filter', 4, '700', 'This is a Canister Filter.', '2304191027520.jpg'),
(9, 'Silver Arowana', 3, '800', 'This is Silver Arowana Fish.', '2304190958390.jpg'),
(10, 'Golden Arowana', 3, '800', 'This is Golden Arowana Fish.', '2304191007420.png'),
(11, 'Feather Tail Betta ', 1, '500', 'This is Feather Tail Betta fish.', '2304190915270.jpg'),
(12, 'Super Delta Betta ', 1, '500', 'This is Super Delta Betta Fish.', '2304190918580.jpg'),
(13, 'Spade Tail Betta ', 1, '500', 'This is Spade Tail Betta Fish.', '2304190926070.jpg'),
(14, 'Plakat Betta', 1, '500', 'This is Plakat Betta Fish.', '2304190928180.jpg'),
(15, 'Zhen Zhu Flowerhorn ', 2, '900', 'This is Zhen Zhu Flowerhorn Fish.', '2304190943530.jpg'),
(16, 'IndoMalau Flowerhorn', 2, '900', 'This is IndoMalau Flowerhorn Fish.', '2304190946320.jpg'),
(17, 'Tan King Flowerhorn', 2, '900', 'This is a Tan king Flowerhorn Fish.', '2304190948130.jpg'),
(18, 'Kamfa Malau Flowerhorn', 2, '900', 'This is Kamfa Malau Flowerhorn Fish. ', '2304190950280.jpg'),
(19, 'King Kamfa Flowerhorn', 2, '900', 'This is King Kamfa Flowerhorn Fish.', '2304190955470.jpg'),
(20, 'African Arowana', 3, '800', 'This is African Arowana Fish.', '2304191010250.jpg'),
(21, 'Australian Arowana', 3, '800', 'This is Australian Arowana Fish.', '2304191014320.jpg'),
(22, 'Spotted Arowana ', 3, '800', 'This is Spotted Arowana Fish.', '2304191017310.jpg'),
(23, 'Green Arowana ', 3, '800', 'This is Green Arowana Fish.', '2304191019160.jpeg'),
(24, 'Red Arowana', 3, '800', 'This is Red Arowana Fish.', '2304191022370.png'),
(25, 'Black Arowana ', 3, '800', 'This is Black Arowana Fish.', '2304191024550.jpg'),
(26, 'Heater', 4, '700', 'This is a Heater.', '2304191030310.jpg'),
(27, 'Media KIt ', 4, '700', 'This is a Media Kit.', '2304191032070.jpg'),
(28, 'Aquarium Light', 4, '700', 'This is a Aquarium Light.', '2304191033400.jpg'),
(29, 'Oxygen Pump', 4, '700', 'This is a Oxygen Pump.', '2304191036060.jpg'),
(30, 'Fish Tank', 4, '700', 'This is a Fish Tank.', '2304191038330.jpeg'),
(31, 'Aquarium Sponges', 4, '700', 'This is a Aquarium Sponge.', '2304191042080.jpg'),
(32, 'Aquarium Medicines', 4, '700', 'This is Medicines.', '2304191044270.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fish_shop_users_registrations`
--

CREATE TABLE `fish_shop_users_registrations` (
  `users_id` int(11) NOT NULL,
  `users_username` varchar(100) NOT NULL,
  `users_email` varchar(150) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_mobile` varchar(50) NOT NULL,
  `users_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_shop_users_registrations`
--

INSERT INTO `fish_shop_users_registrations` (`users_id`, `users_username`, `users_email`, `users_password`, `users_mobile`, `users_address`) VALUES
(1, 'prathamesh', 'psk@gmail.com', '1234', '2147483647', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fish_shop_admin_registrations`
--
ALTER TABLE `fish_shop_admin_registrations`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `fish_shop_category`
--
ALTER TABLE `fish_shop_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `fish_shop_orders`
--
ALTER TABLE `fish_shop_orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `fish_shop_orders_detail`
--
ALTER TABLE `fish_shop_orders_detail`
  ADD PRIMARY KEY (`orders_detail_id`);

--
-- Indexes for table `fish_shop_product`
--
ALTER TABLE `fish_shop_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `fish_shop_users_registrations`
--
ALTER TABLE `fish_shop_users_registrations`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fish_shop_admin_registrations`
--
ALTER TABLE `fish_shop_admin_registrations`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fish_shop_category`
--
ALTER TABLE `fish_shop_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fish_shop_orders`
--
ALTER TABLE `fish_shop_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fish_shop_orders_detail`
--
ALTER TABLE `fish_shop_orders_detail`
  MODIFY `orders_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fish_shop_product`
--
ALTER TABLE `fish_shop_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `fish_shop_users_registrations`
--
ALTER TABLE `fish_shop_users_registrations`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
