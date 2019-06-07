-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: sophia
-- Generation Time: Mar 20, 2019 at 10:47 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yfyang`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `itemDescription` longtext NOT NULL,
  `itemCategory` varchar(255) NOT NULL,
  `itemImage` varchar(255) NOT NULL,
  `itemPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`itemID`, `itemName`, `itemDescription`, `itemCategory`, `itemImage`, `itemPrice`) VALUES
(1, 'Programming the World Wide Web', 'This book provides a comprehensive introduction to the tools and skills required for both client- and server-side programming, how to develop platform-independent sites using Web development technology.', 'Books', 'images/1.jpg', 368.5),
(2, 'Computer Networking', 'The text works its way from the application layer down toward the physical layer, motivating readers by exposing them to important concepts early in their study of networking.  ', 'Books', 'images/2.jpg', 374.2),
(3, 'The Little Prince', 'Available for the first time in an edition for young adults, Antoine de Saint-classic story, The Little Prince, beloved by readers of all ages, comes to life in a format perfect for teen readers.', 'Books', 'images/3.jpg', 198.8),
(4, 'A Tale of Two Cities ', 'It was the time of the French Revolution, a time of great change and great danger. ', 'Books', 'images/4.jpg', 460),
(5, 'The Lord of the Rings', 'In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others.', 'Books', 'images/5.jpg', 442.7),
(6, 'She', 'Drawing on his knowledge of Africa and of ancient legends, adventure writer H. Rider Haggard weaves this disturbing tale of Ayesha, the mysterious and immortal white queen of a Central African tribe. ', 'Books', 'images/6.jpg', 420),
(7, 'Beatrix Potter the Complete Tales ', 'This complete and unabridged collection contains all 23 of Beatrix Potters Tales in one deluxe volume with all their original illustrations. ', 'Books', 'images/7.jpg', 310),
(8, 'The Twilight Saga', 'This stunning set, complete with five editions of Twilight, makes the perfect gift for fans of the bestselling vampire love story.', 'Books', 'images/8.jpg', 260),
(9, 'The Feelings Book', 'This invaluable companion to The Care and Keeping of You received its own fresh update. Learn how to stay in the drivers seat of your own emotions.', 'Books', 'images/9.jpg', 440),
(10, 'Panasonic', 'This product is licensed in Hong Kong. It is maintained by the original factory in Hong Kong for 1 year or 2 years (depending on the product).', 'Electric Appliances', 'images/10.jpg', 1580),
(11, 'Air Circulation Fan', 'The PCF-HD15 Silent Air Circulator Fan has a turbo motor that uses wind tunnel aerodynamics to achieve optimum air circulation. ', 'Electric Appliances', 'images/11.jpg', 288),
(12, 'Ionic Keratin Infused Dryer', 'Ceramic plates infused with Keratin to maximize protection for shiny and healthy hair.', 'Electric Appliances', 'images/12.jpg', 498),
(13, 'STEAM OVEN', 'Equiped with steam, convection, steam convection, healthy fry and fermentation function. Maximum 30 minutes of steam generation 17 Preset menus.', 'Electric Appliances', 'images/13.jpg', 1899),
(14, 'New Kindle Paperwhite', '2018(10GEN)Black(8GB)New Kindle Paperwhite WIFI(Waterproof version).', 'Electric Appliances', 'images/14.jpg', 1120),
(15, 'Front Loaded Washer', 'AWC7085D 7.0kg 850rpm Front Loaded Washer \r\n6th Sense Colours \r\nWave Motion Technology and Colours 15.\r\nSilentPro Suspension System.\r\n', 'Electric Appliances', 'images/15.jpg', 3090),
(16, 'Electronic Pressure Cooker', 'Modern Slide Lock Design for convenient use. It can shorten cooking time and retain nutrients in the food.', 'Electric Appliances', 'images/16.jpg', 1598),
(17, 'Xiaomi - NOTEBOOK', 'CPU: Intel Core i5-8250U\r\nHard Disk Memory: 128GB SSD + 1TB HDD \r\nLargest RAM Capacity: 32GB \r\nRAM: 4.', 'Electric Appliances', 'images/17.jpg', 5088),
(18, 'Instax Mini 9 Instant Camera', 'Instax Mini 9 Instant Camera [Ice Blue] One year Warranty.', 'Electric Appliances', 'images/18.jpg', 478),
(19, 'Specially Select 3.6 Milk', 'Shelf life is at least two weeks #Other retail shops price refers to the price found in offline retail shop as of 8th Sep, 2018.', 'Baverage', 'images/19.jpg', 27.9),
(20, 'Vita - Ceylon Lemon Tea', ' 	Ceylon Lemon Tea', 'Baverage', 'images/20.jpg', 15.9),
(21, 'Lotte - Milkis Original', ' Milk Original From Korean', 'Baverage', 'images/21.jpg', 21.9),
(22, 'Vitasoy - Low Sugar Malted Soyabean Milk', '250ml x 6', 'Baverage', 'images/22.jpg', 18.5),
(23, 'Coffee - Nescafe', '250ml x 6', 'Baverage', 'images/23.jpg', 32.9),
(24, 'Coca-Cola', 'Plus Can, 330ml x 8', 'Baverage', 'images/24.jpg', 28.9),
(25, 'Apple Green Tea', 'Vita 250ml x 6', 'Baverage', 'images/25.jpg', 15.9),
(26, 'Low Sugar Chocolate Milk', 'Vita 250ml x 6', 'Baverage', 'images/26.jpg', 28.5),
(27, 'Icy Peach Tea', 'Vita 250ml x 6', 'Baverage', 'images/27.jpg', 12.9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`itemID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
