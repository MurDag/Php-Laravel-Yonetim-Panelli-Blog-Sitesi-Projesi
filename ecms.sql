-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 22 Mar 2021, 20:09:53
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ecms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_must` int(11) DEFAULT NULL,
  `blog_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blogs`
--

INSERT INTO `blogs` (`id`, `created_at`, `updated_at`, `blog_title`, `blog_slug`, `blog_file`, `blog_must`, `blog_content`, `blog_status`) VALUES
(1, '2021-03-21 09:23:08', '2021-03-21 09:23:08', 'Blog Title 01', 'blog-title-1', '6057380b994ce.png', 0, '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetur lacus. Integer tempor ut leo id molestie. Nulla sagittis, orci in malesuada scelerisque, enim massa pharetra ipsum, vel pharetra sem enim quis odio. Sed fermentum ligula sed lacus pretium pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam gravida, nunc at pellentesque pretium, justo nibh scelerisque tellus, non commodo sapien ipsum a est. Donec a tempus justo, nec blandit nulla. Nam sodales risus risus, sit amet fringilla nisi congue ac. Maecenas bibendum tellus vel massa semper efficitur. Nam blandit, ex sed suscipit ultricies, ante massa pharetra ex, at varius justo ligula vitae magna. Integer vel ex eu sem sodales tincidunt sed ut ex. Praesent cursus velit nec lacus auctor accumsan id sit amet tellus. Aliquam erat volutpat. Sed tortor risus, placerat quis turpis sed, gravida porttitor quam. Ut eget consequat ante, eu sagittis arcu. Sed consectetur turpis at lacus finibus consectetur. Nunc risus diam, semper vel augue vitae, luctus malesuada leo. Pellentesque sit amet neque arcu. Proin ac pharetra leo. Nulla tincidunt sit amet felis ac mattis. Vivamus nec turpis sed justo aliquam accumsan sit amet in lacus. Suspendisse potenti. Quisque enim odio, varius at dapibus eu, dignissim sit amet sem. Maecenas id lectus consequat, ultricies massa et, lobortis elit. Duis aliquet, nibh sit amet sagittis volutpat, arcu lorem ultricies purus, ut tempus ex felis sit amet augue. Cras consequat, libero id lacinia iaculis, nulla ante molestie diam, sit amet lobortis diam sapien sit amet nisi. Fusce egestas lacus turpis, in congue justo iaculis ut. In dignissim vel ipsum in finibus. Nullam vulputate ut enim ut sollicitudin. Cras gravida finibus ante, dapibus imperdiet augue imperdiet vitae. Praesent sem elit, eleifend sed sodales ut, egestas sed sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ultrices lectus sit amet metus molestie, vitae venenatis purus mattis. Fusce dictum velit leo, at ultrices diam dignissim et. Fusce vitae sapien et velit congue ornare a vitae dui. Integer eget convallis purus, eget congue lorem. Aenean aliquet diam et rhoncus semper. Sed arcu nibh, sodales a augue nec, accumsan sagittis nunc. Duis ac diam egestas, vulputate tellus in, semper justo. Aliquam convallis ornare mi. Aliquam consequat mollis velit sit amet aliquam. Etiam sagittis orci sapien, sit amet fermentum eros cursus nec. Aenean et varius arcu, sed accumsan metus. Sed feugiat libero eget diam iaculis aliquam. Nam mollis tincidunt libero eget vehicula. Nam nibh ligula, ultricies et nulla eget, pharetra ullamcorper felis. Nulla nec nunc tincidunt, pellentesque sapien sit amet, aliquet eros. Duis ac finibus tortor. Maecenas eget justo mauris. Sed lobortis mauris ullamcorper volutpat egestas. Cras libero metus, pretium semper turpis maximus, vulputate egestas lacus. Donec eu ante dignissim, suscipit est eget, pulvinar turpis. Integer varius vel leo in pellentesque.</p>', '0'),
(2, '2021-03-21 09:23:08', '2021-03-21 09:12:44', 'Blog Title 02', 'blog-title-02', '6057383c10f46.png', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetur lacus. Integer tempor ut leo id molestie. Nulla sagittis, orci in malesuada scelerisque, enim massa pharetra ipsum, vel pharetra sem enim quis odio. Sed fermentum ligula sed lacus pretium pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam gravida, nunc at pellentesque pretium, justo nibh scelerisque tellus, non commodo sapien ipsum a est. Donec a tempus justo, nec blandit nulla. Nam sodales risus risus, sit amet fringilla nisi congue ac. Maecenas bibendum tellus vel massa semper efficitur. Nam blandit, ex sed suscipit ultricies, ante massa pharetra ex, at varius justo ligula vitae magna. Integer vel ex eu sem sodales tincidunt sed ut ex. Praesent cursus velit nec lacus auctor accumsan id sit amet tellus. Aliquam erat volutpat. Sed tortor risus, placerat quis turpis sed, gravida porttitor quam. Ut eget consequat ante, eu sagittis arcu. Sed consectetur turpis at lacus finibus consectetur. Nunc risus diam, semper vel augue vitae, luctus malesuada leo. Pellentesque sit amet neque arcu. Proin ac pharetra leo. Nulla tincidunt sit amet felis ac mattis. Vivamus nec turpis sed justo aliquam accumsan sit amet in lacus. Suspendisse potenti. Quisque enim odio, varius at dapibus eu, dignissim sit amet sem. Maecenas id lectus consequat, ultricies massa et, lobortis elit. Duis aliquet, nibh sit amet sagittis volutpat, arcu lorem ultricies purus, ut tempus ex felis sit amet augue. Cras consequat, libero id lacinia iaculis, nulla ante molestie diam, sit amet lobortis diam sapien sit amet nisi. Fusce egestas lacus turpis, in congue justo iaculis ut. In dignissim vel ipsum in finibus. Nullam vulputate ut enim ut sollicitudin. Cras gravida finibus ante, dapibus imperdiet augue imperdiet vitae. Praesent sem elit, eleifend sed sodales ut, egestas sed sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ultrices lectus sit amet metus molestie, vitae venenatis purus mattis. Fusce dictum velit leo, at ultrices diam dignissim et. Fusce vitae sapien et velit congue ornare a vitae dui. Integer eget convallis purus, eget congue lorem. Aenean aliquet diam et rhoncus semper. Sed arcu nibh, sodales a augue nec, accumsan sagittis nunc. Duis ac diam egestas, vulputate tellus in, semper justo. Aliquam convallis ornare mi. Aliquam consequat mollis velit sit amet aliquam. Etiam sagittis orci sapien, sit amet fermentum eros cursus nec. Aenean et varius arcu, sed accumsan metus. Sed feugiat libero eget diam iaculis aliquam. Nam mollis tincidunt libero eget vehicula. Nam nibh ligula, ultricies et nulla eget, pharetra ullamcorper felis. Nulla nec nunc tincidunt, pellentesque sapien sit amet, aliquet eros. Duis ac finibus tortor. Maecenas eget justo mauris. Sed lobortis mauris ullamcorper volutpat egestas. Cras libero metus, pretium semper turpis maximus, vulputate egestas lacus. Donec eu ante dignissim, suscipit est eget, pulvinar turpis. Integer varius vel leo in pellentesque.</p>', '0'),
(3, '2021-03-21 09:23:08', '2021-03-21 09:13:01', 'Blog Title 03', 'blog-title-03', '6057384d7818e.png', 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetur lacus. Integer tempor ut leo id molestie. Nulla sagittis, orci in malesuada scelerisque, enim massa pharetra ipsum, vel pharetra sem enim quis odio. Sed fermentum ligula sed lacus pretium pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam gravida, nunc at pellentesque pretium, justo nibh scelerisque tellus, non commodo sapien ipsum a est. Donec a tempus justo, nec blandit nulla. Nam sodales risus risus, sit amet fringilla nisi congue ac. Maecenas bibendum tellus vel massa semper efficitur. Nam blandit, ex sed suscipit ultricies, ante massa pharetra ex, at varius justo ligula vitae magna. Integer vel ex eu sem sodales tincidunt sed ut ex. Praesent cursus velit nec lacus auctor accumsan id sit amet tellus. Aliquam erat volutpat. Sed tortor risus, placerat quis turpis sed, gravida porttitor quam. Ut eget consequat ante, eu sagittis arcu. Sed consectetur turpis at lacus finibus consectetur. Nunc risus diam, semper vel augue vitae, luctus malesuada leo. Pellentesque sit amet neque arcu. Proin ac pharetra leo. Nulla tincidunt sit amet felis ac mattis. Vivamus nec turpis sed justo aliquam accumsan sit amet in lacus. Suspendisse potenti. Quisque enim odio, varius at dapibus eu, dignissim sit amet sem. Maecenas id lectus consequat, ultricies massa et, lobortis elit. Duis aliquet, nibh sit amet sagittis volutpat, arcu lorem ultricies purus, ut tempus ex felis sit amet augue. Cras consequat, libero id lacinia iaculis, nulla ante molestie diam, sit amet lobortis diam sapien sit amet nisi. Fusce egestas lacus turpis, in congue justo iaculis ut. In dignissim vel ipsum in finibus. Nullam vulputate ut enim ut sollicitudin. Cras gravida finibus ante, dapibus imperdiet augue imperdiet vitae. Praesent sem elit, eleifend sed sodales ut, egestas sed sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ultrices lectus sit amet metus molestie, vitae venenatis purus mattis. Fusce dictum velit leo, at ultrices diam dignissim et. Fusce vitae sapien et velit congue ornare a vitae dui. Integer eget convallis purus, eget congue lorem. Aenean aliquet diam et rhoncus semper. Sed arcu nibh, sodales a augue nec, accumsan sagittis nunc. Duis ac diam egestas, vulputate tellus in, semper justo. Aliquam convallis ornare mi. Aliquam consequat mollis velit sit amet aliquam. Etiam sagittis orci sapien, sit amet fermentum eros cursus nec. Aenean et varius arcu, sed accumsan metus. Sed feugiat libero eget diam iaculis aliquam. Nam mollis tincidunt libero eget vehicula. Nam nibh ligula, ultricies et nulla eget, pharetra ullamcorper felis. Nulla nec nunc tincidunt, pellentesque sapien sit amet, aliquet eros. Duis ac finibus tortor. Maecenas eget justo mauris. Sed lobortis mauris ullamcorper volutpat egestas. Cras libero metus, pretium semper turpis maximus, vulputate egestas lacus. Donec eu ante dignissim, suscipit est eget, pulvinar turpis. Integer varius vel leo in pellentesque.</p>', '0'),
(4, '2021-03-21 09:23:08', '2021-03-21 09:12:52', 'Blog Title 04', 'blog-title-04', '6057384433895.png', 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetur lacus. Integer tempor ut leo id molestie. Nulla sagittis, orci in malesuada scelerisque, enim massa pharetra ipsum, vel pharetra sem enim quis odio. Sed fermentum ligula sed lacus pretium pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam gravida, nunc at pellentesque pretium, justo nibh scelerisque tellus, non commodo sapien ipsum a est. Donec a tempus justo, nec blandit nulla. Nam sodales risus risus, sit amet fringilla nisi congue ac. Maecenas bibendum tellus vel massa semper efficitur. Nam blandit, ex sed suscipit ultricies, ante massa pharetra ex, at varius justo ligula vitae magna. Integer vel ex eu sem sodales tincidunt sed ut ex. Praesent cursus velit nec lacus auctor accumsan id sit amet tellus. Aliquam erat volutpat. Sed tortor risus, placerat quis turpis sed, gravida porttitor quam. Ut eget consequat ante, eu sagittis arcu. Sed consectetur turpis at lacus finibus consectetur. Nunc risus diam, semper vel augue vitae, luctus malesuada leo. Pellentesque sit amet neque arcu. Proin ac pharetra leo. Nulla tincidunt sit amet felis ac mattis. Vivamus nec turpis sed justo aliquam accumsan sit amet in lacus. Suspendisse potenti. Quisque enim odio, varius at dapibus eu, dignissim sit amet sem. Maecenas id lectus consequat, ultricies massa et, lobortis elit. Duis aliquet, nibh sit amet sagittis volutpat, arcu lorem ultricies purus, ut tempus ex felis sit amet augue. Cras consequat, libero id lacinia iaculis, nulla ante molestie diam, sit amet lobortis diam sapien sit amet nisi. Fusce egestas lacus turpis, in congue justo iaculis ut. In dignissim vel ipsum in finibus. Nullam vulputate ut enim ut sollicitudin. Cras gravida finibus ante, dapibus imperdiet augue imperdiet vitae. Praesent sem elit, eleifend sed sodales ut, egestas sed sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ultrices lectus sit amet metus molestie, vitae venenatis purus mattis. Fusce dictum velit leo, at ultrices diam dignissim et. Fusce vitae sapien et velit congue ornare a vitae dui. Integer eget convallis purus, eget congue lorem. Aenean aliquet diam et rhoncus semper. Sed arcu nibh, sodales a augue nec, accumsan sagittis nunc. Duis ac diam egestas, vulputate tellus in, semper justo. Aliquam convallis ornare mi. Aliquam consequat mollis velit sit amet aliquam. Etiam sagittis orci sapien, sit amet fermentum eros cursus nec. Aenean et varius arcu, sed accumsan metus. Sed feugiat libero eget diam iaculis aliquam. Nam mollis tincidunt libero eget vehicula. Nam nibh ligula, ultricies et nulla eget, pharetra ullamcorper felis. Nulla nec nunc tincidunt, pellentesque sapien sit amet, aliquet eros. Duis ac finibus tortor. Maecenas eget justo mauris. Sed lobortis mauris ullamcorper volutpat egestas. Cras libero metus, pretium semper turpis maximus, vulputate egestas lacus. Donec eu ante dignissim, suscipit est eget, pulvinar turpis. Integer varius vel leo in pellentesque.</p>', '0'),
(5, '2021-03-21 09:23:08', '2021-03-21 09:13:15', 'Blog Title 05', 'blog-title-05', '6057385bc75b8.png', 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetur lacus. Integer tempor ut leo id molestie. Nulla sagittis, orci in malesuada scelerisque, enim massa pharetra ipsum, vel pharetra sem enim quis odio. Sed fermentum ligula sed lacus pretium pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam gravida, nunc at pellentesque pretium, justo nibh scelerisque tellus, non commodo sapien ipsum a est. Donec a tempus justo, nec blandit nulla. Nam sodales risus risus, sit amet fringilla nisi congue ac. Maecenas bibendum tellus vel massa semper efficitur. Nam blandit, ex sed suscipit ultricies, ante massa pharetra ex, at varius justo ligula vitae magna. Integer vel ex eu sem sodales tincidunt sed ut ex. Praesent cursus velit nec lacus auctor accumsan id sit amet tellus. Aliquam erat volutpat. Sed tortor risus, placerat quis turpis sed, gravida porttitor quam. Ut eget consequat ante, eu sagittis arcu. Sed consectetur turpis at lacus finibus consectetur. Nunc risus diam, semper vel augue vitae, luctus malesuada leo. Pellentesque sit amet neque arcu. Proin ac pharetra leo. Nulla tincidunt sit amet felis ac mattis. Vivamus nec turpis sed justo aliquam accumsan sit amet in lacus. Suspendisse potenti. Quisque enim odio, varius at dapibus eu, dignissim sit amet sem. Maecenas id lectus consequat, ultricies massa et, lobortis elit. Duis aliquet, nibh sit amet sagittis volutpat, arcu lorem ultricies purus, ut tempus ex felis sit amet augue. Cras consequat, libero id lacinia iaculis, nulla ante molestie diam, sit amet lobortis diam sapien sit amet nisi. Fusce egestas lacus turpis, in congue justo iaculis ut. In dignissim vel ipsum in finibus. Nullam vulputate ut enim ut sollicitudin. Cras gravida finibus ante, dapibus imperdiet augue imperdiet vitae. Praesent sem elit, eleifend sed sodales ut, egestas sed sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ultrices lectus sit amet metus molestie, vitae venenatis purus mattis. Fusce dictum velit leo, at ultrices diam dignissim et. Fusce vitae sapien et velit congue ornare a vitae dui. Integer eget convallis purus, eget congue lorem. Aenean aliquet diam et rhoncus semper. Sed arcu nibh, sodales a augue nec, accumsan sagittis nunc. Duis ac diam egestas, vulputate tellus in, semper justo. Aliquam convallis ornare mi. Aliquam consequat mollis velit sit amet aliquam. Etiam sagittis orci sapien, sit amet fermentum eros cursus nec. Aenean et varius arcu, sed accumsan metus. Sed feugiat libero eget diam iaculis aliquam. Nam mollis tincidunt libero eget vehicula. Nam nibh ligula, ultricies et nulla eget, pharetra ullamcorper felis. Nulla nec nunc tincidunt, pellentesque sapien sit amet, aliquet eros. Duis ac finibus tortor. Maecenas eget justo mauris. Sed lobortis mauris ullamcorper volutpat egestas. Cras libero metus, pretium semper turpis maximus, vulputate egestas lacus. Donec eu ante dignissim, suscipit est eget, pulvinar turpis. Integer varius vel leo in pellentesque.</p>', '0'),
(17, '2021-03-21 09:23:08', '2021-03-21 09:13:24', 'Blog Title 06', 'blog-title-06', '605738641af0d.png', 5, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetur lacus. Integer tempor ut leo id molestie. Nulla sagittis, orci in malesuada scelerisque, enim massa pharetra ipsum, vel pharetra sem enim quis odio. Sed fermentum ligula sed lacus pretium pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam gravida, nunc at pellentesque pretium, justo nibh scelerisque tellus, non commodo sapien ipsum a est. Donec a tempus justo, nec blandit nulla. Nam sodales risus risus, sit amet fringilla nisi congue ac. Maecenas bibendum tellus vel massa semper efficitur. Nam blandit, ex sed suscipit ultricies, ante massa pharetra ex, at varius justo ligula vitae magna. Integer vel ex eu sem sodales tincidunt sed ut ex. Praesent cursus velit nec lacus auctor accumsan id sit amet tellus. Aliquam erat volutpat. Sed tortor risus, placerat quis turpis sed, gravida porttitor quam. Ut eget consequat ante, eu sagittis arcu. Sed consectetur turpis at lacus finibus consectetur. Nunc risus diam, semper vel augue vitae, luctus malesuada leo. Pellentesque sit amet neque arcu. Proin ac pharetra leo. Nulla tincidunt sit amet felis ac mattis. Vivamus nec turpis sed justo aliquam accumsan sit amet in lacus. Suspendisse potenti. Quisque enim odio, varius at dapibus eu, dignissim sit amet sem. Maecenas id lectus consequat, ultricies massa et, lobortis elit. Duis aliquet, nibh sit amet sagittis volutpat, arcu lorem ultricies purus, ut tempus ex felis sit amet augue. Cras consequat, libero id lacinia iaculis, nulla ante molestie diam, sit amet lobortis diam sapien sit amet nisi. Fusce egestas lacus turpis, in congue justo iaculis ut. In dignissim vel ipsum in finibus. Nullam vulputate ut enim ut sollicitudin. Cras gravida finibus ante, dapibus imperdiet augue imperdiet vitae. Praesent sem elit, eleifend sed sodales ut, egestas sed sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ultrices lectus sit amet metus molestie, vitae venenatis purus mattis. Fusce dictum velit leo, at ultrices diam dignissim et. Fusce vitae sapien et velit congue ornare a vitae dui. Integer eget convallis purus, eget congue lorem. Aenean aliquet diam et rhoncus semper. Sed arcu nibh, sodales a augue nec, accumsan sagittis nunc. Duis ac diam egestas, vulputate tellus in, semper justo. Aliquam convallis ornare mi. Aliquam consequat mollis velit sit amet aliquam. Etiam sagittis orci sapien, sit amet fermentum eros cursus nec. Aenean et varius arcu, sed accumsan metus. Sed feugiat libero eget diam iaculis aliquam. Nam mollis tincidunt libero eget vehicula. Nam nibh ligula, ultricies et nulla eget, pharetra ullamcorper felis. Nulla nec nunc tincidunt, pellentesque sapien sit amet, aliquet eros. Duis ac finibus tortor. Maecenas eget justo mauris. Sed lobortis mauris ullamcorper volutpat egestas. Cras libero metus, pretium semper turpis maximus, vulputate egestas lacus. Donec eu ante dignissim, suscipit est eget, pulvinar turpis. Integer varius vel leo in pellentesque.</p>', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_13_142321_create_settings_table', 2),
(7, '2021_03_15_124919_create_blogs_table', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_must` int(11) DEFAULT NULL,
  `page_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `page_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `page_title`, `page_slug`, `page_file`, `page_must`, `page_content`, `page_status`) VALUES
