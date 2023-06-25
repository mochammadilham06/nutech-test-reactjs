-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 12:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comments`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_price` decimal(8,2) NOT NULL,
  `selling_price` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`uuid`, `name`, `images`, `purchase_price`, `selling_price`, `stock`, `created_at`, `updated_at`) VALUES
('ebabfea5-cce0-4635-9c3c-628a30a799e3', 'Product 1', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot%202023-03-08%20204304.png?alt=media&token=8a579294-f597-4750-a556-7bdb1313265d', '20000.00', '20000.00', 20, '2023-06-24 00:37:36', '2023-06-24 00:37:36'),
('b30dd9b5-a9f1-45f7-9649-993110741baf', 'Product 2', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot%202023-03-08%20204304.png?alt=media&token=36ed5a84-a690-4fb7-8f91-9bccb8a4c9f0', '10000.00', '100000.00', 10, '2023-06-24 00:37:59', '2023-06-24 00:37:59'),
('056e3c03-1c90-47f2-b1d8-a718ba3ead9c', 'Product 5', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot_20221025_094638.png?alt=media&token=f43f7b6e-91d7-4d4a-a83d-30f8a610dcc5', '20000.00', '20000.00', 20, '2023-06-24 00:41:10', '2023-06-24 00:41:10'),
('e4c8bfc0-929b-484e-be36-89126670c10e', 'Product 9', 'https://firebasestorage.googleapis.com/v0/b/nutech-test-c248b.appspot.com/o/files%2FScreenshot_20221125_133832.png?alt=media&token=d3be85d3-3e3b-4731-b436-325a9e1f8782', '20000.00', '20000.00', 20, '2023-06-24 00:43:29', '2023-06-24 00:43:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
