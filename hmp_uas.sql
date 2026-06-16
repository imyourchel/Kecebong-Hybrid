-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2026 pada 11.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmp_uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `nama_kategori`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Politik', 'Berita seputar politik dalam dan luar negeri', '2026-01-01 03:00:00', '2026-01-01 03:00:00'),
(2, 'Ekonomi', 'Berita ekonomi, bisnis, dan keuangan', '2026-01-01 03:00:00', '2026-01-01 03:00:00'),
(3, 'Teknologi', 'Berita teknologi, gadget, dan inovasi', '2026-01-01 03:00:00', '2026-01-01 03:00:00'),
(4, 'Olahraga', 'Berita olahraga dan pertandingan', '2026-01-01 03:00:00', '2026-01-01 03:00:00'),
(5, 'Hiburan', 'Berita hiburan, selebriti, dan lifestyle', '2026-01-01 03:00:00', '2026-01-01 03:00:00'),
(6, 'Pendidikan', 'Berita pendidikan dan akademik', '2026-01-01 03:00:00', '2026-01-01 03:00:00'),
(7, 'Kesehatan', 'Berita kesehatan dan medis', '2026-01-01 03:00:00', '2026-01-01 03:00:00'),
(8, 'Lingkungan', 'Berita lingkungan dan iklim', '2026-01-01 03:00:00', '2026-01-01 03:00:00'),
(10, 'Kuliah', '123', '2026-01-14 06:05:14', '2026-01-14 06:05:14'),
(11, 'Jenni', 'ini kategori jenni', '2026-01-14 06:17:23', '2026-01-14 06:17:23'),
(12, 'rachel', 'ini chel', '2026-01-14 06:18:09', '2026-01-14 06:18:09'),
(13, 'cath', '', '2026-01-14 06:20:49', '2026-01-14 06:20:49'),
(14, 'tes', '1234', '2026-01-14 07:15:54', '2026-01-14 07:15:54'),
(15, 'halo123', '', '2026-01-14 07:16:14', '2026-01-14 07:16:14'),
(16, 'testes', '', '2026-01-14 07:18:55', '2026-01-14 07:18:55'),
(17, 'tes123123', '', '2026-01-14 07:19:09', '2026-01-14 07:19:09'),
(18, 'SIBCUY', 'Anakanak SIB Gemoy', '2026-01-14 09:54:49', '2026-01-14 09:54:49'),
(19, 'dev', 'ini dev', '2026-01-14 09:58:06', '2026-01-14 09:58:06'),
(20, 'anjay', 's', '2026-01-14 10:07:05', '2026-01-14 10:07:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_news_id` (`news_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_parent_comment` (`parent_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `news_id`, `user_id`, `parent_comment_id`, `comment_text`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Artikel yang sangat informatif tentang perkembangan AI. Teknologi ini memang sangat menjanjikan untuk masa depan!', '2026-01-05 03:00:00', '2026-01-05 03:00:00'),
(2, 1, 1, 1, 'Betul sekali, saya sangat antusias dengan perkembangan ini.', '2026-01-05 04:00:00', '2026-01-05 04:00:00'),
(3, 2, 1, NULL, 'Kabar baik untuk ekonomi Indonesia. Semoga terus bertumbuh positif.', '2026-01-06 04:00:00', '2026-01-06 04:00:00'),
(4, 3, 1, NULL, 'Penampilan tim nasional sangat memukau! Bangga dengan prestasi ini.', '2026-01-07 11:00:00', '2026-01-07 11:00:00'),
(5, 4, 1, NULL, 'Informasi beasiswa yang sangat bermanfaat. Terima kasih sudah berbagi!', '2026-01-08 06:00:00', '2026-01-08 06:00:00'),
(6, 6, 1, NULL, 'Terobosan yang luar biasa dalam dunia medis. Semoga bisa segera diimplementasikan secara luas.', '2026-01-10 05:00:00', '2026-01-10 05:00:00'),
(7, 7, 1, NULL, 'Program yang sangat bagus untuk lingkungan. Mari kita dukung bersama!', '2026-01-11 07:30:00', '2026-01-11 07:30:00'),
(8, 8, 1, NULL, 'Selamat untuk startup lokal! Ini membuktikan bahwa talent Indonesia bisa bersaing di kancah global.', '2026-01-12 09:30:00', '2026-01-12 09:30:00'),
(9, 8, 1, 8, 'Hai', '2026-01-13 16:54:54', '2026-01-13 16:54:54'),
(10, 10, 2, NULL, 'halo', '2026-01-14 06:26:17', '2026-01-14 06:26:17'),
(11, 10, 2, 10, 'hai', '2026-01-14 06:26:23', '2026-01-14 06:26:23'),
(14, 12, 3, NULL, 'haloo', '2026-01-14 10:02:02', '2026-01-14 10:02:02'),
(15, 10, 3, 10, 'jen', '2026-01-14 10:03:41', '2026-01-14 10:03:41'),
(16, 10, 3, 10, 'kenapa', '2026-01-14 10:03:48', '2026-01-14 10:03:48'),
(17, 12, 1, 14, 'hai dev\\', '2026-01-14 10:05:16', '2026-01-14 10:05:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_news_favorite` (`user_id`,`news_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_news_id` (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `news_id`, `created_at`) VALUES
(10, 1, 8, '2026-01-14 04:50:31'),
(11, 2, 10, '2026-01-14 06:26:40'),
(13, 3, 12, '2026-01-14 10:02:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_utama` varchar(255) DEFAULT NULL,
  `view_count` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `judul` (`judul`),
  KEY `idx_judul` (`judul`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_view_count` (`view_count`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `user_id`, `judul`, `deskripsi`, `foto_utama`, `view_count`, `created_at`, `updated_at`) VALUES
(1, 1, 'Perkembangan AI Terbaru Mengubah Industri Teknologi', 'Artificial Intelligence terus berkembang pesat dan mengubah cara kerja berbagai industri. Teknologi machine learning dan deep learning kini semakin canggih dan dapat diaplikasikan dalam berbagai bidang mulai dari kesehatan, pendidikan, hingga transportasi.', 'https://images.unsplash.com/photo-1677442136019-21780ecad995?w=800', 1260, '2026-01-05 01:30:00', '2026-01-13 17:02:14'),
(2, 1, 'Pertumbuhan Ekonomi Indonesia Mencapai Target', 'Badan Pusat Statistik melaporkan pertumbuhan ekonomi Indonesia pada kuartal terakhir mencapai target yang ditetapkan pemerintah. Sektor konsumsi rumah tangga dan investasi menjadi pendorong utama pertumbuhan ini.', 'https://images.unsplash.com/photo-1579621970563-ebec7560ff3e?w=800', 891, '2026-01-06 02:15:00', '2026-01-13 16:42:10'),
(3, 1, 'Tim Nasional Meraih Kemenangan Gemilang', 'Tim nasional berhasil meraih kemenangan dengan skor telak dalam pertandingan persahabatan kemarin malam. Penampilan para pemain dinilai sangat impresif dan memberikan harapan besar untuk turnamen mendatang.', 'https://images.unsplash.com/photo-1579952363873-27f3bade9f55?w=800', 2342, '2026-01-07 09:45:00', '2026-01-13 17:02:53'),
(4, 1, 'Program Beasiswa Pemerintah Dibuka untuk Tahun Ini', 'Kementerian Pendidikan membuka program beasiswa untuk pelajar dan mahasiswa berprestasi. Program ini mencakup beasiswa dalam dan luar negeri dengan berbagai pilihan jurusan.', 'https://images.unsplash.com/photo-1434030216411-0b793f4b4173', 1673, '2026-01-08 04:20:00', '2026-01-13 17:01:43'),
(5, 1, 'Film Lokal Raih Penghargaan di Festival Internasional', 'Sebuah film karya sineas Indonesia berhasil meraih penghargaan bergengsi di festival film internasional. Film ini mendapat apresiasi tinggi dari kritikus dan penonton mancanegara.', 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?w=800', 1127, '2026-01-09 07:00:00', '2026-01-14 05:38:25'),
(6, 1, 'Terobosan Baru dalam Pengobatan Kanker', 'Para peneliti menemukan metode baru yang menjanjikan dalam pengobatan kanker. Uji klinis menunjukkan hasil yang positif dengan efek samping minimal dibanding metode konvensional.', 'https://images.unsplash.com/photo-1579154204601-01588f351e67?w=800', 983, '2026-01-10 03:30:00', '2026-01-13 17:02:59'),
(7, 1, 'Kampanye Penghijauan Masif di Berbagai Kota', 'Program penghijauan diluncurkan di berbagai kota besar untuk mengatasi polusi udara dan meningkatkan kualitas lingkungan. Target penanaman mencapai 1 juta pohon dalam setahun.', 'https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?w=800', 756, '2026-01-11 06:45:00', '2026-01-13 17:01:39'),
(8, 1, 'Startup Lokal Raih Pendanaan Jutaan Dolar', 'Sebuah startup teknologi asal Indonesia berhasil mendapatkan pendanaan seri A senilai jutaan dolar dari investor asing. Dana ini akan digunakan untuk ekspansi pasar ke negara-negara ASEAN.', 'https://images.unsplash.com/photo-1559136555-9303baea8ebd?w=800', 1558, '2026-01-12 08:20:00', '2026-01-14 07:17:32'),
(10, 2, 'berita pantai', 'pantau banget', 'https://assets.telkomsel.com/public/2025-05/film-doraemon.jpg?VersionId=cxbQSHyJNVEkMrONN2LqX1yVGZKZpNZC', 12, '2026-01-14 06:22:27', '2026-01-14 10:05:22'),
(12, 3, 'SIB', 'Ini anak SIB', 'https://assets.telkomsel.com/public/2025-05/film-doraemon.jpg?VersionId=cxbQSHyJNVEkMrONN2LqX1yVGZKZpNZC', 12, '2026-01-14 09:59:46', '2026-01-14 10:06:55'),
(13, 3, 'JJH', 'JNJN', 'JENNI', 2, '2026-01-14 10:00:24', '2026-01-14 10:05:19'),
(14, 1, 'dxb', 'b', 'bhb', 0, '2026-01-14 10:07:31', '2026-01-14 10:07:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_categories`
--

DROP TABLE IF EXISTS `news_categories`;
CREATE TABLE IF NOT EXISTS `news_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_news_category` (`news_id`,`category_id`),
  KEY `idx_news_id` (`news_id`),
  KEY `idx_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `news_categories`
--

INSERT INTO `news_categories` (`id`, `news_id`, `category_id`, `created_at`) VALUES
(1, 1, 3, '2026-01-05 01:30:00'),
(2, 2, 2, '2026-01-06 02:15:00'),
(3, 2, 1, '2026-01-06 02:15:00'),
(4, 3, 4, '2026-01-07 09:45:00'),
(5, 4, 6, '2026-01-08 04:20:00'),
(6, 5, 5, '2026-01-09 07:00:00'),
(7, 6, 7, '2026-01-10 03:30:00'),
(8, 6, 3, '2026-01-10 03:30:00'),
(9, 7, 8, '2026-01-11 06:45:00'),
(10, 8, 2, '2026-01-12 08:20:00'),
(11, 8, 3, '2026-01-12 08:20:00'),
(12, 1, 2, '2026-01-04 18:30:00'),
(13, 1, 6, '2026-01-04 18:30:00'),
(14, 2, 3, '2026-01-05 19:15:00'),
(15, 3, 5, '2026-01-07 02:45:00'),
(16, 3, 1, '2026-01-07 02:45:00'),
(17, 4, 2, '2026-01-07 21:20:00'),
(18, 4, 1, '2026-01-07 21:20:00'),
(19, 5, 2, '2026-01-09 00:00:00'),
(20, 5, 3, '2026-01-09 00:00:00'),
(21, 5, 6, '2026-01-09 00:00:00'),
(22, 6, 6, '2026-01-09 20:30:00'),
(23, 7, 1, '2026-01-10 23:45:00'),
(24, 7, 6, '2026-01-10 23:45:00'),
(25, 7, 7, '2026-01-10 23:45:00'),
(26, 8, 6, '2026-01-12 01:20:00'),
(27, 8, 5, '2026-01-12 01:20:00'),
(31, 10, 13, '2026-01-14 06:22:27'),
(32, 10, 11, '2026-01-14 06:22:27'),
(34, 12, 13, '2026-01-14 09:59:46'),
(35, 12, 19, '2026-01-14 09:59:46'),
(36, 12, 5, '2026-01-14 09:59:46'),
(37, 12, 11, '2026-01-14 09:59:46'),
(38, 13, 15, '2026-01-14 10:00:24'),
(39, 14, 5, '2026-01-14 10:07:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_images`
--

DROP TABLE IF EXISTS `news_images`;
CREATE TABLE IF NOT EXISTS `news_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_news_id` (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `news_images`
--

INSERT INTO `news_images` (`id`, `news_id`, `image_path`, `urutan`, `created_at`) VALUES
(1, 1, 'https://images.unsplash.com/photo-1485846234645-a62644f84728', 1, '2026-01-05 01:30:00'),
(2, 1, 'https://images.unsplash.com/photo-1620712943543-bcc4688e7485', 2, '2026-01-05 01:30:00'),
(3, 1, 'https://images.unsplash.com/photo-1485827404703-89b55fcc595e', 3, '2026-01-05 01:30:00'),
(4, 1, 'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5', 4, '2026-01-05 01:30:00'),
(5, 1, 'https://images.unsplash.com/photo-1504639725590-34d0984388bd', 5, '2026-01-05 01:30:00'),
(6, 2, 'https://images.unsplash.com/photo-1434030216411-0b793f4b4173', 1, '2026-01-06 02:15:00'),
(7, 2, 'https://images.unsplash.com/photo-1611974789855-9c2a0a7236a3', 2, '2026-01-06 02:15:00'),
(8, 2, 'https://images.unsplash.com/photo-1460925895917-afdab827c52f', 3, '2026-01-06 02:15:00'),
(9, 2, 'https://images.unsplash.com/photo-1554224155-8d04cb21cd6c', 4, '2026-01-06 02:15:00'),
(10, 2, 'https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f', 5, '2026-01-06 02:15:00'),
(11, 3, 'https://images.unsplash.com/photo-1503676260728-1c00da094a0b', 1, '2026-01-07 09:45:00'),
(12, 3, 'https://images.unsplash.com/photo-1461896836934-ffe607ba8211', 2, '2026-01-07 09:45:00'),
(13, 3, 'https://images.unsplash.com/photo-1574629810360-7efbbe195018', 3, '2026-01-07 09:45:00'),
(14, 3, 'https://images.unsplash.com/photo-1508098682722-e99c43a406b2', 4, '2026-01-07 09:45:00'),
(15, 3, 'https://images.unsplash.com/photo-1551958219-acbc608c6377', 5, '2026-01-07 09:45:00'),
(16, 4, 'https://images.unsplash.com/photo-1579952363873-27f3bade9f55', 1, '2026-01-08 04:20:00'),
(17, 4, 'https://images.unsplash.com/photo-1503676260728-1c00da094a0b', 2, '2026-01-08 04:20:00'),
(18, 4, 'https://images.unsplash.com/photo-1427504494785-3a9ca7044f45', 3, '2026-01-08 04:20:00'),
(19, 4, 'https://images.unsplash.com/photo-1513258496099-48168024aec0', 4, '2026-01-08 04:20:00'),
(20, 4, 'https://images.unsplash.com/photo-1522202176988-66273c2fd55f', 5, '2026-01-08 04:20:00'),
(21, 5, 'https://images.unsplash.com/photo-1579621970563-ebec7560ff3e', 1, '2026-01-09 07:00:00'),
(22, 5, 'https://images.unsplash.com/photo-1478720568477-152d9b164e26', 2, '2026-01-09 07:00:00'),
(23, 5, 'https://images.unsplash.com/photo-1440404653325-ab127d49abc1', 3, '2026-01-09 07:00:00'),
(24, 5, 'https://images.unsplash.com/photo-1489599849927-2ee91cede3ba', 4, '2026-01-09 07:00:00'),
(25, 5, 'https://images.unsplash.com/photo-1524985069026-dd778a71c7b4', 5, '2026-01-09 07:00:00'),
(26, 6, 'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d', 1, '2026-01-10 03:30:00'),
(27, 6, 'https://images.unsplash.com/photo-1582560469781-1965b9af903d', 2, '2026-01-10 03:30:00'),
(28, 6, 'https://images.unsplash.com/photo-1584362917165-526a968579e8', 3, '2026-01-10 03:30:00'),
(29, 6, 'https://images.unsplash.com/photo-1559757175-5700dde675bc', 4, '2026-01-10 03:30:00'),
(30, 6, 'https://images.unsplash.com/photo-1631217868264-e5b90bb7e133', 5, '2026-01-10 03:30:00'),
(31, 7, 'https://images.unsplash.com/photo-1559136555-9303baea8ebd', 1, '2026-01-11 06:45:00'),
(32, 7, 'https://images.unsplash.com/photo-1466692476868-aef1dfb1e735', 2, '2026-01-11 06:45:00'),
(33, 7, 'https://images.unsplash.com/photo-1441974231531-c6227db76b6e', 3, '2026-01-11 06:45:00'),
(34, 7, 'https://images.unsplash.com/photo-1511497584788-876760111969', 4, '2026-01-11 06:45:00'),
(35, 7, 'https://images.unsplash.com/photo-1518531933037-91b2f5f229cc', 5, '2026-01-11 06:45:00'),
(36, 8, 'https://images.unsplash.com/photo-1466692476868-aef1dfb1e735', 1, '2026-01-12 08:20:00'),
(37, 8, 'https://images.unsplash.com/photo-1552664730-d307ca884978', 2, '2026-01-12 08:20:00'),
(38, 8, 'https://images.unsplash.com/photo-1542744173-8e7e53415bb0', 3, '2026-01-12 08:20:00'),
(39, 8, 'https://images.unsplash.com/photo-1517245386807-bb43f82c33c4', 4, '2026-01-12 08:20:00'),
(40, 8, 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7', 5, '2026-01-12 08:20:00'),
(44, 10, 'https://assets.telkomsel.com/public/2025-05/film-doraemon.jpg?VersionId=cxbQSHyJNVEkMrONN2LqX1yVGZKZpNZC', 1, '2026-01-14 06:22:28'),
(45, 10, 'https://assets.telkomsel.com/public/2025-05/film-doraemon.jpg?VersionId=cxbQSHyJNVEkMrONN2LqX1yVGZKZpNZC', 2, '2026-01-14 06:22:28'),
(46, 10, 'https://assets.telkomsel.com/public/2025-05/film-doraemon.jpg?VersionId=cxbQSHyJNVEkMrONN2LqX1yVGZKZpNZC', 3, '2026-01-14 06:22:28'),
(50, 12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD1_YlzBYtWy1p0tzCHdRSnJNKHe0MuOcDiDTzGhBhcAWxE0MBghaGpxWk19cgfACUWPU82jWYof70LB1uC70MkmPGCu2tAhZbKes9hYU&s=10', 1, '2026-01-14 09:59:46'),
(51, 12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD1_YlzBYtWy1p0tzCHdRSnJNKHe0MuOcDiDTzGhBhcAWxE0MBghaGpxWk19cgfACUWPU82jWYof70LB1uC70MkmPGCu2tAhZbKes9hYU&s=10', 2, '2026-01-14 09:59:46'),
(52, 12, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD1_YlzBYtWy1p0tzCHdRSnJNKHe0MuOcDiDTzGhBhcAWxE0MBghaGpxWk19cgfACUWPU82jWYof70LB1uC70MkmPGCu2tAhZbKes9hYU&s=10', 3, '2026-01-14 09:59:46'),
(53, 13, 'J', 1, '2026-01-14 10:00:24'),
(54, 13, 'N', 2, '2026-01-14 10:00:24'),
(55, 13, 'N', 3, '2026-01-14 10:00:24'),
(56, 14, 'b', 1, '2026-01-14 10:07:31'),
(57, 14, 'e', 2, '2026-01-14 10:07:31'),
(58, 14, 'j', 3, '2026-01-14 10:07:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE IF NOT EXISTS `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_news_rating` (`user_id`,`news_id`),
  KEY `idx_news_id` (`news_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ratings`
--

INSERT INTO `ratings` (`id`, `news_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2026-01-05 02:00:00', '2026-01-05 02:00:00'),
(2, 2, 1, 4, '2026-01-06 03:00:00', '2026-01-06 03:00:00'),
(3, 3, 1, 5, '2026-01-07 10:00:00', '2026-01-07 10:00:00'),
(4, 4, 1, 4, '2026-01-08 05:00:00', '2026-01-08 05:00:00'),
(5, 6, 1, 5, '2026-01-10 04:00:00', '2026-01-10 04:00:00'),
(6, 8, 1, 5, '2026-01-13 17:04:59', '2026-01-13 17:04:59'),
(7, 10, 2, 4, '2026-01-14 06:25:39', '2026-01-14 06:25:39'),
(8, 10, 1, 3, '2026-01-14 06:28:27', '2026-01-14 06:28:27'),
(9, 12, 3, 2, '2026-01-14 10:01:55', '2026-01-14 10:01:55'),
(10, 12, 1, 5, '2026-01-14 10:05:05', '2026-01-14 10:05:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `unique_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Rachel', 'chel@gmail.com', 'chel', '5081c373d0b7e9c30667db1c929dcca86ea51b1bf67b3471f9e328c525391ed0', '2026-01-04 16:53:08', '2026-01-04 16:53:08'),
(2, 'jenni', 'jen@gmail.com', 'jen', '3082d2e1e7917e164c21081b620289dbebb8d2b4fe5b16f82322300f9e5f6f2a', '2026-01-14 06:16:16', '2026-01-14 06:16:16'),
(3, 'cath', 'cath@gmail.com', 'dev', 'c01e6e42436df02fb5d6d728da1d4b9a26b71163002fdd5700628d1b2112e7f4', '2026-01-14 09:54:00', '2026-01-14 09:54:00');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `news_categories`
--
ALTER TABLE `news_categories`
  ADD CONSTRAINT `news_categories_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `news_images`
--
ALTER TABLE `news_images`
  ADD CONSTRAINT `news_images_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
