-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 05:02 PM
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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `PhoneNumber` int(10) NOT NULL,
  `Address` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `Name`, `PhoneNumber`, `Address`) VALUES
(1, 'Nehara Thennakoon', 724587963, '109 Panchikawatte Road, 10'),
(2, 'Thimira Kaushal', 789656321, '467 Prince Of Wales Avenue, 14');

-- --------------------------------------------------------

--
-- Table structure for table `grn`
--

CREATE TABLE `grn` (
  `GRN_ID` int(11) NOT NULL,
  `ItemName` varchar(256) NOT NULL,
  `ItemDescription` varchar(256) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `SupplierName` varchar(256) NOT NULL,
  `Company` varchar(256) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grn`
--

INSERT INTO `grn` (`GRN_ID`, `ItemName`, `ItemDescription`, `Quantity`, `SupplierName`, `Company`, `Price`) VALUES
(12, 'Lakmé', 'Lakmé is a well-known Indian cosmetics brand offering a wide range of beauty and skincare products. It is known for its innovative makeup formulations and vibrant colors.', 60, 'Gagana Edirisinghe', 'Lakmé', 110000),
(13, 'Swiss Beauty', 'Pond\'s is a well-established skincare brand offering a range of facial cleansers, moisturizers, and anti-aging products. It focuses on gentle formulas suitable for various skin types.', 60, 'Supun Ediriveera', 'Swiss Beauty', 70000),
(14, 'Oriflame', 'Oriflame is a Swedish beauty company known for its direct sales model of high-quality skincare, cosmetics, and wellness products. It combines natural ingredients with scientific innovation.', 60, 'Kamal Dassanayake', 'Oriflame', 126000),
(15, 'Avon', 'Avon is a global direct-selling cosmetics company offering a diverse range of beauty products, including skincare, makeup, fragrance, and personal care items.', 60, 'Indika Roshan', 'Avon', 82000),
(16, 'Ponds', 'Pond\'s is a well-established skincare brand offering a range of facial cleansers, moisturizers, and anti-aging products. It focuses on gentle formulas suitable for various skin types.', 60, 'Anujith Prabhashwara', 'Ponds', 96000),
(17, 'L\'Oréal Paris', 'L\'Oréal Paris is a leading global beauty brand known for its extensive range of cosmetics, haircare, skincare, and fragrance products. It combines scientific research with fashion-forward innovation.', 60, 'Gayana Sahansana', 'LOréal Paris', 148000),
(18, 'Maybelline New York', 'Maybelline New York is a popular cosmetics brand known for its affordable and trendsetting makeup products. It caters to a diverse range of beauty needs with products like foundations, mascaras, and lipsticks.', 60, 'Malith Abeykoon', 'Maybelline New York', 107000),
(19, 'Revlon', 'Revlon is an iconic American cosmetics brand offering a range of makeup, skincare, fragrance, and haircare products. It is known for its bold colors and long-lasting formulas.', 60, 'Mahesh Aravinda', 'Revlon', 118000),
(20, 'MAC Cosmetics', 'MAC Cosmetics is a global makeup brand favored by makeup artists and enthusiasts alike. It is renowned for its extensive range of high-quality makeup products and bold color choices.', 60, 'Dileepa Jayaweera', 'MAC Cosmetics', 203000),
(21, 'The Body Shop', 'The Body Shop is a British cosmetics, skincare, and perfume company known for its ethical approach to beauty. It offers products made from natural ingredients and promotes fair trade practices.', 60, 'Ziyam Mohomedd', 'The Body Shop', 126000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_ID` int(11) NOT NULL,
  `ProductName` varchar(256) NOT NULL,
  `Description` varchar(256) DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `Brand` varchar(256) NOT NULL,
  `Status` varchar(256) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Barcode` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_ID`, `ProductName`, `Description`, `Price`, `Brand`, `Status`, `Quantity`, `Barcode`) VALUES
