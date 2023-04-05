-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 09:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `disabled` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `slug`, `disabled`) VALUES
(2, 'Crime', 'crime', 0),
(3, 'shoe strings', 'shoe-strings', 0),
(4, 'Sports', 'sports', 0),
(5, 'Lifestyle', 'lifestyle', 0),
(6, 'New category', 'new-category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `content`, `image`, `date`, `slug`) VALUES
(1, 1, 4, 'My first post', 'This is some edited content', 'uploads/1665481341530dd282a061b9e825a122f61d59c668.jpg', '2022-10-11 11:42:21', 'my-first-post'),
(3, 1, 2, 'My second post', '<ol><li><h2>my old images here</h2></li></ol><p>formated content<br></p><p><img style=\"width: 50%;\" src=\"////uploads/Billy-Joe-Armstrong.jpg\" data-filename=\"Billy-Joe-Armstrong.jpg\"></p><p><br></p><h4><font color=\"#FF00FF\">some text here</font><br></h4><p><img style=\"width: 100%;\" src=\"//uploads/7xuuL9GAGDDjhietMy3RGJ.jpg\" data-filename=\"7xuuL9GAGDDjhietMy3RGJ.jpg\"><br></p><p><br></p>', 'uploads/1665482550blog-post-image-guide.jpg', '2022-10-11 12:02:30', 'my-second-post'),
(4, 1, 5, 'My life this july', 'this shows my work', 'uploads/1665482588why-INFJs-should-start-a-blog-770x470-1.jpg', '2022-10-11 12:03:09', 'my-life-this-july'),
(5, 1, 2, 'a post in crime', 'some content', 'uploads/16654937895454078.jpg', '2022-10-11 15:09:49', 'a-post-in-crime');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `image`, `date`, `role`) VALUES
(1, 'Eathorne', 'email@email.com', '$2y$10$GCB4tN43EX1jVGKS/yDjgu/vHzDWT7hMzxjiNGu22HBz69PuFf9XG', 'uploads/16655047737xuuL9GAGDDjhietMy3RGJ.jpg', '2022-10-08 19:41:54', 'user'),
(3, 'new', 'my@mail.com', '$2y$10$TYxT.0rztSPztkTNLrg.WOo/kymSeJmw3I38I/kNVtxR98qLWOykq', 'uploads/16652679461c59efd01451b880.jpg', '2022-10-09 00:00:42', 'user'),
(4, 'Edd', 'ed@email.com', '$2y$10$cmv2an.7ZrH.c2I9uOYS5eoyVR/TpVBOUODGUSOUbZxrOkjqKUxM2', 'uploads/1665510020alicia-keys.jpg', '2022-10-09 00:29:37', 'user'),
(5, 'alisha', 'alisha@email.com', '$2y$10$t3dPuL.SY/gKbmbELcK3Vu98ycwd1SQ0xafJDkDi1sr9ojiAC5DeG', 'uploads/1665268261alicia-keys.jpg', '2022-10-09 00:31:01', 'admin'),
(7, 'Mary', 'mary@email.com', '$2y$10$afyuLEHL1MGiQ0zhXK3wdOA4pXljclUwbX2g2uZUq.Zhlt24x2o/q', 'uploads/1665509556amifaku.jpg', '2022-10-11 19:32:36', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `title` (`title`),
  ADD KEY `slug` (`slug`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
