-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2025 at 06:46 AM
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
-- Database: `koumed`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_rma_field`
--

CREATE TABLE `additional_rma_field` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rma_id` int(11) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `field_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `address_type` varchar(255) NOT NULL,
  `parent_address_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'null if guest checkout',
  `cart_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'only for cart_addresses',
  `order_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'only for order_addresses',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `vat_id` varchar(255) DEFAULT NULL,
  `default_address` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'only for customer_addresses',
  `use_for_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address_type`, `parent_address_id`, `customer_id`, `cart_id`, `order_id`, `first_name`, `last_name`, `gender`, `company_name`, `address`, `city`, `state`, `country`, `postcode`, `email`, `phone`, `vat_id`, `default_address`, `use_for_shipping`, `additional`, `created_at`, `updated_at`) VALUES
(3, 'cart_billing', NULL, 1, 4, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-08 18:19:42', '2025-05-08 18:19:42'),
(4, 'cart_shipping', NULL, 1, 4, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 18:19:42', '2025-05-08 18:19:42'),
(5, 'order_shipping', NULL, NULL, NULL, 1, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 18:19:49', '2025-05-08 18:19:49'),
(6, 'order_billing', NULL, NULL, NULL, 1, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 18:19:49', '2025-05-08 18:19:49'),
(7, 'cart_billing', NULL, 1, 5, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-08 18:21:34', '2025-05-08 18:21:34'),
(8, 'cart_shipping', NULL, 1, 5, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 18:21:34', '2025-05-08 18:21:34'),
(9, 'order_shipping', NULL, NULL, NULL, 2, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 18:21:42', '2025-05-08 18:21:42'),
(10, 'order_billing', NULL, NULL, NULL, 2, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 18:21:42', '2025-05-08 18:21:42'),
(11, 'cart_billing', NULL, 1, 7, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-08 18:54:19', '2025-05-08 18:54:19'),
(12, 'cart_shipping', NULL, 1, 7, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 18:54:19', '2025-05-08 18:54:19'),
(13, 'order_shipping', NULL, NULL, NULL, 3, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 18:54:25', '2025-05-08 18:54:25'),
(14, 'order_billing', NULL, NULL, NULL, 3, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'TR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 18:54:25', '2025-05-08 18:54:25'),
(15, 'cart_billing', NULL, 1, 8, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-08 19:13:01', '2025-05-08 19:13:01'),
(16, 'cart_shipping', NULL, 1, 8, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 19:13:01', '2025-05-08 19:13:01'),
(17, 'order_shipping', NULL, NULL, NULL, 4, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 19:13:10', '2025-05-08 19:13:10'),
(18, 'order_billing', NULL, NULL, NULL, 4, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 19:13:10', '2025-05-08 19:13:10'),
(19, 'cart_billing', NULL, 1, 9, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-08 19:28:44', '2025-05-08 19:28:44'),
(20, 'cart_shipping', NULL, 1, 9, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 19:28:44', '2025-05-08 19:28:44'),
(21, 'order_shipping', NULL, NULL, NULL, 5, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 19:28:50', '2025-05-08 19:28:50'),
(22, 'order_billing', NULL, NULL, NULL, 5, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-08 19:28:50', '2025-05-08 19:28:50'),
(23, 'cart_billing', NULL, NULL, 10, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\n', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-10 08:17:32', '2025-05-10 08:39:10'),
(24, 'cart_shipping', NULL, NULL, 10, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\n', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 08:17:32', '2025-05-10 08:39:10'),
(25, 'order_shipping', NULL, NULL, NULL, 6, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\n', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 10:26:10', '2025-05-10 10:26:10'),
(26, 'order_billing', NULL, NULL, NULL, 6, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\n', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 10:26:10', '2025-05-10 10:26:10'),
(27, 'cart_billing', NULL, 1, 11, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-10 10:27:24', '2025-05-10 10:27:24'),
(28, 'cart_shipping', NULL, 1, 11, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 10:27:24', '2025-05-10 10:27:24'),
(29, 'order_shipping', NULL, NULL, NULL, 7, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 10:27:30', '2025-05-10 10:27:30'),
(30, 'order_billing', NULL, NULL, NULL, 7, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 10:27:30', '2025-05-10 10:27:30'),
(31, 'customer', NULL, 1, NULL, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 10:34:09', '2025-05-10 10:34:09'),
(32, 'cart_billing', 31, 1, 12, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-10 10:34:14', '2025-05-10 10:34:14'),
(33, 'cart_shipping', 31, 1, 12, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 10:34:14', '2025-05-10 10:34:14'),
(34, 'order_shipping', NULL, NULL, NULL, 8, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 10:34:20', '2025-05-10 10:34:20'),
(35, 'order_billing', NULL, NULL, NULL, 8, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 10:34:20', '2025-05-10 10:34:20'),
(36, 'cart_billing', 31, 1, 13, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-10 15:57:45', '2025-05-10 15:57:45'),
(37, 'cart_shipping', 31, 1, 13, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 15:57:45', '2025-05-10 15:57:45'),
(38, 'order_shipping', NULL, NULL, NULL, 9, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 15:57:52', '2025-05-10 15:57:52'),
(39, 'order_billing', NULL, NULL, NULL, 9, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 15:57:52', '2025-05-10 15:57:52'),
(40, 'cart_billing', 31, 1, 14, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-10 21:32:46', '2025-05-10 21:32:46'),
(41, 'cart_shipping', 31, 1, 14, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:32:46', '2025-05-10 21:32:46'),
(42, 'order_shipping', NULL, NULL, NULL, 10, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:32:52', '2025-05-10 21:32:52'),
(43, 'order_billing', NULL, NULL, NULL, 10, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:32:52', '2025-05-10 21:32:52'),
(44, 'cart_billing', 31, 1, 15, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-10 21:39:53', '2025-05-10 21:39:53'),
(45, 'cart_shipping', 31, 1, 15, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:39:53', '2025-05-10 21:39:53'),
(46, 'order_shipping', NULL, NULL, NULL, 11, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:39:58', '2025-05-10 21:39:58'),
(47, 'order_billing', NULL, NULL, NULL, 11, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:39:58', '2025-05-10 21:39:58'),
(48, 'cart_billing', 31, 1, 16, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-10 21:41:03', '2025-05-10 21:41:03'),
(49, 'cart_shipping', 31, 1, 16, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:41:03', '2025-05-10 21:41:03'),
(50, 'order_shipping', NULL, NULL, NULL, 12, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:41:08', '2025-05-10 21:41:08'),
(51, 'order_billing', NULL, NULL, NULL, 12, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:41:08', '2025-05-10 21:41:08'),
(52, 'cart_billing', 31, 1, 17, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-10 21:50:00', '2025-05-10 21:50:00'),
(53, 'cart_shipping', 31, 1, 17, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:50:00', '2025-05-10 21:50:00'),
(54, 'order_shipping', NULL, NULL, NULL, 13, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:50:07', '2025-05-10 21:50:07'),
(55, 'order_billing', NULL, NULL, NULL, 13, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 21:50:07', '2025-05-10 21:50:07'),
(56, 'cart_billing', 31, 1, 18, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-10 22:13:02', '2025-05-10 22:13:02'),
(57, 'cart_shipping', 31, 1, 18, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 22:13:02', '2025-05-10 22:13:02'),
(58, 'order_shipping', NULL, NULL, NULL, 14, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 22:13:13', '2025-05-10 22:13:13'),
(59, 'order_billing', NULL, NULL, NULL, 14, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 22:13:13', '2025-05-10 22:13:13'),
(60, 'cart_billing', 31, 1, 20, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 1, NULL, '2025-05-10 22:18:15', '2025-05-10 22:18:15'),
(61, 'cart_shipping', 31, 1, 20, NULL, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 22:18:15', '2025-05-10 22:18:15'),
(62, 'order_shipping', NULL, NULL, NULL, 15, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 22:18:21', '2025-05-10 22:18:21'),
(63, 'order_billing', NULL, NULL, NULL, 15, 'EMAD', 'ALABDUL RAHMAN', NULL, 'sdhsdh', 'hdhsd\r\nsdfhsdhsdfh', 'viransehir', 'Mersin', 'AR', '33300', 'emad.r.abd@icloud.com', '05319625528', NULL, 0, 0, NULL, '2025-05-10 22:18:21', '2025-05-10 22:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `api_token`, `status`, `role_id`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@koumed.com', '$2y$12$ArqrKI35J59iO9lWcBxUCe9OIQABNBqlU4Mrm/1nDUnSEVHjGatQy', 'YibjHHI7zKR28vUjOJtoEIkXSLf851uMK8KId39vTygqSL0CqLpKEWjIi4P2O4ZAaErmAF5qVxKbx5Ft', 1, 1, 'admins/1/BbZQl6CRRvowCFriQq2l8qBAcLoeZ55OLHQhb7Es.png', NULL, '2025-05-06 22:00:10', '2025-05-06 22:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `swatch_type` varchar(255) DEFAULT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `regex` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_comparable` tinyint(1) NOT NULL DEFAULT 0,
  `is_configurable` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `is_visible_on_front` tinyint(1) NOT NULL DEFAULT 0,
  `value_per_locale` tinyint(1) NOT NULL DEFAULT 0,
  `value_per_channel` tinyint(1) NOT NULL DEFAULT 0,
  `default_value` int(11) DEFAULT NULL,
  `enable_wysiwyg` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `admin_name`, `type`, `swatch_type`, `validation`, `regex`, `position`, `is_required`, `is_unique`, `is_filterable`, `is_comparable`, `is_configurable`, `is_user_defined`, `is_visible_on_front`, `value_per_locale`, `value_per_channel`, `default_value`, `enable_wysiwyg`, `created_at`, `updated_at`) VALUES
(1, 'sku', 'Stok Kodu', 'text', NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(2, 'name', 'Ad', 'text', NULL, NULL, NULL, 3, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(3, 'url_key', 'URL Anahtarı', 'text', NULL, NULL, NULL, 4, 1, 1, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(4, 'tax_category_id', 'Vergi Kategorisi', 'select', NULL, NULL, NULL, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(5, 'new', 'Yeni', 'boolean', NULL, NULL, NULL, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(6, 'featured', 'Öne Çıkan', 'boolean', NULL, NULL, NULL, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(7, 'visible_individually', 'Tek Tek Görünür', 'boolean', NULL, NULL, NULL, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(8, 'status', 'Durum', 'boolean', NULL, NULL, NULL, 10, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(9, 'short_description', 'Kısa Açıklama', 'textarea', NULL, NULL, NULL, 11, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(10, 'description', 'Açıklama', 'textarea', NULL, NULL, NULL, 12, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 1, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(11, 'price', 'Fiyat', 'price', NULL, 'decimal', NULL, 13, 1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(13, 'special_price', 'Özel Fiyat', 'price', NULL, 'decimal', NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(14, 'special_price_from', 'Özel Fiyat Başlangıç', 'date', NULL, NULL, NULL, 16, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(15, 'special_price_to', 'Özel Fiyat Bitiş', 'date', NULL, NULL, NULL, 17, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(16, 'meta_title', 'Meta Başlık', 'textarea', NULL, NULL, NULL, 18, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(17, 'meta_keywords', 'Meta Anahtar Kelimeler', 'textarea', NULL, NULL, NULL, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(18, 'meta_description', 'Meta Açıklama', 'textarea', NULL, NULL, NULL, 21, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(22, 'weight', 'Ağırlık', 'text', NULL, 'decimal', NULL, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(25, 'brand', 'Marka', 'select', 'dropdown', NULL, NULL, 28, 1, 0, 1, 1, 1, 1, 1, 0, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 23:17:03'),
(26, 'guest_checkout', 'Misafir Ödeme', 'boolean', NULL, NULL, NULL, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(27, 'product_number', 'Ürün Numarası', 'text', NULL, NULL, NULL, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(28, 'manage_stock', 'Stoğu Yönet', 'boolean', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '2025-05-06 22:00:08', '2025-05-06 22:00:08'),
(29, 'teknik_aciklama', 'Teknik Açıklama', 'textarea', NULL, NULL, '', NULL, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, '2025-05-06 22:38:05', '2025-05-06 22:38:05'),
(30, 'Durum', 'Durum', 'select', 'dropdown', NULL, '', NULL, 0, 0, 1, 1, 0, 1, 1, 0, 0, NULL, 0, '2025-05-06 22:39:49', '2025-05-07 02:56:24'),
(31, 'uretim_yili', 'Üretim Yılı', 'text', NULL, 'numeric', '', NULL, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, '2025-05-06 22:40:21', '2025-05-06 22:40:21'),
(32, 'garanti_suresi', 'Garanti Süresi', 'select', 'dropdown', NULL, '', NULL, 0, 0, 1, 1, 0, 1, 1, 0, 0, NULL, 0, '2025-05-06 22:46:25', '2025-05-07 03:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_families`
--

CREATE TABLE `attribute_families` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_families`
--

INSERT INTO `attribute_families` (`id`, `code`, `name`, `status`, `is_user_defined`) VALUES
(1, 'default', 'Varsayılan', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_groups`
--

CREATE TABLE `attribute_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `column` int(11) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_groups`
--

INSERT INTO `attribute_groups` (`id`, `code`, `attribute_family_id`, `name`, `column`, `position`, `is_user_defined`) VALUES
(1, 'general', 1, 'Genel', 1, 1, 0),
(2, 'description', 1, 'Açıklama', 1, 2, 0),
(3, 'meta_description', 1, 'Meta Açıklama', 1, 3, 0),
(4, 'price', 1, 'Fiyat', 2, 1, 0),
(5, 'shipping', 1, 'Nakliye', 2, 2, 0),
(6, 'settings', 1, 'Ayarlar', 2, 3, 0),
(7, 'inventories', 1, 'Envanterler', 2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group_mappings`
--

CREATE TABLE `attribute_group_mappings` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_group_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_group_mappings`
--

INSERT INTO `attribute_group_mappings` (`attribute_id`, `attribute_group_id`, `position`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 6, 1),
(6, 6, 2),
(7, 6, 3),
(8, 6, 4),
(9, 2, 1),
(10, 2, 2),
(11, 4, 1),
(13, 4, 2),
(14, 4, 3),
(15, 4, 4),
(16, 3, 1),
(17, 3, 2),
(18, 3, 3),
(22, 5, 1),
(25, 1, 6),
(26, 6, 5),
(27, 1, 2),
(28, 7, 1),
(29, 2, 3),
(30, 1, 9),
(31, 1, 7),
(32, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `swatch_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `admin_name`, `sort_order`, `swatch_value`) VALUES
(10, 25, 'Medtronic', 0, NULL),
(11, 25, 'Siemens Healthineers', 1, NULL),
(12, 25, 'GE HealthCare', 2, NULL),
(13, 25, 'Philips Healthcare', 3, NULL),
(14, 25, 'Abbott', 4, NULL),
(15, 25, 'ResMed', 5, NULL),
(16, 25, 'FirstMed', 6, NULL),
(17, 25, 'Dräger', 7, NULL),
(18, 25, 'Omron', 8, NULL),
(19, 30, 'Sıfır', 0, NULL),
(20, 30, '2.El', 1, NULL),
(21, 32, '2 Yıl', 0, NULL),
(22, 32, '2 Yıl', 1, NULL),
(23, 32, '6 Ay', 2, NULL),
(24, 32, '3 Ay', 3, NULL),
(25, 32, 'Distribütör Garantisi', 4, NULL),
(26, 32, 'Yok', 5, NULL),
(27, 25, 'Diğer', 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_option_translations`
--

CREATE TABLE `attribute_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `label` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_option_translations`
--

INSERT INTO `attribute_option_translations` (`id`, `attribute_option_id`, `locale`, `label`) VALUES
(10, 10, 'tr', 'Medtronic'),
(11, 11, 'tr', 'Siemens Healthineers'),
(12, 12, 'tr', 'GE HealthCare'),
(13, 13, 'tr', 'Philips Healthcare'),
(14, 14, 'tr', 'Abbott'),
(15, 15, 'tr', 'ResMed'),
(16, 16, 'tr', 'FİrstMed'),
(17, 17, 'tr', 'Dräger'),
(18, 18, 'tr', 'Omron'),
(19, 19, 'tr', 'Sıfır'),
(20, 20, 'tr', '2.El'),
(21, 21, 'tr', '2 Yıl'),
(22, 22, 'tr', '1 Yıl'),
(23, 23, 'tr', '6 Ay'),
(24, 24, 'tr', '3 Ay'),
(25, 25, 'tr', 'Distribütör Garantisi'),
(26, 26, 'tr', 'Yok'),
(27, 27, 'tr', 'Diğer');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `locale`, `name`) VALUES
(1, 1, 'tr', 'Stok Kodu'),
(2, 2, 'tr', 'Ad'),
(3, 3, 'tr', 'URL Anahtarı'),
(4, 4, 'tr', 'Vergi Kategorisi'),
(5, 5, 'tr', 'Yeni'),
(6, 6, 'tr', 'Öne Çıkan'),
(7, 7, 'tr', 'Tek Tek Görünür'),
(8, 8, 'tr', 'Durum'),
(9, 9, 'tr', 'Kısa Açıklama'),
(10, 10, 'tr', 'Açıklama'),
(11, 11, 'tr', 'Fiyat'),
(13, 13, 'tr', 'Özel Fiyat'),
(14, 14, 'tr', 'Özel Fiyat Başlangıç'),
(15, 15, 'tr', 'Özel Fiyat Bitiş'),
(16, 16, 'tr', 'Meta Başlık'),
(17, 17, 'tr', 'Meta Anahtar Kelimeler'),
(18, 18, 'tr', 'Meta Açıklama'),
(22, 22, 'tr', 'Ağırlık'),
(25, 25, 'tr', 'Marka'),
(26, 26, 'tr', 'Misafir Ödeme'),
(27, 27, 'tr', 'Ürün Numarası'),
(28, 28, 'tr', 'Stoğu Yönet'),
(29, 29, 'tr', 'Teknik Açıklama'),
(30, 30, 'tr', 'Durum'),
(31, 31, 'tr', 'Üretim Yılı'),
(32, 32, 'tr', 'Garanti Süresi');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `qty` int(11) DEFAULT 0,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `booking_product_event_ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_products`
--

CREATE TABLE `booking_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `qty` int(11) DEFAULT 0,
  `location` varchar(255) DEFAULT NULL,
  `show_location` tinyint(1) NOT NULL DEFAULT 0,
  `available_every_week` tinyint(1) DEFAULT NULL,
  `available_from` datetime DEFAULT NULL,
  `available_to` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_appointment_slots`
--

CREATE TABLE `booking_product_appointment_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_product_id` int(10) UNSIGNED NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `break_time` int(11) DEFAULT NULL,
  `same_slot_all_days` tinyint(1) DEFAULT NULL,
  `slots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`slots`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_default_slots`
--

CREATE TABLE `booking_product_default_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_product_id` int(10) UNSIGNED NOT NULL,
  `booking_type` varchar(255) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `break_time` int(11) DEFAULT NULL,
  `slots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`slots`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_event_tickets`
--

CREATE TABLE `booking_product_event_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_product_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(12,4) DEFAULT 0.0000,
  `qty` int(11) DEFAULT 0,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` datetime DEFAULT NULL,
  `special_price_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_event_ticket_translations`
--

CREATE TABLE `booking_product_event_ticket_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_product_event_ticket_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_rental_slots`
--

CREATE TABLE `booking_product_rental_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_product_id` int(10) UNSIGNED NOT NULL,
  `renting_type` varchar(255) NOT NULL,
  `daily_price` decimal(12,4) DEFAULT 0.0000,
  `hourly_price` decimal(12,4) DEFAULT 0.0000,
  `same_slot_all_days` tinyint(1) DEFAULT NULL,
  `slots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`slots`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_table_slots`
--

CREATE TABLE `booking_product_table_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_product_id` int(10) UNSIGNED NOT NULL,
  `price_type` varchar(255) NOT NULL,
  `guest_limit` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL,
  `break_time` int(11) NOT NULL,
  `prevent_scheduling_before` int(11) NOT NULL,
  `same_slot_all_days` tinyint(1) DEFAULT NULL,
  `slots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`slots`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_first_name` varchar(255) DEFAULT NULL,
  `customer_last_name` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `items_count` int(11) DEFAULT NULL,
  `items_qty` decimal(12,4) DEFAULT NULL,
  `exchange_rate` decimal(12,4) DEFAULT NULL,
  `global_currency_code` varchar(255) DEFAULT NULL,
  `base_currency_code` varchar(255) DEFAULT NULL,
  `channel_currency_code` varchar(255) DEFAULT NULL,
  `cart_currency_code` varchar(255) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `tax_total` decimal(12,4) DEFAULT 0.0000,
  `base_tax_total` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `checkout_method` varchar(255) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `applied_cart_rule_ids` varchar(255) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `coupon_code`, `is_gift`, `items_count`, `items_qty`, `exchange_rate`, `global_currency_code`, `base_currency_code`, `channel_currency_code`, `cart_currency_code`, `grand_total`, `base_grand_total`, `sub_total`, `base_sub_total`, `tax_total`, `base_tax_total`, `discount_amount`, `base_discount_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `checkout_method`, `is_guest`, `is_active`, `applied_cart_rule_ids`, `customer_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 7.6400, 7.6400, 7.6400, 7.6400, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 7.6400, 7.6400, NULL, 1, 1, NULL, NULL, 1, '2025-05-07 03:34:54', '2025-05-07 04:34:08'),
(3, NULL, NULL, NULL, NULL, NULL, 0, 2, 7.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 1487.9000, 1487.9000, 1487.9000, 1487.9000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1487.9000, 1487.9000, NULL, 1, 1, NULL, NULL, 1, '2025-05-07 16:06:20', '2025-05-07 20:59:02'),
(4, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-08 18:18:47', '2025-05-08 18:19:55'),
(5, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-08 18:21:17', '2025-05-08 18:21:45'),
(6, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', NULL, NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-08 18:42:09', '2025-05-08 18:42:09'),
(7, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 4.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 147000.0000, 147000.0000, 147000.0000, 147000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 147000.0000, 147000.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-08 18:53:53', '2025-05-08 18:54:31'),
(8, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-08 19:12:39', '2025-05-08 19:13:17'),
(9, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-08 19:28:23', '2025-05-08 19:28:56'),
(10, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, NULL, 1, 0, NULL, NULL, 1, '2025-05-10 08:17:22', '2025-05-10 10:26:17'),
(11, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-10 10:27:06', '2025-05-10 10:27:38'),
(12, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 36750.0000, 36750.0000, 36750.0000, 36750.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 36750.0000, 36750.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-10 10:33:57', '2025-05-10 10:34:23'),
(13, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-10 15:57:29', '2025-05-10 15:57:56'),
(14, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'EUR', 13.7300, 599.0000, 13.7300, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13.7300, 599.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-10 21:32:30', '2025-05-10 21:32:57'),
(15, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-10 21:39:29', '2025-05-10 21:40:02'),
(16, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-10 21:40:52', '2025-05-10 21:41:12'),
(17, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-10 21:49:53', '2025-05-10 21:50:10'),
(18, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-10 22:12:55', '2025-05-10 22:13:17'),
(19, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', NULL, NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-10 22:17:38', '2025-05-10 22:18:07'),
(20, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', NULL, 0, 1, 1.0000, NULL, 'TRY', 'TRY', 'TRY', 'TRY', 56999.0000, 56999.0000, 56999.0000, 56999.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 56999.0000, 56999.0000, NULL, 0, 0, NULL, 1, 1, '2025-05-10 22:18:07', '2025-05-10 22:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sku` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price` decimal(12,4) NOT NULL DEFAULT 1.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `custom_price` decimal(12,4) DEFAULT NULL,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `applied_tax_rate` varchar(255) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED DEFAULT NULL,
  `applied_cart_rule_ids` varchar(255) DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `quantity`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `base_total_weight`, `price`, `base_price`, `custom_price`, `total`, `base_total`, `tax_percent`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `applied_tax_rate`, `parent_id`, `product_id`, `cart_id`, `tax_category_id`, `applied_cart_rule_ids`, `additional`, `created_at`, `updated_at`) VALUES
(1, 1, 'SRF-01', 'simple', 'Branül Kanül', NULL, 0.0020, 0.0020, 0.0020, 7.6400, 7.6400, NULL, 7.6400, 7.6400, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 7.6400, 7.6400, 7.6400, 7.6400, NULL, NULL, 1, 1, NULL, NULL, '{\"cart_id\":1,\"product_id\":\"1\",\"is_buy_now\":\"0\",\"customizable_options\":{\"1\":[\"1\"]},\"quantity\":1,\"formatted_customizable_options\":[{\"id\":1,\"type\":\"radio\",\"label\":{\"tr\":\"\\u00d6l\\u00e7\\u00fc :\"},\"prices\":[{\"id\":1,\"label\":\"No:20\",\"price\":\"0.0000\"}],\"total_price\":0}],\"attributes\":[{\"attribute_type\":\"radio\",\"attribute_name\":\"\\u00d6l\\u00e7\\u00fc :\",\"option_label\":\"No:20\"}]}', '2025-05-07 03:34:54', '2025-05-07 03:34:54'),
(3, 2, 'temporary-sku-d7e95e', 'simple', 'aml-Kerbl Elastratör Pensi', NULL, 1.0000, 2.0000, 2.0000, 599.0000, 599.0000, NULL, 1198.0000, 1198.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 1198.0000, 1198.0000, NULL, NULL, 36, 3, NULL, NULL, '{\"cart_id\":3,\"quantity\":2,\"product_id\":36}', '2025-05-07 16:06:20', '2025-05-07 20:38:31'),
(4, 5, 'AKS-02', 'simple', 'Airway Solunum Hava Yolu Sln', NULL, 0.1000, 0.5000, 0.5000, 57.9800, 57.9800, NULL, 289.9000, 289.9000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 57.9800, 57.9800, 289.9000, 289.9000, NULL, NULL, 20, 3, NULL, NULL, '{\"cart_id\":3,\"product_id\":\"20\",\"is_buy_now\":\"0\",\"customizable_options\":{\"3\":[\"9\"]},\"quantity\":5,\"formatted_customizable_options\":[{\"id\":3,\"type\":\"select\",\"label\":{\"tr\":\"\\u00d6l\\u00e7\\u00fc :\"},\"prices\":[{\"id\":9,\"label\":\"No : 2\",\"price\":\"7.9900\"}],\"total_price\":7.99}],\"attributes\":[{\"attribute_type\":\"select\",\"attribute_name\":\"\\u00d6l\\u00e7\\u00fc :\",\"option_label\":\"No : 2\"}]}', '2025-05-07 16:06:49', '2025-05-07 20:59:02'),
(5, 1, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1.0000, 599.0000, 599.0000, NULL, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL, 39, 4, NULL, NULL, '{\"cart_id\":4,\"quantity\":1,\"product_id\":39}', '2025-05-08 18:18:47', '2025-05-08 18:18:47'),
(6, 1, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1.0000, 599.0000, 599.0000, NULL, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL, 39, 5, NULL, NULL, '{\"cart_id\":4,\"quantity\":1,\"product_id\":39,\"locale\":\"tr\"}', '2025-05-08 18:21:18', '2025-05-08 18:21:18'),
(7, 1, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1.0000, 599.0000, 599.0000, NULL, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL, 39, 6, NULL, NULL, '{\"cart_id\":4,\"quantity\":1,\"product_id\":39,\"locale\":\"tr\"}', '2025-05-08 18:42:09', '2025-05-08 18:42:09'),
(8, 4, 'CHZ-03', 'simple', 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, 5.0000, 20.0000, 20.0000, 36750.0000, 36750.0000, NULL, 147000.0000, 147000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 36750.0000, 36750.0000, 147000.0000, 147000.0000, NULL, NULL, 16, 7, NULL, NULL, '{\"cart_id\":7,\"quantity\":4,\"product_id\":16}', '2025-05-08 18:53:53', '2025-05-08 18:53:58'),
(9, 1, 'CHZ-Def-4', 'simple', 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, 5.0000, 5.0000, 5.0000, 85000.0000, 85000.0000, NULL, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, NULL, NULL, 33, 8, NULL, NULL, '{\"cart_id\":8,\"quantity\":1,\"product_id\":33}', '2025-05-08 19:12:39', '2025-05-08 19:12:39'),
(10, 1, 'CHZ-Def-4', 'simple', 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, 5.0000, 5.0000, 5.0000, 85000.0000, 85000.0000, NULL, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, NULL, NULL, 33, 9, NULL, NULL, '{\"cart_id\":9,\"quantity\":1,\"product_id\":33}', '2025-05-08 19:28:23', '2025-05-08 19:28:23'),
(11, 1, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1.0000, 599.0000, 599.0000, NULL, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL, 39, 10, NULL, NULL, '{\"cart_id\":10,\"product_id\":\"39\",\"is_buy_now\":\"1\",\"quantity\":1}', '2025-05-10 08:17:22', '2025-05-10 08:17:22'),
(12, 1, 'CHZ-Def-4', 'simple', 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, 5.0000, 5.0000, 5.0000, 85000.0000, 85000.0000, NULL, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, NULL, NULL, 33, 11, NULL, NULL, '{\"cart_id\":11,\"quantity\":1,\"product_id\":33}', '2025-05-10 10:27:06', '2025-05-10 10:27:06'),
(13, 1, 'CHZ-03', 'simple', 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, 5.0000, 5.0000, 5.0000, 36750.0000, 36750.0000, NULL, 36750.0000, 36750.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 36750.0000, 36750.0000, 36750.0000, 36750.0000, NULL, NULL, 16, 12, NULL, NULL, '{\"cart_id\":12,\"quantity\":1,\"product_id\":16}', '2025-05-10 10:33:57', '2025-05-10 10:33:57'),
(14, 1, 'temporary-sku-555195', 'simple', 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, 1.0000, 1.0000, 1.0000, 3600.0000, 3600.0000, NULL, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, NULL, NULL, 32, 13, NULL, NULL, '{\"cart_id\":13,\"quantity\":1,\"product_id\":32}', '2025-05-10 15:57:29', '2025-05-10 15:57:29'),
(15, 1, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1.0000, 13.7285, 599.0000, NULL, 13.7285, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13.7285, 599.0000, 13.7285, 599.0000, NULL, NULL, 39, 14, NULL, NULL, '{\"cart_id\":14,\"product_id\":\"39\",\"is_buy_now\":\"1\",\"quantity\":1}', '2025-05-10 21:32:30', '2025-05-10 21:32:52'),
(16, 1, 'temporary-sku-d7e95e', 'simple', 'aml-Kerbl Elastratör Pensi', NULL, 1.0000, 1.0000, 1.0000, 599.0000, 599.0000, NULL, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL, 36, 15, NULL, NULL, '{\"cart_id\":15,\"quantity\":1,\"product_id\":36}', '2025-05-10 21:39:29', '2025-05-10 21:39:58'),
(17, 1, 'temporary-sku-555195', 'simple', 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, 1.0000, 1.0000, 1.0000, 3600.0000, 3600.0000, NULL, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, NULL, NULL, 32, 16, NULL, NULL, '{\"cart_id\":16,\"quantity\":1,\"product_id\":32}', '2025-05-10 21:40:52', '2025-05-10 21:41:08'),
(18, 1, 'temporary-sku-d7e95e', 'simple', 'aml-Kerbl Elastratör Pensi', NULL, 1.0000, 1.0000, 1.0000, 599.0000, 599.0000, NULL, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL, 36, 17, NULL, NULL, '{\"cart_id\":17,\"product_id\":\"36\",\"is_buy_now\":\"1\",\"quantity\":1}', '2025-05-10 21:49:53', '2025-05-10 21:50:06'),
(19, 1, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1.0000, 599.0000, 599.0000, NULL, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL, 39, 18, NULL, NULL, '{\"cart_id\":18,\"product_id\":\"39\",\"is_buy_now\":\"1\",\"quantity\":1}', '2025-05-10 22:12:55', '2025-05-10 22:13:12'),
(20, 1, 'CHZ-Def-4', 'simple', 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, 5.0000, 5.0000, 5.0000, 85000.0000, 85000.0000, NULL, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, NULL, NULL, 33, 19, NULL, NULL, '{\"cart_id\":19,\"quantity\":1,\"product_id\":33}', '2025-05-10 22:17:38', '2025-05-10 22:18:06'),
(21, 1, 'CHZ-Def-2', 'simple', 'Def-Aselsan Heartline Ekranlı Tam Otomatik Defibrilatör Cihazı (OED)', NULL, 5.0000, 5.0000, 5.0000, 56999.0000, 56999.0000, NULL, 56999.0000, 56999.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 56999.0000, 56999.0000, 56999.0000, 56999.0000, NULL, NULL, 30, 20, NULL, NULL, '{\"cart_id\":20,\"product_id\":\"30\",\"is_buy_now\":\"1\",\"quantity\":1}', '2025-05-10 22:18:07', '2025-05-10 22:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item_inventories`
--

CREATE TABLE `cart_item_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_item_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_payment`
--

CREATE TABLE `cart_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(255) NOT NULL,
  `method_title` varchar(255) DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_payment`
--

INSERT INTO `cart_payment` (`id`, `method`, `method_title`, `cart_id`, `created_at`, `updated_at`) VALUES
(6, 'cashondelivery', 'Teslimatta Öde', 4, '2025-05-08 18:19:47', '2025-05-08 18:19:47'),
(7, 'cashondelivery', 'Teslimatta Öde', 5, '2025-05-08 18:21:41', '2025-05-08 18:21:41'),
(8, 'cashondelivery', 'Teslimatta Öde', 7, '2025-05-08 18:54:23', '2025-05-08 18:54:23'),
(9, 'cashondelivery', 'Teslimatta Öde', 8, '2025-05-08 19:13:07', '2025-05-08 19:13:07'),
(10, 'cashondelivery', 'Teslimatta Öde', 9, '2025-05-08 19:28:48', '2025-05-08 19:28:48'),
(14, 'moneytransfer', 'Havale-Eft', 10, '2025-05-10 10:26:09', '2025-05-10 10:26:09'),
(15, 'moneytransfer', 'Havale-Eft', 11, '2025-05-10 10:27:28', '2025-05-10 10:27:28'),
(16, 'moneytransfer', 'Havale-Eft', 12, '2025-05-10 10:34:18', '2025-05-10 10:34:18'),
(17, 'cashondelivery', 'Teslimatta Öde', 13, '2025-05-10 15:57:50', '2025-05-10 15:57:50'),
(18, 'cashondelivery', 'Teslimatta Öde', 14, '2025-05-10 21:32:50', '2025-05-10 21:32:50'),
(19, 'cashondelivery', 'Teslimatta Öde', 15, '2025-05-10 21:39:57', '2025-05-10 21:39:57'),
(20, 'cashondelivery', 'Teslimatta Öde', 16, '2025-05-10 21:41:07', '2025-05-10 21:41:07'),
(21, 'cashondelivery', 'Teslimatta Öde', 17, '2025-05-10 21:50:05', '2025-05-10 21:50:05'),
(23, 'cashondelivery', 'Teslimatta Öde', 18, '2025-05-10 22:13:11', '2025-05-10 22:13:11'),
(24, 'moneytransfer', 'Havale-Eft', 20, '2025-05-10 22:18:20', '2025-05-10 22:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `cart_rules`
--

CREATE TABLE `cart_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_type` int(11) NOT NULL DEFAULT 1,
  `use_auto_generation` tinyint(1) NOT NULL DEFAULT 0,
  `usage_per_customer` int(11) NOT NULL DEFAULT 0,
  `uses_per_coupon` int(11) NOT NULL DEFAULT 0,
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `condition_type` tinyint(1) NOT NULL DEFAULT 1,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `uses_attribute_conditions` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(255) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_quantity` int(11) NOT NULL DEFAULT 1,
  `discount_step` varchar(255) NOT NULL DEFAULT '1',
  `apply_to_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_channels`
--

CREATE TABLE `cart_rule_channels` (
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupons`
--

CREATE TABLE `cart_rule_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `usage_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `usage_per_customer` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `expired_at` date DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupon_usage`
--

CREATE TABLE `cart_rule_coupon_usage` (
  `id` int(10) UNSIGNED NOT NULL,
  `times_used` int(11) NOT NULL DEFAULT 0,
  `cart_rule_coupon_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customers`
--

CREATE TABLE `cart_rule_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `times_used` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customer_groups`
--

CREATE TABLE `cart_rule_customer_groups` (
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_translations`
--

CREATE TABLE `cart_rule_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `label` text DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_shipping_rates`
--

CREATE TABLE `cart_shipping_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `carrier` varchar(255) NOT NULL,
  `carrier_title` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `method_title` varchar(255) NOT NULL,
  `method_description` varchar(255) DEFAULT NULL,
  `price` double DEFAULT 0,
  `base_price` double DEFAULT 0,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_percent` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `applied_tax_rate` varchar(255) DEFAULT NULL,
  `is_calculate_tax` tinyint(1) NOT NULL DEFAULT 1,
  `cart_address_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_shipping_rates`
--

INSERT INTO `cart_shipping_rates` (`id`, `carrier`, `carrier_title`, `method`, `method_title`, `method_description`, `price`, `base_price`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `price_incl_tax`, `base_price_incl_tax`, `applied_tax_rate`, `is_calculate_tax`, `cart_address_id`, `created_at`, `updated_at`, `cart_id`) VALUES
(7, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, NULL, 1, 4, '2025-05-08 18:19:44', '2025-05-08 18:19:44', 4),
(8, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 4, '2025-05-08 18:19:44', '2025-05-08 18:19:44', 4),
(11, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, NULL, 1, 8, '2025-05-08 18:21:36', '2025-05-08 18:21:36', 5),
(12, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 8, '2025-05-08 18:21:36', '2025-05-08 18:21:36', 5),
(15, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 40, 40, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 40.0000, 40.0000, NULL, 1, 12, '2025-05-08 18:54:21', '2025-05-08 18:54:21', 7),
(16, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 12, '2025-05-08 18:54:21', '2025-05-08 18:54:21', 7),
(18, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 16, '2025-05-08 19:13:03', '2025-05-08 19:13:03', 8),
(20, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 20, '2025-05-08 19:28:45', '2025-05-08 19:28:45', 9),
(36, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 24, '2025-05-10 10:26:06', '2025-05-10 10:26:06', 10),
(38, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 28, '2025-05-10 10:27:26', '2025-05-10 10:27:26', 11),
(40, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 33, '2025-05-10 10:34:16', '2025-05-10 10:34:16', 12),
(42, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 37, '2025-05-10 15:57:48', '2025-05-10 15:57:48', 13),
(44, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 41, '2025-05-10 21:32:48', '2025-05-10 21:32:48', 14),
(46, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 45, '2025-05-10 21:39:55', '2025-05-10 21:39:55', 15),
(48, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 49, '2025-05-10 21:41:06', '2025-05-10 21:41:06', 16),
(50, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 53, '2025-05-10 21:50:03', '2025-05-10 21:50:03', 17),
(52, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 57, '2025-05-10 22:13:07', '2025-05-10 22:13:07', 18),
(54, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 61, '2025-05-10 22:18:18', '2025-05-10 22:18:18', 20);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rules`
--

CREATE TABLE `catalog_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `starts_from` date DEFAULT NULL,
  `ends_till` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `condition_type` tinyint(1) NOT NULL DEFAULT 1,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(255) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_channels`
--

CREATE TABLE `catalog_rule_channels` (
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_customer_groups`
--

CREATE TABLE `catalog_rule_customer_groups` (
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_products`
--

CREATE TABLE `catalog_rule_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(255) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_product_prices`
--

CREATE TABLE `catalog_rule_product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `rule_date` date NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `logo_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `display_mode` varchar(255) DEFAULT 'products_and_description',
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `banner_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `position`, `logo_path`, `status`, `display_mode`, `_lft`, `_rgt`, `parent_id`, `additional`, `banner_path`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 'products_and_description', 1, 38, NULL, NULL, NULL, '2025-05-06 22:00:08', '2025-05-11 01:41:40'),
(2, 1, 'category/2/RDRaPvI0kb7gGxShqWOrIYhqQbGGpguXBWwbs5gn.webp', 1, 'products_and_description', 6, 15, 1, NULL, NULL, '2025-05-06 22:52:22', '2025-05-11 02:34:43'),
(3, 1, 'category/3/v7MmT5oq1VIr4MT5JyHOJjcCkJ5KplF33PnALdVq.webp', 1, 'products_and_description', 7, 8, 2, NULL, NULL, '2025-05-06 23:11:44', '2025-05-11 02:34:43'),
(4, 2, 'category/4/mKezwvdxeO8KvctR6Cc36mtPcRVRGyWsCa1Kt8Wz.webp', 1, 'products_and_description', 9, 10, 2, NULL, NULL, '2025-05-06 23:12:47', '2025-05-11 02:34:43'),
(5, 3, 'category/5/yCgE8GmKoHKxQWWKzXNWI4F8Y7abuGOmSqKkVh8X.webp', 1, 'products_and_description', 11, 12, 2, NULL, NULL, '2025-05-06 23:14:48', '2025-05-11 02:34:43'),
(6, 4, 'category/6/iT3QpW1dLGzhExnz1qYNtlFff2dUNiiBdvNJPZeN.webp', 1, 'products_and_description', 13, 14, 2, NULL, NULL, '2025-05-06 23:15:47', '2025-05-11 02:34:43'),
(7, 2, 'category/7/T8soEfJ69VLzEae4WFhOiHcECd9LgtozQGB5O7Wn.webp', 1, 'products_and_description', 16, 25, 1, NULL, NULL, '2025-05-06 23:19:47', '2025-05-11 02:21:32'),
(8, 1, 'category/8/cVV8Ocx8NJl9f482gaeqfzc9RAEDPGrlGYLwrR4t.webp', 1, 'products_and_description', 17, 18, 7, NULL, NULL, '2025-05-06 23:20:56', '2025-05-11 02:24:01'),
(9, 2, 'category/9/4QrPkmEpySFTaFo63bgYgVItJ11uqjFzYmFLbQu4.webp', 1, 'products_and_description', 19, 20, 7, NULL, NULL, '2025-05-06 23:21:38', '2025-05-11 02:23:22'),
(10, 3, NULL, 0, 'products_and_description', 23, 24, 7, NULL, NULL, '2025-05-06 23:22:25', '2025-05-11 02:47:14'),
(11, 4, 'category/11/ngonkAulNCnmTkIgGLQXod9FI8LTlbq2eNzGE58I.webp', 1, 'products_and_description', 21, 22, 7, NULL, NULL, '2025-05-06 23:24:34', '2025-05-11 02:23:40'),
(12, 3, 'category/12/CpdxlkWnaJBevgeZVzM3FZwcSPYiMWUMFo6rkovi.webp', 1, 'products_and_description', 26, 31, 1, NULL, NULL, '2025-05-06 23:26:05', '2025-05-11 02:22:57'),
(13, 1, NULL, 1, 'products_and_description', 27, 28, 12, NULL, NULL, '2025-05-07 00:01:27', '2025-05-11 02:46:51'),
(14, 2, NULL, 1, 'products_and_description', 29, 30, 12, NULL, NULL, '2025-05-07 00:05:15', '2025-05-11 02:46:51'),
(15, 4, NULL, 1, 'products_and_description', 32, 37, 1, NULL, NULL, '2025-05-07 00:07:17', '2025-05-11 01:41:40'),
(16, 1, NULL, 1, 'products_and_description', 33, 34, 15, NULL, NULL, '2025-05-07 00:11:01', '2025-05-11 02:46:37'),
(17, 2, NULL, 1, 'products_and_description', 35, 36, 15, NULL, NULL, '2025-05-07 00:14:02', '2025-05-11 02:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `category_filterable_attributes`
--

CREATE TABLE `category_filterable_attributes` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_filterable_attributes`
--

INSERT INTO `category_filterable_attributes` (`category_id`, `attribute_id`) VALUES
(3, 11),
(3, 25),
(3, 30),
(3, 32),
(4, 25),
(4, 30),
(4, 32),
(5, 25),
(5, 30),
(5, 32),
(6, 11),
(6, 25),
(6, 30),
(6, 32),
(7, 25),
(7, 30),
(7, 32),
(8, 11),
(8, 25),
(8, 32),
(9, 11),
(9, 25),
(9, 30),
(9, 32),
(10, 25),
(10, 30),
(10, 32),
(11, 25),
(11, 30),
(11, 32),
(12, 25),
(12, 32),
(13, 25),
(13, 32),
(14, 25),
(14, 30),
(14, 32),
(15, 11),
(16, 11),
(16, 25),
(16, 32),
(17, 25),
(17, 32),
(5, 11),
(1, 30),
(2, 25),
(2, 30),
(17, 11),
(15, 25),
(11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `url_path` varchar(2048) NOT NULL,
  `description` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `locale_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `slug`, `url_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `locale_id`, `locale`) VALUES
(1, 1, 'Kök', 'root', '', '<p>K&ouml;k Kategori A&ccedil;ıklaması</p>', '', '', '', NULL, 'tr'),
(2, 2, 'Medikal Cihazlar', 'medikal-cihazlar', '', '<p data-start=\"195\" data-end=\"275\"><strong>Tanı ve hasta takibi i&ccedil;in kullanılan profesyonel tıbbi cihazlar.</strong></p>\r\n<p data-start=\"277\" data-end=\"473\">&nbsp;</p>', 'Medikal Cihazlar – KouMedikal', 'EKG, hasta monitörü, ultrason gibi medikal cihazlar.', 'tıbbi cihaz, medikal cihaz, EKG, monitör, ultrason', 1, 'tr'),
(3, 3, 'EKG Cihazları', 'ekg-cihazları', '', '<p><strong>3-12 kanallı EKG &ccedil;ekim cihazları i&ccedil;erir</strong></p>', 'EKG Cihazları – KouMedikal', 'Tanı amaçlı profesyonel elektrokardiyografi cihazları', 'EKG, kalp ritmi, ekg cihazı, 12 kanal', 1, 'tr'),
(4, 4, 'Ameliyathane Ürünleri', 'ameliyathane-urunleri', '', '<table>\r\n<tbody>\r\n<tr data-start=\"619\" data-end=\"711\">\r\n<td data-start=\"642\" data-end=\"711\" data-col-size=\"md\"><strong>Masa, ışık, anestezi cihazı, elektrokoter gibi ekipmanlar i&ccedil;erir.</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<tbody>\r\n<tr data-start=\"712\" data-end=\"792\">\r\n<td data-start=\"712\" data-end=\"735\" data-col-size=\"sm\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Ameliyathane Ürünleri – KouMedikal', 'Ameliyat ortamlarında kullanılan tıbbi cihaz ve donanımlar', 'ameliyat masası, ameliyathane lambası, anestezi cihazı, elektrokoter', 1, 'tr'),
(5, 5, 'Defibrilatör Cihazları', 'defibrilator-cihazlar', '', '<p>Manuel Internal Defibrilat&ouml;r,Manuel Eksternal Defibrilat&ouml;r,Otomatik Eksternal Kardiyak Defibrilat&ouml;rd&uuml;r (AICD) ve&nbsp;Giyilebilir Kardiyak Defibrilat&ouml;r</p>', 'Defibrilatör Cihazları', 'Defibrilatör Cihazları', 'Defibrilatör Cihazları', 1, 'tr'),
(6, 6, 'Nebulizatörler', 'nebulizatorler', '', '<div class=\"_tableContainer_16hzy_1\">\r\n<div class=\"_tableWrapper_16hzy_14 group flex w-fit flex-col-reverse\" tabindex=\"-1\">\r\n<table class=\"w-fit min-w-(--thread-content-width)\" data-start=\"300\" data-end=\"766\">\r\n<tbody data-start=\"417\" data-end=\"766\">\r\n<tr data-start=\"702\" data-end=\"766\">\r\n<td data-start=\"726\" data-end=\"766\" data-col-size=\"md\"><strong>Solunum yolu ila&ccedil; uygulama cihazları</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"sticky end-(--thread-content-margin) h-0 self-end select-none\">\r\n<div class=\"absolute end-0 flex items-end\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>', 'Nebulizatörler', 'Nebulizatörler', 'Nebulizatörler', 1, 'tr'),
(7, 7, 'Aksesuar & Yedek Parça', 'aksesuar-yedek-parca', '', '<p data-start=\"221\" data-end=\"348\"><strong>Hasta monit&ouml;r&uuml;, EKG ve anestezi cihazları gibi sistemler i&ccedil;in tamamlayıcı aksesuarlar ve teknik yedek par&ccedil;alar.</strong></p>', 'Aksesuar & Yedek Parça – KouMedikal', 'Medikal cihazlar için problar, kablolar, bataryalar ve sensörler.', 'medikal aksesuar, yedek parça, EKG kablosu, batarya, sensör', 1, 'tr'),
(8, 8, 'Bataryalar', 'bataryalar', '', '<p data-start=\"229\" data-end=\"329\"><strong>Defibrilat&ouml;r, monit&ouml;r ve anestezi cihazları i&ccedil;in uzun &ouml;m&uuml;rl&uuml;, orijinal veya uyumlu yedek bataryalar.</strong></p>', 'Bataryalar – KouMedikal', 'Medikal cihazlar için yedek batarya ve şarj edilebilir güç çözümleri.', 'medikal batarya, defibrilatör bataryası, cihaz pili, yedek güç', 1, 'tr'),
(9, 9, 'EKG Kablosu & Elektrotlar', 'ekg-kablosu-elektrotlar', '', '<p><strong>3, 5 ve 12 u&ccedil;lu EKG kabloları ile tek kullanımlık veya &ccedil;ok kullanımlık elektrot &ccedil;eşitleri</strong></p>', 'EKG Kablosu ve Elektrotlar – KouMedikal', 'EKG cihazları için yüksek iletimli kablo ve elektrot sistemleri.', 'EKG kablosu, EKG elektrotu, hasta kablosu, kalp monitörü bağlantısı', 1, 'tr'),
(10, 10, 'Defibrilatör Cihazları', 'defibrilator-cihazları', '', '<p data-start=\"1486\" data-end=\"1600\">Karın i&ccedil;i, damar, kas-iskelet ve jinekolojik g&ouml;r&uuml;nt&uuml;leme i&ccedil;in &ccedil;eşitli tipte ultrason başlıkları.</p>', 'Ultrason Probları – KouMedikal', 'Konveks, lineer ve endokavit tip ultrason transdüserleri.', 'ultrason probu, konveks transdüser, lineer başlık, USG prob', 1, 'tr'),
(11, 11, 'Dığer', 'diger-', '', '<p>Diğer aksseuarlar va Yedek par&ccedil;alar</p>', 'Diğer-Koumed', 'Diğer tıbbi aksesuarlar ve yedek parçalar', 'diğer', 1, 'tr'),
(12, 12, 'Protez & Ortez Ürünleri', 'protez-ortez-urunleri', '', '<p><strong>Transtibial amp&uuml;tasyon sonrası mobiliteyi desteklemek i&ccedil;in kullanılan karbon fiber yapılı protez sistemleridir.</strong></p>', 'Diz Altı Protezler – KouMedikal', 'Günlük kullanıma uygun,Biyouyumku, hafif ve dayanıklı  protez modelleri.', 'diz altı protez, transtibial protez, ayak protezi, karbon protez', 1, 'tr'),
(13, 13, 'Kilitmeyen plakalar', 'kilitmeyen-plakalar', '', '<p data-start=\"1893\" data-end=\"2024\">Total kal&ccedil;a artroplastisi i&ccedil;in kullanılan, biyouyumlu malzemelerden &uuml;retilmiş kal&ccedil;a protez implant sistemleridir.</p>', 'Kilitmeyen plakalar– KouMedikal', 'Ortopedik cerrahide kullanılan, uzun ömürlü total kalça protezleri.', 'kalça protezi, total kalça, ortopedik implant, kalça replasmanı', 1, 'tr'),
(14, 14, 'Tıbbi Vida Setleri', 'tıbbi-vida-setleri', '', '<p>Ortopedik ameliyatlarda kullanılan y&uuml;ksek kalite tıbbi vida setleri. Protez ve ortez uygulamaları i&ccedil;in ideal sabitleme &ccedil;&ouml;z&uuml;mleri. G&uuml;venilir, steril ve CE belgeli &uuml;r&uuml;nler.</p>', 'Tıbbi Vida Setleri | KouMed', 'Ortopedik ameliyatlarda kullanılan yüksek kalite tıbbi vida setleri. Protez ve ortez uygulamaları için ideal sabitleme çözümleri. Güvenilir, steril ve CE belgeli ürünler.', 'tıbbi vida, ortopedik vida seti, cerrahi sabitleme vidaları, protez vidası, ortez vidaları, vida implant seti, travma vidası', 1, 'tr'),
(15, 15, 'Tıbbi Sarf Malzemeleri', 'tıbbi-sarf-malzemeleri', '', '<p data-start=\"363\" data-end=\"507\"><strong>Hastane, klinik ve &ouml;zel muayenehanelerde g&uuml;nl&uuml;k olarak t&uuml;ketilen, steril ve tek kullanımlık profesyonel tıbbi &uuml;r&uuml;nleri kapsar.</strong></p>', 'Tıbbi Sarf Malzemeleri – KouMedikal', 'Klinik ve hastane ortamları için EKG elektrodu, enjektör, maske ve diğer tıbbi sarf ürünleri.', 'sarf malzeme, medikal malzeme, EKG pedi, steril eldiven, klinik ürün', 1, 'tr'),
(16, 16, 'Enjektör & Kateter', 'enjektor-kateter', '', '<p data-start=\"1191\" data-end=\"1282\"><strong>İğnesiz enjekt&ouml;r, IV kateter, butterfly set ve damar i&ccedil;i erişim &uuml;r&uuml;nleri.</strong></p>', 'Enjektör ve Kateter – KouMedikal', 'Klinik kullanım için steril ve güvenli enjektör, damar yolu açma ürünleri.', 'enjektör, kateter, IV set, damar yolu', 1, 'tr'),
(17, 17, 'Tek Kullanımlık Medikal Ürünler', 'tek-kullanımlık-medikal-urunler', '', '<p data-start=\"2225\" data-end=\"2340\">Tek kullanımlık atık poşetleri, duvar tipi eldiven kutu aparatları ve sarf atık y&ouml;netim &uuml;r&uuml;nleri.</p>', 'Tek Kullanımlık Medikal Ürünler I KouMed', 'Tek Kullanımlık Medikal Ürünler', 'enjektör, kateter, IV set, damar yolu', 1, 'tr');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `home_seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`home_seo`)),
  `is_maintenance_on` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_ips` text DEFAULT NULL,
  `root_category_id` int(10) UNSIGNED DEFAULT NULL,
  `default_locale_id` int(10) UNSIGNED NOT NULL,
  `base_currency_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `code`, `timezone`, `theme`, `hostname`, `logo`, `favicon`, `home_seo`, `is_maintenance_on`, `allowed_ips`, `root_category_id`, `default_locale_id`, `base_currency_id`, `created_at`, `updated_at`) VALUES
(1, 'default', NULL, 'default', 'http://127.0.0.1:8000', 'channel/1/yP3meA3Lb9LsRWSXBDXFIh9H3D84j8M1nCPUaGDm.png', 'channel/1/xAW7wuS7ZAC4Hcux84Xn3UnpLJRQrWgsegtbrV1J.png', NULL, 0, '', 1, 1, 1, '2025-05-06 22:00:09', '2025-05-10 21:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `channel_currencies`
--

CREATE TABLE `channel_currencies` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_currencies`
--

INSERT INTO `channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `channel_inventory_sources`
--

CREATE TABLE `channel_inventory_sources` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `inventory_source_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_inventory_sources`
--

INSERT INTO `channel_inventory_sources` (`channel_id`, `inventory_source_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `channel_locales`
--

CREATE TABLE `channel_locales` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_locales`
--

INSERT INTO `channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_translations`
--

CREATE TABLE `channel_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `maintenance_mode_text` text DEFAULT NULL,
  `home_seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`home_seo`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel_translations`
--

INSERT INTO `channel_translations` (`id`, `channel_id`, `locale`, `name`, `description`, `maintenance_mode_text`, `home_seo`, `created_at`, `updated_at`) VALUES
(1, 1, 'tr', 'Varsayılan', NULL, '', '{\"meta_title\":\"KouMed | Medical Equipments Supplier\",\"meta_description\":\"KouMed, hastane ve kliniklerin ihtiya\\u00e7 duydu\\u011fu y\\u00fcksek kaliteli medikal cihazlar, ortopedi \\u00fcr\\u00fcnleri ve t\\u0131bbi sarf malzemeleri alan\\u0131nda g\\u00fcvenilir bir tedarik\\u00e7idir.\",\"meta_keywords\":\"medikal cihazlar, hastane ekipmanlar\\u0131, t\\u0131bbi \\u00fcr\\u00fcnler, KouMed, ortopedi \\u00fcr\\u00fcnleri, EKG cihazlar\\u0131, steril \\u00fcr\\u00fcnler, ameliyathane ekipmanlar\\u0131\"}', NULL, '2025-05-07 00:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `layout`, `created_at`, `updated_at`) VALUES
(1, NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(2, NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(3, NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(4, NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(6, NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(8, NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(9, NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(10, NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_channels`
--

CREATE TABLE `cms_page_channels` (
  `cms_page_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_page_channels`
--

INSERT INTO `cms_page_channels` (`cms_page_id`, `channel_id`) VALUES
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_translations`
--

CREATE TABLE `cms_page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `url_key` varchar(255) NOT NULL,
  `html_content` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `cms_page_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_page_translations`
--

INSERT INTO `cms_page_translations` (`id`, `page_title`, `url_key`, `html_content`, `meta_title`, `meta_description`, `meta_keywords`, `locale`, `cms_page_id`) VALUES
(1, 'Hakkımızda', 'about-us', '<div class=\"static-container\"><div class=\"mb-5\">Hakkımızda Sayfası İçeriği</div></div>', 'about us', '', 'aboutus', 'tr', 1),
(2, 'İade Politikası', 'return-policy', '<div class=\"static-container\"><div class=\"mb-5\">İade Politikası Sayfa İçeriği</div></div>', 'return policy', '', 'return, policy', 'tr', 2),
(3, 'İade Politikası', 'refund-policy', '<div class=\"static-container\"><div class=\"mb-5\">İade Politikası Sayfa İçeriği</div></div>', 'Refund policy', '', 'refund, policy', 'tr', 3),
(4, 'Şartlar ve Koşullar', 'terms-conditions', '<div class=\"static-container\"><div class=\"mb-5\">Şartlar ve Koşullar Sayfa İçeriği</div></div>', 'Terms & Conditions', '', 'term, conditions', 'tr', 4),
(6, 'Müşteri Hizmetleri', 'customer-service', '<div class=\"static-container\"><div class=\"mb-5\">Müşteri Hizmetleri Sayfa İçeriği</div></div>', 'Customer Service', '', 'customer, service', 'tr', 6),
(8, 'Ödeme Politikası', 'payment-policy', '<div class=\"static-container\"><div class=\"mb-5\">Ödeme Politikası Sayfa İçeriği</div></div>', 'Payment Policy', '', 'payment, policy', 'tr', 8),
(9, 'Kargo Politikası', 'shipping-policy', '<p><br><br>**Kargo Politikası Şablonu**<br><br>**[Şirket Adı] Kargo Politikası**<br><br>Bu kargo politikası, [Şirket Adı] web sitesi ([Web Sitesi Adresi]) &uuml;zerinden yapılan t&uuml;m siparişler i&ccedil;in ge&ccedil;erlidir. Bu politikayı dikkatlice okumanızı ve anlamanızı rica ederiz. Sipariş vererek, bu politikayı kabul etmiş sayılırsınız.<br><br>**1. Kargo &Uuml;cretleri:**<br><br>* **Standart Kargo:** [&Uuml;cret] (Tahmini teslimat s&uuml;resi: [G&uuml;n] iş g&uuml;n&uuml;)<br>* **Hızlı Kargo:** [&Uuml;cret] (Tahmini teslimat s&uuml;resi: [G&uuml;n] iş g&uuml;n&uuml;)<br>* **&Uuml;cretsiz Kargo:** [&Uuml;cret] ve &uuml;zeri siparişlerde ge&ccedil;erlidir.<br><br>**Notlar:**<br><br>* Kargo &uuml;cretleri, siparişin ağırlığı, boyutu ve varış noktasına g&ouml;re değişebilir.<br>* Kargo &uuml;cretleri, &ouml;deme sırasında a&ccedil;ık&ccedil;a g&ouml;sterilecektir.<br>* Promosyon d&ouml;nemlerinde &uuml;cretsiz kargo kampanyaları d&uuml;zenlenebilir.<br><br>**2. Kargo B&ouml;lgeleri:**<br><br>* Şu anda [&Uuml;lkeler/B&ouml;lgeler]\'e g&ouml;nderim yapmaktayız.<br>* [Belirli b&ouml;lgelere g&ouml;nderim yapılmıyorsa belirtin (&ouml;rneğin, APO/FPO adresleri)].<br>* Uluslararası g&ouml;nderimler i&ccedil;in ek g&uuml;mr&uuml;k vergileri ve har&ccedil;lar ge&ccedil;erli olabilir. Bu vergiler ve har&ccedil;lar alıcıya aittir.<br><br>**3. Kargo S&uuml;releri:**<br><br>* Siparişler genellikle [G&uuml;n] iş g&uuml;n&uuml; i&ccedil;inde işlenir ve kargoya verilir.<br>* Teslimat s&uuml;releri, kargo şirketine, varış noktasına ve diğer fakt&ouml;rlere (&ouml;rneğin, hava durumu, tatiller) bağlı olarak değişebilir.<br>* Tahmini teslimat s&uuml;releri sadece tahminidir ve garanti edilmez.<br><br>**4. Kargo Takibi:**<br><br>* Siparişiniz kargoya verildikten sonra, size bir takip numarası g&ouml;nderilecektir.<br>* Takip numaranızı kullanarak, kargo şirketinin web sitesi &uuml;zerinden siparişinizin durumunu takip edebilirsiniz.<br><br>**5. Kayıp veya Hasarlı Kargolar:**<br><br>* Kargonuzun kaybolması veya hasar g&ouml;rmesi durumunda, l&uuml;tfen derhal ([G&uuml;n] i&ccedil;inde) bizimle iletişime ge&ccedil;in.<br>* Kayıp veya hasarlı kargolar i&ccedil;in gerekli araştırmaları yapacağız ve size yardımcı olacağız.<br>* Hasarlı &uuml;r&uuml;nlerin fotoğrafını &ccedil;ekerek bize g&ouml;ndermenizi rica edebiliriz.<br><br>**6. İade Politikası:**<br><br>* Kargo politikamızla ilgili olan kısım, iade ve değişimlerin nasıl ele alınacağını belirtir. Detaylı bilgi i&ccedil;in l&uuml;tfen [İade Politikası] sayfamızı ziyaret edin.<br><br>**7. Adres Bilgileri:**<br><br>* Doğru ve eksiksiz bir teslimat adresi sağlamak sizin sorumluluğunuzdadır.<br>* Yanlış veya eksik adres bilgileri nedeniyle oluşan gecikmelerden veya kayıplardan sorumlu değiliz.<br><br>**8. Kargo Şirketleri:**<br><br>* Siparişlerinizi g&ouml;ndermek i&ccedil;in [Kargo Şirketleri] ile &ccedil;alışmaktayız.<br>* Kargo şirketi se&ccedil;imi, varış noktasına ve siparişin &ouml;zelliklerine g&ouml;re değişebilir.<br><br>**9. M&uuml;şteri Hizmetleri:**<br><br>* Kargo politikamızla ilgili herhangi bir sorunuz varsa, l&uuml;tfen [E-posta Adresi] veya [Telefon Numarası] &uuml;zerinden bizimle iletişime ge&ccedil;mekten &ccedil;ekinmeyin.<br><br>**10. Politika Değişiklikleri:**<br><br>* Bu kargo politikası, &ouml;nceden haber vermeksizin herhangi bir zamanda değiştirilebilir.<br>* Politika değişiklikleri web sitemizde yayınlanacaktır.<br><br><br></p>', 'Shipping Policy', '', 'shipping, policy', 'tr', 9),
(10, 'Gizlilik Politikası', 'privacy-policy', '<p><br>**GİZLİLİK POLİTİKASI**<br><br>**Son G&uuml;ncelleme:** [G&uuml;ncelleme Tarihi]<br><br>Koumed olarak, kişisel bilgilerinizin gizliliğini korumaya kararlıyız. Bu Gizlilik Politikası, web sitemizi (www.koumed.com) ziyaret ettiğinizde veya hizmetlerimizi kullandığınızda kişisel bilgilerinizin nasıl toplandığını, kullanıldığını, paylaşıldığını ve korunduğunu a&ccedil;ıklamaktadır.<br><br>**1. Topladığımız Bilgiler**<br><br>Aşağıdaki t&uuml;rde bilgileri toplayabiliriz:<br><br>* **Kişisel Bilgiler:** Adınız, soyadınız, e-posta adresiniz, telefon numaranız, posta adresiniz, fatura bilgileriniz ve demografik bilgileriniz gibi sizinle ilgili tanımlanabilir bilgiler.<br>* **Hesap Bilgileri:** Kullanıcı adı ve şifreniz.<br>* **İşlem Bilgileri:** Satın aldığınız &uuml;r&uuml;nler, sipariş ge&ccedil;mişiniz, &ouml;deme bilgileriniz (kredi kartı bilgileri doğrudan &ouml;deme işlemcilerimiz tarafından işlenir ve tarafımızca saklanmaz), teslimat adresiniz ve diğer işlemle ilgili detaylar.<br>* **Kullanım Bilgileri:** Web sitemizi nasıl kullandığınızla ilgili bilgiler; ziyaret ettiğiniz sayfalar, tıkladığınız bağlantılar, arama sorgularınız, web sitesinde ge&ccedil;irdiğiniz s&uuml;re ve diğer kullanım istatistikleri.<br>* **Cihaz Bilgileri:** Bilgisayarınız, tabletiniz veya cep telefonunuz gibi web sitemize erişmek i&ccedil;in kullandığınız cihazla ilgili bilgiler; IP adresiniz, cihaz t&uuml;r&uuml;n&uuml;z, işletim sisteminiz, tarayıcı t&uuml;r&uuml;n&uuml;z ve benzersiz cihaz tanımlayıcıları.<br>* **&Ccedil;erezler ve Benzer Teknolojiler:** &Ccedil;erezler, web işaret&ccedil;ileri ve benzer teknolojiler aracılığıyla bilgi toplarız. &Ccedil;erezler, web sitemizin sizi tanımasına ve tercihlerinizi hatırlamasına yardımcı olan k&uuml;&ccedil;&uuml;k metin dosyalarıdır. &Ccedil;erezleri nasıl kullandığımız ve tercihlerinizi nasıl y&ouml;neteceğiniz hakkında daha fazla bilgi i&ccedil;in l&uuml;tfen &Ccedil;erez Politikamıza bakın.<br><br>**2. Bilgilerinizi Nasıl Kullanıyoruz?**<br><br>Topladığımız bilgileri aşağıdaki ama&ccedil;larla kullanırız:<br><br>* **Hizmet Sunumu:** Siparişlerinizi işleme koymak, &uuml;r&uuml;nleri teslim etmek, m&uuml;şteri desteği sağlamak ve hesabınızı y&ouml;netmek.<br>* **İletişim:** Size sipariş onayları, kargo g&uuml;ncellemeleri, promosyon e-postaları, anketler ve diğer &ouml;nemli bilgiler g&ouml;ndermek.<br>* **Web Sitesi Geliştirme:** Web sitemizin işlevselliğini ve kullanıcı deneyimini iyileştirmek, eğilimleri analiz etmek ve yeni &ouml;zellikler geliştirmek.<br>* **Kişiselleştirme:** Web sitemizi size daha alakalı hale getirmek; ilgi alanlarınıza ve tercihlerinize g&ouml;re i&ccedil;erik ve &uuml;r&uuml;nler sunmak.<br>* **Pazarlama:** Size &uuml;r&uuml;nlerimiz, hizmetlerimiz ve &ouml;zel tekliflerimiz hakkında bilgi g&ouml;ndermek. İstediğiniz zaman bu t&uuml;r iletişimlerden &ccedil;ıkabilirsiniz.<br>* **G&uuml;venlik:** Web sitemizi ve kullanıcılarımızı dolandırıcılığa, k&ouml;t&uuml;ye kullanıma ve diğer yasa dışı faaliyetlere karşı korumak.<br>* **Yasal Y&uuml;k&uuml;ml&uuml;l&uuml;kler:** Y&uuml;r&uuml;rl&uuml;kteki yasalara, d&uuml;zenlemelere ve mahkeme kararlarına uymak.<br><br>**3. Bilgilerinizi Nasıl Paylaşıyoruz?**<br><br>Kişisel bilgilerinizi aşağıdaki durumlarda paylaşabiliriz:<br><br>* **Hizmet Sağlayıcılar:** Siparişlerinizi işleme koymamıza, web sitemizi işletmemize, pazarlama faaliyetlerimizi y&uuml;r&uuml;tmemize ve m&uuml;şteri desteği sağlamamıza yardımcı olan &uuml;&ccedil;&uuml;nc&uuml; taraf hizmet sağlayıcılarla. Bu hizmet sağlayıcıların bilgilerinizi yalnızca bizim adımıza ve talimatlarımıza uygun olarak kullanmaları gerekmektedir.<br>* **&Ouml;deme İşlemcileri:** Kredi kartı bilgileriniz gibi &ouml;deme bilgilerini g&uuml;venli bir şekilde işlemek i&ccedil;in &ouml;deme işlemcileriyle.<br>* **Yasal Gereklilikler:** Y&uuml;r&uuml;rl&uuml;kteki yasalara, d&uuml;zenlemelere, yasal s&uuml;re&ccedil;lere veya devlet taleplerine uymak i&ccedil;in.<br>* **İş Devri:** Birleşme, devralma veya varlık satışı gibi bir işlemde, kişisel bilgileriniz devredilen varlıklar arasında olabilir.<br>* **Onayınızla:** Kişisel bilgilerinizi paylaşmamız i&ccedil;in onayınızı aldığımızda.<br><br>**4. Veri G&uuml;venliği**<br><br>Kişisel bilgilerinizin g&uuml;venliğini korumak i&ccedil;in makul teknik ve organizasyonel &ouml;nlemler alıyoruz. Bu &ouml;nlemler arasında şunlar yer alabilir:<br><br>* **Şifreleme:** Hassas bilgileri iletirken şifreleme kullanmak.<br>* **G&uuml;venli Sunucular:** G&uuml;venli sunucularda bilgi depolamak.<br>* **Erişim Kontrolleri:** Kişisel bilgilere erişimi yetkili personel ile sınırlamak.<br>* **G&uuml;venlik Taramaları:** Web sitemizi d&uuml;zenli olarak g&uuml;venlik a&ccedil;ıklarına karşı taramak.<br><br>Ancak, internet veya elektronik depolama &uuml;zerinden hi&ccedil;bir veri iletiminin tamamen g&uuml;venli olmadığını l&uuml;tfen unutmayın. Kişisel bilgilerinizin mutlak g&uuml;venliğini garanti edemeyiz.<br><br>**5. Veri Saklama**<br><br>Kişisel bilgilerinizi, bu Gizlilik Politikasında belirtilen ama&ccedil;ları yerine getirmek i&ccedil;in gerekli olduğu s&uuml;rece saklarız, ancak yasal y&uuml;k&uuml;ml&uuml;l&uuml;klerimizi yerine getirmek, anlaşmazlıkları &ccedil;&ouml;zmek ve anlaşmalarımızı uygulamak i&ccedil;in daha uzun bir s&uuml;re saklayabiliriz.<br><br>**6. Haklarınız**<br><br>Y&uuml;r&uuml;rl&uuml;kteki yasalara tabi olarak, kişisel bilgilerinizle ilgili aşağıdaki haklara sahip olabilirsiniz:<br><br>* **Erişim Hakkı:** Hakkınızda hangi kişisel bilgileri sakladığımızı &ouml;ğrenme ve bu bilgilere erişim talep etme hakkı.<br>* **D&uuml;zeltme Hakkı:** Yanlış veya eksik kişisel bilgilerinizi d&uuml;zeltme hakkı.<br>* **Silme Hakkı:** Belirli koşullar altında kişisel bilgilerinizin silinmesini talep etme hakkı.<br>* **İşlemeyi Kısıtlama Hakkı:** Belirli koşullar altında kişisel bilgilerinizin işlenmesini kısıtlama hakkı.<br>* **Veri Taşınabilirliği Hakkı:** Kişisel bilgilerinizi yapılandırılmış, yaygın olarak kullanılan ve makine tarafından okunabilir bir formatta alma ve başka bir veri sorumlusuna iletme hakkı.<br>* **İtiraz Hakkı:** Kişisel bilgilerinizin işlenmesine itiraz etme hakkı.<br>* **Onayı Geri &Ccedil;ekme Hakkı:** Kişisel bilgilerinizin işlenmesine &ouml;nceden onay verdiyseniz, bu onayı istediğiniz zaman geri &ccedil;ekme hakkı.<br><br>Bu haklarınızı kullanmak i&ccedil;in l&uuml;tfen aşağıdaki İletişim b&ouml;l&uuml;m&uuml;nde belirtilen iletişim bilgileri aracılığıyla bizimle iletişime ge&ccedil;in.<br><br>**7. &Ccedil;erezler ve Benzer Teknolojiler**<br><br>Web sitemizde &ccedil;erezleri ve benzer teknolojileri kullanıyoruz. &Ccedil;erezler hakkında daha fazla bilgi i&ccedil;in l&uuml;tfen [&Ccedil;erez Politikası] sayfamızı ziyaret edin.<br><br>**8. &Uuml;&ccedil;&uuml;nc&uuml; Taraf Web Siteleri**<br><br>Web sitemiz, &uuml;&ccedil;&uuml;nc&uuml; taraf web sitelerine bağlantılar i&ccedil;erebilir. Bu web sitelerinin gizlilik uygulamalarından sorumlu değiliz. &Uuml;&ccedil;&uuml;nc&uuml; taraf web sitelerini ziyaret ettiğinizde, gizlilik politikalarını okumanızı &ouml;neririz.<br><br>**9. &Ccedil;ocukların Gizliliği**<br><br>Web sitemiz, 18 yaşın altındaki &ccedil;ocuklara y&ouml;nelik değildir. Bilerek &ccedil;ocuklardan kişisel bilgi toplamıyoruz. Bir &ccedil;ocuğun bize kişisel bilgi sağladığını d&uuml;ş&uuml;n&uuml;yorsanız, l&uuml;tfen bizimle iletişime ge&ccedil;in, b&ouml;ylece bilgileri silmek i&ccedil;in gerekli adımları atabiliriz.<br><br>**10. Gizlilik Politikası Değişiklikleri**<br><br>Bu Gizlilik Politikasını zaman zaman g&uuml;ncelleyebiliriz. Bu sayfada yeni Gizlilik Politikasını yayınlayarak değişiklikleri size bildireceğiz. Herhangi bir değişiklik i&ccedil;in bu Gizlilik Politikasını periyodik olarak g&ouml;zden ge&ccedil;irmenizi &ouml;neririz. Değişiklikler bu sayfada yayınlandığında ge&ccedil;erli olacaktır.<br><br>**11. İletişim**<br><br>Bu Gizlilik Politikası hakkında herhangi bir sorunuz veya endişeniz varsa, l&uuml;tfen aşağıdaki iletişim bilgileri aracılığıyla bizimle iletişime ge&ccedil;in:<br><br>[Şirket Adı]<br>[Şirket Adresi]<br>[E-posta Adresi]<br>[Telefon Numarası]<br><br>Bu Gizlilik Politikası, [G&uuml;ncelleme Tarihi] tarihinde g&uuml;ncellenmiştir.<br><br>**&Ouml;NEMLİ NOT:** Bu sadece bir &ouml;rnektir. Kendi şirketinizin &ouml;zel gereksinimlerine ve yasal d&uuml;zenlemelere uygun olarak bir avukat veya hukuk danışmanı tarafından d&uuml;zenlenmesi gerekmektedir. &Ouml;zellikle aşağıdaki hususlara dikkat etmeniz &ouml;nemlidir:<br><br>* **Yerel Yasalara Uygunluk:** &Uuml;lkenizdeki ve faaliyet g&ouml;sterdiğiniz diğer b&ouml;lgelerdeki gizlilik yasalarına (&ouml;rneğin, GDPR, CCPA, KVKK) tam olarak uyduğunuzdan emin olun.<br>* **&Ccedil;erez Politikası:** Ayrıntılı bir &Ccedil;erez Politikası oluşturun ve Gizlilik Politikanızda buna bağlantı verin.<br>* **Veri G&uuml;venliği &Ouml;nlemleri:** Veri g&uuml;venliği &ouml;nlemlerinizi ayrıntılı olarak a&ccedil;ıklayın.<br>* **Hakların Kullanımı:** Kullanıcıların haklarını nasıl kullanabileceklerini a&ccedil;ık&ccedil;a belirtin.<br>* **G&uuml;ncelleme Bildirimleri:** Gizlilik Politikasındaki değişiklikleri kullanıcılara nasıl bildireceğinizi belirtin.<br>* **Dil:** Gizlilik Politikanızın anlaşılır ve a&ccedil;ık bir dilde yazıldığından emin olun.<br>* **Avukat Onayı:** Gizlilik Politikası metnini mutlaka bir avukat veya hukuk danışmanına onaylatın.</p>', 'Privacy Policy', '', 'privacy, policy', 'tr', 10);

-- --------------------------------------------------------

--
-- Table structure for table `compare_items`
--

CREATE TABLE `compare_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_config`
--

CREATE TABLE `core_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `channel_code` varchar(255) DEFAULT NULL,
  `locale_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_config`
--

INSERT INTO `core_config` (`id`, `code`, `value`, `channel_code`, `locale_code`, `created_at`, `updated_at`) VALUES
(1, 'sales.checkout.shopping_cart.allow_guest_checkout', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(2, 'emails.general.notifications.emails.general.notifications.verification', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(3, 'emails.general.notifications.emails.general.notifications.registration', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(4, 'emails.general.notifications.emails.general.notifications.customer_registration_confirmation_mail_to_admin', '0', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(5, 'emails.general.notifications.emails.general.notifications.customer_account_credentials', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(6, 'emails.general.notifications.emails.general.notifications.new_order', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(7, 'emails.general.notifications.emails.general.notifications.new_order_mail_to_admin', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(8, 'emails.general.notifications.emails.general.notifications.new_invoice', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(9, 'emails.general.notifications.emails.general.notifications.new_invoice_mail_to_admin', '0', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(10, 'emails.general.notifications.emails.general.notifications.new_refund', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(11, 'emails.general.notifications.emails.general.notifications.new_refund_mail_to_admin', '0', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(12, 'emails.general.notifications.emails.general.notifications.new_shipment', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(13, 'emails.general.notifications.emails.general.notifications.new_shipment_mail_to_admin', '0', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(14, 'emails.general.notifications.emails.general.notifications.new_inventory_source', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(15, 'emails.general.notifications.emails.general.notifications.cancel_order', '1', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(16, 'emails.general.notifications.emails.general.notifications.cancel_order_mail_to_admin', '0', NULL, NULL, '2025-05-06 22:00:09', '2025-05-06 22:00:09'),
(17, 'customer.settings.social_login.enable_facebook', '1', 'default', NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(18, 'customer.settings.social_login.enable_twitter', '1', 'default', NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(19, 'customer.settings.social_login.enable_google', '1', 'default', NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(20, 'customer.settings.social_login.enable_linkedin', '1', 'default', NULL, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(21, 'customer.settings.social_login.enable_github', '0', 'default', NULL, '2025-05-06 22:00:10', '2025-05-06 22:09:48'),
(22, 'general.content.header_offer.title', 'Hastane ve Kliniklere Özel Teklifler', NULL, NULL, '2025-05-06 22:05:42', '2025-05-06 22:05:42'),
(23, 'general.content.header_offer.redirection_title', 'Ürünleri İncele', NULL, NULL, '2025-05-06 22:05:42', '2025-05-06 22:05:42'),
(24, 'general.content.header_offer.redirection_link', 'medikal-cihazlar', NULL, NULL, '2025-05-06 22:05:42', '2025-05-06 22:05:42'),
(25, 'general.content.custom_scripts.custom_css', '', 'default', NULL, '2025-05-06 22:05:42', '2025-05-06 22:05:42'),
(26, 'general.content.custom_scripts.custom_javascript', '', 'default', NULL, '2025-05-06 22:05:42', '2025-05-06 22:05:42'),
(27, 'general.design.admin_logo.logo_image', 'configuration/vUO7tYW1YOjJpeOpRTQF91piYrzFREaxrjB4tQaL.png', NULL, NULL, '2025-05-06 22:06:16', '2025-05-06 22:06:16'),
(28, 'general.design.admin_logo.favicon', 'configuration/n81tum7GlAd2crrihrTIig6256vbPqGVuj5js6Jb.png', NULL, NULL, '2025-05-06 22:06:17', '2025-05-06 22:06:17'),
(29, 'general.sitemap.settings.enabled', '1', 'default', NULL, '2025-05-06 22:06:41', '2025-05-06 22:06:41'),
(30, 'general.sitemap.file_limits.max_url_per_file', '10000', 'default', NULL, '2025-05-06 22:06:41', '2025-05-06 22:06:41'),
(31, 'catalog.products.settings.compare_option', '0', NULL, NULL, '2025-05-06 22:08:01', '2025-05-08 18:51:47'),
(32, 'catalog.products.settings.image_search', '0', NULL, NULL, '2025-05-06 22:08:01', '2025-05-08 18:51:47'),
(33, 'catalog.products.search.engine', 'database', NULL, NULL, '2025-05-06 22:08:02', '2025-05-06 22:08:02'),
(34, 'catalog.products.search.admin_mode', 'database', NULL, NULL, '2025-05-06 22:08:02', '2025-05-06 22:08:02'),
(35, 'catalog.products.search.storefront_mode', 'database', NULL, NULL, '2025-05-06 22:08:02', '2025-05-06 22:08:02'),
(36, 'catalog.products.search.min_query_length', '0', NULL, NULL, '2025-05-06 22:08:02', '2025-05-06 22:08:02'),
(37, 'catalog.products.search.max_query_length', '1000', NULL, NULL, '2025-05-06 22:08:02', '2025-05-06 22:08:02'),
(38, 'catalog.products.product_view_page.no_of_related_products', '', NULL, NULL, '2025-05-06 22:08:02', '2025-05-06 22:08:02'),
(39, 'catalog.products.product_view_page.no_of_up_sells_products', '', NULL, NULL, '2025-05-06 22:08:02', '2025-05-06 22:08:02'),
(40, 'catalog.products.cart_view_page.no_of_cross_sells_products', '', NULL, NULL, '2025-05-06 22:08:02', '2025-05-06 22:08:02'),
(41, 'catalog.products.storefront.mode', 'grid', 'default', NULL, '2025-05-06 22:08:03', '2025-05-06 22:08:03'),
(42, 'catalog.products.storefront.products_per_page', '', 'default', NULL, '2025-05-06 22:08:03', '2025-05-06 22:08:03'),
(43, 'catalog.products.storefront.buy_now_button_display', '1', NULL, NULL, '2025-05-06 22:08:03', '2025-05-08 19:18:55'),
(44, 'catalog.products.cache_small_image.width', '300', NULL, NULL, '2025-05-06 22:08:03', '2025-05-06 22:08:03'),
(45, 'catalog.products.cache_small_image.height', '300', NULL, NULL, '2025-05-06 22:08:03', '2025-05-06 22:08:03'),
(46, 'catalog.products.cache_medium_image.width', '600', NULL, NULL, '2025-05-06 22:08:03', '2025-05-06 22:08:03'),
(47, 'catalog.products.cache_medium_image.height', '600', NULL, NULL, '2025-05-06 22:08:03', '2025-05-06 22:08:03'),
(48, 'catalog.products.cache_large_image.width', '1200', NULL, NULL, '2025-05-06 22:08:04', '2025-05-06 22:08:04'),
(49, 'catalog.products.cache_large_image.height', '1200', NULL, NULL, '2025-05-06 22:08:04', '2025-05-06 22:08:04'),
(50, 'catalog.products.review.guest_review', '1', NULL, NULL, '2025-05-06 22:08:04', '2025-05-06 22:08:04'),
(51, 'catalog.products.review.customer_review', '1', NULL, NULL, '2025-05-06 22:08:04', '2025-05-06 22:08:04'),
(52, 'catalog.products.review.censoring_reviewer_name', '1', NULL, NULL, '2025-05-06 22:08:04', '2025-05-06 22:08:04'),
(53, 'catalog.products.review.summary', 'review_counts', NULL, NULL, '2025-05-06 22:08:04', '2025-05-06 22:08:04'),
(54, 'catalog.products.attribute.image_attribute_upload_size', '2048', NULL, NULL, '2025-05-06 22:08:04', '2025-05-06 22:08:04'),
(55, 'catalog.products.attribute.file_attribute_upload_size', '5120', NULL, NULL, '2025-05-06 22:08:04', '2025-05-06 22:08:04'),
(56, 'catalog.products.social_share.enabled', '1', NULL, NULL, '2025-05-06 22:08:05', '2025-05-06 22:08:05'),
(57, 'catalog.products.social_share.facebook', '1', NULL, NULL, '2025-05-06 22:08:05', '2025-05-06 22:08:05'),
(58, 'catalog.products.social_share.twitter', '1', NULL, NULL, '2025-05-06 22:08:05', '2025-05-06 22:08:05'),
(59, 'catalog.products.social_share.pinterest', '0', NULL, NULL, '2025-05-06 22:08:05', '2025-05-06 22:08:05'),
(60, 'catalog.products.social_share.whatsapp', '1', NULL, NULL, '2025-05-06 22:08:05', '2025-05-06 22:08:05'),
(61, 'catalog.products.social_share.linkedin', '0', NULL, NULL, '2025-05-06 22:08:05', '2025-05-06 22:08:05'),
(62, 'catalog.products.social_share.email', '0', NULL, NULL, '2025-05-06 22:08:05', '2025-05-06 22:08:05'),
(63, 'catalog.products.social_share.share_message', '', NULL, NULL, '2025-05-06 22:08:06', '2025-05-06 22:08:06'),
(64, 'catalog.rich_snippets.products.enable', '0', NULL, NULL, '2025-05-06 22:08:50', '2025-05-06 22:08:50'),
(65, 'catalog.rich_snippets.products.show_sku', '1', NULL, NULL, '2025-05-06 22:08:50', '2025-05-06 22:08:50'),
(66, 'catalog.rich_snippets.products.show_weight', '0', NULL, NULL, '2025-05-06 22:08:50', '2025-05-06 22:08:50'),
(67, 'catalog.rich_snippets.products.show_categories', '1', NULL, NULL, '2025-05-06 22:08:51', '2025-05-06 22:08:51'),
(68, 'catalog.rich_snippets.products.show_images', '1', NULL, NULL, '2025-05-06 22:08:51', '2025-05-06 22:08:51'),
(69, 'catalog.rich_snippets.products.show_reviews', '0', NULL, NULL, '2025-05-06 22:08:51', '2025-05-06 22:08:51'),
(70, 'catalog.rich_snippets.products.show_ratings', '0', NULL, NULL, '2025-05-06 22:08:51', '2025-05-06 22:08:51'),
(71, 'catalog.rich_snippets.products.show_offers', '0', NULL, NULL, '2025-05-06 22:08:51', '2025-05-06 22:08:51'),
(72, 'catalog.rich_snippets.categories.enable', '1', NULL, NULL, '2025-05-06 22:08:51', '2025-05-06 22:08:51'),
(73, 'catalog.rich_snippets.categories.show_search_input_field', '1', NULL, NULL, '2025-05-06 22:08:51', '2025-05-06 22:08:51'),
(74, 'customer.address.requirements.country', '1', 'default', NULL, '2025-05-06 22:09:18', '2025-05-06 22:09:18'),
(75, 'customer.address.requirements.state', '1', 'default', NULL, '2025-05-06 22:09:18', '2025-05-06 22:09:18'),
(76, 'customer.address.requirements.postcode', '1', 'default', NULL, '2025-05-06 22:09:19', '2025-05-06 22:09:19'),
(77, 'customer.address.information.street_lines', '2', 'default', NULL, '2025-05-06 22:09:19', '2025-05-06 22:09:19'),
(78, 'customer.settings.wishlist.wishlist_option', '0', NULL, NULL, '2025-05-06 22:09:46', '2025-05-08 19:05:42'),
(79, 'customer.settings.login_options.redirected_to_page', 'home', NULL, NULL, '2025-05-06 22:09:46', '2025-05-06 22:09:46'),
(80, 'customer.settings.create_new_account_options.default_group', 'general', NULL, NULL, '2025-05-06 22:09:47', '2025-05-08 19:05:42'),
(81, 'customer.settings.create_new_account_options.news_letter', '0', NULL, NULL, '2025-05-06 22:09:47', '2025-05-08 19:05:42'),
(82, 'customer.settings.newsletter.subscription', '0', NULL, NULL, '2025-05-06 22:09:47', '2025-05-08 19:05:43'),
(83, 'customer.settings.email.verification', '0', NULL, NULL, '2025-05-06 22:09:47', '2025-05-06 22:09:47'),
(84, 'customer.settings.social_login.enable_linkedin-openid', '0', 'default', NULL, '2025-05-06 22:09:48', '2025-05-06 22:09:48'),
(85, 'emails.configure.email_settings.sender_name', 'Koumed Destek', 'default', NULL, '2025-05-06 22:10:39', '2025-05-06 22:10:39'),
(86, 'emails.configure.email_settings.shop_email_from', 'iletisim@koumed.com', 'default', NULL, '2025-05-06 22:10:39', '2025-05-06 22:10:39'),
(87, 'emails.configure.email_settings.admin_name', 'Koumed Admin', 'default', NULL, '2025-05-06 22:10:39', '2025-05-06 22:10:39'),
(88, 'emails.configure.email_settings.admin_email', 'iletisim@koumed.com', 'default', NULL, '2025-05-06 22:10:39', '2025-05-06 22:10:39'),
(89, 'emails.configure.email_settings.contact_name', 'Koumed Müşteri Hizmetleri', 'default', NULL, '2025-05-06 22:10:39', '2025-05-06 22:10:39'),
(90, 'emails.configure.email_settings.contact_email', 'iletisim@koumed.com', 'default', NULL, '2025-05-06 22:10:39', '2025-05-06 22:10:39'),
(91, 'sales.payment_methods.cashondelivery.title', 'Teslimatta Öde', 'default', 'tr', '2025-05-06 22:14:45', '2025-05-06 22:14:45'),
(92, 'sales.payment_methods.cashondelivery.description', 'Teslimatta Öde', 'default', 'tr', '2025-05-06 22:14:46', '2025-05-06 22:14:46'),
(93, 'sales.payment_methods.cashondelivery.instructions', '', 'default', 'tr', '2025-05-06 22:14:46', '2025-05-06 22:14:46'),
(94, 'sales.payment_methods.cashondelivery.generate_invoice', '0', 'default', NULL, '2025-05-06 22:14:46', '2025-05-10 10:33:40'),
(95, 'sales.payment_methods.cashondelivery.active', '1', 'default', NULL, '2025-05-06 22:14:46', '2025-05-06 22:14:46'),
(96, 'sales.payment_methods.cashondelivery.sort', '1', NULL, NULL, '2025-05-06 22:14:46', '2025-05-06 22:14:46'),
(97, 'sales.payment_methods.moneytransfer.title', 'Havale-Eft', 'default', 'tr', '2025-05-06 22:14:46', '2025-05-06 22:14:46'),
(98, 'sales.payment_methods.moneytransfer.description', 'Havale-Eft', 'default', 'tr', '2025-05-06 22:14:47', '2025-05-06 22:14:47'),
(99, 'sales.payment_methods.moneytransfer.generate_invoice', '0', 'default', NULL, '2025-05-06 22:14:47', '2025-05-10 10:33:41'),
(100, 'sales.payment_methods.moneytransfer.invoice_status', 'paid', 'default', NULL, '2025-05-06 22:14:47', '2025-05-06 22:14:47'),
(101, 'sales.payment_methods.moneytransfer.order_status', 'pending', 'default', NULL, '2025-05-06 22:14:47', '2025-05-10 10:33:41'),
(102, 'sales.payment_methods.moneytransfer.mailing_address', '', 'default', 'tr', '2025-05-06 22:14:47', '2025-05-06 22:14:47'),
(103, 'sales.payment_methods.moneytransfer.active', '1', 'default', NULL, '2025-05-06 22:14:47', '2025-05-06 22:14:47'),
(104, 'sales.payment_methods.moneytransfer.sort', '2', NULL, NULL, '2025-05-06 22:14:47', '2025-05-06 22:14:47'),
(105, 'sales.payment_methods.paypal_standard.title', 'PayPal Standard', 'default', 'tr', '2025-05-06 22:14:48', '2025-05-06 22:14:48'),
(106, 'sales.payment_methods.paypal_standard.description', 'PayPal Standard', 'default', 'tr', '2025-05-06 22:14:48', '2025-05-06 22:14:48'),
(107, 'sales.payment_methods.paypal_standard.business_account', 'test@webkul.com', 'default', NULL, '2025-05-06 22:14:48', '2025-05-06 22:14:48'),
(108, 'sales.payment_methods.paypal_standard.active', '0', 'default', NULL, '2025-05-06 22:14:48', '2025-05-08 18:28:19'),
(109, 'sales.payment_methods.paypal_standard.sandbox', '0', 'default', NULL, '2025-05-06 22:14:48', '2025-05-08 18:28:19'),
(110, 'sales.payment_methods.paypal_standard.sort', '3', NULL, NULL, '2025-05-06 22:14:48', '2025-05-06 22:14:48'),
(111, 'sales.payment_methods.paypal_smart_button.title', 'PayPal Smart Button', 'default', 'tr', '2025-05-06 22:14:48', '2025-05-06 22:14:48'),
(112, 'sales.payment_methods.paypal_smart_button.description', 'PayPal', 'default', 'tr', '2025-05-06 22:14:48', '2025-05-06 22:14:48'),
(113, 'sales.payment_methods.paypal_smart_button.client_id', 'sb', 'default', NULL, '2025-05-06 22:14:49', '2025-05-06 22:14:49'),
(114, 'sales.payment_methods.paypal_smart_button.client_secret', 'CLIENT_SECRET', 'default', NULL, '2025-05-06 22:14:49', '2025-05-06 22:14:49'),
(115, 'sales.payment_methods.paypal_smart_button.accepted_currencies', 'USD', 'default', NULL, '2025-05-06 22:14:49', '2025-05-06 22:14:49'),
(116, 'sales.payment_methods.paypal_smart_button.active', '0', 'default', NULL, '2025-05-06 22:14:49', '2025-05-08 18:28:20'),
(117, 'sales.payment_methods.paypal_smart_button.sandbox', '0', 'default', NULL, '2025-05-06 22:14:49', '2025-05-08 18:28:20'),
(118, 'sales.payment_methods.paypal_smart_button.sort', '4', NULL, NULL, '2025-05-06 22:14:49', '2025-05-06 22:14:49'),
(119, 'sales.taxes.categories.shipping', '0', NULL, NULL, '2025-05-06 22:15:29', '2025-05-06 22:15:29'),
(120, 'sales.taxes.categories.product', '1', NULL, NULL, '2025-05-06 22:15:30', '2025-05-10 21:27:44'),
(121, 'sales.taxes.calculation.based_on', 'shipping_address', NULL, NULL, '2025-05-06 22:15:30', '2025-05-06 22:15:30'),
(122, 'sales.taxes.calculation.product_prices', 'including_tax', NULL, NULL, '2025-05-06 22:15:30', '2025-05-10 21:27:35'),
(123, 'sales.taxes.calculation.shipping_prices', 'including_tax', NULL, NULL, '2025-05-06 22:15:30', '2025-05-10 21:27:35'),
(124, 'sales.taxes.default_destination_calculation.country', '', NULL, NULL, '2025-05-06 22:15:30', '2025-05-06 22:15:30'),
(125, 'sales.taxes.default_destination_calculation.state', '', NULL, NULL, '2025-05-06 22:15:30', '2025-05-06 22:15:30'),
(126, 'sales.taxes.default_destination_calculation.post_code', '', NULL, NULL, '2025-05-06 22:15:30', '2025-05-06 22:15:30'),
(127, 'sales.taxes.shopping_cart.display_prices', 'both', NULL, NULL, '2025-05-06 22:15:30', '2025-05-10 21:27:37'),
(128, 'sales.taxes.shopping_cart.display_subtotal', 'both', NULL, NULL, '2025-05-06 22:15:31', '2025-05-10 21:27:37'),
(129, 'sales.taxes.shopping_cart.display_shipping_amount', 'including_tax', NULL, NULL, '2025-05-06 22:15:31', '2025-05-10 21:27:37'),
(130, 'sales.taxes.sales.display_prices', 'both', NULL, NULL, '2025-05-06 22:15:31', '2025-05-10 21:27:37'),
(131, 'sales.taxes.sales.display_subtotal', 'both', NULL, NULL, '2025-05-06 22:15:31', '2025-05-10 21:27:37'),
(132, 'sales.taxes.sales.display_shipping_amount', 'both', NULL, NULL, '2025-05-06 22:15:31', '2025-05-10 21:27:38'),
(133, 'sales.checkout.shopping_cart.cart_page', '1', NULL, NULL, '2025-05-07 02:37:46', '2025-05-07 02:37:46'),
(134, 'sales.checkout.shopping_cart.cross_sell', '1', NULL, NULL, '2025-05-07 02:37:46', '2025-05-07 02:37:46'),
(135, 'sales.checkout.shopping_cart.estimate_shipping', '1', NULL, NULL, '2025-05-07 02:37:46', '2025-05-07 02:37:46'),
(136, 'sales.checkout.my_cart.summary', 'display_number_of_items_in_cart', NULL, NULL, '2025-05-07 02:37:46', '2025-05-07 02:37:46'),
(137, 'sales.checkout.mini_cart.display_mini_cart', '1', NULL, NULL, '2025-05-07 02:37:47', '2025-05-07 02:37:47'),
(138, 'sales.checkout.mini_cart.offer_info', '', NULL, NULL, '2025-05-07 02:37:47', '2025-05-07 02:37:47'),
(139, 'sales.invoice_settings.invoice_number.invoice_number_prefix', 'KMD-', 'default', 'tr', '2025-05-08 18:31:49', '2025-05-10 21:31:40'),
(140, 'sales.invoice_settings.invoice_number.invoice_number_length', '8', 'default', 'tr', '2025-05-08 18:31:49', '2025-05-10 21:31:40'),
(141, 'sales.invoice_settings.invoice_number.invoice_number_suffix', '-TR', 'default', 'tr', '2025-05-08 18:31:49', '2025-05-10 21:31:40'),
(142, 'sales.invoice_settings.invoice_number.invoice_number_generator_class', '', 'default', 'tr', '2025-05-08 18:31:50', '2025-05-08 18:31:50'),
(143, 'sales.invoice_settings.payment_terms.due_duration', '30', 'default', NULL, '2025-05-08 18:31:50', '2025-05-10 21:31:41'),
(144, 'sales.invoice_settings.pdf_print_outs.invoice_id', '1', NULL, NULL, '2025-05-08 18:31:50', '2025-05-08 18:31:50'),
(145, 'sales.invoice_settings.pdf_print_outs.order_id', '1', NULL, NULL, '2025-05-08 18:31:51', '2025-05-08 18:31:51'),
(146, 'sales.invoice_settings.pdf_print_outs.footer_text', 'Faturanız KouMed. Tarafından oluşturuldu', 'default', 'tr', '2025-05-08 18:31:51', '2025-05-10 21:31:42'),
(148, 'sales.invoice_settings.invoice_reminders.reminders_limit', '3', 'default', NULL, '2025-05-08 18:31:51', '2025-05-10 21:31:42'),
(149, 'catalog.inventory.stock_options.back_orders', '0', NULL, NULL, '2025-05-08 18:45:30', '2025-05-08 19:59:56'),
(150, 'catalog.inventory.stock_options.out_of_stock_threshold', '0', NULL, NULL, '2025-05-08 18:45:30', '2025-05-08 19:25:16'),
(151, 'sales.carriers.free.title', 'Free Shipping', 'default', 'tr', '2025-05-08 19:06:38', '2025-05-08 19:06:38'),
(152, 'sales.carriers.free.description', 'Free Shipping', 'default', 'tr', '2025-05-08 19:06:38', '2025-05-08 19:06:38'),
(153, 'sales.carriers.free.active', '1', 'default', NULL, '2025-05-08 19:06:38', '2025-05-08 19:06:38'),
(154, 'sales.carriers.flatrate.description', 'Flat Rate Shipping', 'default', 'tr', '2025-05-08 19:06:38', '2025-05-08 19:06:38'),
(155, 'sales.carriers.flatrate.type', 'per_unit', 'default', NULL, '2025-05-08 19:06:39', '2025-05-08 19:06:39'),
(156, 'sales.carriers.flatrate.active', '0', 'default', NULL, '2025-05-08 19:06:39', '2025-05-08 19:06:39'),
(157, 'sales.order_settings.order_number.order_number_prefix', '', 'default', NULL, '2025-05-08 19:15:57', '2025-05-08 19:15:57'),
(158, 'sales.order_settings.order_number.order_number_length', '', 'default', NULL, '2025-05-08 19:15:57', '2025-05-08 19:15:57'),
(159, 'sales.order_settings.order_number.order_number_suffix', '', 'default', NULL, '2025-05-08 19:15:57', '2025-05-08 19:15:57'),
(160, 'sales.order_settings.order_number.order_number_generator', '', 'default', NULL, '2025-05-08 19:15:57', '2025-05-08 19:15:57'),
(161, 'sales.order_settings.minimum_order.enable', '0', NULL, NULL, '2025-05-08 19:15:57', '2025-05-08 19:15:57'),
(162, 'sales.order_settings.reorder.admin', '0', NULL, NULL, '2025-05-08 19:15:58', '2025-05-08 19:15:58'),
(163, 'sales.order_settings.reorder.shop', '0', NULL, NULL, '2025-05-08 19:15:58', '2025-05-08 19:15:58'),
(164, 'sales.payment_methods.iyzico.title', 'Iyzico', NULL, 'tr', '2025-05-10 08:18:24', '2025-05-10 08:18:24'),
(165, 'sales.payment_methods.iyzico.description', 'Iyzico', NULL, 'tr', '2025-05-10 08:18:25', '2025-05-10 08:18:25'),
(166, 'sales.payment_methods.iyzico.active', '1', NULL, 'tr', '2025-05-10 08:18:25', '2025-05-10 08:18:25'),
(167, 'sales.payment_methods.cashondelivery.invoice_status', 'pending', 'default', NULL, '2025-05-10 09:13:10', '2025-05-10 09:13:10'),
(168, 'sales.payment_methods.cashondelivery.order_status', 'processing', 'default', NULL, '2025-05-10 09:13:10', '2025-05-10 09:13:10'),
(169, 'sales.payment_methods.iyzico.image', 'configuration/oG0UGpbz8F9C9ty4yPKgqKR869hQNdO8WDkOYTQs.png', NULL, 'tr', '2025-05-10 09:17:12', '2025-05-10 09:17:12'),
(170, 'rma.settings.general.enable_rma', '1', 'default', 'en', NULL, NULL),
(171, 'general.magic_ai.settings.enabled', '1', 'default', NULL, '2025-05-10 15:54:20', '2025-05-10 15:54:20'),
(172, 'general.magic_ai.settings.api_key', 'AIzaSyBihx7OZYnDmJ5aoTqWwJIiT57WjFYQF8Q', 'default', NULL, '2025-05-10 15:54:21', '2025-05-10 16:15:34'),
(173, 'general.magic_ai.settings.organization', '', 'default', NULL, '2025-05-10 15:54:21', '2025-05-10 16:15:34'),
(174, 'general.magic_ai.settings.api_domain', '', 'default', NULL, '2025-05-10 15:54:21', '2025-05-10 15:54:21'),
(175, 'general.magic_ai.content_generation.enabled', '1', NULL, NULL, '2025-05-10 15:54:22', '2025-05-10 15:59:38'),
(176, 'general.magic_ai.content_generation.product_short_description_prompt', 'profesyonel ürün açıklaması', NULL, 'tr', '2025-05-10 15:54:22', '2025-05-10 15:59:38'),
(177, 'general.magic_ai.content_generation.product_description_prompt', 'profesyonel ürün açıklaması', NULL, 'tr', '2025-05-10 15:54:22', '2025-05-10 15:59:38'),
(178, 'general.magic_ai.content_generation.category_description_prompt', 'profesyonel ürün açıklaması', NULL, 'tr', '2025-05-10 15:54:22', '2025-05-10 15:59:38'),
(179, 'general.magic_ai.content_generation.cms_page_content_prompt', 'profesyonel ürün açıklaması', NULL, 'tr', '2025-05-10 15:54:23', '2025-05-10 15:59:39'),
(180, 'general.magic_ai.image_generation.enabled', '0', 'default', NULL, '2025-05-10 15:54:23', '2025-05-10 15:54:23'),
(181, 'general.magic_ai.review_translation.enabled', '0', 'default', NULL, '2025-05-10 15:54:23', '2025-05-10 15:54:23'),
(182, 'general.magic_ai.checkout_message.enabled', '1', 'default', NULL, '2025-05-10 15:54:23', '2025-05-10 15:57:06'),
(183, 'general.magic_ai.checkout_message.prompt', 'profesyonel teşekkür mesajı', 'default', 'tr', '2025-05-10 15:54:23', '2025-05-10 15:57:06'),
(184, 'general.magic_ai.checkout_message.model', 'gpt-4o-mini', 'default', NULL, '2025-05-10 15:57:06', '2025-05-10 15:57:06'),
(185, 'sales.invoice_settings.invoice_reminders.interval_between_reminders', 'P4D', NULL, NULL, '2025-05-10 21:31:43', '2025-05-10 21:31:43'),
(189, 'sales.invoice_settings.pdf_print_outs.logo', 'configuration/Th0jtycIzUUErxYU3Wzr5E0xSbSjrPum5NgQBKQu.png', 'default', NULL, '2025-05-10 23:50:22', '2025-05-10 23:50:22');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AX', 'Åland Islands'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American Samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua & Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AC', 'Ascension Island'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia & Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British Indian Ocean Territory'),
(33, 'VG', 'British Virgin Islands'),
(34, 'BN', 'Brunei'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CA', 'Canada'),
(41, 'IC', 'Canary Islands'),
(42, 'CV', 'Cape Verde'),
(43, 'BQ', 'Caribbean Netherlands'),
(44, 'KY', 'Cayman Islands'),
(45, 'CF', 'Central African Republic'),
(46, 'EA', 'Ceuta & Melilla'),
(47, 'TD', 'Chad'),
(48, 'CL', 'Chile'),
(49, 'CN', 'China'),
(50, 'CX', 'Christmas Island'),
(51, 'CC', 'Cocos (Keeling) Islands'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoros'),
(54, 'CG', 'Congo - Brazzaville'),
(55, 'CD', 'Congo - Kinshasa'),
(56, 'CK', 'Cook Islands'),
(57, 'CR', 'Costa Rica'),
(58, 'CI', 'Côte d’Ivoire'),
(59, 'HR', 'Croatia'),
(60, 'CU', 'Cuba'),
(61, 'CW', 'Curaçao'),
(62, 'CY', 'Cyprus'),
(63, 'CZ', 'Czechia'),
(64, 'DK', 'Denmark'),
(65, 'DG', 'Diego Garcia'),
(66, 'DJ', 'Djibouti'),
(67, 'DM', 'Dominica'),
(68, 'DO', 'Dominican Republic'),
(69, 'EC', 'Ecuador'),
(70, 'EG', 'Egypt'),
(71, 'SV', 'El Salvador'),
(72, 'GQ', 'Equatorial Guinea'),
(73, 'ER', 'Eritrea'),
(74, 'EE', 'Estonia'),
(75, 'ET', 'Ethiopia'),
(76, 'EZ', 'Eurozone'),
(77, 'FK', 'Falkland Islands'),
(78, 'FO', 'Faroe Islands'),
(79, 'FJ', 'Fiji'),
(80, 'FI', 'Finland'),
(81, 'FR', 'France'),
(82, 'GF', 'French Guiana'),
(83, 'PF', 'French Polynesia'),
(84, 'TF', 'French Southern Territories'),
(85, 'GA', 'Gabon'),
(86, 'GM', 'Gambia'),
(87, 'GE', 'Georgia'),
(88, 'DE', 'Germany'),
(89, 'GH', 'Ghana'),
(90, 'GI', 'Gibraltar'),
(91, 'GR', 'Greece'),
(92, 'GL', 'Greenland'),
(93, 'GD', 'Grenada'),
(94, 'GP', 'Guadeloupe'),
(95, 'GU', 'Guam'),
(96, 'GT', 'Guatemala'),
(97, 'GG', 'Guernsey'),
(98, 'GN', 'Guinea'),
(99, 'GW', 'Guinea-Bissau'),
(100, 'GY', 'Guyana'),
(101, 'HT', 'Haiti'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong SAR China'),
(104, 'HU', 'Hungary'),
(105, 'IS', 'Iceland'),
(106, 'IN', 'India'),
(107, 'ID', 'Indonesia'),
(108, 'IR', 'Iran'),
(109, 'IQ', 'Iraq'),
(110, 'IE', 'Ireland'),
(111, 'IM', 'Isle of Man'),
(112, 'IL', 'Israel'),
(113, 'IT', 'Italy'),
(114, 'JM', 'Jamaica'),
(115, 'JP', 'Japan'),
(116, 'JE', 'Jersey'),
(117, 'JO', 'Jordan'),
(118, 'KZ', 'Kazakhstan'),
(119, 'KE', 'Kenya'),
(120, 'KI', 'Kiribati'),
(121, 'XK', 'Kosovo'),
(122, 'KW', 'Kuwait'),
(123, 'KG', 'Kyrgyzstan'),
(124, 'LA', 'Laos'),
(125, 'LV', 'Latvia'),
(126, 'LB', 'Lebanon'),
(127, 'LS', 'Lesotho'),
(128, 'LR', 'Liberia'),
(129, 'LY', 'Libya'),
(130, 'LI', 'Liechtenstein'),
(131, 'LT', 'Lithuania'),
(132, 'LU', 'Luxembourg'),
(133, 'MO', 'Macau SAR China'),
(134, 'MK', 'Macedonia'),
(135, 'MG', 'Madagascar'),
(136, 'MW', 'Malawi'),
(137, 'MY', 'Malaysia'),
(138, 'MV', 'Maldives'),
(139, 'ML', 'Mali'),
(140, 'MT', 'Malta'),
(141, 'MH', 'Marshall Islands'),
(142, 'MQ', 'Martinique'),
(143, 'MR', 'Mauritania'),
(144, 'MU', 'Mauritius'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'Mexico'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldova'),
(149, 'MC', 'Monaco'),
(150, 'MN', 'Mongolia'),
(151, 'ME', 'Montenegro'),
(152, 'MS', 'Montserrat'),
(153, 'MA', 'Morocco'),
(154, 'MZ', 'Mozambique'),
(155, 'MM', 'Myanmar (Burma)'),
(156, 'NA', 'Namibia'),
(157, 'NR', 'Nauru'),
(158, 'NP', 'Nepal'),
(159, 'NL', 'Netherlands'),
(160, 'NC', 'New Caledonia'),
(161, 'NZ', 'New Zealand'),
(162, 'NI', 'Nicaragua'),
(163, 'NE', 'Niger'),
(164, 'NG', 'Nigeria'),
(165, 'NU', 'Niue'),
(166, 'NF', 'Norfolk Island'),
(167, 'KP', 'North Korea'),
(168, 'MP', 'Northern Mariana Islands'),
(169, 'NO', 'Norway'),
(170, 'OM', 'Oman'),
(171, 'PK', 'Pakistan'),
(172, 'PW', 'Palau'),
(173, 'PS', 'Palestinian Territories'),
(174, 'PA', 'Panama'),
(175, 'PG', 'Papua New Guinea'),
(176, 'PY', 'Paraguay'),
(177, 'PE', 'Peru'),
(178, 'PH', 'Philippines'),
(179, 'PN', 'Pitcairn Islands'),
(180, 'PL', 'Poland'),
(181, 'PT', 'Portugal'),
(182, 'PR', 'Puerto Rico'),
(183, 'QA', 'Qatar'),
(184, 'RE', 'Réunion'),
(185, 'RO', 'Romania'),
(186, 'RU', 'Russia'),
(187, 'RW', 'Rwanda'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'São Tomé & Príncipe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SX', 'Sint Maarten'),
(198, 'SK', 'Slovakia'),
(199, 'SI', 'Slovenia'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia & South Sandwich Islands'),
(204, 'KR', 'South Korea'),
(205, 'SS', 'South Sudan'),
(206, 'ES', 'Spain'),
(207, 'LK', 'Sri Lanka'),
(208, 'BL', 'St. Barthélemy'),
(209, 'SH', 'St. Helena'),
(210, 'KN', 'St. Kitts & Nevis'),
(211, 'LC', 'St. Lucia'),
(212, 'MF', 'St. Martin'),
(213, 'PM', 'St. Pierre & Miquelon'),
(214, 'VC', 'St. Vincent & Grenadines'),
(215, 'SD', 'Sudan'),
(216, 'SR', 'Suriname'),
(217, 'SJ', 'Svalbard & Jan Mayen'),
(218, 'SZ', 'Swaziland'),
(219, 'SE', 'Sweden'),
(220, 'CH', 'Switzerland'),
(221, 'SY', 'Syria'),
(222, 'TW', 'Taiwan'),
(223, 'TJ', 'Tajikistan'),
(224, 'TZ', 'Tanzania'),
(225, 'TH', 'Thailand'),
(226, 'TL', 'Timor-Leste'),
(227, 'TG', 'Togo'),
(228, 'TK', 'Tokelau'),
(229, 'TO', 'Tonga'),
(230, 'TT', 'Trinidad & Tobago'),
(231, 'TA', 'Tristan da Cunha'),
(232, 'TN', 'Tunisia'),
(233, 'TR', 'Turkey'),
(234, 'TM', 'Turkmenistan'),
(235, 'TC', 'Turks & Caicos Islands'),
(236, 'TV', 'Tuvalu'),
(237, 'UM', 'U.S. Outlying Islands'),
(238, 'VI', 'U.S. Virgin Islands'),
(239, 'UG', 'Uganda'),
(240, 'UA', 'Ukraine'),
(241, 'AE', 'United Arab Emirates'),
(242, 'GB', 'United Kingdom'),
(244, 'US', 'United States'),
(245, 'UY', 'Uruguay'),
(246, 'UZ', 'Uzbekistan'),
(247, 'VU', 'Vanuatu'),
(248, 'VA', 'Vatican City'),
(249, 'VE', 'Venezuela'),
(250, 'VN', 'Vietnam'),
(251, 'WF', 'Wallis & Futuna'),
(252, 'EH', 'Western Sahara'),
(253, 'YE', 'Yemen'),
(254, 'ZM', 'Zambia'),
(255, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

CREATE TABLE `country_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `default_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `country_code`, `code`, `default_name`) VALUES
(1, 244, 'US', 'AL', 'Alabama'),
(2, 244, 'US', 'AK', 'Alaska'),
(3, 244, 'US', 'AS', 'American Samoa'),
(4, 244, 'US', 'AZ', 'Arizona'),
(5, 244, 'US', 'AR', 'Arkansas'),
(6, 244, 'US', 'AE', 'Armed Forces Africa'),
(7, 244, 'US', 'AA', 'Armed Forces Americas'),
(8, 244, 'US', 'AE', 'Armed Forces Canada'),
(9, 244, 'US', 'AE', 'Armed Forces Europe'),
(10, 244, 'US', 'AE', 'Armed Forces Middle East'),
(11, 244, 'US', 'AP', 'Armed Forces Pacific'),
(12, 244, 'US', 'CA', 'California'),
(13, 244, 'US', 'CO', 'Colorado'),
(14, 244, 'US', 'CT', 'Connecticut'),
(15, 244, 'US', 'DE', 'Delaware'),
(16, 244, 'US', 'DC', 'District of Columbia'),
(17, 244, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 244, 'US', 'FL', 'Florida'),
(19, 244, 'US', 'GA', 'Georgia'),
(20, 244, 'US', 'GU', 'Guam'),
(21, 244, 'US', 'HI', 'Hawaii'),
(22, 244, 'US', 'ID', 'Idaho'),
(23, 244, 'US', 'IL', 'Illinois'),
(24, 244, 'US', 'IN', 'Indiana'),
(25, 244, 'US', 'IA', 'Iowa'),
(26, 244, 'US', 'KS', 'Kansas'),
(27, 244, 'US', 'KY', 'Kentucky'),
(28, 244, 'US', 'LA', 'Louisiana'),
(29, 244, 'US', 'ME', 'Maine'),
(30, 244, 'US', 'MH', 'Marshall Islands'),
(31, 244, 'US', 'MD', 'Maryland'),
(32, 244, 'US', 'MA', 'Massachusetts'),
(33, 244, 'US', 'MI', 'Michigan'),
(34, 244, 'US', 'MN', 'Minnesota'),
(35, 244, 'US', 'MS', 'Mississippi'),
(36, 244, 'US', 'MO', 'Missouri'),
(37, 244, 'US', 'MT', 'Montana'),
(38, 244, 'US', 'NE', 'Nebraska'),
(39, 244, 'US', 'NV', 'Nevada'),
(40, 244, 'US', 'NH', 'New Hampshire'),
(41, 244, 'US', 'NJ', 'New Jersey'),
(42, 244, 'US', 'NM', 'New Mexico'),
(43, 244, 'US', 'NY', 'New York'),
(44, 244, 'US', 'NC', 'North Carolina'),
(45, 244, 'US', 'ND', 'North Dakota'),
(46, 244, 'US', 'MP', 'Northern Mariana Islands'),
(47, 244, 'US', 'OH', 'Ohio'),
(48, 244, 'US', 'OK', 'Oklahoma'),
(49, 244, 'US', 'OR', 'Oregon'),
(50, 244, 'US', 'PW', 'Palau'),
(51, 244, 'US', 'PA', 'Pennsylvania'),
(52, 244, 'US', 'PR', 'Puerto Rico'),
(53, 244, 'US', 'RI', 'Rhode Island'),
(54, 244, 'US', 'SC', 'South Carolina'),
(55, 244, 'US', 'SD', 'South Dakota'),
(56, 244, 'US', 'TN', 'Tennessee'),
(57, 244, 'US', 'TX', 'Texas'),
(58, 244, 'US', 'UT', 'Utah'),
(59, 244, 'US', 'VT', 'Vermont'),
(60, 244, 'US', 'VI', 'Virgin Islands'),
(61, 244, 'US', 'VA', 'Virginia'),
(62, 244, 'US', 'WA', 'Washington'),
(63, 244, 'US', 'WV', 'West Virginia'),
(64, 244, 'US', 'WI', 'Wisconsin'),
(65, 244, 'US', 'WY', 'Wyoming'),
(66, 40, 'CA', 'AB', 'Alberta'),
(67, 40, 'CA', 'BC', 'British Columbia'),
(68, 40, 'CA', 'MB', 'Manitoba'),
(69, 40, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 40, 'CA', 'NB', 'New Brunswick'),
(71, 40, 'CA', 'NS', 'Nova Scotia'),
(72, 40, 'CA', 'NT', 'Northwest Territories'),
(73, 40, 'CA', 'NU', 'Nunavut'),
(74, 40, 'CA', 'ON', 'Ontario'),
(75, 40, 'CA', 'PE', 'Prince Edward Island'),
(76, 40, 'CA', 'QC', 'Quebec'),
(77, 40, 'CA', 'SK', 'Saskatchewan'),
(78, 40, 'CA', 'YT', 'Yukon Territory'),
(79, 88, 'DE', 'NDS', 'Niedersachsen'),
(80, 88, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 88, 'DE', 'BAY', 'Bayern'),
(82, 88, 'DE', 'BER', 'Berlin'),
(83, 88, 'DE', 'BRG', 'Brandenburg'),
(84, 88, 'DE', 'BRE', 'Bremen'),
(85, 88, 'DE', 'HAM', 'Hamburg'),
(86, 88, 'DE', 'HES', 'Hessen'),
(87, 88, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 88, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 88, 'DE', 'SAR', 'Saarland'),
(91, 88, 'DE', 'SAS', 'Sachsen'),
(92, 88, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 88, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 88, 'DE', 'THE', 'Thüringen'),
(95, 16, 'AT', 'WI', 'Wien'),
(96, 16, 'AT', 'NO', 'Niederösterreich'),
(97, 16, 'AT', 'OO', 'Oberösterreich'),
(98, 16, 'AT', 'SB', 'Salzburg'),
(99, 16, 'AT', 'KN', 'Kärnten'),
(100, 16, 'AT', 'ST', 'Steiermark'),
(101, 16, 'AT', 'TI', 'Tirol'),
(102, 16, 'AT', 'BL', 'Burgenland'),
(103, 16, 'AT', 'VB', 'Vorarlberg'),
(104, 220, 'CH', 'AG', 'Aargau'),
(105, 220, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 220, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 220, 'CH', 'BE', 'Bern'),
(108, 220, 'CH', 'BL', 'Basel-Landschaft'),
(109, 220, 'CH', 'BS', 'Basel-Stadt'),
(110, 220, 'CH', 'FR', 'Freiburg'),
(111, 220, 'CH', 'GE', 'Genf'),
(112, 220, 'CH', 'GL', 'Glarus'),
(113, 220, 'CH', 'GR', 'Graubünden'),
(114, 220, 'CH', 'JU', 'Jura'),
(115, 220, 'CH', 'LU', 'Luzern'),
(116, 220, 'CH', 'NE', 'Neuenburg'),
(117, 220, 'CH', 'NW', 'Nidwalden'),
(118, 220, 'CH', 'OW', 'Obwalden'),
(119, 220, 'CH', 'SG', 'St. Gallen'),
(120, 220, 'CH', 'SH', 'Schaffhausen'),
(121, 220, 'CH', 'SO', 'Solothurn'),
(122, 220, 'CH', 'SZ', 'Schwyz'),
(123, 220, 'CH', 'TG', 'Thurgau'),
(124, 220, 'CH', 'TI', 'Tessin'),
(125, 220, 'CH', 'UR', 'Uri'),
(126, 220, 'CH', 'VD', 'Waadt'),
(127, 220, 'CH', 'VS', 'Wallis'),
(128, 220, 'CH', 'ZG', 'Zug'),
(129, 220, 'CH', 'ZH', 'Zürich'),
(130, 206, 'ES', 'A Coruсa', 'A Coruña'),
(131, 206, 'ES', 'Alava', 'Alava'),
(132, 206, 'ES', 'Albacete', 'Albacete'),
(133, 206, 'ES', 'Alicante', 'Alicante'),
(134, 206, 'ES', 'Almeria', 'Almeria'),
(135, 206, 'ES', 'Asturias', 'Asturias'),
(136, 206, 'ES', 'Avila', 'Avila'),
(137, 206, 'ES', 'Badajoz', 'Badajoz'),
(138, 206, 'ES', 'Baleares', 'Baleares'),
(139, 206, 'ES', 'Barcelona', 'Barcelona'),
(140, 206, 'ES', 'Burgos', 'Burgos'),
(141, 206, 'ES', 'Caceres', 'Caceres'),
(142, 206, 'ES', 'Cadiz', 'Cadiz'),
(143, 206, 'ES', 'Cantabria', 'Cantabria'),
(144, 206, 'ES', 'Castellon', 'Castellon'),
(145, 206, 'ES', 'Ceuta', 'Ceuta'),
(146, 206, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 206, 'ES', 'Cordoba', 'Cordoba'),
(148, 206, 'ES', 'Cuenca', 'Cuenca'),
(149, 206, 'ES', 'Girona', 'Girona'),
(150, 206, 'ES', 'Granada', 'Granada'),
(151, 206, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 206, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 206, 'ES', 'Huelva', 'Huelva'),
(154, 206, 'ES', 'Huesca', 'Huesca'),
(155, 206, 'ES', 'Jaen', 'Jaen'),
(156, 206, 'ES', 'La Rioja', 'La Rioja'),
(157, 206, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 206, 'ES', 'Leon', 'Leon'),
(159, 206, 'ES', 'Lleida', 'Lleida'),
(160, 206, 'ES', 'Lugo', 'Lugo'),
(161, 206, 'ES', 'Madrid', 'Madrid'),
(162, 206, 'ES', 'Malaga', 'Malaga'),
(163, 206, 'ES', 'Melilla', 'Melilla'),
(164, 206, 'ES', 'Murcia', 'Murcia'),
(165, 206, 'ES', 'Navarra', 'Navarra'),
(166, 206, 'ES', 'Ourense', 'Ourense'),
(167, 206, 'ES', 'Palencia', 'Palencia'),
(168, 206, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 206, 'ES', 'Salamanca', 'Salamanca'),
(170, 206, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 206, 'ES', 'Segovia', 'Segovia'),
(172, 206, 'ES', 'Sevilla', 'Sevilla'),
(173, 206, 'ES', 'Soria', 'Soria'),
(174, 206, 'ES', 'Tarragona', 'Tarragona'),
(175, 206, 'ES', 'Teruel', 'Teruel'),
(176, 206, 'ES', 'Toledo', 'Toledo'),
(177, 206, 'ES', 'Valencia', 'Valencia'),
(178, 206, 'ES', 'Valladolid', 'Valladolid'),
(179, 206, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 206, 'ES', 'Zamora', 'Zamora'),
(181, 206, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 81, 'FR', '1', 'Ain'),
(183, 81, 'FR', '2', 'Aisne'),
(184, 81, 'FR', '3', 'Allier'),
(185, 81, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 81, 'FR', '5', 'Hautes-Alpes'),
(187, 81, 'FR', '6', 'Alpes-Maritimes'),
(188, 81, 'FR', '7', 'Ardèche'),
(189, 81, 'FR', '8', 'Ardennes'),
(190, 81, 'FR', '9', 'Ariège'),
(191, 81, 'FR', '10', 'Aube'),
(192, 81, 'FR', '11', 'Aude'),
(193, 81, 'FR', '12', 'Aveyron'),
(194, 81, 'FR', '13', 'Bouches-du-Rhône'),
(195, 81, 'FR', '14', 'Calvados'),
(196, 81, 'FR', '15', 'Cantal'),
(197, 81, 'FR', '16', 'Charente'),
(198, 81, 'FR', '17', 'Charente-Maritime'),
(199, 81, 'FR', '18', 'Cher'),
(200, 81, 'FR', '19', 'Corrèze'),
(201, 81, 'FR', '2A', 'Corse-du-Sud'),
(202, 81, 'FR', '2B', 'Haute-Corse'),
(203, 81, 'FR', '21', 'Côte-d\'Or'),
(204, 81, 'FR', '22', 'Côtes-d\'Armor'),
(205, 81, 'FR', '23', 'Creuse'),
(206, 81, 'FR', '24', 'Dordogne'),
(207, 81, 'FR', '25', 'Doubs'),
(208, 81, 'FR', '26', 'Drôme'),
(209, 81, 'FR', '27', 'Eure'),
(210, 81, 'FR', '28', 'Eure-et-Loir'),
(211, 81, 'FR', '29', 'Finistère'),
(212, 81, 'FR', '30', 'Gard'),
(213, 81, 'FR', '31', 'Haute-Garonne'),
(214, 81, 'FR', '32', 'Gers'),
(215, 81, 'FR', '33', 'Gironde'),
(216, 81, 'FR', '34', 'Hérault'),
(217, 81, 'FR', '35', 'Ille-et-Vilaine'),
(218, 81, 'FR', '36', 'Indre'),
(219, 81, 'FR', '37', 'Indre-et-Loire'),
(220, 81, 'FR', '38', 'Isère'),
(221, 81, 'FR', '39', 'Jura'),
(222, 81, 'FR', '40', 'Landes'),
(223, 81, 'FR', '41', 'Loir-et-Cher'),
(224, 81, 'FR', '42', 'Loire'),
(225, 81, 'FR', '43', 'Haute-Loire'),
(226, 81, 'FR', '44', 'Loire-Atlantique'),
(227, 81, 'FR', '45', 'Loiret'),
(228, 81, 'FR', '46', 'Lot'),
(229, 81, 'FR', '47', 'Lot-et-Garonne'),
(230, 81, 'FR', '48', 'Lozère'),
(231, 81, 'FR', '49', 'Maine-et-Loire'),
(232, 81, 'FR', '50', 'Manche'),
(233, 81, 'FR', '51', 'Marne'),
(234, 81, 'FR', '52', 'Haute-Marne'),
(235, 81, 'FR', '53', 'Mayenne'),
(236, 81, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 81, 'FR', '55', 'Meuse'),
(238, 81, 'FR', '56', 'Morbihan'),
(239, 81, 'FR', '57', 'Moselle'),
(240, 81, 'FR', '58', 'Nièvre'),
(241, 81, 'FR', '59', 'Nord'),
(242, 81, 'FR', '60', 'Oise'),
(243, 81, 'FR', '61', 'Orne'),
(244, 81, 'FR', '62', 'Pas-de-Calais'),
(245, 81, 'FR', '63', 'Puy-de-Dôme'),
(246, 81, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 81, 'FR', '65', 'Hautes-Pyrénées'),
(248, 81, 'FR', '66', 'Pyrénées-Orientales'),
(249, 81, 'FR', '67', 'Bas-Rhin'),
(250, 81, 'FR', '68', 'Haut-Rhin'),
(251, 81, 'FR', '69', 'Rhône'),
(252, 81, 'FR', '70', 'Haute-Saône'),
(253, 81, 'FR', '71', 'Saône-et-Loire'),
(254, 81, 'FR', '72', 'Sarthe'),
(255, 81, 'FR', '73', 'Savoie'),
(256, 81, 'FR', '74', 'Haute-Savoie'),
(257, 81, 'FR', '75', 'Paris'),
(258, 81, 'FR', '76', 'Seine-Maritime'),
(259, 81, 'FR', '77', 'Seine-et-Marne'),
(260, 81, 'FR', '78', 'Yvelines'),
(261, 81, 'FR', '79', 'Deux-Sèvres'),
(262, 81, 'FR', '80', 'Somme'),
(263, 81, 'FR', '81', 'Tarn'),
(264, 81, 'FR', '82', 'Tarn-et-Garonne'),
(265, 81, 'FR', '83', 'Var'),
(266, 81, 'FR', '84', 'Vaucluse'),
(267, 81, 'FR', '85', 'Vendée'),
(268, 81, 'FR', '86', 'Vienne'),
(269, 81, 'FR', '87', 'Haute-Vienne'),
(270, 81, 'FR', '88', 'Vosges'),
(271, 81, 'FR', '89', 'Yonne'),
(272, 81, 'FR', '90', 'Territoire-de-Belfort'),
(273, 81, 'FR', '91', 'Essonne'),
(274, 81, 'FR', '92', 'Hauts-de-Seine'),
(275, 81, 'FR', '93', 'Seine-Saint-Denis'),
(276, 81, 'FR', '94', 'Val-de-Marne'),
(277, 81, 'FR', '95', 'Val-d\'Oise'),
(278, 185, 'RO', 'AB', 'Alba'),
(279, 185, 'RO', 'AR', 'Arad'),
(280, 185, 'RO', 'AG', 'Argeş'),
(281, 185, 'RO', 'BC', 'Bacău'),
(282, 185, 'RO', 'BH', 'Bihor'),
(283, 185, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 185, 'RO', 'BT', 'Botoşani'),
(285, 185, 'RO', 'BV', 'Braşov'),
(286, 185, 'RO', 'BR', 'Brăila'),
(287, 185, 'RO', 'B', 'Bucureşti'),
(288, 185, 'RO', 'BZ', 'Buzău'),
(289, 185, 'RO', 'CS', 'Caraş-Severin'),
(290, 185, 'RO', 'CL', 'Călăraşi'),
(291, 185, 'RO', 'CJ', 'Cluj'),
(292, 185, 'RO', 'CT', 'Constanţa'),
(293, 185, 'RO', 'CV', 'Covasna'),
(294, 185, 'RO', 'DB', 'Dâmboviţa'),
(295, 185, 'RO', 'DJ', 'Dolj'),
(296, 185, 'RO', 'GL', 'Galaţi'),
(297, 185, 'RO', 'GR', 'Giurgiu'),
(298, 185, 'RO', 'GJ', 'Gorj'),
(299, 185, 'RO', 'HR', 'Harghita'),
(300, 185, 'RO', 'HD', 'Hunedoara'),
(301, 185, 'RO', 'IL', 'Ialomiţa'),
(302, 185, 'RO', 'IS', 'Iaşi'),
(303, 185, 'RO', 'IF', 'Ilfov'),
(304, 185, 'RO', 'MM', 'Maramureş'),
(305, 185, 'RO', 'MH', 'Mehedinţi'),
(306, 185, 'RO', 'MS', 'Mureş'),
(307, 185, 'RO', 'NT', 'Neamţ'),
(308, 185, 'RO', 'OT', 'Olt'),
(309, 185, 'RO', 'PH', 'Prahova'),
(310, 185, 'RO', 'SM', 'Satu-Mare'),
(311, 185, 'RO', 'SJ', 'Sălaj'),
(312, 185, 'RO', 'SB', 'Sibiu'),
(313, 185, 'RO', 'SV', 'Suceava'),
(314, 185, 'RO', 'TR', 'Teleorman'),
(315, 185, 'RO', 'TM', 'Timiş'),
(316, 185, 'RO', 'TL', 'Tulcea'),
(317, 185, 'RO', 'VS', 'Vaslui'),
(318, 185, 'RO', 'VL', 'Vâlcea'),
(319, 185, 'RO', 'VN', 'Vrancea'),
(320, 80, 'FI', 'Lappi', 'Lappi'),
(321, 80, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 80, 'FI', 'Kainuu', 'Kainuu'),
(323, 80, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 80, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 80, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 80, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 80, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 80, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 80, 'FI', 'Satakunta', 'Satakunta'),
(330, 80, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 80, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 80, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 80, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 80, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 80, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 80, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 80, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 80, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 80, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 74, 'EE', 'EE-37', 'Harjumaa'),
(341, 74, 'EE', 'EE-39', 'Hiiumaa'),
(342, 74, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 74, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 74, 'EE', 'EE-51', 'Järvamaa'),
(345, 74, 'EE', 'EE-57', 'Läänemaa'),
(346, 74, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 74, 'EE', 'EE-65', 'Põlvamaa'),
(348, 74, 'EE', 'EE-67', 'Pärnumaa'),
(349, 74, 'EE', 'EE-70', 'Raplamaa'),
(350, 74, 'EE', 'EE-74', 'Saaremaa'),
(351, 74, 'EE', 'EE-78', 'Tartumaa'),
(352, 74, 'EE', 'EE-82', 'Valgamaa'),
(353, 74, 'EE', 'EE-84', 'Viljandimaa'),
(354, 74, 'EE', 'EE-86', 'Võrumaa'),
(355, 125, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 125, 'LV', 'LV-JEL', 'Jelgava'),
(357, 125, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 125, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 125, 'LV', 'LV-LPX', 'Liepāja'),
(360, 125, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 125, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 125, 'LV', 'LV-RIX', 'Rīga'),
(363, 125, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 125, 'LV', 'Valmiera', 'Valmiera'),
(365, 125, 'LV', 'LV-VEN', 'Ventspils'),
(366, 125, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 125, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 125, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 125, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 125, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 125, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 125, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 125, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 125, 'LV', 'Apes novads', 'Apes novads'),
(375, 125, 'LV', 'Auces novads', 'Auces novads'),
(376, 125, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 125, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 125, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 125, 'LV', 'LV-BL', 'Balvu novads'),
(380, 125, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 125, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 125, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 125, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 125, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 125, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 125, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 125, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 125, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 125, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 125, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 125, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 125, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 125, 'LV', 'Engures novads', 'Engures novads'),
(394, 125, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 125, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 125, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 125, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 125, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 125, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 125, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 125, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 125, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 125, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 125, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 125, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 125, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 125, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 125, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 125, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 125, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 125, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 125, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 125, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 125, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 125, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 125, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 125, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 125, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 125, 'LV', 'LV-MA', 'Madonas novads'),
(420, 125, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 125, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 125, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 125, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 125, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 125, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 125, 'LV', 'LV-OG', 'Ogres novads'),
(427, 125, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 125, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 125, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 125, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 125, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 125, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 125, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 125, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 125, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 125, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 125, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 125, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 125, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 125, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 125, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 125, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 125, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 125, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 125, 'LV', 'Salas novads', 'Salas novads'),
(446, 125, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 125, 'LV', 'LV-SA', 'Saldus novads'),
(448, 125, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 125, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 125, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 125, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 125, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 125, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 125, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 125, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 125, 'LV', 'LV-TA', 'Talsu novads'),
(457, 125, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 125, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 125, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 125, 'LV', 'LV-VK', 'Valkas novads'),
(461, 125, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 125, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 125, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 125, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 125, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 125, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 125, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 125, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 125, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 125, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 125, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 125, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 125, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 125, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 131, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 131, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 131, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 131, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 131, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 131, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 131, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 131, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 131, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 131, 'LT', 'LT-VL', 'Vilniaus Apskritis'),
(485, 31, 'BR', 'AC', 'Acre'),
(486, 31, 'BR', 'AL', 'Alagoas'),
(487, 31, 'BR', 'AP', 'Amapá'),
(488, 31, 'BR', 'AM', 'Amazonas'),
(489, 31, 'BR', 'BA', 'Bahia'),
(490, 31, 'BR', 'CE', 'Ceará'),
(491, 31, 'BR', 'ES', 'Espírito Santo'),
(492, 31, 'BR', 'GO', 'Goiás'),
(493, 31, 'BR', 'MA', 'Maranhão'),
(494, 31, 'BR', 'MT', 'Mato Grosso'),
(495, 31, 'BR', 'MS', 'Mato Grosso do Sul'),
(496, 31, 'BR', 'MG', 'Minas Gerais'),
(497, 31, 'BR', 'PA', 'Pará'),
(498, 31, 'BR', 'PB', 'Paraíba'),
(499, 31, 'BR', 'PR', 'Paraná'),
(500, 31, 'BR', 'PE', 'Pernambuco'),
(501, 31, 'BR', 'PI', 'Piauí'),
(502, 31, 'BR', 'RJ', 'Rio de Janeiro'),
(503, 31, 'BR', 'RN', 'Rio Grande do Norte'),
(504, 31, 'BR', 'RS', 'Rio Grande do Sul'),
(505, 31, 'BR', 'RO', 'Rondônia'),
(506, 31, 'BR', 'RR', 'Roraima'),
(507, 31, 'BR', 'SC', 'Santa Catarina'),
(508, 31, 'BR', 'SP', 'São Paulo'),
(509, 31, 'BR', 'SE', 'Sergipe'),
(510, 31, 'BR', 'TO', 'Tocantins'),
(511, 31, 'BR', 'DF', 'Distrito Federal'),
(512, 59, 'HR', 'HR-01', 'Zagrebačka županija'),
(513, 59, 'HR', 'HR-02', 'Krapinsko-zagorska županija'),
(514, 59, 'HR', 'HR-03', 'Sisačko-moslavačka županija'),
(515, 59, 'HR', 'HR-04', 'Karlovačka županija'),
(516, 59, 'HR', 'HR-05', 'Varaždinska županija'),
(517, 59, 'HR', 'HR-06', 'Koprivničko-križevačka županija'),
(518, 59, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija'),
(519, 59, 'HR', 'HR-08', 'Primorsko-goranska županija'),
(520, 59, 'HR', 'HR-09', 'Ličko-senjska županija'),
(521, 59, 'HR', 'HR-10', 'Virovitičko-podravska županija'),
(522, 59, 'HR', 'HR-11', 'Požeško-slavonska županija'),
(523, 59, 'HR', 'HR-12', 'Brodsko-posavska županija'),
(524, 59, 'HR', 'HR-13', 'Zadarska županija'),
(525, 59, 'HR', 'HR-14', 'Osječko-baranjska županija'),
(526, 59, 'HR', 'HR-15', 'Šibensko-kninska županija'),
(527, 59, 'HR', 'HR-16', 'Vukovarsko-srijemska županija'),
(528, 59, 'HR', 'HR-17', 'Splitsko-dalmatinska županija'),
(529, 59, 'HR', 'HR-18', 'Istarska županija'),
(530, 59, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija'),
(531, 59, 'HR', 'HR-20', 'Međimurska županija'),
(532, 59, 'HR', 'HR-21', 'Grad Zagreb'),
(533, 106, 'IN', 'AN', 'Andaman and Nicobar Islands'),
(534, 106, 'IN', 'AP', 'Andhra Pradesh'),
(535, 106, 'IN', 'AR', 'Arunachal Pradesh'),
(536, 106, 'IN', 'AS', 'Assam'),
(537, 106, 'IN', 'BR', 'Bihar'),
(538, 106, 'IN', 'CH', 'Chandigarh'),
(539, 106, 'IN', 'CT', 'Chhattisgarh'),
(540, 106, 'IN', 'DN', 'Dadra and Nagar Haveli'),
(541, 106, 'IN', 'DD', 'Daman and Diu'),
(542, 106, 'IN', 'DL', 'Delhi'),
(543, 106, 'IN', 'GA', 'Goa'),
(544, 106, 'IN', 'GJ', 'Gujarat'),
(545, 106, 'IN', 'HR', 'Haryana'),
(546, 106, 'IN', 'HP', 'Himachal Pradesh'),
(547, 106, 'IN', 'JK', 'Jammu and Kashmir'),
(548, 106, 'IN', 'JH', 'Jharkhand'),
(549, 106, 'IN', 'KA', 'Karnataka'),
(550, 106, 'IN', 'KL', 'Kerala'),
(551, 106, 'IN', 'LD', 'Lakshadweep'),
(552, 106, 'IN', 'MP', 'Madhya Pradesh'),
(553, 106, 'IN', 'MH', 'Maharashtra'),
(554, 106, 'IN', 'MN', 'Manipur'),
(555, 106, 'IN', 'ML', 'Meghalaya'),
(556, 106, 'IN', 'MZ', 'Mizoram'),
(557, 106, 'IN', 'NL', 'Nagaland'),
(558, 106, 'IN', 'OR', 'Odisha'),
(559, 106, 'IN', 'PY', 'Puducherry'),
(560, 106, 'IN', 'PB', 'Punjab'),
(561, 106, 'IN', 'RJ', 'Rajasthan'),
(562, 106, 'IN', 'SK', 'Sikkim'),
(563, 106, 'IN', 'TN', 'Tamil Nadu'),
(564, 106, 'IN', 'TG', 'Telangana'),
(565, 106, 'IN', 'TR', 'Tripura'),
(566, 106, 'IN', 'UP', 'Uttar Pradesh'),
(567, 106, 'IN', 'UT', 'Uttarakhand'),
(568, 106, 'IN', 'WB', 'West Bengal'),
(569, 176, 'PY', 'PY-16', 'Alto Paraguay'),
(570, 176, 'PY', 'PY-10', 'Alto Paraná'),
(571, 176, 'PY', 'PY-13', 'Amambay'),
(572, 176, 'PY', 'PY-ASU', 'Asunción'),
(573, 176, 'PY', 'PY-19', 'Boquerón'),
(574, 176, 'PY', 'PY-5', 'Caaguazú'),
(575, 176, 'PY', 'PY-6', 'Caazapá'),
(576, 176, 'PY', 'PY-14', 'Canindeyú'),
(577, 176, 'PY', 'PY-11', 'Central'),
(578, 176, 'PY', 'PY-1', 'Concepción'),
(579, 176, 'PY', 'PY-3', 'Cordillera'),
(580, 176, 'PY', 'PY-4', 'Guairá'),
(581, 176, 'PY', 'PY-7', 'Itapúa'),
(582, 176, 'PY', 'PY-8', 'Misiones'),
(583, 176, 'PY', 'PY-9', 'Paraguarí'),
(584, 176, 'PY', 'PY-15', 'Presidente Hayes'),
(585, 176, 'PY', 'PY-2', 'San Pedro'),
(586, 176, 'PY', 'PY-12', 'Ñeembucú');

-- --------------------------------------------------------

--
-- Table structure for table `country_state_translations`
--

CREATE TABLE `country_state_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_state_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `default_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE `country_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `decimal` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `group_separator` varchar(255) NOT NULL DEFAULT ',',
  `decimal_separator` varchar(255) NOT NULL DEFAULT '.',
  `currency_position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `decimal`, `group_separator`, `decimal_separator`, `currency_position`, `created_at`, `updated_at`) VALUES
(1, 'TRY', 'Türk Lirası', '₺', 2, ',', '.', NULL, NULL, NULL),
(2, 'USD', 'USD', '$', 2, '\'', '.', 'left', '2025-05-06 22:16:21', '2025-05-06 22:16:21'),
(3, 'EUR', 'Euro', '€', 2, ',', '.', 'left', '2025-05-10 21:20:29', '2025-05-10 21:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `currency_exchange_rates`
--

CREATE TABLE `currency_exchange_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `rate` decimal(24,12) NOT NULL,
  `target_currency` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_exchange_rates`
--

INSERT INTO `currency_exchange_rates` (`id`, `rate`, `target_currency`, `created_at`, `updated_at`) VALUES
(1, 0.025792274737, 2, '2025-05-10 17:54:27', '2025-05-11 00:24:28'),
(3, 0.022919111945, 3, '2025-05-10 21:21:23', '2025-05-11 00:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `wallet_balance` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) DEFAULT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribed_to_news_letter` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `wallet_balance`, `gender`, `date_of_birth`, `email`, `phone`, `image`, `status`, `password`, `api_token`, `customer_group_id`, `channel_id`, `subscribed_to_news_letter`, `is_verified`, `is_suspended`, `token`, `remember_token`, `created_at`, `updated_at`, `balance`) VALUES
(1, 'EMAD', 'ALABDUL RAHMAN', 0.0000, NULL, NULL, 'emad.r.abd@icloud.com', NULL, NULL, 1, '$2y$12$t9DjFThauSkSL9qlAOVCmO2isiF/6T.IKxVqGuxS4BOBGZZSMnXlu', '6GddNeeoZKQRGctzD5MHTLMKMNHMF2IKNNomKmuThiOZNzyEXUyi8QEsT2ycrQnEbWdXa6dkM6UhkiXv', 1, 1, 0, 1, 0, '1d2578573a81ffbf96a14d7779b807ee', NULL, '2025-05-08 18:18:16', '2025-05-08 18:18:16', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `code`, `name`, `is_user_defined`, `created_at`, `updated_at`) VALUES
(1, 'guest', 'Misafir', 0, NULL, NULL),
(2, 'general', 'Genel', 0, NULL, NULL),
(3, 'wholesale', 'Toptan', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_notes`
--

CREATE TABLE `customer_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `note` text NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_password_resets`
--

CREATE TABLE `customer_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_social_accounts`
--

CREATE TABLE `customer_social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_rma_field`
--

CREATE TABLE `custom_rma_field` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `code` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is` varchar(255) DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT 0,
  `position` int(11) DEFAULT NULL,
  `input_validation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_rma_option_field`
--

CREATE TABLE `custom_rma_option_field` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `additional_rma_field_id` int(11) NOT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `option_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datagrid_saved_filters`
--

CREATE TABLE `datagrid_saved_filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `applied` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`applied`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

CREATE TABLE `downloadable_link_purchased` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `download_bought` int(11) NOT NULL DEFAULT 0,
  `download_used` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_item_id` int(10) UNSIGNED NOT NULL,
  `download_canceled` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gdpr_data_request`
--

CREATE TABLE `gdpr_data_request` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL,
  `revoked_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(255) NOT NULL DEFAULT 'pending',
  `process_in_queue` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `validation_strategy` varchar(255) NOT NULL,
  `allowed_errors` int(11) NOT NULL DEFAULT 0,
  `processed_rows_count` int(11) NOT NULL DEFAULT 0,
  `invalid_rows_count` int(11) NOT NULL DEFAULT 0,
  `errors_count` int(11) NOT NULL DEFAULT 0,
  `errors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`errors`)),
  `field_separator` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `images_directory_path` varchar(255) DEFAULT NULL,
  `error_file_path` varchar(255) DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`summary`)),
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_batches`
--

CREATE TABLE `import_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(255) NOT NULL DEFAULT 'pending',
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`summary`)),
  `import_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_sources`
--

CREATE TABLE `inventory_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `contact_fax` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `latitude` decimal(10,5) DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_sources`
--

INSERT INTO `inventory_sources` (`id`, `code`, `name`, `description`, `contact_name`, `contact_email`, `contact_number`, `contact_fax`, `country`, `state`, `city`, `street`, `postcode`, `priority`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(2, 'USD', 'emad', '', 'emad', 'emad.r.abd@icloud.com', '05319625528', '', 'TR', 'mersin/mezitli', 'mersin', 'turkey mersin', '33300', 0, 0.00000, 0.00000, 1, '2025-05-08 19:22:50', '2025-05-08 19:47:23'),
(3, 'qwe', 'project', '', 'project', 'emad.r.abd@icloud.com', '05319625528', '', 'TR', 'mersin/mezitli', 'mersin', 'turkey mersin', '33300', 1, 50.00000, 70.00000, 1, '2025-05-08 19:57:29', '2025-05-08 19:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(255) DEFAULT NULL,
  `channel_currency_code` varchar(255) DEFAULT NULL,
  `order_currency_code` varchar(255) DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `reminders` int(11) NOT NULL DEFAULT 0,
  `next_reminder_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `increment_id`, `state`, `email_sent`, `total_qty`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `sub_total`, `base_sub_total`, `grand_total`, `base_grand_total`, `shipping_amount`, `base_shipping_amount`, `tax_amount`, `base_tax_amount`, `discount_amount`, `base_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `order_id`, `transaction_id`, `reminders`, `next_reminder_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'paid', 1, 1, 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 2, NULL, 0, NULL, '2025-05-08 18:29:31', '2025-05-10 22:19:06'),
(2, '2', 'paid', 1, 1, 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 6, NULL, 0, NULL, '2025-05-10 10:26:14', '2025-05-10 22:19:06'),
(3, '3', 'paid', 1, 1, 'TRY', 'TRY', 'TRY', 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 7, NULL, 0, NULL, '2025-05-10 10:27:35', '2025-05-10 22:19:06'),
(4, '4', 'paid', 1, 1, 'TRY', 'TRY', 'TRY', 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 9, NULL, 0, NULL, '2025-05-10 17:07:57', '2025-05-10 22:19:06'),
(5, 'KMD-00000005-TR', 'paid', 1, 1, 'TRY', 'TRY', 'EUR', 13.7285, 599.0000, 13.7285, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13.7285, 599.0000, 0.0000, 0.0000, 10, NULL, 0, NULL, '2025-05-10 21:33:38', '2025-05-10 22:19:06'),
(6, 'KMD-00000006-TR', 'paid', 1, 1, 'TRY', 'TRY', 'TRY', 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 12, NULL, 0, NULL, '2025-05-10 21:41:32', '2025-05-10 22:19:06'),
(7, 'KMD-00000007-TR', 'paid', 1, 1, 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 13, NULL, 0, NULL, '2025-05-10 21:50:33', '2025-05-10 22:19:06'),
(8, 'KMD-00000008-TR', 'paid', 1, 1, 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 14, NULL, 0, NULL, '2025-05-10 22:13:42', '2025-05-10 22:19:06'),
(9, 'KMD-00000009-TR', 'paid', 1, 1, 'TRY', 'TRY', 'TRY', 56999.0000, 56999.0000, 56999.0000, 56999.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 56999.0000, 56999.0000, 0.0000, 0.0000, 15, NULL, 0, NULL, '2025-05-10 22:19:03', '2025-05-10 22:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `parent_id`, `name`, `description`, `sku`, `qty`, `price`, `base_price`, `total`, `base_total`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_item_id`, `invoice_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 'temporary-sku-4b7138', 1, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 2, 1, '{\"cart_id\":4,\"quantity\":1,\"product_id\":39,\"locale\":\"tr\"}', '2025-05-08 18:29:31', '2025-05-08 18:29:31'),
(2, NULL, 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 'temporary-sku-4b7138', 1, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 6, 2, '{\"cart_id\":10,\"product_id\":\"39\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 10:26:14', '2025-05-10 10:26:14'),
(3, NULL, 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, 'CHZ-Def-4', 1, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 33, 'Webkul\\Product\\Models\\Product', 7, 3, '{\"cart_id\":11,\"quantity\":1,\"product_id\":33,\"locale\":\"tr\"}', '2025-05-10 10:27:35', '2025-05-10 10:27:35'),
(4, NULL, 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, 'temporary-sku-555195', 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 32, 'Webkul\\Product\\Models\\Product', 9, 4, '{\"cart_id\":13,\"quantity\":1,\"product_id\":32,\"locale\":\"tr\"}', '2025-05-10 17:07:57', '2025-05-10 17:07:57'),
(5, NULL, 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 'temporary-sku-4b7138', 1, 13.7285, 599.0000, 13.7285, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13.7285, 599.0000, 13.7285, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 10, 5, '{\"cart_id\":14,\"product_id\":\"39\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 21:33:38', '2025-05-10 21:33:38'),
(6, NULL, 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, 'temporary-sku-555195', 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 32, 'Webkul\\Product\\Models\\Product', 12, 6, '{\"cart_id\":16,\"quantity\":1,\"product_id\":32,\"locale\":\"tr\"}', '2025-05-10 21:41:32', '2025-05-10 21:41:32'),
(7, NULL, 'aml-Kerbl Elastratör Pensi', NULL, 'temporary-sku-d7e95e', 1, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 36, 'Webkul\\Product\\Models\\Product', 13, 7, '{\"cart_id\":17,\"product_id\":\"36\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 21:50:33', '2025-05-10 21:50:33'),
(8, NULL, 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 'temporary-sku-4b7138', 1, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 14, 8, '{\"cart_id\":18,\"product_id\":\"39\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 22:13:42', '2025-05-10 22:13:42'),
(9, NULL, 'Def-Aselsan Heartline Ekranlı Tam Otomatik Defibrilatör Cihazı (OED)', NULL, 'CHZ-Def-2', 1, 56999.0000, 56999.0000, 56999.0000, 56999.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 56999.0000, 56999.0000, 56999.0000, 56999.0000, 30, 'Webkul\\Product\\Models\\Product', 15, 9, '{\"cart_id\":20,\"product_id\":\"30\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 22:19:03', '2025-05-10 22:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` text NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

CREATE TABLE `locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `direction` enum('ltr','rtl') NOT NULL DEFAULT 'ltr',
  `logo_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locales`
--

INSERT INTO `locales` (`id`, `code`, `name`, `direction`, `logo_path`, `created_at`, `updated_at`) VALUES
(1, 'tr', 'Türkçe', 'ltr', 'locales/AA1EzepzkXSsHMLQnlfro0xLKkE4cUTLJprGaxKG.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaigns`
--

CREATE TABLE `marketing_campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL,
  `mail_to` varchar(255) NOT NULL,
  `spooling` varchar(255) DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `marketing_template_id` int(10) UNSIGNED DEFAULT NULL,
  `marketing_event_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_events`
--

CREATE TABLE `marketing_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_templates`
--

CREATE TABLE `marketing_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_admin_password_resets_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_06_12_111907_create_admins_table', 1),
(5, '2018_06_13_055341_create_roles_table', 1),
(6, '2018_07_05_130148_create_attributes_table', 1),
(7, '2018_07_05_132854_create_attribute_translations_table', 1),
(8, '2018_07_05_135150_create_attribute_families_table', 1),
(9, '2018_07_05_135152_create_attribute_groups_table', 1),
(10, '2018_07_05_140832_create_attribute_options_table', 1),
(11, '2018_07_05_140856_create_attribute_option_translations_table', 1),
(12, '2018_07_05_142820_create_categories_table', 1),
(13, '2018_07_10_055143_create_locales_table', 1),
(14, '2018_07_20_054426_create_countries_table', 1),
(15, '2018_07_20_054502_create_currencies_table', 1),
(16, '2018_07_20_054542_create_currency_exchange_rates_table', 1),
(17, '2018_07_20_064849_create_channels_table', 1),
(18, '2018_07_21_142836_create_category_translations_table', 1),
(19, '2018_07_23_110040_create_inventory_sources_table', 1),
(20, '2018_07_24_082635_create_customer_groups_table', 1),
(21, '2018_07_24_082930_create_customers_table', 1),
(22, '2018_07_27_065727_create_products_table', 1),
(23, '2018_07_27_070011_create_product_attribute_values_table', 1),
(24, '2018_07_27_092623_create_product_reviews_table', 1),
(25, '2018_07_27_113941_create_product_images_table', 1),
(26, '2018_07_27_113956_create_product_inventories_table', 1),
(27, '2018_08_30_064755_create_tax_categories_table', 1),
(28, '2018_08_30_065042_create_tax_rates_table', 1),
(29, '2018_08_30_065840_create_tax_mappings_table', 1),
(30, '2018_09_05_150444_create_cart_table', 1),
(31, '2018_09_05_150915_create_cart_items_table', 1),
(32, '2018_09_11_064045_customer_password_resets', 1),
(33, '2018_09_19_093453_create_cart_payment', 1),
(34, '2018_09_19_093508_create_cart_shipping_rates_table', 1),
(35, '2018_09_20_060658_create_core_config_table', 1),
(36, '2018_09_27_113154_create_orders_table', 1),
(37, '2018_09_27_113207_create_order_items_table', 1),
(38, '2018_09_27_115022_create_shipments_table', 1),
(39, '2018_09_27_115029_create_shipment_items_table', 1),
(40, '2018_09_27_115135_create_invoices_table', 1),
(41, '2018_09_27_115144_create_invoice_items_table', 1),
(42, '2018_10_01_095504_create_order_payment_table', 1),
(43, '2018_10_03_025230_create_wishlist_table', 1),
(44, '2018_10_12_101803_create_country_translations_table', 1),
(45, '2018_10_12_101913_create_country_states_table', 1),
(46, '2018_10_12_101923_create_country_state_translations_table', 1),
(47, '2018_11_16_173504_create_subscribers_list_table', 1),
(48, '2018_11_21_144411_create_cart_item_inventories_table', 1),
(49, '2018_12_06_185202_create_product_flat_table', 1),
(50, '2018_12_24_123812_create_channel_inventory_sources_table', 1),
(51, '2018_12_26_165327_create_product_ordered_inventories_table', 1),
(52, '2019_05_13_024321_create_cart_rules_table', 1),
(53, '2019_05_13_024322_create_cart_rule_channels_table', 1),
(54, '2019_05_13_024323_create_cart_rule_customer_groups_table', 1),
(55, '2019_05_13_024324_create_cart_rule_translations_table', 1),
(56, '2019_05_13_024325_create_cart_rule_customers_table', 1),
(57, '2019_05_13_024326_create_cart_rule_coupons_table', 1),
(58, '2019_05_13_024327_create_cart_rule_coupon_usage_table', 1),
(59, '2019_06_17_180258_create_product_downloadable_samples_table', 1),
(60, '2019_06_17_180314_create_product_downloadable_sample_translations_table', 1),
(61, '2019_06_17_180325_create_product_downloadable_links_table', 1),
(62, '2019_06_17_180346_create_product_downloadable_link_translations_table', 1),
(63, '2019_06_21_202249_create_downloadable_link_purchased_table', 1),
(64, '2019_07_02_180307_create_booking_products_table', 1),
(65, '2019_07_05_154415_create_booking_product_default_slots_table', 1),
(66, '2019_07_05_154429_create_booking_product_appointment_slots_table', 1),
(67, '2019_07_05_154440_create_booking_product_event_tickets_table', 1),
(68, '2019_07_05_154451_create_booking_product_rental_slots_table', 1),
(69, '2019_07_05_154502_create_booking_product_table_slots_table', 1),
(70, '2019_07_30_153530_create_cms_pages_table', 1),
(71, '2019_07_31_143339_create_category_filterable_attributes_table', 1),
(72, '2019_08_02_105320_create_product_grouped_products_table', 1),
(73, '2019_08_20_170510_create_product_bundle_options_table', 1),
(74, '2019_08_20_170520_create_product_bundle_option_translations_table', 1),
(75, '2019_08_20_170528_create_product_bundle_option_products_table', 1),
(76, '2019_09_11_184511_create_refunds_table', 1),
(77, '2019_09_11_184519_create_refund_items_table', 1),
(78, '2019_12_03_184613_create_catalog_rules_table', 1),
(79, '2019_12_03_184651_create_catalog_rule_channels_table', 1),
(80, '2019_12_03_184732_create_catalog_rule_customer_groups_table', 1),
(81, '2019_12_06_101110_create_catalog_rule_products_table', 1),
(82, '2019_12_06_110507_create_catalog_rule_product_prices_table', 1),
(83, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(84, '2020_01_14_191854_create_cms_page_translations_table', 1),
(85, '2020_01_15_130209_create_cms_page_channels_table', 1),
(86, '2020_02_18_165639_create_bookings_table', 1),
(87, '2020_02_21_121201_create_booking_product_event_ticket_translations_table', 1),
(88, '2020_04_16_185147_add_table_addresses', 1),
(89, '2020_05_06_171638_create_order_comments_table', 1),
(90, '2020_05_21_171500_create_product_customer_group_prices_table', 1),
(91, '2020_06_25_162154_create_customer_social_accounts_table', 1),
(92, '2020_08_07_174804_create_gdpr_data_request_table', 1),
(93, '2020_11_19_112228_create_product_videos_table', 1),
(94, '2020_11_26_141455_create_marketing_templates_table', 1),
(95, '2020_11_26_150534_create_marketing_events_table', 1),
(96, '2020_11_26_150644_create_marketing_campaigns_table', 1),
(97, '2020_12_21_000200_create_channel_translations_table', 1),
(98, '2020_12_27_121950_create_jobs_table', 1),
(99, '2021_03_11_212124_create_order_transactions_table', 1),
(100, '2021_04_07_132010_create_product_review_images_table', 1),
(101, '2021_12_15_104544_notifications', 1),
(102, '2022_03_15_160510_create_failed_jobs_table', 1),
(103, '2022_04_01_094622_create_sitemaps_table', 1),
(104, '2022_10_03_144232_create_product_price_indices_table', 1),
(105, '2022_10_04_144444_create_job_batches_table', 1),
(106, '2022_10_08_134150_create_product_inventory_indices_table', 1),
(107, '2023_05_26_213105_create_wishlist_items_table', 1),
(108, '2023_05_26_213120_create_compare_items_table', 1),
(109, '2023_06_27_163529_rename_product_review_images_to_product_review_attachments', 1),
(110, '2023_07_06_140013_add_logo_path_column_to_locales', 1),
(111, '2023_07_10_184256_create_theme_customizations_table', 1),
(112, '2023_07_12_181722_remove_home_page_and_footer_content_column_from_channel_translations_table', 1),
(113, '2023_07_20_185324_add_column_column_in_attribute_groups_table', 1),
(114, '2023_07_25_145943_add_regex_column_in_attributes_table', 1),
(115, '2023_07_25_165945_drop_notes_column_from_customers_table', 1),
(116, '2023_07_25_171058_create_customer_notes_table', 1),
(117, '2023_07_31_125232_rename_image_and_category_banner_columns_from_categories_table', 1),
(118, '2023_09_15_170053_create_theme_customization_translations_table', 1),
(119, '2023_09_20_102031_add_default_value_column_in_attributes_table', 1),
(120, '2023_09_20_102635_add_inventories_group_in_attribute_groups_table', 1),
(121, '2023_09_26_155709_add_columns_to_currencies', 1),
(122, '2023_10_05_163612_create_visits_table', 1),
(123, '2023_10_12_090446_add_tax_category_id_column_in_order_items_table', 1),
(124, '2023_11_08_054614_add_code_column_in_attribute_groups_table', 1),
(125, '2023_11_08_140116_create_search_terms_table', 1),
(126, '2023_11_09_162805_create_url_rewrites_table', 1),
(127, '2023_11_17_150401_create_search_synonyms_table', 1),
(128, '2023_12_11_054614_add_channel_id_column_in_product_price_indices_table', 1),
(129, '2024_01_11_154640_create_imports_table', 1),
(130, '2024_01_11_154741_create_import_batches_table', 1),
(131, '2024_01_19_170350_add_unique_id_column_in_product_attribute_values_table', 1),
(132, '2024_01_19_170350_add_unique_id_column_in_product_customer_group_prices_table', 1),
(133, '2024_01_22_170814_add_unique_index_in_mapping_tables', 1),
(134, '2024_02_26_153000_add_columns_to_addresses_table', 1),
(135, '2024_03_07_193421_rename_address1_column_in_addresses_table', 1),
(136, '2024_04_16_144400_add_cart_id_column_in_cart_shipping_rates_table', 1),
(137, '2024_04_19_102939_add_incl_tax_columns_in_orders_table', 1),
(138, '2024_04_19_135405_add_incl_tax_columns_in_cart_items_table', 1),
(139, '2024_04_19_144641_add_incl_tax_columns_in_order_items_table', 1),
(140, '2024_04_23_133154_add_incl_tax_columns_in_cart_table', 1),
(141, '2024_04_23_150945_add_incl_tax_columns_in_cart_shipping_rates_table', 1),
(142, '2024_04_24_102939_add_incl_tax_columns_in_invoices_table', 1),
(143, '2024_04_24_102939_add_incl_tax_columns_in_refunds_table', 1),
(144, '2024_04_24_144641_add_incl_tax_columns_in_invoice_items_table', 1),
(145, '2024_04_24_144641_add_incl_tax_columns_in_refund_items_table', 1),
(146, '2024_04_24_144641_add_incl_tax_columns_in_shipment_items_table', 1),
(147, '2024_05_10_152848_create_saved_filters_table', 1),
(148, '2024_06_03_174128_create_product_channels_table', 1),
(149, '2024_06_04_130527_add_channel_id_column_in_customers_table', 1),
(150, '2024_06_04_134403_add_channel_id_column_in_visits_table', 1),
(151, '2024_06_13_184426_add_theme_column_into_theme_customizations_table', 1),
(152, '2024_07_17_172645_add_additional_column_to_sitemaps_table', 1),
(153, '2024_10_11_135010_create_product_customizable_options_table', 1),
(154, '2024_10_11_135110_create_product_customizable_option_translations_table', 1),
(155, '2024_10_11_135228_create_product_customizable_option_prices_table', 1),
(156, '2025_05_08_194225_add_balance_to_customers_table', 2),
(157, '2025_05_09_214128_create_supplier_branches_table', 3),
(158, '2025_05_10_131503_add_wallet_balance_to_customers_table', 4),
(159, '2020_04_21_125500_create_rma_table', 5),
(160, '2020_04_21_130724_create_rma_reasons_table', 5),
(161, '2020_04_21_130729_create_rma_items_table', 5),
(162, '2020_04_22_141649_create_rma_images_table', 5),
(163, '2020_04_22_171715_create_rma_messages_table', 5),
(164, '2023_04_26_152057_add_variant_id_column_into_rma_items', 5),
(165, '2023_06_15_154924_add_is_admin_to_rma_reasons_table', 5),
(166, '2024_07_25_175131_create_reason_resolutions_table', 5),
(167, '2024_08_21_134052_create_rma_rules_table', 5),
(168, '2024_08_27_134142_create_rma_status', 5),
(169, '2024_08_27_134144_create_product_allow_rma', 5),
(170, '2024_10_21_153122_create_custom_rma_field', 5),
(171, '2024_10_21_194940_create_additional_rma_field', 5),
(172, '2024_10_23_153122_create_custom_rma_option_field', 5),
(173, '2024_10_23_153123_add_default_column_to_rma_status', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `read`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'order', 1, 1, '2025-05-08 18:19:54', '2025-05-10 09:11:17'),
(2, 'order', 1, 2, '2025-05-08 18:21:44', '2025-05-10 09:11:17'),
(3, 'order', 1, 3, '2025-05-08 18:54:29', '2025-05-10 09:11:17'),
(4, 'order', 1, 4, '2025-05-08 19:13:15', '2025-05-10 09:11:17'),
(5, 'order', 1, 5, '2025-05-08 19:28:55', '2025-05-10 09:11:17'),
(6, 'order', 1, 6, '2025-05-10 10:26:14', '2025-05-10 21:40:14'),
(7, 'order', 1, 7, '2025-05-10 10:27:35', '2025-05-10 10:30:50'),
(8, 'order', 1, 8, '2025-05-10 10:34:23', '2025-05-10 21:40:14'),
(9, 'order', 1, 9, '2025-05-10 15:57:55', '2025-05-10 17:04:04'),
(10, 'order', 1, 10, '2025-05-10 21:32:56', '2025-05-10 21:33:24'),
(11, 'order', 1, 11, '2025-05-10 21:40:01', '2025-05-10 21:40:14'),
(12, 'order', 1, 12, '2025-05-10 21:41:11', '2025-05-10 21:41:21'),
(13, 'order', 1, 13, '2025-05-10 21:50:09', '2025-05-10 21:50:26'),
(14, 'order', 1, 14, '2025-05-10 22:13:16', '2025-05-10 22:13:34'),
(15, 'order', 1, 15, '2025-05-10 22:18:25', '2025-05-10 22:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `channel_name` varchar(255) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_first_name` varchar(255) DEFAULT NULL,
  `customer_last_name` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_title` varchar(255) DEFAULT NULL,
  `shipping_description` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `total_item_count` int(11) DEFAULT NULL,
  `total_qty_ordered` int(11) DEFAULT NULL,
  `base_currency_code` varchar(255) DEFAULT NULL,
  `channel_currency_code` varchar(255) DEFAULT NULL,
  `order_currency_code` varchar(255) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `grand_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `sub_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `sub_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_invoiced` decimal(12,4) DEFAULT 0.0000,
  `shipping_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_refunded` decimal(12,4) DEFAULT 0.0000,
  `shipping_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_type` varchar(255) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `applied_cart_rule_ids` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `increment_id`, `status`, `channel_name`, `is_guest`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `shipping_title`, `shipping_description`, `coupon_code`, `is_gift`, `total_item_count`, `total_qty_ordered`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `grand_total`, `base_grand_total`, `grand_total_invoiced`, `base_grand_total_invoiced`, `grand_total_refunded`, `base_grand_total_refunded`, `sub_total`, `base_sub_total`, `sub_total_invoiced`, `base_sub_total_invoiced`, `sub_total_refunded`, `base_sub_total_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `shipping_amount`, `base_shipping_amount`, `shipping_invoiced`, `base_shipping_invoiced`, `shipping_refunded`, `base_shipping_refunded`, `shipping_discount_amount`, `base_shipping_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `shipping_tax_refunded`, `base_shipping_tax_refunded`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `customer_id`, `customer_type`, `channel_id`, `channel_type`, `cart_id`, `applied_cart_rule_ids`, `created_at`, `updated_at`) VALUES
(1, '1', 'canceled', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 4, NULL, '2025-05-08 18:19:49', '2025-05-08 18:20:58'),
(2, '2', 'closed', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 5, NULL, '2025-05-08 18:21:42', '2025-05-10 14:37:12'),
(3, '3', 'canceled', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 4, 'TRY', 'TRY', 'TRY', 147000.0000, 147000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 147000.0000, 147000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 147000.0000, 147000.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 7, NULL, '2025-05-08 18:54:25', '2025-05-10 14:50:59'),
(4, '4', 'canceled', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 8, NULL, '2025-05-08 19:13:10', '2025-05-08 19:27:58'),
(5, '5', 'canceled', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 9, NULL, '2025-05-08 19:28:50', '2025-05-10 14:51:30'),
(6, '6', 'closed', 'Varsayılan', 1, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', 10, NULL, '2025-05-10 10:26:10', '2025-05-10 14:38:07'),
(7, '7', 'completed', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 11, NULL, '2025-05-10 10:27:30', '2025-05-10 13:57:01'),
(8, '8', 'canceled', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 36750.0000, 36750.0000, 0.0000, 0.0000, 0.0000, 0.0000, 36750.0000, 36750.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 36750.0000, 36750.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 12, NULL, '2025-05-10 10:34:20', '2025-05-10 10:35:10'),
(9, '9', 'closed', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 13, NULL, '2025-05-10 15:57:52', '2025-05-10 17:08:25'),
(10, '10', 'processing', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'EUR', 13.7300, 599.0000, 13.7285, 599.0000, 0.0000, 0.0000, 13.7300, 599.0000, 13.7285, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13.7300, 599.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 14, NULL, '2025-05-10 21:32:52', '2025-05-10 21:33:38'),
(11, '11', 'pending', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 15, NULL, '2025-05-10 21:39:58', '2025-05-10 21:39:58'),
(12, '12', 'closed', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 16, NULL, '2025-05-10 21:41:08', '2025-05-10 21:42:50'),
(13, '13', 'processing', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 17, NULL, '2025-05-10 21:50:06', '2025-05-10 21:50:33'),
(14, '14', 'processing', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 18, NULL, '2025-05-10 22:13:13', '2025-05-10 22:13:42'),
(15, '15', 'processing', 'Varsayılan', 0, 'emad.r.abd@icloud.com', 'EMAD', 'ALABDUL RAHMAN', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'TRY', 'TRY', 'TRY', 56999.0000, 56999.0000, 56999.0000, 56999.0000, 0.0000, 0.0000, 56999.0000, 56999.0000, 56999.0000, 56999.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 56999.0000, 56999.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 20, NULL, '2025-05-10 22:18:21', '2025-05-10 22:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_comments`
--

CREATE TABLE `order_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT 0.0000,
  `total_weight` decimal(12,4) DEFAULT 0.0000,
  `qty_ordered` int(11) DEFAULT 0,
  `qty_shipped` int(11) DEFAULT 0,
  `qty_invoiced` int(11) DEFAULT 0,
  `qty_canceled` int(11) DEFAULT 0,
  `qty_refunded` int(11) DEFAULT 0,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_invoiced` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_invoiced` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `amount_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_amount_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_category_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `qty_ordered`, `qty_shipped`, `qty_invoiced`, `qty_canceled`, `qty_refunded`, `price`, `base_price`, `total`, `base_total`, `total_invoiced`, `base_total_invoiced`, `amount_refunded`, `base_amount_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_id`, `tax_category_id`, `parent_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1, 0, 0, 1, 0, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 1, NULL, NULL, '{\"cart_id\":4,\"quantity\":1,\"product_id\":39,\"locale\":\"tr\"}', '2025-05-08 18:19:49', '2025-05-08 18:20:58'),
(2, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1, 0, 1, 0, 1, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 2, NULL, NULL, '{\"cart_id\":4,\"quantity\":1,\"product_id\":39,\"locale\":\"tr\"}', '2025-05-08 18:21:42', '2025-05-10 14:37:12'),
(3, 'CHZ-03', 'simple', 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, 5.0000, 20.0000, 4, 0, 0, 4, 0, 36750.0000, 36750.0000, 147000.0000, 147000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 36750.0000, 36750.0000, 147000.0000, 147000.0000, 16, 'Webkul\\Product\\Models\\Product', 3, NULL, NULL, '{\"cart_id\":7,\"quantity\":4,\"product_id\":16,\"locale\":\"tr\"}', '2025-05-08 18:54:25', '2025-05-10 14:50:59'),
(4, 'CHZ-Def-4', 'simple', 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, 5.0000, 5.0000, 1, 0, 0, 1, 0, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 33, 'Webkul\\Product\\Models\\Product', 4, NULL, NULL, '{\"cart_id\":8,\"quantity\":1,\"product_id\":33,\"locale\":\"tr\"}', '2025-05-08 19:13:10', '2025-05-08 19:27:58'),
(5, 'CHZ-Def-4', 'simple', 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, 5.0000, 5.0000, 1, 1, 0, 1, 0, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 33, 'Webkul\\Product\\Models\\Product', 5, NULL, NULL, '{\"cart_id\":9,\"quantity\":1,\"product_id\":33,\"locale\":\"tr\"}', '2025-05-08 19:28:50', '2025-05-10 14:51:30'),
(6, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1, 0, 1, 0, 1, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 6, NULL, NULL, '{\"cart_id\":10,\"product_id\":\"39\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 10:26:10', '2025-05-10 14:38:07'),
(7, 'CHZ-Def-4', 'simple', 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, 5.0000, 5.0000, 1, 1, 1, 0, 0, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 33, 'Webkul\\Product\\Models\\Product', 7, NULL, NULL, '{\"cart_id\":11,\"quantity\":1,\"product_id\":33,\"locale\":\"tr\"}', '2025-05-10 10:27:30', '2025-05-10 13:57:01'),
(8, 'CHZ-03', 'simple', 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, 5.0000, 5.0000, 1, 0, 0, 1, 0, 36750.0000, 36750.0000, 36750.0000, 36750.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 36750.0000, 36750.0000, 36750.0000, 36750.0000, 16, 'Webkul\\Product\\Models\\Product', 8, NULL, NULL, '{\"cart_id\":12,\"quantity\":1,\"product_id\":16,\"locale\":\"tr\"}', '2025-05-10 10:34:20', '2025-05-10 10:35:10'),
(9, 'temporary-sku-555195', 'simple', 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, 1.0000, 1.0000, 1, 1, 1, 0, 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 32, 'Webkul\\Product\\Models\\Product', 9, NULL, NULL, '{\"cart_id\":13,\"quantity\":1,\"product_id\":32,\"locale\":\"tr\"}', '2025-05-10 15:57:52', '2025-05-10 17:08:25'),
(10, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1, 0, 1, 0, 0, 13.7285, 599.0000, 13.7285, 599.0000, 13.7285, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 13.7285, 599.0000, 13.7285, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 10, NULL, NULL, '{\"cart_id\":14,\"product_id\":\"39\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 21:32:52', '2025-05-10 21:33:38'),
(11, 'temporary-sku-d7e95e', 'simple', 'aml-Kerbl Elastratör Pensi', NULL, 1.0000, 1.0000, 1, 0, 0, 0, 0, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 36, 'Webkul\\Product\\Models\\Product', 11, NULL, NULL, '{\"cart_id\":15,\"quantity\":1,\"product_id\":36,\"locale\":\"tr\"}', '2025-05-10 21:39:59', '2025-05-10 21:39:59'),
(12, 'temporary-sku-555195', 'simple', 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, 1.0000, 1.0000, 1, 1, 1, 0, 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 32, 'Webkul\\Product\\Models\\Product', 12, NULL, NULL, '{\"cart_id\":16,\"quantity\":1,\"product_id\":32,\"locale\":\"tr\"}', '2025-05-10 21:41:08', '2025-05-10 21:42:50'),
(13, 'temporary-sku-d7e95e', 'simple', 'aml-Kerbl Elastratör Pensi', NULL, 1.0000, 1.0000, 1, 0, 1, 0, 0, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 36, 'Webkul\\Product\\Models\\Product', 13, NULL, NULL, '{\"cart_id\":17,\"product_id\":\"36\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 21:50:07', '2025-05-10 21:50:33'),
(14, 'temporary-sku-4b7138', 'simple', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 1.0000, 1.0000, 1, 0, 1, 0, 0, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 14, NULL, NULL, '{\"cart_id\":18,\"product_id\":\"39\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 22:13:13', '2025-05-10 22:13:42'),
(15, 'CHZ-Def-2', 'simple', 'Def-Aselsan Heartline Ekranlı Tam Otomatik Defibrilatör Cihazı (OED)', NULL, 5.0000, 5.0000, 1, 0, 1, 0, 0, 56999.0000, 56999.0000, 56999.0000, 56999.0000, 56999.0000, 56999.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 56999.0000, 56999.0000, 56999.0000, 56999.0000, 30, 'Webkul\\Product\\Models\\Product', 15, NULL, NULL, '{\"cart_id\":20,\"product_id\":\"30\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 22:18:21', '2025-05-10 22:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

CREATE TABLE `order_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `method` varchar(255) NOT NULL,
  `method_title` varchar(255) DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`id`, `order_id`, `method`, `method_title`, `additional`, `created_at`, `updated_at`) VALUES
(1, 1, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-08 18:19:49', '2025-05-08 18:19:49'),
(2, 2, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-08 18:21:42', '2025-05-08 18:21:42'),
(3, 3, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-08 18:54:25', '2025-05-08 18:54:25'),
(4, 4, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-08 19:13:10', '2025-05-08 19:13:10'),
(5, 5, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-08 19:28:50', '2025-05-08 19:28:50'),
(6, 6, 'moneytransfer', 'Havale-Eft', NULL, '2025-05-10 10:26:10', '2025-05-10 10:26:10'),
(7, 7, 'moneytransfer', 'Havale-Eft', NULL, '2025-05-10 10:27:30', '2025-05-10 10:27:30'),
(8, 8, 'moneytransfer', 'Havale-Eft', NULL, '2025-05-10 10:34:20', '2025-05-10 10:34:20'),
(9, 9, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-10 15:57:52', '2025-05-10 15:57:52'),
(10, 10, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-10 21:32:52', '2025-05-10 21:32:52'),
(11, 11, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-10 21:39:58', '2025-05-10 21:39:58'),
(12, 12, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-10 21:41:08', '2025-05-10 21:41:08'),
(13, 13, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-10 21:50:06', '2025-05-10 21:50:06'),
(14, 14, 'cashondelivery', 'Teslimatta Öde', NULL, '2025-05-10 22:13:13', '2025-05-10 22:13:13'),
(15, 15, 'moneytransfer', 'Havale-Eft', NULL, '2025-05-10 22:18:21', '2025-05-10 22:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT 0.0000,
  `payment_method` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_transactions`
--

INSERT INTO `order_transactions` (`id`, `transaction_id`, `status`, `type`, `amount`, `payment_method`, `data`, `invoice_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, '1cc07608c502a26691f7869d83f2894f', 'paid', 'cashondelivery', 13.7285, 'cashondelivery', NULL, 5, 10, '2025-05-10 21:33:38', '2025-05-10 21:33:38'),
(2, '88c5206ca445b42e8917253550fab757', 'paid', 'cashondelivery', 599.0000, 'cashondelivery', NULL, 7, 13, '2025-05-10 21:50:34', '2025-05-10 21:50:34'),
(3, '140041adb4e7999699cdf1bfe5926142', 'paid', 'moneytransfer', 56999.0000, 'moneytransfer', NULL, 9, 15, '2025-05-10 22:19:03', '2025-05-10 22:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `allow_rma` varchar(255) DEFAULT NULL,
  `rma_rules` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `type`, `parent_id`, `attribute_family_id`, `additional`, `allow_rma`, `rma_rules`, `created_at`, `updated_at`) VALUES
(1, 'SRF-01', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 02:41:26', '2025-05-07 02:41:26'),
(2, 'SRF-02', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 02:51:45', '2025-05-07 02:51:45'),
(3, 'SRF-03', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 02:57:01', '2025-05-07 02:57:01'),
(4, 'SRF-04', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 03:00:09', '2025-05-07 03:00:09'),
(5, 'SRF-05', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 03:07:40', '2025-05-07 03:07:40'),
(6, 'SRF-06', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 03:09:33', '2025-05-07 03:09:33'),
(7, 'SRF-07', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 03:27:52', '2025-05-07 03:27:52'),
(8, 'SRF-08', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 03:31:39', '2025-05-07 03:31:39'),
(9, 'SRF-09', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 03:35:27', '2025-05-07 03:38:31'),
(10, 'SRF-10', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 03:38:41', '2025-05-07 03:38:41'),
(11, 'SRF-11', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 03:42:27', '2025-05-07 03:42:27'),
(12, 'AKS-11', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 03:47:05', '2025-05-07 03:47:05'),
(13, 'AKS-12', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 04:02:44', '2025-05-07 04:02:44'),
(14, 'CHZ-01', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 12:46:44', '2025-05-07 12:46:44'),
(15, 'CHZ-02', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 12:53:17', '2025-05-07 12:56:22'),
(16, 'CHZ-03', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 12:57:57', '2025-05-07 12:59:43'),
(17, 'CHZ-04', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 12:59:50', '2025-05-07 13:02:09'),
(18, 'Chz-05', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 13:05:56', '2025-05-07 13:05:56'),
(19, 'AKS-1', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 13:10:24', '2025-05-07 13:10:24'),
(20, 'AKS-02', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 13:15:18', '2025-05-07 13:19:31'),
(21, 'temporary-sku-dc36f0', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 13:19:39', '2025-05-07 13:19:39'),
(22, 'AKS-04', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 13:22:54', '2025-05-07 13:27:37'),
(23, 'AKS-05', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 13:28:25', '2025-05-07 13:30:42'),
(24, 'CHZ-BK1', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 13:35:22', '2025-05-07 13:39:43'),
(25, 'CHZ-Sln', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 13:39:48', '2025-05-07 13:41:53'),
(26, 'CHZ-Sln-1', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 13:41:58', '2025-05-07 13:43:54'),
(27, 'CHZ-Sln-2', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 13:44:00', '2025-05-07 13:46:13'),
(28, 'Chz-Def', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:15:19', '2025-05-07 14:15:19'),
(30, 'CHZ-Def-2', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:17:38', '2025-05-07 14:19:34'),
(31, 'CHZ-Def-3', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:19:53', '2025-05-07 14:22:04'),
(32, 'temporary-sku-555195', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:22:08', '2025-05-07 14:22:08'),
(33, 'CHZ-Def-4', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:25:06', '2025-05-07 14:27:42'),
(34, 'AML-01', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:38:45', '2025-05-07 14:38:45'),
(35, 'temporary-sku-066fe8', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:41:44', '2025-05-07 14:41:44'),
(36, 'temporary-sku-d7e95e', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:41:45', '2025-05-07 14:41:45'),
(37, 'temporary-sku-bb91ea', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:43:44', '2025-05-07 14:43:44'),
(38, 'temporary-sku-a4d2ec', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:47:56', '2025-05-07 14:47:56'),
(39, 'temporary-sku-4b7138', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 14:51:18', '2025-05-07 14:51:18'),
(40, 'Pro-01', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 15:33:52', '2025-05-07 15:33:52'),
(41, 'temporary-sku-1b9589', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 15:36:05', '2025-05-07 15:36:05'),
(42, 'temporary-sku-e91fab', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 15:37:39', '2025-05-07 15:37:39'),
(43, 'temporary-sku-363f18', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 15:39:29', '2025-05-07 15:39:29'),
(44, 'temporary-sku-e9afdc', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 15:41:28', '2025-05-07 15:41:28'),
(45, 'temporary-sku-ebb1c1', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 15:43:13', '2025-05-07 15:43:13'),
(46, 'temporary-sku-dd95cb', 'simple', NULL, 1, NULL, NULL, NULL, '2025-05-07 15:45:17', '2025-05-07 15:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `text_value` text DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` decimal(12,4) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_value`)),
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(1, 'tr', NULL, '<p>Renk kodlu, steril bran&uuml;l kan&uuml;l. Serum setleri ve portlarla uyumlu. Tekli paket halinde sunulur.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 'tr|1|9'),
(2, 'tr', NULL, '<p class=\"MsoNormal\">A&ccedil;ma kapama sistemine sahip olan&uuml;r&uuml;nler yapısal &ouml;zelliği nedeniyle dokuya ve damara zarar vermez.Farklı numaralarda olan anjiokat,renklendirilmiş olduğundan numaraların kolay ayırt edilmesisağlanmaktadır. Her t&uuml;rl&uuml; serum seti, kan seti, stepve benzer bağlantılar ile uyumludur. Enjeksiyon portu mevcuttur. Port b&ouml;l&uuml;m&uuml; kapaklı olduğundankontaminasyona neden olmaz.Kan&uuml;l&uuml;n I.V. puşe yapılan enjeksiyonportu kapağı tam olarak oturur ve istemsiz bir şekilde a&ccedil;ılmaz. Kan&uuml;l&uuml;n g&ouml;vde ile bağlantısıolduğundan kapak a&ccedil;ıldığında d&uuml;şmez. Renk kodlu olan bran&uuml;l d&uuml;nyastandartlarına uygun &ouml;l&ccedil;&uuml; ve forma sahiptir.Steril bir şekilde tekli paketlerhalinde adresinize ulaşmaktadır.&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 'tr|1|10'),
(3, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 1, 29, '1|29'),
(4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 5, '1|5'),
(5, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 6, '1|6'),
(6, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 7, '1|7'),
(7, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 8, 'default|1|8'),
(8, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 26, '1|26'),
(9, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 1, 30, '1|30'),
(10, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 28, 'default|1|28'),
(11, NULL, NULL, NULL, NULL, NULL, 7.6400, NULL, NULL, NULL, 1, 11, '1|11'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, '1|13'),
(13, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'default|1|14'),
(14, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 15, 'default|1|15'),
(15, NULL, NULL, 'SRF-01', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1|1'),
(16, 'tr', NULL, 'Branül Kanül', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 'tr|1|2'),
(17, 'tr', NULL, 'branul-kanul', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 'tr|1|3'),
(18, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 1, 25, '1|25'),
(19, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 27, '1|27'),
(20, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, '1|31'),
(21, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 1, 32, '1|32'),
(22, 'tr', NULL, 'Branül Kanül  Tek Kullanımlık Sarf Malzemesi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'tr|1|16'),
(23, 'tr', NULL, 'branül, kanül, pembe branül, No:20, sarf malzeme, iğne, enjeksiyon', NULL, NULL, NULL, NULL, NULL, NULL, 1, 17, 'tr|1|17'),
(24, 'tr', NULL, 'Branül Kanül No:20, portlu ve renk kodlu yapısı sayesinde kolay ayırt edilir. Tekli, steril paketlerde sunulur.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 18, 'tr|1|18'),
(25, NULL, NULL, '0.002', NULL, NULL, NULL, NULL, NULL, NULL, 1, 22, '1|22'),
(26, 'tr', NULL, '<p>Silikon kaplı, lateks malzemeden &uuml;retilmiş steril Foley sonda. İki yolludur, tıbbi kullanım i&ccedil;in uygundur.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 9, 'tr|2|9'),
(27, 'tr', NULL, '<p>İdrar sondasıdır. Foley sondası, tekli ve blister steril ambalajdadır. &nbsp;<br>Tahriş etmeyen silikon kaplı doğal lateks malzemeden &uuml;retilmiştir.&nbsp;İki yolludur. Sondanın u&ccedil; kısmı yuvarlatılmış ve g&ouml;z a&ccedil;ıklıkları yumuşak formdadır.&nbsp;Kullanım kolaylığı sağlar, enfeksiyon riskini en aza indirir.&nbsp;Sağlık profesyonelleri tarafından tek kullanımlık ama&ccedil;la &ouml;nerilmektedir.&nbsp;Lateks hassasiyeti olan bireylerde dikkatli kullanılmalıdır.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 10, 'tr|2|10'),
(28, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 2, 29, '2|29'),
(29, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, '2|5'),
(30, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 6, '2|6'),
(31, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 7, '2|7'),
(32, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 8, 'default|2|8'),
(33, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 26, '2|26'),
(34, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 2, 30, '2|30'),
(35, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 28, 'default|2|28'),
(36, NULL, NULL, NULL, NULL, NULL, 59.0000, NULL, NULL, NULL, 2, 11, '2|11'),
(37, NULL, NULL, NULL, NULL, NULL, 49.0000, NULL, NULL, NULL, 2, 13, '2|13'),
(38, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 14, 'default|2|14'),
(39, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 15, 'default|2|15'),
(40, NULL, NULL, 'SRF-02', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2|1'),
(41, 'tr', NULL, 'Steril Foley sonda', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 'tr|2|2'),
(42, 'tr', NULL, 'steril-foley-sonda', NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 'tr|2|3'),
(43, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 2, 25, '2|25'),
(44, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 27, '2|27'),
(45, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 2, 31, '2|31'),
(46, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 2, 32, '2|32'),
(47, 'tr', NULL, 'Galena Foley Lateks İki Yollu Sonda - Tıbbi Sonda', NULL, NULL, NULL, NULL, NULL, NULL, 2, 16, 'tr|2|16'),
(48, 'tr', NULL, 'foley sonda, galena sonda, iki yollu sonda, tıbbi sonda, lateks sonda, idrar sondası', NULL, NULL, NULL, NULL, NULL, NULL, 2, 17, 'tr|2|17'),
(49, 'tr', NULL, 'Galena markalı iki yollu Foley sonda, steril, silikon kaplı lateks malzemeden üretilmiştir. Tıbbi kullanım için uygundur.', NULL, NULL, NULL, NULL, NULL, NULL, 2, 18, 'tr|2|18'),
(50, NULL, NULL, '0.002', NULL, NULL, NULL, NULL, NULL, NULL, 2, 22, '2|22'),
(51, 'tr', NULL, '<p>PVC malzemeden &uuml;retilmiş, steril ve esnek yapıya sahip tek kullanımlık aspirasyon sondası.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, 'tr|3|9'),
(52, 'tr', NULL, '<p>Galena markalı aspirasyon sondası, y&uuml;ksek kaliteli PVC malzemeden &uuml;retilmiştir.&nbsp;Steril ve tek kullanımlık olan bu &uuml;r&uuml;n, aspirasyon işlemlerinde mukus ve sekresyonların g&uuml;venli bir şekilde uzaklaştırılması i&ccedil;in tasarlanmıştır. &nbsp;<br>Esnek yapısı sayesinde rahat kullanım sağlar ve farklı boyut se&ccedil;enekleri mevcuttur.&nbsp;T&uuml;m standart aspirasyon bağlantılarına uyumludur.Tıbbi ortamlarda g&uuml;venle kullanılabilir.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 3, 10, 'tr|3|10'),
(53, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 3, 29, '3|29'),
(54, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 5, '3|5'),
(55, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 6, '3|6'),
(56, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 7, '3|7'),
(57, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 8, 'default|3|8'),
(58, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 26, '3|26'),
(59, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 3, 28, 'default|3|28'),
(60, NULL, NULL, NULL, NULL, NULL, 129.0000, NULL, NULL, NULL, 3, 11, '3|11'),
(61, NULL, NULL, NULL, NULL, NULL, 99.0000, NULL, NULL, NULL, 3, 13, '3|13'),
(62, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 14, 'default|3|14'),
(63, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 15, 'default|3|15'),
(64, NULL, NULL, 'SRF-03', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '3|1'),
(65, 'tr', NULL, 'Galena PVC Aspirasyon Sondası', NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 'tr|3|2'),
(66, 'tr', NULL, 'galena-pvc-aspirasyon-sondası', NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 'tr|3|3'),
(67, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 3, 25, '3|25'),
(68, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 27, '3|27'),
(69, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 3, 31, '3|31'),
(70, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 3, 32, '3|32'),
(71, 'tr', NULL, 'Galena PVC Aspirasyon Sondası - Steril Tek Kullanımlık', NULL, NULL, NULL, NULL, NULL, NULL, 3, 16, 'tr|3|16'),
(72, 'tr', NULL, 'aspirasyon sondası, galena sonda, pvc aspirasyon, steril medikal sonda', NULL, NULL, NULL, NULL, NULL, NULL, 3, 17, 'tr|3|17'),
(73, 'tr', NULL, 'Galena PVC Aspirasyon Sondası, esnek yapısı ve steril yapısı sayesinde güvenli aspirasyon işlemleri için idealdir.', NULL, NULL, NULL, NULL, NULL, NULL, 3, 18, 'tr|3|18'),
(74, NULL, NULL, '0.05', NULL, NULL, NULL, NULL, NULL, NULL, 3, 22, '3|22'),
(75, 'tr', NULL, '<p>T musluklu idrar torbası, hasta bakımında idrar toplama ve boşaltma işlemlerini kolaylaştıran pratik bir &uuml;r&uuml;nd&uuml;r. Kolay kullanım ve hijyenik tasarımı ile hem hasta konforunu hem sağlık personelinin iş y&uuml;k&uuml;n&uuml; azaltır.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 4, 9, 'tr|4|9'),
(76, 'tr', NULL, '<p>&Uuml;r&uuml;n, medikal polivinil klor&uuml;r (PVC) malzemeden &uuml;retilmiştir.Toplam kapasitesi 2000 ml\'dir ve mililitre &ouml;l&ccedil;eklidir.&nbsp;Askı i&ccedil;in geniş &ccedil;aplı delikler mevcuttur.&nbsp;B&uuml;k&uuml;lmeye karşı diren&ccedil;li hortumu sayesinde sıvı akışını kesintisiz sağlar.&nbsp;A&ccedil;ma-kapama işlemi kolaylıkla yapılabilen bir klemp (musluk) ile kontrol edilir. &nbsp;Bağlantı konnekt&ouml;r&uuml; &uuml;zerinde &ouml;rnek alma portu bulunmaktadır. &Uuml;r&uuml;n, idrar sondalarına ve prezervatif sondalara bağlanmak &uuml;zere tasarlanmıştır.&nbsp;Steril, tek kullanımlık ve hastane/klinik kullanımına uygundur.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 4, 10, 'tr|4|10'),
(77, NULL, NULL, 'T musluklu 2000ml idrar torbası, PVC\'den üretilmiş olup bükülmez hortumu ve örnek alma portu ile hijyenik kullanım sunar.', NULL, NULL, NULL, NULL, NULL, NULL, 4, 29, '4|29'),
(78, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 5, '4|5'),
(79, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 6, '4|6'),
(80, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 7, '4|7'),
(81, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 8, 'default|4|8'),
(82, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 26, '4|26'),
(83, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, 28, 'default|4|28'),
(84, NULL, NULL, NULL, NULL, NULL, 59.9900, NULL, NULL, NULL, 4, 11, '4|11'),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 13, '4|13'),
(86, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 14, 'default|4|14'),
(87, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 15, 'default|4|15'),
(88, NULL, NULL, 'SRF-04', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, '4|1'),
(89, 'tr', NULL, 'T musluklu idrar torbası', NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 'tr|4|2'),
(90, 'tr', NULL, 't-musluklu-idrar-torbası', NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 'tr|4|3'),
(91, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 4, 25, '4|25'),
(92, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 27, '4|27'),
(93, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 4, 31, '4|31'),
(94, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 4, 32, '4|32'),
(95, 'tr', NULL, 'T Musluklu İdrar Torbası - 2000ml PVC Tek Kullanımlık', NULL, NULL, NULL, NULL, NULL, NULL, 4, 16, 'tr|4|16'),
(96, 'tr', NULL, 'idrar torbası, t musluklu idrar torbası, 2000ml torba, pvc medikal torba, hasta bakım ürünü', NULL, NULL, NULL, NULL, NULL, NULL, 4, 17, 'tr|4|17'),
(97, 'tr', NULL, 'T musluklu 2000ml idrar torbası, PVC\'den üretilmiş olup bükülmez hortumu ve örnek alma portu ile hijyenik kullanım sunar.', NULL, NULL, NULL, NULL, NULL, NULL, 4, 18, 'tr|4|18'),
(98, NULL, NULL, '0.01', NULL, NULL, NULL, NULL, NULL, NULL, 4, 22, '4|22'),
(99, 'tr', NULL, '<p>Cathejell kaydırıcı jel, kateterizasyon işlemleri sırasında kullanılan steril bir tıbbi &uuml;r&uuml;nd&uuml;r. Kateterin kolay ve konforlu şekilde v&uuml;cuda yerleştirilmesini sağlar.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 5, 9, 'tr|5|9'),
(100, 'tr', NULL, '<p>Cathejell, steril blister ambalajında sunulan, oksit artık i&ccedil;ermeyen kaydırıcı jeldir. &nbsp;<br>Sterilite ve enfeksiyon &ouml;nleyici ajanlar (klorheksidin, iatrojenik koruyucular) i&ccedil;erir. &nbsp;<br>Yumuşak anatomik başlıklı ve patentli ucu sayesinde, travma riskini azaltır. &nbsp;<br>Katlanabilir t&uuml;p formu, hem minimal damlatma hem de gerektiğinde idrar aspire etmeden uygulama kolaylığı sağlar. &nbsp;<br>Suda erir, renksizdir. Doku uyumluluğu y&uuml;ksektir ve metal şaftlı enstr&uuml;manlarla uyumludur. &nbsp;<br>Kadın ve erkek hastalarda kullanıma uygundur. &nbsp;<br>&Uuml;r&uuml;n, kalıcı ve ge&ccedil;ici kateter yerleştirmelerinde kullanılır.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 5, 10, 'tr|5|10'),
(101, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 5, 29, '5|29'),
(102, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 5, 5, '5|5'),
(103, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 5, 6, '5|6'),
(104, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 7, '5|7'),
(105, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 8, 'default|5|8'),
(106, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 26, '5|26'),
(107, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 5, 28, 'default|5|28'),
(108, NULL, NULL, NULL, NULL, NULL, 33.4000, NULL, NULL, NULL, 5, 11, '5|11'),
(109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 13, '5|13'),
(110, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 14, 'default|5|14'),
(111, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 15, 'default|5|15'),
(112, NULL, NULL, 'SRF-05', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, '5|1'),
(113, 'tr', NULL, 'Cathejell kaydırıcı jel', NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 'tr|5|2'),
(114, 'tr', NULL, 'cathejell-kaydırıcı-jel', NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, 'tr|5|3'),
(115, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 5, 25, '5|25'),
(116, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 27, '5|27'),
(117, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 5, 31, '5|31'),
(118, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 5, 32, '5|32'),
(119, 'tr', NULL, 'Cathejell Kaydırıcı Jel - Steril Kateter Jel', NULL, NULL, NULL, NULL, NULL, NULL, 5, 16, 'tr|5|16'),
(120, 'tr', NULL, 'cathejell, kaydırıcı jel, kateter jeli, steril jel, medikal jel, üroloji', NULL, NULL, NULL, NULL, NULL, NULL, 5, 17, 'tr|5|17'),
(121, 'tr', NULL, 'Cathejell steril kaydırıcı jel, kateter uygulamalarında travmayı azaltır ve enfeksiyon riskini en aza indirir. Kadın ve erkek hastalar için uygundur.', NULL, NULL, NULL, NULL, NULL, NULL, 5, 18, 'tr|5|18'),
(122, NULL, NULL, '0.002', NULL, NULL, NULL, NULL, NULL, NULL, 5, 22, '5|22'),
(123, 'tr', NULL, '<p>Basıncı değiştirmeden iletim sağlayan, PVC malzemeden &uuml;retilmiş uzatma hattı. 30 cm, 120 cm ve 145 cm uzunluk se&ccedil;enekleri mevcuttur.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 6, 9, 'tr|6|9'),
(124, 'tr', NULL, '<p>Medikal kullanım i&ccedil;in tasarlanmış uzatma line (extension line), sıvı ve ila&ccedil; iletiminde kullanılmak &uuml;zere geliştirilmiştir. &nbsp;<br>PVC (polivinil klor&uuml;r) malzemeden &uuml;retilmiş olup, i&ccedil;eriğindeki esnek yapı sayesinde basıncı değiştirmeden sıvı ge&ccedil;işini sağlar. &nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, 6, 10, 'tr|6|10'),
(125, NULL, NULL, 'Tek kullanımlık, steril ambalajlı ve latex içermeyen yapısıyla hasta güvenliği ön planda tutulur.  \r\nİnfüzyon, transfüzyon ve damar içi uygulamalarda yaygın olarak kullanılır.  \r\nLuer lock uyumlu uçları sayesinde tıbbi cihazlarla tam uyumludur.', NULL, NULL, NULL, NULL, NULL, NULL, 6, 29, '6|29'),
(126, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 6, 5, '6|5'),
(127, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 6, 6, '6|6'),
(128, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 6, 7, '6|7'),
(129, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 6, 8, 'default|6|8'),
(130, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 6, 26, '6|26'),
(131, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 6, 28, 'default|6|28'),
(132, NULL, NULL, NULL, NULL, NULL, 9.9900, NULL, NULL, NULL, 6, 11, '6|11'),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 13, '6|13'),
(134, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 14, 'default|6|14'),
(135, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 15, 'default|6|15'),
(136, NULL, NULL, 'SRF-06', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, '6|1'),
(137, 'tr', NULL, 'PVC - Line', NULL, NULL, NULL, NULL, NULL, NULL, 6, 2, 'tr|6|2'),
(138, 'tr', NULL, 'pvc-line', NULL, NULL, NULL, NULL, NULL, NULL, 6, 3, 'tr|6|3'),
(139, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 6, 25, '6|25'),
(140, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 6, 27, '6|27'),
(141, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 6, 31, '6|31'),
(142, 'tr', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 6, 16, 'tr|6|16'),
(143, 'tr', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 6, 17, 'tr|6|17'),
(144, 'tr', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 6, 18, 'tr|6|18'),
(145, NULL, NULL, '0.002', NULL, NULL, NULL, NULL, NULL, NULL, 6, 22, '6|22'),
(146, 'tr', NULL, '<p>Tek kullanımlık plastik b&ouml;brek k&uuml;vet; pansuman, atık toplama ve sıvı taşıma işlemlerinde kullanılan hijyenik bir yardımcı &uuml;r&uuml;nd&uuml;r.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 7, 9, 'tr|7|9'),
(147, 'tr', NULL, '<p>Plastik b&ouml;brek k&uuml;vet, sağlık kuruluşlarında pansuman atıklarını toplamak, v&uuml;cut sıvılarını ge&ccedil;ici olarak taşımak veya uygulama sırasında yardımcı kap olarak kullanılmak &uuml;zere tasarlanmıştır. &nbsp;Aile sağlığı merkezleri, klinikler ve hastanelerde yaygın şekilde tercih edilmektedir. &nbsp;<br>&Uuml;r&uuml;n tek kullanımlıktır ve hijyenik blister paketlerde 100 adetlik set olarak sunulmaktadır. &nbsp;<br>Ergonomik yapısı sayesinde hem hastaya hem de sağlık personeline kullanım kolaylığı sağlar. &nbsp;<br>Steril değildir ancak atıkla doğrudan temas etmeyeceği işlemler i&ccedil;in uygundur. &nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, 7, 10, 'tr|7|10'),
(148, NULL, NULL, 'Renk: Şeffaf veya mavi  \r\nBoyut: Standart (ortalama 500–750 ml hacimli)', NULL, NULL, NULL, NULL, NULL, NULL, 7, 29, '7|29'),
(149, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 5, '7|5'),
(150, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 6, '7|6'),
(151, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 7, '7|7'),
(152, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 8, 'default|7|8'),
(153, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 26, '7|26'),
(154, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 7, 28, 'default|7|28'),
(155, NULL, NULL, NULL, NULL, NULL, 9.9900, NULL, NULL, NULL, 7, 11, '7|11'),
(156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 13, '7|13'),
(157, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 14, 'default|7|14'),
(158, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 15, 'default|7|15'),
(159, NULL, NULL, 'SRF-07', NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, '7|1'),
(160, 'tr', NULL, 'Plastik Böbrek Küvet 100 Adet', NULL, NULL, NULL, NULL, NULL, NULL, 7, 2, 'tr|7|2'),
(161, 'tr', NULL, 'plastik-bobrek-kuvet-100-adet', NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, 'tr|7|3'),
(162, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 7, 25, '7|25'),
(163, NULL, NULL, 'Sarf07', NULL, NULL, NULL, NULL, NULL, NULL, 7, 27, '7|27'),
(164, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 7, 31, '7|31'),
(165, 'tr', NULL, 'Plastik Böbrek Küvet - 100\'lü Paket - Tek Kullanımlık Medikal Küvet', NULL, NULL, NULL, NULL, NULL, NULL, 7, 16, 'tr|7|16'),
(166, 'tr', NULL, 'böbrek küvet, plastik küvet, medikal küvet, tek kullanımlık kap, pansuman atık kabı, 100 adet küvet', NULL, NULL, NULL, NULL, NULL, NULL, 7, 17, 'tr|7|17'),
(167, 'tr', NULL, 'Pansuman atıkları için ideal tek kullanımlık plastik böbrek küvet. 100 adetlik ekonomik paket halinde sunulur.', NULL, NULL, NULL, NULL, NULL, NULL, 7, 18, 'tr|7|18'),
(168, NULL, NULL, '0.02', NULL, NULL, NULL, NULL, NULL, NULL, 7, 22, '7|22'),
(169, 'tr', NULL, '<p>Alerji yapmaz, tek kullanımlık sedye alezi. Sağlık merkezlerinde hijyenik hasta muayenesi i&ccedil;in ideal koruyucu &ouml;rt&uuml;d&uuml;r.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 8, 9, 'tr|8|9'),
(170, 'tr', NULL, '<p>Tek kullanımlık sedye alezi, sağlık kuruluşlarında sedyelerin y&uuml;zeyini korumak ve hasta ile temas eden alanlarda hijyen sağlamak amacıyla kullanılır. &nbsp;<br>Alerji ve terleme yapmaz. Nefes alabilir yapısı sayesinde hasta konforunu artırır. &nbsp;<br>Aile sağlığı merkezleri, poliklinikler ve acil servislerde sık&ccedil;a tercih edilmektedir. &nbsp;<br>Kullanım kolaylığı sunar ve hızlıca değiştirilebilir. &nbsp;<br>Paket i&ccedil;eriği: 1 adet (steril değildir) &nbsp;<br>Boyut: Standart sedye &ouml;l&ccedil;&uuml;lerine uygundur. &nbsp;<br>&Uuml;r&uuml;n, &ccedil;evre dostu malzemeden &uuml;retilmiş olup tek kullanımlıktır.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 8, 10, 'tr|8|10'),
(171, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 8, 29, '8|29'),
(172, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 8, 5, '8|5'),
(173, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 8, 6, '8|6'),
(174, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 8, 7, '8|7'),
(175, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 8, 8, 'default|8|8'),
(176, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 8, 26, '8|26'),
(177, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 8, 28, 'default|8|28'),
(178, NULL, NULL, NULL, NULL, NULL, 19.9900, NULL, NULL, NULL, 8, 11, '8|11'),
(179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 13, '8|13'),
(180, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 14, 'default|8|14'),
(181, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 15, 'default|8|15'),
(182, NULL, NULL, 'SRF-08', NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, '8|1'),
(183, 'tr', NULL, 'sedye alezi', NULL, NULL, NULL, NULL, NULL, NULL, 8, 2, 'tr|8|2'),
(184, 'tr', NULL, 'sedye-alezi', NULL, NULL, NULL, NULL, NULL, NULL, 8, 3, 'tr|8|3'),
(185, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 8, 25, '8|25'),
(186, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 8, 27, '8|27'),
(187, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 8, 31, '8|31'),
(188, 'tr', NULL, 'Tek Kullanımlık Sedye Alezi - Hijyenik Koruyucu Örtü', NULL, NULL, NULL, NULL, NULL, NULL, 8, 16, 'tr|8|16'),
(189, 'tr', NULL, 'sedye alezi, tek kullanımlık örtü, medikal alez, hasta örtüsü, sağlık merkezi alezi', NULL, NULL, NULL, NULL, NULL, NULL, 8, 17, 'tr|8|17'),
(190, 'tr', NULL, 'Sedye için geliştirilen tek kullanımlık alez, hijyen sağlar, terletmez ve alerji yapmaz. Sağlık kuruluşlarında güvenle kullanılır.', NULL, NULL, NULL, NULL, NULL, NULL, 8, 18, 'tr|8|18'),
(191, NULL, NULL, '0.002', NULL, NULL, NULL, NULL, NULL, NULL, 8, 22, '8|22'),
(192, 'tr', NULL, '<p>PE lamineli, sıvı ge&ccedil;irmez ve emici &ouml;zellikte tek kullanımlık medikal &ouml;rt&uuml;. Pratik ve hijyenik kullanım sağlar.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 9, 9, 'tr|9|9'),
(193, 'tr', NULL, '<p>&Uuml;r&uuml;n, PE lamineli kağıttan &uuml;retilmiştir ve y&uuml;ksek sıvı emici &ouml;zelliğe sahiptir. &nbsp;<br>Laminasyonunda tutkal kullanılmamıştır, bu da &ccedil;evre dostu ve ciltle uyumlu olmasını sağlar.&nbsp;</p>\r\n<hr>\r\n<p>**&Ouml;zellikler:**<br>- Y&uuml;ksek sıvı emiciliği<br>- Sıvı ge&ccedil;irmez arka y&uuml;zey<br>- Tek kullanımlık ve hijyenik<br>- Pratik kullanım</p>\r\n<p>**&Uuml;r&uuml;n &Ouml;l&ccedil;&uuml;leri:**<br>- En: 50 cm &nbsp;<br>- Y&uuml;kseklik: 60 cm &nbsp;</p>\r\n<hr>\r\n<p>Medikal muayene, pansuman, doğum ve diğer sağlık hizmetlerinde yaygın olarak kullanılır. &nbsp;<br>Hasta ve sağlık &ccedil;alışanı arasındaki teması hijyenik hale getirir.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 9, 10, 'tr|9|10'),
(194, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 9, 29, '9|29'),
(195, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 5, '9|5'),
(196, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 9, 6, '9|6'),
(197, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 7, '9|7'),
(198, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 8, 'default|9|8'),
(199, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 26, '9|26'),
(200, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 9, 28, 'default|9|28'),
(201, NULL, NULL, NULL, NULL, NULL, 145.9900, NULL, NULL, NULL, 9, 11, '9|11'),
(202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 13, '9|13'),
(203, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 14, 'default|9|14'),
(204, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 15, 'default|9|15'),
(205, NULL, NULL, 'SRF-09', NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, '9|1'),
(206, 'tr', NULL, 'Emici Medikal Örtü (PE Lamineli Kağıt)', NULL, NULL, NULL, NULL, NULL, NULL, 9, 2, 'tr|9|2'),
(207, 'tr', NULL, 'emici-medikal-ortu-pe-lamineli-kagıt', NULL, NULL, NULL, NULL, NULL, NULL, 9, 3, 'tr|9|3'),
(208, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 9, 25, '9|25'),
(209, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 9, 27, '9|27'),
(210, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 9, 31, '9|31'),
(211, 'tr', NULL, 'PE Lamineli Medikal Örtü - 50x60 cm Tek Kullanımlık', NULL, NULL, NULL, NULL, NULL, NULL, 9, 16, 'tr|9|16'),
(212, 'tr', NULL, 'medikal örtü, emici örtü, tek kullanımlık örtü, pe lamineli örtü, sıvı geçirmez medikal bez', NULL, NULL, NULL, NULL, NULL, NULL, 9, 17, 'tr|9|17'),
(213, 'tr', NULL, 'Sıvı geçirmez ve emici özellikli, PE lamineli tek kullanımlık medikal örtü. 50x60 cm ebatlarında, hijyenik kullanım için idealdir.', NULL, NULL, NULL, NULL, NULL, NULL, 9, 18, 'tr|9|18'),
(214, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 9, 22, '9|22'),
(215, 'tr', NULL, '<p>Yetişkin EKG elektrodu, kalp aktivitesini &ouml;l&ccedil;mek amacıyla v&uuml;cuda yerleştirilerek elektriksel sinyalleri EKG cihazına iletir.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 10, 9, 'tr|10|9'),
(216, 'tr', NULL, '<p>Yetişkinler i&ccedil;in tasarlanmış bu EKG elektrotları, tek kullanımlıktır ve 50\'lik paketler halinde sunulmaktadır. &nbsp;<br>Yapışkanlı metal disk formundadır ve cilde kolayca uygulanabilir. &nbsp;</p>\r\n<p>**Kullanım Alanı:**<br>Kalbin elektriksel aktivitesinin deri &uuml;zerinden &ouml;l&ccedil;&uuml;lmesini sağlayan elektrotlar, EKG (elektrokardiyografi) işleminde kullanılır. &nbsp;<br>G&ouml;ğ&uuml;s, kol ve bacak b&ouml;lgelerine yerleştirilir. &nbsp;</p>\r\n<p>Elektrotlar, EKG cihazına iletilen sinyalleri kayda &ccedil;evirerek doktorların tanı koymasına yardımcı olur.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, 'tr|10|10'),
(217, NULL, NULL, '- Cilde iyi yapışan yapışkanlı yüzey  \r\n- Metal disk uç  \r\n- 50’li steril ambalaj  \r\n- Latex içermez  \r\n- Yetişkin hastalar için uygundur', NULL, NULL, NULL, NULL, NULL, NULL, 10, 29, '10|29'),
(218, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 5, '10|5'),
(219, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 6, '10|6'),
(220, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 7, '10|7'),
(221, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 8, 'default|10|8'),
(222, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 26, '10|26'),
(223, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 10, 28, 'default|10|28'),
(224, NULL, NULL, NULL, NULL, NULL, 99.9900, NULL, NULL, NULL, 10, 11, '10|11'),
(225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 13, '10|13'),
(226, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 14, 'default|10|14'),
(227, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 15, 'default|10|15'),
(228, NULL, NULL, 'SRF-10', NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, '10|1'),
(229, 'tr', NULL, 'Yetişkin Ekg Elektrodu 50\'lik Paket', NULL, NULL, NULL, NULL, NULL, NULL, 10, 2, 'tr|10|2'),
(230, 'tr', NULL, 'yetiskin-ekg-elektrodu-50lik-paket', NULL, NULL, NULL, NULL, NULL, NULL, 10, 3, 'tr|10|3'),
(231, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 10, 25, '10|25'),
(232, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 10, 27, '10|27'),
(233, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 10, 31, '10|31'),
(234, 'tr', NULL, 'Yetişkin EKG Elektrodu - Tek Kullanımlık 50\'li Paket', NULL, NULL, NULL, NULL, NULL, NULL, 10, 16, 'tr|10|16'),
(235, 'tr', NULL, 'ekg elektrodu, yetişkin ekg pedi, tek kullanımlık elektrot, kalp elektrotu, ekg sensörü', NULL, NULL, NULL, NULL, NULL, NULL, 10, 17, 'tr|10|17'),
(236, 'tr', NULL, 'Yetişkin EKG elektrodu, yapışkanlı metal disk uçlara sahip, tek kullanımlık 50’li paket formunda sunulur. Kalp aktivitesi ölçümünde kullanılır.', NULL, NULL, NULL, NULL, NULL, NULL, 10, 18, 'tr|10|18'),
(237, NULL, NULL, '0.01', NULL, NULL, NULL, NULL, NULL, NULL, 10, 22, '10|22'),
(238, 'tr', NULL, '<p>Silikon bazlı esnek yapısı sayesinde kolay ve g&uuml;venilir EKG &ccedil;ekimi sağlar. Kemer sistemi, v&uuml;cuda otomatik uyum sağlayan entegre EKG elektrotları i&ccedil;erir.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 11, 9, 'tr|11|9'),
(239, 'tr', NULL, '<p>EKG kemeri, hiper esnek silikon yapı i&ccedil;ine yerleştirilmiş entegre EKG elektrotlarından oluşur. &nbsp;<br>Kullanıcı kemeri taktığında &uuml;r&uuml;n v&uuml;cut formuna otomatik olarak uyum sağlar ve elektrotlar arasında gereken mesafe kendiliğinden ayarlanır. &nbsp;<br>Bu yapı sayesinde &ouml;l&ccedil;&uuml;m noktalarının doğru yerleşimi sağlanır ve EKG &ccedil;ekim kalitesi artar. &nbsp;</p>\r\n<hr>\r\n<p>**&Ouml;zellikler:**<br>- Silikon bazlı, esnek ve hipoalerjenik yapı &nbsp;<br>- Entegre EKG elektrotları &nbsp;<br>- Kolay kullanım, hızlı uygulama &nbsp;<br>- Tek veya &ccedil;oklu kullanımlık versiyonlar (&uuml;r&uuml;n varyantına g&ouml;re değişebilir) &nbsp;<br>- V&uuml;cuda zarar vermeyen, konforlu tasarım &nbsp;</p>\r\n<hr>\r\n<p>Hastaneler, acil servisler ve klinik ortamlar i&ccedil;in uygundur.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 11, 10, 'tr|11|10'),
(240, NULL, NULL, 'LL (Left Leg), LA (Left Arm), LR ve RA (Right Arm) bağlantı noktalarına uyumludur.', NULL, NULL, NULL, NULL, NULL, NULL, 11, 29, '11|29'),
(241, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 11, 5, '11|5'),
(242, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 11, 6, '11|6'),
(243, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 11, 7, '11|7'),
(244, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 11, 8, 'default|11|8'),
(245, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 11, 26, '11|26'),
(246, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 11, 28, 'default|11|28'),
(247, NULL, NULL, NULL, NULL, NULL, 1999.0000, NULL, NULL, NULL, 11, 11, '11|11'),
(248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 13, '11|13'),
(249, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 14, 'default|11|14'),
(250, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 15, 'default|11|15'),
(251, NULL, NULL, 'SRF-11', NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, '11|1'),
(252, 'tr', NULL, 'Silikonlu EKG Kemer Sistemi', NULL, NULL, NULL, NULL, NULL, NULL, 11, 2, 'tr|11|2'),
(253, 'tr', NULL, 'silikonlu-ekg-kemer-sistemi', NULL, NULL, NULL, NULL, NULL, NULL, 11, 3, 'tr|11|3'),
(254, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 11, 25, '11|25'),
(255, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 11, 27, '11|27'),
(256, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 11, 30, '11|30'),
(257, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 11, 31, '11|31'),
(258, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 11, 32, '11|32'),
(259, 'tr', NULL, 'Silikonlu EKG Kemer Sistemi - Esnek Entegre Elektrotlu', NULL, NULL, NULL, NULL, NULL, NULL, 11, 16, 'tr|11|16'),
(260, 'tr', NULL, 'ekg kemeri, silikon ekg kemeri, entegre ekg elektrotları, esnek ekg sistemi, hızlı ekg çekimi', NULL, NULL, NULL, NULL, NULL, NULL, 11, 17, 'tr|11|17'),
(261, 'tr', NULL, 'Hiper esnek silikon yapılı EKG kemeri, elektrotları otomatik konumlandırarak hızlı ve güvenli EKG çekimini sağlar.', NULL, NULL, NULL, NULL, NULL, NULL, 11, 18, 'tr|11|18'),
(262, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 11, 22, '11|22'),
(263, 'tr', NULL, '<p>T&uuml;m EKG kablolarıyla uyumlu, iletkenliği y&uuml;ksek g&uuml;m&uuml;ş kaplama metal y&uuml;zeye sahip d&ouml;rt par&ccedil;alı EKG mandalı seti.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 12, 9, 'tr|12|9'),
(264, 'tr', NULL, '<p>EKG mandalları, y&uuml;ksek iletkenliğe sahip g&uuml;m&uuml;ş kaplama metal y&uuml;zeyleri sayesinde EKG &ouml;l&ccedil;&uuml;m cihazlarına doğru ve hızlı sinyal iletimi sağlar. &nbsp;<br>Yetişkin hastalar i&ccedil;in uygundur ve t&uuml;m standart EKG kablolarıyla uyumlu olarak &uuml;retilmiştir. &nbsp;Elektrokardiyografi (EKG) uygulamaları sırasında hasta konforunu artırır, sinyal iletimini g&uuml;venilir kılar.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 12, 10, 'tr|12|10'),
(265, NULL, NULL, '- Gümüş kaplı, deliksiz ve pürüzsüz yüzey  \r\n- Uzun ömürlü ve sağlam malzeme  \r\n- Kolay açma-kapama yapısı  \r\n- Dörtlü set (RA, LA, RL, LL)  \r\n- Pratik kullanım için optimize edilmiş ergonomik form', NULL, NULL, NULL, NULL, NULL, NULL, 12, 29, '12|29'),
(266, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 12, 5, '12|5'),
(267, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 12, 6, '12|6'),
(268, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 12, 7, '12|7'),
(269, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 12, 8, 'default|12|8'),
(270, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 12, 26, '12|26'),
(271, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 12, 28, 'default|12|28'),
(272, NULL, NULL, NULL, NULL, NULL, 549.9900, NULL, NULL, NULL, 12, 11, '12|11'),
(273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 13, '12|13'),
(274, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 14, 'default|12|14'),
(275, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 15, 'default|12|15'),
(276, NULL, NULL, 'AKS-11', NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, '12|1'),
(277, 'tr', NULL, 'EKG Mandalı – Gümüş Kaplama Metal Uçlu', NULL, NULL, NULL, NULL, NULL, NULL, 12, 2, 'tr|12|2'),
(278, 'tr', NULL, 'ekg-mandalı-gumus-kaplama-metal-uclu', NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, 'tr|12|3'),
(279, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 12, 25, '12|25'),
(280, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 12, 27, '12|27'),
(281, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 12, 31, '12|31'),
(282, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 12, 32, '12|32'),
(283, 'tr', NULL, 'Gümüş Kaplama EKG Mandalı - 4\'lü Set', NULL, NULL, NULL, NULL, NULL, NULL, 12, 16, 'tr|12|16'),
(284, 'tr', NULL, 'ekg mandalı, gümüş ekg klipsi, metal ekg kablosu mandalı, ekg bağlantı aparatı', NULL, NULL, NULL, NULL, NULL, NULL, 12, 17, 'tr|12|17'),
(285, 'tr', NULL, 'Yüksek iletkenliğe sahip gümüş kaplama EKG mandalı seti, dayanıklı yapısıyla EKG uygulamalarında güvenli sinyal iletimi sağlar.', NULL, NULL, NULL, NULL, NULL, NULL, 12, 18, 'tr|12|18'),
(286, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 12, 22, '12|22'),
(287, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Hasta &uuml;zerinde uzun s&uuml;re kalabilen ve s&uuml;rekli kontrol edilmesine gerek bırakmayan ekg puarı t&uuml;m ekg kabloları ile uyumludur.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 13, 9, 'tr|13|9'),
(288, 'tr', NULL, '<p class=\"MsoNormal\">EKG puarı ge&ccedil;meli yapıdadır.T&uuml;m ekg kablolarına uyumludur.D&uuml;z pim, banana ve &ccedil;ıt &ccedil;ıt u&ccedil;lukablololar i&ccedil;in uyumludur.Ekg puarının &ccedil;an kısmı paslanmaz veiletkenliği y&uuml;ksektir. Vidalı bir yapıya sahip olan ekgcihazı puarı &uuml;r&uuml;n&uuml;n&uuml;n en &ouml;nemli b&ouml;l&uuml;m&uuml; olan &ccedil;an kısmı paslanmaz malzemekullanılarak &uuml;retilmiştir.&nbsp;</p>\r\n<p class=\"MsoNormal\">Bu nedenle uzun s&uuml;re kullanım olanağısunar ve reaksiyonlara neden olmaz.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 13, 10, 'tr|13|10'),
(289, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 13, 29, '13|29'),
(290, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 5, '13|5'),
(291, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 6, '13|6'),
(292, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 7, '13|7'),
(293, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 8, 'default|13|8'),
(294, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 26, '13|26'),
(295, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 13, 28, 'default|13|28'),
(296, NULL, NULL, NULL, NULL, NULL, 1050.0000, NULL, NULL, NULL, 13, 11, '13|11'),
(297, NULL, NULL, NULL, NULL, NULL, 999.9900, NULL, NULL, NULL, 13, 13, '13|13'),
(298, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 14, 'default|13|14'),
(299, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 15, 'default|13|15'),
(300, NULL, NULL, 'AKS-12', NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, '13|1'),
(301, 'tr', NULL, 'Contec Ekg Çan ve Puarı 6\'lı Set Düz Pim', NULL, NULL, NULL, NULL, NULL, NULL, 13, 2, 'tr|13|2'),
(302, 'tr', NULL, 'contec-ekg-can-ve-puarı-6lı-set-duz-pim', NULL, NULL, NULL, NULL, NULL, NULL, 13, 3, 'tr|13|3'),
(303, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 13, 25, '13|25'),
(304, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 27, '13|27'),
(305, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 13, 30, '13|30'),
(306, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 13, 31, '13|31'),
(307, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 13, 32, '13|32'),
(308, 'tr', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 16, 'tr|13|16'),
(309, 'tr', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 17, 'tr|13|17'),
(310, 'tr', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 18, 'tr|13|18'),
(311, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 13, 22, '13|22'),
(312, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Tek kanallı EKG cihazı, elektrokardiyogramın (EKG) bir t&uuml;r&uuml;d&uuml;r ve kalp aktivitesini değerlendirmek i&ccedil;in kullanılan bir tıbbi cihazdır. \"Tek kanallı\" terimi, cihazın birinci dereceden kalp aktivitesini kaydedebildiği anlamına gelir, yani sadece bir elektrot (bir kanal) kullanır.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 14, 9, 'tr|14|9'),
(313, 'tr', NULL, '<p data-start=\"522\" data-end=\"927\">Firstmed Tek Kanallı EKG Cihazı ECG-100G, kompakt ve hafif tasarımıyla &ouml;ne &ccedil;ıkar. Otomatik ve manuel yazdırma modlarına sahiptir. Termal yazıcı sistemi sayesinde EKG verilerini hızlıca kağıda d&ouml;kebilir. Kalp ritmi analizinde g&uuml;venilir sonu&ccedil;lar sunar ve &ouml;zellikle muayenehaneler, klinikler ve hastanelerde kullanım i&ccedil;in uygundur. Kullanımı kolay aray&uuml;z&uuml; sayesinde sağlık profesyonellerine pratiklik sağlar.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 14, 10, 'tr|14|10'),
(314, NULL, NULL, 'Firstmed pmECG-100G ekg cihazı Türkçe ve İngilizce dil seçeneği sunmaktadır.\r\n160X96 geniş ve aydınlatmalı LCD ekranı üzerinde; çalışma modunu, batarya durumunu, 12 lead ekg dalga formunu ve kağıt hızını görüntüleyebilirsiniz.\r\nCihazın üzerinde gelen batarya tam dolu konumda iken 70 EKG çekimi yapabilir.\r\n\r\nDijital tasarım, dijital filtreleme, baseline ayarlama ve otomatik lead değişimi\r\n160x96 LCD ekran\r\nÇalışma modu, batarya, HR, lead, 12-lead EKG dalga formu ve kağıt hızı görüntüleme\r\nFiltreleme ve lead görüntüleme\r\nTürkçe/İngilizce dil seçeneği\r\nTüm leadler için EKG dalga formu kaydını uzatma\r\nTermal yazıcı: EKG dalga formu, lead adı, kağıt hızı, kalibrasyon, filtreleme, hasta bilgisi, ID yazdırımı\r\nAC/DC (opsiyonel)\r\nDahili şarj edilebilir batarya\r\nOtomatik devre koruması\r\n70 kopya EKG’yi destekleyen batarya\r\nOtomatik kapanma işlevi', NULL, NULL, NULL, NULL, NULL, NULL, 14, 29, '14|29'),
(315, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 5, '14|5'),
(316, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 6, '14|6'),
(317, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 7, '14|7'),
(318, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 8, 'default|14|8'),
(319, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 26, '14|26'),
(320, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 14, 28, 'default|14|28'),
(321, NULL, NULL, NULL, NULL, NULL, 19999.0000, NULL, NULL, NULL, 14, 11, '14|11'),
(322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 13, '14|13'),
(323, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 14, 'default|14|14'),
(324, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 15, 'default|14|15'),
(325, NULL, NULL, 'CHZ-01', NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, '14|1'),
(326, 'tr', NULL, 'Firstmed Tek Kanallı Ekg Cihazı ECG-100G', NULL, NULL, NULL, NULL, NULL, NULL, 14, 2, 'tr|14|2'),
(327, 'tr', NULL, 'firstmed-tek-kanallı-ekg-cihazı-ecg-100g', NULL, NULL, NULL, NULL, NULL, NULL, 14, 3, 'tr|14|3'),
(328, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 14, 25, '14|25'),
(329, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 27, '14|27'),
(330, NULL, NULL, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 14, 31, '14|31'),
(331, 'tr', NULL, 'Firstmed Tek Kanallı Ekg', NULL, NULL, NULL, NULL, NULL, NULL, 14, 16, 'tr|14|16'),
(332, 'tr', NULL, 'Firstmed Tek Kanallı Ekg', NULL, NULL, NULL, NULL, NULL, NULL, 14, 17, 'tr|14|17'),
(333, 'tr', NULL, 'Firstmed markasına ait ECG-100G modeli tek kanallı EKG cihazı; hafif, kompakt tasarımı ve gelişmiş batarya desteği ile kalp ritmi değerlendirmesinde güvenilir çözümler sunar.', NULL, NULL, NULL, NULL, NULL, NULL, 14, 18, 'tr|14|18'),
(334, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 14, 22, '14|22'),
(335, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">&nbsp;Kalpte bulunan elektriksel aktiviteyi ve kalbin ritmini grafik olarakkaydeden bir tetkiktir. Kollar, bacak ve g&ouml;ğ&uuml;s b&ouml;lgesine &ccedil;ekim i&ccedil;in elektrotlarbağlanır. Kalbin her atımında &uuml;rettiği elektrik sinyaller elektrotlartarafından algılanarak bir grafik k&acirc;ğıda kaydeder.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 15, 9, 'tr|15|9'),
(336, 'tr', NULL, '<p>Firstmed 6 kanallı EKG cihazı, 7 in&ccedil; dokunmatik LCD ekran, 12 lead eş zamanlı EKG g&ouml;r&uuml;nt&uuml;leme, gelişmiş yorumlama &ouml;zelliği, otomatik, manuel ve ritim yazdırma modları, lead bağlantı bilgisi, 1000 adeti aşan dahili hafıza, AC, DFT ve EMG filtreleri, dahili termal yazıcı ve 6 kanal EKG &ouml;zelliklerine sahiptir.<br>800x480 renkli TFT dokunmatik ekranı ve işlev tuşları ile kolay kullanım sağlar.<br>Y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kl&uuml; termal duyarlı ve termal y&ouml;nl&uuml; yazıcıya sahiptir.<br>Bazal &ccedil;izgi (baseline) sapmasına, AC ve parazitlere dayanıklılık i&ccedil;in tam dijital filtre mevcuttur.<br>Şarj edilebilen, yerleşik lityum bataryası bulunur.<br>EKG parametresini otomatik &ouml;l&ccedil;&uuml;mleme, otomatik analizleme ve otomatik teşhis etme işlevleri mevcuttur.<br>Satın alınma tarihinden itibaren 2 yıl garantisi mevcuttur.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, 15, 10, 'tr|15|10'),
(337, NULL, NULL, 'Firstmed pmECG-100G ekg cihazı Türkçe ve İngilizce dil seçeneği sunmaktadır.\r\n160X96 geniş ve aydınlatmalı LCD ekranı üzerinde; çalışma modunu, batarya durumunu, 12 lead ekg dalga formunu ve kağıt hızını görüntüleyebilirsiniz.\r\nCihazın üzerinde gelen batarya tam dolu konumda iken 70 EKG çekimi yapabilir.\r\n\r\nDijital tasarım, dijital filtreleme, baseline ayarlama ve otomatik lead değişimi\r\n160x96 LCD ekran\r\nÇalışma modu, batarya, HR, lead, 12-lead EKG dalga formu ve kağıt hızı görüntüleme\r\nFiltreleme ve lead görüntüleme\r\nTürkçe/İngilizce dil seçeneği\r\nTüm leadler için EKG dalga formu kaydını uzatma\r\nTermal yazıcı: EKG dalga formu, lead adı, kağıt hızı, kalibrasyon, filtreleme, hasta bilgisi, ID yazdırımı\r\nAC/DC (opsiyonel)\r\nDahili şarj edilebilir batarya\r\nOtomatik devre koruması\r\n70 kopya EKG’yi destekleyen batarya\r\nOtomatik kapanma işlevi', NULL, NULL, NULL, NULL, NULL, NULL, 15, 29, '15|29'),
(338, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 5, '15|5'),
(339, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 6, '15|6'),
(340, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 7, '15|7'),
(341, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 8, 'default|15|8'),
(342, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 26, '15|26'),
(343, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 15, 28, 'default|15|28'),
(344, NULL, NULL, NULL, NULL, NULL, 31750.0000, NULL, NULL, NULL, 15, 11, '15|11'),
(345, NULL, NULL, NULL, NULL, NULL, 31000.0000, NULL, NULL, NULL, 15, 13, '15|13'),
(346, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 14, 'default|15|14'),
(347, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 15, 'default|15|15'),
(348, NULL, NULL, 'CHZ-02', NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, '15|1'),
(349, 'tr', NULL, 'Firstmed 6 Kanallı Ekg Cihazı ECG-600G', NULL, NULL, NULL, NULL, NULL, NULL, 15, 2, 'tr|15|2'),
(350, 'tr', NULL, 'firstmed-6-kanallı-ekg-cihazı-ecg-600g', NULL, NULL, NULL, NULL, NULL, NULL, 15, 3, 'tr|15|3'),
(351, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 15, 25, '15|25'),
(352, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 27, '15|27'),
(353, NULL, NULL, '2024', NULL, NULL, NULL, NULL, NULL, NULL, 15, 31, '15|31'),
(354, 'tr', NULL, 'Firstmed Tek Kanallı Ekg', NULL, NULL, NULL, NULL, NULL, NULL, 15, 16, 'tr|15|16'),
(355, 'tr', NULL, 'Firstmed Tek Kanallı Ekg', NULL, NULL, NULL, NULL, NULL, NULL, 15, 17, 'tr|15|17'),
(356, 'tr', NULL, 'Firstmed markasına ait ECG-100G modeli tek kanallı EKG cihazı; hafif, kompakt tasarımı ve gelişmiş batarya desteği ile kalp ritmi değerlendirmesinde güvenilir çözümler sunar.', NULL, NULL, NULL, NULL, NULL, NULL, 15, 18, 'tr|15|18'),
(357, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 15, 22, '15|22'),
(358, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 15, 30, '15|30'),
(359, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 15, 32, '15|32'),
(360, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 14, 30, '14|30'),
(361, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 14, 32, '14|32'),
(362, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">&nbsp;Kalpte bulunan elektriksel aktiviteyi ve kalbin ritmini grafik olarakkaydeden bir tetkiktir. Kollar, bacak ve g&ouml;ğ&uuml;s b&ouml;lgesine &ccedil;ekim i&ccedil;in elektrotlarbağlanır. Kalbin her atımında &uuml;rettiği elektrik sinyaller elektrotlartarafından algılanarak bir grafik k&acirc;ğıda kaydeder.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 16, 9, 'tr|16|9'),
(363, 'tr', NULL, '<p>EKG cihazı sayesinde,kalbin kasılması esnasında oluşan elektriksel aktivite bir grafik şeklindekaydedilebilir ve bu grafik kağıda veya dijital bir ortama d&ouml;k&uuml;lebilir. Kalpattığında v&uuml;cutta hafif bir elektriksel aktivite oluşur.<br>EKG cihazıaracılığıyla bu elektriksel aktivite g&ouml;zlemlenir. B&ouml;ylece kalbin atış frekansı,kalp ritmi ve benzeri bir&ccedil;ok &ouml;nemli bilgiye ulaşılabilir. Kalpteki elektrikselaktiviteyi &ouml;l&ccedil;mek i&ccedil;in &ouml;ncelikle kişinin kol, bacak ve g&ouml;ğ&uuml;s b&ouml;lgelerineelektrotlar yapıştırılır.<br>Kişinin v&uuml;cudunun &uuml;zerine yapıştırılan buelektrotlar, EKG cihazına bilgi g&ouml;nderir. G&ouml;nderilen bilgi ise EKG cihazıtarafından bir grafik oluşturacak şekilde kağıda veya dijital bir ortamaaktarılır. Bu sayede ilgili hekim, hastanın durumu hakkında &ouml;n bilgi sahibi olur.&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, 16, 10, 'tr|16|10'),
(364, NULL, NULL, '3 kanallı\r\n\r\n7 inç 800x480 renkli LCD ekran\r\n\r\nTam dolu batarya ile 1 saat işletim süresi\r\n\r\nOtomatik, manuel, ritim ve periyodik yazdırma imkanı\r\n\r\nHasta kablosu çıktı alarmı\r\n\r\nDahili hafıza, 1.000 hasta kaydı\r\n\r\nHL7/DICOM özelliği', NULL, NULL, NULL, NULL, NULL, NULL, 16, 29, '16|29'),
(365, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 16, 5, '16|5'),
(366, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 16, 6, '16|6'),
(367, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 16, 7, '16|7'),
(368, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 16, 8, 'default|16|8'),
(369, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 16, 26, '16|26'),
(370, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 16, 28, 'default|16|28');
INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(371, NULL, NULL, NULL, NULL, NULL, 36750.0000, NULL, NULL, NULL, 16, 11, '16|11'),
(372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 13, '16|13'),
(373, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 14, 'default|16|14'),
(374, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 15, 'default|16|15'),
(375, NULL, NULL, 'CHZ-03', NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, '16|1'),
(376, 'tr', NULL, 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, NULL, NULL, NULL, NULL, NULL, 16, 2, 'tr|16|2'),
(377, 'tr', NULL, 'semcares-3-kanallı-ekg-cihazı-em-301', NULL, NULL, NULL, NULL, NULL, NULL, 16, 3, 'tr|16|3'),
(378, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 16, 25, '16|25'),
(379, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 16, 27, '16|27'),
(380, NULL, NULL, '2024', NULL, NULL, NULL, NULL, NULL, NULL, 16, 31, '16|31'),
(381, 'tr', NULL, 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, NULL, NULL, NULL, NULL, NULL, 16, 16, 'tr|16|16'),
(382, 'tr', NULL, 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, NULL, NULL, NULL, NULL, NULL, 16, 17, 'tr|16|17'),
(383, 'tr', NULL, 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, NULL, NULL, NULL, NULL, NULL, 16, 18, 'tr|16|18'),
(384, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 16, 22, '16|22'),
(385, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 16, 30, '16|30'),
(386, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 16, 32, '16|32'),
(387, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">microCOR, hastanelerde, muayenehanelerde, ambulanslarda ve evde kullanılabilen, y&uuml;ksek doğrulukta 12-kanal diagnostik EKG &ouml;l&ccedil;&uuml;m&uuml; yapan taşınabilir bir cihazdır. Kablosuz bağlantısı, kompakt tasarımı ve PACS DICOM entegrasyonu sayesinde hızlı, g&uuml;venilir ve esnek bir EKG değerlendirme &ccedil;&ouml;z&uuml;m&uuml; sunar.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 17, 9, 'tr|17|9'),
(388, 'tr', NULL, '<p>microCOR, taşınabilir ve kablosuz bağlantı &ouml;zelliğine sahip, diagnostik kalitede 12-kanal EKG cihazıdır. Windows işletim sistemli bilgisayarlar ve tabletlerle uyumludur, bu sayede hastane, muayenehane, ambulans ve ev gibi farklı ortamlarda kullanım imkanı sunar. Gelişmiş yazılımı sayesinde EKG verilerini detaylı analiz edebilir, farklı formatlarda kaydedebilir ve PACS sistemleriyle entegre &ccedil;alışabilir. Hafif ve kompakt tasarımıyla her yere kolayca taşınabilir</p>', NULL, NULL, NULL, NULL, NULL, NULL, 17, 10, 'tr|17|10'),
(389, NULL, NULL, '3 kanallı\r\n\r\n7 inç 800x480 renkli LCD ekran\r\n\r\nTam dolu batarya ile 1 saat işletim süresi\r\n\r\nOtomatik, manuel, ritim ve periyodik yazdırma imkanı\r\n\r\nHasta kablosu çıktı alarmı\r\n\r\nDahili hafıza, 1.000 hasta kaydı\r\n\r\nHL7/DICOM özelliği', NULL, NULL, NULL, NULL, NULL, NULL, 17, 29, '17|29'),
(390, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 5, '17|5'),
(391, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 6, '17|6'),
(392, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 7, '17|7'),
(393, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 8, 'default|17|8'),
(394, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 26, '17|26'),
(395, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 17, 28, 'default|17|28'),
(396, NULL, NULL, NULL, NULL, NULL, 29950.0000, NULL, NULL, NULL, 17, 11, '17|11'),
(397, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 13, '17|13'),
(398, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 14, 'default|17|14'),
(399, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 15, 'default|17|15'),
(400, NULL, NULL, 'CHZ-04', NULL, NULL, NULL, NULL, NULL, NULL, 17, 1, '17|1'),
(401, 'tr', NULL, 'Microcor PC Tabanlı 12 Kanallı Yorumlu Mobil EKG Cihazı (DICOM)', NULL, NULL, NULL, NULL, NULL, NULL, 17, 2, 'tr|17|2'),
(402, 'tr', NULL, 'microcor-pc-tabanlı', NULL, NULL, NULL, NULL, NULL, NULL, 17, 3, 'tr|17|3'),
(403, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 17, 25, '17|25'),
(404, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 17, 27, '17|27'),
(405, NULL, NULL, '2024', NULL, NULL, NULL, NULL, NULL, NULL, 17, 31, '17|31'),
(406, 'tr', NULL, 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, NULL, NULL, NULL, NULL, NULL, 17, 16, 'tr|17|16'),
(407, 'tr', NULL, 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, NULL, NULL, NULL, NULL, NULL, 17, 17, 'tr|17|17'),
(408, 'tr', NULL, 'Semcares 3 Kanallı Ekg Cihazı EM-301', NULL, NULL, NULL, NULL, NULL, NULL, 17, 18, 'tr|17|18'),
(409, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 17, 22, '17|22'),
(410, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 17, 30, '17|30'),
(411, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 17, 32, '17|32'),
(412, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Plusmed CompactNeb, kompres&ouml;rl&uuml; bir nebulizat&ouml;r cihazıdır ve solunum yolları yoluyla ila&ccedil;ların verilmesi amacıyla kullanılır. Astım, KOAH, bronşit ve diğer solunum yolu problemleri gibi durumlarda yaygın olarak kullanılır.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mtwrap wrapper\">\r\n<div class=\"relative mb-6 flex w-full flex-col items-center justify-between gap-4 text-center md:flex-row\">&nbsp;</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 18, 9, 'tr|18|9'),
(413, 'tr', NULL, '<p>Bu cihaz, ila&ccedil;ları sıvı formdan ince bir aerosol haline d&ouml;n&uuml;şt&uuml;rmek i&ccedil;in bir kompres&ouml;r kullanır ve bu aerosol, hasta tarafından nefes alınarak solunum yollarına ulaştırılır. CompactNeb\'in kompakt tasarımı, taşınması ve kullanılması kolaydır. Ayarlanabilir hava akışı ve ila&ccedil; dozu, tedaviyi hastanın ihtiya&ccedil;larına g&ouml;re &ouml;zelleştirmek i&ccedil;in kullanılabilir. Bu cihazlar, evde veya hastane ortamında kullanılan bir tedavi aracıdır ve solunum yolu problemlerinin semptomlarını hafifletmek veya kontrol altına almak i&ccedil;in etkili bir y&ouml;ntem sunar.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 18, 10, 'tr|18|10'),
(414, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 18, 29, '18|29'),
(415, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 18, 5, '18|5'),
(416, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 18, 6, '18|6'),
(417, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 18, 7, '18|7'),
(418, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 18, 8, 'default|18|8'),
(419, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 18, 26, '18|26'),
(420, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 18, 28, 'default|18|28'),
(421, NULL, NULL, NULL, NULL, NULL, 799.0000, NULL, NULL, NULL, 18, 11, '18|11'),
(422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 13, '18|13'),
(423, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 14, 'default|18|14'),
(424, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 15, 'default|18|15'),
(425, NULL, NULL, 'Chz-05', NULL, NULL, NULL, NULL, NULL, NULL, 18, 1, '18|1'),
(426, 'tr', NULL, 'Plusmed CompactNeb Kompresörlü Nebulizatör Cihazı Sln', NULL, NULL, NULL, NULL, NULL, NULL, 18, 2, 'tr|18|2'),
(427, 'tr', NULL, 'plusmed-compactneb-kompresorlu-nebulizator-cihazı-sln', NULL, NULL, NULL, NULL, NULL, NULL, 18, 3, 'tr|18|3'),
(428, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 18, 25, '18|25'),
(429, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 18, 27, '18|27'),
(430, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 18, 30, '18|30'),
(431, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 18, 31, '18|31'),
(432, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 18, 32, '18|32'),
(433, 'tr', NULL, 'Plusmed CompactNeb Kompresörlü Nebulizatör', NULL, NULL, NULL, NULL, NULL, NULL, 18, 16, 'tr|18|16'),
(434, 'tr', NULL, 'Plusmed CompactNeb Kompresörlü Nebulizatör Cihazı', NULL, NULL, NULL, NULL, NULL, NULL, 18, 17, 'tr|18|17'),
(435, 'tr', NULL, 'Plusmed CompactNeb Kompresörlü Nebulizatör Cihazı', NULL, NULL, NULL, NULL, NULL, NULL, 18, 18, 'tr|18|18'),
(436, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 18, 22, '18|22'),
(437, 'tr', NULL, '<p>Hastanın burun deliklerineyerleştirilerek oksijen aktarımını sağlamak i&ccedil;in kullanılır.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 19, 9, 'tr|19|9'),
(438, 'tr', NULL, '<p>Hastanın burun deliklerineyerleştirilerek oksijen aktarımını sağlamak i&ccedil;in kullanılır.Hasta i&ccedil;in maskekullanılmadığı durumlarda bu &uuml;r&uuml;n kullanılır ve iki ucu a&ccedil;ık bir t&uuml;pt&uuml;r.Medikal grade polipropilen malzemeden &uuml;retilmiştir.Burnu tahriş etmeyen yapıdadır.Kırılmaya b&uuml;k&uuml;lmeye dayanıklıdır.İ&ccedil;i kanallıdır.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 19, 10, 'tr|19|10'),
(439, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 19, 29, '19|29'),
(440, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 19, 5, '19|5'),
(441, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 19, 6, '19|6'),
(442, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 19, 7, '19|7'),
(443, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 19, 8, 'default|19|8'),
(444, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 19, 26, '19|26'),
(445, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 19, 28, 'default|19|28'),
(446, NULL, NULL, NULL, NULL, NULL, 99.9900, NULL, NULL, NULL, 19, 11, '19|11'),
(447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 13, '19|13'),
(448, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 14, 'default|19|14'),
(449, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 15, 'default|19|15'),
(450, NULL, NULL, 'AKS-1', NULL, NULL, NULL, NULL, NULL, NULL, 19, 1, '19|1'),
(451, 'tr', NULL, 'Oksijen Kanülü 2mt Sln', NULL, NULL, NULL, NULL, NULL, NULL, 19, 2, 'tr|19|2'),
(452, 'tr', NULL, 'oksijen-kanulu-2mt-sln', NULL, NULL, NULL, NULL, NULL, NULL, 19, 3, 'tr|19|3'),
(453, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 19, 25, '19|25'),
(454, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 19, 27, '19|27'),
(455, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 19, 30, '19|30'),
(456, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 19, 31, '19|31'),
(457, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 19, 32, '19|32'),
(458, 'tr', NULL, 'Oksijen Kanülü 2mt', NULL, NULL, NULL, NULL, NULL, NULL, 19, 16, 'tr|19|16'),
(459, 'tr', NULL, 'Oksijen Kanülü 2mt', NULL, NULL, NULL, NULL, NULL, NULL, 19, 17, 'tr|19|17'),
(460, 'tr', NULL, 'Oksijen Kanülü 2mt', NULL, NULL, NULL, NULL, NULL, NULL, 19, 18, 'tr|19|18'),
(461, NULL, NULL, '0.1', NULL, NULL, NULL, NULL, NULL, NULL, 19, 22, '19|22'),
(462, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Solunum yolu tıkanıklığını gidermeye yardımcı olur. Solunum yolunun a&ccedil;ık tutulmasını sağlamak ve solunumun devamını sağlamak i&ccedil;in kullanılır. Genellikle acil tıbbi durumlarda veya anestezi altındaki hastalarda kullanılırlar. &Ccedil;ocuklar i&ccedil;in kullanıma uygundur.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mtwrap wrapper\">\r\n<div class=\"relative mb-6 flex w-full flex-col items-center justify-between gap-4 text-center md:flex-row\">&nbsp;</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 20, 9, 'tr|20|9'),
(463, 'tr', NULL, '<h3 class=\"\"><strong>Airway Renkleri Nelerdir?</strong></h3>\r\n<p class=\"MsoListParagraphCxSpFirst\"><strong>Mavi No:0 Airway:</strong>&nbsp;Genellikle şeffaf veya k&uuml;&ccedil;&uuml;k boyutlu hava yolları i&ccedil;in kullanılır. Bu renk, genellikle &ccedil;ocuklar veya bebekler i&ccedil;in olan k&uuml;&ccedil;&uuml;k t&uuml;pler i&ccedil;in tercih edilir.</p>\r\n<p class=\"MsoListParagraphCxSpFirst\"><strong>Siyah No:1 Airway:</strong> Genellikle şeffaf veya k&uuml;&ccedil;&uuml;k boyutlu hava yolları i&ccedil;in kullanılır. Bu renk, genellikle &ccedil;ocuklar veya bebekler i&ccedil;in olan k&uuml;&ccedil;&uuml;k t&uuml;pler i&ccedil;in tercih edilir.</p>\r\n<p class=\"MsoListParagraphCxSpFirst\"><strong>Beyaz No:2 Airway:</strong>&nbsp;Orta ila b&uuml;y&uuml;k boyutlu hava yolları i&ccedil;in kullanılır. Bu renk, farklı hava yolu boyutları arasında bir k&ouml;pr&uuml; olarak işlev g&ouml;rebilir.</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong>Yeşil No:3 Airway:</strong>&nbsp;Orta ila b&uuml;y&uuml;k boyutlu hava yolları i&ccedil;in kullanılır. Bu renk, farklı hava yolu boyutları arasında bir k&ouml;pr&uuml; olarak işlev g&ouml;rebilir.</p>\r\n<p class=\"MsoListParagraphCxSpFirst\"><strong>Sarı No:4 Airway:</strong>&nbsp;Buboyut, genellikle yetişkin hastalarda kullanılır.</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong>Kırmızı No:5 Airway:</strong>&nbsp;Buboyut, genellikle yetişkin hastalarda kullanılır.</p>\r\n<p class=\"MsoListParagraphCxSpLast\"><strong>Mor veya Mor-Tonlarındaki Renkler:</strong> Genellikle&ouml;zel boyut ve t&uuml;rdeki hava yolları i&ccedil;in kullanılır. Bu renkler daha nadir ve&ouml;zel durumlar i&ccedil;in tasarlanmış hava yollarını temsil edebilir.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, 'tr|20|10'),
(464, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 20, 29, '20|29'),
(465, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 20, 5, '20|5'),
(466, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 20, 6, '20|6'),
(467, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 20, 7, '20|7'),
(468, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 20, 8, 'default|20|8'),
(469, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 20, 26, '20|26'),
(470, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 20, 28, 'default|20|28'),
(471, NULL, NULL, NULL, NULL, NULL, 49.9900, NULL, NULL, NULL, 20, 11, '20|11'),
(472, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 13, '20|13'),
(473, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 14, 'default|20|14'),
(474, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 15, 'default|20|15'),
(475, NULL, NULL, 'AKS-02', NULL, NULL, NULL, NULL, NULL, NULL, 20, 1, '20|1'),
(476, 'tr', NULL, 'Airway Solunum Hava Yolu Sln', NULL, NULL, NULL, NULL, NULL, NULL, 20, 2, 'tr|20|2'),
(477, 'tr', NULL, 'airway-solunum-hava-yolu-sln', NULL, NULL, NULL, NULL, NULL, NULL, 20, 3, 'tr|20|3'),
(478, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 20, 25, '20|25'),
(479, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 20, 27, '20|27'),
(480, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 20, 30, '20|30'),
(481, NULL, NULL, '2024', NULL, NULL, NULL, NULL, NULL, NULL, 20, 31, '20|31'),
(482, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 20, 32, '20|32'),
(483, 'tr', NULL, 'Airway Solunum Hava Yolu', NULL, NULL, NULL, NULL, NULL, NULL, 20, 16, 'tr|20|16'),
(484, 'tr', NULL, 'Airway Solunum Hava Yolu', NULL, NULL, NULL, NULL, NULL, NULL, 20, 17, 'tr|20|17'),
(485, 'tr', NULL, 'Airway Solunum Hava Yolu', NULL, NULL, NULL, NULL, NULL, NULL, 20, 18, 'tr|20|18'),
(486, NULL, NULL, '0.1', NULL, NULL, NULL, NULL, NULL, NULL, 20, 22, '20|22'),
(487, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Acil tıbbi m&uuml;dahalelerde solunum desteği sağlamak i&ccedil;in tasarlanmıştır. Hastanın solunum yollarını a&ccedil;ık tutmak ve solunum yapmasına yardımcı olmak i&ccedil;in kullanılır. Pediatri kullanımına uygundur.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mtwrap wrapper\">\r\n<div class=\"relative mb-6 flex w-full flex-col items-center justify-between gap-4 text-center md:flex-row\">&nbsp;</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 21, 9, 'tr|21|9'),
(488, 'tr', NULL, '<div>Sadece &ccedil;ocuk hastalarda kullanım i&ccedil;in tasarlanmış olan ambu seti ana torbası elle hakimiyet sağlanabilecek bir yumuşaklığa sahiptir.</div>\r\n<div>Verilen hava basıncı cihaz tarafından limitlenebildiği i&ccedil;in hastanın g&uuml;venliği kullanım esnasında korunabilmektedir</div>\r\n<div>ek y&ouml;nl&uuml; basın&ccedil; tahliye valfi mevcuttur.&nbsp;Olası akciğer zedelenmelerini &ouml;nler.Maske bağlantı konekt&ouml;r&uuml;, pratik bir kullanım sunacak yapıda dizayn edilmiştir.Ambu cihazı maskesi şeffaftır, hasta sekresyonları izlenebilir. Y&uuml;ze tam olarak oturabilmesi i&ccedil;in ergonomik bir tasarıma sahiptir.&Uuml;r&uuml;n CE normlarına uygun olarak &uuml;retilmiştir</div>', NULL, NULL, NULL, NULL, NULL, NULL, 21, 10, 'tr|21|10'),
(489, NULL, NULL, 'Cihaz balonunun gel-git hacmi yaklaşık 1300ML, \r\nOksijen (O2) rezervuar hacmi ortalama 1000ML’dir.', NULL, NULL, NULL, NULL, NULL, NULL, 21, 29, '21|29'),
(490, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 21, 5, '21|5'),
(491, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 6, '21|6'),
(492, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 7, '21|7'),
(493, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 8, 'default|21|8'),
(494, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 26, '21|26'),
(495, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 21, 28, 'default|21|28'),
(496, NULL, NULL, NULL, NULL, NULL, 399.0000, NULL, NULL, NULL, 21, 11, '21|11'),
(497, NULL, NULL, NULL, NULL, NULL, 349.9900, NULL, NULL, NULL, 21, 13, '21|13'),
(498, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 14, 'default|21|14'),
(499, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 15, 'default|21|15'),
(500, NULL, NULL, 'temporary-sku-dc36f0', NULL, NULL, NULL, NULL, NULL, NULL, 21, 1, '21|1'),
(501, 'tr', NULL, 'Ambu Cihazı Seti Çocuk Pvc Sln', NULL, NULL, NULL, NULL, NULL, NULL, 21, 2, 'tr|21|2'),
(502, 'tr', NULL, 'ambu-cihazı-seti-cocuk-pvc-sln', NULL, NULL, NULL, NULL, NULL, NULL, 21, 3, 'tr|21|3'),
(503, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 21, 25, '21|25'),
(504, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 21, 27, '21|27'),
(505, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 21, 30, '21|30'),
(506, NULL, NULL, '2024', NULL, NULL, NULL, NULL, NULL, NULL, 21, 31, '21|31'),
(507, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 21, 32, '21|32'),
(508, 'tr', NULL, 'Ambu Cihazı Seti Çocuk Pvc', NULL, NULL, NULL, NULL, NULL, NULL, 21, 16, 'tr|21|16'),
(509, 'tr', NULL, 'Airway Solunum Hava Yolu', NULL, NULL, NULL, NULL, NULL, NULL, 21, 17, 'tr|21|17'),
(510, 'tr', NULL, 'Airway Solunum Hava Yolu (Çocuk)', NULL, NULL, NULL, NULL, NULL, NULL, 21, 18, 'tr|21|18'),
(511, NULL, NULL, '0.1', NULL, NULL, NULL, NULL, NULL, NULL, 21, 22, '21|22'),
(512, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">&nbsp;burun ve ağız &uuml;zerine yerleştirilen bu oksijen maskesi, hastaya doğrudan oksijen verir ve bir oksijen kaynağına bağlanarak &ccedil;alışır.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 22, 9, 'tr|22|9'),
(513, 'tr', NULL, '<div>Oksijen maskesi, oksijen tedavilerinde, hastanelerde, aile sağlığı merkezlerinde, acil ilk yardımlarda, ambulanslarda v.b gibi yerlerde kullanılmaktadır.</div>\r\n<div>&Uuml;r&uuml;n burun ve y&uuml;z yapısına anotomik olarak &uuml;retilmiştir.Kolayca temizlenebilmektedir.Başı &ccedil;evreleyen esnek lastiği ile birlikte ayarlanabilir olarak &uuml;retilmiştir.Maskenin her iki yanında O2 ve CO2 &ccedil;ıkaracak şekilde &uuml;retilmiştir.Maske hortumu ile birlikte &uuml;retilmiştir.Hortum oksijen cihazlarına uyumlu olarak &uuml;retilmiştir.Tekli paketler halinde kullanıma sunulmaktadır.Erişkin ve &ccedil;ocuk olmak &uuml;zere &ccedil;eşitleri mevcuttur.</div>', NULL, NULL, NULL, NULL, NULL, NULL, 22, 10, 'tr|22|10'),
(514, NULL, NULL, 'Cihaz balonunun gel-git hacmi yaklaşık 1300ML, \r\nOksijen (O2) rezervuar hacmi ortalama 1000ML’dir.', NULL, NULL, NULL, NULL, NULL, NULL, 22, 29, '22|29'),
(515, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 22, 5, '22|5'),
(516, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 22, 6, '22|6'),
(517, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 22, 7, '22|7'),
(518, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 22, 8, 'default|22|8'),
(519, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 22, 26, '22|26'),
(520, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 22, 28, 'default|22|28'),
(521, NULL, NULL, NULL, NULL, NULL, 199.0000, NULL, NULL, NULL, 22, 11, '22|11'),
(522, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 13, '22|13'),
(523, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 14, 'default|22|14'),
(524, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 15, 'default|22|15'),
(525, NULL, NULL, 'AKS-04', NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, '22|1'),
(526, 'tr', NULL, 'Oksijen Maskesi Sln', NULL, NULL, NULL, NULL, NULL, NULL, 22, 2, 'tr|22|2'),
(527, 'tr', NULL, 'oksijen-maskesi-sln', NULL, NULL, NULL, NULL, NULL, NULL, 22, 3, 'tr|22|3'),
(528, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 22, 25, '22|25'),
(529, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 22, 27, '22|27'),
(530, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 22, 30, '22|30'),
(531, NULL, NULL, '2024', NULL, NULL, NULL, NULL, NULL, NULL, 22, 31, '22|31'),
(532, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 22, 32, '22|32'),
(533, 'tr', NULL, 'Oksijen Maskesi', NULL, NULL, NULL, NULL, NULL, NULL, 22, 16, 'tr|22|16'),
(534, 'tr', NULL, 'Oksijen Maskesi', NULL, NULL, NULL, NULL, NULL, NULL, 22, 17, 'tr|22|17'),
(535, 'tr', NULL, 'Oksijen Maskesi', NULL, NULL, NULL, NULL, NULL, NULL, 22, 18, 'tr|22|18'),
(536, NULL, NULL, '0.1', NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, '22|22'),
(537, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">İla&ccedil; hazneli Nebulizat&ouml;r Maskesi</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 23, 9, 'tr|23|9'),
(538, 'tr', NULL, '<div>Maske nebulizat&ouml;r cihazı ile kullanılır. Yetişkin ve &ccedil;ocuk olmak &uuml;zere iki varyantı bulunmaktadır. İla&ccedil; maske haznesine boşaltılır, hortum cihaza takılarak kullanıma hazır hale gelir.&nbsp;</div>\r\n<div>PVC malzemeden &uuml;retilmiştir.</div>\r\n<div>Standart bağlantı konnekt&ouml;r&uuml; ve kırılmaya dayanıklı hortum mevcuttur.</div>\r\n<div>8 ML ila&ccedil; haznesi bulunur</div>', NULL, NULL, NULL, NULL, NULL, NULL, 23, 10, 'tr|23|10'),
(539, NULL, NULL, 'Cihaz balonunun gel-git hacmi yaklaşık 1300ML, \r\nOksijen (O2) rezervuar hacmi ortalama 1000ML’dir.', NULL, NULL, NULL, NULL, NULL, NULL, 23, 29, '23|29'),
(540, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 23, 5, '23|5'),
(541, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 23, 6, '23|6'),
(542, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 23, 7, '23|7'),
(543, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 23, 8, 'default|23|8'),
(544, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 23, 26, '23|26'),
(545, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 23, 28, 'default|23|28'),
(546, NULL, NULL, NULL, NULL, NULL, 129.9900, NULL, NULL, NULL, 23, 11, '23|11'),
(547, NULL, NULL, NULL, NULL, NULL, 99.9900, NULL, NULL, NULL, 23, 13, '23|13'),
(548, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 14, 'default|23|14'),
(549, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 15, 'default|23|15'),
(550, NULL, NULL, 'AKS-05', NULL, NULL, NULL, NULL, NULL, NULL, 23, 1, '23|1'),
(551, 'tr', NULL, 'Nebulizatör Maskesi Sln', NULL, NULL, NULL, NULL, NULL, NULL, 23, 2, 'tr|23|2'),
(552, 'tr', NULL, 'nebulizator-maskesi-sln', NULL, NULL, NULL, NULL, NULL, NULL, 23, 3, 'tr|23|3'),
(553, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 23, 25, '23|25'),
(554, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 23, 27, '23|27'),
(555, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 23, 30, '23|30'),
(556, NULL, NULL, '2024', NULL, NULL, NULL, NULL, NULL, NULL, 23, 31, '23|31'),
(557, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 23, 32, '23|32'),
(558, 'tr', NULL, 'Nebulizatör Maskesi', NULL, NULL, NULL, NULL, NULL, NULL, 23, 16, 'tr|23|16'),
(559, 'tr', NULL, 'Nebulizatör Maskesi', NULL, NULL, NULL, NULL, NULL, NULL, 23, 17, 'tr|23|17'),
(560, 'tr', NULL, 'İlaç hazneli Nebulizatör Maskesi', NULL, NULL, NULL, NULL, NULL, NULL, 23, 18, 'tr|23|18'),
(561, NULL, NULL, '0.1', NULL, NULL, NULL, NULL, NULL, NULL, 23, 22, '23|22'),
(562, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Plusmed Respiad Mesh nebulizat&ouml;r cihazı astım, KOAH, alerjik semptomlar, burun akıntısı &ouml;ks&uuml;r&uuml;k gibi şikayetleri tedavi etmek amacıyla &uuml;retilmiştir.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 24, 9, 'tr|24|9'),
(563, 'tr', NULL, '<p>Nebulizat&ouml;rler solunum yolu hastalıklarında ila&ccedil; solunumunda kullanılan cihazlardır.</p>\r\n<p>&Uuml;st, orta ve alt solunum yollarındaki solunum hastalıklarının tedavisine y&ouml;nelik &ccedil;oğu ila&ccedil; sıvı formda bulunur ve bu nedenle nebulizat&ouml;r ile kullanılabilir.&nbsp;Plusmed Respiad Mesh nebulizat&ouml;r cihazı astım, KOAH, alerjik semptomlar, burun akıntısı &ouml;ks&uuml;r&uuml;k gibi şikayetleri tedavi etmek amacıyla &uuml;retilmiştir.<br>Sıvıyı yaklaşık 5 mikron b&uuml;y&uuml;kl&uuml;ğ&uuml;nde partik&uuml;llere ayırabilen cihaz &ccedil;ocuk hastaların solunumunda kullanım i&ccedil;in olduk&ccedil;a uygundur.<br>K&uuml;&ccedil;&uuml;k boyutları ve hafifliğiyle kolay taşınabilir olması sayesinde ve aynı zamanda sessiz olmasından dolayı seyahat ederken kullanım i&ccedil;in uygundur.&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, 24, 10, 'tr|24|10'),
(564, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 24, 29, '24|29'),
(565, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 24, 5, '24|5'),
(566, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 24, 6, '24|6'),
(567, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 24, 7, '24|7'),
(568, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 24, 8, 'default|24|8'),
(569, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 24, 26, '24|26'),
(570, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 24, 28, 'default|24|28'),
(571, NULL, NULL, NULL, NULL, NULL, 999.0000, NULL, NULL, NULL, 24, 11, '24|11'),
(572, NULL, NULL, NULL, NULL, NULL, 899.0000, NULL, NULL, NULL, 24, 13, '24|13'),
(573, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 14, 'default|24|14'),
(574, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 15, 'default|24|15'),
(575, NULL, NULL, 'CHZ-BK1', NULL, NULL, NULL, NULL, NULL, NULL, 24, 1, '24|1'),
(576, 'tr', NULL, 'Plusmed Respiad Mesh Nebulizatör Cihazı Sln', NULL, NULL, NULL, NULL, NULL, NULL, 24, 2, 'tr|24|2'),
(577, 'tr', NULL, 'plusmed-respiad-mesh-nebulizator-cihazı-sln', NULL, NULL, NULL, NULL, NULL, NULL, 24, 3, 'tr|24|3'),
(578, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 24, 25, '24|25'),
(579, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 24, 27, '24|27'),
(580, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 24, 30, '24|30'),
(581, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 24, 31, '24|31'),
(582, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 24, 32, '24|32'),
(583, 'tr', NULL, 'Plusmed CompactNeb Kompresörlü Nebulizatör', NULL, NULL, NULL, NULL, NULL, NULL, 24, 16, 'tr|24|16'),
(584, 'tr', NULL, 'Plusmed CompactNeb Kompresörlü Nebulizatör Cihazı', NULL, NULL, NULL, NULL, NULL, NULL, 24, 17, 'tr|24|17'),
(585, 'tr', NULL, 'Plusmed CompactNeb Kompresörlü Nebulizatör Cihazı', NULL, NULL, NULL, NULL, NULL, NULL, 24, 18, 'tr|24|18'),
(586, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 24, 22, '24|22'),
(587, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Respiad Mesh nebulizat&ouml;r cihazı astım, KOAH, alerjik semptomlar, burun akıntısı &ouml;ks&uuml;r&uuml;k gibi şikayetleri tedavi etmek amacıyla &uuml;retilmiştir.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 25, 9, 'tr|25|9'),
(588, 'tr', NULL, '<p>Nebulizat&ouml;rler solunum yolu hastalıklarında ila&ccedil; solunumunda kullanılan cihazlardır.</p>\r\n<p>&Uuml;st, orta ve alt solunum yollarındaki solunum hastalıklarının tedavisine y&ouml;nelik &ccedil;oğu ila&ccedil; sıvı formda bulunur ve bu nedenle nebulizat&ouml;r ile kullanılabilir.&nbsp;Plusmed Respiad Mesh nebulizat&ouml;r cihazı astım, KOAH, alerjik semptomlar, burun akıntısı &ouml;ks&uuml;r&uuml;k gibi şikayetleri tedavi etmek amacıyla &uuml;retilmiştir.<br>Sıvıyı yaklaşık 5 mikron b&uuml;y&uuml;kl&uuml;ğ&uuml;nde partik&uuml;llere ayırabilen cihaz &ccedil;ocuk hastaların solunumunda kullanım i&ccedil;in olduk&ccedil;a uygundur.<br>K&uuml;&ccedil;&uuml;k boyutları ve hafifliğiyle kolay taşınabilir olması sayesinde ve aynı zamanda sessiz olmasından dolayı seyahat ederken kullanım i&ccedil;in uygundur.&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, 25, 10, 'tr|25|10'),
(589, NULL, NULL, 'Küçük ve hafif, modern dizayn.\r\nYüksek nebulizasyon oranı.\r\nPedriatri uyumlu.\r\nAyarlanabilir basınç kontrollü ilaç haznesi.\r\nSessiz çalışma prensibi.\r\nDüşük güç tüketimi.\r\nParçacık Boyutu: 5\r\nMaksimum Basınç: 2.9 Bar\r\nNebulizasyon Hızı: 0.07 ml/dk\r\nSes Seviyesi: 65 dB\r\nTipi: Kompresör\r\nYaş Grubu: Tüm yaşlar', NULL, NULL, NULL, NULL, NULL, NULL, 25, 29, '25|29'),
(590, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 5, '25|5'),
(591, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 6, '25|6'),
(592, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 7, '25|7'),
(593, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 8, 'default|25|8'),
(594, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 26, '25|26'),
(595, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 25, 28, 'default|25|28'),
(596, NULL, NULL, NULL, NULL, NULL, 1199.0000, NULL, NULL, NULL, 25, 11, '25|11'),
(597, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 13, '25|13'),
(598, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 14, 'default|25|14'),
(599, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 15, 'default|25|15'),
(600, NULL, NULL, 'CHZ-Sln', NULL, NULL, NULL, NULL, NULL, NULL, 25, 1, '25|1'),
(601, 'tr', NULL, 'Respirox Kompresörlü Nebulizatör Cihazı AXD-303 Sln', NULL, NULL, NULL, NULL, NULL, NULL, 25, 2, 'tr|25|2'),
(602, 'tr', NULL, 'respirox-kompresorlu-nebulizator-cihazı-axd-303-sln', NULL, NULL, NULL, NULL, NULL, NULL, 25, 3, 'tr|25|3'),
(603, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 25, 25, '25|25'),
(604, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 25, 27, '25|27'),
(605, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 25, 30, '25|30'),
(606, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 25, 31, '25|31'),
(607, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 25, 32, '25|32'),
(608, 'tr', NULL, 'Respirox Kompresörlü Nebulizatör Cihazı AXD-303 Sln', NULL, NULL, NULL, NULL, NULL, NULL, 25, 16, 'tr|25|16'),
(609, 'tr', NULL, 'Respirox Kompresörlü Nebulizatör Cihazı AXD-303 Sln', NULL, NULL, NULL, NULL, NULL, NULL, 25, 17, 'tr|25|17'),
(610, 'tr', NULL, 'Respirox Kompresörlü Nebulizatör Cihazı AXD-303 Sln', NULL, NULL, NULL, NULL, NULL, NULL, 25, 18, 'tr|25|18'),
(611, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, 25, 22, '25|22'),
(612, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Omron C102 Total Kompres&ouml;rl&uuml; Nebulizat&ouml;r Cihazı, solunum yolu hastalıklarının semptomlarını hafifletmek veya tedavi etmek amacıyla kullanılan bir tıbbi cihazdır. Solunum yolu hastalıklarında kullanılan ila&ccedil;ların, sıvı formda solunum yollarına p&uuml;sk&uuml;rt&uuml;lerek inhalasyon yoluyla alınmasını sağlar.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 26, 9, 'tr|26|9'),
(613, 'tr', NULL, '<p>Mevsimlerin değişmesiyle &ccedil;ocuklar, rahat&ccedil;a nefes almalarını g&uuml;&ccedil;leştiren &ccedil;eşitli solunum yolu hastalıklarına yakalanabilir.</p>\r\n<p>İlkbaharda ve yazın polenler alerjik riniti tetikleyerek burun akıntısına, aksırmaya veya g&ouml;zlerde ve burunda kaşıntıya neden olabilir. Sonbaharda ve kışın vir&uuml;sler yayılmaya başlar ve burun tıkanıklığı veya akıntısı, &ouml;ks&uuml;r&uuml;k ya da boğaz ağrısı gibi semptomlarla solunum yollarını etkiler.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 26, 10, 'tr|26|10'),
(614, NULL, NULL, 'Nebulizatör; Bronşit, bronşiyolit ve astım gibi hastalıkları tedavi etmek için akciğerlerde etkin ilaç birikimini sağlar\r\n\r\nKullanımı kolay ve hijyeniktir. \r\n\r\nCihaz Tipi; Kompresörlü Nebülizör ve Burun Duşu\r\n\r\nÜst Solunum Yolları, Tıkalı burun, Rinit, Alerjik Rinit, Larenjit, Alt Solunum Yolları, Astım, Bronşit, Bronşiyolit ve KOAH için uygundur.\r\n\r\nÇocuklar ve yetişkinler için uygundur.\r\n\r\nNebulizasyon Hızı; Nebulizatör: 0,35 ml/dak. Burun yıkama: > 5 ml/dak.\r\n\r\nİlaç Uygulama Miktarları; Nebulizatör: 10-12 ml. Burun yıkama: 3-15 ml.\r\n\r\nŞebeke elektriğiyle kullanılabilir.', NULL, NULL, NULL, NULL, NULL, NULL, 26, 29, '26|29'),
(615, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 26, 5, '26|5'),
(616, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 26, 6, '26|6'),
(617, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 26, 7, '26|7'),
(618, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 26, 8, 'default|26|8'),
(619, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 26, 26, '26|26'),
(620, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 26, 28, 'default|26|28'),
(621, NULL, NULL, NULL, NULL, NULL, 1899.0000, NULL, NULL, NULL, 26, 11, '26|11'),
(622, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 13, '26|13'),
(623, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 14, 'default|26|14'),
(624, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 15, 'default|26|15'),
(625, NULL, NULL, 'CHZ-Sln-1', NULL, NULL, NULL, NULL, NULL, NULL, 26, 1, '26|1'),
(626, 'tr', NULL, 'Omron C102 Total Kompresörlü Nebulizatör Cihazı Sln', NULL, NULL, NULL, NULL, NULL, NULL, 26, 2, 'tr|26|2'),
(627, 'tr', NULL, 'omron-c102-total-kompresorlu-nebulizator-cihazı-sln', NULL, NULL, NULL, NULL, NULL, NULL, 26, 3, 'tr|26|3'),
(628, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 26, 25, '26|25'),
(629, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 26, 27, '26|27'),
(630, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 26, 30, '26|30'),
(631, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 26, 31, '26|31'),
(632, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 26, 32, '26|32'),
(633, 'tr', NULL, 'Omron C102 Total Kompresörlü Nebulizatör Cihazı Sln', NULL, NULL, NULL, NULL, NULL, NULL, 26, 16, 'tr|26|16'),
(634, 'tr', NULL, 'Omron C102 Total Kompresörlü Nebulizatör Cihazı Sln', NULL, NULL, NULL, NULL, NULL, NULL, 26, 17, 'tr|26|17'),
(635, 'tr', NULL, 'Omron C102 Total Kompresörlü Nebulizatör Cihazı Sln', NULL, NULL, NULL, NULL, NULL, NULL, 26, 18, 'tr|26|18'),
(636, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, 26, 22, '26|22'),
(637, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Omron C101 Essential Kompres&ouml;rl&uuml; Nebulizat&ouml;r Cihazı (NE-C101-E), solunum yolu sorunları olan kişilere ila&ccedil;larını solunum yoluyla alabilmeleri i&ccedil;in kullanılan bir tıbbi cihazdır. Bu nebulizat&ouml;r, solunum yolu hastalıklarının semptomlarını hafifletmek veya tedavi etmek i&ccedil;in kullanılan ila&ccedil;ların, sıvı haldeyken solunum yollarına p&uuml;sk&uuml;rt&uuml;lerek nefes yoluyla alınmasını sağlar.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 27, 9, 'tr|27|9'),
(638, 'tr', NULL, '<p>&Uuml;st, orta ve alt solunumyollarındaki solunum hastalıklarının tedavisine y&ouml;nelik &ccedil;oğu ila&ccedil; sıvı formdabulunur ve bu nedenle neb&uuml;lizat&ouml;r ile kullanılabilir. Neb&uuml;liz&ouml;rler ayrıcaneb&uuml;lizat&ouml;r haznesinde farklı ila&ccedil;ların karıştırılmasına da olanak tanıyarak buila&ccedil;ların aynı anda kolaylıkla solunmasını sağlar. Mekanik anlamda, Omron C101Essential Kompres&ouml;rl&uuml; Neb&uuml;lizat&ouml;r Cihazı, ilacın etkin madde damlacıklarınıhavayla karıştırır. Neb&uuml;lizat&ouml;r i&ccedil;inde oluşan ince taneli buhar, ağızlık, maskeveya burunlukla solunabilir. Başlıca avantajı, neb&uuml;lizat&ouml;r&uuml;n &ccedil;alışması vesoluma tekniği arasında belirli bir koordinasyon gerektirmemesidir. Bu nedenleOmron neb&uuml;lizat&ouml;rler &ouml;zellikle &ccedil;ocuklar ve yaşlılar i&ccedil;in piyasada en yaygıntavsiye edilen marka ve modellerdir.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 27, 10, 'tr|27|10'),
(639, NULL, NULL, 'Nebulizatör; Bronşit, bronşiyolit ve astım gibi hastalıkları tedavi etmek için akciğerlerde etkin ilaç birikimini sağlar\r\n\r\nKullanımı kolay ve hijyeniktir. \r\n\r\nCihaz Tipi; Kompresörlü Nebülizör ve Burun Duşu\r\n\r\nÜst Solunum Yolları, Tıkalı burun, Rinit, Alerjik Rinit, Larenjit, Alt Solunum Yolları, Astım, Bronşit, Bronşiyolit ve KOAH için uygundur.\r\n\r\nÇocuklar ve yetişkinler için uygundur.\r\n\r\nNebulizasyon Hızı; Nebulizatör: 0,35 ml/dak. Burun yıkama: > 5 ml/dak.\r\n\r\nİlaç Uygulama Miktarları; Nebulizatör: 10-12 ml. Burun yıkama: 3-15 ml.\r\n\r\nŞebeke elektriğiyle kullanılabilir.', NULL, NULL, NULL, NULL, NULL, NULL, 27, 29, '27|29'),
(640, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 27, 5, '27|5'),
(641, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 27, 6, '27|6'),
(642, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 27, 7, '27|7'),
(643, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 27, 8, 'default|27|8'),
(644, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 27, 26, '27|26'),
(645, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 27, 28, 'default|27|28'),
(646, NULL, NULL, NULL, NULL, NULL, 1499.0000, NULL, NULL, NULL, 27, 11, '27|11'),
(647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 13, '27|13'),
(648, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 14, 'default|27|14'),
(649, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 15, 'default|27|15'),
(650, NULL, NULL, 'CHZ-Sln-2', NULL, NULL, NULL, NULL, NULL, NULL, 27, 1, '27|1'),
(651, 'tr', NULL, 'Omron C101 Essential Kompresörlü Nebulizatör Cihazı Sln', NULL, NULL, NULL, NULL, NULL, NULL, 27, 2, 'tr|27|2'),
(652, 'tr', NULL, 'omron-c101-essential-kompresorlu-nebulizator-cihazı-sln', NULL, NULL, NULL, NULL, NULL, NULL, 27, 3, 'tr|27|3'),
(653, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 27, 25, '27|25'),
(654, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 27, 27, '27|27'),
(655, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 27, 30, '27|30'),
(656, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 27, 31, '27|31'),
(657, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 27, 32, '27|32'),
(658, 'tr', NULL, 'Omron C101 Essential Kompresörlü Nebulizatör Cihazı Sln', NULL, NULL, NULL, NULL, NULL, NULL, 27, 16, 'tr|27|16'),
(659, 'tr', NULL, 'Omron C101 Essential Kompresörlü Nebulizatör Cihazı Sln', NULL, NULL, NULL, NULL, NULL, NULL, 27, 17, 'tr|27|17'),
(660, 'tr', NULL, 'Omron C101 Essential Kompresörlü Nebulizatör Cihazı Sln', NULL, NULL, NULL, NULL, NULL, NULL, 27, 18, 'tr|27|18'),
(661, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, 27, 22, '27|22'),
(662, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">OED (Otomatik Harici Defibrilat&ouml;r) cihazı, bir kişinin ani kalp durması veya ciddi kalp ritmi bozukluğu (&ouml;rneğin, ventrik&uuml;ler fibrilasyon) durumunda kullanılan bir tıbbi cihazdır. Temel olarak, AED\'nin işlevi, kalp ritmini d&uuml;zelten elektriksel enerjiyi sağlayarak kalbi normal ritmine geri d&ouml;nd&uuml;rmektir.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 28, 9, 'tr|28|9'),
(663, 'tr', NULL, '<p class=\"MsoNormal\"><strong>Kolay Kullanım;</strong></p>\r\n<p class=\"MsoNormal\">3 aşamalı aray&uuml;z , basit ve anlaşılır sesli y&ouml;nlendirme</p>\r\n<p class=\"MsoNormal\"><strong>Her Zaman Kullanıma Hazır;</strong></p>\r\n<p class=\"MsoNormal\">Kapağını a&ccedil;tığınızda CardiAngel otomatik olarak a&ccedil;ılır vey&ouml;nlendirmeye başlar , takılı elektrodlar sayesinde direk hastanın g&ouml;ğs&uuml;neelektrodları uygulayabilirsiniz, sistematik &ouml;n şok hazırlık&nbsp;sayesinde şokkısa s&uuml;rede hazırlanır.</p>\r\n<p class=\"MsoNormal\"><strong>Ger&ccedil;ek Zamanlı CPR ( Kalp Masajı )Geri Bildirim;<br></strong></p>\r\n<p class=\"MsoNormal\">Erken Defibrilasyon ile birlikte&nbsp; organlara doğru veyeterli oksijen iletimini a&ccedil;ık tutmak ve kan dolaşımını devam ettirmek i&ccedil;inkalp masajı &ccedil;ok &ouml;nemlidir. CardiAngel kalp masajını doğru ve efektif yapmanızi&ccedil;in;</p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\">Ellerin doğru konumlanmasına yardımcı olur,</li>\r\n<li class=\"MsoNormal\">Metronom sesi ile ritmi yakalamanıza yardımcı olur,</li>\r\n<li class=\"MsoNormal\">G&ouml;ğ&uuml;s basısı ile ilgili ekstra bir sens&ouml;re ihtiya&ccedil; olmadan (FreeCPR&reg;) ger&ccedil;ek zamanlı geri bildirim yaparak yardımcı olur.</li>\r\n</ul>', NULL, NULL, NULL, NULL, NULL, NULL, 28, 10, 'tr|28|10'),
(664, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 28, 29, '28|29'),
(665, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 5, '28|5'),
(666, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 6, '28|6'),
(667, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 7, '28|7'),
(668, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 8, 'default|28|8'),
(669, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 26, '28|26'),
(670, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 28, 28, 'default|28|28'),
(671, NULL, NULL, NULL, NULL, NULL, 79000.0000, NULL, NULL, NULL, 28, 11, '28|11'),
(672, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 13, '28|13'),
(673, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 14, 'default|28|14'),
(674, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 15, 'default|28|15'),
(675, NULL, NULL, 'Chz-Def', NULL, NULL, NULL, NULL, NULL, NULL, 28, 1, '28|1'),
(676, 'tr', NULL, 'Def-CardiAngel OED Defibrilatör Cihazı', NULL, NULL, NULL, NULL, NULL, NULL, 28, 2, 'tr|28|2'),
(677, 'tr', NULL, 'def-cardiangel-oed-defibrilator-cihazı', NULL, NULL, NULL, NULL, NULL, NULL, 28, 3, 'tr|28|3'),
(678, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 28, 25, '28|25'),
(679, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 28, 27, '28|27'),
(680, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 28, 30, '28|30'),
(681, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 28, 31, '28|31'),
(682, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 28, 32, '28|32'),
(683, 'tr', NULL, 'CardiAngel OED Defibrilatör Cihazı', NULL, NULL, NULL, NULL, NULL, NULL, 28, 16, 'tr|28|16'),
(684, 'tr', NULL, 'CardiAngel OED Defibrilatör Cihazı', NULL, NULL, NULL, NULL, NULL, NULL, 28, 17, 'tr|28|17'),
(685, 'tr', NULL, 'CardiAngel OED Defibrilatör Cihazı', NULL, NULL, NULL, NULL, NULL, NULL, 28, 18, 'tr|28|18'),
(686, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 28, 22, '28|22');
INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(687, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Aselsan Heartline OED, kalbin kan pompalama fonksiyonunuyerine getiremediği, b&uuml;y&uuml;k arterlerden nabız alınamadığı ve buna bağlı olarakhastada solunum ve bilin&ccedil; kaybı ile gelişen ani kalp durması vakalarına yola&ccedil;an kalp atışı d&uuml;zensizliklerini ve karıncık fibrilasyonu gibi rahatsızlıklarıtedavi etmek &uuml;zere tasarlanmış otomatik eksternal defibrilat&ouml;r (OED) cihazıdır.</p>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 30, 9, 'tr|30|9'),
(688, 'tr', NULL, '<p class=\"MsoNormal\"><strong>Kolay Kullanım;</strong></p>\r\n<p class=\"MsoNormal\">3 aşamalı aray&uuml;z , basit ve anlaşılır sesli y&ouml;nlendirme</p>\r\n<p class=\"MsoNormal\"><strong>Her Zaman Kullanıma Hazır;</strong></p>\r\n<p class=\"MsoNormal\">Kapağını a&ccedil;tığınızda CardiAngel otomatik olarak a&ccedil;ılır vey&ouml;nlendirmeye başlar , takılı elektrodlar sayesinde direk hastanın g&ouml;ğs&uuml;neelektrodları uygulayabilirsiniz, sistematik &ouml;n şok hazırlık&nbsp;sayesinde şokkısa s&uuml;rede hazırlanır.</p>\r\n<p class=\"MsoNormal\"><strong>Ger&ccedil;ek Zamanlı CPR ( Kalp Masajı )Geri Bildirim;<br></strong></p>\r\n<p class=\"MsoNormal\">Erken Defibrilasyon ile birlikte&nbsp; organlara doğru veyeterli oksijen iletimini a&ccedil;ık tutmak ve kan dolaşımını devam ettirmek i&ccedil;inkalp masajı &ccedil;ok &ouml;nemlidir. CardiAngel kalp masajını doğru ve efektif yapmanızi&ccedil;in;</p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\">Ellerin doğru konumlanmasına yardımcı olur,</li>\r\n<li class=\"MsoNormal\">Metronom sesi ile ritmi yakalamanıza yardımcı olur,</li>\r\n<li class=\"MsoNormal\">G&ouml;ğ&uuml;s basısı ile ilgili ekstra bir sens&ouml;re ihtiya&ccedil; olmadan (FreeCPR&reg;) ger&ccedil;ek zamanlı geri bildirim yaparak yardımcı olur.</li>\r\n</ul>', NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, 'tr|30|10'),
(689, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 30, 29, '30|29'),
(690, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 30, 5, '30|5'),
(691, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 30, 6, '30|6'),
(692, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 30, 7, '30|7'),
(693, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 30, 8, 'default|30|8'),
(694, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 30, 26, '30|26'),
(695, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 28, 'default|30|28'),
(696, NULL, NULL, NULL, NULL, NULL, 56999.0000, NULL, NULL, NULL, 30, 11, '30|11'),
(697, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 13, '30|13'),
(698, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 14, 'default|30|14'),
(699, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 15, 'default|30|15'),
(700, NULL, NULL, 'CHZ-Def-2', NULL, NULL, NULL, NULL, NULL, NULL, 30, 1, '30|1'),
(701, 'tr', NULL, 'Def-Aselsan Heartline Ekranlı Tam Otomatik Defibrilatör Cihazı (OED)', NULL, NULL, NULL, NULL, NULL, NULL, 30, 2, 'tr|30|2'),
(702, 'tr', NULL, 'def-aselsan-heartline-ekranlı-tam-otomatik-defibrilator-cihazı-oed', NULL, NULL, NULL, NULL, NULL, NULL, 30, 3, 'tr|30|3'),
(703, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 30, 25, '30|25'),
(704, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 30, 27, '30|27'),
(705, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 30, 30, '30|30'),
(706, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 30, 31, '30|31'),
(707, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 30, 32, '30|32'),
(708, 'tr', NULL, 'aselsan-heartline-defibrilator', NULL, NULL, NULL, NULL, NULL, NULL, 30, 16, 'tr|30|16'),
(709, 'tr', NULL, 'CardiAngel OED Defibrilatör Cihazı', NULL, NULL, NULL, NULL, NULL, NULL, 30, 17, 'tr|30|17'),
(710, 'tr', NULL, 'Aselsan Heartline Ekranlı Tam Otomatik Defibrilatör Cihazı (OED)', NULL, NULL, NULL, NULL, NULL, NULL, 30, 18, 'tr|30|18'),
(711, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 30, 22, '30|22'),
(712, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Heartline Otomatik Eksternal Defibrilat&ouml;r i&ccedil;in AlarmlıKabinet, metalden &uuml;retilmiş, duvara monte edilebilen, 80 desibel alarm seviyesive manyetik kapı mandalıyla kolay erişim sağlayan bir muhafaza &ccedil;&ouml;z&uuml;m&uuml;d&uuml;r.</p>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 31, 9, 'tr|31|9'),
(713, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Yaşam zinciri adımları: Acil durumlarda yapılması gereken adımları a&ccedil;ıklar.</p>\r\n<p class=\"MsoNormal\">Aranacak acil numara (ASELSAN İ&ccedil;i Revir No): Acil durumda aranacak telefon numarasını belirtir.</p>\r\n<p class=\"MsoNormal\">Kalp Masajı yap: Kalp masajı yapılması gerektiğini hatırlatır.</p>\r\n<p class=\"MsoNormal\">OED uygula: OED cihazının uygulanması gerektiğini belirtir.</p>\r\n<hr></div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">\r\n<h3 class=\"text-lg font-semibold  text-button-01 \">Duvara Monte Edilebilir</h3>\r\n</div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Kabin, duvara monte edilerek sabitlenebilir &ouml;zelliktedir. Ayrıca, i&ccedil;erideki OED cihazına erişim sağlamak i&ccedil;in a&ccedil;ılabilir bir kapağa sahip olmalıdır.</p>\r\n<hr></div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">\r\n<h3 class=\"text-lg font-semibold  text-button-01 \">&Ccedil;evresel Fakt&ouml;rlere Dayanıklılık</h3>\r\n</div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Kabin, i&ccedil;erideki Otomatik Eksternal Defibrilat&ouml;r (OED) cihazının korunması i&ccedil;in dış etkenlere karşı dayanıklıdır. Sıvı ve toz ge&ccedil;irmez &ouml;zellikteki yapı, cihazın g&uuml;venliğini ve performansını sağlar.&nbsp;</p>\r\n<hr></div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">\r\n<h3 class=\"text-lg font-semibold  text-button-01 \">Manyetik Kapı Mandalı</h3>\r\n</div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Kabin kapısı, manyetik kapı mandalı ile donatılmıştır. Bu &ouml;zellik, kapının g&uuml;venli bir şekilde kapanmasını ve gerektiğinde hızlıca a&ccedil;ılmasını sağlar, b&ouml;ylece acil durumlarda hızlı erişim m&uuml;mk&uuml;n olur.</p>\r\n<hr>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 31, 10, 'tr|31|10'),
(714, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 31, 29, '31|29'),
(715, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 31, 5, '31|5'),
(716, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 31, 6, '31|6'),
(717, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 31, 7, '31|7'),
(718, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 31, 8, 'default|31|8'),
(719, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 31, 26, '31|26'),
(720, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 31, 28, 'default|31|28'),
(721, NULL, NULL, NULL, NULL, NULL, 7999.0000, NULL, NULL, NULL, 31, 11, '31|11'),
(722, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 13, '31|13'),
(723, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 14, 'default|31|14'),
(724, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 15, 'default|31|15'),
(725, NULL, NULL, 'CHZ-Def-3', NULL, NULL, NULL, NULL, NULL, NULL, 31, 1, '31|1'),
(726, 'tr', NULL, 'Def-Aselsan Alarmlı Metal OED Cihazı Kabini', NULL, NULL, NULL, NULL, NULL, NULL, 31, 2, 'tr|31|2'),
(727, 'tr', NULL, 'def-aselsan-alarmlı-metal-oed-cihazı-kabini', NULL, NULL, NULL, NULL, NULL, NULL, 31, 3, 'tr|31|3'),
(728, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 31, 25, '31|25'),
(729, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 31, 27, '31|27'),
(730, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 31, 30, '31|30'),
(731, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 31, 31, '31|31'),
(732, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 31, 32, '31|32'),
(733, 'tr', NULL, 'Def-Aselsan Alarmlı Metal OED Cihazı Kabini', NULL, NULL, NULL, NULL, NULL, NULL, 31, 16, 'tr|31|16'),
(734, 'tr', NULL, 'Def-Aselsan Alarmlı Metal OED Cihazı Kabini', NULL, NULL, NULL, NULL, NULL, NULL, 31, 17, 'tr|31|17'),
(735, 'tr', NULL, 'Aselsan Heartline Ekranlı Tam Otomatik Defibrilatör Cihazı (OED)', NULL, NULL, NULL, NULL, NULL, NULL, 31, 18, 'tr|31|18'),
(736, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 31, 22, '31|22'),
(737, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Defibrilat&ouml;r pedleri, hastanıntorasik empedansını ve EKG sinyalini değerlendirmek &uuml;zere cihaza aktarır.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 32, 9, 'tr|32|9'),
(738, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Cihazın değerlendirilmesisonucunda şoklama tavsiye edildiğinde ise şok enerjisini hastaya aktarır.</p>\r\n<p class=\"MsoNormal\">Pedlerin v&uuml;cuda temas edeny&uuml;zeyleri kendinden yapışkanlı ve elektriksel iletkenliği artırmak i&ccedil;in iletkenjel ile kaplıdır.</p>\r\n<p class=\"MsoNormal\">Pedler bir kablo ve konnekt&ouml;ryardımıyla cihaza bağlanır.</p>\r\n<p class=\"MsoNormal\">Aselsan Heartline OED cihazı pedbağlantısı i&ccedil;in &ouml;zel olarak se&ccedil;ilmiş konnekt&ouml;r kullanılmaktadır.</p>\r\n<p class=\"MsoNormal\">Cihazla birlikte yetişkin ve&ccedil;ocuk pedi kullanılabilmektedir.</p>\r\n<p class=\"MsoNormal\">Yetişkin pedi 25KG &uuml;zeri veya 8yaş ve &uuml;zerindeki hastaların kullanımına uygundur.</p>\r\n<p class=\"MsoNormal\">&Ccedil;ocuk pedi 1-8 yaş aralığındaveya 25kg altı hastaların kullanımına uygundur.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 32, 10, 'tr|32|10'),
(739, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 32, 29, '32|29'),
(740, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 32, 5, '32|5'),
(741, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 32, 6, '32|6'),
(742, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 32, 7, '32|7'),
(743, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 32, 8, 'default|32|8'),
(744, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 32, 26, '32|26'),
(745, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 32, 28, 'default|32|28'),
(746, NULL, NULL, NULL, NULL, NULL, 3600.0000, NULL, NULL, NULL, 32, 11, '32|11'),
(747, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 13, '32|13'),
(748, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 14, 'default|32|14'),
(749, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 15, 'default|32|15'),
(750, NULL, NULL, 'temporary-sku-555195', NULL, NULL, NULL, NULL, NULL, NULL, 32, 1, '32|1'),
(751, 'tr', NULL, 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, NULL, NULL, NULL, NULL, NULL, 32, 2, 'tr|32|2'),
(752, 'tr', NULL, 'def-aselsan-oed-cihazı-defibrilator-pedi', NULL, NULL, NULL, NULL, NULL, NULL, 32, 3, 'tr|32|3'),
(753, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 32, 25, '32|25'),
(754, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 32, 27, '32|27'),
(755, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 32, 30, '32|30'),
(756, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 32, 31, '32|31'),
(757, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 32, 32, '32|32'),
(758, 'tr', NULL, 'Aselsan OED Cihazı Defibrilatör Pedi', NULL, NULL, NULL, NULL, NULL, NULL, 32, 16, 'tr|32|16'),
(759, 'tr', NULL, 'Aselsan OED Cihazı Defibrilatör Pedi', NULL, NULL, NULL, NULL, NULL, NULL, 32, 17, 'tr|32|17'),
(760, 'tr', NULL, 'Aselsan OED Cihazı Defibrilatör Pedi', NULL, NULL, NULL, NULL, NULL, NULL, 32, 18, 'tr|32|18'),
(761, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 32, 22, '32|22'),
(762, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"pt-4\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Daha Akıllı ve Daha Hızlı BeneHeart C Serisi ilk kez m&uuml;dahalede bulunan kurtarma g&ouml;revlisinin neye ihtiya&ccedil; duyduğunu bilir ve akıllı ko&ccedil;luk ve sesli uyarılarla adım adım rehberlik yapmak i&ccedil;in akıllı ResQNaviTM teknolojisini sunar.<hr></div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 33, 9, 'tr|33|9'),
(763, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\"><strong>Daha Akıllı ve Daha Hızlı</strong></span></div>\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\">BeneHeart C Serisi ilk kez m&uuml;dahalede bulunan kurtarma g&ouml;revlisinin neye ihtiya&ccedil; duyduğunu bilir ve akıllı ko&ccedil;luk ve sesli uyarılarla adım adım rehberlik yapmak i&ccedil;in akıllı ResQNaviTM teknolojisini sunar. Kurtarma g&ouml;revlisinin yeterliliği, her adımda harcanan zamana g&ouml;re, hayatlarınızı g&uuml;venle kurtarabilmeniz i&ccedil;in gerekli rehberlik ve cesaretlendirmeyle belirlenebilir.</span><br><br></div>\r\n<div><hr></div>\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\"><strong>Hızlı ve G&uuml;&ccedil;l&uuml;</strong></span></div>\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\">Defibrilasyon başarı oranı saniyeler i&ccedil;inde d&uuml;şer. İlk şokun 8 saniyeden daha kısa s&uuml;rede uygulanmasını sağlayan yeni QShockTM teknolojisi sayesinde, BeneHeart C Serisi başarılı defibrilasyon şansını artırabilir ve kurtarma g&ouml;revlilerinin hayat kurtarmak i&ccedil;in her saniyeden tasarruf etmesine yardımcı olur. QShockTM teknolojisi, eşzamanlı olarak tamamlanmış &ouml;n şarj işlemiyle şarj i&ccedil;in ekstra zaman ihtiyacını ortandan kaldırır; b&ouml;ylece, EKG analiz zamanını 5 saniyeye kadar indirir.</span><br><br></div>\r\n<div><hr></div>\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\"><strong>G&uuml;venilir ve Dayanıklı</strong></span></div>\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\">Titizlikle ger&ccedil;ekleştirilen testler sonucunda 1,5 metrelik d&uuml;şme dayanıklılığı ve IP55 toz ve su ge&ccedil;irmezlik seviyesi ile sınıflandırılan BeneHeart C Serisi, farklı koşullarda &ccedil;eşitli zorlukların &uuml;stesinden gelme konusunda g&uuml;ven veriyor.</span><hr></div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 33, 10, 'tr|33|10'),
(764, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 33, 29, '33|29'),
(765, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 5, '33|5'),
(766, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 6, '33|6'),
(767, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 7, '33|7'),
(768, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 8, 'default|33|8'),
(769, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 26, '33|26'),
(770, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 33, 28, 'default|33|28'),
(771, NULL, NULL, NULL, NULL, NULL, 87000.0000, NULL, NULL, NULL, 33, 11, '33|11'),
(772, NULL, NULL, NULL, NULL, NULL, 85000.0000, NULL, NULL, NULL, 33, 13, '33|13'),
(773, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, 14, 'default|33|14'),
(774, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, 15, 'default|33|15'),
(775, NULL, NULL, 'CHZ-Def-4', NULL, NULL, NULL, NULL, NULL, NULL, 33, 1, '33|1'),
(776, 'tr', NULL, 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, NULL, NULL, NULL, NULL, NULL, 33, 2, 'tr|33|2'),
(777, 'tr', NULL, 'def-mindray-beneheart-c1a-otomatik-eksternal-defibrilator', NULL, NULL, NULL, NULL, NULL, NULL, 33, 3, 'tr|33|3'),
(778, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 33, 25, '33|25'),
(779, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 27, '33|27'),
(780, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 33, 30, '33|30'),
(781, NULL, NULL, '2023', NULL, NULL, NULL, NULL, NULL, NULL, 33, 31, '33|31'),
(782, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 33, 32, '33|32'),
(783, 'tr', NULL, 'Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, NULL, NULL, NULL, NULL, NULL, 33, 16, 'tr|33|16'),
(784, 'tr', NULL, 'Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, NULL, NULL, NULL, NULL, NULL, 33, 17, 'tr|33|17'),
(785, 'tr', NULL, 'Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, NULL, NULL, NULL, NULL, NULL, 33, 18, 'tr|33|18'),
(786, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 33, 22, '33|22'),
(787, 'tr', NULL, '<p class=\"MsoNormal\">Antibakteriyel elektrostatik tozboya&nbsp;ABS antistatik ikisi frenli d&ouml;rtadet teker</p>', NULL, NULL, NULL, NULL, NULL, NULL, 34, 9, 'tr|34|9'),
(788, 'tr', NULL, '<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Paslanmaz &ccedil;elik &uuml;st tezgah ,&nbsp;Trommel - &ccedil;&ouml;p kovası&nbsp;&Uuml;&ccedil; adet 1000 cc şişe koyma yeri&nbsp;İki adet &ccedil;ekmece ve dolap&nbsp;İtme kolu</p>', NULL, NULL, NULL, NULL, NULL, NULL, 34, 10, 'tr|34|10'),
(789, NULL, NULL, 'Boyut45 x 80 x 85 cm\r\n\r\nAğırlık25 Kg', NULL, NULL, NULL, NULL, NULL, NULL, 34, 29, '34|29'),
(790, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 5, '34|5'),
(791, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 6, '34|6'),
(792, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 7, '34|7'),
(793, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 8, 'default|34|8'),
(794, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 26, '34|26'),
(795, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 34, 28, 'default|34|28'),
(796, NULL, NULL, NULL, NULL, NULL, 13870.0000, NULL, NULL, NULL, 34, 11, '34|11'),
(797, NULL, NULL, NULL, NULL, NULL, 12500.0000, NULL, NULL, NULL, 34, 13, '34|13'),
(798, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, 14, 'default|34|14'),
(799, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, 15, 'default|34|15'),
(800, NULL, NULL, 'AML-01', NULL, NULL, NULL, NULL, NULL, NULL, 34, 1, '34|1'),
(801, 'tr', NULL, 'Aml-Şişelikli Pansuman Arabası', NULL, NULL, NULL, NULL, NULL, NULL, 34, 2, 'tr|34|2'),
(802, 'tr', NULL, 'aml-siselikli-pansuman-arabası', NULL, NULL, NULL, NULL, NULL, NULL, 34, 3, 'tr|34|3'),
(803, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 34, 25, '34|25'),
(804, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 27, '34|27'),
(805, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 34, 30, '34|30'),
(806, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 34, 31, '34|31'),
(807, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 34, 32, '34|32'),
(808, 'tr', NULL, 'Şişelikli Pansuman Arabası', NULL, NULL, NULL, NULL, NULL, NULL, 34, 16, 'tr|34|16'),
(809, 'tr', NULL, 'Şişelikli Pansuman Arabası', NULL, NULL, NULL, NULL, NULL, NULL, 34, 17, 'tr|34|17'),
(810, 'tr', NULL, 'Şişelikli Pansuman Arabası', NULL, NULL, NULL, NULL, NULL, NULL, 34, 18, 'tr|34|18'),
(811, NULL, NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, 34, 22, '34|22'),
(812, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Paslanmaz g&ouml;vdeli nikelaj ayaklı serum askısı, sağlık kuruluşları ve kliniklerde kullanılan &ouml;nemli bir tıbbi ekipmandır. Paslanmaz &ccedil;elik g&ouml;vdesi ve nikelaj kaplamalı ayakları ile dayanıklı ve uzun &ouml;m&uuml;rl&uuml; bir yapı sunar.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 35, 9, 'tr|35|9'),
(813, 'tr', NULL, '<div>304 kalite paslanmaz &ccedil;elik g&ouml;vde</div>\r\n<div>\r\n<p>ABS antistatik ikisi frenli beş adet teker<br>D&ouml;rt adet askılık<br>İnf&uuml;zyon pompası taşıma uygunluğu<br>Nikelaj beş ayak</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 35, 10, 'tr|35|10'),
(814, NULL, NULL, 'Boyut: 60 x 60 x 115-210cm\r\n\r\nAğırlık: 6 Kg', NULL, NULL, NULL, NULL, NULL, NULL, 35, 29, '35|29'),
(815, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 35, 5, '35|5'),
(816, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 35, 6, '35|6'),
(817, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 35, 7, '35|7'),
(818, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 35, 8, 'default|35|8'),
(819, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 35, 26, '35|26'),
(820, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 35, 28, 'default|35|28'),
(821, NULL, NULL, NULL, NULL, NULL, 6999.0000, NULL, NULL, NULL, 35, 11, '35|11'),
(822, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 13, '35|13'),
(823, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 14, 'default|35|14'),
(824, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 15, 'default|35|15'),
(825, NULL, NULL, 'temporary-sku-066fe8', NULL, NULL, NULL, NULL, NULL, NULL, 35, 1, '35|1'),
(826, 'tr', NULL, 'AML-Paslanmaz Gövde Nikelaj Ayaklı Serum Askısı', NULL, NULL, NULL, NULL, NULL, NULL, 35, 2, 'tr|35|2'),
(827, 'tr', NULL, 'aml-paslanmaz-govde-nikelaj-ayaklı-serum-askısı', NULL, NULL, NULL, NULL, NULL, NULL, 35, 3, 'tr|35|3'),
(828, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 35, 25, '35|25'),
(829, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 35, 27, '35|27'),
(830, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 35, 30, '35|30'),
(831, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 35, 31, '35|31'),
(832, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 35, 32, '35|32'),
(833, 'tr', NULL, 'Paslanmaz Gövde Nikelaj Ayaklı Serum Askısı', NULL, NULL, NULL, NULL, NULL, NULL, 35, 16, 'tr|35|16'),
(834, 'tr', NULL, 'Paslanmaz Gövde Nikelaj Ayaklı Serum Askısı', NULL, NULL, NULL, NULL, NULL, NULL, 35, 17, 'tr|35|17'),
(835, 'tr', NULL, 'Paslanmaz Gövde Nikelaj Ayaklı Serum Askısı', NULL, NULL, NULL, NULL, NULL, NULL, 35, 18, 'tr|35|18'),
(836, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, 35, 22, '35|22'),
(837, 'tr', NULL, '<p class=\"MsoNormal\">-</p>', NULL, NULL, NULL, NULL, NULL, NULL, 36, 9, 'tr|36|9'),
(838, 'tr', NULL, '<p class=\"MsoNormal\">-</p>', NULL, NULL, NULL, NULL, NULL, NULL, 36, 10, 'tr|36|10'),
(839, NULL, NULL, 'Boyut45 x 80 x 85 cm\r\n\r\nAğırlık25 Kg', NULL, NULL, NULL, NULL, NULL, NULL, 36, 29, '36|29'),
(840, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 36, 5, '36|5'),
(841, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 36, 6, '36|6'),
(842, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 36, 7, '36|7'),
(843, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 36, 8, 'default|36|8'),
(844, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 36, 26, '36|26'),
(845, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 36, 28, 'default|36|28'),
(846, NULL, NULL, NULL, NULL, NULL, 599.0000, NULL, NULL, NULL, 36, 11, '36|11'),
(847, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 13, '36|13'),
(848, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 14, 'default|36|14'),
(849, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 15, 'default|36|15'),
(850, NULL, NULL, 'temporary-sku-d7e95e', NULL, NULL, NULL, NULL, NULL, NULL, 36, 1, '36|1'),
(851, 'tr', NULL, 'aml-Kerbl Elastratör Pensi', NULL, NULL, NULL, NULL, NULL, NULL, 36, 2, 'tr|36|2'),
(852, 'tr', NULL, 'aml-kerbl-elastrator-pensi', NULL, NULL, NULL, NULL, NULL, NULL, 36, 3, 'tr|36|3'),
(853, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 36, 25, '36|25'),
(854, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 36, 27, '36|27'),
(855, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 36, 30, '36|30'),
(856, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 36, 31, '36|31'),
(857, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 36, 32, '36|32'),
(858, 'tr', NULL, 'Kerbl Elastratör Pensi', NULL, NULL, NULL, NULL, NULL, NULL, 36, 16, 'tr|36|16'),
(859, 'tr', NULL, 'Kerbl Elastratör Pensi', NULL, NULL, NULL, NULL, NULL, NULL, 36, 17, 'tr|36|17'),
(860, 'tr', NULL, 'Kerbl Elastratör Pensi', NULL, NULL, NULL, NULL, NULL, NULL, 36, 18, 'tr|36|18'),
(861, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 36, 22, '36|22'),
(862, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Hegar bujileri, jinekolojide kullanılan tıbbi aletlerden biridir. Genellikle rahim ağzını genişletmek veya cerrahi prosed&uuml;rler i&ccedil;in rahim ağzına erişimi kolaylaştırmak amacıyla kullanılırlar. Bu alet, yumuşak doku ve kan damarlarına zarar vermemesi i&ccedil;in dikkatlice tasarlanmıştır.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mtwrap wrapper\">\r\n<div class=\"relative mb-6 flex w-full flex-col items-center justify-between gap-4 text-center md:flex-row\">&nbsp;</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 37, 9, 'tr|37|9'),
(863, 'tr', NULL, '<p class=\"MsoNormal\">-</p>', NULL, NULL, NULL, NULL, NULL, NULL, 37, 10, 'tr|37|10'),
(864, NULL, NULL, 'Paslanmaz çelikten üretilmiştir.\r\nÜrün çantalı gelmektedir.\r\n03-13 numaralara sahiptir.', NULL, NULL, NULL, NULL, NULL, NULL, 37, 29, '37|29'),
(865, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 5, '37|5'),
(866, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 6, '37|6'),
(867, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 7, '37|7'),
(868, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 8, 'default|37|8'),
(869, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 26, '37|26'),
(870, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 37, 28, 'default|37|28'),
(871, NULL, NULL, NULL, NULL, NULL, 3200.0000, NULL, NULL, NULL, 37, 11, '37|11'),
(872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 13, '37|13'),
(873, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 14, 'default|37|14'),
(874, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 15, 'default|37|15'),
(875, NULL, NULL, 'temporary-sku-bb91ea', NULL, NULL, NULL, NULL, NULL, NULL, 37, 1, '37|1'),
(876, 'tr', NULL, 'Aml-VZN Hegar Buji Seti 14 Parça', NULL, NULL, NULL, NULL, NULL, NULL, 37, 2, 'tr|37|2'),
(877, 'tr', NULL, 'aml-vzn-hegar-buji-seti-14-parca', NULL, NULL, NULL, NULL, NULL, NULL, 37, 3, 'tr|37|3'),
(878, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 37, 25, '37|25'),
(879, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 37, 27, '37|27'),
(880, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 37, 30, '37|30'),
(881, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 37, 31, '37|31'),
(882, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 37, 32, '37|32'),
(883, 'tr', NULL, 'VZN Hegar Buji Seti 14 Parça', NULL, NULL, NULL, NULL, NULL, NULL, 37, 16, 'tr|37|16'),
(884, 'tr', NULL, 'VZN Hegar Buji Seti 14 Parça', NULL, NULL, NULL, NULL, NULL, NULL, 37, 17, 'tr|37|17'),
(885, 'tr', NULL, 'VZN Hegar Buji Seti 14 Parça', NULL, NULL, NULL, NULL, NULL, NULL, 37, 18, 'tr|37|18'),
(886, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 37, 22, '37|22'),
(887, 'tr', NULL, '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Cerrahi Dikiş Seti VZN-CAT-E11, pratik ve g&uuml;venli bir kullanım i&ccedil;in tasarlanmış, &ouml;zel fermuarlı ve vinleks taşıma &ccedil;antası ile birlikte sunulmaktadır. Her alet i&ccedil;in ayrı yuvalar, taşıma sırasında par&ccedil;aların temasını engellerken, steril koşullarda saklanmasını sağlar. G&uuml;venilir cerrahi m&uuml;dahaleler i&ccedil;in ideal bir se&ccedil;im<hr></div>\r\n<div class=\"text-sm\"><strong>Kutu i&ccedil;eriği</strong><hr></div>\r\n<div class=\"text-sm\">\r\n<p class=\"MsoNormal\">Porteg&uuml;</p>\r\n<p class=\"MsoNormal\">Bist&uuml;ri Sapı</p>\r\n<p class=\"MsoNormal\">Dişli Penset</p>\r\n<p class=\"MsoNormal\">Dişsiz Penset</p>\r\n<p class=\"MsoNormal\">Hemostatik Penset</p>\r\n<p class=\"MsoNormal\">Moskito Eğri Pens</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 38, 9, 'tr|38|9'),
(888, 'tr', NULL, '<p class=\"MsoNormal\">-</p>', NULL, NULL, NULL, NULL, NULL, NULL, 38, 10, 'tr|38|10'),
(889, NULL, NULL, 'Paslanmaz çelikten üretilmiştir.\r\nÜrün çantalı gelmektedir.\r\n03-13 numaralara sahiptir.', NULL, NULL, NULL, NULL, NULL, NULL, 38, 29, '38|29'),
(890, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 38, 5, '38|5'),
(891, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 38, 6, '38|6'),
(892, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 38, 7, '38|7'),
(893, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 38, 8, 'default|38|8'),
(894, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 38, 26, '38|26'),
(895, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 38, 28, 'default|38|28'),
(896, NULL, NULL, NULL, NULL, NULL, 1100.0000, NULL, NULL, NULL, 38, 11, '38|11'),
(897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 13, '38|13'),
(898, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 14, 'default|38|14'),
(899, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 15, 'default|38|15'),
(900, NULL, NULL, 'temporary-sku-a4d2ec', NULL, NULL, NULL, NULL, NULL, NULL, 38, 1, '38|1'),
(901, 'tr', NULL, 'Aml-VZN Cerrahi Dikiş Seti 11 Parça', NULL, NULL, NULL, NULL, NULL, NULL, 38, 2, 'tr|38|2'),
(902, 'tr', NULL, 'aml-vzn-cerrahi-dikis-seti-11-parca', NULL, NULL, NULL, NULL, NULL, NULL, 38, 3, 'tr|38|3'),
(903, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 38, 25, '38|25'),
(904, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 38, 27, '38|27'),
(905, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 38, 30, '38|30'),
(906, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 38, 31, '38|31'),
(907, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 38, 32, '38|32'),
(908, 'tr', NULL, 'VZN Hegar Buji Seti 14 Parça', NULL, NULL, NULL, NULL, NULL, NULL, 38, 16, 'tr|38|16'),
(909, 'tr', NULL, 'VZN Hegar Buji Seti 14 Parça', NULL, NULL, NULL, NULL, NULL, NULL, 38, 17, 'tr|38|17'),
(910, 'tr', NULL, 'VZN Hegar Buji Seti 14 Parça', NULL, NULL, NULL, NULL, NULL, NULL, 38, 18, 'tr|38|18'),
(911, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 38, 22, '38|22'),
(912, 'tr', NULL, '<p>Toplam 7 par&ccedil;adan oluşan&nbsp; cerrahi dikiş seti i&ccedil;erisinde 1&rsquo;er adet porteg&uuml;, bist&uuml;ri sapı, metzenbaum makası, penset dişsiz, makas, mosquite pens ve hemostatik pens&nbsp; bulunmaktadır.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 39, 9, 'tr|39|9'),
(913, 'tr', NULL, '<p class=\"MsoNormal\">-</p>\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div>Medikal paslanmaz &ccedil;elik malzemeden imal edilen&nbsp; cerrahi dikiş seti dikiş atma işleminin dokuya zarar vermeden kolaylıkla ger&ccedil;ekleştirilebilmesi i&ccedil;in gereksinim duyulan t&uuml;m cerrahi par&ccedil;aları i&ccedil;ermektedir.</div>\r\n<div>Set &ouml;zel fermuarlı vinleks taşıma &ccedil;antası i&ccedil;erisindedir ve &ccedil;anta i&ccedil;erisinde her cerrahi alet i&ccedil;in &ouml;zel yuva bulunmaktadır.</div>\r\n<div>Taşıma esasında par&ccedil;alar yuvalarından &ccedil;ıkmaz ve birbirleriyle temas etmez.</div>\r\n<div>Set i&ccedil;erisindeki cerrahi el aletleri kullanım dışında &ccedil;antasında muhafaza edilebilir.</div>\r\n<div>T&uuml;m par&ccedil;alar sterilizasyon koşullarına uygundur.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 39, 10, 'tr|39|10'),
(914, NULL, NULL, 'Paslanmaz çelikten üretilmiştir.\r\nÜrün çantalı gelmektedir.', NULL, NULL, NULL, NULL, NULL, NULL, 39, 29, '39|29'),
(915, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 39, 5, '39|5'),
(916, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 39, 6, '39|6'),
(917, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 39, 7, '39|7'),
(918, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 39, 8, 'default|39|8'),
(919, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 39, 26, '39|26'),
(920, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 39, 28, 'default|39|28'),
(921, NULL, NULL, NULL, NULL, NULL, 599.0000, NULL, NULL, NULL, 39, 11, '39|11'),
(922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 13, '39|13'),
(923, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 14, 'default|39|14'),
(924, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 15, 'default|39|15'),
(925, NULL, NULL, 'temporary-sku-4b7138', NULL, NULL, NULL, NULL, NULL, NULL, 39, 1, '39|1'),
(926, 'tr', NULL, 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, NULL, NULL, NULL, NULL, NULL, 39, 2, 'tr|39|2'),
(927, 'tr', NULL, 'aml-medwelt-cerrahi-dikis-seti-7li', NULL, NULL, NULL, NULL, NULL, NULL, 39, 3, 'tr|39|3'),
(928, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 39, 25, '39|25'),
(929, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 39, 27, '39|27'),
(930, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 39, 30, '39|30'),
(931, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 39, 31, '39|31'),
(932, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 39, 32, '39|32'),
(933, 'tr', NULL, 'Medwelt Cerrahi Dikiş Seti 7\'li', NULL, NULL, NULL, NULL, NULL, NULL, 39, 16, 'tr|39|16'),
(934, 'tr', NULL, 'Medwelt Cerrahi Dikiş Seti 7\'li', NULL, NULL, NULL, NULL, NULL, NULL, 39, 17, 'tr|39|17'),
(935, 'tr', NULL, 'Medwelt Cerrahi Dikiş Seti 7\'li', NULL, NULL, NULL, NULL, NULL, NULL, 39, 18, 'tr|39|18'),
(936, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 39, 22, '39|22'),
(937, 'tr', NULL, '<ol>\r\n<li id=\"accordion-general-details\" class=\"open\">\r\n<div class=\"toggle-content\">\r\n<p>Mod&uuml;ler Femoral G&ouml;vde, Kal&ccedil;ada Ağrı Ve Hareket Kısıtlığı Nedeniyle Kişinin Yaşam Kalitesini Bozan Ve G&uuml;nl&uuml;k Aktivitelerini İleri Derecede Kısıtlayan, Tıbbi Ve Fizik Tedavi Y&ouml;ntemleri İle Kontrol Edilemeyen Dejeneratif Kal&ccedil;a Eklem Hastalıkları Ve Osteoartrit (Koksartroz) Tedavilerinde Kullanılır.</p>\r\n</div>\r\n</li>\r\n</ol>', NULL, NULL, NULL, NULL, NULL, NULL, 40, 9, 'tr|40|9'),
(938, 'tr', NULL, '<p>-</p>', NULL, NULL, NULL, NULL, NULL, NULL, 40, 10, 'tr|40|10'),
(939, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 40, 29, '40|29'),
(940, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 40, 5, '40|5'),
(941, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 40, 6, '40|6'),
(942, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 40, 7, '40|7'),
(943, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 40, 8, 'default|40|8'),
(944, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 40, 26, '40|26'),
(945, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 40, 28, 'default|40|28'),
(946, NULL, NULL, NULL, NULL, NULL, 9899.0000, NULL, NULL, NULL, 40, 11, '40|11'),
(947, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 13, '40|13'),
(948, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 14, 'default|40|14'),
(949, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 15, 'default|40|15'),
(950, NULL, NULL, 'Pro-01', NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, '40|1'),
(951, 'tr', NULL, 'Pro-Modüler Femoral Gövde', NULL, NULL, NULL, NULL, NULL, NULL, 40, 2, 'tr|40|2'),
(952, 'tr', NULL, 'pro-moduler-femoral-govde', NULL, NULL, NULL, NULL, NULL, NULL, 40, 3, 'tr|40|3'),
(953, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 40, 25, '40|25'),
(954, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 40, 27, '40|27'),
(955, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 40, 30, '40|30'),
(956, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 40, 31, '40|31'),
(957, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 40, 32, '40|32'),
(958, 'tr', NULL, 'Modüler Femoral Gövde', NULL, NULL, NULL, NULL, NULL, NULL, 40, 16, 'tr|40|16'),
(959, 'tr', NULL, 'Modüler Femoral Gövde', NULL, NULL, NULL, NULL, NULL, NULL, 40, 17, 'tr|40|17'),
(960, 'tr', NULL, 'Modüler Femoral Gövde', NULL, NULL, NULL, NULL, NULL, NULL, 40, 18, 'tr|40|18'),
(961, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 40, 22, '40|22'),
(962, 'tr', NULL, '<ol>\r\n<li id=\"accordion-general-details\" class=\"open\">\r\n<div class=\"toggle-content\">\r\n<p>-</p>\r\n</div>\r\n</li>\r\n</ol>', NULL, NULL, NULL, NULL, NULL, NULL, 41, 9, 'tr|41|9'),
(963, 'tr', NULL, '<p>Kare Femoral Stem, Kal&ccedil;ada Ağrı Ve Hareket Kısıtlığı Nedeniyle Kişinin Yaşam Kalitesini Bozan Ve G&uuml;nl&uuml;k Aktivitelerini İleri Derecede Kısıtlayan, Tıbbi Ve Fizik Tedavi Y&ouml;ntemleri İle Kontrol Edilemeyen Dejeneratif Kal&ccedil;a Eklem Hastalıkları Ve Osteoartrit (Koksartroz) Tedavilerinde Kullanılır</p>', NULL, NULL, NULL, NULL, NULL, NULL, 41, 10, 'tr|41|10'),
(964, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 41, 29, '41|29'),
(965, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 5, '41|5'),
(966, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 6, '41|6'),
(967, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 7, '41|7'),
(968, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 8, 'default|41|8'),
(969, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 26, '41|26'),
(970, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 41, 28, 'default|41|28'),
(971, NULL, NULL, NULL, NULL, NULL, 19999.0000, NULL, NULL, NULL, 41, 11, '41|11'),
(972, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 13, '41|13'),
(973, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 14, 'default|41|14'),
(974, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 15, 'default|41|15'),
(975, NULL, NULL, 'temporary-sku-1b9589', NULL, NULL, NULL, NULL, NULL, NULL, 41, 1, '41|1'),
(976, 'tr', NULL, 'Pro-KARE FEMORAL STEM 1', NULL, NULL, NULL, NULL, NULL, NULL, 41, 2, 'tr|41|2'),
(977, 'tr', NULL, 'pro-kare-femoral-stem-1', NULL, NULL, NULL, NULL, NULL, NULL, 41, 3, 'tr|41|3'),
(978, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 41, 25, '41|25'),
(979, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 41, 27, '41|27'),
(980, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 41, 30, '41|30'),
(981, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 41, 31, '41|31'),
(982, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 41, 32, '41|32'),
(983, 'tr', NULL, 'Pro-KARE FEMORAL STEM 1', NULL, NULL, NULL, NULL, NULL, NULL, 41, 16, 'tr|41|16'),
(984, 'tr', NULL, 'Pro-KARE FEMORAL STEM 1', NULL, NULL, NULL, NULL, NULL, NULL, 41, 17, 'tr|41|17'),
(985, 'tr', NULL, 'Pro-KARE FEMORAL STEM 1', NULL, NULL, NULL, NULL, NULL, NULL, 41, 18, 'tr|41|18'),
(986, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 41, 22, '41|22'),
(987, 'tr', NULL, '<div class=\"toggle-content\">\r\n<p>Klavikula kırıkları, yanlış kaynama, kaynamama, osteotomi, ps&ouml;doartrozlarının tedavisinde ge&ccedil;ici kemik fiksasyonu amacı ile &ouml;zellikle kemik erimesi olan hastalarda &ouml;nerilir</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 42, 9, 'tr|42|9'),
(988, 'tr', NULL, '<table width=\"854\">\r\n<tbody>\r\n<tr bgcolor=\"#55e8de\">\r\n<td width=\"180\"><strong>SS</strong></td>\r\n<td width=\"180\"><strong>TI</strong></td>\r\n<td width=\"180\"><strong>HOLES</strong></td>\r\n<td width=\"180\"><strong>SIDE</strong></td>\r\n<td width=\"200\"><strong>LENGTH (mm)</strong></td>\r\n</tr>\r\n<tr>\r\n<td>A1031906</td>\r\n<td>A1031806</td>\r\n<td>6</td>\r\n<td>Left</td>\r\n<td>70</td>\r\n</tr>\r\n<tr>\r\n<td>A1031907</td>\r\n<td>A1031807</td>\r\n<td>7</td>\r\n<td>Left</td>\r\n<td>84</td>\r\n</tr>\r\n<tr>\r\n<td>A1031908</td>\r\n<td>A1031808</td>\r\n<td>8</td>\r\n<td>Left</td>\r\n<td>98</td>\r\n</tr>\r\n<tr>\r\n<td>A1031909</td>\r\n<td>A1031809</td>\r\n<td>9</td>\r\n<td>Left</td>\r\n<td>112</td>\r\n</tr>\r\n<tr>\r\n<td>A1042906</td>\r\n<td>A1042806</td>\r\n<td>6</td>\r\n<td>Right</td>\r\n<td>70</td>\r\n</tr>\r\n<tr>\r\n<td>A1042907</td>\r\n<td>A1042807</td>\r\n<td>7</td>\r\n<td>Right</td>\r\n<td>84</td>\r\n</tr>\r\n<tr>\r\n<td>A1042908</td>\r\n<td>A1042808</td>\r\n<td>8</td>\r\n<td>Right</td>\r\n<td>98</td>\r\n</tr>\r\n<tr>\r\n<td>A1042909</td>\r\n<td>A1042809</td>\r\n<td>9</td>\r\n<td>Right</td>\r\n<td>112</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 42, 10, 'tr|42|10'),
(989, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 42, 29, '42|29'),
(990, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 42, 5, '42|5'),
(991, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 42, 6, '42|6'),
(992, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 42, 7, '42|7'),
(993, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 42, 8, 'default|42|8'),
(994, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 42, 26, '42|26'),
(995, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 42, 28, 'default|42|28'),
(996, NULL, NULL, NULL, NULL, NULL, 19999.0000, NULL, NULL, NULL, 42, 11, '42|11'),
(997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 13, '42|13'),
(998, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 14, 'default|42|14'),
(999, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 15, 'default|42|15'),
(1000, NULL, NULL, 'temporary-sku-e91fab', NULL, NULL, NULL, NULL, NULL, NULL, 42, 1, '42|1'),
(1001, 'tr', NULL, 'Pro-3,5 MM KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 42, 2, 'tr|42|2'),
(1002, 'tr', NULL, 'pro-35-mm-klavikula-kilitli-kompresyon-plak', NULL, NULL, NULL, NULL, NULL, NULL, 42, 3, 'tr|42|3'),
(1003, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 42, 25, '42|25'),
(1004, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 42, 27, '42|27'),
(1005, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 42, 30, '42|30'),
(1006, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 42, 31, '42|31'),
(1007, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 42, 32, '42|32'),
(1008, 'tr', NULL, 'Pro-3,5 MM KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 42, 16, 'tr|42|16'),
(1009, 'tr', NULL, 'Pro-3,5 MM KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 42, 17, 'tr|42|17'),
(1010, 'tr', NULL, 'Pro-3,5 MM KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 42, 18, 'tr|42|18'),
(1011, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 42, 22, '42|22'),
(1012, 'tr', NULL, '<div class=\"toggle-content\">\r\n<p>Klavikula kırıkları, yanlış kaynama, kaynamama, osteotomi, ps&ouml;doartrozlarının, akromioklavikular &ccedil;ıkıkların tedavisinde ge&ccedil;ici kemik fiksasyonu amacı ile &ouml;zellikle kemik erimesi olan hastalarda kullanılır.</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 43, 9, 'tr|43|9'),
(1013, 'tr', NULL, '<table width=\"795\">\r\n<tbody>\r\n<tr bgcolor=\"#55e8de\">\r\n<td width=\"180\"><strong>SS</strong></td>\r\n<td width=\"180\"><strong>TI</strong></td>\r\n<td width=\"180\"><strong>HOLES</strong></td>\r\n<td width=\"180\"><strong>SIDE</strong></td>\r\n<td width=\"180\"><strong>LENGTH</strong><br><strong>(mm)</strong></td>\r\n</tr>\r\n<tr>\r\n<td>A26009141</td>\r\n<td>A26009041</td>\r\n<td>4</td>\r\n<td>Left</td>\r\n<td>63</td>\r\n</tr>\r\n<tr>\r\n<td>A26009151</td>\r\n<td>A26009051</td>\r\n<td>5</td>\r\n<td>Left</td>\r\n<td>75</td>\r\n</tr>\r\n<tr>\r\n<td>A26009161</td>\r\n<td>A26009061</td>\r\n<td>6</td>\r\n<td>Left</td>\r\n<td>86</td>\r\n</tr>\r\n<tr>\r\n<td>A26009171</td>\r\n<td>A26009071</td>\r\n<td>7</td>\r\n<td>Left</td>\r\n<td>97</td>\r\n</tr>\r\n<tr>\r\n<td>A26009142</td>\r\n<td>A26009042</td>\r\n<td>4</td>\r\n<td>Right</td>\r\n<td>63</td>\r\n</tr>\r\n<tr>\r\n<td>A26009152</td>\r\n<td>A26009052</td>\r\n<td>5</td>\r\n<td>Right</td>\r\n<td>75</td>\r\n</tr>\r\n<tr>\r\n<td>A26009162</td>\r\n<td>A26009062</td>\r\n<td>6</td>\r\n<td>Right</td>\r\n<td>86</td>\r\n</tr>\r\n<tr>\r\n<td>A26009172</td>\r\n<td>A26009072</td>\r\n<td>7</td>\r\n<td>Right</td>\r\n<td>97</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, 43, 10, 'tr|43|10'),
(1014, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 43, 29, '43|29'),
(1015, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 43, 5, '43|5'),
(1016, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 43, 6, '43|6'),
(1017, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 43, 7, '43|7'),
(1018, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 43, 8, 'default|43|8'),
(1019, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 43, 26, '43|26'),
(1020, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 43, 28, 'default|43|28'),
(1021, NULL, NULL, NULL, NULL, NULL, 10000.0000, NULL, NULL, NULL, 43, 11, '43|11'),
(1022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 13, '43|13'),
(1023, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 14, 'default|43|14'),
(1024, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 15, 'default|43|15'),
(1025, NULL, NULL, 'temporary-sku-363f18', NULL, NULL, NULL, NULL, NULL, NULL, 43, 1, '43|1'),
(1026, 'tr', NULL, 'pro-3,5 MM KLAVİKULA HOOK KİLİTLİ PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 43, 2, 'tr|43|2'),
(1027, 'tr', NULL, 'pro-35-mm-klavikula-hook-kilitli-plak', NULL, NULL, NULL, NULL, NULL, NULL, 43, 3, 'tr|43|3'),
(1028, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 43, 25, '43|25'),
(1029, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 43, 27, '43|27'),
(1030, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 43, 30, '43|30'),
(1031, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 43, 31, '43|31'),
(1032, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 43, 32, '43|32'),
(1033, 'tr', NULL, 'pro-3,5 MM KLAVİKULA HOOK KİLİTLİ PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 43, 16, 'tr|43|16');
INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(1034, 'tr', NULL, 'pro-3,5 MM KLAVİKULA HOOK KİLİTLİ PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 43, 17, 'tr|43|17'),
(1035, 'tr', NULL, 'pro-3,5 MM KLAVİKULA HOOK KİLİTLİ PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 43, 18, 'tr|43|18'),
(1036, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 43, 22, '43|22'),
(1037, 'tr', NULL, '<div class=\"toggle-content\">\r\n<p>Klavikula kırıkları, yanlış kaynama, kaynamama, osteotomi, ps&ouml;doartrozlarının, akromioklavikular &ccedil;ıkıkların tedavisinde ge&ccedil;ici kemik fiksasyonu amacı ile &ouml;zellikle kemik erimesi olan hastalarda kullanılır</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 44, 9, 'tr|44|9'),
(1038, 'tr', NULL, '<table width=\"795\">\r\n<tbody>\r\n<tr bgcolor=\"#55e8de\">\r\n<td width=\"180\"><strong>SS</strong></td>\r\n<td width=\"180\"><strong>TI</strong></td>\r\n<td width=\"180\"><strong>HOLES</strong></td>\r\n<td width=\"180\"><strong>SIDE</strong></td>\r\n<td width=\"180\"><strong>LENGTH</strong><br><strong>(mm)</strong></td>\r\n</tr>\r\n<tr>\r\n<td>A5521903</td>\r\n<td>A1021803</td>\r\n<td>3</td>\r\n<td>Left</td>\r\n<td>66,5</td>\r\n</tr>\r\n<tr>\r\n<td>A5521904</td>\r\n<td>A1021804</td>\r\n<td>4</td>\r\n<td>Left</td>\r\n<td>78,7</td>\r\n</tr>\r\n<tr>\r\n<td>A5521905</td>\r\n<td>A1021805</td>\r\n<td>5</td>\r\n<td>Left</td>\r\n<td>91,1</td>\r\n</tr>\r\n<tr>\r\n<td>A5521906</td>\r\n<td>A1021806</td>\r\n<td>6</td>\r\n<td>Left</td>\r\n<td>103,2</td>\r\n</tr>\r\n<tr>\r\n<td>A5521907</td>\r\n<td>A1021807</td>\r\n<td>7</td>\r\n<td>Left</td>\r\n<td>113,8</td>\r\n</tr>\r\n<tr>\r\n<td>A5522903</td>\r\n<td>A1022803</td>\r\n<td>3</td>\r\n<td>Right</td>\r\n<td>66,5</td>\r\n</tr>\r\n<tr>\r\n<td>A5522904</td>\r\n<td>A1022804</td>\r\n<td>4</td>\r\n<td>Right</td>\r\n<td>78,7</td>\r\n</tr>\r\n<tr>\r\n<td>A5522905</td>\r\n<td>A1022805</td>\r\n<td>5</td>\r\n<td>Right</td>\r\n<td>91,1</td>\r\n</tr>\r\n<tr>\r\n<td>A5522906</td>\r\n<td>A1022806</td>\r\n<td>6</td>\r\n<td>Right</td>\r\n<td>103,2</td>\r\n</tr>\r\n<tr>\r\n<td>A5522907</td>\r\n<td>A1022807</td>\r\n<td>7</td>\r\n<td>Right</td>\r\n<td>113,8</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 44, 10, 'tr|44|10'),
(1039, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 44, 29, '44|29'),
(1040, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 44, 5, '44|5'),
(1041, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 44, 6, '44|6'),
(1042, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 44, 7, '44|7'),
(1043, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 44, 8, 'default|44|8'),
(1044, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 44, 26, '44|26'),
(1045, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 44, 28, 'default|44|28'),
(1046, NULL, NULL, NULL, NULL, NULL, 12000.0000, NULL, NULL, NULL, 44, 11, '44|11'),
(1047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 13, '44|13'),
(1048, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 14, 'default|44|14'),
(1049, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 15, 'default|44|15'),
(1050, NULL, NULL, 'temporary-sku-e9afdc', NULL, NULL, NULL, NULL, NULL, NULL, 44, 1, '44|1'),
(1051, 'tr', NULL, 'pro-2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 44, 2, 'tr|44|2'),
(1052, 'tr', NULL, 'pro-2735-mm-distal-klavikula-kilitli-kompresyon-plak', NULL, NULL, NULL, NULL, NULL, NULL, 44, 3, 'tr|44|3'),
(1053, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 44, 25, '44|25'),
(1054, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 44, 27, '44|27'),
(1055, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 44, 30, '44|30'),
(1056, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 44, 31, '44|31'),
(1057, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 44, 32, '44|32'),
(1058, 'tr', NULL, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 44, 16, 'tr|44|16'),
(1059, 'tr', NULL, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 44, 17, 'tr|44|17'),
(1060, 'tr', NULL, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 44, 18, 'tr|44|18'),
(1061, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 44, 22, '44|22'),
(1062, 'tr', NULL, '<div class=\"toggle-content\">\r\n<p>K&uuml;&ccedil;&uuml;k kemik fragman kompleks intraartik&uuml;ler ve ekstraartik&uuml;ler kırıkları, osteotomi tedavisinde ge&ccedil;ici kemik fiksasyonu i&ccedil;in 3,5 mm kilitli/kilitsiz kompresyon plak ile birlikte kırık hattına kompresyon uygulamak amacıyla kullanılır</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 45, 9, 'tr|45|9'),
(1063, 'tr', NULL, '<table width=\"505\">\r\n<tbody>\r\n<tr bgcolor=\"#55e8de\">\r\n<td width=\"180\"><strong>SS</strong></td>\r\n<td width=\"180\"><strong>TI</strong></td>\r\n<td width=\"180\"><strong>DIA. x LENGTH (mm)</strong></td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0100</td>\r\n<td>A110 03 218 0100</td>\r\n<td>3,5X10</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0120</td>\r\n<td>A110 03 218 0120</td>\r\n<td>3,5X12</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0140</td>\r\n<td>A110 03 218 0140</td>\r\n<td>3,5X14</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0160</td>\r\n<td>A110 03 218 0160</td>\r\n<td>3,5X16</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0180</td>\r\n<td>A110 03 218 0180</td>\r\n<td>3,5X18</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0200</td>\r\n<td>A110 03 218 0200</td>\r\n<td>3,5X20</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0220</td>\r\n<td>A110 03 218 0220</td>\r\n<td>3,5X22</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0240</td>\r\n<td>A110 03 218 0240</td>\r\n<td>3,5X24</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0260</td>\r\n<td>A110 03 218 0260</td>\r\n<td>3,5X26</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0280</td>\r\n<td>A110 03 218 0280</td>\r\n<td>3,5X28</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0300</td>\r\n<td>A110 03 218 0300</td>\r\n<td>3,5X30</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0320</td>\r\n<td>A110 03 218 0320</td>\r\n<td>3,5X32</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0340</td>\r\n<td>A110 03 218 0340</td>\r\n<td>3,5X34</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0360</td>\r\n<td>A110 03 218 0360</td>\r\n<td>3,5X36</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0380</td>\r\n<td>A110 03 218 0380</td>\r\n<td>3,5X38</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0400</td>\r\n<td>A110 03 218 0400</td>\r\n<td>3,5X40</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0420</td>\r\n<td>A110 03 218 0420</td>\r\n<td>3,5X42</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0440</td>\r\n<td>A110 03 218 0440</td>\r\n<td>3,5X44</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0460</td>\r\n<td>A110 03 218 0460</td>\r\n<td>3,5X46</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0480</td>\r\n<td>A110 03 218 0480</td>\r\n<td>3,5X48</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0500</td>\r\n<td>A110 03 218 0500</td>\r\n<td>3,5X50</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0520</td>\r\n<td>A110 03 218 0520</td>\r\n<td>3,5X52</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0540</td>\r\n<td>A110 03 218 0540</td>\r\n<td>3,5X54</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0560</td>\r\n<td>A110 03 218 0560</td>\r\n<td>3,5X56</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0580</td>\r\n<td>A110 03 218 0580</td>\r\n<td>3,5X58</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0600</td>\r\n<td>A110 03 218 0600</td>\r\n<td>3,5X60</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, 45, 10, 'tr|45|10'),
(1064, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 45, 29, '45|29'),
(1065, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 5, '45|5'),
(1066, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 6, '45|6'),
(1067, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 7, '45|7'),
(1068, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 8, 'default|45|8'),
(1069, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 26, '45|26'),
(1070, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 45, 28, 'default|45|28'),
(1071, NULL, NULL, NULL, NULL, NULL, 999.0000, NULL, NULL, NULL, 45, 11, '45|11'),
(1072, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, 13, '45|13'),
(1073, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, 14, 'default|45|14'),
(1074, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, 15, 'default|45|15'),
(1075, NULL, NULL, 'temporary-sku-ebb1c1', NULL, NULL, NULL, NULL, NULL, NULL, 45, 1, '45|1'),
(1076, 'tr', NULL, 'pro-3,5 MM 1,25 DİŞ ADIMLI KORTİKAL VİDA', NULL, NULL, NULL, NULL, NULL, NULL, 45, 2, 'tr|45|2'),
(1077, 'tr', NULL, 'pro-35-mm-125-dis-adimli-kortikal-vida', NULL, NULL, NULL, NULL, NULL, NULL, 45, 3, 'tr|45|3'),
(1078, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 45, 25, '45|25'),
(1079, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 45, 27, '45|27'),
(1080, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 45, 30, '45|30'),
(1081, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 45, 31, '45|31'),
(1082, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 45, 32, '45|32'),
(1083, 'tr', NULL, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 45, 16, 'tr|45|16'),
(1084, 'tr', NULL, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 45, 17, 'tr|45|17'),
(1085, 'tr', NULL, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 45, 18, 'tr|45|18'),
(1086, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 45, 22, '45|22'),
(1087, 'tr', NULL, '<div class=\"toggle-content\">\r\n<p>K&uuml;&ccedil;&uuml;k kemik fragman kompleks intraartik&uuml;ler ve ekstraartik&uuml;ler kırıkları, osteotomi tedavisinde ge&ccedil;ici kemik fiksasyonu i&ccedil;in 3,5 mm kilitli/kilitsiz kompresyon plak ile birlikte kırık hattına kompresyon uygulamak amacıyla &ouml;zellikle spongioz/kansell&ouml;z kemiklerde kullanılır</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 46, 9, 'tr|46|9'),
(1088, 'tr', NULL, '<table style=\"width: 505px;\" width=\"505\">\r\n<tbody>\r\n<tr bgcolor=\"#55e8de\">\r\n<td style=\"width: 154.551px;\" width=\"180\"><strong>SS</strong></td>\r\n<td style=\"width: 154.551px;\" width=\"180\"><strong>TI</strong></td>\r\n<td style=\"width: 152.578px;\" width=\"180\"><strong>DIA. x LENGTH (mm)</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353520</td>\r\n<td style=\"width: 154.551px;\">A6153520</td>\r\n<td style=\"width: 152.578px;\">3,5X20</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353522</td>\r\n<td style=\"width: 154.551px;\">A6153522</td>\r\n<td style=\"width: 152.578px;\">3,5X22</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353524</td>\r\n<td style=\"width: 154.551px;\">A6153524</td>\r\n<td style=\"width: 152.578px;\">3,5X24</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353526</td>\r\n<td style=\"width: 154.551px;\">A6153526</td>\r\n<td style=\"width: 152.578px;\">3,5X26</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353528</td>\r\n<td style=\"width: 154.551px;\">A6153528</td>\r\n<td style=\"width: 152.578px;\">3,5X28</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353530</td>\r\n<td style=\"width: 154.551px;\">A6153530</td>\r\n<td style=\"width: 152.578px;\">3,5X30</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353532</td>\r\n<td style=\"width: 154.551px;\">A6153532</td>\r\n<td style=\"width: 152.578px;\">3,5X32</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353534</td>\r\n<td style=\"width: 154.551px;\">A6153534</td>\r\n<td style=\"width: 152.578px;\">3,5X34</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353536</td>\r\n<td style=\"width: 154.551px;\">A6153536</td>\r\n<td style=\"width: 152.578px;\">3,5X36</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353538</td>\r\n<td style=\"width: 154.551px;\">A6153538</td>\r\n<td style=\"width: 152.578px;\">3,5X38</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353540</td>\r\n<td style=\"width: 154.551px;\">A6153540</td>\r\n<td style=\"width: 152.578px;\">3,5X40</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353542</td>\r\n<td style=\"width: 154.551px;\">A6153542</td>\r\n<td style=\"width: 152.578px;\">3,5X42</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353544</td>\r\n<td style=\"width: 154.551px;\">A6153544</td>\r\n<td style=\"width: 152.578px;\">3,5X44</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353546</td>\r\n<td style=\"width: 154.551px;\">A6153546</td>\r\n<td style=\"width: 152.578px;\">3,5X46</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353548</td>\r\n<td style=\"width: 154.551px;\">A6153548</td>\r\n<td style=\"width: 152.578px;\">3,5X48</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353550</td>\r\n<td style=\"width: 154.551px;\">A6153550</td>\r\n<td style=\"width: 152.578px;\">3,5X50</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 46, 10, 'tr|46|10'),
(1089, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 46, 29, '46|29'),
(1090, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 46, 5, '46|5'),
(1091, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 46, 6, '46|6'),
(1092, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 46, 7, '46|7'),
(1093, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 46, 8, 'default|46|8'),
(1094, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 46, 26, '46|26'),
(1095, NULL, 'default', NULL, 0, NULL, NULL, NULL, NULL, NULL, 46, 28, 'default|46|28'),
(1096, NULL, NULL, NULL, NULL, NULL, 999.0000, NULL, NULL, NULL, 46, 11, '46|11'),
(1097, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, 13, '46|13'),
(1098, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, 14, 'default|46|14'),
(1099, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, 15, 'default|46|15'),
(1100, NULL, NULL, 'temporary-sku-dd95cb', NULL, NULL, NULL, NULL, NULL, NULL, 46, 1, '46|1'),
(1101, 'tr', NULL, 'Pro-3,5 MM FULL YİVLİ SPONGİOZ VİDA', NULL, NULL, NULL, NULL, NULL, NULL, 46, 2, 'tr|46|2'),
(1102, 'tr', NULL, 'pro-35-mm-full-yivli-spongioz-vida', NULL, NULL, NULL, NULL, NULL, NULL, 46, 3, 'tr|46|3'),
(1103, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 46, 25, '46|25'),
(1104, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 46, 27, '46|27'),
(1105, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 46, 30, '46|30'),
(1106, NULL, NULL, '2025', NULL, NULL, NULL, NULL, NULL, NULL, 46, 31, '46|31'),
(1107, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 46, 32, '46|32'),
(1108, 'tr', NULL, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 46, 16, 'tr|46|16'),
(1109, 'tr', NULL, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 46, 17, 'tr|46|17'),
(1110, 'tr', NULL, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', NULL, NULL, NULL, NULL, NULL, NULL, 46, 18, 'tr|46|18'),
(1111, NULL, NULL, '0.5', NULL, NULL, NULL, NULL, NULL, NULL, 46, 22, '46|22'),
(1112, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 33, 4, 'default|33|4'),
(1113, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 28, 4, 'default|28|4'),
(1114, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 30, 4, 'default|30|4'),
(1115, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 16, 4, 'default|16|4'),
(1116, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 15, 4, 'default|15|4'),
(1117, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 17, 4, 'default|17|4'),
(1118, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 14, 4, 'default|14|4'),
(1119, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 41, 4, 'default|41|4'),
(1120, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 42, 4, 'default|42|4'),
(1121, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 34, 4, 'default|34|4'),
(1122, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 44, 4, 'default|44|4'),
(1123, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 43, 4, 'default|43|4'),
(1124, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 40, 4, 'default|40|4'),
(1125, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 31, 4, 'default|31|4'),
(1126, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 32, 4, 'default|32|4'),
(1127, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 37, 4, 'default|37|4'),
(1128, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 11, 4, 'default|11|4'),
(1129, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 26, 4, 'default|26|4'),
(1130, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 27, 4, 'default|27|4'),
(1131, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 25, 4, 'default|25|4'),
(1132, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 38, 4, 'default|38|4'),
(1133, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 13, 4, 'default|13|4'),
(1134, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 24, 4, 'default|24|4'),
(1135, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 45, 4, 'default|45|4'),
(1136, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 46, 4, 'default|46|4'),
(1137, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 18, 4, 'default|18|4'),
(1138, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 36, 4, 'default|36|4'),
(1139, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 39, 4, 'default|39|4'),
(1140, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 4, 'default|12|4'),
(1141, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 21, 4, 'default|21|4'),
(1142, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 22, 4, 'default|22|4'),
(1143, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 9, 4, 'default|9|4'),
(1144, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 23, 4, 'default|23|4'),
(1145, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, 4, 'default|3|4'),
(1146, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 10, 4, 'default|10|4'),
(1147, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 4, 4, 'default|4|4'),
(1148, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, 4, 'default|2|4'),
(1149, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 20, 4, 'default|20|4'),
(1150, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 5, 4, 'default|5|4'),
(1151, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 8, 4, 'default|8|4'),
(1152, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 6, 4, 'default|6|4'),
(1153, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 7, 4, 'default|7|4'),
(1154, NULL, 'default', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 4, 'default|1|4');

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_options`
--

CREATE TABLE `product_bundle_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_option_products`
--

CREATE TABLE `product_bundle_option_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_bundle_option_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_option_translations`
--

CREATE TABLE `product_bundle_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `product_bundle_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(1, 15),
(1, 16),
(2, 15),
(2, 16),
(3, 11),
(3, 15),
(4, 15),
(4, 16),
(5, 15),
(5, 17),
(6, 15),
(6, 16),
(7, 15),
(7, 17),
(8, 15),
(8, 17),
(9, 15),
(9, 17),
(10, 7),
(10, 17),
(11, 7),
(11, 9),
(12, 7),
(12, 9),
(13, 7),
(13, 9),
(14, 2),
(14, 3),
(15, 2),
(15, 3),
(16, 2),
(16, 3),
(17, 2),
(17, 3),
(18, 2),
(18, 6),
(19, 7),
(19, 11),
(20, 7),
(20, 11),
(21, 7),
(21, 11),
(22, 7),
(22, 11),
(23, 7),
(23, 11),
(24, 2),
(24, 6),
(25, 2),
(25, 6),
(26, 2),
(26, 6),
(27, 2),
(27, 6),
(28, 2),
(28, 5),
(30, 2),
(30, 5),
(31, 2),
(31, 5),
(32, 2),
(32, 5),
(32, 7),
(32, 11),
(32, 15),
(33, 2),
(33, 5),
(34, 2),
(34, 4),
(35, 2),
(35, 4),
(36, 2),
(36, 4),
(37, 2),
(37, 4),
(38, 2),
(38, 4),
(39, 2),
(39, 4),
(40, 12),
(40, 13),
(41, 12),
(41, 13),
(42, 12),
(42, 13),
(43, 12),
(43, 13),
(44, 12),
(44, 13),
(45, 12),
(45, 14),
(46, 12),
(46, 14);

-- --------------------------------------------------------

--
-- Table structure for table `product_channels`
--

CREATE TABLE `product_channels` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_channels`
--

INSERT INTO `product_channels` (`product_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cross_sells`
--

CREATE TABLE `product_cross_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_customer_group_prices`
--

CREATE TABLE `product_customer_group_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `value_type` varchar(255) NOT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_customer_group_prices`
--

INSERT INTO `product_customer_group_prices` (`id`, `qty`, `value_type`, `value`, `product_id`, `customer_group_id`, `created_at`, `updated_at`, `unique_id`) VALUES
(1, 100, 'discount', 10.0000, 1, NULL, '2025-05-07 02:49:42', '2025-05-07 02:49:42', '100|1'),
(2, 200, 'fixed', 45.0000, 4, NULL, '2025-05-07 03:05:12', '2025-05-07 03:05:12', '200|4'),
(3, 100, 'fixed', 7.9900, 7, NULL, '2025-05-07 03:31:16', '2025-05-07 03:31:16', '100|7');

-- --------------------------------------------------------

--
-- Table structure for table `product_customizable_options`
--

CREATE TABLE `product_customizable_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 1,
  `max_characters` text DEFAULT NULL,
  `supported_file_extensions` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_customizable_options`
--

INSERT INTO `product_customizable_options` (`id`, `product_id`, `type`, `is_required`, `max_characters`, `supported_file_extensions`, `sort_order`) VALUES
(1, 1, 'radio', 1, NULL, NULL, 0),
(2, 6, 'select', 1, NULL, NULL, 0),
(3, 20, 'select', 1, NULL, NULL, 0),
(4, 22, 'select', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_customizable_option_prices`
--

CREATE TABLE `product_customizable_option_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` text DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_customizable_option_id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_customizable_option_prices`
--

INSERT INTO `product_customizable_option_prices` (`id`, `label`, `price`, `product_customizable_option_id`, `sort_order`) VALUES
(1, 'No:20', 0.0000, 1, 0),
(2, 'No:18', 0.0000, 1, 1),
(3, 'No:16', 0.0000, 1, 2),
(4, '30 CM', 0.0000, 2, 0),
(5, '120 CM', 15.0000, 2, 1),
(6, '145 CM', 20.0000, 2, 2),
(7, 'No : 0', 0.0000, 3, 0),
(8, 'No : 1', 5.0000, 3, 1),
(9, 'No : 2', 7.9900, 3, 2),
(10, 'No:3', 9.9900, 3, 3),
(11, 'No : 4', 12.9900, 3, 4),
(12, 'No : 5', 19.9900, 3, 5),
(13, 'Çocuk', 0.0000, 4, 0),
(14, 'Yetişkin', 9.9900, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_customizable_option_translations`
--

CREATE TABLE `product_customizable_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `label` text DEFAULT NULL,
  `product_customizable_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_customizable_option_translations`
--

INSERT INTO `product_customizable_option_translations` (`id`, `locale`, `label`, `product_customizable_option_id`) VALUES
(1, 'tr', 'Ölçü :', 1),
(2, 'tr', 'Uzunluk:', 2),
(3, 'tr', 'Ölçü :', 3),
(4, 'tr', 'Tür', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_links`
--

CREATE TABLE `product_downloadable_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sample_url` varchar(255) DEFAULT NULL,
  `sample_file` varchar(255) DEFAULT NULL,
  `sample_file_name` varchar(255) DEFAULT NULL,
  `sample_type` varchar(255) DEFAULT NULL,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_link_translations`
--

CREATE TABLE `product_downloadable_link_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_downloadable_link_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_samples`
--

CREATE TABLE `product_downloadable_samples` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_sample_translations`
--

CREATE TABLE `product_downloadable_sample_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_downloadable_sample_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_flat`
--

CREATE TABLE `product_flat` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url_key` varchar(255) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` date DEFAULT NULL,
  `special_price_to` date DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `visible_individually` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_flat`
--

INSERT INTO `product_flat` (`id`, `sku`, `type`, `product_number`, `name`, `short_description`, `description`, `url_key`, `new`, `featured`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `price`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `created_at`, `locale`, `channel`, `attribute_family_id`, `product_id`, `updated_at`, `parent_id`, `visible_individually`) VALUES
(1, 'SRF-01', 'simple', '', 'Branül Kanül', '<p>Renk kodlu, steril bran&uuml;l kan&uuml;l. Serum setleri ve portlarla uyumlu. Tekli paket halinde sunulur.</p>', '<p class=\"MsoNormal\">A&ccedil;ma kapama sistemine sahip olan&uuml;r&uuml;nler yapısal &ouml;zelliği nedeniyle dokuya ve damara zarar vermez.Farklı numaralarda olan anjiokat,renklendirilmiş olduğundan numaraların kolay ayırt edilmesisağlanmaktadır. Her t&uuml;rl&uuml; serum seti, kan seti, stepve benzer bağlantılar ile uyumludur. Enjeksiyon portu mevcuttur. Port b&ouml;l&uuml;m&uuml; kapaklı olduğundankontaminasyona neden olmaz.Kan&uuml;l&uuml;n I.V. puşe yapılan enjeksiyonportu kapağı tam olarak oturur ve istemsiz bir şekilde a&ccedil;ılmaz. Kan&uuml;l&uuml;n g&ouml;vde ile bağlantısıolduğundan kapak a&ccedil;ıldığında d&uuml;şmez. Renk kodlu olan bran&uuml;l d&uuml;nyastandartlarına uygun &ouml;l&ccedil;&uuml; ve forma sahiptir.Steril bir şekilde tekli paketlerhalinde adresinize ulaşmaktadır.&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', 'branul-kanul', 1, 1, 1, 'Branül Kanül  Tek Kullanımlık Sarf Malzemesi', 'branül, kanül, pembe branül, No:20, sarf malzeme, iğne, enjeksiyon', 'Branül Kanül No:20, portlu ve renk kodlu yapısı sayesinde kolay ayırt edilir. Tekli, steril paketlerde sunulur.', 7.6400, NULL, NULL, NULL, 0.0020, '2025-05-07 05:41:26', 'tr', 'default', 1, 1, '2025-05-11 05:45:36', NULL, 1),
(2, 'SRF-02', 'simple', '', 'Steril Foley sonda', '<p>Silikon kaplı, lateks malzemeden &uuml;retilmiş steril Foley sonda. İki yolludur, tıbbi kullanım i&ccedil;in uygundur.</p>', '<p>İdrar sondasıdır. Foley sondası, tekli ve blister steril ambalajdadır. &nbsp;<br>Tahriş etmeyen silikon kaplı doğal lateks malzemeden &uuml;retilmiştir.&nbsp;İki yolludur. Sondanın u&ccedil; kısmı yuvarlatılmış ve g&ouml;z a&ccedil;ıklıkları yumuşak formdadır.&nbsp;Kullanım kolaylığı sağlar, enfeksiyon riskini en aza indirir.&nbsp;Sağlık profesyonelleri tarafından tek kullanımlık ama&ccedil;la &ouml;nerilmektedir.&nbsp;Lateks hassasiyeti olan bireylerde dikkatli kullanılmalıdır.</p>', 'steril-foley-sonda', 1, 1, 1, 'Galena Foley Lateks İki Yollu Sonda - Tıbbi Sonda', 'foley sonda, galena sonda, iki yollu sonda, tıbbi sonda, lateks sonda, idrar sondası', 'Galena markalı iki yollu Foley sonda, steril, silikon kaplı lateks malzemeden üretilmiştir. Tıbbi kullanım için uygundur.', 59.0000, 49.0000, NULL, NULL, 0.0020, '2025-05-07 05:51:45', 'tr', 'default', 1, 2, '2025-05-11 05:44:28', NULL, 1),
(3, 'SRF-03', 'simple', '', 'Galena PVC Aspirasyon Sondası', '<p>PVC malzemeden &uuml;retilmiş, steril ve esnek yapıya sahip tek kullanımlık aspirasyon sondası.</p>', '<p>Galena markalı aspirasyon sondası, y&uuml;ksek kaliteli PVC malzemeden &uuml;retilmiştir.&nbsp;Steril ve tek kullanımlık olan bu &uuml;r&uuml;n, aspirasyon işlemlerinde mukus ve sekresyonların g&uuml;venli bir şekilde uzaklaştırılması i&ccedil;in tasarlanmıştır. &nbsp;<br>Esnek yapısı sayesinde rahat kullanım sağlar ve farklı boyut se&ccedil;enekleri mevcuttur.&nbsp;T&uuml;m standart aspirasyon bağlantılarına uyumludur.Tıbbi ortamlarda g&uuml;venle kullanılabilir.</p>', 'galena-pvc-aspirasyon-sondası', 1, 1, 1, 'Galena PVC Aspirasyon Sondası - Steril Tek Kullanımlık', 'aspirasyon sondası, galena sonda, pvc aspirasyon, steril medikal sonda', 'Galena PVC Aspirasyon Sondası, esnek yapısı ve steril yapısı sayesinde güvenli aspirasyon işlemleri için idealdir.', 129.0000, 99.0000, NULL, NULL, 0.0500, '2025-05-07 05:57:01', 'tr', 'default', 1, 3, '2025-05-11 05:43:46', NULL, 1),
(4, 'SRF-04', 'simple', '', 'T musluklu idrar torbası', '<p>T musluklu idrar torbası, hasta bakımında idrar toplama ve boşaltma işlemlerini kolaylaştıran pratik bir &uuml;r&uuml;nd&uuml;r. Kolay kullanım ve hijyenik tasarımı ile hem hasta konforunu hem sağlık personelinin iş y&uuml;k&uuml;n&uuml; azaltır.</p>', '<p>&Uuml;r&uuml;n, medikal polivinil klor&uuml;r (PVC) malzemeden &uuml;retilmiştir.Toplam kapasitesi 2000 ml\'dir ve mililitre &ouml;l&ccedil;eklidir.&nbsp;Askı i&ccedil;in geniş &ccedil;aplı delikler mevcuttur.&nbsp;B&uuml;k&uuml;lmeye karşı diren&ccedil;li hortumu sayesinde sıvı akışını kesintisiz sağlar.&nbsp;A&ccedil;ma-kapama işlemi kolaylıkla yapılabilen bir klemp (musluk) ile kontrol edilir. &nbsp;Bağlantı konnekt&ouml;r&uuml; &uuml;zerinde &ouml;rnek alma portu bulunmaktadır. &Uuml;r&uuml;n, idrar sondalarına ve prezervatif sondalara bağlanmak &uuml;zere tasarlanmıştır.&nbsp;Steril, tek kullanımlık ve hastane/klinik kullanımına uygundur.</p>', 't-musluklu-idrar-torbası', 1, 1, 1, 'T Musluklu İdrar Torbası - 2000ml PVC Tek Kullanımlık', 'idrar torbası, t musluklu idrar torbası, 2000ml torba, pvc medikal torba, hasta bakım ürünü', 'T musluklu 2000ml idrar torbası, PVC\'den üretilmiş olup bükülmez hortumu ve örnek alma portu ile hijyenik kullanım sunar.', 59.9900, NULL, NULL, NULL, 0.0100, '2025-05-07 06:00:09', 'tr', 'default', 1, 4, '2025-05-11 05:44:19', NULL, 1),
(5, 'SRF-05', 'simple', '', 'Cathejell kaydırıcı jel', '<p>Cathejell kaydırıcı jel, kateterizasyon işlemleri sırasında kullanılan steril bir tıbbi &uuml;r&uuml;nd&uuml;r. Kateterin kolay ve konforlu şekilde v&uuml;cuda yerleştirilmesini sağlar.</p>', '<p>Cathejell, steril blister ambalajında sunulan, oksit artık i&ccedil;ermeyen kaydırıcı jeldir. &nbsp;<br>Sterilite ve enfeksiyon &ouml;nleyici ajanlar (klorheksidin, iatrojenik koruyucular) i&ccedil;erir. &nbsp;<br>Yumuşak anatomik başlıklı ve patentli ucu sayesinde, travma riskini azaltır. &nbsp;<br>Katlanabilir t&uuml;p formu, hem minimal damlatma hem de gerektiğinde idrar aspire etmeden uygulama kolaylığı sağlar. &nbsp;<br>Suda erir, renksizdir. Doku uyumluluğu y&uuml;ksektir ve metal şaftlı enstr&uuml;manlarla uyumludur. &nbsp;<br>Kadın ve erkek hastalarda kullanıma uygundur. &nbsp;<br>&Uuml;r&uuml;n, kalıcı ve ge&ccedil;ici kateter yerleştirmelerinde kullanılır.</p>', 'cathejell-kaydırıcı-jel', 0, 0, 1, 'Cathejell Kaydırıcı Jel - Steril Kateter Jel', 'cathejell, kaydırıcı jel, kateter jeli, steril jel, medikal jel, üroloji', 'Cathejell steril kaydırıcı jel, kateter uygulamalarında travmayı azaltır ve enfeksiyon riskini en aza indirir. Kadın ve erkek hastalar için uygundur.', 33.4000, NULL, NULL, NULL, 0.0020, '2025-05-07 06:07:40', 'tr', 'default', 1, 5, '2025-05-11 05:44:56', NULL, 1),
(6, 'SRF-06', 'simple', '', 'PVC - Line', '<p>Basıncı değiştirmeden iletim sağlayan, PVC malzemeden &uuml;retilmiş uzatma hattı. 30 cm, 120 cm ve 145 cm uzunluk se&ccedil;enekleri mevcuttur.</p>', '<p>Medikal kullanım i&ccedil;in tasarlanmış uzatma line (extension line), sıvı ve ila&ccedil; iletiminde kullanılmak &uuml;zere geliştirilmiştir. &nbsp;<br>PVC (polivinil klor&uuml;r) malzemeden &uuml;retilmiş olup, i&ccedil;eriğindeki esnek yapı sayesinde basıncı değiştirmeden sıvı ge&ccedil;işini sağlar. &nbsp;</p>\r\n<p>&nbsp;</p>', 'pvc-line', 0, 0, 1, '', '', '', 9.9900, NULL, NULL, NULL, 0.0020, '2025-05-07 06:09:33', 'tr', 'default', 1, 6, '2025-05-11 05:45:14', NULL, 1),
(7, 'SRF-07', 'simple', 'Sarf07', 'Plastik Böbrek Küvet 100 Adet', '<p>Tek kullanımlık plastik b&ouml;brek k&uuml;vet; pansuman, atık toplama ve sıvı taşıma işlemlerinde kullanılan hijyenik bir yardımcı &uuml;r&uuml;nd&uuml;r.</p>', '<p>Plastik b&ouml;brek k&uuml;vet, sağlık kuruluşlarında pansuman atıklarını toplamak, v&uuml;cut sıvılarını ge&ccedil;ici olarak taşımak veya uygulama sırasında yardımcı kap olarak kullanılmak &uuml;zere tasarlanmıştır. &nbsp;Aile sağlığı merkezleri, klinikler ve hastanelerde yaygın şekilde tercih edilmektedir. &nbsp;<br>&Uuml;r&uuml;n tek kullanımlıktır ve hijyenik blister paketlerde 100 adetlik set olarak sunulmaktadır. &nbsp;<br>Ergonomik yapısı sayesinde hem hastaya hem de sağlık personeline kullanım kolaylığı sağlar. &nbsp;<br>Steril değildir ancak atıkla doğrudan temas etmeyeceği işlemler i&ccedil;in uygundur. &nbsp;</p>\r\n<p>&nbsp;</p>', 'plastik-bobrek-kuvet-100-adet', 1, 1, 1, 'Plastik Böbrek Küvet - 100\'lü Paket - Tek Kullanımlık Medikal Küvet', 'böbrek küvet, plastik küvet, medikal küvet, tek kullanımlık kap, pansuman atık kabı, 100 adet küvet', 'Pansuman atıkları için ideal tek kullanımlık plastik böbrek küvet. 100 adetlik ekonomik paket halinde sunulur.', 9.9900, NULL, NULL, NULL, 0.0200, '2025-05-07 06:27:52', 'tr', 'default', 1, 7, '2025-05-11 05:45:24', NULL, 1),
(8, 'SRF-08', 'simple', '', 'sedye alezi', '<p>Alerji yapmaz, tek kullanımlık sedye alezi. Sağlık merkezlerinde hijyenik hasta muayenesi i&ccedil;in ideal koruyucu &ouml;rt&uuml;d&uuml;r.</p>', '<p>Tek kullanımlık sedye alezi, sağlık kuruluşlarında sedyelerin y&uuml;zeyini korumak ve hasta ile temas eden alanlarda hijyen sağlamak amacıyla kullanılır. &nbsp;<br>Alerji ve terleme yapmaz. Nefes alabilir yapısı sayesinde hasta konforunu artırır. &nbsp;<br>Aile sağlığı merkezleri, poliklinikler ve acil servislerde sık&ccedil;a tercih edilmektedir. &nbsp;<br>Kullanım kolaylığı sunar ve hızlıca değiştirilebilir. &nbsp;<br>Paket i&ccedil;eriği: 1 adet (steril değildir) &nbsp;<br>Boyut: Standart sedye &ouml;l&ccedil;&uuml;lerine uygundur. &nbsp;<br>&Uuml;r&uuml;n, &ccedil;evre dostu malzemeden &uuml;retilmiş olup tek kullanımlıktır.</p>', 'sedye-alezi', 0, 0, 1, 'Tek Kullanımlık Sedye Alezi - Hijyenik Koruyucu Örtü', 'sedye alezi, tek kullanımlık örtü, medikal alez, hasta örtüsü, sağlık merkezi alezi', 'Sedye için geliştirilen tek kullanımlık alez, hijyen sağlar, terletmez ve alerji yapmaz. Sağlık kuruluşlarında güvenle kullanılır.', 19.9900, NULL, NULL, NULL, 0.0020, '2025-05-07 06:31:40', 'tr', 'default', 1, 8, '2025-05-11 05:45:04', NULL, 1),
(9, 'SRF-09', 'simple', '', 'Emici Medikal Örtü (PE Lamineli Kağıt)', '<p>PE lamineli, sıvı ge&ccedil;irmez ve emici &ouml;zellikte tek kullanımlık medikal &ouml;rt&uuml;. Pratik ve hijyenik kullanım sağlar.</p>', '<p>&Uuml;r&uuml;n, PE lamineli kağıttan &uuml;retilmiştir ve y&uuml;ksek sıvı emici &ouml;zelliğe sahiptir. &nbsp;<br>Laminasyonunda tutkal kullanılmamıştır, bu da &ccedil;evre dostu ve ciltle uyumlu olmasını sağlar.&nbsp;</p>\r\n<hr>\r\n<p>**&Ouml;zellikler:**<br>- Y&uuml;ksek sıvı emiciliği<br>- Sıvı ge&ccedil;irmez arka y&uuml;zey<br>- Tek kullanımlık ve hijyenik<br>- Pratik kullanım</p>\r\n<p>**&Uuml;r&uuml;n &Ouml;l&ccedil;&uuml;leri:**<br>- En: 50 cm &nbsp;<br>- Y&uuml;kseklik: 60 cm &nbsp;</p>\r\n<hr>\r\n<p>Medikal muayene, pansuman, doğum ve diğer sağlık hizmetlerinde yaygın olarak kullanılır. &nbsp;<br>Hasta ve sağlık &ccedil;alışanı arasındaki teması hijyenik hale getirir.</p>', 'emici-medikal-ortu-pe-lamineli-kagıt', 1, 0, 1, 'PE Lamineli Medikal Örtü - 50x60 cm Tek Kullanımlık', 'medikal örtü, emici örtü, tek kullanımlık örtü, pe lamineli örtü, sıvı geçirmez medikal bez', 'Sıvı geçirmez ve emici özellikli, PE lamineli tek kullanımlık medikal örtü. 50x60 cm ebatlarında, hijyenik kullanım için idealdir.', 145.9900, NULL, NULL, NULL, 0.5000, '2025-05-07 06:35:27', 'tr', 'default', 1, 9, '2025-05-11 05:43:25', NULL, 1),
(10, 'SRF-10', 'simple', '', 'Yetişkin Ekg Elektrodu 50\'lik Paket', '<p>Yetişkin EKG elektrodu, kalp aktivitesini &ouml;l&ccedil;mek amacıyla v&uuml;cuda yerleştirilerek elektriksel sinyalleri EKG cihazına iletir.</p>', '<p>Yetişkinler i&ccedil;in tasarlanmış bu EKG elektrotları, tek kullanımlıktır ve 50\'lik paketler halinde sunulmaktadır. &nbsp;<br>Yapışkanlı metal disk formundadır ve cilde kolayca uygulanabilir. &nbsp;</p>\r\n<p>**Kullanım Alanı:**<br>Kalbin elektriksel aktivitesinin deri &uuml;zerinden &ouml;l&ccedil;&uuml;lmesini sağlayan elektrotlar, EKG (elektrokardiyografi) işleminde kullanılır. &nbsp;<br>G&ouml;ğ&uuml;s, kol ve bacak b&ouml;lgelerine yerleştirilir. &nbsp;</p>\r\n<p>Elektrotlar, EKG cihazına iletilen sinyalleri kayda &ccedil;evirerek doktorların tanı koymasına yardımcı olur.</p>', 'yetiskin-ekg-elektrodu-50lik-paket', 1, 1, 1, 'Yetişkin EKG Elektrodu - Tek Kullanımlık 50\'li Paket', 'ekg elektrodu, yetişkin ekg pedi, tek kullanımlık elektrot, kalp elektrotu, ekg sensörü', 'Yetişkin EKG elektrodu, yapışkanlı metal disk uçlara sahip, tek kullanımlık 50’li paket formunda sunulur. Kalp aktivitesi ölçümünde kullanılır.', 99.9900, NULL, NULL, NULL, 0.0100, '2025-05-07 06:38:42', 'tr', 'default', 1, 10, '2025-05-11 05:43:58', NULL, 1),
(11, 'SRF-11', 'simple', '', 'Silikonlu EKG Kemer Sistemi', '<p>Silikon bazlı esnek yapısı sayesinde kolay ve g&uuml;venilir EKG &ccedil;ekimi sağlar. Kemer sistemi, v&uuml;cuda otomatik uyum sağlayan entegre EKG elektrotları i&ccedil;erir.</p>', '<p>EKG kemeri, hiper esnek silikon yapı i&ccedil;ine yerleştirilmiş entegre EKG elektrotlarından oluşur. &nbsp;<br>Kullanıcı kemeri taktığında &uuml;r&uuml;n v&uuml;cut formuna otomatik olarak uyum sağlar ve elektrotlar arasında gereken mesafe kendiliğinden ayarlanır. &nbsp;<br>Bu yapı sayesinde &ouml;l&ccedil;&uuml;m noktalarının doğru yerleşimi sağlanır ve EKG &ccedil;ekim kalitesi artar. &nbsp;</p>\r\n<hr>\r\n<p>**&Ouml;zellikler:**<br>- Silikon bazlı, esnek ve hipoalerjenik yapı &nbsp;<br>- Entegre EKG elektrotları &nbsp;<br>- Kolay kullanım, hızlı uygulama &nbsp;<br>- Tek veya &ccedil;oklu kullanımlık versiyonlar (&uuml;r&uuml;n varyantına g&ouml;re değişebilir) &nbsp;<br>- V&uuml;cuda zarar vermeyen, konforlu tasarım &nbsp;</p>\r\n<hr>\r\n<p>Hastaneler, acil servisler ve klinik ortamlar i&ccedil;in uygundur.</p>', 'silikonlu-ekg-kemer-sistemi', 1, 1, 1, 'Silikonlu EKG Kemer Sistemi - Esnek Entegre Elektrotlu', 'ekg kemeri, silikon ekg kemeri, entegre ekg elektrotları, esnek ekg sistemi, hızlı ekg çekimi', 'Hiper esnek silikon yapılı EKG kemeri, elektrotları otomatik konumlandırarak hızlı ve güvenli EKG çekimini sağlar.', 1999.0000, NULL, NULL, NULL, 0.5000, '2025-05-07 06:42:27', 'tr', 'default', 1, 11, '2025-05-11 05:40:14', NULL, 1),
(12, 'AKS-11', 'simple', '', 'EKG Mandalı – Gümüş Kaplama Metal Uçlu', '<p>T&uuml;m EKG kablolarıyla uyumlu, iletkenliği y&uuml;ksek g&uuml;m&uuml;ş kaplama metal y&uuml;zeye sahip d&ouml;rt par&ccedil;alı EKG mandalı seti.</p>', '<p>EKG mandalları, y&uuml;ksek iletkenliğe sahip g&uuml;m&uuml;ş kaplama metal y&uuml;zeyleri sayesinde EKG &ouml;l&ccedil;&uuml;m cihazlarına doğru ve hızlı sinyal iletimi sağlar. &nbsp;<br>Yetişkin hastalar i&ccedil;in uygundur ve t&uuml;m standart EKG kablolarıyla uyumlu olarak &uuml;retilmiştir. &nbsp;Elektrokardiyografi (EKG) uygulamaları sırasında hasta konforunu artırır, sinyal iletimini g&uuml;venilir kılar.</p>', 'ekg-mandalı-gumus-kaplama-metal-uclu', 1, 1, 1, 'Gümüş Kaplama EKG Mandalı - 4\'lü Set', 'ekg mandalı, gümüş ekg klipsi, metal ekg kablosu mandalı, ekg bağlantı aparatı', 'Yüksek iletkenliğe sahip gümüş kaplama EKG mandalı seti, dayanıklı yapısıyla EKG uygulamalarında güvenli sinyal iletimi sağlar.', 549.9900, NULL, NULL, NULL, 0.5000, '2025-05-07 06:47:05', 'tr', 'default', 1, 12, '2025-05-11 05:42:50', NULL, 1),
(13, 'AKS-12', 'simple', '', 'Contec Ekg Çan ve Puarı 6\'lı Set Düz Pim', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Hasta &uuml;zerinde uzun s&uuml;re kalabilen ve s&uuml;rekli kontrol edilmesine gerek bırakmayan ekg puarı t&uuml;m ekg kabloları ile uyumludur.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p class=\"MsoNormal\">EKG puarı ge&ccedil;meli yapıdadır.T&uuml;m ekg kablolarına uyumludur.D&uuml;z pim, banana ve &ccedil;ıt &ccedil;ıt u&ccedil;lukablololar i&ccedil;in uyumludur.Ekg puarının &ccedil;an kısmı paslanmaz veiletkenliği y&uuml;ksektir. Vidalı bir yapıya sahip olan ekgcihazı puarı &uuml;r&uuml;n&uuml;n&uuml;n en &ouml;nemli b&ouml;l&uuml;m&uuml; olan &ccedil;an kısmı paslanmaz malzemekullanılarak &uuml;retilmiştir.&nbsp;</p>\r\n<p class=\"MsoNormal\">Bu nedenle uzun s&uuml;re kullanım olanağısunar ve reaksiyonlara neden olmaz.</p>', 'contec-ekg-can-ve-puarı-6lı-set-duz-pim', 1, 1, 1, '', '', '', 1050.0000, 999.9900, NULL, NULL, 1.0000, '2025-05-07 07:02:44', 'tr', 'default', 1, 13, '2025-05-11 05:41:06', NULL, 1),
(14, 'CHZ-01', 'simple', '', 'Firstmed Tek Kanallı Ekg Cihazı ECG-100G', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Tek kanallı EKG cihazı, elektrokardiyogramın (EKG) bir t&uuml;r&uuml;d&uuml;r ve kalp aktivitesini değerlendirmek i&ccedil;in kullanılan bir tıbbi cihazdır. \"Tek kanallı\" terimi, cihazın birinci dereceden kalp aktivitesini kaydedebildiği anlamına gelir, yani sadece bir elektrot (bir kanal) kullanır.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p data-start=\"522\" data-end=\"927\">Firstmed Tek Kanallı EKG Cihazı ECG-100G, kompakt ve hafif tasarımıyla &ouml;ne &ccedil;ıkar. Otomatik ve manuel yazdırma modlarına sahiptir. Termal yazıcı sistemi sayesinde EKG verilerini hızlıca kağıda d&ouml;kebilir. Kalp ritmi analizinde g&uuml;venilir sonu&ccedil;lar sunar ve &ouml;zellikle muayenehaneler, klinikler ve hastanelerde kullanım i&ccedil;in uygundur. Kullanımı kolay aray&uuml;z&uuml; sayesinde sağlık profesyonellerine pratiklik sağlar.</p>', 'firstmed-tek-kanallı-ekg-cihazı-ecg-100g', 1, 1, 1, 'Firstmed Tek Kanallı Ekg', 'Firstmed Tek Kanallı Ekg', 'Firstmed markasına ait ECG-100G modeli tek kanallı EKG cihazı; hafif, kompakt tasarımı ve gelişmiş batarya desteği ile kalp ritmi değerlendirmesinde güvenilir çözümler sunar.', 19999.0000, NULL, NULL, NULL, 5.0000, '2025-05-07 15:46:44', 'tr', 'default', 1, 14, '2025-05-11 05:37:58', NULL, 1),
(15, 'CHZ-02', 'simple', '', 'Firstmed 6 Kanallı Ekg Cihazı ECG-600G', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">&nbsp;Kalpte bulunan elektriksel aktiviteyi ve kalbin ritmini grafik olarakkaydeden bir tetkiktir. Kollar, bacak ve g&ouml;ğ&uuml;s b&ouml;lgesine &ccedil;ekim i&ccedil;in elektrotlarbağlanır. Kalbin her atımında &uuml;rettiği elektrik sinyaller elektrotlartarafından algılanarak bir grafik k&acirc;ğıda kaydeder.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p>Firstmed 6 kanallı EKG cihazı, 7 in&ccedil; dokunmatik LCD ekran, 12 lead eş zamanlı EKG g&ouml;r&uuml;nt&uuml;leme, gelişmiş yorumlama &ouml;zelliği, otomatik, manuel ve ritim yazdırma modları, lead bağlantı bilgisi, 1000 adeti aşan dahili hafıza, AC, DFT ve EMG filtreleri, dahili termal yazıcı ve 6 kanal EKG &ouml;zelliklerine sahiptir.<br>800x480 renkli TFT dokunmatik ekranı ve işlev tuşları ile kolay kullanım sağlar.<br>Y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kl&uuml; termal duyarlı ve termal y&ouml;nl&uuml; yazıcıya sahiptir.<br>Bazal &ccedil;izgi (baseline) sapmasına, AC ve parazitlere dayanıklılık i&ccedil;in tam dijital filtre mevcuttur.<br>Şarj edilebilen, yerleşik lityum bataryası bulunur.<br>EKG parametresini otomatik &ouml;l&ccedil;&uuml;mleme, otomatik analizleme ve otomatik teşhis etme işlevleri mevcuttur.<br>Satın alınma tarihinden itibaren 2 yıl garantisi mevcuttur.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', 'firstmed-6-kanallı-ekg-cihazı-ecg-600g', 1, 1, 1, 'Firstmed Tek Kanallı Ekg', 'Firstmed Tek Kanallı Ekg', 'Firstmed markasına ait ECG-100G modeli tek kanallı EKG cihazı; hafif, kompakt tasarımı ve gelişmiş batarya desteği ile kalp ritmi değerlendirmesinde güvenilir çözümler sunar.', 31750.0000, 31000.0000, NULL, NULL, 5.0000, '2025-05-07 15:53:17', 'tr', 'default', 1, 15, '2025-05-11 05:37:28', NULL, 1),
(16, 'CHZ-03', 'simple', '', 'Semcares 3 Kanallı Ekg Cihazı EM-301', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">&nbsp;Kalpte bulunan elektriksel aktiviteyi ve kalbin ritmini grafik olarakkaydeden bir tetkiktir. Kollar, bacak ve g&ouml;ğ&uuml;s b&ouml;lgesine &ccedil;ekim i&ccedil;in elektrotlarbağlanır. Kalbin her atımında &uuml;rettiği elektrik sinyaller elektrotlartarafından algılanarak bir grafik k&acirc;ğıda kaydeder.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p>EKG cihazı sayesinde,kalbin kasılması esnasında oluşan elektriksel aktivite bir grafik şeklindekaydedilebilir ve bu grafik kağıda veya dijital bir ortama d&ouml;k&uuml;lebilir. Kalpattığında v&uuml;cutta hafif bir elektriksel aktivite oluşur.<br>EKG cihazıaracılığıyla bu elektriksel aktivite g&ouml;zlemlenir. B&ouml;ylece kalbin atış frekansı,kalp ritmi ve benzeri bir&ccedil;ok &ouml;nemli bilgiye ulaşılabilir. Kalpteki elektrikselaktiviteyi &ouml;l&ccedil;mek i&ccedil;in &ouml;ncelikle kişinin kol, bacak ve g&ouml;ğ&uuml;s b&ouml;lgelerineelektrotlar yapıştırılır.<br>Kişinin v&uuml;cudunun &uuml;zerine yapıştırılan buelektrotlar, EKG cihazına bilgi g&ouml;nderir. G&ouml;nderilen bilgi ise EKG cihazıtarafından bir grafik oluşturacak şekilde kağıda veya dijital bir ortamaaktarılır. Bu sayede ilgili hekim, hastanın durumu hakkında &ouml;n bilgi sahibi olur.&nbsp;</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', 'semcares-3-kanallı-ekg-cihazı-em-301', 1, 0, 1, 'Semcares 3 Kanallı Ekg Cihazı EM-301', 'Semcares 3 Kanallı Ekg Cihazı EM-301', 'Semcares 3 Kanallı Ekg Cihazı EM-301', 36750.0000, NULL, NULL, NULL, 5.0000, '2025-05-07 15:57:57', 'tr', 'default', 1, 16, '2025-05-11 05:37:14', NULL, 1),
(17, 'CHZ-04', 'simple', '', 'Microcor PC Tabanlı 12 Kanallı Yorumlu Mobil EKG Cihazı (DICOM)', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">microCOR, hastanelerde, muayenehanelerde, ambulanslarda ve evde kullanılabilen, y&uuml;ksek doğrulukta 12-kanal diagnostik EKG &ouml;l&ccedil;&uuml;m&uuml; yapan taşınabilir bir cihazdır. Kablosuz bağlantısı, kompakt tasarımı ve PACS DICOM entegrasyonu sayesinde hızlı, g&uuml;venilir ve esnek bir EKG değerlendirme &ccedil;&ouml;z&uuml;m&uuml; sunar.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p>microCOR, taşınabilir ve kablosuz bağlantı &ouml;zelliğine sahip, diagnostik kalitede 12-kanal EKG cihazıdır. Windows işletim sistemli bilgisayarlar ve tabletlerle uyumludur, bu sayede hastane, muayenehane, ambulans ve ev gibi farklı ortamlarda kullanım imkanı sunar. Gelişmiş yazılımı sayesinde EKG verilerini detaylı analiz edebilir, farklı formatlarda kaydedebilir ve PACS sistemleriyle entegre &ccedil;alışabilir. Hafif ve kompakt tasarımıyla her yere kolayca taşınabilir</p>', 'microcor-pc-tabanlı', 1, 1, 1, 'Semcares 3 Kanallı Ekg Cihazı EM-301', 'Semcares 3 Kanallı Ekg Cihazı EM-301', 'Semcares 3 Kanallı Ekg Cihazı EM-301', 29950.0000, NULL, NULL, NULL, 5.0000, '2025-05-07 15:59:50', 'tr', 'default', 1, 17, '2025-05-11 05:37:44', NULL, 1),
(18, 'Chz-05', 'simple', '', 'Plusmed CompactNeb Kompresörlü Nebulizatör Cihazı Sln', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Plusmed CompactNeb, kompres&ouml;rl&uuml; bir nebulizat&ouml;r cihazıdır ve solunum yolları yoluyla ila&ccedil;ların verilmesi amacıyla kullanılır. Astım, KOAH, bronşit ve diğer solunum yolu problemleri gibi durumlarda yaygın olarak kullanılır.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mtwrap wrapper\">\r\n<div class=\"relative mb-6 flex w-full flex-col items-center justify-between gap-4 text-center md:flex-row\">&nbsp;</div>\r\n</div>', '<p>Bu cihaz, ila&ccedil;ları sıvı formdan ince bir aerosol haline d&ouml;n&uuml;şt&uuml;rmek i&ccedil;in bir kompres&ouml;r kullanır ve bu aerosol, hasta tarafından nefes alınarak solunum yollarına ulaştırılır. CompactNeb\'in kompakt tasarımı, taşınması ve kullanılması kolaydır. Ayarlanabilir hava akışı ve ila&ccedil; dozu, tedaviyi hastanın ihtiya&ccedil;larına g&ouml;re &ouml;zelleştirmek i&ccedil;in kullanılabilir. Bu cihazlar, evde veya hastane ortamında kullanılan bir tedavi aracıdır ve solunum yolu problemlerinin semptomlarını hafifletmek veya kontrol altına almak i&ccedil;in etkili bir y&ouml;ntem sunar.</p>', 'plusmed-compactneb-kompresorlu-nebulizator-cihazı-sln', 1, 1, 1, 'Plusmed CompactNeb Kompresörlü Nebulizatör', 'Plusmed CompactNeb Kompresörlü Nebulizatör Cihazı', 'Plusmed CompactNeb Kompresörlü Nebulizatör Cihazı', 799.0000, NULL, NULL, NULL, 5.0000, '2025-05-07 16:05:56', 'tr', 'default', 1, 18, '2025-05-11 05:42:00', NULL, 1),
(19, 'AKS-1', 'simple', '', 'Oksijen Kanülü 2mt Sln', '<p>Hastanın burun deliklerineyerleştirilerek oksijen aktarımını sağlamak i&ccedil;in kullanılır.</p>', '<p>Hastanın burun deliklerineyerleştirilerek oksijen aktarımını sağlamak i&ccedil;in kullanılır.Hasta i&ccedil;in maskekullanılmadığı durumlarda bu &uuml;r&uuml;n kullanılır ve iki ucu a&ccedil;ık bir t&uuml;pt&uuml;r.Medikal grade polipropilen malzemeden &uuml;retilmiştir.Burnu tahriş etmeyen yapıdadır.Kırılmaya b&uuml;k&uuml;lmeye dayanıklıdır.İ&ccedil;i kanallıdır.</p>', 'oksijen-kanulu-2mt-sln', 0, 0, 1, 'Oksijen Kanülü 2mt', 'Oksijen Kanülü 2mt', 'Oksijen Kanülü 2mt', 99.9900, NULL, NULL, NULL, 0.1000, '2025-05-07 16:10:24', 'tr', 'default', 1, 19, '2025-05-07 16:37:01', NULL, 1),
(20, 'AKS-02', 'simple', '', 'Airway Solunum Hava Yolu Sln', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Solunum yolu tıkanıklığını gidermeye yardımcı olur. Solunum yolunun a&ccedil;ık tutulmasını sağlamak ve solunumun devamını sağlamak i&ccedil;in kullanılır. Genellikle acil tıbbi durumlarda veya anestezi altındaki hastalarda kullanılırlar. &Ccedil;ocuklar i&ccedil;in kullanıma uygundur.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mtwrap wrapper\">\r\n<div class=\"relative mb-6 flex w-full flex-col items-center justify-between gap-4 text-center md:flex-row\">&nbsp;</div>\r\n</div>', '<h3 class=\"\"><strong>Airway Renkleri Nelerdir?</strong></h3>\r\n<p class=\"MsoListParagraphCxSpFirst\"><strong>Mavi No:0 Airway:</strong>&nbsp;Genellikle şeffaf veya k&uuml;&ccedil;&uuml;k boyutlu hava yolları i&ccedil;in kullanılır. Bu renk, genellikle &ccedil;ocuklar veya bebekler i&ccedil;in olan k&uuml;&ccedil;&uuml;k t&uuml;pler i&ccedil;in tercih edilir.</p>\r\n<p class=\"MsoListParagraphCxSpFirst\"><strong>Siyah No:1 Airway:</strong> Genellikle şeffaf veya k&uuml;&ccedil;&uuml;k boyutlu hava yolları i&ccedil;in kullanılır. Bu renk, genellikle &ccedil;ocuklar veya bebekler i&ccedil;in olan k&uuml;&ccedil;&uuml;k t&uuml;pler i&ccedil;in tercih edilir.</p>\r\n<p class=\"MsoListParagraphCxSpFirst\"><strong>Beyaz No:2 Airway:</strong>&nbsp;Orta ila b&uuml;y&uuml;k boyutlu hava yolları i&ccedil;in kullanılır. Bu renk, farklı hava yolu boyutları arasında bir k&ouml;pr&uuml; olarak işlev g&ouml;rebilir.</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong>Yeşil No:3 Airway:</strong>&nbsp;Orta ila b&uuml;y&uuml;k boyutlu hava yolları i&ccedil;in kullanılır. Bu renk, farklı hava yolu boyutları arasında bir k&ouml;pr&uuml; olarak işlev g&ouml;rebilir.</p>\r\n<p class=\"MsoListParagraphCxSpFirst\"><strong>Sarı No:4 Airway:</strong>&nbsp;Buboyut, genellikle yetişkin hastalarda kullanılır.</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\"><strong>Kırmızı No:5 Airway:</strong>&nbsp;Buboyut, genellikle yetişkin hastalarda kullanılır.</p>\r\n<p class=\"MsoListParagraphCxSpLast\"><strong>Mor veya Mor-Tonlarındaki Renkler:</strong> Genellikle&ouml;zel boyut ve t&uuml;rdeki hava yolları i&ccedil;in kullanılır. Bu renkler daha nadir ve&ouml;zel durumlar i&ccedil;in tasarlanmış hava yollarını temsil edebilir.</p>', 'airway-solunum-hava-yolu-sln', 1, 1, 1, 'Airway Solunum Hava Yolu', 'Airway Solunum Hava Yolu', 'Airway Solunum Hava Yolu', 49.9900, NULL, NULL, NULL, 0.1000, '2025-05-07 16:15:18', 'tr', 'default', 1, 20, '2025-05-11 05:44:38', NULL, 1),
(21, 'temporary-sku-dc36f0', 'simple', '', 'Ambu Cihazı Seti Çocuk Pvc Sln', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Acil tıbbi m&uuml;dahalelerde solunum desteği sağlamak i&ccedil;in tasarlanmıştır. Hastanın solunum yollarını a&ccedil;ık tutmak ve solunum yapmasına yardımcı olmak i&ccedil;in kullanılır. Pediatri kullanımına uygundur.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mtwrap wrapper\">\r\n<div class=\"relative mb-6 flex w-full flex-col items-center justify-between gap-4 text-center md:flex-row\">&nbsp;</div>\r\n</div>', '<div>Sadece &ccedil;ocuk hastalarda kullanım i&ccedil;in tasarlanmış olan ambu seti ana torbası elle hakimiyet sağlanabilecek bir yumuşaklığa sahiptir.</div>\r\n<div>Verilen hava basıncı cihaz tarafından limitlenebildiği i&ccedil;in hastanın g&uuml;venliği kullanım esnasında korunabilmektedir</div>\r\n<div>ek y&ouml;nl&uuml; basın&ccedil; tahliye valfi mevcuttur.&nbsp;Olası akciğer zedelenmelerini &ouml;nler.Maske bağlantı konekt&ouml;r&uuml;, pratik bir kullanım sunacak yapıda dizayn edilmiştir.Ambu cihazı maskesi şeffaftır, hasta sekresyonları izlenebilir. Y&uuml;ze tam olarak oturabilmesi i&ccedil;in ergonomik bir tasarıma sahiptir.&Uuml;r&uuml;n CE normlarına uygun olarak &uuml;retilmiştir</div>', 'ambu-cihazı-seti-cocuk-pvc-sln', 0, 1, 1, 'Ambu Cihazı Seti Çocuk Pvc', 'Airway Solunum Hava Yolu', 'Airway Solunum Hava Yolu (Çocuk)', 399.0000, 349.9900, NULL, NULL, 0.1000, '2025-05-07 16:19:39', 'tr', 'default', 1, 21, '2025-05-11 05:43:04', NULL, 1),
(22, 'AKS-04', 'simple', '', 'Oksijen Maskesi Sln', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">&nbsp;burun ve ağız &uuml;zerine yerleştirilen bu oksijen maskesi, hastaya doğrudan oksijen verir ve bir oksijen kaynağına bağlanarak &ccedil;alışır.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<div>Oksijen maskesi, oksijen tedavilerinde, hastanelerde, aile sağlığı merkezlerinde, acil ilk yardımlarda, ambulanslarda v.b gibi yerlerde kullanılmaktadır.</div>\r\n<div>&Uuml;r&uuml;n burun ve y&uuml;z yapısına anotomik olarak &uuml;retilmiştir.Kolayca temizlenebilmektedir.Başı &ccedil;evreleyen esnek lastiği ile birlikte ayarlanabilir olarak &uuml;retilmiştir.Maskenin her iki yanında O2 ve CO2 &ccedil;ıkaracak şekilde &uuml;retilmiştir.Maske hortumu ile birlikte &uuml;retilmiştir.Hortum oksijen cihazlarına uyumlu olarak &uuml;retilmiştir.Tekli paketler halinde kullanıma sunulmaktadır.Erişkin ve &ccedil;ocuk olmak &uuml;zere &ccedil;eşitleri mevcuttur.</div>', 'oksijen-maskesi-sln', 0, 1, 1, 'Oksijen Maskesi', 'Oksijen Maskesi', 'Oksijen Maskesi', 199.0000, NULL, NULL, NULL, 0.1000, '2025-05-07 16:22:54', 'tr', 'default', 1, 22, '2025-05-11 05:43:15', NULL, 1),
(23, 'AKS-05', 'simple', '', 'Nebulizatör Maskesi Sln', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">İla&ccedil; hazneli Nebulizat&ouml;r Maskesi</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<div>Maske nebulizat&ouml;r cihazı ile kullanılır. Yetişkin ve &ccedil;ocuk olmak &uuml;zere iki varyantı bulunmaktadır. İla&ccedil; maske haznesine boşaltılır, hortum cihaza takılarak kullanıma hazır hale gelir.&nbsp;</div>\r\n<div>PVC malzemeden &uuml;retilmiştir.</div>\r\n<div>Standart bağlantı konnekt&ouml;r&uuml; ve kırılmaya dayanıklı hortum mevcuttur.</div>\r\n<div>8 ML ila&ccedil; haznesi bulunur</div>', 'nebulizator-maskesi-sln', 0, 1, 1, 'Nebulizatör Maskesi', 'Nebulizatör Maskesi', 'İlaç hazneli Nebulizatör Maskesi', 129.9900, 99.9900, NULL, NULL, 0.1000, '2025-05-07 16:28:25', 'tr', 'default', 1, 23, '2025-05-11 05:43:36', NULL, 1),
(24, 'CHZ-BK1', 'simple', '', 'Plusmed Respiad Mesh Nebulizatör Cihazı Sln', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Plusmed Respiad Mesh nebulizat&ouml;r cihazı astım, KOAH, alerjik semptomlar, burun akıntısı &ouml;ks&uuml;r&uuml;k gibi şikayetleri tedavi etmek amacıyla &uuml;retilmiştir.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p>Nebulizat&ouml;rler solunum yolu hastalıklarında ila&ccedil; solunumunda kullanılan cihazlardır.</p>\r\n<p>&Uuml;st, orta ve alt solunum yollarındaki solunum hastalıklarının tedavisine y&ouml;nelik &ccedil;oğu ila&ccedil; sıvı formda bulunur ve bu nedenle nebulizat&ouml;r ile kullanılabilir.&nbsp;Plusmed Respiad Mesh nebulizat&ouml;r cihazı astım, KOAH, alerjik semptomlar, burun akıntısı &ouml;ks&uuml;r&uuml;k gibi şikayetleri tedavi etmek amacıyla &uuml;retilmiştir.<br>Sıvıyı yaklaşık 5 mikron b&uuml;y&uuml;kl&uuml;ğ&uuml;nde partik&uuml;llere ayırabilen cihaz &ccedil;ocuk hastaların solunumunda kullanım i&ccedil;in olduk&ccedil;a uygundur.<br>K&uuml;&ccedil;&uuml;k boyutları ve hafifliğiyle kolay taşınabilir olması sayesinde ve aynı zamanda sessiz olmasından dolayı seyahat ederken kullanım i&ccedil;in uygundur.&nbsp;</p>\r\n<p>&nbsp;</p>', 'plusmed-respiad-mesh-nebulizator-cihazı-sln', 1, 1, 1, 'Plusmed CompactNeb Kompresörlü Nebulizatör', 'Plusmed CompactNeb Kompresörlü Nebulizatör Cihazı', 'Plusmed CompactNeb Kompresörlü Nebulizatör Cihazı', 999.0000, 899.0000, NULL, NULL, 5.0000, '2025-05-07 16:35:22', 'tr', 'default', 1, 24, '2025-05-11 05:41:17', NULL, 1),
(25, 'CHZ-Sln', 'simple', '', 'Respirox Kompresörlü Nebulizatör Cihazı AXD-303 Sln', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Respiad Mesh nebulizat&ouml;r cihazı astım, KOAH, alerjik semptomlar, burun akıntısı &ouml;ks&uuml;r&uuml;k gibi şikayetleri tedavi etmek amacıyla &uuml;retilmiştir.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p>Nebulizat&ouml;rler solunum yolu hastalıklarında ila&ccedil; solunumunda kullanılan cihazlardır.</p>\r\n<p>&Uuml;st, orta ve alt solunum yollarındaki solunum hastalıklarının tedavisine y&ouml;nelik &ccedil;oğu ila&ccedil; sıvı formda bulunur ve bu nedenle nebulizat&ouml;r ile kullanılabilir.&nbsp;Plusmed Respiad Mesh nebulizat&ouml;r cihazı astım, KOAH, alerjik semptomlar, burun akıntısı &ouml;ks&uuml;r&uuml;k gibi şikayetleri tedavi etmek amacıyla &uuml;retilmiştir.<br>Sıvıyı yaklaşık 5 mikron b&uuml;y&uuml;kl&uuml;ğ&uuml;nde partik&uuml;llere ayırabilen cihaz &ccedil;ocuk hastaların solunumunda kullanım i&ccedil;in olduk&ccedil;a uygundur.<br>K&uuml;&ccedil;&uuml;k boyutları ve hafifliğiyle kolay taşınabilir olması sayesinde ve aynı zamanda sessiz olmasından dolayı seyahat ederken kullanım i&ccedil;in uygundur.&nbsp;</p>\r\n<p>&nbsp;</p>', 'respirox-kompresorlu-nebulizator-cihazı-axd-303-sln', 1, 1, 1, 'Respirox Kompresörlü Nebulizatör Cihazı AXD-303 Sln', 'Respirox Kompresörlü Nebulizatör Cihazı AXD-303 Sln', 'Respirox Kompresörlü Nebulizatör Cihazı AXD-303 Sln', 1199.0000, NULL, NULL, NULL, 2.0000, '2025-05-07 16:39:48', 'tr', 'default', 1, 25, '2025-05-11 05:40:46', NULL, 1),
(26, 'CHZ-Sln-1', 'simple', '', 'Omron C102 Total Kompresörlü Nebulizatör Cihazı Sln', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Omron C102 Total Kompres&ouml;rl&uuml; Nebulizat&ouml;r Cihazı, solunum yolu hastalıklarının semptomlarını hafifletmek veya tedavi etmek amacıyla kullanılan bir tıbbi cihazdır. Solunum yolu hastalıklarında kullanılan ila&ccedil;ların, sıvı formda solunum yollarına p&uuml;sk&uuml;rt&uuml;lerek inhalasyon yoluyla alınmasını sağlar.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p>Mevsimlerin değişmesiyle &ccedil;ocuklar, rahat&ccedil;a nefes almalarını g&uuml;&ccedil;leştiren &ccedil;eşitli solunum yolu hastalıklarına yakalanabilir.</p>\r\n<p>İlkbaharda ve yazın polenler alerjik riniti tetikleyerek burun akıntısına, aksırmaya veya g&ouml;zlerde ve burunda kaşıntıya neden olabilir. Sonbaharda ve kışın vir&uuml;sler yayılmaya başlar ve burun tıkanıklığı veya akıntısı, &ouml;ks&uuml;r&uuml;k ya da boğaz ağrısı gibi semptomlarla solunum yollarını etkiler.</p>', 'omron-c102-total-kompresorlu-nebulizator-cihazı-sln', 1, 1, 1, 'Omron C102 Total Kompresörlü Nebulizatör Cihazı Sln', 'Omron C102 Total Kompresörlü Nebulizatör Cihazı Sln', 'Omron C102 Total Kompresörlü Nebulizatör Cihazı Sln', 1899.0000, NULL, NULL, NULL, 2.0000, '2025-05-07 16:41:58', 'tr', 'default', 1, 26, '2025-05-11 05:40:23', NULL, 1),
(27, 'CHZ-Sln-2', 'simple', '', 'Omron C101 Essential Kompresörlü Nebulizatör Cihazı Sln', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Omron C101 Essential Kompres&ouml;rl&uuml; Nebulizat&ouml;r Cihazı (NE-C101-E), solunum yolu sorunları olan kişilere ila&ccedil;larını solunum yoluyla alabilmeleri i&ccedil;in kullanılan bir tıbbi cihazdır. Bu nebulizat&ouml;r, solunum yolu hastalıklarının semptomlarını hafifletmek veya tedavi etmek i&ccedil;in kullanılan ila&ccedil;ların, sıvı haldeyken solunum yollarına p&uuml;sk&uuml;rt&uuml;lerek nefes yoluyla alınmasını sağlar.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p>&Uuml;st, orta ve alt solunumyollarındaki solunum hastalıklarının tedavisine y&ouml;nelik &ccedil;oğu ila&ccedil; sıvı formdabulunur ve bu nedenle neb&uuml;lizat&ouml;r ile kullanılabilir. Neb&uuml;liz&ouml;rler ayrıcaneb&uuml;lizat&ouml;r haznesinde farklı ila&ccedil;ların karıştırılmasına da olanak tanıyarak buila&ccedil;ların aynı anda kolaylıkla solunmasını sağlar. Mekanik anlamda, Omron C101Essential Kompres&ouml;rl&uuml; Neb&uuml;lizat&ouml;r Cihazı, ilacın etkin madde damlacıklarınıhavayla karıştırır. Neb&uuml;lizat&ouml;r i&ccedil;inde oluşan ince taneli buhar, ağızlık, maskeveya burunlukla solunabilir. Başlıca avantajı, neb&uuml;lizat&ouml;r&uuml;n &ccedil;alışması vesoluma tekniği arasında belirli bir koordinasyon gerektirmemesidir. Bu nedenleOmron neb&uuml;lizat&ouml;rler &ouml;zellikle &ccedil;ocuklar ve yaşlılar i&ccedil;in piyasada en yaygıntavsiye edilen marka ve modellerdir.</p>', 'omron-c101-essential-kompresorlu-nebulizator-cihazı-sln', 1, 1, 1, 'Omron C101 Essential Kompresörlü Nebulizatör Cihazı Sln', 'Omron C101 Essential Kompresörlü Nebulizatör Cihazı Sln', 'Omron C101 Essential Kompresörlü Nebulizatör Cihazı Sln', 1499.0000, NULL, NULL, NULL, 2.0000, '2025-05-07 16:44:00', 'tr', 'default', 1, 27, '2025-05-11 05:40:33', NULL, 1),
(28, 'Chz-Def', 'simple', '', 'Def-CardiAngel OED Defibrilatör Cihazı', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">OED (Otomatik Harici Defibrilat&ouml;r) cihazı, bir kişinin ani kalp durması veya ciddi kalp ritmi bozukluğu (&ouml;rneğin, ventrik&uuml;ler fibrilasyon) durumunda kullanılan bir tıbbi cihazdır. Temel olarak, AED\'nin işlevi, kalp ritmini d&uuml;zelten elektriksel enerjiyi sağlayarak kalbi normal ritmine geri d&ouml;nd&uuml;rmektir.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p class=\"MsoNormal\"><strong>Kolay Kullanım;</strong></p>\r\n<p class=\"MsoNormal\">3 aşamalı aray&uuml;z , basit ve anlaşılır sesli y&ouml;nlendirme</p>\r\n<p class=\"MsoNormal\"><strong>Her Zaman Kullanıma Hazır;</strong></p>\r\n<p class=\"MsoNormal\">Kapağını a&ccedil;tığınızda CardiAngel otomatik olarak a&ccedil;ılır vey&ouml;nlendirmeye başlar , takılı elektrodlar sayesinde direk hastanın g&ouml;ğs&uuml;neelektrodları uygulayabilirsiniz, sistematik &ouml;n şok hazırlık&nbsp;sayesinde şokkısa s&uuml;rede hazırlanır.</p>\r\n<p class=\"MsoNormal\"><strong>Ger&ccedil;ek Zamanlı CPR ( Kalp Masajı )Geri Bildirim;<br></strong></p>\r\n<p class=\"MsoNormal\">Erken Defibrilasyon ile birlikte&nbsp; organlara doğru veyeterli oksijen iletimini a&ccedil;ık tutmak ve kan dolaşımını devam ettirmek i&ccedil;inkalp masajı &ccedil;ok &ouml;nemlidir. CardiAngel kalp masajını doğru ve efektif yapmanızi&ccedil;in;</p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\">Ellerin doğru konumlanmasına yardımcı olur,</li>\r\n<li class=\"MsoNormal\">Metronom sesi ile ritmi yakalamanıza yardımcı olur,</li>\r\n<li class=\"MsoNormal\">G&ouml;ğ&uuml;s basısı ile ilgili ekstra bir sens&ouml;re ihtiya&ccedil; olmadan (FreeCPR&reg;) ger&ccedil;ek zamanlı geri bildirim yaparak yardımcı olur.</li>\r\n</ul>', 'def-cardiangel-oed-defibrilator-cihazı', 1, 1, 1, 'CardiAngel OED Defibrilatör Cihazı', 'CardiAngel OED Defibrilatör Cihazı', 'CardiAngel OED Defibrilatör Cihazı', 79000.0000, NULL, NULL, NULL, 5.0000, '2025-05-07 17:15:19', 'tr', 'default', 1, 28, '2025-05-11 05:36:49', NULL, 1),
(30, 'CHZ-Def-2', 'simple', '', 'Def-Aselsan Heartline Ekranlı Tam Otomatik Defibrilatör Cihazı (OED)', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Aselsan Heartline OED, kalbin kan pompalama fonksiyonunuyerine getiremediği, b&uuml;y&uuml;k arterlerden nabız alınamadığı ve buna bağlı olarakhastada solunum ve bilin&ccedil; kaybı ile gelişen ani kalp durması vakalarına yola&ccedil;an kalp atışı d&uuml;zensizliklerini ve karıncık fibrilasyonu gibi rahatsızlıklarıtedavi etmek &uuml;zere tasarlanmış otomatik eksternal defibrilat&ouml;r (OED) cihazıdır.</p>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p class=\"MsoNormal\"><strong>Kolay Kullanım;</strong></p>\r\n<p class=\"MsoNormal\">3 aşamalı aray&uuml;z , basit ve anlaşılır sesli y&ouml;nlendirme</p>\r\n<p class=\"MsoNormal\"><strong>Her Zaman Kullanıma Hazır;</strong></p>\r\n<p class=\"MsoNormal\">Kapağını a&ccedil;tığınızda CardiAngel otomatik olarak a&ccedil;ılır vey&ouml;nlendirmeye başlar , takılı elektrodlar sayesinde direk hastanın g&ouml;ğs&uuml;neelektrodları uygulayabilirsiniz, sistematik &ouml;n şok hazırlık&nbsp;sayesinde şokkısa s&uuml;rede hazırlanır.</p>\r\n<p class=\"MsoNormal\"><strong>Ger&ccedil;ek Zamanlı CPR ( Kalp Masajı )Geri Bildirim;<br></strong></p>\r\n<p class=\"MsoNormal\">Erken Defibrilasyon ile birlikte&nbsp; organlara doğru veyeterli oksijen iletimini a&ccedil;ık tutmak ve kan dolaşımını devam ettirmek i&ccedil;inkalp masajı &ccedil;ok &ouml;nemlidir. CardiAngel kalp masajını doğru ve efektif yapmanızi&ccedil;in;</p>\r\n<ul type=\"disc\">\r\n<li class=\"MsoNormal\">Ellerin doğru konumlanmasına yardımcı olur,</li>\r\n<li class=\"MsoNormal\">Metronom sesi ile ritmi yakalamanıza yardımcı olur,</li>\r\n<li class=\"MsoNormal\">G&ouml;ğ&uuml;s basısı ile ilgili ekstra bir sens&ouml;re ihtiya&ccedil; olmadan (FreeCPR&reg;) ger&ccedil;ek zamanlı geri bildirim yaparak yardımcı olur.</li>\r\n</ul>', 'def-aselsan-heartline-ekranlı-tam-otomatik-defibrilator-cihazı-oed', 1, 1, 1, 'aselsan-heartline-defibrilator', 'CardiAngel OED Defibrilatör Cihazı', 'Aselsan Heartline Ekranlı Tam Otomatik Defibrilatör Cihazı (OED)', 56999.0000, NULL, NULL, NULL, 5.0000, '2025-05-07 17:17:38', 'tr', 'default', 1, 30, '2025-05-11 05:37:02', NULL, 1);
INSERT INTO `product_flat` (`id`, `sku`, `type`, `product_number`, `name`, `short_description`, `description`, `url_key`, `new`, `featured`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `price`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `created_at`, `locale`, `channel`, `attribute_family_id`, `product_id`, `updated_at`, `parent_id`, `visible_individually`) VALUES
(31, 'CHZ-Def-3', 'simple', '', 'Def-Aselsan Alarmlı Metal OED Cihazı Kabini', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Heartline Otomatik Eksternal Defibrilat&ouml;r i&ccedil;in AlarmlıKabinet, metalden &uuml;retilmiş, duvara monte edilebilen, 80 desibel alarm seviyesive manyetik kapı mandalıyla kolay erişim sağlayan bir muhafaza &ccedil;&ouml;z&uuml;m&uuml;d&uuml;r.</p>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Yaşam zinciri adımları: Acil durumlarda yapılması gereken adımları a&ccedil;ıklar.</p>\r\n<p class=\"MsoNormal\">Aranacak acil numara (ASELSAN İ&ccedil;i Revir No): Acil durumda aranacak telefon numarasını belirtir.</p>\r\n<p class=\"MsoNormal\">Kalp Masajı yap: Kalp masajı yapılması gerektiğini hatırlatır.</p>\r\n<p class=\"MsoNormal\">OED uygula: OED cihazının uygulanması gerektiğini belirtir.</p>\r\n<hr></div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">\r\n<h3 class=\"text-lg font-semibold  text-button-01 \">Duvara Monte Edilebilir</h3>\r\n</div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Kabin, duvara monte edilerek sabitlenebilir &ouml;zelliktedir. Ayrıca, i&ccedil;erideki OED cihazına erişim sağlamak i&ccedil;in a&ccedil;ılabilir bir kapağa sahip olmalıdır.</p>\r\n<hr></div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">\r\n<h3 class=\"text-lg font-semibold  text-button-01 \">&Ccedil;evresel Fakt&ouml;rlere Dayanıklılık</h3>\r\n</div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Kabin, i&ccedil;erideki Otomatik Eksternal Defibrilat&ouml;r (OED) cihazının korunması i&ccedil;in dış etkenlere karşı dayanıklıdır. Sıvı ve toz ge&ccedil;irmez &ouml;zellikteki yapı, cihazın g&uuml;venliğini ve performansını sağlar.&nbsp;</p>\r\n<hr></div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">\r\n<h3 class=\"text-lg font-semibold  text-button-01 \">Manyetik Kapı Mandalı</h3>\r\n</div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Kabin kapısı, manyetik kapı mandalı ile donatılmıştır. Bu &ouml;zellik, kapının g&uuml;venli bir şekilde kapanmasını ve gerektiğinde hızlıca a&ccedil;ılmasını sağlar, b&ouml;ylece acil durumlarda hızlı erişim m&uuml;mk&uuml;n olur.</p>\r\n<hr>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'def-aselsan-alarmlı-metal-oed-cihazı-kabini', 1, 1, 1, 'Def-Aselsan Alarmlı Metal OED Cihazı Kabini', 'Def-Aselsan Alarmlı Metal OED Cihazı Kabini', 'Aselsan Heartline Ekranlı Tam Otomatik Defibrilatör Cihazı (OED)', 7999.0000, NULL, NULL, NULL, 5.0000, '2025-05-07 17:19:53', 'tr', 'default', 1, 31, '2025-05-11 05:39:26', NULL, 1),
(32, 'temporary-sku-555195', 'simple', '', 'def-Aselsan OED Cihazı Defibrilatör Pedi', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Defibrilat&ouml;r pedleri, hastanıntorasik empedansını ve EKG sinyalini değerlendirmek &uuml;zere cihaza aktarır.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<p class=\"MsoNormal\">Cihazın değerlendirilmesisonucunda şoklama tavsiye edildiğinde ise şok enerjisini hastaya aktarır.</p>\r\n<p class=\"MsoNormal\">Pedlerin v&uuml;cuda temas edeny&uuml;zeyleri kendinden yapışkanlı ve elektriksel iletkenliği artırmak i&ccedil;in iletkenjel ile kaplıdır.</p>\r\n<p class=\"MsoNormal\">Pedler bir kablo ve konnekt&ouml;ryardımıyla cihaza bağlanır.</p>\r\n<p class=\"MsoNormal\">Aselsan Heartline OED cihazı pedbağlantısı i&ccedil;in &ouml;zel olarak se&ccedil;ilmiş konnekt&ouml;r kullanılmaktadır.</p>\r\n<p class=\"MsoNormal\">Cihazla birlikte yetişkin ve&ccedil;ocuk pedi kullanılabilmektedir.</p>\r\n<p class=\"MsoNormal\">Yetişkin pedi 25KG &uuml;zeri veya 8yaş ve &uuml;zerindeki hastaların kullanımına uygundur.</p>\r\n<p class=\"MsoNormal\">&Ccedil;ocuk pedi 1-8 yaş aralığındaveya 25kg altı hastaların kullanımına uygundur.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'def-aselsan-oed-cihazı-defibrilator-pedi', 1, 1, 1, 'Aselsan OED Cihazı Defibrilatör Pedi', 'Aselsan OED Cihazı Defibrilatör Pedi', 'Aselsan OED Cihazı Defibrilatör Pedi', 3600.0000, NULL, NULL, NULL, 1.0000, '2025-05-07 17:22:08', 'tr', 'default', 1, 32, '2025-05-11 05:39:37', NULL, 1),
(33, 'CHZ-Def-4', 'simple', '', 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"pt-4\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Daha Akıllı ve Daha Hızlı BeneHeart C Serisi ilk kez m&uuml;dahalede bulunan kurtarma g&ouml;revlisinin neye ihtiya&ccedil; duyduğunu bilir ve akıllı ko&ccedil;luk ve sesli uyarılarla adım adım rehberlik yapmak i&ccedil;in akıllı ResQNaviTM teknolojisini sunar.<hr></div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div>\r\n<div class=\"pt-4\">\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\"><strong>Daha Akıllı ve Daha Hızlı</strong></span></div>\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\">BeneHeart C Serisi ilk kez m&uuml;dahalede bulunan kurtarma g&ouml;revlisinin neye ihtiya&ccedil; duyduğunu bilir ve akıllı ko&ccedil;luk ve sesli uyarılarla adım adım rehberlik yapmak i&ccedil;in akıllı ResQNaviTM teknolojisini sunar. Kurtarma g&ouml;revlisinin yeterliliği, her adımda harcanan zamana g&ouml;re, hayatlarınızı g&uuml;venle kurtarabilmeniz i&ccedil;in gerekli rehberlik ve cesaretlendirmeyle belirlenebilir.</span><br><br></div>\r\n<div><hr></div>\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\"><strong>Hızlı ve G&uuml;&ccedil;l&uuml;</strong></span></div>\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\">Defibrilasyon başarı oranı saniyeler i&ccedil;inde d&uuml;şer. İlk şokun 8 saniyeden daha kısa s&uuml;rede uygulanmasını sağlayan yeni QShockTM teknolojisi sayesinde, BeneHeart C Serisi başarılı defibrilasyon şansını artırabilir ve kurtarma g&ouml;revlilerinin hayat kurtarmak i&ccedil;in her saniyeden tasarruf etmesine yardımcı olur. QShockTM teknolojisi, eşzamanlı olarak tamamlanmış &ouml;n şarj işlemiyle şarj i&ccedil;in ekstra zaman ihtiyacını ortandan kaldırır; b&ouml;ylece, EKG analiz zamanını 5 saniyeye kadar indirir.</span><br><br></div>\r\n<div><hr></div>\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\"><strong>G&uuml;venilir ve Dayanıklı</strong></span></div>\r\n<div><span style=\"font-family: verdana, geneva, sans-serif;\">Titizlikle ger&ccedil;ekleştirilen testler sonucunda 1,5 metrelik d&uuml;şme dayanıklılığı ve IP55 toz ve su ge&ccedil;irmezlik seviyesi ile sınıflandırılan BeneHeart C Serisi, farklı koşullarda &ccedil;eşitli zorlukların &uuml;stesinden gelme konusunda g&uuml;ven veriyor.</span><hr></div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'def-mindray-beneheart-c1a-otomatik-eksternal-defibrilator', 1, 1, 1, 'Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', 'Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', 'Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', 87000.0000, 85000.0000, NULL, NULL, 5.0000, '2025-05-07 17:25:06', 'tr', 'default', 1, 33, '2025-05-11 05:36:35', NULL, 1),
(34, 'AML-01', 'simple', '', 'Aml-Şişelikli Pansuman Arabası', '<p class=\"MsoNormal\">Antibakteriyel elektrostatik tozboya&nbsp;ABS antistatik ikisi frenli d&ouml;rtadet teker</p>', '<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Paslanmaz &ccedil;elik &uuml;st tezgah ,&nbsp;Trommel - &ccedil;&ouml;p kovası&nbsp;&Uuml;&ccedil; adet 1000 cc şişe koyma yeri&nbsp;İki adet &ccedil;ekmece ve dolap&nbsp;İtme kolu</p>', 'aml-siselikli-pansuman-arabası', 1, 1, 1, 'Şişelikli Pansuman Arabası', 'Şişelikli Pansuman Arabası', 'Şişelikli Pansuman Arabası', 13870.0000, 12500.0000, NULL, NULL, 9.0000, '2025-05-07 17:38:45', 'tr', 'default', 1, 34, '2025-05-11 05:38:37', NULL, 1),
(35, 'temporary-sku-066fe8', 'simple', '', 'AML-Paslanmaz Gövde Nikelaj Ayaklı Serum Askısı', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Paslanmaz g&ouml;vdeli nikelaj ayaklı serum askısı, sağlık kuruluşları ve kliniklerde kullanılan &ouml;nemli bir tıbbi ekipmandır. Paslanmaz &ccedil;elik g&ouml;vdesi ve nikelaj kaplamalı ayakları ile dayanıklı ve uzun &ouml;m&uuml;rl&uuml; bir yapı sunar.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<div>304 kalite paslanmaz &ccedil;elik g&ouml;vde</div>\r\n<div>\r\n<p>ABS antistatik ikisi frenli beş adet teker<br>D&ouml;rt adet askılık<br>İnf&uuml;zyon pompası taşıma uygunluğu<br>Nikelaj beş ayak</p>\r\n</div>', 'aml-paslanmaz-govde-nikelaj-ayaklı-serum-askısı', 1, 1, 1, 'Paslanmaz Gövde Nikelaj Ayaklı Serum Askısı', 'Paslanmaz Gövde Nikelaj Ayaklı Serum Askısı', 'Paslanmaz Gövde Nikelaj Ayaklı Serum Askısı', 6999.0000, NULL, NULL, NULL, 10.0000, '2025-05-07 17:41:44', 'tr', 'default', 1, 35, '2025-05-07 18:43:08', NULL, 1),
(36, 'temporary-sku-d7e95e', 'simple', '', 'aml-Kerbl Elastratör Pensi', '<p class=\"MsoNormal\">-</p>', '<p class=\"MsoNormal\">-</p>', 'aml-kerbl-elastrator-pensi', 1, 1, 1, 'Kerbl Elastratör Pensi', 'Kerbl Elastratör Pensi', 'Kerbl Elastratör Pensi', 599.0000, NULL, NULL, NULL, 1.0000, '2025-05-07 17:41:46', 'tr', 'default', 1, 36, '2025-05-11 05:42:12', NULL, 1),
(37, 'temporary-sku-bb91ea', 'simple', '', 'Aml-VZN Hegar Buji Seti 14 Parça', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Hegar bujileri, jinekolojide kullanılan tıbbi aletlerden biridir. Genellikle rahim ağzını genişletmek veya cerrahi prosed&uuml;rler i&ccedil;in rahim ağzına erişimi kolaylaştırmak amacıyla kullanılırlar. Bu alet, yumuşak doku ve kan damarlarına zarar vermemesi i&ccedil;in dikkatlice tasarlanmıştır.</div>\r\n</div>\r\n<div>\r\n<div class=\"flex cursor-pointer select-none items-center justify-between gap-3 border-b border-button-02/20 pb-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mtwrap wrapper\">\r\n<div class=\"relative mb-6 flex w-full flex-col items-center justify-between gap-4 text-center md:flex-row\">&nbsp;</div>\r\n</div>', '<p class=\"MsoNormal\">-</p>', 'aml-vzn-hegar-buji-seti-14-parca', 1, 1, 1, 'VZN Hegar Buji Seti 14 Parça', 'VZN Hegar Buji Seti 14 Parça', 'VZN Hegar Buji Seti 14 Parça', 3200.0000, NULL, NULL, NULL, 1.0000, '2025-05-07 17:43:44', 'tr', 'default', 1, 37, '2025-05-11 05:40:01', NULL, 1),
(38, 'temporary-sku-a4d2ec', 'simple', '', 'Aml-VZN Cerrahi Dikiş Seti 11 Parça', '<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">Cerrahi Dikiş Seti VZN-CAT-E11, pratik ve g&uuml;venli bir kullanım i&ccedil;in tasarlanmış, &ouml;zel fermuarlı ve vinleks taşıma &ccedil;antası ile birlikte sunulmaktadır. Her alet i&ccedil;in ayrı yuvalar, taşıma sırasında par&ccedil;aların temasını engellerken, steril koşullarda saklanmasını sağlar. G&uuml;venilir cerrahi m&uuml;dahaleler i&ccedil;in ideal bir se&ccedil;im<hr></div>\r\n<div class=\"text-sm\"><strong>Kutu i&ccedil;eriği</strong><hr></div>\r\n<div class=\"text-sm\">\r\n<p class=\"MsoNormal\">Porteg&uuml;</p>\r\n<p class=\"MsoNormal\">Bist&uuml;ri Sapı</p>\r\n<p class=\"MsoNormal\">Dişli Penset</p>\r\n<p class=\"MsoNormal\">Dişsiz Penset</p>\r\n<p class=\"MsoNormal\">Hemostatik Penset</p>\r\n<p class=\"MsoNormal\">Moskito Eğri Pens</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<p class=\"MsoNormal\">-</p>', 'aml-vzn-cerrahi-dikis-seti-11-parca', 1, 1, 1, 'VZN Hegar Buji Seti 14 Parça', 'VZN Hegar Buji Seti 14 Parça', 'VZN Hegar Buji Seti 14 Parça', 1100.0000, NULL, NULL, NULL, 1.0000, '2025-05-07 17:47:56', 'tr', 'default', 1, 38, '2025-05-11 05:40:55', NULL, 1),
(39, 'temporary-sku-4b7138', 'simple', '', 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', '<p>Toplam 7 par&ccedil;adan oluşan&nbsp; cerrahi dikiş seti i&ccedil;erisinde 1&rsquo;er adet porteg&uuml;, bist&uuml;ri sapı, metzenbaum makası, penset dişsiz, makas, mosquite pens ve hemostatik pens&nbsp; bulunmaktadır.</p>', '<p class=\"MsoNormal\">-</p>\r\n<div class=\"wrapper grid grid-cols-1 gap-12 pt-9 lg:grid-cols-2\">\r\n<div class=\"flex  flex-col text-button-02\">\r\n<div class=\"mt-10 flex flex-col gap-6\">\r\n<div class=\"-mt-2 flex flex-col\">\r\n<div class=\"text-sm\">\r\n<div>Medikal paslanmaz &ccedil;elik malzemeden imal edilen&nbsp; cerrahi dikiş seti dikiş atma işleminin dokuya zarar vermeden kolaylıkla ger&ccedil;ekleştirilebilmesi i&ccedil;in gereksinim duyulan t&uuml;m cerrahi par&ccedil;aları i&ccedil;ermektedir.</div>\r\n<div>Set &ouml;zel fermuarlı vinleks taşıma &ccedil;antası i&ccedil;erisindedir ve &ccedil;anta i&ccedil;erisinde her cerrahi alet i&ccedil;in &ouml;zel yuva bulunmaktadır.</div>\r\n<div>Taşıma esasında par&ccedil;alar yuvalarından &ccedil;ıkmaz ve birbirleriyle temas etmez.</div>\r\n<div>Set i&ccedil;erisindeki cerrahi el aletleri kullanım dışında &ccedil;antasında muhafaza edilebilir.</div>\r\n<div>T&uuml;m par&ccedil;alar sterilizasyon koşullarına uygundur.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'aml-medwelt-cerrahi-dikis-seti-7li', 1, 1, 1, 'Medwelt Cerrahi Dikiş Seti 7\'li', 'Medwelt Cerrahi Dikiş Seti 7\'li', 'Medwelt Cerrahi Dikiş Seti 7\'li', 599.0000, NULL, NULL, NULL, 1.0000, '2025-05-07 17:51:18', 'tr', 'default', 1, 39, '2025-05-11 05:42:35', NULL, 1),
(40, 'Pro-01', 'simple', '', 'Pro-Modüler Femoral Gövde', '<ol>\r\n<li id=\"accordion-general-details\" class=\"open\">\r\n<div class=\"toggle-content\">\r\n<p>Mod&uuml;ler Femoral G&ouml;vde, Kal&ccedil;ada Ağrı Ve Hareket Kısıtlığı Nedeniyle Kişinin Yaşam Kalitesini Bozan Ve G&uuml;nl&uuml;k Aktivitelerini İleri Derecede Kısıtlayan, Tıbbi Ve Fizik Tedavi Y&ouml;ntemleri İle Kontrol Edilemeyen Dejeneratif Kal&ccedil;a Eklem Hastalıkları Ve Osteoartrit (Koksartroz) Tedavilerinde Kullanılır.</p>\r\n</div>\r\n</li>\r\n</ol>', '<p>-</p>', 'pro-moduler-femoral-govde', 1, 1, 1, 'Modüler Femoral Gövde', 'Modüler Femoral Gövde', 'Modüler Femoral Gövde', 9899.0000, NULL, NULL, NULL, 0.5000, '2025-05-07 18:33:52', 'tr', 'default', 1, 40, '2025-05-11 05:39:15', NULL, 1),
(41, 'temporary-sku-1b9589', 'simple', '', 'Pro-KARE FEMORAL STEM 1', '<ol>\r\n<li id=\"accordion-general-details\" class=\"open\">\r\n<div class=\"toggle-content\">\r\n<p>-</p>\r\n</div>\r\n</li>\r\n</ol>', '<p>Kare Femoral Stem, Kal&ccedil;ada Ağrı Ve Hareket Kısıtlığı Nedeniyle Kişinin Yaşam Kalitesini Bozan Ve G&uuml;nl&uuml;k Aktivitelerini İleri Derecede Kısıtlayan, Tıbbi Ve Fizik Tedavi Y&ouml;ntemleri İle Kontrol Edilemeyen Dejeneratif Kal&ccedil;a Eklem Hastalıkları Ve Osteoartrit (Koksartroz) Tedavilerinde Kullanılır</p>', 'pro-kare-femoral-stem-1', 1, 1, 1, 'Pro-KARE FEMORAL STEM 1', 'Pro-KARE FEMORAL STEM 1', 'Pro-KARE FEMORAL STEM 1', 19999.0000, NULL, NULL, NULL, 0.5000, '2025-05-07 18:36:05', 'tr', 'default', 1, 41, '2025-05-11 05:38:14', NULL, 1),
(42, 'temporary-sku-e91fab', 'simple', '', 'Pro-3,5 MM KLAVİKULA KİLİTLİ KOMPRESYON PLAK', '<div class=\"toggle-content\">\r\n<p>Klavikula kırıkları, yanlış kaynama, kaynamama, osteotomi, ps&ouml;doartrozlarının tedavisinde ge&ccedil;ici kemik fiksasyonu amacı ile &ouml;zellikle kemik erimesi olan hastalarda &ouml;nerilir</p>\r\n</div>', '<table width=\"854\">\r\n<tbody>\r\n<tr bgcolor=\"#55e8de\">\r\n<td width=\"180\"><strong>SS</strong></td>\r\n<td width=\"180\"><strong>TI</strong></td>\r\n<td width=\"180\"><strong>HOLES</strong></td>\r\n<td width=\"180\"><strong>SIDE</strong></td>\r\n<td width=\"200\"><strong>LENGTH (mm)</strong></td>\r\n</tr>\r\n<tr>\r\n<td>A1031906</td>\r\n<td>A1031806</td>\r\n<td>6</td>\r\n<td>Left</td>\r\n<td>70</td>\r\n</tr>\r\n<tr>\r\n<td>A1031907</td>\r\n<td>A1031807</td>\r\n<td>7</td>\r\n<td>Left</td>\r\n<td>84</td>\r\n</tr>\r\n<tr>\r\n<td>A1031908</td>\r\n<td>A1031808</td>\r\n<td>8</td>\r\n<td>Left</td>\r\n<td>98</td>\r\n</tr>\r\n<tr>\r\n<td>A1031909</td>\r\n<td>A1031809</td>\r\n<td>9</td>\r\n<td>Left</td>\r\n<td>112</td>\r\n</tr>\r\n<tr>\r\n<td>A1042906</td>\r\n<td>A1042806</td>\r\n<td>6</td>\r\n<td>Right</td>\r\n<td>70</td>\r\n</tr>\r\n<tr>\r\n<td>A1042907</td>\r\n<td>A1042807</td>\r\n<td>7</td>\r\n<td>Right</td>\r\n<td>84</td>\r\n</tr>\r\n<tr>\r\n<td>A1042908</td>\r\n<td>A1042808</td>\r\n<td>8</td>\r\n<td>Right</td>\r\n<td>98</td>\r\n</tr>\r\n<tr>\r\n<td>A1042909</td>\r\n<td>A1042809</td>\r\n<td>9</td>\r\n<td>Right</td>\r\n<td>112</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'pro-35-mm-klavikula-kilitli-kompresyon-plak', 1, 1, 1, 'Pro-3,5 MM KLAVİKULA KİLİTLİ KOMPRESYON PLAK', 'Pro-3,5 MM KLAVİKULA KİLİTLİ KOMPRESYON PLAK', 'Pro-3,5 MM KLAVİKULA KİLİTLİ KOMPRESYON PLAK', 19999.0000, NULL, NULL, NULL, 0.5000, '2025-05-07 18:37:39', 'tr', 'default', 1, 42, '2025-05-11 05:38:25', NULL, 1),
(43, 'temporary-sku-363f18', 'simple', '', 'pro-3,5 MM KLAVİKULA HOOK KİLİTLİ PLAK', '<div class=\"toggle-content\">\r\n<p>Klavikula kırıkları, yanlış kaynama, kaynamama, osteotomi, ps&ouml;doartrozlarının, akromioklavikular &ccedil;ıkıkların tedavisinde ge&ccedil;ici kemik fiksasyonu amacı ile &ouml;zellikle kemik erimesi olan hastalarda kullanılır.</p>\r\n</div>', '<table width=\"795\">\r\n<tbody>\r\n<tr bgcolor=\"#55e8de\">\r\n<td width=\"180\"><strong>SS</strong></td>\r\n<td width=\"180\"><strong>TI</strong></td>\r\n<td width=\"180\"><strong>HOLES</strong></td>\r\n<td width=\"180\"><strong>SIDE</strong></td>\r\n<td width=\"180\"><strong>LENGTH</strong><br><strong>(mm)</strong></td>\r\n</tr>\r\n<tr>\r\n<td>A26009141</td>\r\n<td>A26009041</td>\r\n<td>4</td>\r\n<td>Left</td>\r\n<td>63</td>\r\n</tr>\r\n<tr>\r\n<td>A26009151</td>\r\n<td>A26009051</td>\r\n<td>5</td>\r\n<td>Left</td>\r\n<td>75</td>\r\n</tr>\r\n<tr>\r\n<td>A26009161</td>\r\n<td>A26009061</td>\r\n<td>6</td>\r\n<td>Left</td>\r\n<td>86</td>\r\n</tr>\r\n<tr>\r\n<td>A26009171</td>\r\n<td>A26009071</td>\r\n<td>7</td>\r\n<td>Left</td>\r\n<td>97</td>\r\n</tr>\r\n<tr>\r\n<td>A26009142</td>\r\n<td>A26009042</td>\r\n<td>4</td>\r\n<td>Right</td>\r\n<td>63</td>\r\n</tr>\r\n<tr>\r\n<td>A26009152</td>\r\n<td>A26009052</td>\r\n<td>5</td>\r\n<td>Right</td>\r\n<td>75</td>\r\n</tr>\r\n<tr>\r\n<td>A26009162</td>\r\n<td>A26009062</td>\r\n<td>6</td>\r\n<td>Right</td>\r\n<td>86</td>\r\n</tr>\r\n<tr>\r\n<td>A26009172</td>\r\n<td>A26009072</td>\r\n<td>7</td>\r\n<td>Right</td>\r\n<td>97</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'pro-35-mm-klavikula-hook-kilitli-plak', 1, 1, 1, 'pro-3,5 MM KLAVİKULA HOOK KİLİTLİ PLAK', 'pro-3,5 MM KLAVİKULA HOOK KİLİTLİ PLAK', 'pro-3,5 MM KLAVİKULA HOOK KİLİTLİ PLAK', 10000.0000, NULL, NULL, NULL, 0.5000, '2025-05-07 18:39:29', 'tr', 'default', 1, 43, '2025-05-11 05:39:05', NULL, 1),
(44, 'temporary-sku-e9afdc', 'simple', '', 'pro-2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', '<div class=\"toggle-content\">\r\n<p>Klavikula kırıkları, yanlış kaynama, kaynamama, osteotomi, ps&ouml;doartrozlarının, akromioklavikular &ccedil;ıkıkların tedavisinde ge&ccedil;ici kemik fiksasyonu amacı ile &ouml;zellikle kemik erimesi olan hastalarda kullanılır</p>\r\n</div>', '<table width=\"795\">\r\n<tbody>\r\n<tr bgcolor=\"#55e8de\">\r\n<td width=\"180\"><strong>SS</strong></td>\r\n<td width=\"180\"><strong>TI</strong></td>\r\n<td width=\"180\"><strong>HOLES</strong></td>\r\n<td width=\"180\"><strong>SIDE</strong></td>\r\n<td width=\"180\"><strong>LENGTH</strong><br><strong>(mm)</strong></td>\r\n</tr>\r\n<tr>\r\n<td>A5521903</td>\r\n<td>A1021803</td>\r\n<td>3</td>\r\n<td>Left</td>\r\n<td>66,5</td>\r\n</tr>\r\n<tr>\r\n<td>A5521904</td>\r\n<td>A1021804</td>\r\n<td>4</td>\r\n<td>Left</td>\r\n<td>78,7</td>\r\n</tr>\r\n<tr>\r\n<td>A5521905</td>\r\n<td>A1021805</td>\r\n<td>5</td>\r\n<td>Left</td>\r\n<td>91,1</td>\r\n</tr>\r\n<tr>\r\n<td>A5521906</td>\r\n<td>A1021806</td>\r\n<td>6</td>\r\n<td>Left</td>\r\n<td>103,2</td>\r\n</tr>\r\n<tr>\r\n<td>A5521907</td>\r\n<td>A1021807</td>\r\n<td>7</td>\r\n<td>Left</td>\r\n<td>113,8</td>\r\n</tr>\r\n<tr>\r\n<td>A5522903</td>\r\n<td>A1022803</td>\r\n<td>3</td>\r\n<td>Right</td>\r\n<td>66,5</td>\r\n</tr>\r\n<tr>\r\n<td>A5522904</td>\r\n<td>A1022804</td>\r\n<td>4</td>\r\n<td>Right</td>\r\n<td>78,7</td>\r\n</tr>\r\n<tr>\r\n<td>A5522905</td>\r\n<td>A1022805</td>\r\n<td>5</td>\r\n<td>Right</td>\r\n<td>91,1</td>\r\n</tr>\r\n<tr>\r\n<td>A5522906</td>\r\n<td>A1022806</td>\r\n<td>6</td>\r\n<td>Right</td>\r\n<td>103,2</td>\r\n</tr>\r\n<tr>\r\n<td>A5522907</td>\r\n<td>A1022807</td>\r\n<td>7</td>\r\n<td>Right</td>\r\n<td>113,8</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'pro-2735-mm-distal-klavikula-kilitli-kompresyon-plak', 1, 1, 1, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', 12000.0000, NULL, NULL, NULL, 0.5000, '2025-05-07 18:41:28', 'tr', 'default', 1, 44, '2025-05-11 05:38:51', NULL, 1),
(45, 'temporary-sku-ebb1c1', 'simple', '', 'pro-3,5 MM 1,25 DİŞ ADIMLI KORTİKAL VİDA', '<div class=\"toggle-content\">\r\n<p>K&uuml;&ccedil;&uuml;k kemik fragman kompleks intraartik&uuml;ler ve ekstraartik&uuml;ler kırıkları, osteotomi tedavisinde ge&ccedil;ici kemik fiksasyonu i&ccedil;in 3,5 mm kilitli/kilitsiz kompresyon plak ile birlikte kırık hattına kompresyon uygulamak amacıyla kullanılır</p>\r\n</div>', '<table width=\"505\">\r\n<tbody>\r\n<tr bgcolor=\"#55e8de\">\r\n<td width=\"180\"><strong>SS</strong></td>\r\n<td width=\"180\"><strong>TI</strong></td>\r\n<td width=\"180\"><strong>DIA. x LENGTH (mm)</strong></td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0100</td>\r\n<td>A110 03 218 0100</td>\r\n<td>3,5X10</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0120</td>\r\n<td>A110 03 218 0120</td>\r\n<td>3,5X12</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0140</td>\r\n<td>A110 03 218 0140</td>\r\n<td>3,5X14</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0160</td>\r\n<td>A110 03 218 0160</td>\r\n<td>3,5X16</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0180</td>\r\n<td>A110 03 218 0180</td>\r\n<td>3,5X18</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0200</td>\r\n<td>A110 03 218 0200</td>\r\n<td>3,5X20</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0220</td>\r\n<td>A110 03 218 0220</td>\r\n<td>3,5X22</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0240</td>\r\n<td>A110 03 218 0240</td>\r\n<td>3,5X24</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0260</td>\r\n<td>A110 03 218 0260</td>\r\n<td>3,5X26</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0280</td>\r\n<td>A110 03 218 0280</td>\r\n<td>3,5X28</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0300</td>\r\n<td>A110 03 218 0300</td>\r\n<td>3,5X30</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0320</td>\r\n<td>A110 03 218 0320</td>\r\n<td>3,5X32</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0340</td>\r\n<td>A110 03 218 0340</td>\r\n<td>3,5X34</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0360</td>\r\n<td>A110 03 218 0360</td>\r\n<td>3,5X36</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0380</td>\r\n<td>A110 03 218 0380</td>\r\n<td>3,5X38</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0400</td>\r\n<td>A110 03 218 0400</td>\r\n<td>3,5X40</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0420</td>\r\n<td>A110 03 218 0420</td>\r\n<td>3,5X42</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0440</td>\r\n<td>A110 03 218 0440</td>\r\n<td>3,5X44</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0460</td>\r\n<td>A110 03 218 0460</td>\r\n<td>3,5X46</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0480</td>\r\n<td>A110 03 218 0480</td>\r\n<td>3,5X48</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0500</td>\r\n<td>A110 03 218 0500</td>\r\n<td>3,5X50</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0520</td>\r\n<td>A110 03 218 0520</td>\r\n<td>3,5X52</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0540</td>\r\n<td>A110 03 218 0540</td>\r\n<td>3,5X54</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0560</td>\r\n<td>A110 03 218 0560</td>\r\n<td>3,5X56</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0580</td>\r\n<td>A110 03 218 0580</td>\r\n<td>3,5X58</td>\r\n</tr>\r\n<tr>\r\n<td>A100 03 218 0600</td>\r\n<td>A110 03 218 0600</td>\r\n<td>3,5X60</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'pro-35-mm-125-dis-adimli-kortikal-vida', 1, 1, 1, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', 999.0000, NULL, NULL, NULL, 0.5000, '2025-05-07 18:43:13', 'tr', 'default', 1, 45, '2025-05-11 05:41:31', NULL, 1),
(46, 'temporary-sku-dd95cb', 'simple', '', 'Pro-3,5 MM FULL YİVLİ SPONGİOZ VİDA', '<div class=\"toggle-content\">\r\n<p>K&uuml;&ccedil;&uuml;k kemik fragman kompleks intraartik&uuml;ler ve ekstraartik&uuml;ler kırıkları, osteotomi tedavisinde ge&ccedil;ici kemik fiksasyonu i&ccedil;in 3,5 mm kilitli/kilitsiz kompresyon plak ile birlikte kırık hattına kompresyon uygulamak amacıyla &ouml;zellikle spongioz/kansell&ouml;z kemiklerde kullanılır</p>\r\n</div>', '<table style=\"width: 505px;\" width=\"505\">\r\n<tbody>\r\n<tr bgcolor=\"#55e8de\">\r\n<td style=\"width: 154.551px;\" width=\"180\"><strong>SS</strong></td>\r\n<td style=\"width: 154.551px;\" width=\"180\"><strong>TI</strong></td>\r\n<td style=\"width: 152.578px;\" width=\"180\"><strong>DIA. x LENGTH (mm)</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353520</td>\r\n<td style=\"width: 154.551px;\">A6153520</td>\r\n<td style=\"width: 152.578px;\">3,5X20</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353522</td>\r\n<td style=\"width: 154.551px;\">A6153522</td>\r\n<td style=\"width: 152.578px;\">3,5X22</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353524</td>\r\n<td style=\"width: 154.551px;\">A6153524</td>\r\n<td style=\"width: 152.578px;\">3,5X24</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353526</td>\r\n<td style=\"width: 154.551px;\">A6153526</td>\r\n<td style=\"width: 152.578px;\">3,5X26</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353528</td>\r\n<td style=\"width: 154.551px;\">A6153528</td>\r\n<td style=\"width: 152.578px;\">3,5X28</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353530</td>\r\n<td style=\"width: 154.551px;\">A6153530</td>\r\n<td style=\"width: 152.578px;\">3,5X30</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353532</td>\r\n<td style=\"width: 154.551px;\">A6153532</td>\r\n<td style=\"width: 152.578px;\">3,5X32</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353534</td>\r\n<td style=\"width: 154.551px;\">A6153534</td>\r\n<td style=\"width: 152.578px;\">3,5X34</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353536</td>\r\n<td style=\"width: 154.551px;\">A6153536</td>\r\n<td style=\"width: 152.578px;\">3,5X36</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353538</td>\r\n<td style=\"width: 154.551px;\">A6153538</td>\r\n<td style=\"width: 152.578px;\">3,5X38</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353540</td>\r\n<td style=\"width: 154.551px;\">A6153540</td>\r\n<td style=\"width: 152.578px;\">3,5X40</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353542</td>\r\n<td style=\"width: 154.551px;\">A6153542</td>\r\n<td style=\"width: 152.578px;\">3,5X42</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353544</td>\r\n<td style=\"width: 154.551px;\">A6153544</td>\r\n<td style=\"width: 152.578px;\">3,5X44</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353546</td>\r\n<td style=\"width: 154.551px;\">A6153546</td>\r\n<td style=\"width: 152.578px;\">3,5X46</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353548</td>\r\n<td style=\"width: 154.551px;\">A6153548</td>\r\n<td style=\"width: 152.578px;\">3,5X48</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 154.551px;\">A6353550</td>\r\n<td style=\"width: 154.551px;\">A6153550</td>\r\n<td style=\"width: 152.578px;\">3,5X50</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'pro-35-mm-full-yivli-spongioz-vida', 0, 0, 1, '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', 999.0000, NULL, NULL, NULL, 0.5000, '2025-05-07 18:45:17', 'tr', 'default', 1, 46, '2025-05-11 05:41:46', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_grouped_products`
--

CREATE TABLE `product_grouped_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `associated_product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `type`, `path`, `product_id`, `position`) VALUES
(1, 'images', 'product/1/kky6MD84Y6rZZMFDwWceIZucst10wUNttNnpcbzH.webp', 1, 2),
(4, 'images', 'product/1/DMbOCSZTy4s0KOyeokJnqKiT21JXp5bSvdMLybsW.webp', 1, 1),
(5, 'images', 'product/2/tAZNhLLrqFZyra8noaBwmnBKZt94atq5dKJ0Enwm.webp', 2, 1),
(6, 'images', 'product/3/A7qY5w3bv5m0IZQIzaEwZG0isKpJKElSNbuTY75V.webp', 3, 1),
(7, 'images', 'product/4/2u5IifEjitXxxeQaMNMuaACCpkSrnQmmKaYS6u7X.webp', 4, 1),
(8, 'images', 'product/6/jaYt6LaDuEzWRbkya9xwJb1RBJoh3POh0ydJWFvI.webp', 6, 1),
(9, 'images', 'product/5/DuxiEyeGTTFwPuwEBgJgjrLpMHU9I0JwfXQZtf2q.webp', 5, 1),
(10, 'images', 'product/7/WZf8bj0X8YxbV1sMb4Y7OYbDIqsiV1jcZFMn64WH.webp', 7, 1),
(11, 'images', 'product/8/zAPa2ZvcrNR8tBRjKSD885b2z0245Pq9g0mMRy0i.webp', 8, 1),
(12, 'images', 'product/9/EwYWloMP3PHbsvwA8BIjzZHD9Sw1M7D2QrZkvOmd.webp', 9, 1),
(13, 'images', 'product/10/zxfHZqtfWlEwlqCoFBRfpx3BHxifVtqoD6P48INe.webp', 10, 1),
(14, 'images', 'product/11/oNaCBPB5Go56NbiIz3eDSeOIsSiQHc9xtuWMkSXp.webp', 11, 1),
(15, 'images', 'product/12/NSPiOvlPgHKcX8NUDbqps6XADTlgxYjoXMpvJ8Tx.webp', 12, 1),
(16, 'images', 'product/13/hDGCqDYtRYAl1v9mNiqG0vM4LsT3kXlL84OWXsUe.webp', 13, 1),
(17, 'images', 'product/14/BpCdTD2Lb7twT15nCTmDpy5hALKaZILPR65fmqip.webp', 14, 1),
(20, 'images', 'product/15/Wibb8vgRQtIIY6kfQ11SzWEqTkuiW6kZPf8NAJYi.webp', 15, 1),
(22, 'images', 'product/16/vFuuKnrqJPA1QEpjp4JuwiaemRJBid157oa65fm0.webp', 16, 1),
(24, 'images', 'product/17/4KBABWgHkVE4R6Dcs8Q3j3a16TcjPLzAKjw665C9.webp', 17, 1),
(25, 'images', 'product/18/i5Nw5R84JcK69Aq2VSNZJF8SjlPNWpVS6QmZTSzF.webp', 18, 1),
(26, 'images', 'product/19/VUhb7TsvaFtCaizh5e9KhNhEq5mnyPLF4TIP0z5l.webp', 19, 1),
(28, 'images', 'product/20/kWV5jPcoKkOcEHAlIuKlEoXyOuQrW8LotqHLGR6M.webp', 20, 1),
(30, 'images', 'product/21/Pm4UlmUlMVpE5VofUGOC2JUk8g3HMWBo4Ys4hvf9.webp', 21, 1),
(32, 'images', 'product/22/NVRfTu9qj2Vnm6E3LJbSi5NDVPF7LSx7C0VV74Nv.webp', 22, 1),
(34, 'images', 'product/23/Jf8AEQZc0amdRkyEcgOLyHcXYP64T3mI1tZ6VfgV.webp', 23, 1),
(36, 'images', 'product/24/jYz90wKc5lA8ptVoPrTQGyb4ChH2oo1TMb2JgEMU.webp', 24, 1),
(38, 'images', 'product/25/jSwB9QFsdICVw5SyM6WAab2H4EMNaus1AmP3KdPq.webp', 25, 1),
(40, 'images', 'product/26/sfCR6EU976yJwN0FIFn76EIYQTw8SF0HosASz8Wv.webp', 26, 1),
(42, 'images', 'product/27/poCuvcXJDvKCw6iBSTcv02TDydUWpmNQoc5uu8jg.webp', 27, 1),
(43, 'images', 'product/28/jdFGLXhol9BTU5kjYpQ5FqqWj3Yhv36TbRKdZbZH.webp', 28, 1),
(45, 'images', 'product/30/ybMQozMxaFFkEpdENMH9vWlfNC58GHKQTieWvXDR.webp', 30, 1),
(47, 'images', 'product/31/SE5dp3NelUAEebtyLxiRlnEBhSvQ6fGXEzaZDtae.webp', 31, 1),
(49, 'images', 'product/32/YXIlZULX3n6dAL5BigZbW8kpYmOODq4hLseWfcR8.webp', 32, 1),
(51, 'images', 'product/33/X8810Jy0e5qIHlrP2J1xbgmzkwaY6HAqS4a2nV5x.webp', 33, 1),
(52, 'images', 'product/34/fMYBqh3z5Et6Pjvs5EvTbJEYCByK7nkD9dqVT2nj.webp', 34, 1),
(55, 'images', 'product/36/OXS604wiSi6G5zrcmx1vrYUf5vrZj4yfALplElGM.webp', 36, 1),
(57, 'images', 'product/37/jqRpoxbyenOYMs3gZ0RCF2hBV1l653e9KDaC1sB7.webp', 37, 1),
(58, 'images', 'product/35/5bwLDhkbKHyAnE5xeyJWk784G4WVwJQYkVaauC2H.webp', 35, 1),
(60, 'images', 'product/38/Ca8HH3d7mMFsqykEqrJ4z9jqZVb7XSHJzZDJXGt8.webp', 38, 1),
(62, 'images', 'product/39/yYUEJUiiH3KgA295F1qwLJra6xG3hO7dRNFOtGWe.webp', 39, 1),
(63, 'images', 'product/40/eSjwo0YzTmPjjaTLqkCzeKxnhyztruRLG069z3Bc.webp', 40, 1),
(65, 'images', 'product/41/OeWYIXKSNn8JrKCBEjemHy6dOFTWUIWPNXaeGlak.webp', 41, 1),
(67, 'images', 'product/42/xnd3x6kqKLMEa3Qizz9LhlOm0WPZ5fktP11eQwM8.webp', 42, 1),
(69, 'images', 'product/43/MsbI9Fid0tuyMsebiCGvhhCAKNhSeV6HZ5F7OijV.webp', 43, 1),
(71, 'images', 'product/44/Apw63K6p9Z5ecRO7LgzmlctwPPGfQehR2ryjAnXR.webp', 44, 1),
(73, 'images', 'product/45/Fdzg4cbnXCYcXGqANKI3oIAzdxGbq1aFLNNrcrIX.webp', 45, 1),
(75, 'images', 'product/46/WxYaBPfw0GyUZWPCbZyuyDGC9EFbv4oa5b6hT9GM.webp', 46, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventories`
--

CREATE TABLE `product_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `inventory_source_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `qty`, `product_id`, `vendor_id`, `inventory_source_id`) VALUES
(46, 10, 33, 0, 2),
(47, 20, 33, 0, 3),
(48, 50, 32, 0, 2),
(49, 12, 32, 0, 3),
(50, 0, 46, 0, 2),
(51, 0, 46, 0, 3),
(52, 0, 28, 0, 2),
(53, 0, 28, 0, 3),
(54, 0, 30, 0, 2),
(55, 0, 30, 0, 3),
(56, 0, 16, 0, 2),
(57, 0, 16, 0, 3),
(58, 0, 15, 0, 2),
(59, 0, 15, 0, 3),
(60, 0, 17, 0, 2),
(61, 0, 17, 0, 3),
(62, 0, 14, 0, 2),
(63, 0, 14, 0, 3),
(64, 0, 41, 0, 2),
(65, 0, 41, 0, 3),
(66, 0, 42, 0, 2),
(67, 0, 42, 0, 3),
(68, 0, 34, 0, 2),
(69, 0, 34, 0, 3),
(70, 0, 44, 0, 2),
(71, 0, 44, 0, 3),
(72, 0, 43, 0, 2),
(73, 0, 43, 0, 3),
(74, 0, 40, 0, 2),
(75, 0, 40, 0, 3),
(76, 0, 31, 0, 2),
(77, 0, 31, 0, 3),
(78, 0, 37, 0, 2),
(79, 0, 37, 0, 3),
(80, 0, 11, 0, 2),
(81, 0, 11, 0, 3),
(82, 0, 26, 0, 2),
(83, 0, 26, 0, 3),
(84, 0, 27, 0, 2),
(85, 0, 27, 0, 3),
(86, 0, 25, 0, 2),
(87, 0, 25, 0, 3),
(88, 0, 38, 0, 2),
(89, 0, 38, 0, 3),
(90, 0, 13, 0, 2),
(91, 0, 13, 0, 3),
(92, 0, 24, 0, 2),
(93, 0, 24, 0, 3),
(94, 0, 45, 0, 2),
(95, 0, 45, 0, 3),
(96, 0, 18, 0, 2),
(97, 0, 18, 0, 3),
(98, 0, 36, 0, 2),
(99, 0, 36, 0, 3),
(100, 0, 39, 0, 2),
(101, 0, 39, 0, 3),
(102, 0, 12, 0, 2),
(103, 0, 12, 0, 3),
(104, 0, 21, 0, 2),
(105, 0, 21, 0, 3),
(106, 0, 22, 0, 2),
(107, 0, 22, 0, 3),
(108, 0, 9, 0, 2),
(109, 0, 9, 0, 3),
(110, 0, 23, 0, 2),
(111, 0, 23, 0, 3),
(112, 0, 3, 0, 2),
(113, 0, 3, 0, 3),
(114, 0, 10, 0, 2),
(115, 0, 10, 0, 3),
(116, 0, 4, 0, 2),
(117, 0, 4, 0, 3),
(118, 0, 2, 0, 2),
(119, 0, 2, 0, 3),
(120, 0, 20, 0, 2),
(121, 0, 20, 0, 3),
(122, 0, 5, 0, 2),
(123, 0, 5, 0, 3),
(124, 0, 8, 0, 2),
(125, 0, 8, 0, 3),
(126, 0, 6, 0, 2),
(127, 0, 6, 0, 3),
(128, 0, 7, 0, 2),
(129, 0, 7, 0, 3),
(130, 0, 1, 0, 2),
(131, 0, 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory_indices`
--

CREATE TABLE `product_inventory_indices` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_inventory_indices`
--

INSERT INTO `product_inventory_indices` (`id`, `qty`, `product_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, NULL, NULL),
(2, 0, 2, 1, NULL, NULL),
(3, 0, 3, 1, NULL, NULL),
(4, 0, 4, 1, NULL, NULL),
(5, 0, 5, 1, NULL, NULL),
(6, 0, 6, 1, NULL, NULL),
(7, 0, 7, 1, NULL, NULL),
(8, 0, 8, 1, NULL, NULL),
(9, 0, 9, 1, NULL, NULL),
(10, 0, 10, 1, NULL, NULL),
(11, 0, 11, 1, NULL, NULL),
(12, 0, 12, 1, NULL, NULL),
(13, 0, 13, 1, NULL, NULL),
(14, 0, 14, 1, NULL, NULL),
(15, 0, 15, 1, NULL, NULL),
(16, 0, 16, 1, NULL, NULL),
(17, 0, 17, 1, NULL, NULL),
(18, 0, 18, 1, NULL, NULL),
(19, 0, 19, 1, NULL, NULL),
(20, 0, 20, 1, NULL, NULL),
(21, 0, 21, 1, NULL, NULL),
(22, 0, 22, 1, NULL, NULL),
(23, 0, 23, 1, NULL, NULL),
(24, 0, 24, 1, NULL, NULL),
(25, 0, 25, 1, NULL, NULL),
(26, 0, 26, 1, NULL, NULL),
(27, 0, 27, 1, NULL, NULL),
(28, 0, 28, 1, NULL, NULL),
(29, 0, 30, 1, NULL, NULL),
(30, 0, 31, 1, NULL, NULL),
(31, 50, 32, 1, NULL, '2025-05-10 21:42:52'),
(32, 9, 33, 1, NULL, '2025-05-10 10:27:37'),
(33, 0, 34, 1, NULL, NULL),
(34, 0, 36, 1, NULL, NULL),
(35, 0, 37, 1, NULL, NULL),
(36, 0, 35, 1, NULL, NULL),
(37, 0, 38, 1, NULL, NULL),
(38, 0, 39, 1, NULL, NULL),
(39, 0, 40, 1, NULL, NULL),
(40, 0, 41, 1, NULL, NULL),
(41, 0, 42, 1, NULL, NULL),
(42, 0, 43, 1, NULL, NULL),
(43, 0, 44, 1, NULL, NULL),
(44, 0, 45, 1, NULL, NULL),
(45, 0, 46, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_ordered_inventories`
--

CREATE TABLE `product_ordered_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ordered_inventories`
--

INSERT INTO `product_ordered_inventories` (`id`, `qty`, `product_id`, `channel_id`) VALUES
(1, 1, 33, 1),
(2, 0, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_price_indices`
--

CREATE TABLE `product_price_indices` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `min_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `regular_min_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `max_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `regular_max_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_price_indices`
--

INSERT INTO `product_price_indices` (`id`, `product_id`, `customer_group_id`, `channel_id`, `min_price`, `regular_min_price`, `max_price`, `regular_max_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 7.6400, 7.6400, 7.6400, 7.6400, NULL, NULL),
(2, 1, 2, 1, 7.6400, 7.6400, 7.6400, 7.6400, NULL, NULL),
(3, 1, 3, 1, 7.6400, 7.6400, 7.6400, 7.6400, NULL, NULL),
(4, 2, 1, 1, 49.0000, 59.0000, 49.0000, 59.0000, NULL, NULL),
(5, 2, 2, 1, 49.0000, 59.0000, 49.0000, 59.0000, NULL, NULL),
(6, 2, 3, 1, 49.0000, 59.0000, 49.0000, 59.0000, NULL, NULL),
(7, 3, 1, 1, 99.0000, 129.0000, 99.0000, 129.0000, NULL, NULL),
(8, 3, 2, 1, 99.0000, 129.0000, 99.0000, 129.0000, NULL, NULL),
(9, 3, 3, 1, 99.0000, 129.0000, 99.0000, 129.0000, NULL, NULL),
(10, 4, 1, 1, 59.9900, 59.9900, 59.9900, 59.9900, NULL, NULL),
(11, 4, 2, 1, 59.9900, 59.9900, 59.9900, 59.9900, NULL, NULL),
(12, 4, 3, 1, 59.9900, 59.9900, 59.9900, 59.9900, NULL, NULL),
(13, 5, 1, 1, 33.4000, 33.4000, 33.4000, 33.4000, NULL, NULL),
(14, 5, 2, 1, 33.4000, 33.4000, 33.4000, 33.4000, NULL, NULL),
(15, 5, 3, 1, 33.4000, 33.4000, 33.4000, 33.4000, NULL, NULL),
(16, 6, 1, 1, 9.9900, 9.9900, 9.9900, 9.9900, NULL, NULL),
(17, 6, 2, 1, 9.9900, 9.9900, 9.9900, 9.9900, NULL, NULL),
(18, 6, 3, 1, 9.9900, 9.9900, 9.9900, 9.9900, NULL, NULL),
(19, 7, 1, 1, 9.9900, 9.9900, 9.9900, 9.9900, NULL, NULL),
(20, 7, 2, 1, 9.9900, 9.9900, 9.9900, 9.9900, NULL, NULL),
(21, 7, 3, 1, 9.9900, 9.9900, 9.9900, 9.9900, NULL, NULL),
(22, 8, 1, 1, 19.9900, 19.9900, 19.9900, 19.9900, NULL, NULL),
(23, 8, 2, 1, 19.9900, 19.9900, 19.9900, 19.9900, NULL, NULL),
(24, 8, 3, 1, 19.9900, 19.9900, 19.9900, 19.9900, NULL, NULL),
(25, 9, 1, 1, 145.9900, 145.9900, 145.9900, 145.9900, NULL, NULL),
(26, 9, 2, 1, 145.9900, 145.9900, 145.9900, 145.9900, NULL, NULL),
(27, 9, 3, 1, 145.9900, 145.9900, 145.9900, 145.9900, NULL, NULL),
(28, 10, 1, 1, 99.9900, 99.9900, 99.9900, 99.9900, NULL, NULL),
(29, 10, 2, 1, 99.9900, 99.9900, 99.9900, 99.9900, NULL, NULL),
(30, 10, 3, 1, 99.9900, 99.9900, 99.9900, 99.9900, NULL, NULL),
(31, 11, 1, 1, 1999.0000, 1999.0000, 1999.0000, 1999.0000, NULL, NULL),
(32, 11, 2, 1, 1999.0000, 1999.0000, 1999.0000, 1999.0000, NULL, NULL),
(33, 11, 3, 1, 1999.0000, 1999.0000, 1999.0000, 1999.0000, NULL, NULL),
(34, 12, 1, 1, 549.9900, 549.9900, 549.9900, 549.9900, NULL, NULL),
(35, 12, 2, 1, 549.9900, 549.9900, 549.9900, 549.9900, NULL, NULL),
(36, 12, 3, 1, 549.9900, 549.9900, 549.9900, 549.9900, NULL, NULL),
(37, 13, 1, 1, 999.9900, 1050.0000, 999.9900, 1050.0000, NULL, NULL),
(38, 13, 2, 1, 999.9900, 1050.0000, 999.9900, 1050.0000, NULL, NULL),
(39, 13, 3, 1, 999.9900, 1050.0000, 999.9900, 1050.0000, NULL, NULL),
(40, 14, 1, 1, 19999.0000, 19999.0000, 19999.0000, 19999.0000, NULL, NULL),
(41, 14, 2, 1, 19999.0000, 19999.0000, 19999.0000, 19999.0000, NULL, NULL),
(42, 14, 3, 1, 19999.0000, 19999.0000, 19999.0000, 19999.0000, NULL, NULL),
(43, 15, 1, 1, 31000.0000, 31750.0000, 31000.0000, 31750.0000, NULL, NULL),
(44, 15, 2, 1, 31000.0000, 31750.0000, 31000.0000, 31750.0000, NULL, NULL),
(45, 15, 3, 1, 31000.0000, 31750.0000, 31000.0000, 31750.0000, NULL, NULL),
(46, 16, 1, 1, 36750.0000, 36750.0000, 36750.0000, 36750.0000, NULL, NULL),
(47, 16, 2, 1, 36750.0000, 36750.0000, 36750.0000, 36750.0000, NULL, NULL),
(48, 16, 3, 1, 36750.0000, 36750.0000, 36750.0000, 36750.0000, NULL, NULL),
(49, 17, 1, 1, 29950.0000, 29950.0000, 29950.0000, 29950.0000, NULL, NULL),
(50, 17, 2, 1, 29950.0000, 29950.0000, 29950.0000, 29950.0000, NULL, NULL),
(51, 17, 3, 1, 29950.0000, 29950.0000, 29950.0000, 29950.0000, NULL, NULL),
(52, 18, 1, 1, 799.0000, 799.0000, 799.0000, 799.0000, NULL, NULL),
(53, 18, 2, 1, 799.0000, 799.0000, 799.0000, 799.0000, NULL, NULL),
(54, 18, 3, 1, 799.0000, 799.0000, 799.0000, 799.0000, NULL, NULL),
(55, 19, 1, 1, 99.9900, 99.9900, 99.9900, 99.9900, NULL, NULL),
(56, 19, 2, 1, 99.9900, 99.9900, 99.9900, 99.9900, NULL, NULL),
(57, 19, 3, 1, 99.9900, 99.9900, 99.9900, 99.9900, NULL, NULL),
(58, 20, 1, 1, 49.9900, 49.9900, 49.9900, 49.9900, NULL, NULL),
(59, 20, 2, 1, 49.9900, 49.9900, 49.9900, 49.9900, NULL, NULL),
(60, 20, 3, 1, 49.9900, 49.9900, 49.9900, 49.9900, NULL, NULL),
(61, 21, 1, 1, 349.9900, 399.0000, 349.9900, 399.0000, NULL, NULL),
(62, 21, 2, 1, 349.9900, 399.0000, 349.9900, 399.0000, NULL, NULL),
(63, 21, 3, 1, 349.9900, 399.0000, 349.9900, 399.0000, NULL, NULL),
(64, 22, 1, 1, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
(65, 22, 2, 1, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
(66, 22, 3, 1, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
(67, 23, 1, 1, 99.9900, 129.9900, 99.9900, 129.9900, NULL, NULL),
(68, 23, 2, 1, 99.9900, 129.9900, 99.9900, 129.9900, NULL, NULL),
(69, 23, 3, 1, 99.9900, 129.9900, 99.9900, 129.9900, NULL, NULL),
(70, 24, 1, 1, 899.0000, 999.0000, 899.0000, 999.0000, NULL, NULL),
(71, 24, 2, 1, 899.0000, 999.0000, 899.0000, 999.0000, NULL, NULL),
(72, 24, 3, 1, 899.0000, 999.0000, 899.0000, 999.0000, NULL, NULL),
(73, 25, 1, 1, 1199.0000, 1199.0000, 1199.0000, 1199.0000, NULL, NULL),
(74, 25, 2, 1, 1199.0000, 1199.0000, 1199.0000, 1199.0000, NULL, NULL),
(75, 25, 3, 1, 1199.0000, 1199.0000, 1199.0000, 1199.0000, NULL, NULL),
(76, 26, 1, 1, 1899.0000, 1899.0000, 1899.0000, 1899.0000, NULL, NULL),
(77, 26, 2, 1, 1899.0000, 1899.0000, 1899.0000, 1899.0000, NULL, NULL),
(78, 26, 3, 1, 1899.0000, 1899.0000, 1899.0000, 1899.0000, NULL, NULL),
(79, 27, 1, 1, 1499.0000, 1499.0000, 1499.0000, 1499.0000, NULL, NULL),
(80, 27, 2, 1, 1499.0000, 1499.0000, 1499.0000, 1499.0000, NULL, NULL),
(81, 27, 3, 1, 1499.0000, 1499.0000, 1499.0000, 1499.0000, NULL, NULL),
(82, 28, 1, 1, 79000.0000, 79000.0000, 79000.0000, 79000.0000, NULL, NULL),
(83, 28, 2, 1, 79000.0000, 79000.0000, 79000.0000, 79000.0000, NULL, NULL),
(84, 28, 3, 1, 79000.0000, 79000.0000, 79000.0000, 79000.0000, NULL, NULL),
(85, 30, 1, 1, 56999.0000, 56999.0000, 56999.0000, 56999.0000, NULL, NULL),
(86, 30, 2, 1, 56999.0000, 56999.0000, 56999.0000, 56999.0000, NULL, NULL),
(87, 30, 3, 1, 56999.0000, 56999.0000, 56999.0000, 56999.0000, NULL, NULL),
(88, 31, 1, 1, 7999.0000, 7999.0000, 7999.0000, 7999.0000, NULL, NULL),
(89, 31, 2, 1, 7999.0000, 7999.0000, 7999.0000, 7999.0000, NULL, NULL),
(90, 31, 3, 1, 7999.0000, 7999.0000, 7999.0000, 7999.0000, NULL, NULL),
(91, 32, 1, 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, NULL, NULL),
(92, 32, 2, 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, NULL, NULL),
(93, 32, 3, 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, NULL, NULL),
(94, 33, 1, 1, 85000.0000, 87000.0000, 85000.0000, 87000.0000, NULL, NULL),
(95, 33, 2, 1, 85000.0000, 87000.0000, 85000.0000, 87000.0000, NULL, NULL),
(96, 33, 3, 1, 85000.0000, 87000.0000, 85000.0000, 87000.0000, NULL, NULL),
(97, 34, 1, 1, 12500.0000, 13870.0000, 12500.0000, 13870.0000, NULL, NULL),
(98, 34, 2, 1, 12500.0000, 13870.0000, 12500.0000, 13870.0000, NULL, NULL),
(99, 34, 3, 1, 12500.0000, 13870.0000, 12500.0000, 13870.0000, NULL, NULL),
(100, 36, 1, 1, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL),
(101, 36, 2, 1, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL),
(102, 36, 3, 1, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL),
(103, 37, 1, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, NULL, NULL),
(104, 37, 2, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, NULL, NULL),
(105, 37, 3, 1, 3200.0000, 3200.0000, 3200.0000, 3200.0000, NULL, NULL),
(106, 35, 1, 1, 6999.0000, 6999.0000, 6999.0000, 6999.0000, NULL, NULL),
(107, 35, 2, 1, 6999.0000, 6999.0000, 6999.0000, 6999.0000, NULL, NULL),
(108, 35, 3, 1, 6999.0000, 6999.0000, 6999.0000, 6999.0000, NULL, NULL),
(109, 38, 1, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, NULL),
(110, 38, 2, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, NULL),
(111, 38, 3, 1, 1100.0000, 1100.0000, 1100.0000, 1100.0000, NULL, NULL),
(112, 39, 1, 1, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL),
(113, 39, 2, 1, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL),
(114, 39, 3, 1, 599.0000, 599.0000, 599.0000, 599.0000, NULL, NULL),
(115, 40, 1, 1, 9899.0000, 9899.0000, 9899.0000, 9899.0000, NULL, NULL),
(116, 40, 2, 1, 9899.0000, 9899.0000, 9899.0000, 9899.0000, NULL, NULL),
(117, 40, 3, 1, 9899.0000, 9899.0000, 9899.0000, 9899.0000, NULL, NULL),
(118, 41, 1, 1, 19999.0000, 19999.0000, 19999.0000, 19999.0000, NULL, NULL),
(119, 41, 2, 1, 19999.0000, 19999.0000, 19999.0000, 19999.0000, NULL, NULL),
(120, 41, 3, 1, 19999.0000, 19999.0000, 19999.0000, 19999.0000, NULL, NULL),
(121, 42, 1, 1, 19999.0000, 19999.0000, 19999.0000, 19999.0000, NULL, NULL),
(122, 42, 2, 1, 19999.0000, 19999.0000, 19999.0000, 19999.0000, NULL, NULL),
(123, 42, 3, 1, 19999.0000, 19999.0000, 19999.0000, 19999.0000, NULL, NULL),
(124, 43, 1, 1, 10000.0000, 10000.0000, 10000.0000, 10000.0000, NULL, '2025-05-07 15:41:24'),
(125, 43, 2, 1, 10000.0000, 10000.0000, 10000.0000, 10000.0000, NULL, '2025-05-07 15:41:24'),
(126, 43, 3, 1, 10000.0000, 10000.0000, 10000.0000, 10000.0000, NULL, '2025-05-07 15:41:24'),
(127, 44, 1, 1, 12000.0000, 12000.0000, 12000.0000, 12000.0000, NULL, NULL),
(128, 44, 2, 1, 12000.0000, 12000.0000, 12000.0000, 12000.0000, NULL, NULL),
(129, 44, 3, 1, 12000.0000, 12000.0000, 12000.0000, 12000.0000, NULL, NULL),
(130, 45, 1, 1, 999.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
(131, 45, 2, 1, 999.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
(132, 45, 3, 1, 999.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
(133, 46, 1, 1, 999.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
(134, 46, 2, 1, 999.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
(135, 46, 3, 1, 999.0000, 999.0000, 999.0000, 999.0000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_relations`
--

CREATE TABLE `product_relations` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_relations`
--

INSERT INTO `product_relations` (`parent_id`, `child_id`) VALUES
(2, 1),
(4, 1),
(4, 2),
(6, 1),
(6, 4),
(9, 8),
(11, 10),
(12, 10),
(12, 11),
(13, 10),
(13, 11),
(13, 12),
(14, 10),
(14, 11),
(14, 12),
(14, 13),
(14, 15),
(15, 10),
(15, 11),
(15, 12),
(15, 13),
(15, 16),
(16, 10),
(16, 11),
(16, 12),
(16, 13),
(16, 17),
(17, 10),
(17, 11),
(17, 12),
(17, 13),
(18, 24),
(19, 20),
(20, 19),
(20, 21),
(21, 19),
(21, 20),
(21, 22),
(22, 19),
(22, 20),
(22, 21),
(22, 23),
(23, 19),
(23, 20),
(23, 21),
(23, 22),
(24, 19),
(24, 20),
(24, 21),
(24, 22),
(24, 23),
(24, 25),
(25, 19),
(25, 20),
(25, 21),
(25, 22),
(25, 23),
(25, 26),
(26, 19),
(26, 20),
(26, 21),
(26, 22),
(26, 23),
(26, 27),
(27, 19),
(27, 20),
(27, 21),
(27, 22),
(27, 23),
(28, 32),
(30, 31),
(30, 32),
(31, 32),
(31, 33),
(33, 32),
(34, 35),
(34, 36),
(36, 37),
(37, 36),
(37, 38),
(38, 36),
(38, 37),
(38, 39),
(39, 36),
(39, 37),
(39, 38),
(40, 41),
(41, 42),
(42, 43),
(43, 42),
(43, 44),
(44, 45),
(45, 42),
(45, 43),
(45, 46),
(46, 42),
(46, 43);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_review_attachments`
--

CREATE TABLE `product_review_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'image',
  `mime_type` varchar(255) DEFAULT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_super_attributes`
--

CREATE TABLE `product_super_attributes` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_up_sells`
--

CREATE TABLE `product_up_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_up_sells`
--

INSERT INTO `product_up_sells` (`parent_id`, `child_id`) VALUES
(6, 2),
(6, 3),
(15, 14),
(16, 14),
(16, 15),
(17, 14),
(17, 15),
(17, 16),
(24, 18),
(25, 18),
(25, 24),
(26, 18),
(26, 24),
(26, 25),
(27, 18),
(27, 24),
(27, 25),
(27, 26),
(28, 30),
(28, 31),
(30, 28),
(31, 28),
(31, 30),
(32, 28),
(32, 30),
(32, 31),
(33, 28),
(33, 30),
(33, 31),
(35, 34),
(35, 36),
(35, 37),
(36, 34),
(37, 34),
(38, 34),
(38, 35),
(38, 36),
(38, 37),
(39, 34),
(39, 35),
(42, 40),
(42, 41),
(43, 40),
(43, 41),
(45, 40),
(45, 41),
(45, 42),
(45, 43);

-- --------------------------------------------------------

--
-- Table structure for table `product_videos`
--

CREATE TABLE `product_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(255) DEFAULT NULL,
  `channel_currency_code` varchar(255) DEFAULT NULL,
  `order_currency_code` varchar(255) DEFAULT NULL,
  `adjustment_refund` decimal(12,4) DEFAULT 0.0000,
  `base_adjustment_refund` decimal(12,4) DEFAULT 0.0000,
  `adjustment_fee` decimal(12,4) DEFAULT 0.0000,
  `base_adjustment_fee` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `refunds`
--

INSERT INTO `refunds` (`id`, `increment_id`, `state`, `email_sent`, `total_qty`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `adjustment_refund`, `base_adjustment_refund`, `adjustment_fee`, `base_adjustment_fee`, `sub_total`, `base_sub_total`, `grand_total`, `base_grand_total`, `shipping_amount`, `base_shipping_amount`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `order_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'refunded', 1, 1, 'TRY', 'TRY', 'TRY', 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 2, '2025-05-10 14:37:12', '2025-05-10 21:42:54'),
(2, NULL, 'refunded', 1, 1, 'TRY', 'TRY', 'TRY', 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 0.0000, 0.0000, 6, '2025-05-10 14:38:07', '2025-05-10 21:42:54'),
(3, NULL, 'refunded', 1, 1, 'TRY', 'TRY', 'TRY', 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 9, '2025-05-10 17:08:25', '2025-05-10 21:42:54'),
(4, NULL, 'refunded', 1, 1, 'TRY', 'TRY', 'TRY', 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 12, '2025-05-10 21:42:50', '2025-05-10 21:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `refund_items`
--

CREATE TABLE `refund_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `refund_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `refund_items`
--

INSERT INTO `refund_items` (`id`, `parent_id`, `name`, `description`, `sku`, `qty`, `price`, `base_price`, `total`, `base_total`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_item_id`, `refund_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 'temporary-sku-4b7138', 1, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 2, 1, '{\"cart_id\":4,\"quantity\":1,\"product_id\":39,\"locale\":\"tr\"}', '2025-05-10 14:37:12', '2025-05-10 14:37:12'),
(2, NULL, 'Aml-Medwelt Cerrahi Dikiş Seti 7\'li', NULL, 'temporary-sku-4b7138', 1, 599.0000, 599.0000, 599.0000, 599.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 599.0000, 599.0000, 599.0000, 599.0000, 39, 'Webkul\\Product\\Models\\Product', 6, 2, '{\"cart_id\":10,\"product_id\":\"39\",\"is_buy_now\":\"1\",\"quantity\":1,\"locale\":\"tr\"}', '2025-05-10 14:38:07', '2025-05-10 14:38:07'),
(3, NULL, 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, 'temporary-sku-555195', 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 32, 'Webkul\\Product\\Models\\Product', 9, 3, '{\"cart_id\":13,\"quantity\":1,\"product_id\":32,\"locale\":\"tr\"}', '2025-05-10 17:08:25', '2025-05-10 17:08:25'),
(4, NULL, 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, 'temporary-sku-555195', 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 32, 'Webkul\\Product\\Models\\Product', 12, 4, '{\"cart_id\":16,\"quantity\":1,\"product_id\":32,\"locale\":\"tr\"}', '2025-05-10 21:42:50', '2025-05-10 21:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `rma`
--

CREATE TABLE `rma` (
  `id` int(10) UNSIGNED NOT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `information` longtext NOT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `rma_status` varchar(255) DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `package_condition` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rma_images`
--

CREATE TABLE `rma_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `rma_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rma_items`
--

CREATE TABLE `rma_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `rma_id` int(10) UNSIGNED NOT NULL,
  `order_item_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `rma_reason_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rma_messages`
--

CREATE TABLE `rma_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `rma_id` int(10) UNSIGNED NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `attachment_path` longtext DEFAULT NULL,
  `attachment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rma_reasons`
--

CREATE TABLE `rma_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rma_reasons`
--

INSERT INTO `rma_reasons` (`id`, `title`, `status`, `position`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Manufacturer defect', 1, 0, NULL, '2025-05-10 11:15:16', 0),
(2, 'Damaged during shipping', 1, 0, NULL, '2025-05-10 11:15:16', 0),
(3, 'Wrong description online', 1, 0, NULL, '2025-05-10 11:15:16', 0),
(4, 'Dead on arrival', 1, 0, NULL, '2025-05-10 11:15:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rma_reason_resolutions`
--

CREATE TABLE `rma_reason_resolutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rma_reason_id` int(10) UNSIGNED NOT NULL,
  `resolution_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rma_reason_resolutions`
--

INSERT INTO `rma_reason_resolutions` (`id`, `rma_reason_id`, `resolution_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'exchange', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(2, 1, 'return', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(3, 1, 'cancel-items', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(4, 2, 'exchange', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(5, 2, 'return', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(6, 2, 'cancel-items', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(7, 3, 'exchange', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(8, 3, 'return', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(9, 3, 'cancel-items', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(10, 4, 'exchange', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(11, 4, 'return', '2025-05-10 11:15:16', '2025-05-10 11:15:16'),
(12, 4, 'cancel-items', '2025-05-10 11:15:16', '2025-05-10 11:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `rma_rules`
--

CREATE TABLE `rma_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `rule_description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `exchange_period` varchar(255) DEFAULT NULL,
  `return_period` varchar(255) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rma_status`
--

CREATE TABLE `rma_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rma_status`
--

INSERT INTO `rma_status` (`id`, `title`, `status`, `color`, `created_at`, `updated_at`, `default`) VALUES
(1, 'Accept', 1, '#12af56', '2025-05-10 11:15:16', '2025-05-10 11:15:16', 1),
(2, 'Awaiting', 1, '#efb308', '2025-05-10 11:15:16', '2025-05-10 11:15:16', 1),
(3, 'Dispatched Package', 1, '#efb308', '2025-05-10 11:15:16', '2025-05-10 11:15:16', 1),
(4, 'Declined', 1, '#e11d48', '2025-05-10 11:15:16', '2025-05-10 11:15:16', 1),
(5, 'Item Canceled', 1, '#e11d48', '2025-05-10 11:15:16', '2025-05-10 11:15:16', 1),
(6, 'Pending', 1, '#efb308', '2025-05-10 11:15:16', '2025-05-10 11:15:16', 1),
(7, 'Received Package', 1, '#12af56', '2025-05-10 11:15:16', '2025-05-10 11:15:16', 1),
(8, 'Canceled', 1, '#e11d48', '2025-05-10 11:15:16', '2025-05-10 11:15:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `permission_type` varchar(255) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Yönetici', 'Bu rol kullanıcılara tüm erişimi sağlar', 'all', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `search_synonyms`
--

CREATE TABLE `search_synonyms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `terms` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(255) NOT NULL,
  `results` int(11) NOT NULL DEFAULT 0,
  `uses` int(11) NOT NULL DEFAULT 0,
  `redirect_url` varchar(255) DEFAULT NULL,
  `display_in_suggested_terms` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(255) NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `carrier_code` varchar(255) DEFAULT NULL,
  `carrier_title` varchar(255) DEFAULT NULL,
  `track_number` text DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_address_id` int(10) UNSIGNED DEFAULT NULL,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `inventory_source_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `status`, `total_qty`, `total_weight`, `carrier_code`, `carrier_title`, `track_number`, `email_sent`, `customer_id`, `customer_type`, `order_id`, `order_address_id`, `inventory_source_id`, `inventory_source_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 5, NULL, '1221', '212112', 1, 1, 'Webkul\\Customer\\Models\\Customer', 5, 21, 2, 'emad', '2025-05-08 20:07:14', '2025-05-10 21:41:51'),
(2, NULL, 1, 5, NULL, '1221', '213123', 1, 1, 'Webkul\\Customer\\Models\\Customer', 7, 29, 2, 'emad', '2025-05-10 13:57:01', '2025-05-10 21:41:51'),
(3, NULL, 1, 1, NULL, '1221', '213123', 1, 1, 'Webkul\\Customer\\Models\\Customer', 9, 38, 2, 'emad', '2025-05-10 17:07:43', '2025-05-10 21:41:51'),
(4, NULL, 1, 1, NULL, '1221', '213123', 1, 1, 'Webkul\\Customer\\Models\\Customer', 12, 50, 2, 'emad', '2025-05-10 21:41:48', '2025-05-10 21:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `shipment_items`
--

CREATE TABLE `shipment_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT 0.0000,
  `base_price` decimal(12,4) DEFAULT 0.0000,
  `total` decimal(12,4) DEFAULT 0.0000,
  `base_total` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipment_items`
--

INSERT INTO `shipment_items` (`id`, `name`, `description`, `sku`, `qty`, `weight`, `price`, `base_price`, `total`, `base_total`, `price_incl_tax`, `base_price_incl_tax`, `product_id`, `product_type`, `order_item_id`, `shipment_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, 'CHZ-Def-4', 1, 5, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 33, 'Webkul\\Product\\Models\\Product', 5, 1, '{\"cart_id\":9,\"quantity\":1,\"product_id\":33,\"locale\":\"tr\"}', '2025-05-08 20:07:14', '2025-05-08 20:07:14'),
(2, 'Def-Mindray Beneheart C1A Otomatik Eksternal Defibrilatör', NULL, 'CHZ-Def-4', 1, 5, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 85000.0000, 33, 'Webkul\\Product\\Models\\Product', 7, 2, '{\"cart_id\":11,\"quantity\":1,\"product_id\":33,\"locale\":\"tr\"}', '2025-05-10 13:57:01', '2025-05-10 13:57:01'),
(3, 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, 'temporary-sku-555195', 1, 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 32, 'Webkul\\Product\\Models\\Product', 9, 3, '{\"cart_id\":13,\"quantity\":1,\"product_id\":32,\"locale\":\"tr\"}', '2025-05-10 17:07:43', '2025-05-10 17:07:43'),
(4, 'def-Aselsan OED Cihazı Defibrilatör Pedi', NULL, 'temporary-sku-555195', 1, 1, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 3600.0000, 32, 'Webkul\\Product\\Models\\Product', 12, 4, '{\"cart_id\":16,\"quantity\":1,\"product_id\":32,\"locale\":\"tr\"}', '2025-05-10 21:41:48', '2025-05-10 21:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `generated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_list`
--

CREATE TABLE `subscribers_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(255) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_branches`
--

CREATE TABLE `supplier_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories`
--

CREATE TABLE `tax_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_categories`
--

INSERT INTO `tax_categories` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'KDV-10', 'KDV %10', 'Tıbbi Cihazlar için KDV %10', '2025-05-10 21:26:26', '2025-05-10 21:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories_tax_rates`
--

CREATE TABLE `tax_categories_tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_categories_tax_rates`
--

INSERT INTO `tax_categories_tax_rates` (`id`, `tax_category_id`, `tax_rate_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `is_zip` tinyint(1) NOT NULL DEFAULT 0,
  `zip_code` varchar(255) DEFAULT NULL,
  `zip_from` varchar(255) DEFAULT NULL,
  `zip_to` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `tax_rate` decimal(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `identifier`, `is_zip`, `zip_code`, `zip_from`, `zip_to`, `state`, `country`, `tax_rate`, `created_at`, `updated_at`) VALUES
(1, 'KDV10', 0, '41000', NULL, NULL, 'Kocaeli', 'TR', 10.0000, '2025-05-10 21:25:40', '2025-05-10 21:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `theme_customizations`
--

CREATE TABLE `theme_customizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_code` varchar(255) DEFAULT 'default',
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_customizations`
--

INSERT INTO `theme_customizations` (`id`, `theme_code`, `type`, `name`, `sort_order`, `status`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'default', 'image_carousel', 'Resim Karuseli', 1, 1, 1, '2025-05-06 22:00:10', '2025-05-07 02:33:54'),
(2, 'default', 'static_content', 'Teklif Bilgisi', 2, 1, 1, '2025-05-06 22:00:10', '2025-05-07 01:54:15'),
(3, 'default', 'category_carousel', 'Kategori Koleksiyonları', 3, 1, 1, '2025-05-06 22:00:10', '2025-05-11 00:59:05'),
(4, 'default', 'product_carousel', 'Yeni Ürünler', 4, 1, 1, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(5, 'default', 'static_content', 'En İyi Koleksiyonlar', 5, 0, 1, '2025-05-06 22:00:10', '2025-05-07 00:16:50'),
(6, 'default', 'static_content', 'Cesur Koleksiyonlar', 6, 0, 1, '2025-05-06 22:00:10', '2025-05-07 00:16:50'),
(7, 'default', 'product_carousel', 'Öne Çıkan Koleksiyonlar', 7, 0, 1, '2025-05-06 22:00:10', '2025-05-11 00:41:03'),
(8, 'default', 'static_content', 'Markalar', 18, 1, 1, '2025-05-06 22:00:10', '2025-05-07 13:58:48'),
(9, 'default', 'product_carousel', 'Tüm Ürünler', 9, 1, 1, '2025-05-06 22:00:10', '2025-05-11 00:39:34'),
(11, 'default', 'footer_links', 'Footer Links', 11, 1, 1, '2025-05-06 22:00:10', '2025-05-06 22:00:10'),
(12, 'default', 'services_content', 'Hizmet İçeriği', 6, 1, 1, '2025-05-06 22:00:10', '2025-05-11 00:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `theme_customization_translations`
--

CREATE TABLE `theme_customization_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_customization_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_customization_translations`
--

INSERT INTO `theme_customization_translations` (`id`, `theme_customization_id`, `locale`, `options`) VALUES
(1, 1, 'tr', '{\"images\":[{\"title\":\"medikal-cihazlar\",\"link\":\"medikal-cihazlar\",\"image\":\"storage\\/theme\\/1\\/Zl5Izm9Y2HrLshu4x1jX1vhRESuwhEASZ9y65buB.webp\"},{\"image\":\"storage\\/theme\\/1\\/buF2IDuWqiKE98rjAoqtBq5PALrm2jjBa7G8cxqq.webp\",\"link\":\"aksesuar-yedek-parca\",\"title\":\"aksesuar-yedek-parca\"},{\"image\":\"storage\\/theme\\/1\\/VxTLvuCxvSqdIZ8e7RtSKA1tzJX8mg3NeJ5neCvL.webp\",\"link\":\"protez-ortez-urunleri\",\"title\":\"protez-ortez-urunleri\"},{\"image\":\"storage\\/theme\\/1\\/BKjhrTICAMq2HJ0Nql4RVeD3LlPheBGFtIMrtUU5.webp\",\"link\":\"t\\u0131bbi-sarf-malzemeleri\",\"title\":\"Sarf Malzemeler\"}]}'),
(2, 2, 'tr', '{\"html\":\"<div class=\\\"home-offer\\\">\\r\\n    <a href=\\\"https:\\/\\/wa.me\\/9053319625528\\\" target=\\\"_blank\\\" style=\\\"text-decoration: none;\\\">\\r\\n        <h1 style=\\\"text-decoration: underline;\\\">\\r\\n            Hastaneler, klinikler ve distrib\\u00fct\\u00f6rler i\\u00e7in \\u00f6zel fiyatland\\u0131rma ve teknik destek sunuyoruz.\\r\\n        <\\/h1>\\r\\n    <\\/a>\\r\\n<\\/div>\",\"css\":\".home-offer h1 {\\r\\n    display: block;\\r\\n    font-weight: 500;\\r\\n    text-align: center;\\r\\n    font-size: 22px;\\r\\n    font-family: DM Serif Display;\\r\\n    background-color: #E8EDFE;\\r\\n    padding-top: 20px;\\r\\n    padding-bottom: 20px;\\r\\n}\\r\\n@media (max-width:768px) {\\r\\n  .home-offer h1 {\\r\\n    font-size: 28px;\\r\\n    color: #002a4d;\\r\\n    margin-bottom: 20px;\\r\\n    font-weight: 600;\\r\\n    text-align: center;\\r\\n    transition: color 0.3s ease;\\r\\n}\\r\\n\\r\\n    @media (max-width:525px) {\\r\\n      font-size: 28px;\\r\\n    color: #002a4d;\\r\\n    margin-bottom: 20px;\\r\\n    font-weight: 600;\\r\\n    text-align: center;\\r\\n    transition: color 0.3s ease;\\r\\n}\\r\\n    }\"}'),
(3, 3, 'tr', '{\"filters\":{\"sort\":\"asc\",\"limit\":\"10\"}}'),
(4, 4, 'tr', '{\"title\":\"Yeni \\u00dcr\\u00fcnler\",\"filters\":{\"new\":1,\"sort\":\"name-asc\",\"limit\":12}}'),
(5, 5, 'tr', '{\"html\":\"<div class=\\\"top-collection-container\\\"><div class=\\\"top-collection-header\\\"><h2>Yeni eklemelerimizle oyun!<\\/h2><\\/div><div class=\\\"top-collection-grid container\\\"><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/hGzEmkhNppA5easckCcOSLieAuuysC3XFDDze5Pq.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"Yeni eklemelerimizle oyun!\\\"><h3>Koleksiyonlar\\u0131m\\u0131z<\\/h3><\\/div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/wtt6NZDqONMqr08pEoqLCAzo0QNx4J5b8myQX39d.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"Yeni eklemelerimizle oyun!\\\"><h3>Koleksiyonlar\\u0131m\\u0131z<\\/h3><\\/div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/OBdpwgWKCWSDGM5K43eMbyvTt8KAs3MpCKmuezj9.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"Yeni eklemelerimizle oyun!\\\"><h3>Koleksiyonlar\\u0131m\\u0131z<\\/h3><\\/div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/NKCC3d4gAb7kNSlOdMxtLpGrkpaPZr2GPQHxNjHN.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"Yeni eklemelerimizle oyun!\\\"><h3>Koleksiyonlar\\u0131m\\u0131z<\\/h3><\\/div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/DgHHs0wvkoGfmv5MiK1kDKvYn0IuX248F8lA1jxQ.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"Yeni eklemelerimizle oyun!\\\"><h3>Koleksiyonlar\\u0131m\\u0131z<\\/h3><\\/div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/MiDN3fUkOyO12cBBZE5oShXFsGS8sPoAbokQ6L3f.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"Yeni eklemelerimizle oyun!\\\"><h3>Koleksiyonlar\\u0131m\\u0131z<\\/h3><\\/div><\\/div><\\/div>\",\"css\":\".top-collection-container {overflow: hidden;}.top-collection-header {padding-left: 15px;padding-right: 15px;text-align: center;font-size: 70px;line-height: 90px;color: #060C3B;margin-top: 80px;}.top-collection-header h2 {max-width: 595px;margin-left: auto;margin-right: auto;font-family: DM Serif Display;}.top-collection-grid {display: flex;flex-wrap: wrap;gap: 32px;justify-content: center;margin-top: 60px;width: 100%;margin-right: auto;margin-left: auto;padding-right: 90px;padding-left: 90px;}.top-collection-card {position: relative;background: #f9fafb;overflow:hidden;border-radius:20px;}.top-collection-card img {border-radius: 16px;max-width: 100%;text-indent:-9999px;transition: transform 300ms ease;transform: scale(1);}.top-collection-card:hover img {transform: scale(1.05);transition: all 300ms ease;}.top-collection-card h3 {color: #060C3B;font-size: 30px;font-family: DM Serif Display;transform: translateX(-50%);width: max-content;left: 50%;bottom: 30px;position: absolute;margin: 0;font-weight: inherit;}@media not all and (min-width: 525px) {.top-collection-header {margin-top: 28px;font-size: 20px;line-height: 1.5;}.top-collection-grid {gap: 10px}}@media not all and (min-width: 768px) {.top-collection-header {margin-top: 30px;font-size: 28px;line-height: 3;}.top-collection-header h2 {line-height:2; margin-bottom:20px;} .top-collection-grid {gap: 14px}} @media not all and (min-width: 1024px) {.top-collection-grid {padding-left: 30px;padding-right: 30px;}}@media (max-width: 768px) {.top-collection-grid { row-gap:15px; column-gap:0px;justify-content: space-between;margin-top: 0px;} .top-collection-card{width:48%} .top-collection-card img {width:100%;} .top-collection-card h3 {font-size:24px; bottom: 16px;}}@media (max-width:520px) { .top-collection-grid{padding-left: 15px;padding-right: 15px;} .top-collection-card h3 {font-size:18px; bottom: 10px;}}\"}'),
(6, 6, 'tr', '{\"html\":\"<div class=\\\"section-gap bold-collections container\\\"> <div class=\\\"inline-col-wrapper\\\"> <div class=\\\"inline-col-image-wrapper\\\"> <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/6\\/6a1Py8guIh5AmVVBZ067BJkno9WvxMtAlakaX3iP.webp\\\" class=\\\"lazy\\\" width=\\\"632\\\" height=\\\"510\\\" alt=\\\"Yeni Cesur Koleksiyonlar\\u0131m\\u0131za Haz\\u0131r Olun!\\\"> <\\/div> <div class=\\\"inline-col-content-wrapper\\\"> <h2 class=\\\"inline-col-title\\\"> Yeni Cesur Koleksiyonlar\\u0131m\\u0131za Haz\\u0131r Olun! <\\/h2> <p class=\\\"inline-col-description\\\">Yeni Cesur Koleksiyonlar\\u0131m\\u0131z\\u0131 Tan\\u0131t\\u0131yoruz! Cesur tasar\\u0131mlar ve canl\\u0131 ifadelerle tarz\\u0131n\\u0131z\\u0131 y\\u00fckseltin. Gard\\u0131robunuzu yeniden tan\\u0131mlayan \\u00e7arp\\u0131c\\u0131 desenler ve cesur renklere ke\\u015ffedin. Ola\\u011fan\\u00fcst\\u00fcye haz\\u0131r olun!<\\/p> <button class=\\\"primary-button max-md:rounded-lg max-md:px-4 max-md:py-2.5 max-md:text-sm\\\">Koleksiyonlara G\\u00f6z At<\\/button> <\\/div> <\\/div> <\\/div>\",\"css\":\".section-gap{margin-top:80px}.direction-ltr{direction:ltr}.direction-rtl{direction:rtl}.inline-col-wrapper{display:grid;grid-template-columns:auto 1fr;grid-gap:60px;align-items:center}.inline-col-wrapper .inline-col-image-wrapper{overflow:hidden}.inline-col-wrapper .inline-col-image-wrapper img{max-width:100%;height:auto;border-radius:16px;text-indent:-9999px}.inline-col-wrapper .inline-col-content-wrapper{display:flex;flex-wrap:wrap;gap:20px;max-width:464px}.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{max-width:442px;font-size:60px;font-weight:400;color:#060c3b;line-height:70px;font-family:DM Serif Display;margin:0}.inline-col-wrapper .inline-col-content-wrapper .inline-col-description{margin:0;font-size:18px;color:#6e6e6e;font-family:Poppins}@media (max-width:991px){.inline-col-wrapper{grid-template-columns:1fr;grid-gap:16px}.inline-col-wrapper .inline-col-content-wrapper{gap:10px}} @media (max-width:768px){.inline-col-wrapper .inline-col-image-wrapper img {width:100%;} .inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:28px !important;line-height:normal !important}} @media (max-width:525px){.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:20px !important;} .inline-col-description{font-size:16px} .inline-col-wrapper{grid-gap:10px}}\"}'),
(7, 7, 'tr', '{\"title\":\"\\u00d6ne \\u00c7\\u0131kan \\u00dcr\\u00fcnler\",\"filters\":{\"featured\":1,\"sort\":\"name-desc\",\"limit\":12}}'),
(8, 8, 'tr', '{\"html\":\"<section class=\\\"brand-showcase\\\">\\r\\n    <div class=\\\"brand-title\\\">\\r\\n         <h2>Sekt\\u00f6r\\u00fcn En B\\u00fcy\\u00fck <span class=\\\"highlight-word\\\">Markalar\\u0131 Bizimle<\\/span><\\/h2>\\r\\n\\r\\n    <\\/div>\\r\\n    <div class=\\\"brand-grid\\\">\\r\\n        <div class=\\\"brand-logo\\\">\\r\\n            <img class=\\\"lazy\\\" data-src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/theme\\/8\\/kFlgsmiDSQQhM5ZrtvVpn7Uc4FNvvmWARZnND9jR.webp\\\" alt=\\\"Brand 1\\\">\\r\\n        <\\/div>\\r\\n        <div class=\\\"brand-logo\\\">\\r\\n            <img class=\\\"lazy\\\" data-src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/theme\\/8\\/mcVXkNFAysHXEeCFjJTAdWGmIpGP0ZvLvhLk53aT.webp\\\" alt=\\\"Brand 2\\\">\\r\\n        <\\/div>\\r\\n        <div class=\\\"brand-logo\\\">\\r\\n            <img class=\\\"lazy\\\" data-src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/theme\\/8\\/VOQbCA5R54vjIvZrXxVnxueofSftMemJnIvou9Vk.webp\\\" alt=\\\"Brand 3\\\">\\r\\n        <\\/div>\\r\\n        <div class=\\\"brand-logo\\\">\\r\\n            <img class=\\\"lazy\\\" data-src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/theme\\/8\\/YD6dI9lEvIyGVO3gkxUkqPqeLVE0zmfS9adMnndJ.webp\\\" alt=\\\"Brand 4\\\">\\r\\n        <\\/div>\\r\\n        <div class=\\\"brand-logo\\\">\\r\\n<img class=\\\"lazy\\\" data-src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/theme\\/8\\/acE03MCDhsXEGxQuX2gRrrMyGEjpUhlh4vMXmru0.webp\\\">        <\\/div>\\r\\n        <div class=\\\"brand-logo\\\">\\r\\n        <img class=\\\"lazy\\\" data-src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/theme\\/8\\/cLbkyRTx7Xvk1H6zwuAZNs6C7C6xCNwFlIbu3dtH.webp\\\">\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n<\\/section>\",\"css\":\"\\/* General Section Styling *\\/\\r\\n .brand-showcase {\\r\\n    background: #ffffff;\\r\\n    padding: 80px 20px;\\r\\n    font-family:\\\"DM Serif Display\\\", serif;\\r\\n}\\r\\n.highlight-word {\\r\\n    color: #002a4d; \\/* same deep navy for harmony *\\/\\r\\n    font-style: normal;\\r\\n    font-weight: 600;\\r\\n    background-image: linear-gradient(to right, #0072ce, #00c6ff);\\r\\n    background-clip: text;\\r\\n    -webkit-background-clip: text;\\r\\n    color: transparent;\\r\\n    letter-spacing: 0.3px;\\r\\n}\\r\\n\\r\\n\\/* Title Area *\\/\\r\\n .brand-title {\\r\\n    display: flex;\\r\\n    justify-content: center;\\r\\n    margin-bottom: 50px;\\r\\n}\\r\\n.brand-title h2 {\\r\\n    font-size: 36px;\\r\\n    font-weight: 400;\\r\\n    color: #002a4d;\\r\\n    text-align: center;\\r\\n    margin: 0;\\r\\n    text-transform: uppercase;\\r\\n    letter-spacing: 0.5px;\\r\\n    position: relative;\\r\\n}\\r\\n\\/* Elegant Underline Effect *\\/\\r\\n .brand-title h2::after {\\r\\n    content:\\\"\\\";\\r\\n    position: absolute;\\r\\n    bottom: -10px;\\r\\n    left: 50%;\\r\\n    transform: translateX(-50%);\\r\\n    width: 60px;\\r\\n    height: 3px;\\r\\n    background: linear-gradient(to right, #0072ce, #00c6ff);\\r\\n    border-radius: 2px;\\r\\n}\\r\\n\\/* Horizontal Scrollable Grid *\\/\\r\\n .brand-grid {\\r\\n    display: flex;\\r\\n    justify-content: center;\\r\\n    align-items: center;\\r\\n    gap: 50px;\\r\\n    overflow-x: auto;\\r\\n    scroll-snap-type: x mandatory;\\r\\n    padding: 10px 0;\\r\\n    -webkit-overflow-scrolling: touch;\\r\\n}\\r\\n.brand-grid::-webkit-scrollbar {\\r\\n    display: none;\\r\\n}\\r\\n\\/* Logo Card Styling *\\/\\r\\n .brand-logo {\\r\\n    flex: 0 0 auto;\\r\\n    width: 180px;\\r\\n    height: 100px;\\r\\n    background: linear-gradient(to bottom right, #f8f5f2, #f2eee9);\\r\\n    border-radius: 14px;\\r\\n    border: 1px solid #e0ddd9;\\r\\n    box-shadow: inset 0 0 4px rgba(255, 255, 255, 0.4), 0 8px 24px rgba(0, 0, 0, 0.06);\\r\\n    display: flex;\\r\\n    align-items: center;\\r\\n    justify-content: center;\\r\\n    transition: transform 0.4s ease, box-shadow 0.4s ease, filter 0.4s ease;\\r\\n    filter: grayscale(100%);\\r\\n    scroll-snap-align: center;\\r\\n    padding: 15px;\\r\\n    opacity: 0;\\r\\n    animation: fadeIn 0.8s ease forwards;\\r\\n}\\r\\n\\/* On Hover *\\/\\r\\n .brand-logo:hover {\\r\\n    transform: translateY(-8px) scale(1.02);\\r\\n    filter: grayscale(0%);\\r\\n    box-shadow: 0 12px 30px rgba(0, 0, 0, 0.1);\\r\\n}\\r\\n\\/* Logo Image Sizing *\\/\\r\\n .brand-logo img {\\r\\n    max-height: 60px;\\r\\n    max-width: 100%;\\r\\n    object-fit: contain;\\r\\n}\\r\\n\\/* Subtle Fade-In Animation *\\/\\r\\n @keyframes fadeIn {\\r\\n    to {\\r\\n        opacity: 1;\\r\\n    }\\r\\n}\"}'),
(9, 9, 'tr', '{\"title\":\"T\\u00fcm \\u00dcr\\u00fcnler\",\"filters\":{\"sort\":\"price-desc\",\"limit\":\"12\"}}'),
(11, 11, 'tr', '{\"column_1\":[{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/about-us\",\"title\":\"Hakk\\u0131m\\u0131zda\",\"sort_order\":1},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/contact-us\",\"title\":\"Bize Ula\\u015f\\u0131n\",\"sort_order\":2},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/customer-service\",\"title\":\"M\\u00fc\\u015fteri Hizmetleri\",\"sort_order\":3},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/whats-new\",\"title\":\"Yenilikler\",\"sort_order\":4},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/terms-of-use\",\"title\":\"Kullan\\u0131m Ko\\u015fullar\\u0131\",\"sort_order\":5},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/terms-conditions\",\"title\":\"\\u015eartlar ve Ko\\u015fullar\",\"sort_order\":6}],\"column_2\":[{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/privacy-policy\",\"title\":\"Gizlilik Politikas\\u0131\",\"sort_order\":1},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/payment-policy\",\"title\":\"\\u00d6deme Politikas\\u0131\",\"sort_order\":2},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/shipping-policy\",\"title\":\"Kargo Politikas\\u0131\",\"sort_order\":3},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/refund-policy\",\"title\":\"\\u0130ade Politikas\\u0131\",\"sort_order\":4},{\"url\":\"http:\\/\\/127.0.0.1:8000\\/page\\/return-policy\",\"title\":\"\\u0130ade Politikas\\u0131\",\"sort_order\":5}]}'),
(12, 12, 'tr', '{\"services\":[{\"service_icon\":\"icon-truck\",\"description\":\"T\\u00fcm sipari\\u015fleriniz, T\\u00fcrkiye genelinde \\u00fccretsiz kargo hizmetimizle g\\u00fcvenli ve h\\u0131zl\\u0131 \\u015fekilde teslim edilmektedir.\",\"title\":\"\\u00dccretsiz Kargo\"},{\"service_icon\":\"icon-product\",\"description\":\"Sat\\u0131n ald\\u0131\\u011f\\u0131n\\u0131z \\u00fcr\\u00fcnleri, 14 g\\u00fcn i\\u00e7erisinde ko\\u015fulsuz olarak kolayca de\\u011fi\\u015ftirme imkan\\u0131na sahipsiniz\",\"title\":\"\\u00dcr\\u00fcn De\\u011fi\\u015ftirme\"},{\"service_icon\":\"icon-dollar-sign\",\"description\":\"kredi kartlar\\u0131yla yapaca\\u011f\\u0131n\\u0131z al\\u0131\\u015fveri\\u015flerde taksitli \\u00f6deme avantajlar\\u0131ndan yararlanabilirsiniz.\",\"title\":\"Kredi Kart\\u0131na Taksit \\u0130mkan\\u0131\"},{\"service_icon\":\"icon-support\",\"description\":\"Deneyimli m\\u00fc\\u015fteri temsilcilerimiz, haftan\\u0131n her g\\u00fcn\\u00fc ve g\\u00fcn\\u00fcn her saati sizlere destek sunmak \\u00fczere hizmetinizdedir.\",\"title\":\"7\\/24 M\\u00fc\\u015fteri Deste\\u011fi\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `url_rewrites`
--

CREATE TABLE `url_rewrites` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `request_path` varchar(255) NOT NULL,
  `target_path` varchar(255) NOT NULL,
  `redirect_type` varchar(255) DEFAULT NULL,
  `locale` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `url_rewrites`
--

INSERT INTO `url_rewrites` (`id`, `entity_type`, `request_path`, `target_path`, `redirect_type`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'product', 'firstmed-tek-kanallı-ekg-cihazı-ecg-100g\'in kopyası', 'firstmed-6-kanallı-ekg-cihazı-ecg-600g', '301', 'tr', '2025-05-07 12:56:22', '2025-05-07 12:56:22'),
(2, 'product', 'firstmed-6-kanallı-ekg-cihazı-ecg-600g\'in kopyası', 'semcares-3-kanallı-ekg-cihazı-em-301', '301', 'tr', '2025-05-07 12:59:43', '2025-05-07 12:59:43'),
(3, 'product', 'semcares-3-kanallı-ekg-cihazı-em-301\'in kopyası', 'microcor-pc-tabanlı', '301', 'tr', '2025-05-07 13:02:09', '2025-05-07 13:02:09'),
(8, 'product', 'nebulizator-maskesi', 'nebulizator-maskesi-sln', '301', 'tr', '2025-05-07 13:35:59', '2025-05-07 13:35:59'),
(9, 'product', 'oksijen-maskesi', 'oksijen-maskesi-sln', '301', 'tr', '2025-05-07 13:36:24', '2025-05-07 13:36:24'),
(10, 'product', 'ambu-cihazı-seti-cocuk-pvc', 'ambu-cihazı-seti-cocuk-pvc-sln', '301', 'tr', '2025-05-07 13:36:36', '2025-05-07 13:36:36'),
(11, 'product', 'airway-solunum-hava-yolu', 'airway-solunum-hava-yolu-sln', '301', 'tr', '2025-05-07 13:36:47', '2025-05-07 13:36:47'),
(12, 'product', 'oksijen-kanulu-2mt', 'oksijen-kanulu-2mt-sln', '301', 'tr', '2025-05-07 13:37:01', '2025-05-07 13:37:01'),
(13, 'product', 'plusmed-compactneb-kompresorlu-nebulizator-cihazı', 'plusmed-compactneb-kompresorlu-nebulizator-cihazı-sln', '301', 'tr', '2025-05-07 13:37:13', '2025-05-07 13:37:13'),
(14, 'product', 'plusmed-compactneb-kompresorlu-nebulizator-cihazı\'in kopyası', 'plusmed-respiad-mesh-nebulizator-cihazı-sln', '301', 'tr', '2025-05-07 13:39:43', '2025-05-07 13:39:43'),
(15, 'product', 'plusmed-respiad-mesh-nebulizator-cihazı-sln\'in kopyası', 'respirox-kompresorlu-nebulizator-cihazı-axd-303-sln', '301', 'tr', '2025-05-07 13:41:53', '2025-05-07 13:41:53'),
(16, 'product', 'respirox-kompresorlu-nebulizator-cihazı-axd-303-sln\'in kopyası', 'omron-c102-total-kompresorlu-nebulizator-cihazı-sln', '301', 'tr', '2025-05-07 13:43:54', '2025-05-07 13:43:54'),
(17, 'product', 'omron-c102-total-kompresorlu-nebulizator-cihazı-sln\'in kopyası', 'omron-c101-essential-kompresorlu-nebulizator-cihazı-sln', '301', 'tr', '2025-05-07 13:46:13', '2025-05-07 13:46:13'),
(18, 'category', 'ultrason-probları', 'defibrilator-cihazları', '301', 'tr', '2025-05-07 14:12:11', '2025-05-07 14:12:11'),
(19, 'product', 'def-cardiangel-oed-defibrilator-cihazı\'in kopyası', 'def-aselsan-heartline-ekranlı-tam-otomatik-defibrilator-cihazı-oed', '301', 'tr', '2025-05-07 14:19:34', '2025-05-07 14:19:34'),
(20, 'product', 'def-aselsan-heartline-ekranlı-tam-otomatik-defibrilator-cihazı-oed\'in kopyası', 'def-aselsan-alarmlı-metal-oed-cihazı-kabini', '301', 'tr', '2025-05-07 14:22:04', '2025-05-07 14:22:04'),
(21, 'product', 'def-aselsan-alarmlı-metal-oed-cihazı-kabini\'in kopyası', 'def-aselsan-oed-cihazı-defibrilator-pedi', '301', 'tr', '2025-05-07 14:23:33', '2025-05-07 14:23:33'),
(22, 'product', 'def-aselsan-alarmlı-metal-oed-cihazı-kabini\'in kopyası', 'def-mindray-beneheart-c1a-otomatik-eksternal-defibrilator', '301', 'tr', '2025-05-07 14:27:42', '2025-05-07 14:27:42'),
(23, 'category', 'ultrason-cihazları', 'defibrilator-cihazlar', '301', 'tr', '2025-05-07 14:31:50', '2025-05-07 14:31:50'),
(24, 'product', 'aml-siselikli-pansuman-arabası\'in kopyası', 'aml-kerbl-elastrator-pensi', '301', 'tr', '2025-05-07 14:43:38', '2025-05-07 14:43:38'),
(25, 'product', 'aml-kerbl-elastrator-pensi\'in kopyası', 'aml-vzn-hegar-buji-seti-14-parca', '301', 'tr', '2025-05-07 14:45:28', '2025-05-07 14:45:28'),
(26, 'product', 'aml-siselikli-pansuman-arabası\'in kopyası', 'aml-paslanmaz-govde-nikelaj-ayaklı-serum-askısı', '301', 'tr', '2025-05-07 14:47:43', '2025-05-07 14:47:43'),
(27, 'product', 'aml-vzn-hegar-buji-seti-14-parca\'in kopyası', 'aml-vzn-cerrahi-dikis-seti-11-parca', '301', 'tr', '2025-05-07 14:50:10', '2025-05-07 14:50:10'),
(28, 'product', 'aml-vzn-cerrahi-dikis-seti-11-parca\'in kopyası', 'aml-medwelt-cerrahi-dikis-seti-7li', '301', 'tr', '2025-05-07 14:53:16', '2025-05-07 14:53:16'),
(29, 'category', 'kalca-protezleri', 'kilitmeyen-plakalar', '301', 'tr', '2025-05-07 15:29:19', '2025-05-07 15:29:19'),
(30, 'product', 'pro-moduler-femoral-govde\'in kopyası', 'pro-kare-femoral-stem-1', '301', 'tr', '2025-05-07 15:37:27', '2025-05-07 15:37:27'),
(31, 'product', 'pro-kare-femoral-stem-1\'in kopyası', 'pro-35-mm-klavikula-kilitli-kompresyon-plak', '301', 'tr', '2025-05-07 15:39:24', '2025-05-07 15:39:24'),
(32, 'product', 'pro-35-mm-klavikula-kilitli-kompresyon-plak\'in kopyası', 'pro-35-mm-klavikula-hook-kilitli-plak', '301', 'tr', '2025-05-07 15:41:01', '2025-05-07 15:41:01'),
(35, 'product', '35-mm-125-dis-adimli-kortikal-vida\'in kopyası', 'pro-35-mm-full-yivli-spongioz-vida', '301', 'tr', '2025-05-07 15:46:47', '2025-05-07 15:46:47'),
(36, 'product', '35-mm-125-dis-adimli-kortikal-vida', 'pro-35-mm-125-dis-adimli-kortikal-vida', '301', 'tr', '2025-05-07 15:47:11', '2025-05-07 15:47:11'),
(37, 'product', '2,7/3,5 MM DİSTAL KLAVİKULA KİLİTLİ KOMPRESYON PLAK', 'pro-2735-mm-distal-klavikula-kilitli-kompresyon-plak', '301', 'tr', '2025-05-07 15:47:24', '2025-05-07 15:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `request` mediumtext DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `referer` mediumtext DEFAULT NULL,
  `languages` text DEFAULT NULL,
  `useragent` text DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `device` text DEFAULT NULL,
  `platform` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `visitable_type` varchar(255) DEFAULT NULL,
  `visitable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_type` varchar(255) DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-06 22:00:26', '2025-05-06 22:00:26'),
(2, 'GET', '[]', 'http://127.0.0.1:8000/themes/shop/default/build/assets/logo-CZWQQgOF.svg', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6ImNodlJvTTYyOEFNMlcwVnlReWtYYnc9PSIsInZhbHVlIjoiZGR3Y1BYYlVTTkdsUXdxVEY2VEU3MWpsZ2lqWEVva3Q1Y21nOG5TMXpBZmNjZitnWVVUcnpyVi95ZklXRnJyaXRMY25rS0RSTk1VMlB3QTh1NVp6c2FHSHhSYjAvWWlhT2txUlJOV01HOWZ6d1VxTDhFYTVXREtkb2M2YUZUeGIiLCJtYWMiOiIwYzI3M2MzZTM5ZjJiOTMwNjkyODk2MjkwY2FlZjFmNTRmMjU3NDdjODQ1ZTVmN2E0M2U4ZjdiNTFhMmU1YTkyIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InY3Y1JwNFFreWpWMEowS2Z4UGpjL2c9PSIsInZhbHVlIjoiNU1FVlZLM2JKakRORkRGUWpDSWFuaWw1dDdJZE1vdVFFRTQ3bkJKMVFucW94OGFzYWdGWEhtZ2k4RitEaXUvMVZrNTd3d2xrWnJoNzJGL2ZwTTFCNDlkaDVTVEdMd3NOM0YrZzNWR3J2bmJTdGY1WktvR3RBN2pMcUZwSVhhNDEiLCJtYWMiOiI0MDcyYmI0NGMyOWFmOTg3ODNmOTM0NDI0MzkyMGQwNTc2NzYwZjc4NTlkMGI1NTE1NzdiYWEyNmEyM2IyMDIzIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-06 22:00:34', '2025-05-06 22:00:34'),
(3, 'GET', '[]', 'http://127.0.0.1:8000/themes/shop/default/build/assets/favicon-Df9chQdB.ico', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6Ii96MjlsVCtXZkVvM0UzaEpLYkpIa1E9PSIsInZhbHVlIjoiRmtNdDNWdm92MTZHNGR2bGpqNlJ1dGUxZHFnZmsrRXFucFIrM0NzUXlyeHgvY3V6eDNzV3poK1g4dGFCdWE5OERaV2ZhSU1GeXl4MW00czR6NzMvU09WVklvRUtDVm4zOWhiV0lSWW1tRlFnMTdXVGNZWGZxUW1sWVJYYlg3SVQiLCJtYWMiOiIzZTFhMzA3OGM4NmM1NGJkMThmYmRmMzljZTc4ZTZkNDhkNGQyZDQwMmQzYzEwOGZjNTNkMWNiMjYwY2Q4M2I3IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Ii9ZbDdITDF3VzRtdTRVdGF2VkFic1E9PSIsInZhbHVlIjoiMDNmWFhIOTl1MDZQZS9BMzZBd01tbUVzNVlIa3ZTYSttSDNKZkRNemk4Y1h3a0JaaGhqQnNWM21oY21DZ0N3QTZNQXRVaEN0K0p3dDFkQ0xpUm1sdUFoYnl5MktLOUpZNEJiREVpMWc0VC9HZVpwMzFYOGZhWFgwWmpldXEzdG8iLCJtYWMiOiJlOTc5MWVkMjRlN2RlZDE3NTM3NjJlYmMzOGNlMzdjZjliZjczZGViYzFjYWFmODFkZmQ5MTQ0NzgzZDgyMDEzIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-06 22:00:46', '2025-05-06 22:00:46'),
(4, 'GET', '[]', 'http://127.0.0.1:8000/medikal-cihazlar', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6ImV3akVwQVBnY3BLWHFFS2hvYTZycFE9PSIsInZhbHVlIjoiNGRVWk1PRVRYbFF5cWNJVktiNmM2TENhY1N2K0lieDBRWTJxL0VyOHc5eDBWd0J1NXc4WXAyR1c5ZXlWY3gxSU4yWlZIUFFHeUdUT011dHZQelpEK2FaR3FPS2ZXYmpjZjNIZDc0QUNuY053aUxhb1E2V0YxRHRBKzZseEViOXgiLCJtYWMiOiI3MjVjZjNhMTQ2MWI0OTdkNDYzODQ1ZjM3ZjYzMWY1ZGE0NTFhYzY3MmRkYmEyN2EzZjZlMjU0NDg1YTg2OGFlIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6ImRsRjVvWlh1OFB5TUF4MysrK0lEOFE9PSIsInZhbHVlIjoiZWFIZFRZKy8xb1lWNDQzblhDODZHUlFtZUJiMGhJaUV1OGJTWjZhcC9MUzF2MXBCcWlhV3YwVzlwNzlpYlZvN0JtcloxNlZIdmdxS0lzNC9IMWEvMldvSkNPNW9GK1RiUS9hOU8rVjI2UThneGZzMEdVK0RodVJ3TDlYbVhQZWQiLCJtYWMiOiJiMDhkM2JhOTk4MDA3NDJmYzc0N2UzOGNjMmZlZDAyMjQxNDE5ZWMwNzZhMjU3MWY1N2UyY2YxZjNiMzgxY2U4IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, NULL, NULL, 1, '2025-05-07 00:18:26', '2025-05-07 00:18:26'),
(5, 'GET', '[]', 'http://127.0.0.1:8000/aksesuar-yedek-parca', 'http://127.0.0.1:8000/medikal-cihazlar?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/medikal-cihazlar?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6IjNpQmJyK2lSZE1Cd1B0SXRvelFYeHc9PSIsInZhbHVlIjoic2ZVcm1JT0dVYmFpRXhEMnlXc2RLNk1BZE9rUG5UWGpRM1UwR1RZaG1nQUpEeGRGNms3QjVLUk9la2hhRENwOThpNHR2NmR2TmhXTEN6Z3JwMGtHcExuMlJhTzFyL25tandpRExZVVorTUhPLzZaWU0rR0pQaldFcmlWM2RHWjgiLCJtYWMiOiI2Mzc5ZTBjN2M4YThhYzk0NGY0YzRkNWJiOGUwMmQ4YzE5MTEyN2UxN2EyMzBmNDVkZjM2MjA3YmIxNzUwMjcwIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IkM1dlFYRDcxZjB1MHFaY0pwNU9CNXc9PSIsInZhbHVlIjoiWlJ6NjBWSDdjUkF1MDVOTTFpNGRSUDVXTXgxdFkwbFAxZ29TdFlBWUswanh2SHBPb3dLR0FhYmhnSE1FTlQ0TnQ1MXFYS09NTFl5dm9mekp0Q3RtRWJSaHAxYjhMSE9pY2hEY2pLMFBOcDAwQXdmTjhkTVZCQ0tEbW02WitXS1UiLCJtYWMiOiJlOWEyN2I5MjllOWEwMjFkNjQyOGNhOTljOWRiMDhlODE0OGExNWZkMDM3ZTVhYzg3ZTViMzVmOTM3Y2MzYzkwIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 7, NULL, NULL, 1, '2025-05-07 01:55:04', '2025-05-07 01:55:04'),
(6, 'GET', '[]', 'http://127.0.0.1:8000/protez-ortez-urunleri', 'http://127.0.0.1:8000/aksesuar-yedek-parca?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/aksesuar-yedek-parca?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6Ik44RXk0cGNidENJbGw3YzBTMHlhK2c9PSIsInZhbHVlIjoiUXYySnVpT3FHM0NwdmVJbGRuTERKQVljRmlRRzNVOGMyM0h5Q0NraVo3SVZlTGg0a3dPSzBRdkwyUEhVMTM1QmNLaGtxUk5qQ1hJbzZyL0hPd0JIUmdwVkRxMkR0UUJNbVVZbVZPVUVlTVZNV3JmUmk5TmcxWWRzWjgwVzRYTkUiLCJtYWMiOiJjOTM2ZmUwNmY1MDkwMzI4NmFhMTgyOTIxYmJhMTc1MGFkYmUyNmI2N2FhNjg5ZTk3YTg3ZWM4YmZhNWMwZjViIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IllPMHp4MUN1eThidUgvcERsbkdVdHc9PSIsInZhbHVlIjoiSkpoR1ZhUE1maUwwYkVTVjZwb240RVVMZnlFZXRwV3doT1ZyZm5KV2ZLNm1UdTdIa1FvdmRjVmVzNFFpOUx6SnpsOXFSam5KalhtdGluV1JxcU83V3c4WmhHWXgrbFoxT2ZRRWREcEluUzBCOHJDS0RoemJ0c0U2dFdzdStlaDIiLCJtYWMiOiI0NWE1ZDc0ZDUxYzZhMzZjOWZiMzc1ZjdkNjdjMzg3N2Q3YmFmZGQwODUxYTdjYTczNWJlZjVmOGVjNjVjOTU5IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 12, NULL, NULL, 1, '2025-05-07 01:55:25', '2025-05-07 01:55:25'),
(7, 'GET', '[]', 'http://127.0.0.1:8000/t%C4%B1bbi-sarf-malzemeleri', 'http://127.0.0.1:8000/protez-ortez-urunleri?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/protez-ortez-urunleri?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6IktaK1FnT3NtOXNxQ1hXQjRXU1k4c2c9PSIsInZhbHVlIjoiSUp0S2ZmZTcxUGU5QnZaaWN5Ti9IL1kyVXZ6UWF1ek44ZmJXZjdxeG0ycHZ2K2pVSzViVzZuNms3NUVQMk5sRzh3dlVXQk1YTnJmUThzK1UzeGlIaGo3QUtDZWpxSy9nd2d2MDhxekFSSEpkNGxEYW1zZkJPUUZOeDNlK05wSlEiLCJtYWMiOiIzOWQwYTY2YjNkZTAyNTQ5Zjc3YWEzMmEzN2ZhNzU0Y2E0NzlkNzdlNTNmM2Y4YTI5MTcyOTBlMDJmNzkwMDViIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6ImxlcWVHamVNSWhzODk4WjVuNERYZUE9PSIsInZhbHVlIjoiOGhNcC96bXI3d0ZTc0NGbU1UZk5LREVvK1hYdEZYcG1XN29iamU4SHNWZFlXK2ZocXJEbUFXdk5lTm1RaUNudkd1YmlBdndIYXFWQ3dQbGpGZlNJa1dhOU5GSGtsSytxUFN0enQ3a3MzZ0N3Y2VtcHVpU3BxYjFPb0JvQkswdEoiLCJtYWMiOiI5YmQxMTE1ZWE2N2JjMDlmZTc4MDkwYTM2N2FiMmY1YjhjNTJhMThlYzAyNmYyZDZmNjI5MTljYTZhOGQzN2M2IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 15, NULL, NULL, 1, '2025-05-07 01:55:40', '2025-05-07 01:55:40'),
(8, 'GET', '[]', 'http://127.0.0.1:8000/branul-kanul', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6Ii95ei9zYUQzendIU01hbDBkRjFVVmc9PSIsInZhbHVlIjoicHJRSVRGbENscmVBRVhEUW5pam5OQ1JtdlgzNVNrK1RvTXBTbkNDbExwTGpFbi9Uamw5Umw0VXlReExJVnM4NU9MYTNNSTFkamN6cTRwSXNVZFcrUjhjazFaOFdpSzFYa0dNM2V4bmZjN0RtQy9kbGpacDdSNWRVbEJ5M3NnaVoiLCJtYWMiOiIwZWRiM2ZmY2VlYTBiNzViYjUwZjNjYzJhY2IxMzMwOGM0ZDRhNDE4NzczMzFlMWMzODhkMDhkMDkwMDk5MjkyIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InN5K0owRnl0YW1RUjA3NjlqeTVGWFE9PSIsInZhbHVlIjoiSFFVTEdZbXlTWVd3VEtQNmJDdVdWS1hQUTFyaUV6NUEraHNyTnpDOGNPTWl5WlNLRTFSS296aDIzbVRmN01OUEJhRExjRjZSS0liNVcwbHNZL3BkamQ1TmRBVUJYUGI0UlJqZEx2eWZaVTNmOEVMM09EbjBQV1NNNnB4VHRrWEoiLCJtYWMiOiI5ZDc2YTdhNjY2NGMwNjQ3ZWFlYzIyMDkyZjNiYmRmY2I3YmI2MWYwMDczYjMyNjI2NTgxOTYzNWM3OWNlMjFjIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 1, NULL, NULL, 1, '2025-05-07 02:50:06', '2025-05-07 02:50:06'),
(9, 'GET', '[]', 'http://127.0.0.1:8000/tek-kullan%C4%B1ml%C4%B1k-medikal-urunler', 'http://127.0.0.1:8000/t%C4%B1bbi-sarf-malzemeleri?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/t%C4%B1bbi-sarf-malzemeleri?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6IjNHTndtYUhxRm1uNklsSm9EWk05ZFE9PSIsInZhbHVlIjoiWU4wcXRDTXVCRTlkcVcrcjhUb0ZOK1drc21ibTEyNnh1NnFGSUd2VzlUY2hMYmFxWTM2QVZVVmdNSy9RTUw4YmdReEdESzBmY1NiSTNDSE5lejFjWFRiV29mdk15YXRFSTBPdHExdWNMLzlnNENBMjBTR0x1bUZZR1EvT3RUbEIiLCJtYWMiOiJlZDVjMTBiNTAwY2NiYzZjZTUxNWZiNDI2NzY3NTBiZjU5MzVhODgzMzMyNTYzNWIzZDAyMmZkOTk2MTIzZTZlIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IkcxRVBIZnBic2VRRlVDTXJkeXV2TkE9PSIsInZhbHVlIjoidmdKU3NMRFROL1N0WHFQRzNJditIc0ZEc0RZTkNERk16QUFIa2hpM0UwcUlQS3dFaEs2aFZEMkNTa045dXpwTm9DcC9uZHluSXF3L09nL1V3QTVKdm54cTF3OHNwVmR3dWRMZDNjR1NrcTVQVDlndEpmdXpHU2I1MXdBUmtPVnoiLCJtYWMiOiI1MzdiYTEwZmM4ZmZiYzhhNTU2ZWIyMTRhNzYyMjcwYTFlMzliNGYwNjA3NjY4OWZlZDg4ODU5N2ZiMGUxMjcwIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 17, NULL, NULL, 1, '2025-05-07 03:15:59', '2025-05-07 03:15:59'),
(10, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IjQxOXJqVjQzZzRySVZNcGMyVWlNcGc9PSIsInZhbHVlIjoiZFc3aWtxT3hEajg1aEhyaUMrLzk1SU5XaVZOK0VreG1YeGV5enJNaXJYamhOcXdSTVo5N1UwWTBvOXQxS3BJSmRwMHZtTVkrTW5DTVUzTndrNWNLZlBMZk9xajBQSFNUYnBualIwMmlyTUJMMXA2bTFmLy9YZXN2a3Q5RG9URFQiLCJtYWMiOiIxYzJmNmNmYjgyNzZjNGFkMDFhNGZmYjg0ZGFjZTNlOTJlMzJmMTQyYWFlZTI1ZjBmZTAzOWVmMWUwOWZkYjM0IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InFRSkJZUXJMaEQrcnFlWm9sZGFPWmc9PSIsInZhbHVlIjoiRHQzb2dRY2RIdEdDK21WOThiWUhLVHJOb1g4elZwVDlxN0thVStVMll6QnM5djRaSUlDeXh4ekRydlBKZXdnL1hPU1AwZTlncjVhUjY0WjcwWm5nOUwvK2FtVkJUK2J3eEdNVEsyejBGNHdObTVDcVZiSHdNbDh6am1uOHRHRFIiLCJtYWMiOiI1NDkwODdmZGYxNjE0MDJiOWIwMThmMzFjZTZmNDVkZmY2NzNhNmJmYTNjYTljY2YyZjI0MThiZGU4NGM2NzQ4IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 04:16:19', '2025-05-07 04:16:19'),
(11, 'GET', '[]', 'http://127.0.0.1:8000/semcares-3-kanall%C4%B1-ekg-cihaz%C4%B1-em-301', 'http://127.0.0.1:8000/medikal-cihazlar?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/medikal-cihazlar?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IklmN3I1VTFDOEh2cTVvK25IcU93VFE9PSIsInZhbHVlIjoiaENrM0FKc24xWGN1TDdlMDYwSE9tUFphUU00eXVBcWJrVWpoRmZ5NDltLzk1Z1EvUi9RV0hLcncwZ2Z6eHhqV2ttcGppSk9mVnExN2J4TXhIY0FWVzJxa0lhUzloRDB6Z1NUcjl3d2NEdHllQldzaS8xYXdVek9tY2c5TXpGdzQiLCJtYWMiOiJiN2FiMmIyYzQzMjU2OWRhZmQ4ZDkwMzEwNWY2OGYwODUxMzg4MzQ2ZTZmYzI3MWNlZmE1YTEzZTc2NjFiNzExIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InBpZS8vYkZNZmRvcS9ZMDJjNU1zN0E9PSIsInZhbHVlIjoiNmNNMVhQZm41U3plVWJ6WnRoa3dxM3BhMU50UmJ0b1plM0R4T2tuMUZlTGxxSFBiY1k0azRlamRQT0hUVktmQ1FZQzdDQmFQRGJRQUNSMHdOM29rKzZTbmQwaGFHUFJDZ1lPeHZKY1RNanNyK0tvR0loMVRVdWMrbzExdTNFcEEiLCJtYWMiOiIwZDMzMDdmZTBhMjMwMWRlMTFjYzk4NmMzYjE3NWQ0YjcwOWYyMzhlNzYxZGZjMWEzYjlkMDRhOTg1ZDZmN2I3IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 16, NULL, NULL, 1, '2025-05-07 13:03:38', '2025-05-07 13:03:38'),
(12, 'GET', '[]', 'http://127.0.0.1:8000/firstmed-tek-kanall%C4%B1-ekg-cihaz%C4%B1-ecg-100g', 'http://127.0.0.1:8000/medikal-cihazlar?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/medikal-cihazlar?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IklmN3I1VTFDOEh2cTVvK25IcU93VFE9PSIsInZhbHVlIjoiaENrM0FKc24xWGN1TDdlMDYwSE9tUFphUU00eXVBcWJrVWpoRmZ5NDltLzk1Z1EvUi9RV0hLcncwZ2Z6eHhqV2ttcGppSk9mVnExN2J4TXhIY0FWVzJxa0lhUzloRDB6Z1NUcjl3d2NEdHllQldzaS8xYXdVek9tY2c5TXpGdzQiLCJtYWMiOiJiN2FiMmIyYzQzMjU2OWRhZmQ4ZDkwMzEwNWY2OGYwODUxMzg4MzQ2ZTZmYzI3MWNlZmE1YTEzZTc2NjFiNzExIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InBpZS8vYkZNZmRvcS9ZMDJjNU1zN0E9PSIsInZhbHVlIjoiNmNNMVhQZm41U3plVWJ6WnRoa3dxM3BhMU50UmJ0b1plM0R4T2tuMUZlTGxxSFBiY1k0azRlamRQT0hUVktmQ1FZQzdDQmFQRGJRQUNSMHdOM29rKzZTbmQwaGFHUFJDZ1lPeHZKY1RNanNyK0tvR0loMVRVdWMrbzExdTNFcEEiLCJtYWMiOiIwZDMzMDdmZTBhMjMwMWRlMTFjYzk4NmMzYjE3NWQ0YjcwOWYyMzhlNzYxZGZjMWEzYjlkMDRhOTg1ZDZmN2I3IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 14, NULL, NULL, 1, '2025-05-07 13:03:44', '2025-05-07 13:03:44'),
(13, 'GET', '[]', 'http://127.0.0.1:8000/microcor-pc-tabanl%C4%B1', 'http://127.0.0.1:8000/medikal-cihazlar?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/medikal-cihazlar?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IklmN3I1VTFDOEh2cTVvK25IcU93VFE9PSIsInZhbHVlIjoiaENrM0FKc24xWGN1TDdlMDYwSE9tUFphUU00eXVBcWJrVWpoRmZ5NDltLzk1Z1EvUi9RV0hLcncwZ2Z6eHhqV2ttcGppSk9mVnExN2J4TXhIY0FWVzJxa0lhUzloRDB6Z1NUcjl3d2NEdHllQldzaS8xYXdVek9tY2c5TXpGdzQiLCJtYWMiOiJiN2FiMmIyYzQzMjU2OWRhZmQ4ZDkwMzEwNWY2OGYwODUxMzg4MzQ2ZTZmYzI3MWNlZmE1YTEzZTc2NjFiNzExIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InBpZS8vYkZNZmRvcS9ZMDJjNU1zN0E9PSIsInZhbHVlIjoiNmNNMVhQZm41U3plVWJ6WnRoa3dxM3BhMU50UmJ0b1plM0R4T2tuMUZlTGxxSFBiY1k0azRlamRQT0hUVktmQ1FZQzdDQmFQRGJRQUNSMHdOM29rKzZTbmQwaGFHUFJDZ1lPeHZKY1RNanNyK0tvR0loMVRVdWMrbzExdTNFcEEiLCJtYWMiOiIwZDMzMDdmZTBhMjMwMWRlMTFjYzk4NmMzYjE3NWQ0YjcwOWYyMzhlNzYxZGZjMWEzYjlkMDRhOTg1ZDZmN2I3IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 17, NULL, NULL, 1, '2025-05-07 13:03:49', '2025-05-07 13:03:49'),
(14, 'GET', '[]', 'http://127.0.0.1:8000/nebulizatorler', 'http://127.0.0.1:8000/medikal-cihazlar?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/medikal-cihazlar?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6InIxR3FVdU5Md1VWYjZIRHh5WGYxVHc9PSIsInZhbHVlIjoiaWNUS0piM3B5U25MUEEzVFREdFhYMkhqUTNGaEtuc3UrUWtSZ0YreWF1SW9LYm55ejVoOWM1K3hRRHM0dHZNSHBCVktZbzMyb0xZNUpWSFRrOGlhU1dmcG1NYy9mVlB5ZWdyZE41cW9wMTB5WloyOFUzaE9ZdVNycUJybzhUWXkiLCJtYWMiOiI5MTQxYTlhNzA0MGU5ZTA1ODM5YTRhNDQzMWMxMmNlMjc1OTFhNTIyMDFkY2Q2Yzg5MzliZmY5MDlkMmMyMjZlIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6ImR6bzV4YXAxaUk4Q0NGWjIyd2ZKS0E9PSIsInZhbHVlIjoiM1pJOHNTRUw2T3NPQ2pUVHh6c2h0dDBCbk1mcGlpQXR5bFg0YTlXeG5DR0w0ZGZ5QW9jNk5EOVJoWVNBa21NUk1scjhQVVQrNDNmeXgzWlNIYiswbjlRNGJZbG5FeWpBVlpCSWlPMTFsaXVCRTU4Z09Gb0ZFMUZudVRmbnpldkQiLCJtYWMiOiI2NGMzMzNmY2JlYjQ5ODE0ZGEyYmVhOWJmOTNhNzZhYjQ5YjY5YzM1MTVjNjE2MDQ4NDYyZGQ4YjMyYzBiMTRjIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 6, NULL, NULL, 1, '2025-05-07 13:06:17', '2025-05-07 13:06:17'),
(15, 'GET', '[]', 'http://127.0.0.1:8000/plusmed-compactneb-kompresorlu-nebulizator-cihaz%C4%B1', 'http://127.0.0.1:8000/search?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/search?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IjU2Q1VETmJsWEkxN0Zxdk1EZVFja0E9PSIsInZhbHVlIjoiRCtkOHZMVDl3ZmY5V0Zmc2NJeEdZdUlYMXdIakxKWTZETTVuSE5Ubi8vM3Vnc0VpeCswTkxhUWFRYUpXUjZGSS9xR1dXOVh1aEt2MzlrKzdwL0VFN3d2SkhLQ3FFekFrdDNyYWlwV2JVZkNBd1E4NmNFYnpBb0Y5TW1HS3RWS2QiLCJtYWMiOiI5OWZiNzc3MzhkN2Q1N2IzMTdhMDBmMjcxNjMyNmExMzhkYzhjZmMwZWU5NDRmNTBkZTdmYWU3ODYxNTA2ZTE4IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjhvSGt5Yk1rL2d2UytvMTRrS0h2WGc9PSIsInZhbHVlIjoiNkwxNDBMNmFRTEdMM05IOTdsY2Y0eG9xKzBaRTJNWmRqa0YvZ3ErUzdFTENyRWFBa2JISXpGTkxXT0hzMDk5cm1hMktKNEhlL3JZTmhqMkFRZGlrSmZvaFRWTDI0eUhwbXJxRm16WWRSNnR2LzR4RXo3bW1wZEUwT3liVkxadjYiLCJtYWMiOiJhY2IxYzk3ZDAxY2RmMjA3OTdmMDExYzU5YWY3NTExM2U2MWNjNjk5Y2JmZDVlMWZhYzc0ODY0NzExYzU3MTY0IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 18, NULL, NULL, 1, '2025-05-07 13:34:50', '2025-05-07 13:34:50'),
(16, 'GET', '[]', 'http://127.0.0.1:8000/omron-c102-total-kompresorlu-nebulizator-cihaz%C4%B1-sln', 'http://127.0.0.1:8000/nebulizatorler?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/nebulizatorler?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IkhSR1NpTVF5bzBybmxxeHFuNHh3dVE9PSIsInZhbHVlIjoibWpqMlFrWC90bFNraHU4aDlMM0pIYkhsQmt6QjFSOEZhSzR5Zkh0dUgwT1lHZlBPZ3VqMWZ4ekdsaFJvdjRTWGl2RWtVTkpFSi9NQWllMWR1Wmc1UGRDdnBLZ1YzVmxad0h1Mi8rYlpoZkxKMjZmck9XNjYrTWJLVFNQMzdMMGsiLCJtYWMiOiI4MTViYTU4YjAyMzFmMzMwZWQ5MzMxZGI3ODVjY2Q4MzU3ODQyODM0ZmQ2NDM3MmIyZjZhYzczNzNmMzBkNGU1IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InVUb1BpZDVwTFozVFRPVXNsbVpvR1E9PSIsInZhbHVlIjoic1F3VU5ZUGhMOVJKQUxSc0NQVHlEbSs1SnNJMWx4M1BaQW9MMWt1VTNHeHI1Uk5RYUtNNWNFTUVadW0wTzdKalVaODFsNlR3Nk0vMkIxb0YxOG0yc0k2bG96eXl0Zy9JbTBKSGlSU3hZYWRMRWNmOGJEdjVFQ2U3R2dNeXgxTXAiLCJtYWMiOiIzMjkyN2U5ZGY5MDc5ZDExMzkyYjc1NDdiNDBlOGRiNjJlYjI3NDdjNTE4MzY2YTFmNWM2ZjlmZmI3YjIwYzY3IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 26, NULL, NULL, 1, '2025-05-07 13:47:12', '2025-05-07 13:47:12'),
(17, 'GET', '[]', 'http://127.0.0.1:8000/omron-c101-essential-kompresorlu-nebulizator-cihaz%C4%B1-sln', 'http://127.0.0.1:8000/nebulizatorler?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/nebulizatorler?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IkhSR1NpTVF5bzBybmxxeHFuNHh3dVE9PSIsInZhbHVlIjoibWpqMlFrWC90bFNraHU4aDlMM0pIYkhsQmt6QjFSOEZhSzR5Zkh0dUgwT1lHZlBPZ3VqMWZ4ekdsaFJvdjRTWGl2RWtVTkpFSi9NQWllMWR1Wmc1UGRDdnBLZ1YzVmxad0h1Mi8rYlpoZkxKMjZmck9XNjYrTWJLVFNQMzdMMGsiLCJtYWMiOiI4MTViYTU4YjAyMzFmMzMwZWQ5MzMxZGI3ODVjY2Q4MzU3ODQyODM0ZmQ2NDM3MmIyZjZhYzczNzNmMzBkNGU1IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InVUb1BpZDVwTFozVFRPVXNsbVpvR1E9PSIsInZhbHVlIjoic1F3VU5ZUGhMOVJKQUxSc0NQVHlEbSs1SnNJMWx4M1BaQW9MMWt1VTNHeHI1Uk5RYUtNNWNFTUVadW0wTzdKalVaODFsNlR3Nk0vMkIxb0YxOG0yc0k2bG96eXl0Zy9JbTBKSGlSU3hZYWRMRWNmOGJEdjVFQ2U3R2dNeXgxTXAiLCJtYWMiOiIzMjkyN2U5ZGY5MDc5ZDExMzkyYjc1NDdiNDBlOGRiNjJlYjI3NDdjNTE4MzY2YTFmNWM2ZjlmZmI3YjIwYzY3IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 27, NULL, NULL, 1, '2025-05-07 13:47:14', '2025-05-07 13:47:14'),
(18, 'GET', '[]', 'http://127.0.0.1:8000/airway-solunum-hava-yolu-sln', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Ik1FRDlJcjRqM1hhOHgvaFlUTHI5UXc9PSIsInZhbHVlIjoiYmx6MXUwZzFXd2ZveXlFRXlBK2xyeUZSRFJCdlRubmhSRHZBUlJxc2NYNDhVVE1JNzFQSUNBNkhlSGd4Q2loTS94TkxVZk43dmlhT0J6NE5vL0w1RFdDY20zbmdPNm9yQzhQZUJSdlNPOFo2SHkvU0VRTTBUcXIySG5jdWlWcjQiLCJtYWMiOiI5YmVlYTU5N2M5YmIzMDY5Mzk1NjIwNDg1NTFjYTcxYmI4OWMwODE0ZjgxZDI3OTAzODg3YzcxYzhiZDU1NWY1IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IkgweUhNdm9NN0JaL2ZZZUN0ZXdWV2c9PSIsInZhbHVlIjoiU2NEanN1NVdGcER5bkF3NW5aZzFFNE52dWhKdFdOWW5WVUlYRFBzeDNZQlNueEpDM0drK0k0MitsRnRMNnlMeUdsa0pKQ1JNcmpGbEN0UU02aVFtQUFZdTVTaTBQUU1kU0czcTc5SWNWUUxNeTdCVCtJanZRYXlHcXBNWFdYQ1kiLCJtYWMiOiJiMTBmNmYwYTAzY2NlMmQ4MDc2NjdmNzIwZjFlNDI1YjllZTU2OTJiMjE4YzQxOTc0NjVjNDgyMWFmMGNkMTMzIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 20, NULL, NULL, 1, '2025-05-07 13:49:20', '2025-05-07 13:49:20'),
(19, 'GET', '[]', 'http://127.0.0.1:8000/defibrilator-cihazlar', 'http://127.0.0.1:8000/t%C4%B1bbi-sarf-malzemeleri?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/t%C4%B1bbi-sarf-malzemeleri?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IjY3OWdDck4zN2JLVXpYSDVaTEkyZnc9PSIsInZhbHVlIjoiMzE3WGlOcnFtbnR6N2E1aWx2c1BEN2lqdXFKTUh5QUsvU0ZRSE1UZ1BTZzZ0UzFvR0EyM3NITVMwSHhjYVI1MjYvaUwvcWpoN0Q1c2ZPS2crNHladXpJMkJROXAxcldxLzlvVzhjaVZLMHhhSUhsd3VyV3NJK1FjelR3dkRHYzgiLCJtYWMiOiIyYTFmZDliNTFjZTE4MTFkNzc4Yzg4NTlhZjRiNzgyMDFhYjAzY2Q1OWQ0ODNmMjQyNTNiMTdlZGIxYTAwODk1IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjRhd1dSc1o2OW9WbytEbnI4YWt4SlE9PSIsInZhbHVlIjoiSktKNFAwakoyUFJnTW9mZ3dwMDhDZ2l2VVhoS0I1bEN6T1VKaGFxeDI1Wm03RmVVOTZzNWpxTDdUZ2hKamowQ1diY0V6NjZEb3padE1FcS9iaGtVd2hSZDF1WFduRXo2UXlqcXE3OEcwM1NabnhaRG9YM2hoTTVYb3JXZnY5dFQiLCJtYWMiOiIxNzZlMTdiNjQ3Y2NjYWY0ZTZmM2I5NzE4M2NhODIwOGQ4YjQyYWJiN2ZiMTdiOWU0OTNhMWQ3MzNlOGJmY2FmIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 5, NULL, NULL, 1, '2025-05-07 14:32:02', '2025-05-07 14:32:02'),
(20, 'GET', '[]', 'http://127.0.0.1:8000/ekg-cihazlar%C4%B1', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImEwcFFWZ1dBQk1lZHVWT1JBRkFmSlE9PSIsInZhbHVlIjoiS3dDUitrR2FtcHoybm0vVVUvUG9jV1Q1UWo1WktYSFcxUTArQU4xQlV0UEhIODNzUktyUmZTdjdjbS9GTFZDNmozWVkrWGdLUzFBYUhINXFoRDRLNFlBQzVnMFlUZUp2bzczRjlTZUVkZVBUNUtjR2U3d0FGR2t0NXc4Qy9CWmQiLCJtYWMiOiJhOGRlODNkZWZiNzJkNTMyOWVlZTUwZjBlYzMwOTY3NzdhYTU1YjM1N2M0ODI3MDgzOGZmYWRlMzU5NDI0NDQxIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Ik93b1NTTGVhaGRpWVFkNVlzS2dpSlE9PSIsInZhbHVlIjoiZ2JVOXdFSzdNOTVydkFnbno5N2ZlWXJZcFhrVXhhSUlNN3Q5YmZwYmlZMUlJOVhNWjR6NUd5WmdNMWo5VVRLSVpuNlRNeTlUbWNrY3ZjMHVsemFFWmRxRys3VloyNWZaRDhRSlJNU3Z2bzUvUWJJM3htY1VyQUZDWE15Nm4vOW8iLCJtYWMiOiIxYjkwNzIzN2YxMzczMDdjZTVkMjAwNzdkYjJiODFiMTNmZWI4NDk3Yzc5YTg4M2M2NjNiYzJlZTkyY2I4N2JlIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 3, NULL, NULL, 1, '2025-05-07 14:54:43', '2025-05-07 14:54:43'),
(21, 'GET', '[]', 'http://127.0.0.1:8000/t%C4%B1bbi-vida-setleri', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Ijd1YzNuUzhJWUR3bmkxRlUwc1dXUXc9PSIsInZhbHVlIjoidVh5SncwOTFMV0xCK0lpcHdvUEg1MjJQT3FRKzJWRFQxQWErSWdsZDZvZlN0L3AyRktkNDY1Mjd6azQ3TUJSRkZVM0dxTVdUTHFkUGFud2NzNXhMc3hoSDVUZlhZVHc0UDUzWldzK3dBTTZEWWt5SGtwK0Jpa0Z6ZXpWdmVMWGoiLCJtYWMiOiJkYzY1YmMwZDRjYWE3MDJjZDMyNzJmYWNmY2U2YWM0ODViNjdkMjY2YmM4MDI2NjRiMTE1Yzg5Mzc3N2M5MmQ2IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlhQeWlLS3ZzRnBOaFBhQjhRcUp4SGc9PSIsInZhbHVlIjoiVlFKMHlnNUE5NGtnTVVvdDBDZkkrODFDUzdwWU5xVUZkUUM4dXovSG94bzArb1c2NUZUaVJudHA0Q2dnY3JtMlZ4OUd6OVd0ODNCNzgyZlpDNmkxbGZjNjY2T0dKblljbzdaL2NYdVUvSDJBNVEvT3A1RmNlVUZDWHlYSkowV3UiLCJtYWMiOiI1NDQ5NzhkMWM4MThhM2EzMWIwYzk1NzFkNTI5ZDM5YzhmYjc2YTQwMjI2MmYzYTdmZTUwNWU1NDFiNDAzNDU5IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 14, NULL, NULL, 1, '2025-05-07 15:01:08', '2025-05-07 15:01:08'),
(22, 'GET', '[]', 'http://127.0.0.1:8000/pro-35-mm-125-dis-adimli-kortikal-vida', 'http://127.0.0.1:8000/protez-ortez-urunleri?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/protez-ortez-urunleri?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Imk3Q25CT0ZyWGNpN1g3aXpoMDRUbGc9PSIsInZhbHVlIjoiK2tReWtTcmpQbjVHdGVoYTlKRllsaG5XSW9XMlV0OTJvTlpFdmtvaGMwbUY3S1RqOWdUU3cwVG5mcEtURnlIWVFhTU55cXpmZkM2OFdvckJlZkV4Z1Jra054QUtlMVAwa3NBV3ZDZUk0RWRITFZPYTZXSUMyZ2J6NklXR21qTmYiLCJtYWMiOiI0MDdlODc4NTc4NjgyNTMwNjU1N2FmNGZiNzVhYjlmMmNkNWJlYjZmMDQyZWYzNWQ5ZjYyNWE5Y2EwZThiYzI1IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlZ2aWorMUNDNGZPaE1qa1p4ejl3d2c9PSIsInZhbHVlIjoiSmowV3pJditZNVpFeEdNQTZqODRqcUxFT2Jja09YWXk2bmZGM3EySU5GcTdJUUoyNzloZGhqV2V4WVcrd2w1OWlnU2pJK2YrUktHZHZyWnEwek5ZWjBhNytKQ0tmcWlnTFNqT083Z3JGS20vTkh0TS81WElOWnhhcVlmWnRoaXgiLCJtYWMiOiIwODFmOTJhM2E4NTI3Zjg0NDlkODk5NDNkMDRmNWUyYWQ2Mzc4M2ZjMmUzNDVjMDZhOWUwYTc0NjkzZDcxNGIwIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 45, NULL, NULL, 1, '2025-05-07 16:08:03', '2025-05-07 16:08:03'),
(23, 'GET', '[]', 'http://127.0.0.1:8000/firstmed-6-kanall%C4%B1-ekg-cihaz%C4%B1-ecg-600g', 'http://127.0.0.1:8000/medikal-cihazlar?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/medikal-cihazlar?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Im1DU29aTkhSYzVXMnpQUmFJdFFkYUE9PSIsInZhbHVlIjoiUndRQjZEQkpaSGFyNTlBcnNvdnFyZ3hDMmlzY3BsZ0ZQQkRFU09ZMkFJOVZlZVJNMFlPUmlHS3dKTXp3dXRNN2s2L05NZktIbGx5dHBlS3ZHaUZGWVB6YTlUU1ZpQlF4QlF4WW1xZkN1RDRlanI2WlRHeU0wbGk0WmM5MUt3MjAiLCJtYWMiOiI2YmY3YWJmYmEyOWM3NTU2ZWE2MzExZGYxZTFkYjQ0NDQ4OWRiYjNhNjVjMGE2YmQyMmFlNGI2MDI4MTZiNDEwIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Ik9XNkxpMW9KUU4wbUV3dHFrVEVNd0E9PSIsInZhbHVlIjoiSWZLcXJCYVY0R0RzK2c2NEtXSk5SN2ZNbVhmcWo2SW1lUDlzR1k2M3V6TGJxdlhFRzJDdGMwVUJQV0dlKzFCUW53TjlNem5tNE1ycDd6MjRpMVdsMEZueHAwK3czaE1xUnloeWIxZkJ2UHlJZmFUNnZJdDRKSXdYQXdFSm9YYjQiLCJtYWMiOiIxZjk5ZTFiNDg2OTM2MDQ1NTkxNTg5MjAwNmYyYTgxMGM1ZmExNzNhNjBjMzAwZTE5MjdiNTI4N2E2MDQwYzczIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 15, NULL, NULL, 1, '2025-05-07 16:09:55', '2025-05-07 16:09:55'),
(24, 'GET', '[]', 'http://127.0.0.1:8000/storage/channel/1/B9iV8b481ViZL9kZ92zao52ed6D3yuUQFyZLih3c.png', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImEzcndnTE83amhNYnpCQlpnVmxTQUE9PSIsInZhbHVlIjoiNjBYVjllVW9hV1pCNHJlbVcreEpHRXNwSGQybEwwYkU4aHBHTkloaHJJVnRPY25RK0pMK0ZKeHZtaTZuMWZNYTBPaFYrNTQ1eVdtR05uZjdVUkVOU2MzQWlDQnRUSENFUE0rYlhLZk53OHVYOHd1NEM2WFR2TzRCRkc3Vk8wbS8iLCJtYWMiOiIxOWRmYjI4NGVkMDViMWRmYjhiNmIwZmM0MTYzMTdhOTUzZjI3NjY2NTcxMzZjMGUyMjU4Y2VjYTg1Y2U4MzA1IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6ImsrQ3ZVaWl5aUhNdWRYcVYxeGlTN1E9PSIsInZhbHVlIjoiM2FoenhHbFdyWit0VUFyUE1LSEpFZjdTNXFoakl3M1Rlb2pBaHhhdWdXZDBFRlRBSUs0cjNPTlVsUXFYUUJVYXdiSjl5d0pWK3NRK3pWYk5GN1QvOU1ydk5VTFVVbTNpZGd1SGNFRC93a1RGWmF4STlTMGtuK1FZK3F0NEV3NlkiLCJtYWMiOiI3YjliYzcyOWExNWZhYTE1OGQwZDUwZGI1NzgxMmM2NjZmNzZmYTM1MGI2MmVjOTZlMzNhMWM3ZWFlODQ3ODU0IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:37:22', '2025-05-07 17:37:22');
INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(25, 'GET', '[]', 'http://127.0.0.1:8000/storage/locales/AA1EzepzkXSsHMLQnlfro0xLKkE4cUTLJprGaxKG.png', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IjgrdEhjMi84dDFKMXBRSFpkY2VKL0E9PSIsInZhbHVlIjoiYnZzL0Q3dFJRVGI2R1k4My9IN2hYWWZESWp4NG9BRm81ZUZnemtIZ1k2MG9JS0RKdnhvdEVaOFFVR290WDdQWksyOE04OE9LaWhKalZoNXdrT3grSFQwTjNZaUdwcHJId1F2NExDKzBXQjBEZXQ5eGYvT1RzMktrRUpDcUF2NlQiLCJtYWMiOiI0MzdjMjhiOTdjYjFiNTc5NGQ1MzEyZWYyNTAwZDM5MDlkOTk5YzM1Y2I5ZDc3NzhkY2RkZWE3ODUxZmJjMjI1IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IitYc2VKRTFTSEx6bFJXTzFPRHk3UHc9PSIsInZhbHVlIjoicXUxM2hUUXZZbUlDS25ZSmd4cUV5NTZVWWRubjRQWDZlNGsyNjFBYWN2T2JWV29xQ1JTcEpYNnY3QlVFY0p4SE5nRkt3aXlMOFRzZDJaalhuTU1LdjBpazBPUVBZdjRERzZmdEpNT3pqRFEzTHo3alJFbWtQYVJnT0xobzJjNGEiLCJtYWMiOiJjZDJiNWJhZjVhMzg0M2NhYTI1ZGJjNmMzNmU2MjIzNzIwMGI2ZGRmNDc4YWFmMjRmZGU4ZWNmNTVkMzY4ZTNmIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:38:10', '2025-05-07 17:38:10'),
(26, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/8/kFlgsmiDSQQhM5ZrtvVpn7Uc4FNvvmWARZnND9jR.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6InMvK3BJa3FoVDRSN0xmRkJhWWFIaWc9PSIsInZhbHVlIjoiR0RydTlaM281S1lUMXFubzF4MzA4cFhRY1N1azBOS3NEZnU4NkxiQ3ozamkrRlpmWFdjR3pWc242dzBFUTQraWY0RmpBMzBxUkkzMDNiQ2w4OExtUE5iQktjb28xVWpFTkNuc2dtaVZWM2RZV3RPSlUrSlkwYklkWElwR1dXMUUiLCJtYWMiOiI3OWRmYjBiZjY1MDNmYTRkZjBhOWMyOGJjNzEyNGRiY2ZmOGYyZTI4NTU0NGY2Zjg5MTI5ODU2YmEyY2U1ZWU2IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjMyYkZNLzlEMUxCN1lEaWJjNytiaWc9PSIsInZhbHVlIjoidXRtY1ROdHlZaHBudkJmaU5DYTBOUzM0RXFFTXlLS0tUWDBHa2JGMkFzMDRORVdndGk0WWNmaU5PNmhwZEtWQzc1cnRBUWRtRDBVZHA1elJLOThaR0lLWkpyZ2JzVXBhaG9OQnE1ajVucGhmM2praEVKd2xUUkVFOVJHZ0FRVm4iLCJtYWMiOiJjZmQ0ZmFiZGZiYzNhMDViMzdlNmMyM2IwMGJhZjU3NDdkMTQwOWE2MzNlNjA1Y2FhNmFjYjEzYzhkMGM0NmEzIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:38:29', '2025-05-07 17:38:29'),
(27, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/8/mcVXkNFAysHXEeCFjJTAdWGmIpGP0ZvLvhLk53aT.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6InMvK3BJa3FoVDRSN0xmRkJhWWFIaWc9PSIsInZhbHVlIjoiR0RydTlaM281S1lUMXFubzF4MzA4cFhRY1N1azBOS3NEZnU4NkxiQ3ozamkrRlpmWFdjR3pWc242dzBFUTQraWY0RmpBMzBxUkkzMDNiQ2w4OExtUE5iQktjb28xVWpFTkNuc2dtaVZWM2RZV3RPSlUrSlkwYklkWElwR1dXMUUiLCJtYWMiOiI3OWRmYjBiZjY1MDNmYTRkZjBhOWMyOGJjNzEyNGRiY2ZmOGYyZTI4NTU0NGY2Zjg5MTI5ODU2YmEyY2U1ZWU2IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjMyYkZNLzlEMUxCN1lEaWJjNytiaWc9PSIsInZhbHVlIjoidXRtY1ROdHlZaHBudkJmaU5DYTBOUzM0RXFFTXlLS0tUWDBHa2JGMkFzMDRORVdndGk0WWNmaU5PNmhwZEtWQzc1cnRBUWRtRDBVZHA1elJLOThaR0lLWkpyZ2JzVXBhaG9OQnE1ajVucGhmM2praEVKd2xUUkVFOVJHZ0FRVm4iLCJtYWMiOiJjZmQ0ZmFiZGZiYzNhMDViMzdlNmMyM2IwMGJhZjU3NDdkMTQwOWE2MzNlNjA1Y2FhNmFjYjEzYzhkMGM0NmEzIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:38:43', '2025-05-07 17:38:43'),
(28, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/Zl5Izm9Y2HrLshu4x1jX1vhRESuwhEASZ9y65buB.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImtQaFZ1V01sVjlYa1N5VDd3L0lkbHc9PSIsInZhbHVlIjoiV1QvT0twWXhxaVc2OFBXc0JyU0IxaTJudDU5WTQ2YUFlYm56YXlUZDNDTjFlU2oweHVVWlhaaHU1WkRuVGEwdk0xM2RmMEZjbUVZRnE1ak1ma0FoVkJjS3dLYUN1NjRpazJKRmpYUmMyTWFJZmFDeUc1M0dDUytGTmZZWC93d1ciLCJtYWMiOiIzOWUyNTcxNWY5OGNhYWIyYjM0OWY0YmQwZTNlZjMxN2JkNjVjZTU2ZTNmNDBlOGVkM2ZjNjYyNzM3YTM0MzE5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IldGMVVyc05qcmlCSWkvTmJSa0I0QWc9PSIsInZhbHVlIjoiR0ZrWFAwV3hMN09NNnArL1BlcVFETVJwM3lUUUR6cjlSMEtqQy95S0FGT2hPdnhxY05YOXFHc1ZSTGpINThJbmY5VXp4ekdVdnV3R21INjZLaitDOGRId1JwWENkZmRKQVJFWUkxUFJPZm15OVg4MHk4VmNXendEd1Brc2t1MVgiLCJtYWMiOiIyMmQyZDAyZGU2YjcwMDU5ZDEwODdlYmQxZTg1MDgxN2QxYjk0MTBjMWMyZDUxNDljODE4OTcwNjZkMjRhZmE3IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:39:05', '2025-05-07 17:39:05'),
(29, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/BKjhrTICAMq2HJ0Nql4RVeD3LlPheBGFtIMrtUU5.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImtQaFZ1V01sVjlYa1N5VDd3L0lkbHc9PSIsInZhbHVlIjoiV1QvT0twWXhxaVc2OFBXc0JyU0IxaTJudDU5WTQ2YUFlYm56YXlUZDNDTjFlU2oweHVVWlhaaHU1WkRuVGEwdk0xM2RmMEZjbUVZRnE1ak1ma0FoVkJjS3dLYUN1NjRpazJKRmpYUmMyTWFJZmFDeUc1M0dDUytGTmZZWC93d1ciLCJtYWMiOiIzOWUyNTcxNWY5OGNhYWIyYjM0OWY0YmQwZTNlZjMxN2JkNjVjZTU2ZTNmNDBlOGVkM2ZjNjYyNzM3YTM0MzE5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IldGMVVyc05qcmlCSWkvTmJSa0I0QWc9PSIsInZhbHVlIjoiR0ZrWFAwV3hMN09NNnArL1BlcVFETVJwM3lUUUR6cjlSMEtqQy95S0FGT2hPdnhxY05YOXFHc1ZSTGpINThJbmY5VXp4ekdVdnV3R21INjZLaitDOGRId1JwWENkZmRKQVJFWUkxUFJPZm15OVg4MHk4VmNXendEd1Brc2t1MVgiLCJtYWMiOiIyMmQyZDAyZGU2YjcwMDU5ZDEwODdlYmQxZTg1MDgxN2QxYjk0MTBjMWMyZDUxNDljODE4OTcwNjZkMjRhZmE3IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:39:20', '2025-05-07 17:39:20'),
(30, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/buF2IDuWqiKE98rjAoqtBq5PALrm2jjBa7G8cxqq.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImtQaFZ1V01sVjlYa1N5VDd3L0lkbHc9PSIsInZhbHVlIjoiV1QvT0twWXhxaVc2OFBXc0JyU0IxaTJudDU5WTQ2YUFlYm56YXlUZDNDTjFlU2oweHVVWlhaaHU1WkRuVGEwdk0xM2RmMEZjbUVZRnE1ak1ma0FoVkJjS3dLYUN1NjRpazJKRmpYUmMyTWFJZmFDeUc1M0dDUytGTmZZWC93d1ciLCJtYWMiOiIzOWUyNTcxNWY5OGNhYWIyYjM0OWY0YmQwZTNlZjMxN2JkNjVjZTU2ZTNmNDBlOGVkM2ZjNjYyNzM3YTM0MzE5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IldGMVVyc05qcmlCSWkvTmJSa0I0QWc9PSIsInZhbHVlIjoiR0ZrWFAwV3hMN09NNnArL1BlcVFETVJwM3lUUUR6cjlSMEtqQy95S0FGT2hPdnhxY05YOXFHc1ZSTGpINThJbmY5VXp4ekdVdnV3R21INjZLaitDOGRId1JwWENkZmRKQVJFWUkxUFJPZm15OVg4MHk4VmNXendEd1Brc2t1MVgiLCJtYWMiOiIyMmQyZDAyZGU2YjcwMDU5ZDEwODdlYmQxZTg1MDgxN2QxYjk0MTBjMWMyZDUxNDljODE4OTcwNjZkMjRhZmE3IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:39:40', '2025-05-07 17:39:40'),
(31, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/VxTLvuCxvSqdIZ8e7RtSKA1tzJX8mg3NeJ5neCvL.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImtQaFZ1V01sVjlYa1N5VDd3L0lkbHc9PSIsInZhbHVlIjoiV1QvT0twWXhxaVc2OFBXc0JyU0IxaTJudDU5WTQ2YUFlYm56YXlUZDNDTjFlU2oweHVVWlhaaHU1WkRuVGEwdk0xM2RmMEZjbUVZRnE1ak1ma0FoVkJjS3dLYUN1NjRpazJKRmpYUmMyTWFJZmFDeUc1M0dDUytGTmZZWC93d1ciLCJtYWMiOiIzOWUyNTcxNWY5OGNhYWIyYjM0OWY0YmQwZTNlZjMxN2JkNjVjZTU2ZTNmNDBlOGVkM2ZjNjYyNzM3YTM0MzE5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IldGMVVyc05qcmlCSWkvTmJSa0I0QWc9PSIsInZhbHVlIjoiR0ZrWFAwV3hMN09NNnArL1BlcVFETVJwM3lUUUR6cjlSMEtqQy95S0FGT2hPdnhxY05YOXFHc1ZSTGpINThJbmY5VXp4ekdVdnV3R21INjZLaitDOGRId1JwWENkZmRKQVJFWUkxUFJPZm15OVg4MHk4VmNXendEd1Brc2t1MVgiLCJtYWMiOiIyMmQyZDAyZGU2YjcwMDU5ZDEwODdlYmQxZTg1MDgxN2QxYjk0MTBjMWMyZDUxNDljODE4OTcwNjZkMjRhZmE3IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:39:46', '2025-05-07 17:39:46'),
(32, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/8/YD6dI9lEvIyGVO3gkxUkqPqeLVE0zmfS9adMnndJ.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Ii9UTkNJYnRRbUNEYVpHd2I1SlU4emc9PSIsInZhbHVlIjoiMC9VQjJLdWphNDcxRlk2M2hmUVZnWUZuc1FzR3lxTWhrTUg1d1NSd2tDdzZ4WmhQbno3NXFhS1JId1lEY1oraFU1OW9tWG81Wm5BVkFOTW1SVWRiaEZxYmt3QWZQdlp1MFFiSUlCQ1NtWjNsN1NiTU15ZEsveTd5QlVORmNEdVIiLCJtYWMiOiI3YjNjOTgzNDljNWMwMmFmNmQ0ZDY4ZDljMGZhOGI0MWFkNGQ5MGNlYjI1MGJkMGFkMDA1ZjZhOTk1YjRkZmU4IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlI1Rkt6RFBzVldTa1dySVoyYkdtQnc9PSIsInZhbHVlIjoiRlpXd2x2WURMak9wL0MxVjlOUmhGVHpaOElKTHBGeHFaZEVWTEkvVTFydGdocnJJL0ZkcUJOWDNEc1RZQzVNRGl1WTBKMktQN1gwL0UxZmxaTkxYd24wVkxUczJIT3NiS1Ayd1paVERCYmNJNGw2UUo0QlVnS2VqSVVYWnVRR3kiLCJtYWMiOiI5NTQxYzRmNjJhM2U4MzdiOGM5MWRkNjM2NWMzMTM4OWJkMDRlYjI2ZWFmMDk5NTdhYTI3MmU0MzIxYWUxNDFkIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:39:51', '2025-05-07 17:39:51'),
(33, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/8/acE03MCDhsXEGxQuX2gRrrMyGEjpUhlh4vMXmru0.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Ii9UTkNJYnRRbUNEYVpHd2I1SlU4emc9PSIsInZhbHVlIjoiMC9VQjJLdWphNDcxRlk2M2hmUVZnWUZuc1FzR3lxTWhrTUg1d1NSd2tDdzZ4WmhQbno3NXFhS1JId1lEY1oraFU1OW9tWG81Wm5BVkFOTW1SVWRiaEZxYmt3QWZQdlp1MFFiSUlCQ1NtWjNsN1NiTU15ZEsveTd5QlVORmNEdVIiLCJtYWMiOiI3YjNjOTgzNDljNWMwMmFmNmQ0ZDY4ZDljMGZhOGI0MWFkNGQ5MGNlYjI1MGJkMGFkMDA1ZjZhOTk1YjRkZmU4IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlI1Rkt6RFBzVldTa1dySVoyYkdtQnc9PSIsInZhbHVlIjoiRlpXd2x2WURMak9wL0MxVjlOUmhGVHpaOElKTHBGeHFaZEVWTEkvVTFydGdocnJJL0ZkcUJOWDNEc1RZQzVNRGl1WTBKMktQN1gwL0UxZmxaTkxYd24wVkxUczJIT3NiS1Ayd1paVERCYmNJNGw2UUo0QlVnS2VqSVVYWnVRR3kiLCJtYWMiOiI5NTQxYzRmNjJhM2U4MzdiOGM5MWRkNjM2NWMzMTM4OWJkMDRlYjI2ZWFmMDk5NTdhYTI3MmU0MzIxYWUxNDFkIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:40:00', '2025-05-07 17:40:00'),
(34, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/8/VOQbCA5R54vjIvZrXxVnxueofSftMemJnIvou9Vk.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Ii9UTkNJYnRRbUNEYVpHd2I1SlU4emc9PSIsInZhbHVlIjoiMC9VQjJLdWphNDcxRlk2M2hmUVZnWUZuc1FzR3lxTWhrTUg1d1NSd2tDdzZ4WmhQbno3NXFhS1JId1lEY1oraFU1OW9tWG81Wm5BVkFOTW1SVWRiaEZxYmt3QWZQdlp1MFFiSUlCQ1NtWjNsN1NiTU15ZEsveTd5QlVORmNEdVIiLCJtYWMiOiI3YjNjOTgzNDljNWMwMmFmNmQ0ZDY4ZDljMGZhOGI0MWFkNGQ5MGNlYjI1MGJkMGFkMDA1ZjZhOTk1YjRkZmU4IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlI1Rkt6RFBzVldTa1dySVoyYkdtQnc9PSIsInZhbHVlIjoiRlpXd2x2WURMak9wL0MxVjlOUmhGVHpaOElKTHBGeHFaZEVWTEkvVTFydGdocnJJL0ZkcUJOWDNEc1RZQzVNRGl1WTBKMktQN1gwL0UxZmxaTkxYd24wVkxUczJIT3NiS1Ayd1paVERCYmNJNGw2UUo0QlVnS2VqSVVYWnVRR3kiLCJtYWMiOiI5NTQxYzRmNjJhM2U4MzdiOGM5MWRkNjM2NWMzMTM4OWJkMDRlYjI2ZWFmMDk5NTdhYTI3MmU0MzIxYWUxNDFkIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:40:21', '2025-05-07 17:40:21'),
(35, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/8/cLbkyRTx7Xvk1H6zwuAZNs6C7C6xCNwFlIbu3dtH.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Ii9UTkNJYnRRbUNEYVpHd2I1SlU4emc9PSIsInZhbHVlIjoiMC9VQjJLdWphNDcxRlk2M2hmUVZnWUZuc1FzR3lxTWhrTUg1d1NSd2tDdzZ4WmhQbno3NXFhS1JId1lEY1oraFU1OW9tWG81Wm5BVkFOTW1SVWRiaEZxYmt3QWZQdlp1MFFiSUlCQ1NtWjNsN1NiTU15ZEsveTd5QlVORmNEdVIiLCJtYWMiOiI3YjNjOTgzNDljNWMwMmFmNmQ0ZDY4ZDljMGZhOGI0MWFkNGQ5MGNlYjI1MGJkMGFkMDA1ZjZhOTk1YjRkZmU4IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlI1Rkt6RFBzVldTa1dySVoyYkdtQnc9PSIsInZhbHVlIjoiRlpXd2x2WURMak9wL0MxVjlOUmhGVHpaOElKTHBGeHFaZEVWTEkvVTFydGdocnJJL0ZkcUJOWDNEc1RZQzVNRGl1WTBKMktQN1gwL0UxZmxaTkxYd24wVkxUczJIT3NiS1Ayd1paVERCYmNJNGw2UUo0QlVnS2VqSVVYWnVRR3kiLCJtYWMiOiI5NTQxYzRmNjJhM2U4MzdiOGM5MWRkNjM2NWMzMTM4OWJkMDRlYjI2ZWFmMDk5NTdhYTI3MmU0MzIxYWUxNDFkIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:40:38', '2025-05-07 17:40:38'),
(36, 'GET', '[]', 'http://127.0.0.1:8000/storage/channel/1/Of1OX2imdqMdO3xSlOaT2GGXDnCJGqr3RJzGNmcf.png', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImlwME9nY3k3ajhJZnNDcURYYlg5Smc9PSIsInZhbHVlIjoiS0x2N05QbUhEQ2Y3dm5SOU1OU1pVbkxKYTN3bjN1ZEpRU1FHelJEcVZ3YnZTZERZRzJlam51c1hxZVRyMjZpenVqMzZZOE14Vnp2UFRkRFZQN0JoM1lONStoRjcvNGdzWXJ5aGExNXRTWW1ncXhtcTM1c0lFeUhWMlJKSE4rQ0QiLCJtYWMiOiI2ODI4ZTc3NjU3MTU0NDUwZDc0ZDZlMWU3YWU3NDg1ZDVkOTUxODc4MmM1ZDkyZDJlZGViOGFlN2QwMTY1YzAwIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjVnQ0ViS0FFKytRRnF3VmNFV0hGeGc9PSIsInZhbHVlIjoianZhV3VMOVBaMVhaN01NRGF2blNzaXh1MWtuYlUxTis1L1IzMTkxcFVmWHZ2UEoyT0o0bjgzZHB3bUFtV2JQZ3Jhc0ZNNkpRTGhFczlWNnF0SXdSTWdYZi9qc2psNFVtQnErLzBtdEplNVJwbjJiQ0lFb1FTUy82TlVFanhZVEYiLCJtYWMiOiI5NGY0NDVlYmQ2ODA0MDY2NWQ2MTEwMmZiNDZiMTFkZWJmZGFlMTczMjM5OTM3NTY0YzlhZWE2Y2ViODJiYWM5IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:42:36', '2025-05-07 17:42:36'),
(37, 'GET', '[]', 'http://127.0.0.1:8000/storage/configuration/vUO7tYW1YOjJpeOpRTQF91piYrzFREaxrjB4tQaL.png', 'http://127.0.0.1:8000/admin/login', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkdzV3Q0V0x5THlYUVltZFZyMlBzS0E9PSIsInZhbHVlIjoiRWdNaDJHSFhhUEltSXRETkkwSVRZR1ptZHF4WGR4N084TDVtUytoeXpyZ29uU3R1UVNQNGxUZ2F4ODRQTkJlSzRlSnh4d3p3QTJ1MlNLcG5yWjJpSSsxWURpWXlUYmlqRStxZyt6UFhicDVqa2d3dlc5VDBWNk1OZVlha0dYbHEiLCJtYWMiOiI4YjIxMjcxNGJlMzc0NDIzZDJjOTZjZmIzNTAwZDcyNjk3N2VkY2I4NmY5MTRkMjY4OTE1ODcyMGQwY2QwNzU0IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjY5V21rdWRhZC85dFlqZWYxV3VLd3c9PSIsInZhbHVlIjoiYnJkSGJWQXpUVk1OZjJaNzZhR0tjMXk2ZHRDbnc1VVhZMmZWOFlUVkVFSDFETjduVlhTenlqWGUzMFNMZUN6UE1VVndMM2tqZ3MxZlBkN2xaY3dZZmEzcjJKc25qam56ZThFUlFKV1pac3BlSUR0OFJuUDhTVDZ4Q3V4TmFzQWkiLCJtYWMiOiI5ZWEzODM1MGI2OGIyODMyNjk4MzliNmY2MmQ1YWE1ZWJkZDU5YWIyZjYxZGI2ZjBjMjE1NWQ1MDA2MGE2MWU5IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:59:11', '2025-05-07 17:59:11'),
(38, 'GET', '[]', 'http://127.0.0.1:8000/storage/configuration/n81tum7GlAd2crrihrTIig6256vbPqGVuj5js6Jb.png', 'http://127.0.0.1:8000/admin/login', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlZkbXFXVThIRXU5VUlIR0NyUjRRWkE9PSIsInZhbHVlIjoiQURucnBrZFlaSzRMV2ZKTjBmOXg3NGcxcHRSdE02WDE5ZFNjRTIyK1hFd1QydWplZklxcVRTbGoxSm1MY3lxZnZ2dlN2SmQyL1BYbDZIQ3k0Q3k4ZDBQaURKMmMxUXZ0bmt4VG5ZNHoxNmx5dTlTR2FCbkhrQ3RnaklMQStJanAiLCJtYWMiOiIyZmU3ZWIzZjViNmIzMGQ1YTc4NDMxYmJlOTIzZmRlOGYyZTRkMWZjMGFlOTU5ZTZlY2JiMzk5NzkzZTE0OWEzIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Ik9tUlFYc0JHM2FnTjdJYVJqUjUrZFE9PSIsInZhbHVlIjoidkRweUxaY3lURGZBemVUZkFVSDV1dU5FOTl4d0Q0V0wwclIxVkducjlYanFhclhHUnBtbm9QVjA5R1I3eFBJNmtBSENTUDFoTUlONTdEK0xnV2VJaWUwRFlLbFg0N3BHaXZqWkd3NlF1cmdOVEZuU0Z2d3dUaW11eE9pL0NuVGEiLCJtYWMiOiJjNzE4MTY5NTM1NmYwNzk0OWNiNmNjYmQ2YzBjZDQzYzA1ZGViOGJmOGQwYzAyMTU0MjI3Mjk4NmU4MTE0NTlmIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 17:59:16', '2025-05-07 17:59:16'),
(39, 'GET', '[]', 'http://127.0.0.1:8000/storage/themes/shop/default/build/assets/app-DylXwZj5.css', 'http://127.0.0.1:8000/storage/configuration/vUO7tYW1YOjJpeOpRTQF91piYrzFREaxrjB4tQaL.png', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"text\\/css,*\\/*;q=0.1\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"style\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/storage\\/configuration\\/vUO7tYW1YOjJpeOpRTQF91piYrzFREaxrjB4tQaL.png\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjZ1S2ZLNHZZVXhkQnV3Z3JmY3o0UWc9PSIsInZhbHVlIjoid1RBVzh1UXpoVDMrRGNaQUovNnhZNEVZSVZncGw2a2VOMERaV0ljNS9YSWs3c3N6Rlc0Vm82cVZPQVNnTzJiS1dodXRVeURocUdWVWtPODlpVW9hbUxrZ2lqblhzTFBtTjhYWHFIaHlURFFFYWF6YUFSTmJBcDQ5dm81b2xaaHQiLCJtYWMiOiIwYTFmNGFmZjk1YzBjYzdlYWRlYTFhY2YwN2U4ZGU1NmJlOTI3YTIxMjhiZjgxYWViYzlmYzViNTcxYzY0OWU5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Im1UTWh3UjBqUFhjRXRpSS9sd2pnZGc9PSIsInZhbHVlIjoidng3ZUhvUE1NQktrdCtzZmVvM1oxY2pEVWcrUU9jeDZJbEl1VTZhY0RYZ081Y2hzOTJjWGJEaEV0MmRURDFBVThObUxEUEJ3TnI1ZkFNcVZtbW4zdU53VFNvRVJlQlpoTjJlakU3MjRSQ3FUcGNIbFhtSW5DdE5Lc2JSRm1SQmciLCJtYWMiOiIwYzkyOWQ1MzVhMzYxY2UzYWEyMGY1MjFjMTFlZDM0Zjc3YjQ4ZDVkMTg3ZmZhNDg3OTM3NjA0MWZlOTJkMDMyIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 18:02:30', '2025-05-07 18:02:30'),
(40, 'GET', '[]', 'http://127.0.0.1:8000/storage/themes/shop/default/build/assets/app-DsP8OK1c.css', 'http://127.0.0.1:8000/storage/configuration/vUO7tYW1YOjJpeOpRTQF91piYrzFREaxrjB4tQaL.png', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"text\\/css,*\\/*;q=0.1\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"style\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/storage\\/configuration\\/vUO7tYW1YOjJpeOpRTQF91piYrzFREaxrjB4tQaL.png\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjZ1S2ZLNHZZVXhkQnV3Z3JmY3o0UWc9PSIsInZhbHVlIjoid1RBVzh1UXpoVDMrRGNaQUovNnhZNEVZSVZncGw2a2VOMERaV0ljNS9YSWs3c3N6Rlc0Vm82cVZPQVNnTzJiS1dodXRVeURocUdWVWtPODlpVW9hbUxrZ2lqblhzTFBtTjhYWHFIaHlURFFFYWF6YUFSTmJBcDQ5dm81b2xaaHQiLCJtYWMiOiIwYTFmNGFmZjk1YzBjYzdlYWRlYTFhY2YwN2U4ZGU1NmJlOTI3YTIxMjhiZjgxYWViYzlmYzViNTcxYzY0OWU5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Im1UTWh3UjBqUFhjRXRpSS9sd2pnZGc9PSIsInZhbHVlIjoidng3ZUhvUE1NQktrdCtzZmVvM1oxY2pEVWcrUU9jeDZJbEl1VTZhY0RYZ081Y2hzOTJjWGJEaEV0MmRURDFBVThObUxEUEJ3TnI1ZkFNcVZtbW4zdU53VFNvRVJlQlpoTjJlakU3MjRSQ3FUcGNIbFhtSW5DdE5Lc2JSRm1SQmciLCJtYWMiOiIwYzkyOWQ1MzVhMzYxY2UzYWEyMGY1MjFjMTFlZDM0Zjc3YjQ4ZDVkMTg3ZmZhNDg3OTM3NjA0MWZlOTJkMDMyIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 18:02:31', '2025-05-07 18:02:31'),
(41, 'GET', '[]', 'http://127.0.0.1:8000/storage/themes/shop/default/build/assets/app-Dk7aa5mf.js', 'http://127.0.0.1:8000/storage/configuration/vUO7tYW1YOjJpeOpRTQF91piYrzFREaxrjB4tQaL.png', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"origin\":[\"http:\\/\\/127.0.0.1:8000\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"*\\/*\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"cors\"],\"sec-fetch-dest\":[\"script\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/storage\\/configuration\\/vUO7tYW1YOjJpeOpRTQF91piYrzFREaxrjB4tQaL.png\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IjZ1S2ZLNHZZVXhkQnV3Z3JmY3o0UWc9PSIsInZhbHVlIjoid1RBVzh1UXpoVDMrRGNaQUovNnhZNEVZSVZncGw2a2VOMERaV0ljNS9YSWs3c3N6Rlc0Vm82cVZPQVNnTzJiS1dodXRVeURocUdWVWtPODlpVW9hbUxrZ2lqblhzTFBtTjhYWHFIaHlURFFFYWF6YUFSTmJBcDQ5dm81b2xaaHQiLCJtYWMiOiIwYTFmNGFmZjk1YzBjYzdlYWRlYTFhY2YwN2U4ZGU1NmJlOTI3YTIxMjhiZjgxYWViYzlmYzViNTcxYzY0OWU5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Im1UTWh3UjBqUFhjRXRpSS9sd2pnZGc9PSIsInZhbHVlIjoidng3ZUhvUE1NQktrdCtzZmVvM1oxY2pEVWcrUU9jeDZJbEl1VTZhY0RYZ081Y2hzOTJjWGJEaEV0MmRURDFBVThObUxEUEJ3TnI1ZkFNcVZtbW4zdU53VFNvRVJlQlpoTjJlakU3MjRSQ3FUcGNIbFhtSW5DdE5Lc2JSRm1SQmciLCJtYWMiOiIwYzkyOWQ1MzVhMzYxY2UzYWEyMGY1MjFjMTFlZDM0Zjc3YjQ4ZDVkMTg3ZmZhNDg3OTM3NjA0MWZlOTJkMDMyIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 18:02:33', '2025-05-07 18:02:33'),
(42, 'GET', '[]', 'http://127.0.0.1:8000/storage/admins/1/BbZQl6CRRvowCFriQq2l8qBAcLoeZ55OLHQhb7Es.png', 'http://127.0.0.1:8000/admin/dashboard', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/dashboard\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ilg5MjZEMXpGUlpOak1abm5GKzE3REE9PSIsInZhbHVlIjoiYmJobFdEdkt5WGdaZEUzMlNSaFJneWxEUFI3WVVVT2FQOWsyMDRJMVRUNGNkU0xJeitkVU03dlFES0oyR2g2MXI5OTBBT09nY2U0THk3SGZ5c1praTE4Um1VQzdwZ0lkNGwwY21TWHJKdUp1SklzSlpoVGJDVkEyVGlOYjg1alAiLCJtYWMiOiI1NmFlYjU5OWQzYTY5YjJlZGI1MTA2NzliZjFlNzEwYjJkM2M0MzRlMDAzYzg5N2ZkMTcxZTlhNDVhODkxNmZjIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjBENmVIRDFJRWdEYjNiOVcvR2paVkE9PSIsInZhbHVlIjoiSjZacG5iZys2Q3BDeS94NDF6dG42T1o2WTgraVp4SUJlZFJvM0NQWUNpWXNUTC9YY1dnSWZueElyQXhDY2VIMy9lUlg1TEIzdHUyZU90TFRSNEtXZVVHa1VlVkVDdlRSNjU0SmhlaE93Q3FDYWFzOFlXRXk3RGdZR2M2QmFRbVUiLCJtYWMiOiJkNTJiMWE5Nzc2ZDI5NWViZDU4MTM5ZDcwODY3NzAyZGQ2YjA0MzVhNjk0NmE2ZDNmMzVlY2M1YTM4NTI0ZWZiIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 18:04:28', '2025-05-07 18:04:28'),
(43, 'GET', '[]', 'http://127.0.0.1:8000/storage/channel/1/zBvRgnubaokxoI8IzJrZPhiaQDGLHoOkdT9pyizl.png', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Imo5bWllWHorZzFOWFM4U0FTMXZDVGc9PSIsInZhbHVlIjoiZGwrSVJ6RG9RUFR0YThWRXlSNVRoTGlCTkpnVDdPcmxFVG9xR2hkbkxKdHJhUHZSSEJmeUp0QWE1WHQ3dWQ3Zmh4SWFBUjhtZlpJUzBTMUQ1MFBQeHVxYWNWV3R1R2x5WS9TdXIzYk5ISHVtaStCWm9POFZjNEsweWMyTHhlSGwiLCJtYWMiOiI3NTZkMTQ4MzE0YTRjZmIyZDFkMmI2NmFmMTViMWUzYjYzOWRkNTI4YmQ5ODgwNGQ5NDU0YzUxNzY4MzM3ZjYzIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InlwRzFNSTFwSHp1TEE4d1M0eHlPOEE9PSIsInZhbHVlIjoid3NXWjRDa3NMN3JzWDVMd2xRazhpQmp5c2szUCtFYVhjV0xKb1RNQVhiOG1idEtES3N0RkREU0cwNkpkVy9WVWt3Z1B3RTI2WnZDT0p6dUZycnZlLzcvSXZEM2dYMStYNVdBODFIN0NMOVNudExHUDFzZ0kwUjM1dTdVN3dOTDgiLCJtYWMiOiI4YzZlYzczODFjZjAxYzYzM2VlMmZlZTAwN2VlYTA5ZWM3ZGM3YzU3M2JiYTE4MzAyMGQzZmIzYTQ4NjM3NzBiIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 18:16:56', '2025-05-07 18:16:56'),
(44, 'GET', '[]', 'http://127.0.0.1:8000/storage/channel/1/o5Udr03hAJZcf7aZCZgGTMjsp6rwAcJodyo0PzEQ.png', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IlcxOHpCSk9oeGJvcU9meTNJNmdPc3c9PSIsInZhbHVlIjoiQWZUd3JMSXpKSGZ2SU1EaWlWZGhaMlh6eWNIakI0ak00alI2REw2aEZmUEthWlJnZjNNcEg2S2k1Yjh5R3o3Nmhic0Y3aEQrKzltaElLNG9YV2R4Mlovb3NPakx5R1p3K2tORHk4VlQwT1kyR3Fjenk0eTZxVE55VHEvbm9qY0ciLCJtYWMiOiIyNjViM2QxZTEyNTc0NDViYjhiZTFhODlhNGY3MWM3NzMwYjRkODU2ZWE3M2JlNjFhNThmNzRiMDAzN2U0MjVmIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IkFDUUF3Rk5HR1p4YjdYTVdsUkQvT3c9PSIsInZhbHVlIjoiVjlpMDROL05uL2V3Y2JLeXVKNDdnVVhJanNMekJaMHlJSFJTWVlLbXNQcnkvdCtHK3k1cjc5MXo3SjA5cUMrY09hbEVkcWovb3JpRzUrUE1GS2l1WTUwWjByWlN2andDWWVrVmsyS0VBVXpKMEpVb1VOLzByNk16T3lEU0Zuc3AiLCJtYWMiOiI4OTU3YTVkNzcwOTY5Y2QwZTI2MjY4OGM4OTg4MzZjZGFlYWEwZTA3OTU0NmM3MTZlOWU4NGY1MDRjMzEyODU3IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 18:17:03', '2025-05-07 18:17:03'),
(45, 'GET', '[]', 'http://127.0.0.1:8000/storage/channel/1/yP3meA3Lb9LsRWSXBDXFIh9H3D84j8M1nCPUaGDm.png', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6Ijh2VmZTVTgyQnNIZWFLS1ZzN2VRU3c9PSIsInZhbHVlIjoieks0M3RnMnFQcHdiNzk4eklCbzl2VjRPSUlkRjkwR0FtcWtvd01DN2tUVERDdTZ0TlNaYWFRVFVrYXk1OVdYMTE3bm5NYlBtQ2IvYUVIS3ZTZVdjdFN0Qk9zWnNodlVvcmp5d3JhMmd0U0FOWHZteG5hbEQzbkVrN0I4NnNwSWIiLCJtYWMiOiJlMTQ3MmJiYTE1MmU0Njg2NTY2YjkyMWIwMWY3MTlmMTg2ZDgwZDI1MDczYTIwYTY5YzVlZjJmNjA2ZDk0NDBlIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlFRdGR0M1Y2WGxLNkliRGxYbFcvUVE9PSIsInZhbHVlIjoia3BVWlVBaTVmU2ZUcDRkdFFieWtZWmdTQ0Zwclk3MXYwaU01aWlrZUI4UjJOaCt5eGh6eFNTT3o0bmpDNUFCMHF4K1AwdFRkRjlSUWtDNGU1TnBrcE02YTFvaFRXcFZJdFlCZnQvVkV2V01JR3NnVGRmck9adklBbDVLOGtkKzMiLCJtYWMiOiI1YzVlNzMwMzRhOTlhOGEwZjI2ZDgyYjA4MDlkMGFhMGQ3OTMyZDgzODk1NDBiMzM1ZDIxYzQ0MWE2MmNjN2I5IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 18:18:09', '2025-05-07 18:18:09'),
(46, 'GET', '[]', 'http://127.0.0.1:8000/storage/channel/1/xAW7wuS7ZAC4Hcux84Xn3UnpLJRQrWgsegtbrV1J.png', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6ImRJYXFaaS8ybWhPSkJVckRobWNKZFE9PSIsInZhbHVlIjoibHd4c2NqZzRXbjgzdzNlRnlrZ0dLeUlHQk1hZVE5alBFRTVkazYySC9tQ1ZjOWoyL2dQbEE2eVd5SE43alFwNmNMdSs5d09jbzZlOE9TaDJLOXUwVWlGcTluTmR1ejNuU2pvUzUvOG42ME56RFk2aG9vODdTaHVUNENQS3IvMjEiLCJtYWMiOiI2MDQzZjZjYmVkMjI1ZGNiNTVjMjUyZTJlNjQ3MzUwYTNmNGI5ODkyOTAxYjFkYWNlODVmNTBiNzNkOWJhMGVlIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlhhTGJGakhvbTJiSVdMNDJEdSsrZUE9PSIsInZhbHVlIjoiM1pXRlp4eFJ1VlI3RlRGRWNONS9yRkJCeWRSMitER1psVHlka3YzWGR5Q1ZzbUkxNk03TnU1US9NUXcrK3I0MnA1MVJER0lYZUV2bHBKVkJZVXJrSU84Sk1XV25uZjBpVFZYcFVXdGZXblpRTUpLZDZndzVBNVU0WjFhdzZXeW4iLCJtYWMiOiJmZDc3NWQ3ZDFiMDkzMGU2YTY5MDM0NjM2ZmM1Zjg3Nzc1NGUyOTIzY2RmODI5YmQ4NjI4YTU1OTRjOGI0YzdjIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-07 18:18:21', '2025-05-07 18:18:21'),
(47, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-08 10:08:18', '2025-05-08 10:08:18'),
(48, 'GET', '[]', 'http://127.0.0.1:8000/aksesuar-yedek-parca', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImtPUUVvK21iV09CWkdmZzBCL1NyUXc9PSIsInZhbHVlIjoiMUVmcGJNbFRDZTI5bjF5RTJSaWhpMnRTSGszSjIxSFV3WGNRMzJFTldMM25oU2V3OTNTYTZJYndSTk5TaXJzTHAxNW5BRnpDRW8zWXVVM1pVQ25JV1pRQzJ1NVBWU1Q2OVV1Q05hUHdJQTFsTWVnUG01c3NvZFBzbWdUZmY5dDEiLCJtYWMiOiI4NTIzYTRmNjMyYmYyYTE4YWYwYjU0OTdmNjMzODkzYTEyMjYzZGFjOTVmNTA1MzUwNmNjNThjMjc1Y2Y4OTMxIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IkV3SlVZbjFScGx1Y3hsZlRVZGkyZWc9PSIsInZhbHVlIjoibFhYKzZhR013Q0RaQ2hIaldqSGd4Mlh0MjNkalNvQ25sT3piTGMrRnFERGlFdUNnK3N6NHpBYWdUdXROS2RtYXN4OVZQZkpia1JtV1lyK2hZbTdNeVYvSi9rUnRCZ0dLa0VhY1JKSXU3WGptNFg0RzFxMDhZUXRnWFJTQk5PVlQiLCJtYWMiOiJkM2E2Nzk5MTNkODBhMTkxNGQ3NWFjYWY1ZjUxN2NjODE5YTE1NTFiODllNDdmOWE3OTVhNGJjNjRiYWFmNmJmIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 7, NULL, NULL, 1, '2025-05-08 11:02:46', '2025-05-08 11:02:46'),
(49, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/customer/login', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/customer\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Ilkvd1k5VnBTUnc5cVRxVW5tUkZ0Nnc9PSIsInZhbHVlIjoiaUNZdDdjWlRrb21ITkJ3aXl6dTR6Y0l1cEpxLzVaS3RGcENZRjlrejFoSlFuT1FCL2JpczVFVkt3bFcyenUvSWJwbmdLVWNQRmVvL3VyWENRSk81ejZCMWlaKzRuM0cwS2FwZzg1SUx3MHdqQW41VEpvMkx4NU9OaVJmZTQwTkkiLCJtYWMiOiI0ZTIzYjE1OWFkNzU4ZDQ2OTI4MDA2YTMxNTliN2YxYjZmZWFhZGZlOTlmYjVhY2ZhOWRhZjAwNzJlMzhiOGNlIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InNEUGpCdGYyTFBkUE1DYXNKU0I3aEE9PSIsInZhbHVlIjoieWpwYkxvN2dTVHI4ODZkNCtiVnkrWU1RY2NyVGk3OGxPSlExK2NxTTdROWpjeXV3Z3BKQzUxZy9MY0dGNmZzQ2lBY0VIL2N1UW9UcmpFa1NtQnlhRE9XQXlSZlNia0JrVzlhL0QxRjRzRlY1RS8vQVY0czVma0Rydng5UTh1amgiLCJtYWMiOiIzNWZiZDBlMDEwMmI3ZmYxY2NhMDllZWU5MWZlNjk2MGU2OWQzZDkyMGRlNTJjMzQ0ZDliNDVhNmE5NTM4NTgxIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-08 18:18:41', '2025-05-08 18:18:41'),
(50, 'GET', '[]', 'http://127.0.0.1:8000/ekg-cihazlar%C4%B1', 'http://127.0.0.1:8000/customer/account/orders/view/2', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/customer\\/account\\/orders\\/view\\/2\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6InlZTHNxR01XZEp5YVdTOUd1QkFEN0E9PSIsInZhbHVlIjoiU2RuNU9SL1haSFBoM25TajdLSmRNMkJvWHVwMk9zVURDekpMOVdNSjhqVlNJUUdjSUxXQ3RzVWQrdG5SLy82ZnJhdkxQQWc0clAwSE4wK2JYNFlQMStDVEhibXB0V1Jsbk5SdUVTOU9QeUREK2dyQ2NPRUgrYnRSZC9LdWdQdjMiLCJtYWMiOiI1NGIyOTNhZTFmZWE2ZWViODRjM2Q1ZTJlMmUxYzIxZTkzZjkwZTA5ZTgxZDhhOTI0ODIwMjBiZTg0NWZiMWVhIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Im1mTEZUQU9uTW12ZDU3cDA4YW5WOFE9PSIsInZhbHVlIjoiN25rOXl6QWd1SEpISW9YYTBaK3FUcmEvNXE1RjBmSTJlbng5cElvYUxybHk5Zk9ydHZDd2hkRHZjdExJUFFtaEZkeVZ6NEJoc0tneDFpTXdidnJVZEtrRlZKOG9QbWpoWWY1Q09zMUtIL1NteE94ZmpTaS8wRk56dGpQZ3VhVmMiLCJtYWMiOiIyZGUwZmNjNTc1NmRkNWIxMWU4NWE2MjY0NmYzZDg3YmY1NDBmNWI0MWE3ZmFhZjVmZTg2ZDlmMDcxYjAzMDgwIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 3, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-08 18:53:44', '2025-05-08 18:53:44');
INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(51, 'GET', '[]', 'http://127.0.0.1:8000/medikal-cihazlar', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Ik5yRE5qSEZZb0tYbU1Zc0FPNStOY0E9PSIsInZhbHVlIjoidHRPMUZEby9uOCt6Q0ZGRDFIeGhGdUJ4L29lSUdZcnNBMVhneEZlR3BnNEtPK1plWHhYQlROSllYbUVYQVNLR0xTQ2FPVUxPcnZlWGE4K0NTdzJZQTR6eHZpbHFFZ2EzWG5OMWE5c0xGQWJGYTVqNDhFTElST3JSTm9CZzBPdSsiLCJtYWMiOiI1Y2NkNzE0YTMyOTc4ODQyYmJhMjE3NTZlMmNjOTUyYzJkYmVkMzYzYzAzMTc0ZDc5M2ZkOTlmOGM2ZTEyOTAyIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InRNM3p6S01EZDlLSlNXcjBYa3B3enc9PSIsInZhbHVlIjoiRVRZbVBNRCtMdG4zeXFudmpMd3Zrcm9IcVk0YVlYTkhpeW5aS1RxR2pmdEVXMWxEZHp4d0tHREYvaW9Wa3BKK3QzUVl2Wi9rUS8xd3grNkd1YUdNekk0T1JpZUxzZDZ6N3NzcXVwWStPWHUzb3lNSGxBd0NWdjVkS3E1SFd2azAiLCJtYWMiOiJjMjNlODFhNDQzODJkODFlNzU2YWE3MmI4NDg3OTUwOWRiYzNmZmVlY2M3ZmMyMmIxNjMwNDg0ZmJiYjFjNTFmIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-08 19:11:56', '2025-05-08 19:11:56'),
(52, 'GET', '[]', 'http://127.0.0.1:8000/def-mindray-beneheart-c1a-otomatik-eksternal-defibrilator', 'http://127.0.0.1:8000/medikal-cihazlar?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/medikal-cihazlar?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Ikg4SWttQWRuRXRuSnlMZ2pWWklReUE9PSIsInZhbHVlIjoiUHFLUElCQjF2cDRxTHJOdW5UQzQ5UE5DMUQ1MFptMW9VdGtzTkpQakh2bjdwTXpNL1p6TFhRY3AzSGw4YktDd0M4TTVSNzBTdGxjMUVvZTVjVXlSUGdJbCtFeHRTNnNmcjNaL1hGTGIxaWgrakljRGt4WGJyM2tLZG9qN3RRblIiLCJtYWMiOiI2YWRlZDQ2Y2U0MjUxMzQ3NjgwYTE0ZmJiYTM4NGFlMzkzNDU0NmYxMTczZmY1NTE5ZDMyYWI4MTUwZDllYWYwIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Ing2WGJyNUwzbFRyYmdYM0g2VnJmdVE9PSIsInZhbHVlIjoiWCtpUklieDFHckYzOHVDOHl0TmRXQTduQjZFWFNoc1lPUDg2cHpkbTVZUzMrbW9NZjZjQjdtZ1JhV0F0RlM4bTNXSDZkcGYzNlRhQXp6RWZjMlYvMzcwSkpHQnR5b3d3ZmxENi9uTlYvSloxVHoyQVFEUUhpcTBLbkZ0MDFWRnAiLCJtYWMiOiJhZGZjODg1NjVjZDZiMTljN2ZiZjc1ZjdiOGEyNDU1ZDY0OGYxODYwNTllMDVhYjQzZjJlYTFhOWJhYzUzODdlIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 33, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-08 19:12:32', '2025-05-08 19:12:32'),
(53, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImExV3BmWmhiL2hPOHFwV2tUMEVuOWc9PSIsInZhbHVlIjoiR2JhbDB4M1JqZGNNRXcxNE10Y1lpazVZTU1oeStDK1FxMktBdnJoVEUvUjladVVNcDlsVVBHQTNsNGFlQzkvNitwd1Y4dWxHTTR5dWdDdUd5MlVjUkh4aENBbkd1bE1OVjNOMy91czY5NEhZcDN5SThrelh5Z21RMDU0dUE0TnoiLCJtYWMiOiI5ZWQ0NTE0ZjdiYzE3YTFhMDdmNTI5ZTAzOGViMjlhNDQ1NDNkZDFjYmY2OGJhNDk4NDk3OGI5OTYwYjI2MTQ5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlQ2eENKc0J2V0xNTTBjS3RDSG1xVGc9PSIsInZhbHVlIjoia3BDOTFDMkNycVlPaWNmS0FLbEFrRWUyazljNThiMHhOekFDanEvSGhETUNWZ0RwUEgxQlhGMXVPUkpPbk1vUDMzT2hFQi9zM0EzOTVXV1JZb2tmNG1mMzFVQTF0WFRLZzdMM1VtQzZlUDUzUVVFL2JQRUNlWjhZQUh1cUNpUnoiLCJtYWMiOiIzZTJhYWY4ODQzNjgxZjY0YzAyZGI1ZmFjNjQwZGE4NzA1M2IxYjVhM2Q4NjZlMDk1NTViMzhhNWU3M2FkOGYxIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-08 19:29:29', '2025-05-08 19:29:29'),
(54, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImJ2Yzh1ZUtiVWgzWnlwbkFqT2h6clE9PSIsInZhbHVlIjoibUJ3VWxUdzNqWVRONG5IckpaU1B6djQxdVIwZjFEZ2ZkQTZJUTNXazRWakh1eFpaK09PdC9pTnV4Y1hmZDBvSkMrVFZOQlVteDA0MGJlOFNYOFljS2JHUU5xbFB1dFMxOVRzZEladWJOTEEvLzJCVkEwbHhYaEllajQvdUpGT3UiLCJtYWMiOiI1ODhlMGFiZGUzMzY3YWYzYzQ4ZjlkNGZiOTg5NDQ1ZGQwNmFkNDliYWZjNTgxMjQ5MmNiNTBiNTM5YmIwYzdmIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Im1CWU9jVW15UW5iZHBKeGNiN2dKTlE9PSIsInZhbHVlIjoibFNvaFBSdTc1ZWZCK0ZMOHhHVjJlVUxFdmJxYzEyaHZ2TlV0c1VVQVFQTlhoSm0va0dCdXJEWExLYkRPY0pCYm9LaDd3MFA3Snl5RzQ3RFRMT1pRb25OV254cW1zUmZmbi9iTGpLZXJOTnBmTUIzanVFUDczZE9Hd0FoMElrem8iLCJtYWMiOiJjM2JlMWJhNzc2ZDlmNzE2NzdiNTc5YjM1MWQ2MGQ3Njg3YWI0NmEwYjgxNTc0OGI0YWZmYmQ0YWY5ZjAzZTk2IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-08 21:02:28', '2025-05-08 21:02:28'),
(55, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6Im50Tkp0K2F0TDlFV0pLVkFNNEtPUWc9PSIsInZhbHVlIjoiWnlrTUxraUpxTkJuME9GWkhUcld4S1hnc1BXRUFEQko4QVhDN0NkSVBwOVc3YTNpU0JwbG5LcEhnKzZaUGJXck9paWptbVFhcFRuYkFMclhwcTdyNEllc0pmNHVGbFJ1RVNySDRpb2JjQWVLaEE2Q0pPdjNDVWl0ZGZ5dWFVWjIiLCJtYWMiOiIyY2NkMjViY2JkMTQ2ZGRhZDM4ZThlZGRmMWQ3NDc4ZWQ3MGRkNTk4NjIwZTEwYTU1N2E0ZGM3ZGM0YzhiNDI0IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Ikg2aHBFMktEQjFCNUFIVVhoVnlSZlE9PSIsInZhbHVlIjoiNGlpemVsWHBua01pUnRyUkJma3llaVpUMXZ6V2twdjFQeFlOTEs1YS9TL0dGdjRMdCsyYmx3bEJvdytSZ0EvOGw5UkdvWEZoaHlEb2JEdGJ6Q1pWeWFoclE2d1BTbXJtQk43QWhoNnVmRnV4NVBDYXVpemdiWExjVzRraWFQMDQiLCJtYWMiOiJmNzA0MzAwY2U2MDFlODFmMDQ4MDFjZDQ4MGE0N2VkYjhjMGU4OWM2NTQ5MzIwNzkzMzRjMTk2YmM5MTRkMDdlIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-08 21:03:27', '2025-05-08 21:03:27'),
(56, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-10 08:16:03', '2025-05-10 08:16:03'),
(57, 'GET', '[]', 'http://127.0.0.1:8000/aml-medwelt-cerrahi-dikis-seti-7li', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImE1cGVmMmxkR1BJRkNiSVUvWmt4WHc9PSIsInZhbHVlIjoiYnlDUkVaOE1IWVQ5clpFc3ZkZk96bGc4QWF1MlgwbUZwaXlNSXE2YWdONkppT0pydFluVlhTaURhUUxLSGZuOUdhYkRJNFM1Tk1uUWN5NVFqSk1UNWgvWVgydnNtTmlKRnRQL0p1czBmaHVHTnAvNGRlamRqTlo4WXdHdks5S0ciLCJtYWMiOiI5NjBiYmVmOTIyNzY0YTk3NGI5ODI0MTA1MzY4ODZhYmE2ODljMzBlMWU3ZGZmYzkzOWVjY2E4MWE5ZmMzMDgwIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjVTdWtQV2hXbm9GSndQUnFTTnFsSUE9PSIsInZhbHVlIjoiVTRnbEdPdnFabXhkQlpHaDBuZFpuYTluYnBqNUdSNTJTYXFpeEJVOXFHUFIvSjgrajhBM1F4U1pJdUhEREFDQ1NFZDh3RHRrTjZzeU5IRDhzRnUwQ1NwbVNFcy8zc2JYbUdyRlQ4elVlVlNKYmZFTW9ITFcrR1V1b0thaTZ5a0kiLCJtYWMiOiI1ZTBmZDE1NjkyYzBmOTE3NGVmY2NkMTUzN2VlZjU0NWMwNTFjMDMzNTIxMzI0MDc2Y2QyM2E1YjBiM2QxODRkIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 39, NULL, NULL, 1, '2025-05-10 08:17:09', '2025-05-10 08:17:09'),
(58, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IjFnbHBSVFZkb0NjU0xjZy9BVFFlakE9PSIsInZhbHVlIjoiWUtSMWVxUnVlTDJkZmJZMVZWViszTUJEbnMvREdhSENWM05HemFkaVpybEhnYkIwNHlmRHNoMVVWeXU2ZjVDTjdzOWtuTU00dUJmQUJvQThwZURzZlFYczJ5QWFIUFJTRXdNd1pyTEprVk9takI4YzZFOStVM2xlS2tqRXpwWUUiLCJtYWMiOiIyMDA4M2NlZTYyMGVlYWE4NWZkZDZmODZiMzViYTI5MWNkMzJhMzhkNjA5YWE1ZTg5YTM2MDZhNDFjNGU0OWU0IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InNOLzl5UFp5S1k1Y3JmVGdjZUh4R1E9PSIsInZhbHVlIjoiREkyVFdzMlpMMVVYekw0aDhpb2pNVlBkS3lZeW5ZQ2NzRkwyOW41QTU4VER6ZmR6WlRCUGo2QUNWTGZVNEN1dXRaMVgyTmNMUTBiN2lsUEtkZ1lEMjk0YVMwalJZVGw1cnVBNS9id2VkVHVBeG80SUNSUE52U3FmMUM3cjFWQXMiLCJtYWMiOiI0MTdhYmYyY2FiYWNmNjk3MWMxYzU3NTlhZGRlNDU5NDRlMDZmZDY4ODgyNzg3ZTVmOTRhZTE4ODNkZTk0Yzk0IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-10 09:15:54', '2025-05-10 09:15:54'),
(59, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/customer/login', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/customer\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IkU5bnltS1JNb2l3M2N3aG5OdVozSFE9PSIsInZhbHVlIjoiRzdoOXRPdVRqZjhNODR3VXd1bDNWS0ZjWFBBbmFSNTBpdFoyS0I1TUtjdWVydWdWT2dON01oWEZTd1Q4anMyQi9SU2JlRU5BT09hNktJMHVjaE1RR2ZXcTJmeWJHbWtjRjhtVkhSZDJBOVpnK3JkNyswa0hibHI5ZDdXT1FYeGoiLCJtYWMiOiI3YzdmN2I1YmI0ZDE1M2JlNjIyNTBkODc1ZmQzNmEwNjZjNWFjZjljMTFiZjdmOTkxZjk0ODVmZTVhNjZiMGRhIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjV1K05PVkk0WElKcGcyZmxNRjAvemc9PSIsInZhbHVlIjoiNW44d29MbE03UkltMEp0WWNrUjIxandBS2JiaStwYUlyZkoyR1l1bENHL3MyakhQOGd5RldWS1QzUnB4TVZnejNkcDBEM3ExQ1c3M3p2TDRPWHFYUWRzczJnbDJnUUl5THpHa2Mwb0pUQ0VrMXdDbit2MzdsVmNYK2UzbXJwUmkiLCJtYWMiOiI5NGU4OGY5N2VkYjJhZTNkY2ZkMjQxYmNkZDIzMGEyNDg3MjhlMGQ1MzYzNmIzMWE2ZGM5NmU5ZDhiZWY5MzYzIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 10:26:53', '2025-05-10 10:26:53'),
(60, 'GET', '[]', 'http://127.0.0.1:8000/medikal-cihazlar', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IlFhRGdRTmZGL3RmOEtmaU5Zd2hmZnc9PSIsInZhbHVlIjoidkRTNjN4eEY5MStFak5tV0VIVDRsK2V0YlhCZDlNaTlCeG1ZMkhCTlVFcVYwQWZtdUxyVmFUWDZycUpHam9SOXliTVdpamw1SHVCdWEyZ0Z3YURDZmFJTDNCSDJabTlMRHZwV24wSkMvUWk3Y0YwVlhNZkxpOUl1THdlUW1SVTkiLCJtYWMiOiI4MjA0ODNjNjc2NWYxOWRmYTAyYTZhZjM2MThkNWMxMzkxMmUyYzUyMTM3NmJhZWJjNDFhMTZmOGNlMDA0NGZiIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6ImpLdUF0NUtZNURSL1dGMVZDaTJkSHc9PSIsInZhbHVlIjoiN0lCYStLWTBvQ290UUNyS1liY2NPbVJPVTVJMy9oOGFuR3ZGaXVKWmUxaGxpdDMzU2Z4RHFsZzlGYm52VERPZDE2c0RyU1BqYkFNVWl0YXhyM2NNL0VFYy9sVytqK09rUGJaemw1OExWR0hUUEdpQ3NJY2tIV1l4amZOR3gyVkwiLCJtYWMiOiJhYTE2OGJiYzc2YTVjZmQ1NDJlOWJkYjEzMGFlZjJlZmVjZjE2Mjc5NGQ5ZTYzMjE2MjlhZTdjZjJkMGRlYzk2IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 10:26:58', '2025-05-10 10:26:58'),
(61, 'GET', '[]', 'http://127.0.0.1:8000/ekg-cihazlar%C4%B1', 'http://127.0.0.1:8000/customer/account/orders/view/7', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/customer\\/account\\/orders\\/view\\/7\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=0; XSRF-TOKEN=eyJpdiI6IlFRLzFlU3JEUGpGOWlyRlkyWkdWOGc9PSIsInZhbHVlIjoiVTA0NEJRUTZKWWQxZmZWMnZxSmJXRkhneUZORHdBOGZVTjdWSWdvOVF3UjdnZExJWW8zQUJoL0pDSXNIc0tDbTRzWGQxRlNnMmgrbFdtLy9hQzdsMy9NOUVYOUk0SzQrWkkwWE1NZGlRRm9KMFdUMlZJZ3NlMTR1KzNMeUV3R1ciLCJtYWMiOiJkZjQyYzZiNDRlNTA4Mzk0YjU4MzZmZjM4N2ZjYmRiNjM1NmVjZDNlOTczYjc0M2RmZmMyZjQ3MzRhY2UwNDY5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IkFTTEJOQkJzZHZqVEtqL0tsSmpwUWc9PSIsInZhbHVlIjoiN0dtUmJJM0tuSzhYWFY5a2Z0T0RvUE1QRjVLQ1JsWm85dGlUelNNbTFqWmJCVENMMUlWaHErRG41dW1uNzlVUEgvaW5JNmZYRDBSeEhFaVN3NDlmOWF2RlhpRllzazI2bTN3ZitYQnllNXdJUWVVM3hFSzVRVEo2ZStWbzFUazEiLCJtYWMiOiJmYWY3NTFmNGI1ZTg5Y2M2MTdhNjkxOWJiNzQ4MGQ0ZTk5YjczNTk3NDlmYmZlNTQ5OGE0MDlmY2JiYmU1MWJlIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 3, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 10:33:52', '2025-05-10 10:33:52'),
(62, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; XSRF-TOKEN=eyJpdiI6IlA1VmhBQ2E4ZlprczFKR08ya2k4SUE9PSIsInZhbHVlIjoiRkNjNExSejVwaXBPK0Q1SUxXZVdJQzlUaGJGOHhnS1pxbDYwTmlPdWFsYVpCbFBwSmtudUR5RkVMZDFjVUpYTEVKNTJNNDJ4UG1XM1pNT25QVlZNNWZpVkRpN3Z5M3FydmgzNjVOMjFzZ25IbG42VDBrK2k1UHFEK1paa09mM3kiLCJtYWMiOiIwMDdmNjRhNzA2ZmM5Mjg5ZDM3NzFhOTBkY2VmMzI0YzJmMzg5ZjZhYzQ3YjQ2OTNlY2ViNjM0M2M5NjRmMzA5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjlOVjdrNE1hQ0cyeDB4SGllMnMxNVE9PSIsInZhbHVlIjoiOFFDWVEyemg2OEgyUWNLcjg2OXh6S1pBWThlcWRRSlhOWGVRQnVhRFMyWjdCSmZERkl2bkNYbDZkeHZYaHUyb1Y4WU8rb1drUE93NjA4RHVtR3VkN0dhcEU1RHF3K1FJdm4zZWFJaHF0VHpMZi8ybjZzd3A0QkR5Qi8rQWpGWWEiLCJtYWMiOiJkZTA4ZjhiMTFhNzI0OGU4NGRiZjEzNGJhMmZhMTJkYTdhMGRjMDMwZjNkYWYxNDIxNTM3Yzc4OGMyYzk1YTg1IiwidGFnIjoiIn0%3D; sidebar_collapsed=0\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 11:19:45', '2025-05-10 11:19:45'),
(63, 'GET', '[]', 'http://127.0.0.1:8000/aksesuar-yedek-parca', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; sidebar_collapsed=0; XSRF-TOKEN=eyJpdiI6IjZDLzIyU0lFa1NjNUtzYWZZTFhBNHc9PSIsInZhbHVlIjoiL08yTTFWMURVMjNTaEZsOEk3QWltL3dxeDEyVE5WbkI5aGhUVHN6ckpCWFYrT0liZVgvWXFSUGwxeUtxaUNodFZZNElDTG1FUFVFbGxscHdVNkhuYmptaVcxL1JXaFF1elFrWm1JZnFCWFJsNlcwMUtWVnVsRjUvbUExRFpRSkQiLCJtYWMiOiI4NmQ4OGJkODhiNWQ1Njc3YTk0NWQ3ODBjOTE3ZWE4NmRjMWY5NGI5NmNlZjAxYTZhZTE1NmMxNWFiZDBhMTdkIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InRzakJxWE90TGxzUklKWXplbGcweUE9PSIsInZhbHVlIjoiRWtwQTlqcGRZT0xiYXV5amF3OEgyLzkwa1dUU01HeU0yK09jVnhBZnFlK2ZMZWRNaXV5SDBPZyszUWFPcG5PQjkwNG4rWXA0cUVTcUpza0FQUjNaTHI4K1d2VW9BWHU5ZC91eU5DU085L2twcDB5QTQ5QnRKVU9ZSmRwN2YyTjkiLCJtYWMiOiIwYzEwNTI4YjgwZTBkMWUyNzY3ZGQ1MjU4OTZhNTM0NTJlNWMzZTQwYWU4ZjVhMjg1MzgxMzhiNzU0ZmIwOWE5IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 7, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 15:57:21', '2025-05-10 15:57:21'),
(64, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; sidebar_collapsed=0; XSRF-TOKEN=eyJpdiI6IkZHVU1ma1JLTGc4dVJIREhnTzZQbUE9PSIsInZhbHVlIjoiT2E1ZE80WjZHRDVJdDlKVlhWY1orNTBQbUJ3amNRc2J0TTROQXcxZXJTdjlEOXdQTXByRUpQV21ZUnNWaHpoWFVLNGhtV29rRXVGbkRYRnVneUZKMjd3VGtEdjErS2pHS1hZSUdxQUhEOVJrWkxidnFrZythS2k3dHFwbUxYbHYiLCJtYWMiOiIyNWY3NmJiYjU4NjQ2NmUxYWVmNTM1NDYwZjMwNWEwOWQ4YWNlMDdiZTNkMTExNjkzZjU1ODQxMWE2NTJiZGQyIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6InFLVWRCdktmSDJteEtTUzkzTkc3R1E9PSIsInZhbHVlIjoiVkh5Z0x2My9LTFRkaGJ5dUpjZXlURXhwMHlIOWtVbFB4eUNIVWVmTjVXZ2J5bWIvK2lVamdMTUQwV1VxKzRpOXByU1VLd3Q2YitOeCtrR1lCYlFqSkdNKy90MDZ3Y3BmSmR0WXZuWEl2aGo4OFFDMk5WMVdnam5BN2xqd0pGNlIiLCJtYWMiOiJjYmMxYzFlZGQ0MmEzZGJmNWMwMDFhNmFlNTlhM2RhMmQ1YjhhMTg0NDk4MDQ5N2Q0ZmZhNGE2N2RmYzgzMTNiIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 21:16:32', '2025-05-10 21:16:32'),
(65, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/?currency=USD', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Brave\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8\"],\"sec-gpc\":[\"1\"],\"accept-language\":[\"en-US,en;q=0.6\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/?currency=USD\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"cookie\":[\"XSRF-TOKEN=eyJpdiI6IkpiOU1IaXZUa2pNeVNnOWFFQml4K0E9PSIsInZhbHVlIjoiMzFTaUgvVTNDRHNxK01CcStGck41cXFRVE9iaU8xNitWRGk5L25XUmxlb1BnRmNpQm5JL3V6TEhIZjJ2V3ZoZzdoOEEzdk9SRlMyMGpoM0tSd21rYkFjVFB1YmNOTGF1V3gyeUJlcmExZVNaVnl2MUkvY3RlNEx3cFBPWUorTHIiLCJtYWMiOiJjZDFhYmJkMjIzZjY0ZGQxMTkyMWNhZDA3NTVjMTA1MGY2MjljZTE5NTk5OWZhNDlhMDA4NzdkMjc1NGM2ODVkIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IitzM1V6WXZ4UDU5QVBuUEsxNDFwY0E9PSIsInZhbHVlIjoiOHE1N0F2MnNKdTR3VlQvdlZ0eE44Q0VxcFVML3I4aXdmMFQ0LzhSWHBNQzJGbVBWcm5ubnZ3amEvTnVZVzl3aW94T3VjbFJCeHFudDExNDlvTjIyc0R0ZnNSVmkvdENEWmVXU0NrbW1WaG1GcFJwSVhWdzVHMjQ1RnBsVkFWWTQiLCJtYWMiOiIzNzg1MjY0NGU0MDVjNWQwZDA3YjU3NTE1ODlkOGU3YTAyODU1NzIxZGFiYWFlNWJlNjE3NGQ1NDUxNmFjN2RjIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-05-10 21:16:57', '2025-05-10 21:16:57'),
(66, 'GET', '[]', 'http://127.0.0.1:8000/aml-medwelt-cerrahi-dikis-seti-7li', 'http://127.0.0.1:8000/?currency=EUR', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/?currency=EUR\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; sidebar_collapsed=0; XSRF-TOKEN=eyJpdiI6IitDNUdWMXVwcWZ1YUFqcVZ5S29saFE9PSIsInZhbHVlIjoiRndoRjd4RFBINm9wNDdJZTB2OURPRldaTFFXYXVQN2U3R2d6QXp4RTVmSDBlZVh5c1dqbVh2S3pIaTBTZC9ubXF1a1AxV3QyOUNPWUJYQTRRYVBCdk1RSUEyM1oxcjBMQVJyQ09VVDdIRWlrQ20weWhLb1NmZzJhRFFLSDlKTVgiLCJtYWMiOiJhNDdlNGVhZWZhMmJjM2UxMWY1OWMwNmI2OGNhYjA2YjFkM2Y2NGU1OGZlOTIwZjY3MjYxZGQ4NDgzMDgyNGQzIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Ii9lVk9YM090Z1BWQ2p6d0haRlhKTHc9PSIsInZhbHVlIjoiMnF3dFlEb3ZNeEtEK2w5V1JsNmJacTZWdEp2MzhzS1FLanZyT2U0V3ZQOHIydWtuUXRZU0N5UTE3cHdrNklNNWdhazExRFZaTDV4TGZtS0I0RFlXMTFEMXZJWHU0c0tDWGFsQ0JtNWFhTzlSU2M3VkppTVBrQWhvc1pHS3hxa0ciLCJtYWMiOiJmMTBhMjdhNTdiNjNiMmE4OWMzZjQ0M2Q1Y2MzZmM0N2Y1YjAyZjUxNTNiNTczYjZlMmUzMzUwMjIxMTZmNmM1IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 39, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 21:32:11', '2025-05-10 21:32:11'),
(67, 'GET', '[]', 'http://127.0.0.1:8000/aksesuar-yedek-parca', 'http://127.0.0.1:8000/checkout/onepage/success', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/checkout\\/onepage\\/success\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; sidebar_collapsed=0; XSRF-TOKEN=eyJpdiI6InpXY3Z1REc0RW5lM3E0bXhSNjc1QXc9PSIsInZhbHVlIjoiTEdxUjZKekFhTHE2QVhTSkk1a0JUaEFFejRnalE2QnN3cVJHd256azdGMXFCeTloYVRvd3BkN0lEYmRtUE9vRzBnWDhURVNsRm9TZlZYenVSdUI1aE90VXJBQ0lpYmxQVTY0SlRlN04xNWRWYTZWbnoxZjlLL2pkN0NNK25peGMiLCJtYWMiOiJhYzk1NzZmOTQ4YTkzMWNlMmZjNzIxZjVhOGVkNzRhMTg5MDZkMjI1NWY5OTg3OTk1OTBlMmI4OGRmM2FhMTJlIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IkJ1dUNITWtUUjhWeGdyU0l1eFRZcFE9PSIsInZhbHVlIjoiS3F1RzE2YnNtNkltTi9lL2dhSHhwdGdQdEpTUTk2cEp4ajZVbUN2WWR1TWJtVys5YzY4Z1ppQi9EaHJJUjU5bXFhbXdxdjdvUjZMaW1Gam1uSWFUZk9aLzk2dWt5SU1EalFaaVhtMnZSTUlLTDMxK0JESDR4WUFqdC83ZldTdkciLCJtYWMiOiI3MDJlMDNmMTQzMWM1ZGM0M2NiODY3ZTRhNzAzNWJlZjg1NmI0OTM4MGU0ZGEyMTM3MmJlYmExN2E1NjY4YzVjIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 7, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 21:40:42', '2025-05-10 21:40:42'),
(68, 'GET', '[]', 'http://127.0.0.1:8000/aml-kerbl-elastrator-pensi', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; sidebar_collapsed=0; XSRF-TOKEN=eyJpdiI6InJpeGc3OWJjY05PYUY2K2YxdnZyNWc9PSIsInZhbHVlIjoiRzBEZTVXZmJqSUR3TlI3Smk0U2RaOVZqbDNiSE4zcHh6enVSMVlxaUdwdnpKMmUxZE85R2h5T05jNGc2ejY3ZkFEUzFZOEZLcVR3eFVxVWNnWDB5cm5Fc2JiNlVPL2p5ZWUyeVVVYWJ1Ri81WFdVaGVTSURFNU5aYUJZVVRxZ3EiLCJtYWMiOiIzZjY0MWRhZjg0MTY0MjVjY2QxOTdmYzcxNTg1YmVhMTgyNDY4MDJmNmI1ZjYzOGJiY2QzYzY1MWQyZjYwNTk2IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlpEREZEbWkrY0t1TXdpdzY4WnNOTmc9PSIsInZhbHVlIjoiTCs4UWErekJKaW1ZKzNybWJNbVE4R1liMHJON1E0TzRnbTIwUEJlSUduZnBPOEc4dE92d2IwQWNvMlZCSUVESVlVRWdvUGVyOEJiTm5venpXRm5IMU1HQURONTRDaUk4aUtuT0dGTmovbjFDbmEyVFpINWd6VDJYYmE3dzArbkMiLCJtYWMiOiI0ZjI3ODgyMWQyMjFjZjVmZTA4NDAxNDQwYzU5Y2I5MDdmZDEwYzY0MmQ3NWNkMWU2MzFhYTRhYjE0OTg4YWZkIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 36, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 21:49:44', '2025-05-10 21:49:45'),
(69, 'GET', '[]', 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', NULL, '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"empty\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; sidebar_collapsed=0; XSRF-TOKEN=eyJpdiI6IklJbzR5akdYeGN0TUV0SGVPVzFpNHc9PSIsInZhbHVlIjoieDhOUTJpNVRCdEJvTi92aUpmUmpvK0dyQ0ViNGM2WER4V3BWcWdsN1g1MW82MnNvN1A3WUNRenlpcVc1NWNjVDBFQlpOcFF2STZUN0xxQUE0VHlJaTBSek1JYm9Dd1ZBNmVCaGkvb0N6c1lnN0dRSHFMMmhQUEp5Qis0TnZxU0giLCJtYWMiOiI2NDIzY2Q3ODEzNTBhNWFlZGY4YzQ5MzI3MTY4ZmQyNmI4YzViYzU1ZWFkMTJhMmEwNTAwNjk1ZTFlZTIwZTczIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjQzYUVtc01Rc1NaVG1qVFlUM05pTnc9PSIsInZhbHVlIjoiMVJjZGhuU2V6LzY3TWY0Z3NUSmxyS3NGY3VVSVNFNC94MTlpZTRsTTArYlNXbUVJMUlOU2JOR1NManc1UUg0SDhTQ3UxQWd5N3ZVT1RIemxNM1ZYMVQ5dUdCMm1mUU1DRkdGZ0crWGxvUFFiOGRrY1ZVUVRHQjZEZTFHOFlRS3oiLCJtYWMiOiI5YjUzYzFhYmQxODZkMGNlYTZiYjYzNzBjNDBhYmJiNWJkMWMyYjFmMGQyZWJmYmVmYjBkYzY5Y2UwNjdjNTFhIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 21:53:55', '2025-05-10 21:53:55'),
(70, 'GET', '[]', 'http://127.0.0.1:8000/medikal-cihazlar', 'http://127.0.0.1:8000/checkout/onepage/success', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/checkout\\/onepage\\/success\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; sidebar_collapsed=0; XSRF-TOKEN=eyJpdiI6IlZUeFFCUmFlcmltN3QyTGFPNjB5MWc9PSIsInZhbHVlIjoiNE90alc0SnVObXpWVm1iRTZzZ3luL1pSMGJ4OUR1R0xid2hoTnJMZ2lJL0JmYUdNeGxBQTlIVXhPNjg3TVFIZ2lOM2pZbm4vWkVsWWYwQUE1L0Y3UjFCSjRqa2VpV0NFbkZGbU9WSzgzampuTnFsdEtDa3JGREJyU0JNV2orYTQiLCJtYWMiOiJjNGY3MTE2YjM2Y2MwYmQwNWE2MWNjMjgyMGU1ZWY5ZWM3ODMyZDM1ZTZlNjFmYTMxZmJlZTEyMzFlNDhkNzYzIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IlBOUFRZaG9NSk1OTFlVUTN5UWh4T1E9PSIsInZhbHVlIjoieEtLQlRjWTBtMEVxQStJY3lJbTBaemhRQTJZd0hrMFpDblRtUkpwKzVrM3ZmWXRXdDM3NkdsUkQzOCtzc1BVUStPdkhpNXNvUFl6aFZHdU5Sc1V5REpyRmgxNDVMUldaSWFvVjBjbG5yT3k2Wlpkb3B1VGVoT09rbU9FMU51VEwiLCJtYWMiOiI0NmU4ZmEyYjliNzRmNmU4MWUyNzZlNTgwNTc2YTFjMDBiMTk2OWNlYmY0OTkzODI0ZjYxZThlODlkN2U0Y2I2IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 22:17:24', '2025-05-10 22:17:24'),
(71, 'GET', '[]', 'http://127.0.0.1:8000/def-aselsan-heartline-ekranl%C4%B1-tam-otomatik-defibrilator-cihaz%C4%B1-oed', 'http://127.0.0.1:8000/medikal-cihazlar?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/medikal-cihazlar?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; sidebar_collapsed=0; XSRF-TOKEN=eyJpdiI6ImczeE9GeEcydWpoR0ROdFBKc2d0Q3c9PSIsInZhbHVlIjoiazFyYmNEenFWckhHTURlKzIrcWxwOExiUU5rcTg5VkxjbFllU2dhb0tjSTN4WVVvVnJrdlgzWCt4bXp6OGgzODZoVGEzNUxldjRtaC9EY0lUa01XaU50cUEzS1ErNHR6VFBrbmRNejNXdllkbmtJLy9vU0tDOGpBRmdRUVVVMUEiLCJtYWMiOiJiZjAwMmEyNmQwNjQ4OWE0MjBkMzM1MWIzOTk5NjVjMjZhM2I2Yzg0N2E1MzBiYTQ4YzJhMjdjMzUyYWQ3MzI5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6ImdtZ3cyMXJ5QzRWbUF3SnNmemVuc0E9PSIsInZhbHVlIjoidWRjNjdETEZvbnVnRy9SbnVZbE9ob213N3RvcEkyZFN3dklqM1dGUk1xOTNiUEpXVlh1NERmcG1kdHdnT3FoVVkxQVNYVWRCbXFXRzRhck9zTFlIdWlnU1YyYi9MbzFQcERyNmlkbWs1c2Fua0hiVzZFeGpUMmdLaTNxU3BjZUQiLCJtYWMiOiI4NjlhNjdkOTM2OGU3N2JjZWFkYzQ0MGJiZDIzOWNiOTk3MjgwOWVhZTU4ZGMyY2RiZTdiZjNlMWFkZWI0MTQ1IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 30, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-10 22:17:56', '2025-05-10 22:17:56'),
(72, 'GET', '[]', 'http://127.0.0.1:8000/root', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; sidebar_collapsed=0; XSRF-TOKEN=eyJpdiI6IklWYTNqMjF1aGFrZFBxNkVYYmcwSFE9PSIsInZhbHVlIjoiTzArM2Q1eUVPZTQ4UVlldzVFTFE2c3hxb1pyRU5FWXB0Nmw5aEowQUlVc1MybnNlNy9ZUk9ZK0ZjWHFkeDNtNllsNmVpd01ZY0wvUGN3OUs2UDNDREpvdTRHeGt5T25ZcWFtM0sxRjJpWnZjaSt0STBRVE52QTNWUWNPVmRiS1AiLCJtYWMiOiJjYjA2MjFhMzI0MjcwMjk0NmRmMTUzN2JmZmRmYjNhNTY1ZWE3OGQ2YmUwMzRmOWE1MDQ2N2IzZjFlMTYyODMwIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6ImpDd1pWb1lGeUlEczM1TFgvMTRPYWc9PSIsInZhbHVlIjoibW5IRFRCbGJNOTZrSmE1RWFrRFNZd2tRa3BEQjhvVFF5b0pEemNNKzNSMGxBS3pIRjQ4MjRoMDAvUmUrcCt5dzJPdUpTRVhKLzlxVUozOXlBd0cxR0FZTmVQVVpMWUZsNEEreHE3ejVNZzhNUXEwWmxTam8zYUVzK2RFaHVaNHUiLCJtYWMiOiI2YWRkNTUzMGQ5MTdlNTBjY2RhODNiNmI4MTdlMDcwYWE0ZTdkNjY2NTRjMjY5Y2JkMmM4Mzg2Y2MzOGNlZjcxIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 1, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-11 00:56:20', '2025-05-11 00:56:20'),
(73, 'GET', '[]', 'http://127.0.0.1:8000/defibrilator-cihazlar', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"dark_mode=0; sidebar_collapsed=0; XSRF-TOKEN=eyJpdiI6IkVhUEZ3MjFkWXdLSlE1eS9pNG5SK2c9PSIsInZhbHVlIjoiRFh5bStNbWs3dnZtMkp5RlNWdjdrbkFkQ3F3a282SEtxUHlXQlRNdDlEWi9HU2ZqN3dteE4wMGMxWWI1eXA5dThNR3RzdlRrSlJReDVkcG5UNTRUZkd4TVNtMmpWdCtoWkkwNkRxTE9nbHYvZEx0Y2RmaWxtTEt1MzhBYWN4K2EiLCJtYWMiOiIyZTM5YWM5NDBhMWY5NzczOTk1OWJhZGVlZDY2ZGVjMTk5OTE0ZGI4MDRkNDhlODE5NmVkZjc4MzRlNjYxYzU5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6ImxWN0dTL0Y0ZzllYTNEMTFTV3RPQlE9PSIsInZhbHVlIjoiaUdoK3FIaHBYMUoyV0hMSktqUjBQSFpoOG5LMFFzVkhuWkhieFpUNEN3bmJRRmhqVEpneWhTWkdiaWNlZ0Q4V1k0Rnplb3Voeno1SUI0VUVubjVFTGlNenpYY1JKSXF6S3VDWUtqaFE2dUNWTUM1eHJwTndielVNekNoRVA1UzUiLCJtYWMiOiJkYzJiYjg1ZTg4OWQ5YWNjNTNlMDZhZmZlM2U2OTc1OGVlMDU4NWQzMzg0NDA3MDk5ZDUzNGFkODJhNWMyMTc4IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 5, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-11 01:40:29', '2025-05-11 01:40:29'),
(74, 'GET', '[]', 'http://127.0.0.1:8000/storage/channel/1/yP3meA3Lb9LsRWSXBDXFIh9H3D84j8M1nCPUaGDm.png', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6IjFNNlNadGhJV0hpczE5b3ZWWk9kREE9PSIsInZhbHVlIjoiUVpjNzdFMHdVQXlRSmpWbE0xNEo3L3B3RUxiOE84V1I4aXkwT0JoSitXQ2JWeEZDRml2aERENTh3NGErNmlKQXhWbHJibTJZTHRuUjZIVkhxQUF0eFBMTmpIZHA3dksvWW41ZWM4aWlsSldNUE9PMGtrazBHdlByNitLVUxXM2kiLCJtYWMiOiIwOWNjYzI4Y2I0NGZjZmMzZmM5NGMwNDI2N2Q0NjU3MmEyZmE4Y2RlODI4ZjliYzNkNjI5ZTRhNzk0NjI0MDE5IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IkdQdm5XY2QyR3JqRERUWXdLWDZLb1E9PSIsInZhbHVlIjoiSDN0dHV2NmV2ZlZaWmVxOENjVFgyRzBESVVOQ2kzMnUwY2k2TVlmYUMrM0VnVE1BM1l0eFRsM0t6Q1ppQk9QbmhOaWk5WnBHWnBGVFRjeWdYWS84VHFZZTFNZHRralZwT1FWaDlQbS9Xem1sZm81Y2pYblVQbDJhVmY0eFhoMEsiLCJtYWMiOiIxYTU5YzQ5MTk1MmVjNTdmYzg5MmExMmZjOWViZTJjNDAwMWJjN2U5Nzg4OGUwMjljMjdmZmRkNDAyYjhmMTc0IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-11 02:57:11', '2025-05-11 02:57:11'),
(75, 'GET', '[]', 'http://127.0.0.1:8000/storage/channel/1/xAW7wuS7ZAC4Hcux84Xn3UnpLJRQrWgsegtbrV1J.png', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6ImUxZGdTakJueUlmdG0vQkYwc3VxdUE9PSIsInZhbHVlIjoiQWV3MXlmNWdPbjZTbXpZMHBRTzJRaU9Mak0vQnREQmlseENSaVRXL1FlYm9zRmY3MTNlei9EK21XOGFoTGxoVGdocy84czF0ZVVVK3o5bDd5VkZWazEvQmpwN0NQaTRLYU1uOWduTGZ6dzFHSWl6cVo0cXpVRSt6TmU0cFd5bXciLCJtYWMiOiI0MjI1OWQ4NGRiNjY0YmM1YTUyYjM3ZGNjZTgzM2M0MmQwNTdhY2ZhZDI3MzE2ZmE0NzNhZjg4YWNiNjBlYzIzIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjBRWkZYUUFKM2dBM1h5b3hlejZ6eUE9PSIsInZhbHVlIjoibFlOTUNodDhlT01xVzFacDI1cGtRZDlxUVhSWkcrQlJuenNVOSs1SlQ5Z2Y5a0RVSEJ0WVgzMGF5NE92VVREZlA5cHBORDlScVEycjd0OWVSbnRTMVkrNFdhaGg3ZE81UGxWV2owTzFaSG1PeG04YlZKdlYvcWthd2IvNHFrTCsiLCJtYWMiOiIyNGY1OWM0NGUwM2ExM2FlNGRjODMyYjRkMjFiMWQ5OTYxYTc5NGYwMmJkMzk2NDE2ZjI0MWNjZTU1NjcxOWYwIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-11 02:57:19', '2025-05-11 02:57:19'),
(76, 'GET', '[]', 'http://127.0.0.1:8000/storage/locales/AA1EzepzkXSsHMLQnlfro0xLKkE4cUTLJprGaxKG.png', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6ImJOM0IzWXBIRS95TC9NZzFqUmlCdnc9PSIsInZhbHVlIjoiMjhYSC9oUzcvLzBka0NRTjlIaExmMnVIVVo3SjJyMGJueXE1Tm95RWlva0tvTnN2dDZYVTJYVlpFWm0zaGdoSWxPNWxqVE5uSVBHYXNLREJMRGV0WjQ1ajU2RDZhZHpkNEI3MUlSTE9rcWViclRZSytscVFUQXJkQlYrRXRqbUIiLCJtYWMiOiJlYTNiMTg5MDViODU1ZjE5OWY0YTQzZDA2NTA3YmYzZjUwYmJlNGVhZjA5YTMwMWY4ODZhNjgwY2U4YTY1OTU1IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6ImRHeE1MdFVQSlVmNjMrb09NR095blE9PSIsInZhbHVlIjoiMTdLcU1pczhEN3pPSURGUUZSVDVZdkU5QjJmUnN5UGFLTUZ6VlNEcnQyKzl2UnBhanZrNkkvSzdYa2doVnJ5TjZ6T1hCK0gvVHBXanFRckd3ZEtmdzIrUzJVQzlDV0V3bisycjUzRjBsZHhtbkxUNlo3cW5KN2orTlZnMFhQWWIiLCJtYWMiOiI5OWU2ODcxZjNkOTE0ZmZhMGIyOTY2MjFjYjIzODNlOTE3ZDY4NzNmMjEwM2I5MGY5ZGYwYjAxM2Y2MmRkODFlIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-11 02:57:26', '2025-05-11 02:57:26');
INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(77, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/Zl5Izm9Y2HrLshu4x1jX1vhRESuwhEASZ9y65buB.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6IndkbU5CSEJDTW1sM2NjMnVqWENndHc9PSIsInZhbHVlIjoiendYQmdpMEFmZUZpbGh5SUNmMmVNUS9JNFo5RHVWRFRoSzJoekg0NytYNjJ4dDR4QVFqc1JMcExmclpoRUllVU5WY3dSNzlvWUZDT2V6UmlqNENiNFRkbkJiSEJVK1FMMVkrR1JWSm1kVVdXWDEwRVRQRU1zdjVTWkRoVlVqWVUiLCJtYWMiOiJhZTNkYmQ2NzQzNjlhNjAxZTYxNTZiZGNkZTFjMzAzMzZlY2JjZjRmOWFmNzkwYWE2ZDYxYTUzMTM1NTljMzk4IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6ImxFbjRpcllqSXlhWDJweC9DZlljY2c9PSIsInZhbHVlIjoiN3ZBMENXUDUvZU9wMVJKTndEZzNFQUo2dW5FTkdhdWpSWmNBWnNoS0VtWFRYT2JtazJxRWxFTXRvZnJNb3kvaFE3OVlaNUlTWDVwelRBeFcxVGpvQ2Zqc0VOc2h1N3ZvVEFqc3QwNTJNeHJja0xhTmxjYzRvYzVjUHVDK0FyWkQiLCJtYWMiOiJiOTNkZDg0MDcxMDQ0ZWY2Y2E3MzFmMmM5NWFjZmZkYjY3N2JkN2Q0ODY3OTFmMjA0MDRjZjBjMWYyZGZhODcyIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-11 02:57:31', '2025-05-11 02:57:31'),
(78, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/buF2IDuWqiKE98rjAoqtBq5PALrm2jjBa7G8cxqq.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6IlJQMW1WclVTUnBGcWwvK2JPa2U2VEE9PSIsInZhbHVlIjoidEp0ZFllTCtIY1J4enAvdTlIMG5mcWt2NDdXbGR0bVJ3TG5jSFVqTE9vdXBUR1pKVCtXTDJEaTgzVCtzLzhvNEROL2xiV0duRVAvS3ZraUhvQjZGdGpkM3N3bURIcFBrM2JQRnRKZWFQMG5nZ1kyY05FQkpaSDJwWmlBSjNyWUkiLCJtYWMiOiI2N2Y4MDY0M2Q2NTIxMGVmYTVjMjdlOWYzOWZmN2UwYjgzYTcxYTdhODFhYjZkMTU3OThiNmM4NzVkOGZkMjJmIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Ik5HbXFyd01tN1F2UUNxRXhWaHFlTGc9PSIsInZhbHVlIjoiSEhNaEtiSGdKSjZsTkl2YXdMNHNSU0VJU0tSdjFaUVdmZXFjaFJuR21SdWo3M1Ziamp1NTFNNFF4WGErZE8zS1Rxemk5VDhONytYR2xidnZWUjhUbGw5bC81c3lQdk1ITGRjUHNTWGVjekxtZGN2aWF0ZENJOENuZE5DZ29lamgiLCJtYWMiOiI1ZGI3ZDRmYzlmNDI5MmRmMjhiZDU3NjQ0Yzg3MThkZDg5MjdjYjEyYTY5MDc3ZjExMjAzZDhjNmMzNTU0ZWU1IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-11 02:57:40', '2025-05-11 02:57:40'),
(79, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/VxTLvuCxvSqdIZ8e7RtSKA1tzJX8mg3NeJ5neCvL.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6IlJQMW1WclVTUnBGcWwvK2JPa2U2VEE9PSIsInZhbHVlIjoidEp0ZFllTCtIY1J4enAvdTlIMG5mcWt2NDdXbGR0bVJ3TG5jSFVqTE9vdXBUR1pKVCtXTDJEaTgzVCtzLzhvNEROL2xiV0duRVAvS3ZraUhvQjZGdGpkM3N3bURIcFBrM2JQRnRKZWFQMG5nZ1kyY05FQkpaSDJwWmlBSjNyWUkiLCJtYWMiOiI2N2Y4MDY0M2Q2NTIxMGVmYTVjMjdlOWYzOWZmN2UwYjgzYTcxYTdhODFhYjZkMTU3OThiNmM4NzVkOGZkMjJmIiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6Ik5HbXFyd01tN1F2UUNxRXhWaHFlTGc9PSIsInZhbHVlIjoiSEhNaEtiSGdKSjZsTkl2YXdMNHNSU0VJU0tSdjFaUVdmZXFjaFJuR21SdWo3M1Ziamp1NTFNNFF4WGErZE8zS1Rxemk5VDhONytYR2xidnZWUjhUbGw5bC81c3lQdk1ITGRjUHNTWGVjekxtZGN2aWF0ZENJOENuZE5DZ29lamgiLCJtYWMiOiI1ZGI3ZDRmYzlmNDI5MmRmMjhiZDU3NjQ0Yzg3MThkZDg5MjdjYjEyYTY5MDc3ZjExMjAzZDhjNmMzNTU0ZWU1IiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-11 02:57:41', '2025-05-11 02:57:41'),
(80, 'GET', '[]', 'http://127.0.0.1:8000/storage/theme/1/BKjhrTICAMq2HJ0Nql4RVeD3LlPheBGFtIMrtUU5.webp', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"Windows\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/136.0.0.0 Safari\\/537.36 Edg\\/136.0.0.0\"],\"sec-ch-ua\":[\"\\\"Chromium\\\";v=\\\"136\\\", \\\"Microsoft Edge\\\";v=\\\"136\\\", \\\"Not.A\\/Brand\\\";v=\\\"99\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"image\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en;q=0.9\"],\"cookie\":[\"sidebar_collapsed=0; dark_mode=1; XSRF-TOKEN=eyJpdiI6InlSVDRYcDJSMXkvMmljd1Vydkl3U3c9PSIsInZhbHVlIjoiRitqQWlVcE9ucGliaGhSTFJMUGx1V1RJbEJsTEFhdmZUSGx6blA1VzM5SGw0bmxFV3ZRdFY5eFkvVHF0MVFlaElSei9hdWpOVmZkMlJ0M2dOclQ4OFhEUWlWb3V6NDFxVU94NjZTTlVjbG5DNUtIY1M5VXV5ZmMxd3lWRmFET2UiLCJtYWMiOiJiNTA0OTc3NDYzOGIxZjNiOTgxOTNiZTEyMWI5MmQzYzViNGMyNGMxMjI2MGYzNjNhY2U0ODQ4NTdiODljZGM1IiwidGFnIjoiIn0%3D; koumed_session=eyJpdiI6IjB0YnhMOGNjRHBHWEN5eS9XWmxaNUE9PSIsInZhbHVlIjoicUZEMVdabEpwUDlBZjFFSDFRU3hBb2tnc1o4NXNCWm9heGRiWUZHZTlPS2tseVp4cnBXbzFybnEzaWQzQ3k2UC9mOHAyZThyUzB1MHd3Mmx0eWEySmVVcklNNy96blJBcVBuMFk0c0YzWEUxcmlLWC9MdFZLUzFJOUFtaFNmalAiLCJtYWMiOiJjZWU0MTUzMzU5NGY0NGY5MzlkZjcwZGU2ODQ2OTMwNWFiNzY0ZDNlYTI1ZDY3MGQ4M2I1ODg3N2RkMTJiZjczIiwidGFnIjoiIn0%3D\"]}', '', 'Windows', 'Edge', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-05-11 02:57:43', '2025-05-11 02:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `item_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`item_options`)),
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `time_of_moving` date DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

CREATE TABLE `wishlist_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_rma_field`
--
ALTER TABLE `additional_rma_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `addresses_cart_id_foreign` (`cart_id`),
  ADD KEY `addresses_order_id_foreign` (`order_id`),
  ADD KEY `addresses_parent_address_id_foreign` (`parent_address_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_api_token_unique` (`api_token`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_code_unique` (`code`);

--
-- Indexes for table `attribute_families`
--
ALTER TABLE `attribute_families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_groups_attribute_family_id_name_unique` (`attribute_family_id`,`name`);

--
-- Indexes for table `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD PRIMARY KEY (`attribute_id`,`attribute_group_id`),
  ADD KEY `attribute_group_mappings_attribute_group_id_foreign` (`attribute_group_id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_option_locale_unique` (`attribute_option_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_order_item_id_foreign` (`order_item_id`),
  ADD KEY `bookings_booking_product_event_ticket_id_foreign` (`booking_product_event_ticket_id`),
  ADD KEY `bookings_order_id_foreign` (`order_id`),
  ADD KEY `bookings_product_id_foreign` (`product_id`);

--
-- Indexes for table `booking_products`
--
ALTER TABLE `booking_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `booking_product_appointment_slots`
--
ALTER TABLE `booking_product_appointment_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_product_appointment_slots_booking_product_id_foreign` (`booking_product_id`);

--
-- Indexes for table `booking_product_default_slots`
--
ALTER TABLE `booking_product_default_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_product_default_slots_booking_product_id_foreign` (`booking_product_id`);

--
-- Indexes for table `booking_product_event_tickets`
--
ALTER TABLE `booking_product_event_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_product_event_tickets_booking_product_id_foreign` (`booking_product_id`);

--
-- Indexes for table `booking_product_event_ticket_translations`
--
ALTER TABLE `booking_product_event_ticket_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bpet_locale_unique` (`booking_product_event_ticket_id`,`locale`);

--
-- Indexes for table `booking_product_rental_slots`
--
ALTER TABLE `booking_product_rental_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_product_rental_slots_booking_product_id_foreign` (`booking_product_id`);

--
-- Indexes for table `booking_product_table_slots`
--
ALTER TABLE `booking_product_table_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_product_table_slots_booking_product_id_foreign` (`booking_product_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_customer_id_foreign` (`customer_id`),
  ADD KEY `cart_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_parent_id_foreign` (`parent_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_tax_category_id_foreign` (`tax_category_id`);

--
-- Indexes for table `cart_item_inventories`
--
ALTER TABLE `cart_item_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_payment_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `cart_rules`
--
ALTER TABLE `cart_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD PRIMARY KEY (`cart_rule_id`,`channel_id`),
  ADD KEY `cart_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupons_cart_rule_id_foreign` (`cart_rule_id`);

--
-- Indexes for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` (`cart_rule_coupon_id`),
  ADD KEY `cart_rule_coupon_usage_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_customers_cart_rule_id_foreign` (`cart_rule_id`),
  ADD KEY `cart_rule_customers_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD PRIMARY KEY (`cart_rule_id`,`customer_group_id`),
  ADD KEY `cart_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_rule_translations_cart_rule_id_locale_unique` (`cart_rule_id`,`locale`);

--
-- Indexes for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_shipping_rates_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `catalog_rules`
--
ALTER TABLE `catalog_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD PRIMARY KEY (`catalog_rule_id`,`channel_id`),
  ADD KEY `catalog_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD PRIMARY KEY (`catalog_rule_id`,`customer_group_id`),
  ADD KEY `catalog_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_products_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_products_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_products_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_products_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_product_prices_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_product_prices_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_product_prices_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_product_prices_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD KEY `category_filterable_attributes_category_id_foreign` (`category_id`),
  ADD KEY `category_filterable_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_slug_locale_unique` (`category_id`,`slug`,`locale`),
  ADD KEY `category_translations_locale_id_foreign` (`locale_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channels_root_category_id_foreign` (`root_category_id`),
  ADD KEY `channels_default_locale_id_foreign` (`default_locale_id`),
  ADD KEY `channels_base_currency_id_foreign` (`base_currency_id`);

--
-- Indexes for table `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD PRIMARY KEY (`channel_id`,`currency_id`),
  ADD KEY `channel_currencies_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD UNIQUE KEY `channel_inventory_source_unique` (`channel_id`,`inventory_source_id`),
  ADD KEY `channel_inventory_sources_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD PRIMARY KEY (`channel_id`,`locale_id`),
  ADD KEY `channel_locales_locale_id_foreign` (`locale_id`);

--
-- Indexes for table `channel_translations`
--
ALTER TABLE `channel_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channel_translations_channel_id_locale_unique` (`channel_id`,`locale`),
  ADD KEY `channel_translations_locale_index` (`locale`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_page_channels`
--
ALTER TABLE `cms_page_channels`
  ADD UNIQUE KEY `cms_page_channels_cms_page_id_channel_id_unique` (`cms_page_id`,`channel_id`),
  ADD KEY `cms_page_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_page_translations_cms_page_id_url_key_locale_unique` (`cms_page_id`,`url_key`,`locale`);

--
-- Indexes for table `compare_items`
--
ALTER TABLE `compare_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compare_items_product_id_foreign` (`product_id`),
  ADD KEY `compare_items_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `core_config`
--
ALTER TABLE `core_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_states_country_id_foreign` (`country_id`);

--
-- Indexes for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_state_translations_country_state_id_foreign` (`country_state_id`);

--
-- Indexes for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_translations_country_id_foreign` (`country_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_exchange_rates_target_currency_unique` (`target_currency`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_api_token_unique` (`api_token`),
  ADD KEY `customers_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `customers_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_groups_code_unique` (`code`);

--
-- Indexes for table `customer_notes`
--
ALTER TABLE `customer_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_notes_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customer_password_resets`
--
ALTER TABLE `customer_password_resets`
  ADD KEY `customer_password_resets_email_index` (`email`);

--
-- Indexes for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_social_accounts_provider_id_unique` (`provider_id`),
  ADD KEY `customer_social_accounts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `custom_rma_field`
--
ALTER TABLE `custom_rma_field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_rma_field_code_unique` (`code`);

--
-- Indexes for table `custom_rma_option_field`
--
ALTER TABLE `custom_rma_option_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datagrid_saved_filters_user_id_name_src_unique` (`user_id`,`name`,`src`);

--
-- Indexes for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloadable_link_purchased_customer_id_foreign` (`customer_id`),
  ADD KEY `downloadable_link_purchased_order_id_foreign` (`order_id`),
  ADD KEY `downloadable_link_purchased_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gdpr_data_request`
--
ALTER TABLE `gdpr_data_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gdpr_data_request_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_batches`
--
ALTER TABLE `import_batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_batches_import_id_foreign` (`import_id`);

--
-- Indexes for table `inventory_sources`
--
ALTER TABLE `inventory_sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventory_sources_code_unique` (`code`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_order_id_foreign` (`order_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locales_code_unique` (`code`);

--
-- Indexes for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marketing_campaigns_channel_id_foreign` (`channel_id`),
  ADD KEY `marketing_campaigns_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `marketing_campaigns_marketing_template_id_foreign` (`marketing_template_id`),
  ADD KEY `marketing_campaigns_marketing_event_id_foreign` (`marketing_event_id`);

--
-- Indexes for table `marketing_events`
--
ALTER TABLE `marketing_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_templates`
--
ALTER TABLE `marketing_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_order_id_foreign` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_increment_id_unique` (`increment_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `order_comments`
--
ALTER TABLE `order_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_comments_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_parent_id_foreign` (`parent_id`),
  ADD KEY `order_items_tax_category_id_foreign` (`tax_category_id`);

--
-- Indexes for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payment_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `products_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chanel_locale_attribute_value_index_unique` (`channel`,`locale`,`attribute_id`,`product_id`),
  ADD UNIQUE KEY `product_attribute_values_unique_id_unique` (`unique_id`),
  ADD KEY `product_attribute_values_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_bundle_options_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundle_option_products_product_id_bundle_option_id_unique` (`product_id`,`product_bundle_option_id`),
  ADD KEY `product_bundle_option_id_foreign` (`product_bundle_option_id`);

--
-- Indexes for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_bundle_option_translations_option_id_locale_unique` (`product_bundle_option_id`,`locale`),
  ADD UNIQUE KEY `bundle_option_translations_locale_label_bundle_option_id_unique` (`locale`,`label`,`product_bundle_option_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD UNIQUE KEY `product_categories_product_id_category_id_unique` (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_channels`
--
ALTER TABLE `product_channels`
  ADD UNIQUE KEY `product_channels_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD UNIQUE KEY `product_cross_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_cross_sells_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_customer_group_prices_unique_id_unique` (`unique_id`),
  ADD KEY `product_customer_group_prices_product_id_foreign` (`product_id`),
  ADD KEY `product_customer_group_prices_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `product_customizable_options`
--
ALTER TABLE `product_customizable_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_customizable_options_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_customizable_option_prices`
--
ALTER TABLE `product_customizable_option_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pcop_product_customizable_option_id_foreign` (`product_customizable_option_id`);

--
-- Indexes for table `product_customizable_option_translations`
--
ALTER TABLE `product_customizable_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_customizable_option_id_locale_unique` (`product_customizable_option_id`,`locale`);

--
-- Indexes for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_links_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_translations_link_id_foreign` (`product_downloadable_link_id`);

--
-- Indexes for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_samples_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sample_translations_sample_id_foreign` (`product_downloadable_sample_id`);

--
-- Indexes for table `product_flat`
--
ALTER TABLE `product_flat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_flat_unique_index` (`product_id`,`channel`,`locale`),
  ADD KEY `product_flat_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `product_flat_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grouped_products_product_id_associated_product_id_unique` (`product_id`,`associated_product_id`),
  ADD KEY `product_grouped_products_associated_product_id_foreign` (`associated_product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_source_vendor_index_unique` (`product_id`,`inventory_source_id`,`vendor_id`),
  ADD KEY `product_inventories_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_inventory_indices_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_inventory_indices_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_ordered_inventories_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_ordered_inventories_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `price_indices_product_id_customer_group_id_channel_id_unique` (`product_id`,`customer_group_id`,`channel_id`),
  ADD KEY `product_price_indices_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `product_price_indices_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_relations`
--
ALTER TABLE `product_relations`
  ADD UNIQUE KEY `product_relations_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_relations_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_review_images_review_id_foreign` (`review_id`);

--
-- Indexes for table `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD UNIQUE KEY `product_super_attributes_product_id_attribute_id_unique` (`product_id`,`attribute_id`),
  ADD KEY `product_super_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD UNIQUE KEY `product_up_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_up_sells_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_videos`
--
ALTER TABLE `product_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_videos_product_id_foreign` (`product_id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_order_id_foreign` (`order_id`);

--
-- Indexes for table `refund_items`
--
ALTER TABLE `refund_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_items_parent_id_foreign` (`parent_id`),
  ADD KEY `refund_items_order_item_id_foreign` (`order_item_id`),
  ADD KEY `refund_items_refund_id_foreign` (`refund_id`);

--
-- Indexes for table `rma`
--
ALTER TABLE `rma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rma_images`
--
ALTER TABLE `rma_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rma_images_rma_id_foreign` (`rma_id`);

--
-- Indexes for table `rma_items`
--
ALTER TABLE `rma_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rma_items_rma_id_foreign` (`rma_id`),
  ADD KEY `rma_items_rma_reason_id_foreign` (`rma_reason_id`);

--
-- Indexes for table `rma_messages`
--
ALTER TABLE `rma_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rma_messages_rma_id_foreign` (`rma_id`);

--
-- Indexes for table `rma_reasons`
--
ALTER TABLE `rma_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rma_reason_resolutions`
--
ALTER TABLE `rma_reason_resolutions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rma_reason_resolutions_rma_reason_id_foreign` (`rma_reason_id`);

--
-- Indexes for table `rma_rules`
--
ALTER TABLE `rma_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rma_status`
--
ALTER TABLE `rma_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_terms_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_items_shipment_id_foreign` (`shipment_id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribers_list_customer_id_foreign` (`customer_id`),
  ADD KEY `subscribers_list_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `supplier_branches`
--
ALTER TABLE `supplier_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_categories`
--
ALTER TABLE `tax_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_categories_code_unique` (`code`);

--
-- Indexes for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_map_index_unique` (`tax_category_id`,`tax_rate_id`),
  ADD KEY `tax_categories_tax_rates_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rates_identifier_unique` (`identifier`);

--
-- Indexes for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_customizations_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_customization_id_foreign` (`theme_customization_id`);

--
-- Indexes for table `url_rewrites`
--
ALTER TABLE `url_rewrites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_visitable_type_visitable_id_index` (`visitable_type`,`visitable_id`),
  ADD KEY `visits_visitor_type_visitor_id_index` (`visitor_type`,`visitor_id`),
  ADD KEY `visits_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_items_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_items_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_items_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_rma_field`
--
ALTER TABLE `additional_rma_field`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `attribute_families`
--
ALTER TABLE `attribute_families`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_products`
--
ALTER TABLE `booking_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_product_appointment_slots`
--
ALTER TABLE `booking_product_appointment_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_product_default_slots`
--
ALTER TABLE `booking_product_default_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_product_event_tickets`
--
ALTER TABLE `booking_product_event_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_product_event_ticket_translations`
--
ALTER TABLE `booking_product_event_ticket_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_product_rental_slots`
--
ALTER TABLE `booking_product_rental_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_product_table_slots`
--
ALTER TABLE `booking_product_table_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart_item_inventories`
--
ALTER TABLE `cart_item_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_payment`
--
ALTER TABLE `cart_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart_rules`
--
ALTER TABLE `cart_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `catalog_rules`
--
ALTER TABLE `catalog_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `channel_translations`
--
ALTER TABLE `channel_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `compare_items`
--
ALTER TABLE `compare_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_config`
--
ALTER TABLE `core_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_notes`
--
ALTER TABLE `customer_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_rma_field`
--
ALTER TABLE `custom_rma_field`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_rma_option_field`
--
ALTER TABLE `custom_rma_option_field`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gdpr_data_request`
--
ALTER TABLE `gdpr_data_request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_batches`
--
ALTER TABLE `import_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_sources`
--
ALTER TABLE `inventory_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locales`
--
ALTER TABLE `locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_events`
--
ALTER TABLE `marketing_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketing_templates`
--
ALTER TABLE `marketing_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_comments`
--
ALTER TABLE `order_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1155;

--
-- AUTO_INCREMENT for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_customizable_options`
--
ALTER TABLE `product_customizable_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_customizable_option_prices`
--
ALTER TABLE `product_customizable_option_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_customizable_option_translations`
--
ALTER TABLE `product_customizable_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_flat`
--
ALTER TABLE `product_flat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `product_inventories`
--
ALTER TABLE `product_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_videos`
--
ALTER TABLE `product_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `refund_items`
--
ALTER TABLE `refund_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rma`
--
ALTER TABLE `rma`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rma_images`
--
ALTER TABLE `rma_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rma_items`
--
ALTER TABLE `rma_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rma_messages`
--
ALTER TABLE `rma_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rma_reasons`
--
ALTER TABLE `rma_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rma_reason_resolutions`
--
ALTER TABLE `rma_reason_resolutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rma_rules`
--
ALTER TABLE `rma_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rma_status`
--
ALTER TABLE `rma_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipment_items`
--
ALTER TABLE `shipment_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_branches`
--
ALTER TABLE `supplier_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_categories`
--
ALTER TABLE `tax_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `url_rewrites`
--
ALTER TABLE `url_rewrites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_parent_address_id_foreign` FOREIGN KEY (`parent_address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD CONSTRAINT `attribute_groups_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD CONSTRAINT `attribute_group_mappings_attribute_group_id_foreign` FOREIGN KEY (`attribute_group_id`) REFERENCES `attribute_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_group_mappings_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD CONSTRAINT `attribute_option_translations_attribute_option_id_foreign` FOREIGN KEY (`attribute_option_id`) REFERENCES `attribute_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_booking_product_event_ticket_id_foreign` FOREIGN KEY (`booking_product_event_ticket_id`) REFERENCES `booking_product_event_tickets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bookings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bookings_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bookings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `booking_products`
--
ALTER TABLE `booking_products`
  ADD CONSTRAINT `booking_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_product_appointment_slots`
--
ALTER TABLE `booking_product_appointment_slots`
  ADD CONSTRAINT `booking_product_appointment_slots_booking_product_id_foreign` FOREIGN KEY (`booking_product_id`) REFERENCES `booking_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_product_default_slots`
--
ALTER TABLE `booking_product_default_slots`
  ADD CONSTRAINT `booking_product_default_slots_booking_product_id_foreign` FOREIGN KEY (`booking_product_id`) REFERENCES `booking_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_product_event_tickets`
--
ALTER TABLE `booking_product_event_tickets`
  ADD CONSTRAINT `booking_product_event_tickets_booking_product_id_foreign` FOREIGN KEY (`booking_product_id`) REFERENCES `booking_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_product_event_ticket_translations`
--
ALTER TABLE `booking_product_event_ticket_translations`
  ADD CONSTRAINT `bpet_translations_fk` FOREIGN KEY (`booking_product_event_ticket_id`) REFERENCES `booking_product_event_tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_product_rental_slots`
--
ALTER TABLE `booking_product_rental_slots`
  ADD CONSTRAINT `booking_product_rental_slots_booking_product_id_foreign` FOREIGN KEY (`booking_product_id`) REFERENCES `booking_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_product_table_slots`
--
ALTER TABLE `booking_product_table_slots`
  ADD CONSTRAINT `booking_product_table_slots_booking_product_id_foreign` FOREIGN KEY (`booking_product_id`) REFERENCES `booking_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `cart_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Constraints for table `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD CONSTRAINT `cart_payment_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD CONSTRAINT `cart_rule_channels_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD CONSTRAINT `cart_rule_coupons_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  ADD CONSTRAINT `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` FOREIGN KEY (`cart_rule_coupon_id`) REFERENCES `cart_rule_coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_coupon_usage_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD CONSTRAINT `cart_rule_customers_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD CONSTRAINT `cart_rule_customer_groups_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  ADD CONSTRAINT `cart_rule_translations_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD CONSTRAINT `cart_shipping_rates_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD CONSTRAINT `catalog_rule_channels_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD CONSTRAINT `catalog_rule_customer_groups_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD CONSTRAINT `catalog_rule_products_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  ADD CONSTRAINT `catalog_rule_product_prices_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD CONSTRAINT `category_filterable_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_filterable_attributes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_translations_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channels`
--
ALTER TABLE `channels`
  ADD CONSTRAINT `channels_base_currency_id_foreign` FOREIGN KEY (`base_currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `channels_default_locale_id_foreign` FOREIGN KEY (`default_locale_id`) REFERENCES `locales` (`id`),
  ADD CONSTRAINT `channels_root_category_id_foreign` FOREIGN KEY (`root_category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD CONSTRAINT `channel_currencies_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_currencies_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD CONSTRAINT `channel_inventory_sources_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_inventory_sources_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD CONSTRAINT `channel_locales_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_locales_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_translations`
--
ALTER TABLE `channel_translations`
  ADD CONSTRAINT `channel_translations_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_channels`
--
ALTER TABLE `cms_page_channels`
  ADD CONSTRAINT `cms_page_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cms_page_channels_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  ADD CONSTRAINT `cms_page_translations_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `compare_items`
--
ALTER TABLE `compare_items`
  ADD CONSTRAINT `compare_items_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compare_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `country_states`
--
ALTER TABLE `country_states`
  ADD CONSTRAINT `country_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD CONSTRAINT `country_state_translations_country_state_id_foreign` FOREIGN KEY (`country_state_id`) REFERENCES `country_states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD CONSTRAINT `country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD CONSTRAINT `currency_exchange_rates_target_currency_foreign` FOREIGN KEY (`target_currency`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `customers_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_notes`
--
ALTER TABLE `customer_notes`
  ADD CONSTRAINT `customer_notes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  ADD CONSTRAINT `customer_social_accounts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `downloadable_link_purchased_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gdpr_data_request`
--
ALTER TABLE `gdpr_data_request`
  ADD CONSTRAINT `gdpr_data_request_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `import_batches`
--
ALTER TABLE `import_batches`
  ADD CONSTRAINT `import_batches_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD CONSTRAINT `marketing_campaigns_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_marketing_event_id_foreign` FOREIGN KEY (`marketing_event_id`) REFERENCES `marketing_events` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_marketing_template_id_foreign` FOREIGN KEY (`marketing_template_id`) REFERENCES `marketing_templates` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_comments`
--
ALTER TABLE `order_comments`
  ADD CONSTRAINT `order_comments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Constraints for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD CONSTRAINT `order_payment_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD CONSTRAINT `order_transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`),
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  ADD CONSTRAINT `product_bundle_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  ADD CONSTRAINT `product_bundle_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `product_bundle_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_bundle_option_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  ADD CONSTRAINT `product_bundle_option_translations_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `product_bundle_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_channels`
--
ALTER TABLE `product_channels`
  ADD CONSTRAINT `product_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_channels_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD CONSTRAINT `product_cross_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_cross_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  ADD CONSTRAINT `product_customer_group_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_customer_group_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_customizable_options`
--
ALTER TABLE `product_customizable_options`
  ADD CONSTRAINT `product_customizable_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_customizable_option_prices`
--
ALTER TABLE `product_customizable_option_prices`
  ADD CONSTRAINT `pcop_product_customizable_option_id_foreign` FOREIGN KEY (`product_customizable_option_id`) REFERENCES `product_customizable_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_customizable_option_translations`
--
ALTER TABLE `product_customizable_option_translations`
  ADD CONSTRAINT `pcot_product_customizable_option_id_foreign` FOREIGN KEY (`product_customizable_option_id`) REFERENCES `product_customizable_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  ADD CONSTRAINT `product_downloadable_links_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  ADD CONSTRAINT `link_translations_link_id_foreign` FOREIGN KEY (`product_downloadable_link_id`) REFERENCES `product_downloadable_links` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  ADD CONSTRAINT `product_downloadable_samples_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  ADD CONSTRAINT `sample_translations_sample_id_foreign` FOREIGN KEY (`product_downloadable_sample_id`) REFERENCES `product_downloadable_samples` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_flat`
--
ALTER TABLE `product_flat`
  ADD CONSTRAINT `product_flat_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`),
  ADD CONSTRAINT `product_flat_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_flat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_flat_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  ADD CONSTRAINT `product_grouped_products_associated_product_id_foreign` FOREIGN KEY (`associated_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_grouped_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD CONSTRAINT `product_inventories_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  ADD CONSTRAINT `product_inventory_indices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventory_indices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD CONSTRAINT `product_ordered_inventories_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ordered_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  ADD CONSTRAINT `product_price_indices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_price_indices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_price_indices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_relations`
--
ALTER TABLE `product_relations`
  ADD CONSTRAINT `product_relations_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_relations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  ADD CONSTRAINT `product_review_images_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD CONSTRAINT `product_super_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_super_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD CONSTRAINT `product_up_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_up_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_videos`
--
ALTER TABLE `product_videos`
  ADD CONSTRAINT `product_videos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refund_items`
--
ALTER TABLE `refund_items`
  ADD CONSTRAINT `refund_items_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `refund_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_refund_id_foreign` FOREIGN KEY (`refund_id`) REFERENCES `refunds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rma_images`
--
ALTER TABLE `rma_images`
  ADD CONSTRAINT `rma_images_rma_id_foreign` FOREIGN KEY (`rma_id`) REFERENCES `rma` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rma_items`
--
ALTER TABLE `rma_items`
  ADD CONSTRAINT `rma_items_rma_id_foreign` FOREIGN KEY (`rma_id`) REFERENCES `rma` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rma_items_rma_reason_id_foreign` FOREIGN KEY (`rma_reason_id`) REFERENCES `rma_reasons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rma_messages`
--
ALTER TABLE `rma_messages`
  ADD CONSTRAINT `rma_messages_rma_id_foreign` FOREIGN KEY (`rma_id`) REFERENCES `rma` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rma_reason_resolutions`
--
ALTER TABLE `rma_reason_resolutions`
  ADD CONSTRAINT `rma_reason_resolutions_rma_reason_id_foreign` FOREIGN KEY (`rma_reason_id`) REFERENCES `rma_reasons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD CONSTRAINT `search_terms_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD CONSTRAINT `shipment_items_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD CONSTRAINT `subscribers_list_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribers_list_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD CONSTRAINT `tax_categories_tax_rates_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tax_categories_tax_rates_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  ADD CONSTRAINT `theme_customizations_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  ADD CONSTRAINT `theme_customization_id_foreign` FOREIGN KEY (`theme_customization_id`) REFERENCES `theme_customizations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD CONSTRAINT `wishlist_items_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