(5, 'Lakmé Absolute Matte Melt Liquid Lip Color', 'Volume: 6 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Matte finish, long-lasting formula', 1800, 'Lakmé', 'Available', 10, '0001'),
(6, 'Lakmé 9 to 5 Primer + Matte Powder Foundation Compact', 'Volume: 9 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Matte finish, primer infused, suitable for daily wear', 2200, 'Lakmé', 'Available', 10, '0002'),
(7, 'Lakmé Eyeconic Kajal', 'Volume: 0.35 g\nColor Code: Black\nSpecial Details: Intense black pigmentation, smudge-proof, suitable for daily use', 1000, 'Lakmé', 'Available', 10, '0003'),
(8, 'Lakmé Sun Expert SPF 50 PA+++ Ultra Matte Gel Sunscreen', 'Volume: 50 ml\nColor Code: N/A (No specific color)\nSpecial Details: Ultra Matte finish, SPF 50, provides high sun protection', 1500, 'Lakmé', 'Available', 10, '0004'),
(9, 'Lakmé Absolute Argan Oil Radiance Oil-in-Crème', 'Volume: 50 g\nColor Code: N/A (No specific color)\nSpecial Details: Contains Argan Oil, provides radiance to the skin', 2500, 'Lakmé', 'Available', 10, '0005'),
(10, 'Lakmé Absolute Illuminating Blush Shimmer Brick', 'Volume: 10 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Shimmer finish, illuminates cheeks', 2000, 'Lakmé', 'Available', 10, '0006'),
(11, 'Swiss Beauty Liquid Concealer', 'Volume: 8 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Conceals imperfections, smooth application', 1200, 'Swiss Beauty', 'Available', 10, '0007'),
(12, 'Swiss Beauty Insta Glow Highlighting Stick', 'Volume: 6 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Highlighter stick, instant glow', 1500, 'Swiss Beauty', 'Available', 10, '0008'),
(13, 'Swiss Beauty Matte Me Ultra Smooth Matte Lip Cream', 'Volume: 6 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Matte finish, smooth texture', 1000, 'Swiss Beauty', 'Available', 10, '0009'),
(14, 'Swiss Beauty Metallic Liquid Eyeshadow', 'Volume: 4 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Metallic finish, long-lasting', 900, 'Swiss Beauty', 'Available', 10, '0010'),
(15, 'Swiss Beauty Eyebrow Pencil', 'Volume: N/A (Assume standard pencil size)\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Defines eyebrows, easy application', 600, 'Swiss Beauty', 'Available', 10, '0011'),
(16, 'Swiss Beauty Makeup Fixer Spray', 'Volume: 100 ml\nColor Code: N/A (No specific color)\nSpecial Details: Sets makeup, extends wear', 1800, 'Swiss Beauty', 'Available', 8, '0012'),
(17, 'Oriflame The ONE Everlasting Foundation', 'Volume: 30 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Long-lasting foundation', 2500, 'Oriflame', 'Available', 10, '0013'),
(18, 'Oriflame Giordani Gold Bronzing Pearls', 'Volume: 25 g\nColor Code: N/A (No specific color)\nSpecial Details: Bronzing pearls, adds warmth', 3000, 'Oriflame', 'Available', 10, '0014'),
(19, 'Oriflame Pure Colour Intense Lipstick', 'Volume: 4 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Intense color, moisturizing', 1800, 'Oriflame', 'Available', 6, '0015'),
(20, 'Oriflame Tender Care Protecting Balm', 'Volume: 15 ml\nColor Code: N/A (No specific color)\nSpecial Details: Multi-purpose balm, protects and softens', 1000, 'Oriflame', 'Available', 7, '0016'),
(21, 'Oriflame Love Nature Face Cream', 'Volume: 50 ml\nColor Code: Various types available (specify specific type if needed)\nSpecial Details: Moisturizing face cream', 1800, 'Oriflame', 'Available', 10, '0017'),
(22, 'Oriflame Optimals Even Out Serum', 'Volume: 30 ml\nColor Code: N/A (No specific color)\nSpecial Details: Even skin tone, serum', 2500, 'Oriflame', 'Available', 10, '0018'),
(23, 'Avon True Color Glimmersticks Eye Liner', 'Volume: 0.28 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Eye liner, glides on smoothly', 800, 'Avon', 'Available', 10, '0019'),
(24, 'Avon True Colour Perfectly Matte Lipstick', 'Volume: 3.6 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Matte finish, vibrant colors', 1500, 'Avon', 'Available', 10, '0020'),
(25, 'Avon Anew Ultimate Multi-Performance Day Cream SPF 25', 'Volume: 50 g\nColor Code: N/A (No specific color)\nSpecial Details: Multi-performance day cream, SPF 25', 2500, 'Avon', 'Available', 4, '0021'),
(26, 'Avon Care Vita Moist Hand Cream', 'Volume: 100 ml\nColor Code: N/A (No specific color)\nSpecial Details: Moisturizing hand cream', 600, 'Avon', 'Available', 10, '0022'),
(27, 'Avon SuperShock Gel Eyeliner Pencil', 'Volume: 1.2 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Gel eyeliner pencil, intense color', 800, 'Avon', 'Available', 10, '0023'),
(28, 'Avon Mark Magix Face Primer', 'Volume: 30 ml\nColor Code: N/A (No specific color)\nSpecial Details: Smoothing face primer', 2000, 'Avon', 'Available', 4, '0024'),
(29, 'Ponds White Beauty Daily Spot-less Lightening Cream', 'Volume: 50 g\nColor Code: N/A (No specific color)\nSpecial Details: Lightening cream, spot-less\n', 2000, 'Ponds', 'Available', 10, '0025'),
(30, 'Ponds Age Miracle Wrinkle Corrector Night Cream', 'Volume: 50 g\nColor Code: N/A (No specific color)\nSpecial Details: Wrinkle corrector night cream', 2500, 'Ponds', 'Available', 4, '0026'),
(31, 'Ponds Flawless Radiance Derma+ Perfecting Serum', 'Volume: 30 ml\nColor Code: N/A (No specific color)\nSpecial Details: Perfecting serum, radiance', 2200, 'Ponds', 'Available', 10, '0027'),
(32, 'Ponds Pure White Deep Cleansing Facial Foam', 'Volume: 100 g\nColor Code: N/A (No specific color)\nSpecial Details: Deep cleansing facial foam', 800, 'Ponds', 'Available', 10, '0028'),
(33, 'Ponds Cold Cream Cleanser', 'Volume: 50 ml\nColor Code: N/A (No specific color)\nSpecial Details: Cold cream cleanser', 600, 'Ponds', 'Available', 10, '0029'),
(34, 'Ponds Lasting Oil Control Face Powder', 'Volume: 10 g\nColor Code: N/A (No specific color)\nSpecial Details: Oil control face powder', 1500, 'Ponds', 'Available', 10, '0030'),
(35, 'LOréal Paris True Match Liquid Foundation', 'L\'Oréal Paris True Match Liquid Foundation', 2500, 'LOréal Paris', 'Available', 10, '0031'),
(36, 'LOréal Paris Infallible Pro-Matte Liquid Lipstick', 'Volume: 6.3 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Pro-Matte liquid lipstick', 2000, 'LOréal Paris', 'Available', 10, '0032'),
(37, 'LOréal Paris Volume Million Lashes Mascara', 'Volume: 9 ml\nColor Code: Black\nSpecial Details: Volume mascara', 1800, 'LOréal Paris', 'Available', 10, '0033'),
(38, 'LOréal Paris Revitalift Laser X3 Day Cream', 'Volume: 50 ml\nColor Code: N/A (No specific color)\nSpecial Details: Anti-aging day cream', 3000, 'LOréal Paris', 'Available', 6, '0034'),
(39, 'LOréal Paris Color Riche La Palette Eyeshadow', 'Volume: 7 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Eyeshadow palette', 2500, 'LOréal Paris', 'Available', 10, '0035'),
(40, 'LOréal Paris Infallible Pro-Spray & Set Makeup Extender Setting Spray', 'Volume: 100 ml\nColor Code: N/A (No specific color)\nSpecial Details: Makeup setting spray', 3000, 'LOréal Paris', 'Available', 10, '0036'),
(41, 'Maybelline Fit Me Matte + Poreless Foundation', 'Volume: 30 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Matte + Poreless foundation', 2500, 'Maybelline New York', 'Available', 10, '0037'),
(42, 'Maybelline New York Instant Age Rewind Concealer', 'Volume: 6 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Instant Age Rewind concealer', 1500, 'Maybelline New York', 'Available', 10, '0038'),
(43, 'Maybelline SuperStay Matte Ink Liquid Lipstick', 'Volume: 5 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: SuperStay Matte Ink liquid lipstick', 2000, 'Maybelline New York', 'Available', 10, '0039'),
(44, 'Maybelline Colossal Volum Express Mascara', 'Volume: 10.7 ml\nColor Code: Black\nSpecial Details: Volum\' Express mascara', 1500, 'Maybelline New York', 'Available', 10, '0040'),
(45, 'Maybelline Master Chrome Metallic Highlighter', 'Volume: 6.7 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Metallic highlighter', 2000, 'Maybelline New York', 'Available', 10, '0041'),
(46, 'Maybelline New York Eye Studio Lasting Drama Gel Eyeliner', 'Volume: 2.5 g\nColor Code: Black\nSpecial Details: Lasting Drama gel eyeliner', 1200, 'Maybelline New York', 'Available', 10, '0042'),
(47, 'Revlon ColorStay Foundation', 'Volume: 30 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: ColorStay foundation', 2800, 'Revlon', 'Available', 10, '0043'),
(48, 'Revlon Ultra HD Matte Lipcolor', 'Volume: 5.9 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Ultra HD Matte Lipcolor', 2000, 'Revlon', 'Available', 10, '0044'),
(49, 'Revlon PhotoReady Candid Antioxidant Concealer', 'Volume: 10 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Candid Antioxidant concealer', 2200, 'Revlon', 'Available', 10, '0045'),
(50, 'Revlon ColorStay Eyeliner', 'Volume: 0.28 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: ColorStay eyeliner', 800, 'Revlon', 'Available', 10, '0046'),
(51, 'Revlon Super Lustrous Lip Gloss', 'Volume: 5.9 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Super Lustrous Lip Gloss', 1500, 'Revlon', 'Available', 10, '0047'),
(52, 'Revlon Photoready Insta-Filter Foundation', 'Volume: 27 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Photoready Insta-Filter foundation', 2500, 'Revlon', 'Available', 10, '0048'),
(53, 'MAC Studio Fix Fluid Foundation', 'Volume: 30 ml\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Studio Fix Fluid foundation', 3500, 'MAC Cosmetics', 'Available', 10, '0049'),
(54, 'MAC Matte Lipstick', 'Volume: 3 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Matte Lipstick', 2800, 'MAC Cosmetics', 'Available', 10, '0050'),
(55, 'MAC Pro Longwear Paint Pot Eyeshadow', 'Volume: 5 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Pro Longwear Paint Pot eyeshadow', 3500, 'MAC Cosmetics', 'Available', 10, '0051'),
(56, 'MAC Strobe Cream', 'Volume: 50 ml\nColor Code: N/A (No specific color)\nSpecial Details: Strobe Cream', 4000, 'MAC Cosmetics', 'Available', 10, '0052'),
(57, 'MAC Mineralize Skinfinish Highlighter', 'Volume: 10 g\nColor Code: Various shades available (specify specific shades if needed)\nSpecial Details: Mineralize Skinfinish highlighter', 3500, 'MAC Cosmetics', 'Available', 10, '0053'),
(58, 'MAC Prep + Prime Fix+ Setting Spray', 'Volume: 100 ml\nColor Code: N/A (No specific color)\nSpecial Details: Prep + Prime Fix+ setting spray', 3000, 'MAC Cosmetics', 'Available', 10, '0054'),
(59, 'The Body Shop Tea Tree Mattifying Lotion', 'Volume: 50 ml\nColor Code: N/A (No specific color)\nSpecial Details: Tea Tree Mattifying Lotion', 2500, 'The Body Shop', 'Available', 10, '0055'),
(60, 'The Body Shop Vitamin E Moisture Cream', 'Volume: 50 ml\nColor Code: N/A (No specific color)\nSpecial Details: Vitamin E Moisture Cream', 2500, 'The Body Shop', 'Available', 10, '0056'),
(61, 'The Body Shop Drops of Youth Concentrate', 'Volume: 30 ml\nColor Code: N/A (No specific color)\nSpecial Details: Drops of Youth Concentrate', 3500, 'The Body Shop', 'Available', 10, '0057'),
(62, 'The Body Shop Satsuma Body Butter', 'Volume: 200 ml\nColor Code: N/A (No specific color)\nSpecial Details: Satsuma Body Butter', 2000, 'The Body Shop', 'Available', 10, '0058'),
(63, 'The Body Shop British Rose Shower Gel', 'Volume: 250 ml\nColor Code: N/A (No specific color)\nSpecial Details: British Rose Shower Gel', 1500, 'The Body Shop', 'Available', 10, '0059'),
(64, 'The Body Shop Shea Lip Butter', 'Volume: 10 ml\nColor Code: N/A (No specific color)\nSpecial Details: Shea Lip Butter', 600, 'The Body Shop', 'Available', 7, '0060');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Sales_ID` int(11) NOT NULL,
  `Date` varchar(256) NOT NULL,
  `Cashier` varchar(256) NOT NULL,
  `Subtotal` int(11) NOT NULL,
  `Pay` int(11) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Sales_ID`, `Date`, `Cashier`, `Subtotal`, `Pay`, `Balance`) VALUES