(1, '2021-03-18 08:13:25', '2021-03-21 11:27:39', 'PageTitle 01', 'page-title-1', '605753e00851c.png', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu</p>', '0'),
(2, '2021-03-18 08:13:25', '2021-03-21 11:27:39', 'Page Title 02', 'page-title-02', '605753eb7e5d2.png', 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu</p>', '0'),
(3, '2021-03-18 08:13:25', '2021-03-21 11:27:39', 'Page Title 03', 'page-title-03', '6057540c49431.png', 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu</p>', '0'),
(4, '2021-03-18 08:13:25', '2021-03-21 11:27:39', 'Page Title 04', 'page-title-04', '605753f850c64.png', 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu</p>', '0'),
(5, '2021-03-18 08:13:25', '2021-03-21 11:27:39', 'Page Title 05', 'page-title-05', '6057541695015.png', 5, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu</p>', '0'),
(17, '2021-03-18 08:13:25', '2021-03-21 11:27:39', 'Page Title 06', 'page-title-06', '6057542332bc5.png', 0, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetu</p>', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `settings_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_must` int(11) NOT NULL,
  `settings_delete` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `settings_description`, `settings_key`, `settings_value`, `settings_type`, `settings_must`, `settings_delete`, `settings_status`) VALUES
(1, NULL, '2021-03-15 10:40:42', 'Başlık', 'title', 'Laravel ECMS Learning', 'text', 0, '0', '1'),
(2, NULL, '2021-03-15 10:40:42', 'Açıklama', 'description', 'Laravel ECMS Learning Description', 'text', 1, '0', '1'),
(3, NULL, '2021-03-15 09:20:19', 'Logo', 'logo', '604e5d8e4244b.png', 'file', 2, '0', '1'),
(4, NULL, '2021-03-14 16:01:00', 'Icon', 'icon', '604e5d6c88080.png', 'file', 3, '0', '1'),
(5, NULL, '2021-03-14 11:01:12', 'Anahtar Kelimeler', 'keywords', 'laravel,ecms,murat dağ', 'text', 4, '0', '1'),
(6, NULL, '2021-03-14 11:01:12', 'Telefon Sabit', 'phone_sabit', '0850 XXX XX XX', 'text', 5, '0', '1'),
(7, NULL, '2021-03-14 11:01:18', 'Telefon GSM', 'phone_gsm', '0850 XXX XX XX', 'text', 6, '0', '1'),
(8, NULL, '2021-03-14 11:01:18', 'Mail', 'mail', 'muraad.dag@gmail.com', 'text', 7, '0', '1'),
(9, NULL, '2021-03-14 11:01:02', 'ilçe', 'ilce', 'Şişli', 'text', 8, '0', '1'),
(10, NULL, '2021-03-14 14:13:31', 'il', 'il', 'İstanbul', 'textarea', 9, '0', '1'),
(11, NULL, '2021-03-14 15:17:25', 'Açık Adres', 'adres', 'Şişli Mahallesi Şişli Caddesi', 'textarea', 10, '0', '1'),
(19, NULL, NULL, 'Footer Bilgi', 'footer', 'ECMS Laravel', 'text', 11, '0', '1'),
(20, NULL, NULL, 'Home Title', 'home_title', 'Moderns Business Features', 'text', 12, '0', '1'),
(21, NULL, '2021-03-21 11:51:47', 'Home Detail', 'home_detail', '<p>The Modern Business template by Start Bootstrap includes:</p>\r\n\r\n<ul>\r\n	<li><strong>Bootstrap v4</strong></li>\r\n	<li>jQuery</li>\r\n	<li>Font Awesome</li>\r\n	<li>Working contact form with validation</li>\r\n	<li>Unstyled page elements for easy customization</li>\r\n</ul>', 'ckeditor', 13, '0', '1'),
(22, NULL, '2021-03-21 11:55:35', 'Home Image', 'home_ımage', '60575e67cddc5.png', 'file', 14, '0', '1'),
(23, NULL, '2021-03-21 11:55:35', 'Slogan', 'slogan', 'Lorsssem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.', 'textarea', 15, '0', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slider_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `slider_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_must` int(11) DEFAULT NULL,
  `slider_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slider_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`id`, `created_at`, `updated_at`, `slider_title`, `slider_slug`, `slider_url`, `slider_file`, `slider_must`, `slider_content`, `slider_status`) VALUES
(1, NULL, '2021-03-18 11:56:32', 'Slider Title 01', 'slider-title-01', 'https://www.mynet.com/', '60535e7ebb297.png', 0, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetur lacus. Integer tempor ut leo id molestie. Nulla sagittis, orci in malesuada scelerisque, enim massa pharetra ipsum, vel pharetra sem enim quis odio. Sed fermentum ligula sed lacus pretium pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam gravida, nunc at pellentesque pretium, justo nibh scelerisque tellus, non commodo sapien ipsum a est. Donec a tempus justo, nec blandit nulla. Nam sodales risus risus, sit amet fringilla nisi congue ac. Maecenas bibendum tellus vel massa semper efficitur. Nam blandit, ex sed suscipit ultricies, ante massa pharetra ex, at varius justo ligula vitae magna. Integer vel ex eu sem sodales tincidunt sed ut ex. Praesent cursus velit nec lacus auctor accumsan id sit amet tellus. Aliquam erat volutpat. Sed tortor risus, placerat quis turpis sed, gravida porttitor quam. Ut eget consequat ante, eu sagittis arcu. Sed consectetur turpis at lacus finibus consectetur. Nunc risus diam, semper vel augue vitae, luctus malesuada leo. Pellentesque sit amet neque arcu. Proin ac pharetra leo. Nulla tincidunt sit amet felis ac mattis. Vivamus nec turpis sed justo aliquam accumsan sit amet in lacus. Suspendisse potenti. Quisque enim odio, varius at dapibus eu, dignissim sit amet sem. Maecenas id lectus consequat, ultricies massa et, lobortis elit. Duis aliquet, nibh sit amet sagittis volutpat, arcu lorem ultricies purus, ut tempus ex felis sit amet augue. Cras consequat, libero id lacinia iaculis, nulla ante molestie diam, sit amet lobortis diam sapien sit amet nisi. Fusce egestas lacus turpis, in congue justo iaculis ut. In dignissim vel ipsum in finibus. Nullam vulputate ut enim ut sollicitudin. Cras gravida finibus ante, dapibus imperdiet augue imperdiet vitae. Praesent sem elit, eleifend sed sodales ut, egestas sed sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ultrices lectus sit amet metus molestie, vitae venenatis purus mattis. Fusce dictum velit leo, at ultrices diam dignissim et. Fusce vitae sapien et velit congue ornare a vitae dui. Integer eget convallis purus, eget congue lorem. Aenean aliquet diam et rhoncus semper. Sed arcu nibh, sodales a augue nec, accumsan sagittis nunc. Duis ac diam egestas, vulputate tellus in, semper justo. Aliquam convallis ornare mi. Aliquam consequat mollis velit sit amet aliquam. Etiam sagittis orci sapien, sit amet fermentum eros cursus nec. Aenean et varius arcu, sed accumsan metus. Sed feugiat libero eget diam iaculis aliquam. Nam mollis tincidunt libero eget vehicula. Nam nibh ligula, ultricies et nulla eget, pharetra ullamcorper felis. Nulla nec nunc tincidunt, pellentesque sapien sit amet, aliquet eros. Duis ac finibus tortor. Maecenas eget justo mauris. Sed lobortis mauris ullamcorper volutpat egestas. Cras libero metus, pretium semper turpis maximus, vulputate egestas lacus. Donec eu ante dignissim, suscipit est eget, pulvinar turpis. Integer varius vel leo in pellentesque.</p>', '0'),
(2, NULL, '2021-03-18 11:10:28', 'Slider Title 02', 'slider-title-02', NULL, '60535e8840e04.png', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetur lacus. Integer tempor ut leo id molestie. Nulla sagittis, orci in malesuada scelerisque, enim massa pharetra ipsum, vel pharetra sem enim quis odio. Sed fermentum ligula sed lacus pretium pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam gravida, nunc at pellentesque pretium, justo nibh scelerisque tellus, non commodo sapien ipsum a est. Donec a tempus justo, nec blandit nulla. Nam sodales risus risus, sit amet fringilla nisi congue ac. Maecenas bibendum tellus vel massa semper efficitur. Nam blandit, ex sed suscipit ultricies, ante massa pharetra ex, at varius justo ligula vitae magna. Integer vel ex eu sem sodales tincidunt sed ut ex. Praesent cursus velit nec lacus auctor accumsan id sit amet tellus. Aliquam erat volutpat. Sed tortor risus, placerat quis turpis sed, gravida porttitor quam. Ut eget consequat ante, eu sagittis arcu. Sed consectetur turpis at lacus finibus consectetur. Nunc risus diam, semper vel augue vitae, luctus malesuada leo. Pellentesque sit amet neque arcu. Proin ac pharetra leo. Nulla tincidunt sit amet felis ac mattis. Vivamus nec turpis sed justo aliquam accumsan sit amet in lacus. Suspendisse potenti. Quisque enim odio, varius at dapibus eu, dignissim sit amet sem. Maecenas id lectus consequat, ultricies massa et, lobortis elit. Duis aliquet, nibh sit amet sagittis volutpat, arcu lorem ultricies purus, ut tempus ex felis sit amet augue. Cras consequat, libero id lacinia iaculis, nulla ante molestie diam, sit amet lobortis diam sapien sit amet nisi. Fusce egestas lacus turpis, in congue justo iaculis ut. In dignissim vel ipsum in finibus. Nullam vulputate ut enim ut sollicitudin. Cras gravida finibus ante, dapibus imperdiet augue imperdiet vitae. Praesent sem elit, eleifend sed sodales ut, egestas sed sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ultrices lectus sit amet metus molestie, vitae venenatis purus mattis. Fusce dictum velit leo, at ultrices diam dignissim et. Fusce vitae sapien et velit congue ornare a vitae dui. Integer eget convallis purus, eget congue lorem. Aenean aliquet diam et rhoncus semper. Sed arcu nibh, sodales a augue nec, accumsan sagittis nunc. Duis ac diam egestas, vulputate tellus in, semper justo. Aliquam convallis ornare mi. Aliquam consequat mollis velit sit amet aliquam. Etiam sagittis orci sapien, sit amet fermentum eros cursus nec. Aenean et varius arcu, sed accumsan metus. Sed feugiat libero eget diam iaculis aliquam. Nam mollis tincidunt libero eget vehicula. Nam nibh ligula, ultricies et nulla eget, pharetra ullamcorper felis. Nulla nec nunc tincidunt, pellentesque sapien sit amet, aliquet eros. Duis ac finibus tortor. Maecenas eget justo mauris. Sed lobortis mauris ullamcorper volutpat egestas. Cras libero metus, pretium semper turpis maximus, vulputate egestas lacus. Donec eu ante dignissim, suscipit est eget, pulvinar turpis. Integer varius vel leo in pellentesque.</p>', '0'),
(3, NULL, '2021-03-18 11:07:12', 'Slider Title 03', 'slider-title-03', NULL, '60535e9030552.png', 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent blandit orci turpis, a consectetur augue porta in. Aenean efficitur nibh a egestas suscipit. Phasellus id tristique purus. Nulla facilisi. Sed pretium sem eget tellus hendrerit tristique. Phasellus id consectetur lacus. Integer tempor ut leo id molestie. Nulla sagittis, orci in malesuada scelerisque, enim massa pharetra ipsum, vel pharetra sem enim quis odio. Sed fermentum ligula sed lacus pretium pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam gravida, nunc at pellentesque pretium, justo nibh scelerisque tellus, non commodo sapien ipsum a est. Donec a tempus justo, nec blandit nulla. Nam sodales risus risus, sit amet fringilla nisi congue ac. Maecenas bibendum tellus vel massa semper efficitur. Nam blandit, ex sed suscipit ultricies, ante massa pharetra ex, at varius justo ligula vitae magna. Integer vel ex eu sem sodales tincidunt sed ut ex. Praesent cursus velit nec lacus auctor accumsan id sit amet tellus. Aliquam erat volutpat. Sed tortor risus, placerat quis turpis sed, gravida porttitor quam. Ut eget consequat ante, eu sagittis arcu. Sed consectetur turpis at lacus finibus consectetur. Nunc risus diam, semper vel augue vitae, luctus malesuada leo. Pellentesque sit amet neque arcu. Proin ac pharetra leo. Nulla tincidunt sit amet felis ac mattis. Vivamus nec turpis sed justo aliquam accumsan sit amet in lacus. Suspendisse potenti. Quisque enim odio, varius at dapibus eu, dignissim sit amet sem. Maecenas id lectus consequat, ultricies massa et, lobortis elit. Duis aliquet, nibh sit amet sagittis volutpat, arcu lorem ultricies purus, ut tempus ex felis sit amet augue. Cras consequat, libero id lacinia iaculis, nulla ante molestie diam, sit amet lobortis diam sapien sit amet nisi. Fusce egestas lacus turpis, in congue justo iaculis ut. In dignissim vel ipsum in finibus. Nullam vulputate ut enim ut sollicitudin. Cras gravida finibus ante, dapibus imperdiet augue imperdiet vitae. Praesent sem elit, eleifend sed sodales ut, egestas sed sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ultrices lectus sit amet metus molestie, vitae venenatis purus mattis. Fusce dictum velit leo, at ultrices diam dignissim et. Fusce vitae sapien et velit congue ornare a vitae dui. Integer eget convallis purus, eget congue lorem. Aenean aliquet diam et rhoncus semper. Sed arcu nibh, sodales a augue nec, accumsan sagittis nunc. Duis ac diam egestas, vulputate tellus in, semper justo. Aliquam convallis ornare mi. Aliquam consequat mollis velit sit amet aliquam. Etiam sagittis orci sapien, sit amet fermentum eros cursus nec. Aenean et varius arcu, sed accumsan metus. Sed feugiat libero eget diam iaculis aliquam. Nam mollis tincidunt libero eget vehicula. Nam nibh ligula, ultricies et nulla eget, pharetra ullamcorper felis. Nulla nec nunc tincidunt, pellentesque sapien sit amet, aliquet eros. Duis ac finibus tortor. Maecenas eget justo mauris. Sed lobortis mauris ullamcorper volutpat egestas. Cras libero metus, pretium semper turpis maximus, vulputate egestas lacus. Donec eu ante dignissim, suscipit est eget, pulvinar turpis. Integer varius vel leo in pellentesque.</p>', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_file`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_status`) VALUES
(2, '605609aa28124.jpg', 'admin', 'Murat DAĞ', 'ornekmail@mail.com', NULL, '$2y$10$TI9.MyDOlaVP3hAfQOhsbeM.TYCDHQWJEYgSXi/zX/Xgma54muh3u', '5HnziB6qlcuQueZm9mSoEr8yoJS1hgUjA0ayihrRmHJ5Qj8JspOrJPso7in6', '2021-03-20 08:28:59', '2021-03-20 11:41:46', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
