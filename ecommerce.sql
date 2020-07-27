-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2016 at 08:52 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'DELL'),
(3, 'LG'),
(4, 'OPPO'),
(5, 'Apple'),
(6, 'SONY');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `pii_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'laptops'),
(2, 'cameras'),
(3, 'mobiles'),
(4, 'IPADS');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_address` varchar(300) NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(100) NOT NULL,
  `p_category` int(100) NOT NULL,
  `p_brand` int(100) NOT NULL,
  `p_title` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_descript` text NOT NULL,
  `p_image` text NOT NULL,
  `p_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_category`, `p_brand`, `p_title`, `p_price`, `p_descript`, `p_image`, `p_keywords`) VALUES
(6, 3, 4, 'oppo f1s', 90, 'oppo f1s..best camera ever.\r\n\r\nOppo F1s smartphone was launched in August 2016. The phone comes with a 5.50-inch touchscreen display with a resolution of 720 pixels by 1280 pixels. \r\n\r\nThe Oppo F1s is powered by octa-core MediaTek MT6750 processor and it comes with 3GB of RAM. The phone packs 32GB of internal storage that can be expanded up to 128GB via a microSD card. As far as the cameras are concerned, the Oppo F1s packs a 13-megapixel primary camera on the rear and a 16-megapixel front shooter for selfies. \r\nweighs 160.00 grams. \r\nThe Oppo F1s is a dual SIM (GSM and GSM) smartphone that accepts two Nano-SIM. Connectivity options include Wi-Fi, GPS, Bluetooth, 3G, 4G (with support for Band 40 used by some LTE networks in India). Sensors on the phone include Proximity sensor, Ambient light sensor, Accelerometer. \r\n', 'opp.jpg ', 'oppo mobile'),
(7, 1, 1, 'Hp AC12tx', 150, 'HP pavlion series..\r\nwith graphics\r\nGeneral:OS: DOSGaming1 Year Warranty \r\n  Display:15.6 inches1366 x 768 pixels100         PPI16:9 Aspect Ratio  \r\n  Processor:Intel 5th Gen2.1 GHz3 MB Cache2    GB AMD Graphics Card\r\n  Memory:4 GB DDR3 RAM500 GB Hard Disk\r\nConnectivity:Ethernet (LAN)WiFiBluetooth2 x USB 2.01 x USB 3.0HDMIMulti Card Reader\r\nInput:Inbuilt MicrophoneStereo SpeakersOptical (DVD) Drive4 Cell Battery', 'hp.jpg', 'hp laptop'),
(8, 1, 2, 'DELL inspiron', 180, 'Delll inspiron with 8gb RAM\r\n\r\nAudio and Speakers\r\n2 tuned speakers with Waves MaxxAudio® processing \r\n1 combo headphone / microphone jack\r\n\r\nBackpack\r\nDell Essential Backpack\r\n\r\n40 WHr, 4-Cell Battery (removable)\r\n\r\nHD (720p) capable webcam, microphone\r\nWireless\r\n10/100 RJ-45 Ethernet network \r\nDell Wireless-N 1705 @ 2.4GHz + Bluetooth 4.0\r\nOptional external USB Modem\r\nWi-Fi Display Support (Wi-Fi Alliance)\r\nDimensions\r\nHeight: 25.6mm (1.0); 26.6mm (1.05) with touch x Width: 381.4mm (15.0) x Depth: 267.6mm (10.0) \r\nWeight: 2.4 kg (5.3lbs); 2.16 kg (4.8lbs) with touch1\r\nPorts\r\nHDMI™ 1.4a\r\nUSB 3.0 (1)\r\nUSB 2.0 (2)\r\nSecurity slot\r\nMedia Card (SD, SDHC, SDXC)\r\nChassis\r\nKeyboard\r\nFull size spill-resistant keyboard', 'dell.jpg ', 'dell laptop'),
(9, 3, 3, 'LG ZUK Z1', 75, 'fastest phone ever ..waterproof phone\r\nNETWORK	Technology	\r\nGSM / CDMA / HSPA / LTE\r\nLAUNCH	Announced	2015, August\r\nStatus	Available. Released 2015, September\r\nBODY	Dimensions	155.7 x 77.3 x 8.9 mm (6.13 x 3.04 x 0.35 in)\r\nWeight	175 g (6.17 oz)\r\nSIM	Dual SIM (Nano-SIM, dual stand-by)\r\nDISPLAY	Type	IPS LCD capacitive touchscreen, 16M colors\r\nSize	5.5 inches (~69.3% screen-to-body ratio)\r\nResolution	1080 x 1920 pixels (~401 ppi pixel density)\r\nMultitouch	Yes\r\n 	- CyanogenMod 12.1\r\nPLATFORM	OS	Android OS, v5.1.1 (Lollipop), planned upgrade to v6.0 (Marshmallow)\r\nChipset	Qualcomm MSM8974AC Snapdragon 801\r\nCPU	Quad-core 2.5 GHz Krait 400\r\nGPU	Adreno 330\r\nMEMORY	Card slot	No\r\nInternal	64 GB, 3 GB RAM\r\nCAMERA	Primary	13 MP', 'lenovo.png ', 'lg mobile'),
(10, 2, 3, 'Camera', 170, 'lg camera...canon best experience ever\r\nScreen Size: 3 inch\r\nSensor: CMOS\r\nMaximum Shutter Speed: 1/4000 sec\r\nShutter Type: Electronically-controlled, Focal-plane Shutter\r\nLens type: Canon EF Lens (Including EF-S Lens)\r\nBattery: Lithium Battery\r\nIn the Box: Batteries, Batteries Changer, USB Cable, 8 GB Card and Camera Bag', 'canon.jpg ', 'lg camera'),
(11, 4, 5, 'Ipad', 250, 'best ipad ever..\r\nNETWORK	Technology	\r\nGSM / CDMA / HSPA / EVDO / LTE\r\nLAUNCH	Announced	2015, September\r\nStatus	Available. Released 2015, November\r\nBODY	Dimensions	305.7 x 220.6 x 6.9 mm (12.04 x 8.69 x 0.27 in)\r\nWeight	713 g (Wi-Fi) / 723 g (LTE) (1.57 lb)\r\nSIM	Nano-SIM/ Electronic SIM card (e-SIM)\r\n 	- Stylus\r\nDISPLAY	Type	LED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize	12.9 inches (~77.0% screen-to-body ratio)\r\nResolution	2048 x 2732 pixels (~264 ppi pixel density)\r\nMultitouch	Yes\r\nProtection	Scratch-resistant glass, oleophobic coating\r\nPLATFORM	OS	iOS 9, upgradable to iOS 10.0.2\r\nChipset	Apple A9X\r\n', 'apple.jpg ', 'apple ipad'),
(12, 2, 3, 'lg camera', 86, 'NETWORK	Technology	\r\nGSM / HSPA / LTE\r\nLAUNCH	Announced	2014, May\r\nStatus	Available. Released 2014, June\r\nBODY	Dimensions	146.3 x 74.6 x 8.9 mm (5.76 x 2.94 x 0.35 in)\r\nWeight	149 g (5.26 oz)\r\nSIM	Micro-SIM\r\nDISPLAY	Type	True HD-IPS + LCD capacitive touchscreen, 16M colors\r\nSize	5.5 inches (~75.3% screen-to-body ratio)\r\nResolution	1440 x 2560 pixels (~538 ppi pixel density)\r\nMultitouch	Yes\r\nProtection	Corning Gorilla Glass 3\r\nPLATFORM	OS	Android OS, v4.4.2 (KitKat), upgradable to v6.0 (Marshmallow)\r\nChipset	Qualcomm MSM8974AC Snapdragon 801\r\nCPU	Quad-core 2.5 GHz Krait 400\r\nGPU	Adreno 330\r\nMEMORY	Card slot	microSD, up to 256 GB (dedicated slot)\r\nInternal	16 GB, 2 GB RAM/ 32 GB, 3 GB RAM\r\nCAMERA	Primary	13 MP, f/2.4, 29mm, phase detection/laser autofocus, OIS, dual-LED (dual tone) flash, check quality\r\nFeatures	1/3" sensor size, 1.12 Âµm pixel size, geo-tagging, touch focus, face/smile detection, panorama, HDR\r\nVideo	2160p@30fps, 1080p@30fps, HDR, stereo sound rec., check quality\r\nSecondary	2.1 MP, f/2.0, 1080p@30fps', 'lg.jpg ', 'lg camera'),
(13, 4, 5, 'Ipad Mini', 480, 'apple ipad mini..the best in the world...dual camera lens with fingerprint scanner..it consists of 6 gb of ram with a 8 inch screen...it also conatins turbo boost charger that can charge upto 50% in less tha 30 mins...comes with  a modern technology conatining protective glass', 'ipad1.jpg ', 'apple ipad mini'),
(14, 1, 1, 'HP pavilion', 400, 'hp pavilion...with power packed octa core processor...consists of 8gb ram ddr3...it also conatin amd radeon graphics m330 with 15.5 inch screen...it includes touch screen...cpu cache memory is 8mb....it has super audio speakers...', 'hp2.jpg ', 'hp laptop pavilion'),
(15, 3, 6, 'SONY XPERIA Z', 88, 'Rain pouring down? The Xperia Z is crafted to be water-resistant*. Itâ€™s also dust-resistant â€“ in short, tough enough to handle whatever life has planned for you. And with its rounded edges and smooth surfaces, itâ€™s the perfect marriage between durability and beauty.', 'sony1.jpg ', 'sony xperia'),
(16, 3, 6, 'SONY XPERIA M', 155, 'Rain pouring down? The Xperia M is crafted to be water-resistant*. Itâ€™s also dust-resistant â€“ in short, tough enough to handle whatever life has planned for you. And with its rounded edges and smooth surfaces, itâ€™s the perfect marriage between durability and beauty.', 'sony2.jpg ', 'sony xperia m'),
(17, 2, 6, 'SONY CANON E05', 140, 'Rain pouring down? The Xperia CANON  is crafted to be water-resistant*. Itâ€™s also dust-resistant â€“ in short, tough enough to handle whatever life has planned for you. And with its rounded edges and smooth surfaces, itâ€™s the perfect marriage between durability and beauty.', 'sony_c1.jpg ', 'sony camera '),
(18, 2, 6, 'SONY CYBERSHOT', 120, ' The sony cybershot  is crafted to be water-resistant*. Itâ€™s also dust-resistant â€“ in short, tough enough to handle whatever life has planned for you. And with its rounded edges and smooth surfaces, itâ€™s the perfect marriage between durability and beauty.', 'sony_c2.jpg ', 'sony camera '),
(19, 2, 6, 'SONY CANON B458', 160, ' The sony B458 is crafted to be water-resistant*. Itâ€™s also dust-resistant â€“ in short, tough enough to handle whatever life has planned for you. And with its rounded edges and smooth surfaces, itâ€™s the perfect marriage between durability and beauty.', 'sony_c3.jpg ', 'sony camera '),
(20, 3, 4, 'OPPO f8', 100, ' The oppo f8 is crafted to be water-resistant*. Itâ€™s also dust-resistant â€“ in short, tough enough to handle whatever life has planned for you. And with its rounded edges and smooth surfaces, itâ€™s the perfect marriage between durability and beauty.', 'oppo2.jpg ', 'oppo f8'),
(21, 3, 3, 'LG G PRO', 50, ' The LG G PRO is crafted to be water-resistant*. Itâ€™s also dust-resistant â€“ in short, tough enough to handle whatever life has planned for you. And with its rounded edges and smooth surfaces, itâ€™s the perfect marriage between durability and beauty.', 'lg4.jpg ', 'lg g pro'),
(22, 1, 1, 'HP b81432', 145, ' The hp b81432 is crafted to be water-resistant*. Itâ€™s also dust-resistant â€“ in short, tough enough to handle whatever life has planned for you. And with its rounded edges and smooth surfaces, itâ€™s the perfect marriage between durability and beauty.', 'hp4.png ', 'hp laptop'),
(23, 1, 2, 'DELL INSPIRON 586', 68, 'Rain pouring down? The dell inspiron is crafted to be water-resistant*. Itâ€™s also dust-resistant â€“ in short, tough enough to handle whatever life has planned for you. And with its rounded edges and smooth surfaces, itâ€™s the perfect marriage between durability and beauty.', 'dell3.jpg ', 'dell inspiron 586'),
(24, 4, 5, 'APPLE IPAD MINI PRO', 200, 'The apple ipad mini pro is crafted to be water-resistant*. Itâ€™s also dust-resistant â€“ in short, tough enough to handle whatever life has planned for you. And with its rounded edges and smooth surfaces, itâ€™s the perfect marriage between durability and beauty.', 'apple4.jpg ', 'apple ipad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`pii_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