(12, '2024/07/07', '-', 12000, 13000, 1000),
(11, '2024/07/06', '-', 15000, 20000, 5000),
(10, '2024/07/04', '-', 28800, 30000, 1200),
(9, '2024/07/04', '-', 13800, 15000, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `SalesProduct_ID` int(11) NOT NULL,
  `Sales_ID` int(11) NOT NULL,
  `ProductBarcode` varchar(256) NOT NULL,
  `Sell_price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`SalesProduct_ID`, `Sales_ID`, `ProductBarcode`, `Sell_price`, `Quantity`, `Total`) VALUES
(18, 12, '0024', 2000, 6, 12000),
(17, 11, '0026', 2500, 6, 15000),
(16, 10, '0060', 600, 3, 1800),
(15, 10, '0034', 3000, 4, 12000),
(14, 10, '0021', 2500, 6, 15000),
(13, 9, '0016', 1000, 3, 3000),
(12, 9, '0012', 1800, 2, 3600),
(11, 9, '0015', 1800, 4, 7200);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `Supplier_ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `PhoneNumber` int(10) NOT NULL,
  `Address` varchar(256) NOT NULL,
  `Company` varchar(256) NOT NULL,
  `Status` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`Supplier_ID`, `Name`, `PhoneNumber`, `Address`, `Company`, `Status`) VALUES
(2, 'Supun Ediriveera', 725648532, 'Swiss Beauty Boutique, 789, Peradeniya Road, Kandy, Sri Lanka', 'Swiss Beauty', 'Available'),
(1, 'Gagana Edirisinghe', 788963875, 'Lakmé Studio, 456, Galle Road, Colombo 03, Sri Lanka', 'Lakmé', 'Available'),
(3, 'Kamal Dassanayake', 710924568, 'Oriflame Showroom, 234, Matara Road, Galle, Sri Lanka', 'Oriflame', 'Available'),
(4, 'Indika Roshan', 788541478, 'Avon Store, 321, Hospital Road, Jaffna, Sri Lanka', 'Avon', 'Available'),
(5, 'Anujith Prabhashwara', 788963569, 'Pond\'s Counter, 654, Main Street, Negombo, Sri Lanka', 'Ponds', 'Available'),
(6, 'Gayana Sahansana', 788541424, 'L\'Oréal Paris Outlet, 987, Anagarika Dharmapala Mawatha, Matara, Sri Lanka', 'LOréal Paris', 'Available'),
(7, 'Malith Abeykoon', 726983523, 'Maybelline Counter, 111, Front Street, Batticaloa, Sri Lanka', 'Maybelline New York', 'Available'),
(8, 'Mahesh Aravinda', 712578963, 'Revlon Store, 222, Trincomalee Road, Batticaloa, Sri Lanka', 'Revlon', 'Available'),
(9, 'Dileepa Jayaweera', 718954632, 'MAC Cosmetics Boutique, 333, Galle Road, Colombo 04, Sri Lanka', 'MAC Cosmetics', 'Available'),
(10, 'Ziyam Mohomedd', 725896315, 'The Body Shop Outlet, 444, Duplication Road, Colombo 05, Sri Lanka', 'The Body Shop', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `FullName` varchar(256) NOT NULL,
  `UserName` varchar(256) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `NIC` varchar(10) NOT NULL,
  `PhoneNumber` int(10) NOT NULL,
  `Age` int(2) NOT NULL,
  `Status` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `FullName`, `UserName`, `Password`, `NIC`, `PhoneNumber`, `Age`, `Status`) VALUES
(4, 'Bhathiya Prasad Dassanayake', 'bhathiya', '2005', '123123123v', 788963833, 18, 'Admin'),
(8, 'Anujith Prabhashwara', 'anujith', '2001', '789369456v', 788963852, 16, 'Cashier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `grn`
--
ALTER TABLE `grn`
  ADD PRIMARY KEY (`GRN_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Sales_ID`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`SalesProduct_ID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grn`
--
ALTER TABLE `grn`
  MODIFY `GRN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Sales_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `SalesProduct_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
