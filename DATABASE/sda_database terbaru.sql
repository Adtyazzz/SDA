-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2025 at 04:07 AM
-- Server version: 11.8.1-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sda_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admin web'),
(2, 'Perencanaan');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 1, 61),
(62, 1, 62),
(63, 1, 63),
(64, 1, 64),
(65, 1, 65),
(66, 1, 66),
(67, 1, 67),
(68, 1, 68),
(69, 1, 69),
(70, 1, 70),
(71, 1, 71),
(72, 1, 72),
(73, 1, 73),
(74, 1, 74),
(75, 1, 75),
(76, 1, 76),
(77, 1, 77),
(78, 1, 78),
(79, 1, 79),
(80, 1, 80),
(81, 1, 81),
(82, 1, 82),
(83, 1, 83),
(84, 1, 84),
(85, 1, 85),
(86, 1, 86),
(87, 1, 87),
(88, 1, 88),
(89, 1, 89),
(90, 1, 90),
(91, 1, 91),
(92, 1, 92),
(93, 1, 93),
(94, 1, 94),
(95, 1, 95),
(96, 1, 96),
(97, 1, 97),
(98, 1, 98),
(99, 1, 99),
(100, 1, 100),
(101, 1, 101),
(102, 1, 102),
(103, 1, 103),
(104, 1, 104),
(105, 1, 105),
(106, 1, 106),
(107, 1, 107),
(108, 1, 108),
(109, 1, 109),
(110, 1, 110),
(111, 1, 111),
(112, 1, 112),
(113, 1, 125),
(114, 1, 126),
(115, 1, 127),
(116, 1, 128),
(117, 1, 129),
(118, 1, 130),
(119, 1, 131),
(120, 1, 132),
(121, 1, 133),
(122, 1, 134),
(123, 1, 135),
(124, 1, 136),
(125, 1, 137),
(126, 1, 138),
(127, 1, 139),
(128, 1, 140),
(129, 1, 141),
(130, 1, 142),
(131, 1, 143),
(132, 1, 144),
(133, 1, 149),
(134, 1, 150),
(135, 1, 151),
(136, 1, 152),
(137, 1, 153),
(138, 1, 154),
(139, 1, 155),
(140, 1, 156),
(141, 1, 157),
(142, 1, 158),
(143, 1, 159),
(144, 1, 160),
(145, 1, 161),
(146, 1, 162),
(147, 1, 163),
(148, 1, 164),
(9, 2, 113),
(10, 2, 114),
(11, 2, 115),
(12, 2, 116),
(13, 2, 117),
(14, 2, 118),
(15, 2, 119),
(16, 2, 120),
(1, 2, 121),
(2, 2, 122),
(3, 2, 123),
(4, 2, 124),
(5, 2, 145),
(6, 2, 146),
(7, 2, 147),
(8, 2, 148);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add artikel', 7, 'add_artikel'),
(26, 'Can change artikel', 7, 'change_artikel'),
(27, 'Can delete artikel', 7, 'delete_artikel'),
(28, 'Can view artikel', 7, 'view_artikel'),
(29, 'Can add biodata', 8, 'add_biodata'),
(30, 'Can change biodata', 8, 'change_biodata'),
(31, 'Can delete biodata', 8, 'delete_biodata'),
(32, 'Can view biodata', 8, 'view_biodata'),
(33, 'Can add pekerjaan sda', 9, 'add_pekerjaansda'),
(34, 'Can change pekerjaan sda', 9, 'change_pekerjaansda'),
(35, 'Can delete pekerjaan sda', 9, 'delete_pekerjaansda'),
(36, 'Can view pekerjaan sda', 9, 'view_pekerjaansda'),
(37, 'Can add infrastruktur sda', 10, 'add_infrastruktursda'),
(38, 'Can change infrastruktur sda', 10, 'change_infrastruktursda'),
(39, 'Can delete infrastruktur sda', 10, 'delete_infrastruktursda'),
(40, 'Can view infrastruktur sda', 10, 'view_infrastruktursda'),
(41, 'Can add kategori infrastruktur sda', 11, 'add_kategoriinfrastruktursda'),
(42, 'Can change kategori infrastruktur sda', 11, 'change_kategoriinfrastruktursda'),
(43, 'Can delete kategori infrastruktur sda', 11, 'delete_kategoriinfrastruktursda'),
(44, 'Can view kategori infrastruktur sda', 11, 'view_kategoriinfrastruktursda'),
(45, 'Can add infrastruktur sda', 12, 'add_infrastruktursda'),
(46, 'Can change infrastruktur sda', 12, 'change_infrastruktursda'),
(47, 'Can delete infrastruktur sda', 12, 'delete_infrastruktursda'),
(48, 'Can view infrastruktur sda', 12, 'view_infrastruktursda'),
(49, 'Can add kategori infrastruktur sda', 13, 'add_kategoriinfrastruktursda'),
(50, 'Can change kategori infrastruktur sda', 13, 'change_kategoriinfrastruktursda'),
(51, 'Can delete kategori infrastruktur sda', 13, 'delete_kategoriinfrastruktursda'),
(52, 'Can view kategori infrastruktur sda', 13, 'view_kategoriinfrastruktursda'),
(53, 'Can add pekerjaan sda', 14, 'add_pekerjaansda'),
(54, 'Can change pekerjaan sda', 14, 'change_pekerjaansda'),
(55, 'Can delete pekerjaan sda', 14, 'delete_pekerjaansda'),
(56, 'Can view pekerjaan sda', 14, 'view_pekerjaansda'),
(57, 'Can add kategori', 15, 'add_kategori'),
(58, 'Can change kategori', 15, 'change_kategori'),
(59, 'Can delete kategori', 15, 'delete_kategori'),
(60, 'Can view kategori', 15, 'view_kategori'),
(61, 'Can add post', 16, 'add_post'),
(62, 'Can change post', 16, 'change_post'),
(63, 'Can delete post', 16, 'delete_post'),
(64, 'Can view post', 16, 'view_post'),
(65, 'Can add lokasi kantor', 17, 'add_lokasikantor'),
(66, 'Can change lokasi kantor', 17, 'change_lokasikantor'),
(67, 'Can delete lokasi kantor', 17, 'delete_lokasikantor'),
(68, 'Can view lokasi kantor', 17, 'view_lokasikantor'),
(69, 'Can add sejarah', 18, 'add_sejarah'),
(70, 'Can change sejarah', 18, 'change_sejarah'),
(71, 'Can delete sejarah', 18, 'delete_sejarah'),
(72, 'Can view sejarah', 18, 'view_sejarah'),
(73, 'Can add struktur organisasi', 19, 'add_strukturorganisasi'),
(74, 'Can change struktur organisasi', 19, 'change_strukturorganisasi'),
(75, 'Can delete struktur organisasi', 19, 'delete_strukturorganisasi'),
(76, 'Can view struktur organisasi', 19, 'view_strukturorganisasi'),
(77, 'Can add tugas fungsi', 20, 'add_tugasfungsi'),
(78, 'Can change tugas fungsi', 20, 'change_tugasfungsi'),
(79, 'Can delete tugas fungsi', 20, 'delete_tugasfungsi'),
(80, 'Can view tugas fungsi', 20, 'view_tugasfungsi'),
(81, 'Can add visi misi', 21, 'add_visimisi'),
(82, 'Can change visi misi', 21, 'change_visimisi'),
(83, 'Can delete visi misi', 21, 'delete_visimisi'),
(84, 'Can view visi misi', 21, 'view_visimisi'),
(85, 'Can add tkpsda', 22, 'add_tkpsda'),
(86, 'Can change tkpsda', 22, 'change_tkpsda'),
(87, 'Can delete tkpsda', 22, 'delete_tkpsda'),
(88, 'Can view tkpsda', 22, 'view_tkpsda'),
(89, 'Can add kategori infrastruktur sda', 23, 'add_kategoriinfrastruktursda'),
(90, 'Can change kategori infrastruktur sda', 23, 'change_kategoriinfrastruktursda'),
(91, 'Can delete kategori infrastruktur sda', 23, 'delete_kategoriinfrastruktursda'),
(92, 'Can view kategori infrastruktur sda', 23, 'view_kategoriinfrastruktursda'),
(93, 'Can add post', 24, 'add_post'),
(94, 'Can change post', 24, 'change_post'),
(95, 'Can delete post', 24, 'delete_post'),
(96, 'Can view post', 24, 'view_post'),
(97, 'Can add pekerjaan sda', 25, 'add_pekerjaansda'),
(98, 'Can change pekerjaan sda', 25, 'change_pekerjaansda'),
(99, 'Can delete pekerjaan sda', 25, 'delete_pekerjaansda'),
(100, 'Can view pekerjaan sda', 25, 'view_pekerjaansda'),
(101, 'Can add foto', 26, 'add_foto'),
(102, 'Can change foto', 26, 'change_foto'),
(103, 'Can delete foto', 26, 'delete_foto'),
(104, 'Can view foto', 26, 'view_foto'),
(105, 'Can add video', 27, 'add_video'),
(106, 'Can change video', 27, 'change_video'),
(107, 'Can delete video', 27, 'delete_video'),
(108, 'Can view video', 27, 'view_video'),
(109, 'Can add pesan kontak', 28, 'add_pesankontak'),
(110, 'Can change pesan kontak', 28, 'change_pesankontak'),
(111, 'Can delete pesan kontak', 28, 'delete_pesankontak'),
(112, 'Can view pesan kontak', 28, 'view_pesankontak'),
(113, 'Can add layanan', 29, 'add_layanan'),
(114, 'Can change layanan', 29, 'change_layanan'),
(115, 'Can delete layanan', 29, 'delete_layanan'),
(116, 'Can view layanan', 29, 'view_layanan'),
(117, 'Can add rekomendasi teknis', 30, 'add_rekomendasiteknis'),
(118, 'Can change rekomendasi teknis', 30, 'change_rekomendasiteknis'),
(119, 'Can delete rekomendasi teknis', 30, 'delete_rekomendasiteknis'),
(120, 'Can view rekomendasi teknis', 30, 'view_rekomendasiteknis'),
(121, 'Can add status rekomendasi teknis', 31, 'add_statusrekomendasiteknis'),
(122, 'Can change status rekomendasi teknis', 31, 'change_statusrekomendasiteknis'),
(123, 'Can delete status rekomendasi teknis', 31, 'delete_statusrekomendasiteknis'),
(124, 'Can view status rekomendasi teknis', 31, 'view_statusrekomendasiteknis'),
(125, 'Can add album', 32, 'add_album'),
(126, 'Can change album', 32, 'change_album'),
(127, 'Can delete album', 32, 'delete_album'),
(128, 'Can view album', 32, 'view_album'),
(129, 'Can add foto kegiatan perencanaan', 33, 'add_fotokegiatanperencanaan'),
(130, 'Can change foto kegiatan perencanaan', 33, 'change_fotokegiatanperencanaan'),
(131, 'Can delete foto kegiatan perencanaan', 33, 'delete_fotokegiatanperencanaan'),
(132, 'Can view foto kegiatan perencanaan', 33, 'view_fotokegiatanperencanaan'),
(133, 'Can add kategori kegiatan fisik', 34, 'add_kategorikegiatanfisik'),
(134, 'Can change kategori kegiatan fisik', 34, 'change_kategorikegiatanfisik'),
(135, 'Can delete kategori kegiatan fisik', 34, 'delete_kategorikegiatanfisik'),
(136, 'Can view kategori kegiatan fisik', 34, 'view_kategorikegiatanfisik'),
(137, 'Can add kategori kegiatan perencanaan', 35, 'add_kategorikegiatanperencanaan'),
(138, 'Can change kategori kegiatan perencanaan', 35, 'change_kategorikegiatanperencanaan'),
(139, 'Can delete kategori kegiatan perencanaan', 35, 'delete_kategorikegiatanperencanaan'),
(140, 'Can view kategori kegiatan perencanaan', 35, 'view_kategorikegiatanperencanaan'),
(141, 'Can add video kegiatan perencanaan', 36, 'add_videokegiatanperencanaan'),
(142, 'Can change video kegiatan perencanaan', 36, 'change_videokegiatanperencanaan'),
(143, 'Can delete video kegiatan perencanaan', 36, 'delete_videokegiatanperencanaan'),
(144, 'Can view video kegiatan perencanaan', 36, 'view_videokegiatanperencanaan'),
(145, 'Can add intake', 37, 'add_intake'),
(146, 'Can change intake', 37, 'change_intake'),
(147, 'Can delete intake', 37, 'delete_intake'),
(148, 'Can view intake', 37, 'view_intake'),
(149, 'Can add foto_profil', 38, 'add_foto_profil'),
(150, 'Can change foto_profil', 38, 'change_foto_profil'),
(151, 'Can delete foto_profil', 38, 'delete_foto_profil'),
(152, 'Can view foto_profil', 38, 'view_foto_profil'),
(153, 'Can add majalah banyu', 39, 'add_majalahbanyu'),
(154, 'Can change majalah banyu', 39, 'change_majalahbanyu'),
(155, 'Can delete majalah banyu', 39, 'delete_majalahbanyu'),
(156, 'Can view majalah banyu', 39, 'view_majalahbanyu'),
(157, 'Can add peraturan', 40, 'add_peraturan'),
(158, 'Can change peraturan', 40, 'change_peraturan'),
(159, 'Can delete peraturan', 40, 'delete_peraturan'),
(160, 'Can view peraturan', 40, 'view_peraturan'),
(161, 'Can add sop', 41, 'add_sop'),
(162, 'Can change sop', 41, 'change_sop'),
(163, 'Can delete sop', 41, 'delete_sop'),
(164, 'Can view sop', 41, 'view_sop'),
(165, 'Can add ikm', 42, 'add_ikm'),
(166, 'Can change ikm', 42, 'change_ikm'),
(167, 'Can delete ikm', 42, 'delete_ikm'),
(168, 'Can view ikm', 42, 'view_ikm'),
(169, 'Can add hidrologi', 43, 'add_hidrologi'),
(170, 'Can change hidrologi', 43, 'change_hidrologi'),
(171, 'Can delete hidrologi', 43, 'delete_hidrologi'),
(172, 'Can view hidrologi', 43, 'view_hidrologi');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$dmwnhtejOhd9nKQ8ppZXNG$76zDnjq9G1YNbNwmHABX6qetIdoJhpu3YT2ktrzdK2Q=', '2025-08-24 23:28:27.378051', 1, 'developer', '', '', '', 1, 1, '2025-07-11 07:50:33.000000'),
(26, 'pbkdf2_sha256$1000000$BOStLdut2qceIMdtZWO2ZD$rHmHTw6VTVC10BCTirZeRmQwDO+MfHcc1Fy8tz4vMOw=', '2025-08-14 06:48:17.566115', 0, 'Adtyaz', 'Aditya', 'Saputra', 'adityasaputraa2005@gmail.com', 1, 1, '2025-07-14 13:43:26.000000'),
(27, 'pbkdf2_sha256$1000000$0eSV5aGMXpfFkzvELcHwQg$wyJAC3YPfYb75OXQDLuSi0viTs0pvf8YVK0wG/FgHL0=', '2025-07-15 01:52:27.000000', 0, 'Denyyy', 'Deny', 'Aditiya', 'deny@gmail.com', 0, 1, '2025-07-15 01:52:10.000000'),
(28, 'pbkdf2_sha256$1000000$5CUcPHiqQR9Vigqdyw3xoN$8fbeH3UaD7ZgTeAJmLYPTzZpQRQs1tONxRqC11S0SFk=', '2025-08-24 13:00:28.572404', 0, 'PDAM', 'aditya', 'saputra', 'pdam@gmail.com', 0, 1, '2025-08-18 05:57:48.065089'),
(29, 'pbkdf2_sha256$1000000$VLtkqIrF6rPwuJYaP8vuyE$E6/K6PUXLi46J6m9hiWjib6kyclcBaecyEs9xMonryw=', '2025-08-21 12:33:09.000000', 0, 'Rizal', 'Khairu', 'Rizal', 'rizal@gmail.com', 0, 1, '2025-08-21 01:32:10.000000'),
(30, 'pbkdf2_sha256$1000000$oh1P3hiIOHxyjq28bGYaqD$ZTD1EZxGPqIn0tlPnwAAjLwLdbaAm3tSUCeXixEMHV4=', '2025-08-24 23:27:06.104503', 0, 'admin_perencanaan', '', '', '', 1, 1, '2025-08-24 09:28:24.000000'),
(31, 'pbkdf2_sha256$1000000$Zgyq90SHsx3Jq0hkZVgSBA$isATUy8w/zjHf2nBsn3r6j1+upxd5GEw84rxuCPmjVc=', '2025-08-24 23:28:00.837955', 0, 'admin', '', '', '', 1, 1, '2025-08-24 11:02:55.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 26, 1),
(2, 27, 1),
(3, 30, 2),
(4, 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita_artikel`
--

CREATE TABLE `berita_artikel` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` longtext DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `kategori_id` bigint(20) DEFAULT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_update` date NOT NULL,
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0),
  `slug` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `berita_artikel`
--

INSERT INTO `berita_artikel` (`id`, `judul`, `isi`, `thumbnail`, `author_id`, `kategori_id`, `tgl_buat`, `tgl_update`, `views`, `slug`) VALUES
(1, 'Menteri PU Kunjungi Pulau Buton, Targetkan Jadi Sasaran Utama Inpres Irigasi', '<p style=\"text-align:justify\">Baubau - Menteri Pekerjaan Umum Dody Hanggodo melakukan kunjungan kerja ke Pulau Buton, Sulawesi Tenggara, sebagai bentuk komitmen menjadikan wilayah tersebut sebagai sasaran utama Instruksi Presiden (Inpres) Nomor 2 Tahun 2025 tentang Percepatan Pembangunan, Peningkatan, Rehabilitasi, serta Operasi dan Pemeliharaan Jaringan Irigasi. &ldquo;Kami ingin memastikan Pulau Buton, khususnya Kota Baubau, menjadi prioritas dalam implementasi Inpres Irigasi ini, guna mendukung swasembada pangan secara berkelanjutan,&rdquo; ungkap Menteri Dody Hanggodo dalam keterangannya kepada wartawan, Minggu (13/7). Kunjungan ini juga untuk meninjau langsung Daerah Irigasi (DI) Wonco II di Kelurahan Karing-Karing, Kecamatan Bungi. Menteri PU menginstruksikan agar segera dilakukan rehabilitasi saluran sekunder dan peningkatan saluran tersier untuk mengurangi kehilangan air (water losses) dan menjamin distribusi air yang lebih efisien dan terukur. &ldquo;Dengan optimalisasi DI Wonco II yang luas fungsionalnya mencapai 178 hektare dan suplai utama dari Bendung Suplesi Beddu Solo, kita harapkan produktivitas pertanian meningkat signifikan. Ini adalah langkah strategis memperkuat ketahanan ekonomi para petani di sini,&rdquo; jelasnya. Menteri Dody juga menegaskan bahwa optimalisasi jaringan irigasi akan dilakukan secara berkelanjutan untuk mendukung peningkatan intensitas tanam, hasil produksi pertanian, serta ketahanan pangan yang berkeadilan. &ldquo;Kementerian PU akan terus mengawal pembangunan infrastruktur irigasi sebagai fondasi utama swasembada pangan nasional,&rdquo; pungkas Menteri Dody. Turut hadir dalam kunjungan tersebut Wakil Ketua Komisi V DPR RI Ridwan Bae, Anggota Komisi XIII DPR RI Ali Mazi, Gubernur Sulawesi Tenggara Andi Sumangerukka, Wali Kota Baubau, Bupati Buton, Bupati Buton Selatan, Bupati Buton Tengah. (Tri)</p>', 'artikel/menteri-pu.jpg', 1, 10, '2025-07-19', '2025-07-19', 0, '2025-8-5-menteri-pu-kunjungi-pulau-buton-targetkan-jadi-sasaran-utama-inpres-irigasi'),
(9, 'Dukungan Infrastruktur SDA dalam Swasembada Pangan Provinsi Aceh', '<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Direktorat Jenderal Sumber Daya Air (Ditjen SDA) Kementerian Pekerjaan Umum (PU) melalui Balai Wilayah Sungai (BWS) Sumatera I telah merampungkan pembangunan Bendungan Keureuto. Bendungan yang berlokasi di Kecamatan Paya Bakong, Kabupaten Aceh Utara ini, merupakan proyek strategis nasional yang memiliki fungsi multiguna.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Pembangunan bendungan ini diharapkan dapat berkontribusi besar dalam mendukung ketahanan pangan di Aceh. Hal ini selaras dengan program Astacita pemerintahan Prabowo yang bertujuan meningkatkan sektor pertanian dan ketersediaan pangan di seluruh Indonesia.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Menteri Dody saat mengunjungi Aceh Timur pada Selasa (24/6) mengatakan, Kementerian PU akan terus meningkatkan infrastruktur sumber daya air di Aceh untuk mendukung swasembada pangan. &ldquo;Kami juga sudah menyelesaikan Bendungan Keureuto di Kabupaten Aceh Utara dan saat ini menyelesaikan Daerah Irigasi Jambo Aye,&rdquo; kata Menteri Dody.&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Bendungan yang telah rampung pada 2024 lalu ini memiliki luas tampungan sebesar 896 ha dengan kapasitas tampung mencapai 215 juta meter kubik, hal tersebut menjadikannya salah satu bendungan terbesar di Sumatera. Bendungan Keureuto didesain untuk dapat memenuhi berbagai kebutuhan, mulai dari irigasi lahan pertanian, penyediaan air baku, hingga potensi pembangkit listrik tenaga air.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Area fungsional layanan irigasi bendungan ini mencapai 9.081 hektar. Area tersebut terbagi menjadi dua daerah irigasi (DI) yakni DI Alue Ubay Kanan di Kecamatan Paya Bakong seluas 2.743 hektar, dan DI Krueng Pase Kanan di Kecamatan Tanah Luas seluas 3.417 hektar. Kemudian, untuk luas potensialnya, yaitu 2.921 ha dengan IP 200 persen, yang terbagi pada DI Alue Ubay Kanan Kecamatan Pirak Timu seluas 1.600 ha dan DI Alue Ubay Kiri Kecamatan Tanah Luas seluas 1.321 ha.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Selain itu bendungan ini juga memiliki fungsi penyediaan air baku berkapasitas 650 liter per detik bagi Kecamatan Paya Bakong, Kecamatan Tanah Luas, Kecamatan Pirak Timu, Kecamatan Matang Kuli, dan Kecamatan Lhoksukon di Kabupaten Aceh Utara, dan juga potensi PLTS Apung berkapasitas 179 MW dan PLTA sebesar 6,3 MW.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Dengan adanya pasokan air yang stabil dari bendungan ini, produktivitas pertanian di Aceh Utara dan sekitarnya diharapkan dapat meningkat secara drastis, mengurangi ketergantungan pada curah hujan, dan mendukung keberlanjutan pertanian di masa depan.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Selain Bendungan Keureuto, Ditjen SDA juga tengah fokus pada peningkatan sektor pertanian di Aceh melalui pembangunan infrastruktur irigasi. DI Jambo Aye memiliki peran krusial dalam mendukung ketahanan pangan di wilayah tersebut.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Secara geografis, DI Jambo Aye membentang melintasi dua kabupaten, yaitu Kabupaten Aceh Utara dan Aceh Timur. Lokasi strategis ini memungkinkan DI Jambo Aye untuk mengairi lahan pertanian yang luas di kedua wilayah tersebut, sehingga diharapkan dapat meningkatkan produktivitas pertanian. Sumber air utama untuk DI Jambo Aye berasal dari Sungai Arakundo, yang menjamin pasokan air irigasi bagi para petani.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Menteri Dody menyampaikan saat ini sudah terbit Instruksi Presiden (Inpres) Nomor 2 Tahun 2025 tentang Percepatan Pembangunan, Peningkatan, Rehabilitasi, Serta Operasi dan Pemeliharaan Jaringan Irigasi untuk Mendukung Swasembada Pangan yang dapat menjadi landasan Kementerian PU dalam membantu pembangunan irigasi di daerah.&nbsp;&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">&ldquo;Sekarang sudah terbit Inpres tentang Irigasi. Jadi kalau soal bangun membangun irigasi berdasarkan Inpres tersebut pemerintah pusat bisa masuk, baik di sekunder maupun tersier. Kami minta tolong kepada pemerintah daerah untuk urusan lahannya,&rdquo; kata Menteri Dody.&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Kepala BWS Sumatera I Heru Setiawan menyampaikan bahwa saat ini progres DI Jambo Aye kiri (Langkahan) sudah selesai 100%. DI Jambo Aye Kiri memiliki luas layanan 19.473 Ha dan luas layanan intake kanan 3.028 Ha yang saat ini progres pembangunan mencapai 41%. Dengan adanya DI Jambo Aye maka manfaat yang diperoleh yakni Indeks Pertanaman (IP) total 200 menjadi 233% dan IP padi 100% menjadi 115%, penambahan luas tanam 1001 ha serta produksi padi rata-rata 6.3 Ton GKP/ha dan penambahan produksi padi 11.011Ton GKP/tahun. Adapun DI Jambo Aye Kanan mempunyai total panjang saluran primer 39 km dan saluran sekunder 23 km.&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Pembangunan Bendungan Keureuto dan daerah irigasi Jambo Aye merupakan bagian dari komitmen Ditjen SDA untuk mewujudkan kemandirian pangan dan kesejahteraan petani di Aceh. Penyelesaian infrastruktur sumber daya air ini diharapkan dapat meningkatkan kesejahteraan masyarakat melalui peningkatan hasil pertanian dan ketersediaan air yang lebih baik sehingga stabilitas produksi pertanian dapat terjaga.</span></span></span></p>', 'artikel/sda.jpeg', 26, 10, '2025-07-20', '2025-07-20', 2, '2025-8-5-dukungan-infrastruktur-sda-dalam-swasembada-pangan-provinsi-aceh'),
(10, 'Rampung, Bendungan Marangkayu Siap Suplai Air Irigasi', '<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Pemerintah berupaya terus memperkuat infrastruktur sumber daya air guna mendukung program ketahanan pangan nasional. Salah satu realisasinya adalah dengan rampungnya konstruksi Bendungan Marangkayu di Kabupaten Kutai Kartanegara, Kalimantan Timur, yang dikerjakan oleh Kementerian Pekerjaan Umum (PU) cq Direktorat Jenderal Sumber Daya Air.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Kabupaten Kutai Kartanegara, khususnya Kecamatan Marangkayu, merupakan salah satu pemasok beras utama di Kalimantan Timur. Menurut data Badan Pusat Statistik Provinsi Kalimantan Timur, kontribusi Kutai Kartanegara mencapai lebih dari 40% dari total kebutuhan beras di provinsi tersebut.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Berdasarkan Perpres No. 109 Tahun 2020, Bendungan Marangkayu merupakan bagian dari Proyek Strategis Nasional. Pembangunan bendungan ini bertujuan untuk meningkatkan kapasitas penyimpanan air guna mendukung Asta Cita Presiden Prabowo Subianto, khususnya dalam mendukung Swasembada Pangan, Energi, dan Ketahanan Air.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Menteri PU Dody Hanggodo mengatakan dengan selesainya pembangunan fisik bendungan, fokus selanjutnya adalah percepatan pengembangan jaringan irigasi teknis. Ini penting untuk mendukung produktivitas pertanian dan meningkatkan jumlah masa panen bagi petani.&nbsp;&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">&quot;Kita sepakat bahwa infrastruktur sumber daya air sangat penting untuk mencapai swasembada pangan. Salah satu contohnya adalah pembangunan bendungan yang kemudian disalurkan melalui sistem irigasi primer, sekunder, hingga tersier langsung ke lahan pertanian,&quot; kata Menteri Dody.&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Bendungan Marangkayu, yang konstruksinya telah rampung 100% sudah dilakukan </span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><em>impounding</em></span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"> (penggenangan awal) pada Desember 2024 lalu. Dengan kapasitas 12,24 juta m</span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><sup>3</sup></span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">, bendungan ini diharapkan dapat meningkatkan cadangan air untuk mendukung sektor pertanian, penyediaan air baku, pengendalian banjir, hingga potensi pariwisata.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Pengembangan Daerah Irigasi Marangkayu berkonsep pada perencanaan sistem jaringan irigasi teknis. Air irigasi akan dipasok dari bendungan yang memanfaatkan aliran Sungai Marangkayu. Dengan pengembangan sistem jaringan irigasi teknis, Bendungan Marangkayu diharapkan dapat menyuplai air ke lahan irigasi seluas 1.200 hektare dan mendorong efisiensi pemanfaatan air area fungsional seluas 579 hektare. Dengan demikian, diharapkan suplai air irigasi menjadi lebih maksimal, sehingga intensitas panen dapat meningkat dalam satu tahun.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Selain berfungsi sebagai infrastruktur penyedia air irigasi, bendungan yang memiliki luas </span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><em>catchment area</em></span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"> atau daerah tangkapan air 134,3 Km</span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><sup>2</sup></span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"> ini juga diperuntukan&nbsp; sebagai infrastruktur sumber daya air pengendali banjir di wilayah hilir debit air yang dapat ditampung sebesar 142,69 m</span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><sup>3</sup></span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">/detik dan sumber energi listrik Pembangkit Listrik Tenaga Mikrohidro sebesar 0,14 Megawatt.&nbsp;&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Selain sebagai sistem irigasi dan pengendali banjir, bendungan ini dirancang untuk memenuhi kebutuhan air baku sebesar 450 liter per detik bagi Kota Bontang dan Kabupaten Kutai Kartanegara. Ke depannya, bendungan ini berpotensi dikembangkan menjadi destinasi wisata air, sekaligus mendukung pengembangan ekonomi lokal.</span></span></span></p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Pembangunan Bendungan Marangkayu dilakukan melalui kolaborasi pendanaan antara Pemerintah Pusat dan Daerah. Dengan selesainya pembangunan Bendungan Marangkayu, hal ini juga mendukung fokus pembangunan yang termuat dalam RPJMD 2018-2023 Provinsi Kalimantan Timur yakni peningkatan ketahanan sumberdaya air, energi dan daya dukung lingkungan hidup</span></span></span></p>', 'artikel/sda2.jpeg', 26, NULL, '2025-07-20', '2025-07-20', 1, '2025-8-5-rampung-bendungan-marangkayu-siap-suplai-air-irigasi'),
(11, 'latihan mengetik', '<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#000000\">apakah yang di maksud dengan perumahan perumahan itu adalah sekumpulan rumah yang di bangun dengan sama rata dan bisa di jual. dan orang yang membeli ru,ah itu berhak untuk menempatinya. karena dia sudah membeli rumah tersebtu dengan orang yang emnjual rumah taearsebut. Lalu apakah rumah tearsebut bisa di gunakan untuk berlindung dari mara bahayaaa</span>.</span></p>', '', 1, 13, '2025-07-20', '2025-07-20', 1, '2025-8-5-latihan-mengetik'),
(14, 'Wakil Menteri Pekerjaan Umum, Diana Kusumastuti Kunjungi Embung JKW', '<p>Menghadiri rapat koordinasi dan evaluasi pelaksanaan pembangunan Infrastruktur IKN yang dipimpin oleh Kepala OIKN di Kantor Kemenko 3 IKN bersama Dirjen Cipta Karya, Dirjen Bina Marga, dan Dirjen Prasarana Strategis.</p>\r\n\r\n<p>Kami juga melakukan kunjungan ke Jalan Tol, Jembatan Satwa, Jembatan Merah Putih, Duplikasi Jembatan Pulau Balang, Masjid Negara, Paviliun Presiden, Kawasan Istana Wapres, Kantor-kantor Kementerian Koordinator yang akan digunakan sharing office, Sumbu Tripraja, Embung JKW serta Bandara IKN yang harus dipastikan bahwa semua harus tetap dilanjutkan oleh Kementerian Pekerjaan Umum.</p>\r\n\r\n<p>Sedangkan operasional dan pemeliharaan serta kelanjutan infrastruktur di KIPP 1B dan 1C akan dilanjutkan oleh OIKN termasuk Kawasan Legislatif dan Kawasan Yudikatif.</p>', 'artikel/01JSAW5Y12ES36Y1PDEAFAPC66.jpg', 1, 13, '2025-07-31', '2025-07-31', 4, '2025-8-5-wakil-menteri-pekerjaan-umum-diana-kusumastuti-kunjungi-embung-jkw'),
(15, 'Wamen PU, Diana Kusumastuti Kunjungi Embung Bandara VVIP IKN', '<p>Sabtu (17/05), Wakil Menteri Pekerjaan Umum Diana Kusumastuti, melakukan kunjungan ke Embung Bandara VVIP Ibu Kota Negara (IKN) Nusantara, Kalimantan Timur.<br />\r\n<br />\r\nEmbung tersebut memiliki fungsi strategis sebagai embung konservasi sumber daya air, yang dirancang untuk menyimpan air saat musim hujan dan menyediakan cadangan air saat musim kemarau. Selain itu, embung ini juga berperan sebagai penyedia air baku dan pengendali banjir di kawasan Bandara VVIP IKN.</p>', 'artikel/01JVGRPV0810B47N7M68G52GF5.jpg', 1, 13, '2025-07-31', '2025-07-31', 3, '2025-8-5-wamen-pu-diana-kusumastuti-kunjungi-embung-bandara-vvip-ikn'),
(16, 'Progress Fisik Mencapai 80,69%, Bendungan Mbay siap Dukung Program Swasembada Air dan Pangan', '<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Guna mendukung visi Presiden Prabowo Subianto dalam mewujudkan swasembada pangan dan swasembada air di Indonesia, Kementerian Pekerjaan Umum (PU) tengah menyelesaikan konstruksi Bendungan Mbay yang berlokasi di Kabupaten Nagekeo, Provinsi Nusa Tenggara Timur (NTT).&nbsp;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Menteri PU Dody Hanggodo menegaskan pentingnya infrastruktur sumber daya air dalam mendukung ketahanan pangan nasional. &quot;Kita sepakat bahwa infrastruktur sumber daya air sangat penting untuk mencapai swasembada pangan. Salah satu contohnya adalah pembangunan bendungan yang kemudian disalurkan melalui sistem irigasi primer, sekunder, hingga tersier langsung ke lahan pertanian,&quot; ujar Menteri Dody.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Mengutip dari laporan statistik Kabupaten Nagekeo yang dikeluarkan oleh Badan Pusat Statistik, kontribusi sektor pertanian terhadap produk domestik regional bruto di Kabupaten Nagekeo menunjukkan tren positif sejak tahun 2019, persentase kontribusi sektor pertanian selalu melampaui angka 50 persen dan terus meningkat. Hal ini menegaskan bahwa sektor pertanian masih menjadi andalan utama di wilayah tersebut.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Padi/beras adalah komoditas utama dalam pembangunan sub sektor tanaman pangan karena merupakan makanan pokok, banyak dibudidayakan, dan bernilai strategis. Pada tahun 2023, proyeksi BPS menunjukkan populasi Kabupaten Nagekeo sebesar 166.063 jiwa. Jika produksi beras domestik tidak mencukupi kebutuhan pangan, Kabupaten Nagekeo akan sangat bergantung pada pasokan beras dari luar daerah di masa depan, mengakibatkan kerentanan ketahanan pangan. Oleh karena itu, tantangan utama dalam meningkatkan produksi padi di Kabupaten Nagekeo adalah dengan meningkatkan produktivitas tanaman.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Untuk mendukung kebutuhan air irigasi di Kabupaten Nagekeo Direktorat Jenderal Sumber Daya Air (Ditjen SDA) Kementerian PU melalui Balai Besar Nusa Tenggara II membangun Bendungan Mbay yang dimulai sejak Agustus 2021. Hingga akhir Mei 2025, progres konstruksi bendungan telah mencapai 80,69% dan ditargetkan rampung pada Desember 2026.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Dengan kapasitas tampung sebesar 52,89 juta m&sup3;, Bendungan Mbay dirancang untuk mensuplai kebutuhan air Daerah Irigasi (DI) Mbay seluas 6.240 hektare, yang terdiri dari DI Mbay Kanan seluas 3.835 ha dan DI Mbay Kiri seluas 454 ha dengan potensi penambahan DI Mbay Kiri seluas 1.951 hektare. Dengan mengoptimalkan potensi aliran Sungai Aesesa, diharapkan sistem irigasi teknis yang dirancang akan meningkatkan intensitas tanam dan hasil panen tiap tahun.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Sebagai bendungan yang dirancang sebagai bendungan multifungsi, selain sebagai sumber pemenuhan kebutuhan air irigasi, Bendungan Mbay juga berfungsi untuk menyuplai air baku sebesar 205 liter/detik bagi masyarakat Kabupaten Nagekeo, serta dapat mereduksi potensi banjir Sungai Aesesa hingga 498,85 m&sup3;/detik. Hal ini dapat mengurangi risiko banjir seluas 320 hektare.</span></span></span></p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\">Pembangunan Bendungan Mbay menambah jumlah tampungan air yang dibangun Ditjen SDA Kementerian PU dalam mendukung ketahanan pangan dan air di Provinsi NTT. Sebelumnya sejak 2015, tercatat sudah ada empat bendungan yang di NTT yang telah selesai dibangun dan diresmikan. Empat bendungan itu adalah&nbsp; Bendungan Raknamo di Kabupaten Kupang, Bendungan Rotiklot di Kabupaten Belu, Bendungan Napun Gete di Kabupaten Sikka dan Bendungan Temef di </span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">Kabupaten Timor Tengah Selatan.</span></span></span></span></p>', '', 1, 13, '2025-07-31', '2025-07-31', 2, '2025-8-5-progress-fisik-mencapai-8069-bendungan-mbay-siap-dukung-program-swasembada-air-dan-pangan');

-- --------------------------------------------------------

--
-- Table structure for table `berita_kategori`
--

CREATE TABLE `berita_kategori` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `berita_kategori`
--

INSERT INTO `berita_kategori` (`id`, `nama`) VALUES
(10, 'politik'),
(12, 'testes'),
(13, 'Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `contact_pesankontak`
--

CREATE TABLE `contact_pesankontak` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subjek` varchar(150) NOT NULL,
  `pesan` longtext NOT NULL,
  `tanggal_kirim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `contact_pesankontak`
--

INSERT INTO `contact_pesankontak` (`id`, `nama`, `email`, `subjek`, `pesan`, `tanggal_kirim`) VALUES
(1, 'Aditya', 'adityaasaputraa2005@gmail.com', 'masalah', 'kfbibfouesbfoebfofboefoiefef', '2025-07-31'),
(2, 'Rizall', 'rizal@gmail.com', 'permohonan', 'baedbaoeigeugfbeofeofhcsldbsjbcjlda cepheipfhepihepicheof', '2025-07-31'),
(3, 'deny', 'deny@gmail.com', 'testests', 'srVSVrsbttndzbdv\'jdzp\'v\'vmfsvnsvnsf\'onvsfvfvfvfdb', '2025-07-31'),
(4, 'testest', 'aditt@gmail.com', 'efjejoejfea', 'scjapcapCacnacneipepceippipijon', '2025-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_foto_profil`
--

CREATE TABLE `dashboard_foto_profil` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `dashboard_foto_profil`
--

INSERT INTO `dashboard_foto_profil` (`id`, `avatar`, `user_id`) VALUES
(1, 'avatars/logo-page_26rZjFE.png', 28),
(2, 'avatars/default.png', 1),
(3, 'avatars/default.png', 29),
(4, 'avatars/default.png', 30),
(5, 'avatars/default.png', 31);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-07-15 00:07:18.965027', '1', 'staff', 1, '[{\"added\": {}}]', 3, 1),
(2, '2025-07-15 00:07:38.599282', '26', 'Adtyaz', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(3, '2025-07-15 00:55:59.314789', '1', 'Menteri PU Kunjungi Pulau Buton, Targetkan Jadi Sasaran Utama Inpres Irigasi', 1, '[{\"added\": {}}]', 7, 1),
(4, '2025-07-15 01:23:17.822878', '1', 'admin', 1, '[{\"added\": {}}]', 8, 1),
(5, '2025-07-15 01:23:53.953789', '2', 'Adtyaz', 1, '[{\"added\": {}}]', 8, 1),
(6, '2025-07-15 01:24:06.381253', '2', 'Adtyaz', 2, '[{\"changed\": {\"fields\": [\"Alamat\"]}}]', 8, 1),
(7, '2025-07-15 01:26:42.174275', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 8, 1),
(8, '2025-07-15 01:32:43.458723', '2', 'Adtyaz', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 8, 1),
(9, '2025-07-15 01:33:17.023285', '2', 'Adtyaz', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 8, 1),
(10, '2025-07-15 01:34:55.729649', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 8, 1),
(11, '2025-07-15 01:35:16.800232', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Foto\"]}}]', 8, 1),
(12, '2025-07-17 06:36:54.226601', '1', 'PekerjaanSda object (1)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2025-07-17 06:43:01.090759', '1', 'PekerjaanSda object (1)', 2, '[{\"changed\": {\"fields\": [\"Tahun\", \"Sumber dana\"]}}]', 9, 1),
(14, '2025-07-17 07:05:58.931751', '1', 'KategoriInfrastrukturSda object (1)', 1, '[{\"added\": {}}]', 11, 1),
(15, '2025-07-17 10:29:05.842025', '2', 'KategoriInfrastrukturSda object (2)', 1, '[{\"added\": {}}]', 11, 1),
(16, '2025-07-17 12:03:48.450887', '1', 'Bendungan', 3, '', 13, 1),
(17, '2025-07-17 12:03:53.280034', '2', 'Bendungan', 3, '', 13, 1),
(18, '2025-07-17 12:04:12.252876', '3', 'Bendungan', 1, '[{\"added\": {}}]', 13, 1),
(19, '2025-07-17 12:04:27.773658', '4', 'saluran irigasi', 1, '[{\"added\": {}}]', 13, 1),
(20, '2025-07-17 12:46:39.043481', '1', 'Polotik', 1, '[{\"added\": {}}]', 15, 1),
(21, '2025-07-17 12:46:53.840029', '1', 'Politi', 2, '[{\"changed\": {\"fields\": [\"Nama\"]}}]', 15, 1),
(22, '2025-07-17 12:46:59.440692', '1', 'Politik', 2, '[{\"changed\": {\"fields\": [\"Nama\"]}}]', 15, 1),
(23, '2025-07-17 12:47:08.312774', '2', 'Pembangunan', 1, '[{\"added\": {}}]', 15, 1),
(24, '2025-07-17 12:47:25.388136', '1', 'Menteri PU Kunjungi Pulau Buton, Targetkan Jadi Sasaran Utama Inpres Irigasi', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(25, '2025-07-17 12:51:53.050365', '1', 'Proyek', 1, '[{\"added\": {}}]', 12, 1),
(26, '2025-07-17 12:53:35.187078', '1', 'Proyek', 2, '[{\"changed\": {\"fields\": [\"Gambar\"]}}]', 12, 1),
(27, '2025-07-17 13:11:31.464428', '1', 'Proyek', 2, '[]', 12, 1),
(28, '2025-07-17 13:14:37.377778', '1', 'Proyek', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 12, 1),
(29, '2025-07-17 13:16:36.359083', '1', 'Proyek', 2, '[]', 12, 1),
(30, '2025-07-17 13:17:38.888471', '1', 'Proyek lorem ipsum', 2, '[{\"changed\": {\"fields\": [\"Nama\", \"Slug\"]}}]', 12, 1),
(31, '2025-07-17 23:33:39.526501', '1', 'pembangunan infrastruktur di daerah kalimantan timur', 2, '[{\"changed\": {\"fields\": [\"Nama\", \"Slug\"]}}]', 12, 1),
(32, '2025-07-17 23:37:52.829878', '1', 'pembangunan infrastruktur di daerah kalimantan timur', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 12, 1),
(33, '2025-07-17 23:39:42.818422', '2', 'pembangunan jembatan di samarinda', 1, '[{\"added\": {}}]', 12, 1),
(34, '2025-07-18 03:30:26.216164', '1', 'pembangunana irigasi', 1, '[{\"added\": {}}]', 16, 1),
(35, '2025-07-18 17:17:17.382977', '2', 'pembuatan saluran irigasi', 1, '[{\"added\": {}}]', 16, 1),
(36, '2025-07-19 04:35:18.655339', '1', 'adit', 1, '[{\"added\": {}}]', 19, 1),
(37, '2025-07-19 04:43:24.860308', '1', 'aditzzz', 2, '[{\"changed\": {\"fields\": [\"Nama\"]}}]', 19, 1),
(38, '2025-07-19 04:48:06.601336', '1', 'aditzzz', 3, '', 19, 1),
(39, '2025-07-19 04:49:04.567082', '2', 'adittt', 1, '[{\"added\": {}}]', 19, 1),
(40, '2025-07-19 05:34:25.431504', '1', 'Visi dan Misi', 1, '[{\"added\": {}}]', 21, 1),
(41, '2025-07-19 05:44:56.040365', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Visi\", \"Misi\"]}}]', 21, 1),
(42, '2025-07-19 05:47:41.468078', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Visi\"]}}]', 21, 1),
(43, '2025-07-19 06:19:16.187744', '1', 'Tugas dan Fungsi', 1, '[{\"added\": {}}]', 20, 1),
(44, '2025-07-19 07:16:47.461910', '1', 'Tugas dan Fungsi', 2, '[{\"changed\": {\"fields\": [\"Tugas\"]}}]', 20, 1),
(45, '2025-07-19 07:18:21.026819', '1', 'Tugas dan Fungsi', 2, '[{\"changed\": {\"fields\": [\"Tugas\"]}}]', 20, 1),
(46, '2025-07-19 07:18:59.368045', '1', 'Tugas dan Fungsi', 2, '[{\"changed\": {\"fields\": [\"Tugas\"]}}]', 20, 1),
(47, '2025-07-19 07:19:31.672904', '1', 'Tugas dan Fungsi', 2, '[{\"changed\": {\"fields\": [\"Tugas\"]}}]', 20, 1),
(48, '2025-07-19 07:20:03.667643', '1', 'Tugas dan Fungsi', 2, '[{\"changed\": {\"fields\": [\"Tugas\"]}}]', 20, 1),
(49, '2025-07-19 07:20:26.354951', '1', 'Tugas dan Fungsi', 2, '[{\"changed\": {\"fields\": [\"Tugas\"]}}]', 20, 1),
(50, '2025-07-19 07:25:46.736166', '1', 'Tugas dan Fungsi', 2, '[{\"changed\": {\"fields\": [\"Fungsi\"]}}]', 20, 1),
(51, '2025-07-19 07:28:05.612986', '1', 'Tugas dan Fungsi', 2, '[{\"changed\": {\"fields\": [\"Fungsi\"]}}]', 20, 1),
(52, '2025-07-19 08:16:15.148331', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Visi\"]}}]', 21, 1),
(53, '2025-07-19 08:16:30.099599', '1', 'Visi dan Misi', 2, '[]', 21, 1),
(54, '2025-07-19 08:18:11.641411', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Visi\"]}}]', 21, 1),
(55, '2025-07-19 08:18:44.153401', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Visi\"]}}]', 21, 1),
(56, '2025-07-19 08:26:48.242914', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Misi\"]}}]', 21, 1),
(57, '2025-07-19 08:29:15.695889', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Misi\"]}}]', 21, 1),
(58, '2025-07-19 08:29:52.101747', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Misi\"]}}]', 21, 1),
(59, '2025-07-19 13:44:51.237359', '1', 'Menteri PU Kunjungi Pulau Buton, Targetkan Jadi Sasaran Utama Inpres Irigasi', 2, '[]', 7, 1),
(60, '2025-07-19 14:02:50.243860', '2', 'anjay slebeww wadrigidawww', 1, '[{\"added\": {}}]', 7, 1),
(61, '2025-07-19 14:52:25.778258', '1', 'Menteri PU Kunjungi Pulau Buton, Targetkan Jadi Sasaran Utama Inpres Irigasi', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(62, '2025-07-20 04:25:25.366929', '1', 'Menteri PU Kunjungi Pulau Buton, Targetkan Jadi Sasaran Utama Inpres Irigasi', 2, '[{\"changed\": {\"fields\": [\"Isi\"]}}]', 7, 1),
(63, '2025-07-20 05:27:31.533434', '3', 'siuduwduaddouad', 1, '[{\"added\": {}}]', 7, 1),
(64, '2025-07-20 05:27:53.141719', '4', 'eadfaDaDFadaewfdwrwfgwtwf', 1, '[{\"added\": {}}]', 7, 1),
(65, '2025-07-20 05:28:05.195076', '5', 'e5ge5ageagegesges5ge5ge5g', 1, '[{\"added\": {}}]', 7, 1),
(66, '2025-07-20 05:28:17.422083', '6', 'e5gae4geagaewgtes5ges5ges5ges', 1, '[{\"added\": {}}]', 7, 1),
(67, '2025-07-20 06:19:40.234917', '7', 'Manchaster United Juara dunia', 1, '[{\"added\": {}}]', 7, 1),
(68, '2025-07-20 06:22:01.983238', '7', 'Manchaster United Juara dunia', 2, '[{\"changed\": {\"fields\": [\"Isi\"]}}]', 7, 1),
(69, '2025-07-20 06:26:08.156095', '7', 'Manchaster United Juara dunia', 2, '[]', 7, 1),
(70, '2025-07-20 06:36:17.550049', '7', 'Manchaster United Juara dunia', 3, '', 7, 1),
(71, '2025-07-20 06:37:44.127693', '8', 'Mu Juara UCL', 1, '[{\"added\": {}}]', 7, 1),
(72, '2025-07-20 07:08:17.239934', '2', 'anjay slebeww wadrigidawww', 3, '', 7, 1),
(73, '2025-07-20 07:08:23.363453', '6', 'e5gae4geagaewgtes5ges5ges5ges', 3, '', 7, 1),
(74, '2025-07-20 07:08:27.388112', '8', 'Mu Juara UCL', 3, '', 7, 1),
(75, '2025-07-20 07:08:31.084376', '5', 'e5ge5ageagegesges5ge5ge5g', 3, '', 7, 1),
(76, '2025-07-20 07:08:34.319573', '4', 'eadfaDaDFadaewfdwrwfgwtwf', 3, '', 7, 1),
(77, '2025-07-20 07:08:37.925104', '3', 'siuduwduaddouad', 3, '', 7, 1),
(78, '2025-07-20 07:11:41.264617', '9', 'Dukungan Infrastruktur SDA dalam Swasembada Pangan Provinsi Aceh', 1, '[{\"added\": {}}]', 7, 1),
(79, '2025-07-20 07:14:18.683467', '10', 'Rampung, Bendungan Marangkayu Siap Suplai Air Irigasi', 1, '[{\"added\": {}}]', 7, 1),
(80, '2025-07-20 07:16:18.728918', '11', 'latihan mengetik', 1, '[{\"added\": {}}]', 7, 1),
(81, '2025-07-20 23:58:06.683685', '11', 'latihan mengetik', 2, '[{\"changed\": {\"fields\": [\"Isi\"]}}]', 7, 1),
(82, '2025-07-21 00:40:52.053442', '11', 'latihan mengetik', 2, '[{\"changed\": {\"fields\": [\"Isi\"]}}]', 7, 1),
(83, '2025-07-21 00:43:02.247490', '11', 'latihan mengetik', 2, '[{\"changed\": {\"fields\": [\"Isi\"]}}]', 7, 1),
(84, '2025-07-21 00:45:21.930222', '12', 'testing', 1, '[{\"added\": {}}]', 7, 1),
(85, '2025-07-21 00:46:15.016015', '13', 'lagi testing', 1, '[{\"added\": {}}]', 7, 1),
(86, '2025-07-21 00:47:14.875946', '13', 'lagi testing', 3, '', 7, 1),
(87, '2025-07-21 00:52:46.396470', '12', 'testing', 3, '', 7, 1),
(88, '2025-07-21 01:53:55.426621', '1', '<p style=\"text-align:justify\"><strong>Tim Koordinasi Pengelolaan Sumber Daya Air (TKPSDA) WS Mahakam</strong>&nbsp;telah terbentuk melalui Keputusan Menteri Pekerjaan Umum dan Perumahan Rakyat Nomor 1', 1, '[{\"added\": {}}]', 22, 1),
(89, '2025-07-21 02:17:19.416223', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Visi\"]}}]', 21, 1),
(90, '2025-07-21 02:17:57.916956', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Visi\"]}}]', 21, 1),
(91, '2025-07-21 02:18:29.119507', '1', 'Visi dan Misi', 2, '[{\"changed\": {\"fields\": [\"Visi\"]}}]', 21, 1),
(92, '2025-07-21 02:27:45.661487', '1', '<p style=\"text-align:justify\"><strong>Tim Koordinasi Pengelolaan Sumber Daya Air (TKPSDA) WS Mahakam</strong>&nbsp;telah terbentuk melalui Keputusan Menteri Pekerjaan Umum dan Perumahan Rakyat Nomor 1', 2, '[{\"changed\": {\"fields\": [\"Tugas\", \"Fungsi\"]}}]', 22, 1),
(93, '2025-07-21 02:31:21.722768', '1', '<p style=\"text-align:justify\"><strong>Tim Koordinasi Pengelolaan Sumber Daya Air (TKPSDA) WS Mahakam</strong>&nbsp;telah terbentuk melalui Keputusan Menteri Pekerjaan Umum dan Perumahan Rakyat Nomor 1', 2, '[{\"changed\": {\"fields\": [\"Keanggotaan\"]}}]', 22, 1),
(94, '2025-07-21 02:42:08.675871', '1', '<p style=\"text-align:justify\"><strong>Tim Koordinasi Pengelolaan Sumber Daya Air (TKPSDA) WS Mahakam</strong>&nbsp;telah terbentuk melalui Keputusan Menteri Pekerjaan Umum dan Perumahan Rakyat Nomor 1', 2, '[{\"changed\": {\"fields\": [\"Keanggotaan\"]}}]', 22, 1),
(95, '2025-07-21 06:10:37.419521', '2', 'pembangunan jembatan di samarinda', 2, '[{\"changed\": {\"fields\": [\"Slug\", \"Kategori\"]}}]', 12, 1),
(96, '2025-07-22 01:46:04.503276', '7', 'Hidrologi', 2, '[{\"changed\": {\"fields\": [\"Nama kategori\"]}}]', 13, 1),
(97, '2025-07-22 01:46:13.429214', '5', 'Pantai', 2, '[{\"changed\": {\"fields\": [\"Nama kategori\"]}}]', 13, 1),
(98, '2025-07-22 01:46:43.692208', '2', 'Bendungan', 1, '[{\"added\": {}}]', 13, 1),
(99, '2025-07-22 03:06:59.781733', '2', 'Waduk', 2, '[{\"changed\": {\"fields\": [\"Nama\", \"Uraian\", \"Data teknis\"]}}]', 12, 1),
(100, '2025-07-22 03:14:04.402496', '2', 'Waduk', 2, '[{\"changed\": {\"fields\": [\"Data teknis\"]}}]', 12, 1),
(101, '2025-07-22 03:15:26.264380', '2', 'Waduk', 2, '[{\"changed\": {\"fields\": [\"Data teknis\"]}}]', 12, 1),
(102, '2025-07-22 03:15:56.017720', '2', 'Waduk', 2, '[{\"changed\": {\"fields\": [\"Data teknis\"]}}]', 12, 1),
(103, '2025-07-22 03:19:33.923873', '2', 'Waduk', 2, '[{\"changed\": {\"fields\": [\"Uraian\"]}}]', 12, 1),
(104, '2025-07-22 03:55:00.291157', '1', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Tahun</td>\r\n			<td>Anggaran (Rp)</td>\r\n			<td>Sumber Dana</td>\r\n			<td>Nama Pekerjaan</td>\r\n			<td>Konsultan</td>\r\n			<td>&', 2, '[{\"changed\": {\"fields\": [\"Data pekerjaan\", \"Tahun\"]}}]', 14, 1),
(105, '2025-07-22 06:53:20.206253', '3', 'Pengaman Pantai Saloloan', 1, '[{\"added\": {}}]', 12, 1),
(106, '2025-07-22 07:30:40.951872', '3', 'Pengaman Pantai Saloloan', 2, '[]', 12, 1),
(107, '2025-07-22 23:52:18.053753', '3', 'Pengaman Pantai Saloloan', 2, '[]', 12, 1),
(108, '2025-07-22 23:52:26.823356', '3', 'Pengaman Pantai Saloloan', 2, '[]', 12, 1),
(109, '2025-07-23 01:12:52.051698', '1', 'Pantai', 1, '[{\"added\": {}}]', 23, 1),
(110, '2025-07-23 01:13:00.289151', '2', 'irigasi', 1, '[{\"added\": {}}]', 23, 1),
(111, '2025-07-23 01:13:39.739077', '3', 'hidrologi', 1, '[{\"added\": {}}]', 23, 1),
(112, '2025-07-23 01:13:54.524565', '4', 'Bendungan', 1, '[{\"added\": {}}]', 23, 1),
(113, '2025-07-23 01:15:50.859712', '1', 'Proyek lorem ipsum', 1, '[{\"added\": {}}]', 10, 1),
(114, '2025-07-23 01:18:16.352571', '1', 'Proyek lorem ipsum', 2, '[]', 10, 1),
(115, '2025-07-23 01:20:26.440401', '1', 'Proyek lorem ipsum', 2, '[]', 10, 1),
(116, '2025-07-23 01:21:05.102140', '1', 'Proyek lorem ipsum', 2, '[]', 10, 1),
(117, '2025-07-23 01:28:59.468715', '1', '<p>tes tes tes tes</p>', 1, '[{\"added\": {}}]', 25, 1),
(118, '2025-07-23 02:16:01.234086', '1', '<p>tes tes tes tes</p>', 2, '[]', 25, 1),
(119, '2025-07-23 02:16:05.023515', '4', 'Bendungan', 2, '[]', 23, 1),
(120, '2025-07-23 02:24:59.241289', '1', 'Proyek lorem ipsum', 2, '[]', 10, 1),
(121, '2025-07-23 02:35:10.694151', '1', '<p>tes tes tes tes</p>', 2, '[]', 25, 1),
(122, '2025-07-23 02:53:18.372538', '2', 'saluran irigasi', 1, '[{\"added\": {}}]', 10, 1),
(123, '2025-07-23 02:55:36.693108', '1', '<p>tes tes tes tes</p>', 2, '[]', 25, 1),
(124, '2025-07-23 02:55:58.641526', '2', 'saluran irigasi', 2, '[]', 10, 1),
(125, '2025-07-23 03:32:06.316158', '3', 'bendungan', 1, '[{\"added\": {}}]', 10, 1),
(126, '2025-07-23 03:34:31.586459', '4', '<p>rgrgsgg</p>', 2, '[{\"changed\": {\"fields\": [\"Data pekerjaan\"]}}]', 25, 1),
(127, '2025-07-23 05:07:28.874190', '4', '<p>rgrgsgg</p>', 2, '[]', 25, 1),
(128, '2025-07-23 05:34:06.357908', '4', 'Bendungan sebulu', 1, '[{\"added\": {}}]', 10, 1),
(129, '2025-07-23 05:35:24.023732', '5', '<p>iidhihidcdcnjcn</p>', 2, '[{\"changed\": {\"fields\": [\"Data pekerjaan\"]}}]', 25, 1),
(130, '2025-07-23 05:36:50.748124', '5', '<p>iidhihidcdcnjcn</p>', 3, '', 25, 1),
(131, '2025-07-23 05:37:28.529288', '2', '<p>ffefef</p>', 2, '[{\"changed\": {\"fields\": [\"Data pekerjaan\", \"Sumber dana\"]}}]', 25, 1),
(132, '2025-07-23 05:57:39.000116', '10', 'Rampung, Bendungan Marangkayu Siap Suplai Air Irigasi', 2, '[]', 7, 1),
(133, '2025-07-23 05:59:31.704844', '4', 'Bendungan sebulu', 2, '[{\"changed\": {\"name\": \"pekerjaan sda\", \"object\": \"<p>44fff</p>\", \"fields\": [\"Data pekerjaan\"]}}]', 10, 1),
(134, '2025-07-24 01:04:28.729170', '4', 'Bendungan sebulu', 2, '[]', 10, 1),
(135, '2025-07-24 01:04:32.400742', '3', 'bendungan', 2, '[]', 10, 1),
(136, '2025-07-24 01:04:35.378802', '2', 'saluran irigasi', 2, '[{\"changed\": {\"name\": \"pekerjaan sda\", \"object\": \"<p>jembatan untuk penyebrangan</p>\", \"fields\": [\"Data pekerjaan\"]}}]', 10, 1),
(137, '2025-07-24 01:04:38.356044', '1', 'Proyek lorem ipsum', 2, '[]', 10, 1),
(138, '2025-07-24 02:53:58.056266', '4', 'Bendungan Kaliorang', 2, '[{\"changed\": {\"fields\": [\"Nama\", \"Gambar\", \"Uraian\", \"Data teknis\", \"Slug\"]}}]', 10, 1),
(139, '2025-07-24 02:58:05.637147', '6', '<p>-</p>', 2, '[{\"changed\": {\"fields\": [\"Data pekerjaan\", \"Tahun\", \"Pagu anggaran\", \"Sumber dana\", \"Kontraktor\", \"Konsultan\"]}}]', 25, 1),
(140, '2025-07-24 02:59:46.524121', '4', 'Bendungan Kaliorang', 2, '[]', 10, 1),
(141, '2025-07-24 03:09:06.953657', '4', 'Bendungan Kaliorang', 2, '[{\"changed\": {\"fields\": [\"Data teknis\"]}}]', 10, 1),
(142, '2025-07-24 03:36:01.586284', '6', '<p>-</p>', 2, '[]', 25, 1),
(143, '2025-07-24 07:00:55.650944', '5', 'irigasi samarinda', 1, '[{\"added\": {}}]', 10, 1),
(144, '2025-07-24 07:02:10.234929', '4', 'Bendungan Kaliorang', 2, '[{\"changed\": {\"fields\": [\"Data teknis\"]}}]', 10, 1),
(145, '2025-07-24 07:02:58.769952', '4', 'Bendungan Kaliorang', 2, '[{\"changed\": {\"fields\": [\"Uraian\", \"Data teknis\"]}}]', 10, 1),
(146, '2025-07-24 07:04:38.071818', '4', 'Bendungan Kaliorang', 2, '[{\"changed\": {\"fields\": [\"Uraian\"]}}]', 10, 1),
(147, '2025-07-25 01:56:39.685372', '2', '<p>ffefef</p>', 3, '', 25, 1),
(148, '2025-07-28 00:55:45.417388', '11', 'latihan mengetik', 2, '[{\"changed\": {\"fields\": [\"Isi\"]}}]', 7, 1),
(149, '2025-07-28 02:25:23.950219', '5', 'Jaringan Irigasi Biatan', 2, '[{\"changed\": {\"fields\": [\"Nama\", \"Gambar\", \"Uraian\", \"Data teknis\"]}}, {\"changed\": {\"name\": \"pekerjaan sda\", \"object\": \"<p>tes tes</p>\", \"fields\": [\"Data pekerjaan\"]}}]', 10, 1),
(150, '2025-07-28 02:30:37.370742', '7', '<h1><strong>Data Pekerjaan</strong></h1>\r\n\r\n<h2><strong>Pekerjaan Perencanaan</strong></h2>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:-2p', 2, '[{\"changed\": {\"fields\": [\"Data pekerjaan\"]}}]', 25, 1),
(151, '2025-07-28 02:36:25.991917', '6', 'Jaringan Irigasi Kaliorang', 1, '[{\"added\": {}}]', 10, 1),
(152, '2025-07-28 05:12:59.297529', '6', '<p>-</p>', 3, '', 25, 1),
(153, '2025-07-28 05:13:15.976072', '9', '<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:-2px; width:607px\">\r\n	<thead>\r\n		<tr>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px d', 3, '', 25, 1),
(154, '2025-07-28 05:16:04.077569', '14', 'hshdhdhe', 2, '[{\"changed\": {\"fields\": [\"Tahun\", \"Pagu anggaran\"]}}]', 25, 1),
(155, '2025-07-28 05:35:16.982059', '3', 'Bendung Daerah Irigasi Biatan', 2, '[{\"changed\": {\"fields\": [\"Nama\", \"Uraian\", \"Data teknis\", \"Slug\"]}}]', 10, 1),
(156, '2025-07-28 05:35:51.074382', '3', 'Bendung Daerah Irigasi Biatan', 2, '[]', 10, 1),
(157, '2025-07-28 05:51:32.260021', '1', 'Proyek lorem ipsum', 3, '', 10, 1),
(158, '2025-07-29 00:31:02.859563', '10', 'SID D.I. Kaliorang', 2, '[]', 25, 1),
(159, '2025-07-29 00:32:54.521730', '13', 'testes', 2, '[]', 25, 1),
(160, '2025-07-29 02:53:34.918786', '1', 'proyek irigasi biduk-biduk', 1, '[{\"added\": {}}]', 26, 1),
(161, '2025-07-29 03:28:17.021956', '1', 'proyek irigasi biduk-biduk', 2, '[]', 26, 1),
(162, '2025-07-29 03:30:41.524184', '1', 'proyek irigasi biduk-biduk', 2, '[]', 26, 1),
(163, '2025-07-29 03:45:13.873753', '2', 'irigasi', 1, '[{\"added\": {}}]', 26, 1),
(164, '2025-07-29 05:46:06.519797', '1', 'Progres Pembangunan Tanggul Pengaman Pantai', 1, '[{\"added\": {}}]', 27, 1),
(165, '2025-07-29 05:46:22.321476', '1', 'proyek irigasi biduk-biduk', 2, '[]', 26, 1),
(166, '2025-07-29 05:47:39.768804', '1', 'Progres Pembangunan Tanggul Pengaman Pantai', 2, '[{\"changed\": {\"fields\": [\"Tanggal kegiatan\"]}}]', 27, 1),
(167, '2025-07-30 02:04:13.740462', '2', 'Pekerjaan banjir', 1, '[{\"added\": {}}]', 27, 1),
(168, '2025-07-31 00:49:10.581838', '11', 'Informasi', 1, '[{\"added\": {}}]', 15, 1),
(169, '2025-07-31 00:49:39.623950', '14', 'Wakil Menteri Pekerjaan Umum, Diana Kusumastuti Kunjungi Embung JKW', 1, '[{\"added\": {}}]', 7, 1),
(170, '2025-07-31 00:54:37.790180', '15', 'Wamen PU, Diana Kusumastuti Kunjungi Embung Bandara VVIP IKN', 1, '[{\"added\": {}}]', 7, 1),
(171, '2025-07-31 00:58:18.299112', '16', 'Progress Fisik Mencapai 80,69%, Bendungan Mbay siap Dukung Program Swasembada Air dan Pangan', 1, '[{\"added\": {}}]', 7, 1),
(172, '2025-07-31 01:03:50.590274', '13', 'testes', 2, '[]', 25, 1),
(173, '2025-07-31 06:14:55.463466', '1', 'Aditya - masalah', 2, '[]', 28, 1),
(174, '2025-07-31 06:15:13.213650', '1', 'Aditya - masalah', 2, '[]', 28, 1),
(175, '2025-08-04 00:02:33.810067', '1', 'sungai', 1, '[{\"added\": {}}]', 29, 1),
(176, '2025-08-04 00:03:29.536259', '1', 'sungai', 2, '[]', 29, 1),
(177, '2025-08-04 00:05:50.300717', '1', 'permohonan izin', 1, '[{\"added\": {}}]', 30, 1),
(178, '2025-08-04 03:57:16.578668', '1', 'Sungai', 1, '[{\"added\": {}}]', 29, 1),
(179, '2025-08-04 03:59:08.796973', '1', 'permohonan sungai', 2, '[]', 30, 1),
(180, '2025-08-04 05:36:34.083246', '1', 'rijal', 1, '[{\"added\": {}}]', 31, 1),
(181, '2025-08-04 05:37:25.706289', '2', 'Deny', 1, '[{\"added\": {}}]', 31, 1),
(182, '2025-08-04 06:23:38.399435', '3', 'adit', 1, '[{\"added\": {}}]', 31, 1),
(183, '2025-08-04 06:28:31.759398', '6', 'sigit', 2, '[]', 30, 1),
(184, '2025-08-04 07:00:23.858060', '4', 'wahab', 1, '[{\"added\": {}}]', 31, 1),
(185, '2025-08-04 07:02:14.125456', '5', 'kiwil', 1, '[{\"added\": {}}]', 31, 1),
(186, '2025-08-05 00:55:34.653224', '14', 'Wakil Menteri Pekerjaan Umum, Diana Kusumastuti Kunjungi Embung JKW', 2, '[]', 7, 1),
(187, '2025-08-05 00:55:43.203580', '14', 'Wakil Menteri Pekerjaan Umum, Diana Kusumastuti Kunjungi Embung JKW', 2, '[]', 7, 1),
(188, '2025-08-05 00:56:25.006018', '16', 'Progress Fisik Mencapai 80,69%, Bendungan Mbay siap Dukung Program Swasembada Air dan Pangan', 2, '[]', 7, 1),
(189, '2025-08-05 00:56:34.176028', '16', 'Progress Fisik Mencapai 80,69%, Bendungan Mbay siap Dukung Program Swasembada Air dan Pangan', 2, '[]', 7, 1),
(190, '2025-08-05 01:04:17.121711', '15', 'Wamen PU, Diana Kusumastuti Kunjungi Embung Bandara VVIP IKN', 2, '[]', 7, 1),
(191, '2025-08-05 01:04:26.992364', '15', 'Wamen PU, Diana Kusumastuti Kunjungi Embung Bandara VVIP IKN', 2, '[]', 7, 1),
(192, '2025-08-05 01:05:21.013765', '16', 'Progress Fisik Mencapai 80,69%, Bendungan Mbay siap Dukung Program Swasembada Air dan Pangan', 2, '[]', 7, 1),
(193, '2025-08-05 01:05:50.802579', '11', 'latihan mengetik', 2, '[]', 7, 1),
(194, '2025-08-05 01:05:59.122923', '11', 'latihan mengetik', 2, '[]', 7, 1),
(195, '2025-08-05 01:06:08.012926', '10', 'Rampung, Bendungan Marangkayu Siap Suplai Air Irigasi', 2, '[]', 7, 1),
(196, '2025-08-05 01:06:16.148140', '10', 'Rampung, Bendungan Marangkayu Siap Suplai Air Irigasi', 2, '[]', 7, 1),
(197, '2025-08-05 01:06:27.217870', '9', 'Dukungan Infrastruktur SDA dalam Swasembada Pangan Provinsi Aceh', 2, '[]', 7, 1),
(198, '2025-08-05 01:06:35.964263', '9', 'Dukungan Infrastruktur SDA dalam Swasembada Pangan Provinsi Aceh', 2, '[]', 7, 1),
(199, '2025-08-05 01:06:43.797894', '1', 'Menteri PU Kunjungi Pulau Buton, Targetkan Jadi Sasaran Utama Inpres Irigasi', 2, '[]', 7, 1),
(200, '2025-08-06 00:19:43.741294', '1', 'Kegiatan Fisik', 1, '[{\"added\": {}}]', 32, 1),
(201, '2025-08-06 00:20:02.842684', '2', 'Kegiatan Perencanaan', 1, '[{\"added\": {}}]', 32, 1),
(202, '2025-08-06 00:31:21.556181', '1', 'Kegiatan Perencanaan', 1, '[{\"added\": {}}]', 32, 1),
(203, '2025-08-06 00:31:31.219928', '2', 'Kegiatan Fisik', 1, '[{\"added\": {}}]', 32, 1),
(204, '2025-08-06 00:31:50.794786', '2', 'irigasi', 2, '[{\"changed\": {\"fields\": [\"Album\"]}}]', 26, 1),
(205, '2025-08-06 00:32:02.779575', '1', 'proyek irigasi biduk-biduk', 2, '[{\"changed\": {\"fields\": [\"Album\"]}}]', 26, 1),
(206, '2025-08-06 00:56:06.349495', '3', 'Sidang TKPSDA', 1, '[{\"added\": {}}]', 26, 1),
(207, '2025-08-06 01:50:39.513447', '3', 'Sidang TKPSDA', 2, '[]', 26, 1),
(208, '2025-08-06 02:15:35.198070', '3', 'Sidang TKPSDA', 3, '', 26, 1),
(209, '2025-08-06 02:21:11.166154', '1', 'Sidang TKPSDA', 1, '[{\"added\": {}}]', 33, 1),
(210, '2025-08-06 02:35:26.779908', '2', 'Sidang Komisi Irigasi', 1, '[{\"added\": {}}]', 33, 1),
(211, '2025-08-06 02:43:04.669595', '3', 'Sidang Dewan SDA', 1, '[{\"added\": {}}]', 33, 1),
(212, '2025-08-06 02:46:04.230244', '4', 'Pembangunan Tanggul', 1, '[{\"added\": {}}]', 26, 1),
(213, '2025-08-06 05:56:21.053363', '1', 'Pantai', 1, '[{\"added\": {}}]', 34, 1),
(214, '2025-08-06 05:56:29.265829', '2', 'Irigasi', 1, '[{\"added\": {}}]', 34, 1),
(215, '2025-08-06 05:56:45.761756', '4', 'Pembangunan Tanggul', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 26, 1),
(216, '2025-08-06 05:56:52.904105', '2', 'irigasi', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 26, 1),
(217, '2025-08-06 05:56:58.649489', '1', 'proyek irigasi biduk-biduk', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 26, 1),
(218, '2025-08-06 06:00:39.415213', '1', 'Irigasi', 1, '[{\"added\": {}}]', 35, 1),
(219, '2025-08-06 06:00:58.405636', '2', 'Bendungan', 1, '[{\"added\": {}}]', 35, 1),
(220, '2025-08-06 06:01:07.055393', '3', 'Pantai', 1, '[{\"added\": {}}]', 35, 1),
(221, '2025-08-06 06:02:15.623434', '2', 'Bendungan', 3, '', 35, 1),
(222, '2025-08-06 06:02:21.516681', '4', 'Hidrologi', 1, '[{\"added\": {}}]', 35, 1),
(223, '2025-08-06 06:22:40.004402', '4', 'Pembangunan Tanggul', 2, '[]', 26, 1),
(224, '2025-08-06 06:22:43.062325', '2', 'irigasi', 2, '[]', 26, 1),
(225, '2025-08-06 06:22:45.740086', '1', 'proyek irigasi biduk-biduk', 2, '[]', 26, 1),
(226, '2025-08-06 06:29:44.652247', '4', 'Pembangunan Tanggul', 2, '[]', 26, 1),
(227, '2025-08-07 01:16:01.644685', '6', 'Wahyu', 1, '[{\"added\": {}}]', 31, 1),
(228, '2025-08-07 01:16:40.988004', '5', 'kiwil', 2, '[]', 31, 1),
(229, '2025-08-07 01:56:50.072436', '5', 'Pekerjaan Pantai', 1, '[{\"added\": {}}]', 26, 1),
(230, '2025-08-07 01:59:14.634695', '6', 'Pekerjaan Pantai Talisayan', 1, '[{\"added\": {}}]', 26, 1),
(231, '2025-08-07 02:00:36.326716', '7', 'Kegiatan Salur irigasi tanjung perengat', 1, '[{\"added\": {}}]', 26, 1),
(232, '2025-08-07 02:01:59.663194', '8', 'Pekerjaan pantai Kaniungan', 1, '[{\"added\": {}}]', 26, 1),
(233, '2025-08-07 03:41:12.522979', '6', 'Pekerjaan Pantai Talisayan', 2, '[]', 26, 1),
(234, '2025-08-07 03:48:19.935865', '3', 'Sidang Dewan SDA', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 33, 1),
(235, '2025-08-07 03:48:28.972853', '2', 'Sidang Komisi Irigasi', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 33, 1),
(236, '2025-08-07 03:49:11.697561', '1', 'Sidang TKPSDA', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 33, 1),
(237, '2025-08-07 05:33:01.902903', '4', 'Pengambilan sampel air permukaan untuk analisis kualitas air', 1, '[{\"added\": {}}]', 33, 1),
(238, '2025-08-07 05:38:06.435956', '5', 'Presentasi Peta Hidrologi untuk Perencanaan SDA', 1, '[{\"added\": {}}]', 33, 1),
(239, '2025-08-07 05:41:43.493285', '3', 'Rekomtek', 2, '[{\"changed\": {\"fields\": [\"Nama kategori\"]}}]', 35, 1),
(240, '2025-08-07 05:48:48.022622', '5', 'Presentasi Peta Hidrologi untuk Perencanaan SDA', 2, '[]', 33, 1),
(241, '2025-08-07 05:51:26.088374', '6', 'Tinjauan Lokasi Rekomtek', 1, '[{\"added\": {}}]', 33, 1),
(242, '2025-08-07 06:02:33.376922', '7', 'Survei Lokasi untuk Proses Rekomtek SDA', 1, '[{\"added\": {}}]', 33, 1),
(243, '2025-08-07 07:16:22.114061', '1', 'Kegiatan Rekomtek', 1, '[{\"added\": {}}]', 36, 1),
(244, '2025-08-07 07:28:15.157320', '2', 'Kegiatan TKPSDA', 1, '[{\"added\": {}}]', 36, 1),
(245, '2025-08-11 00:46:15.744761', '3', 'Pekerjaan Irigasi Tanjung Perengat', 1, '[{\"added\": {}}]', 27, 1),
(246, '2025-08-11 00:58:18.554364', '3', 'Sosialisasi Pemberdayaan Masyarakat', 1, '[{\"added\": {}}]', 36, 1),
(247, '2025-08-11 02:23:16.116094', '4', 'Kunjungan Lapangan Embung', 1, '[{\"added\": {}}]', 36, 1),
(248, '2025-08-11 06:23:03.355029', '11', 'Wahyu', 2, '[]', 30, 1),
(249, '2025-08-11 06:28:37.087969', '11', 'Wahyu', 2, '[]', 30, 1),
(250, '2025-08-11 06:40:11.578988', '2', 'bendung', 1, '[{\"added\": {}}]', 29, 1),
(251, '2025-08-11 06:40:22.354875', '2', 'Pekerjaan banjir', 2, '[]', 27, 1),
(252, '2025-08-11 07:32:51.445625', '2', 'Rekomendasi Teknis Izin Penggunaan Sumber Daya Air', 2, '[{\"changed\": {\"fields\": [\"Nama layanan\"]}}]', 29, 1),
(253, '2025-08-11 07:33:05.465476', '1', 'Rekomendasi Teknis Izin Pengusahaan Sumber Daya Air', 2, '[{\"changed\": {\"fields\": [\"Nama layanan\"]}}]', 29, 1),
(254, '2025-08-11 07:36:49.052027', '12', 'Medi Sahputra', 2, '[{\"changed\": {\"fields\": [\"Layanan\", \"Nama usulan\", \"Tujuan\", \"Deskripsi\", \"Lokasi\", \"Jumlah usulan\", \"Nama pemohon\"]}}]', 30, 1),
(255, '2025-08-11 07:37:01.474998', '11', 'Wahyu', 3, '', 30, 1),
(256, '2025-08-11 07:37:25.931667', '10', 'Wahyu', 3, '', 30, 1),
(257, '2025-08-11 07:37:25.932666', '9', 'zidan', 3, '', 30, 1),
(258, '2025-08-11 07:37:25.932666', '8', 'kiwil', 3, '', 30, 1),
(259, '2025-08-11 07:37:25.932666', '7', 'wahab', 3, '', 30, 1),
(260, '2025-08-11 07:37:25.932666', '6', 'sigit', 3, '', 30, 1),
(261, '2025-08-11 07:37:25.932666', '5', 'jeje', 3, '', 30, 1),
(262, '2025-08-11 07:37:25.932666', '4', 'rijal', 3, '', 30, 1),
(263, '2025-08-11 07:37:25.932666', '3', 'rijal', 3, '', 30, 1),
(264, '2025-08-11 07:37:25.932666', '2', 'Deny', 3, '', 30, 1),
(265, '2025-08-11 07:37:25.932666', '1', 'adit', 3, '', 30, 1),
(266, '2025-08-12 01:31:09.207699', '12', 'Medi Sahputra', 2, '[]', 30, 1),
(267, '2025-08-12 06:09:33.310319', '12', 'Medi Sahputra', 2, '[{\"changed\": {\"fields\": [\"Nama usulan\", \"Tujuan\", \"Deskripsi\", \"Lokasi\", \"Jumlah usulan\", \"Koordinat longitude\", \"Koordinat latitude\"]}}]', 30, 1),
(268, '2025-08-12 06:18:52.353471', '7', 'Medi Sahputra', 1, '[{\"added\": {}}]', 31, 1),
(269, '2025-08-12 06:25:02.188246', '3', 'Pelaksanaan Kontruksi Pada Sumber Air', 1, '[{\"added\": {}}]', 29, 1),
(270, '2025-08-12 06:25:16.601171', '4', 'Pengalihan Air Sungai', 1, '[{\"added\": {}}]', 29, 1),
(271, '2025-08-12 07:26:35.182414', '14', 'Tanpa Nama', 3, '', 30, 1),
(272, '2025-08-12 07:26:35.182414', '13', 'Tanpa Nama', 3, '', 30, 1),
(273, '2025-08-13 00:42:39.590897', '15', 'Rofil', 2, '[]', 30, 1),
(274, '2025-08-13 07:51:08.365667', '2', 'sungai - Ampen Medang', 2, '[]', 37, 1),
(275, '2025-08-14 02:44:38.732165', '20', 'arban', 2, '[]', 30, 1),
(276, '2025-08-14 03:40:53.154896', '20', 'arban', 2, '[]', 30, 1),
(277, '2025-08-14 06:44:24.539688', '27', 'Denyyy', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(278, '2025-08-14 06:45:30.750549', '26', 'Adtyaz', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(279, '2025-08-14 06:47:05.938693', '26', 'Adtyaz', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(280, '2025-08-14 06:47:06.947526', '26', 'Adtyaz', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(281, '2025-08-19 03:05:40.843362', '8', 'Achmad Effendy', 1, '[{\"added\": {}}]', 31, 1),
(282, '2025-08-19 03:21:19.705787', '21', 'Achmad Effendy', 2, '[]', 30, 1),
(283, '2025-08-19 03:32:30.416423', '22', 'Abdul Halim', 3, '', 30, 1),
(284, '2025-08-19 03:32:36.499322', '23', 'Abdul Halim', 3, '', 30, 1),
(285, '2025-08-19 03:33:34.028636', '24', 'Abdul Halim', 3, '', 30, 1),
(286, '2025-08-19 14:13:28.598561', '9', 'Yayan Handian Ginanjar - ditolak', 1, '[{\"added\": {}}]', 31, 1),
(287, '2025-08-19 14:14:47.693096', '12', 'Medi Sahputra', 2, '[{\"changed\": {\"fields\": [\"Nama perusahaan\"]}}]', 30, 1),
(288, '2025-08-19 14:41:06.788101', '10', 'Bahrudin - diterima', 1, '[{\"added\": {}}]', 31, 1),
(289, '2025-08-19 14:41:44.961066', '11', 'Abdul Halim - diterima', 1, '[{\"added\": {}}]', 31, 1),
(290, '2025-08-20 00:20:33.534564', '27', 'arifin', 3, '', 30, 1),
(291, '2025-08-20 00:20:56.945983', '20', 'arban', 3, '', 30, 1),
(292, '2025-08-20 00:20:56.945983', '19', 'adit', 3, '', 30, 1),
(293, '2025-08-20 00:20:56.945983', '18', 'Tanpa Nama', 3, '', 30, 1),
(294, '2025-08-20 00:20:56.945983', '16', 'Rofil', 3, '', 30, 1),
(295, '2025-08-20 00:20:56.945983', '15', 'Rofil', 3, '', 30, 1),
(296, '2025-08-20 01:19:31.241490', '29', 'Prabowo', 2, '[]', 30, 1),
(297, '2025-08-20 01:21:25.956028', '13', 'Prabowo - ditolak', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Keterangan\"]}}]', 31, 1),
(298, '2025-08-20 14:19:07.150764', '14', 'Sayekti Harits - diterima', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Keterangan\", \"Jadwal kunjungan lapangan\", \"Tanggal kunjungan lapangan 1\", \"Tanggal kunjungan lapangan 2\"]}}]', 31, 1),
(299, '2025-08-20 14:36:19.736566', '10', 'SID D.I. Kaliorang', 2, '[]', 25, 1),
(300, '2025-08-20 15:11:34.281189', '1', 'Majalah Banyu Edisi 1', 1, '[{\"added\": {}}]', 39, 1),
(301, '2025-08-21 01:42:57.637934', '12', 'Lamine Yamal - ditolak', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Keterangan\"]}}]', 31, 1),
(302, '2025-08-21 12:51:49.013042', '29', 'Rizal', 2, '[]', 4, 1),
(303, '2025-08-21 13:29:30.882874', '16', 'Tanpa Rekomtek', 1, '[{\"added\": {}}]', 31, 1),
(304, '2025-08-21 13:29:38.879333', '16', 'Tanpa Rekomtek', 3, '', 31, 1),
(305, '2025-08-21 13:31:13.722219', '17', 'Roma irama - proses', 1, '[{\"added\": {}}]', 31, 1),
(306, '2025-08-21 13:33:55.234091', '18', 'Uzumaki naruto - proses', 3, '', 31, 1),
(307, '2025-08-21 13:33:55.234091', '17', 'Roma irama - proses', 3, '', 31, 1),
(308, '2025-08-21 13:33:55.234091', '15', 'alya - proses', 3, '', 31, 1),
(309, '2025-08-24 07:06:05.652124', '1', 'peraturan', 1, '[{\"added\": {}}]', 40, 1),
(310, '2025-08-24 09:28:25.996901', '30', 'admin_perencanaan', 1, '[{\"added\": {}}]', 4, 1),
(311, '2025-08-24 09:34:40.961467', '2', 'Perencanaan', 1, '[{\"added\": {}}]', 3, 1),
(312, '2025-08-24 09:34:50.327135', '30', 'admin_perencanaan', 2, '[]', 4, 1),
(313, '2025-08-24 09:35:16.764143', '30', 'admin_perencanaan', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(314, '2025-08-24 09:35:33.657123', '30', 'admin_perencanaan', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(315, '2025-08-24 09:37:25.972418', '30', 'admin_perencanaan', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(316, '2025-08-24 09:37:31.956322', '30', 'admin_perencanaan', 2, '[]', 4, 1),
(317, '2025-08-24 11:00:45.147564', '1', 'admin', 2, '[]', 4, 1),
(318, '2025-08-24 11:01:21.628593', '1', 'developer', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(319, '2025-08-24 11:01:31.352577', '1', 'developer', 2, '[]', 4, 1),
(320, '2025-08-24 11:02:57.285663', '31', 'admin', 1, '[{\"added\": {}}]', 4, 1),
(321, '2025-08-24 11:03:02.393888', '31', 'admin', 2, '[]', 4, 1),
(322, '2025-08-24 11:03:19.259910', '1', 'admin web', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(323, '2025-08-24 11:04:10.993715', '1', 'admin web', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(324, '2025-08-24 11:06:21.384383', '31', 'admin', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(325, '2025-08-24 11:07:32.931400', '31', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(326, '2025-08-24 12:48:02.544758', '20', 'naufal - proses', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 31, 30),
(327, '2025-08-24 12:49:54.873712', '21', 'rizkii - proses', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 31, 30),
(328, '2025-08-24 12:49:57.415309', '20', 'naufal - proses', 2, '[]', 31, 30),
(329, '2025-08-24 12:50:01.404853', '21', 'rizkii - proses', 2, '[]', 31, 30),
(330, '2025-08-24 12:59:27.275294', '22', 'Hendrie - diterima', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Keterangan\", \"Jadwal kunjungan lapangan\", \"Tanggal kunjungan lapangan 1\", \"Tanggal kunjungan lapangan 2\"]}}]', 31, 30),
(331, '2025-08-24 12:59:56.564908', '21', 'rizkii - ditolak', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Keterangan\", \"Jadwal kunjungan lapangan\", \"Tanggal kunjungan lapangan 1\", \"Tanggal kunjungan lapangan 2\"]}}]', 31, 30),
(332, '2025-08-24 13:00:08.120593', '20', 'naufal - diterima', 2, '[{\"changed\": {\"fields\": [\"Status\", \"Jadwal kunjungan lapangan\", \"Tanggal kunjungan lapangan 1\", \"Tanggal kunjungan lapangan 2\"]}}]', 31, 30),
(333, '2025-08-24 23:44:11.557935', '13', 'Informasi', 1, '[{\"added\": {}}]', 15, 1),
(334, '2025-08-24 23:44:16.374353', '16', 'Progress Fisik Mencapai 80,69%, Bendungan Mbay siap Dukung Program Swasembada Air dan Pangan', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(335, '2025-08-24 23:44:25.710874', '15', 'Wamen PU, Diana Kusumastuti Kunjungi Embung Bandara VVIP IKN', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(336, '2025-08-24 23:44:38.653256', '14', 'Wakil Menteri Pekerjaan Umum, Diana Kusumastuti Kunjungi Embung JKW', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(337, '2025-08-24 23:44:49.650042', '11', 'latihan mengetik', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(338, '2025-08-25 01:38:37.910111', '1', 'IKM 1', 1, '[{\"added\": {}}]', 42, 1),
(339, '2025-08-25 02:04:35.671737', '1', 'Hidrologi 1', 1, '[{\"added\": {}}]', 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'berita', 'artikel'),
(15, 'berita', 'kategori'),
(28, 'contact', 'pesankontak'),
(5, 'contenttypes', 'contenttype'),
(38, 'dashboard', 'foto_profil'),
(32, 'galeri', 'album'),
(26, 'galeri', 'foto'),
(33, 'galeri', 'fotokegiatanperencanaan'),
(34, 'galeri', 'kategorikegiatanfisik'),
(35, 'galeri', 'kategorikegiatanperencanaan'),
(27, 'galeri', 'video'),
(36, 'galeri', 'videokegiatanperencanaan'),
(43, 'hasil_survey_kepuasan', 'hidrologi'),
(42, 'hasil_survey_kepuasan', 'ikm'),
(10, 'infrastruktur_sda', 'infrastruktursda'),
(23, 'infrastruktur_sda', 'kategoriinfrastruktursda'),
(25, 'infrastruktur_sda', 'pekerjaansda'),
(24, 'infrastruktur_sda', 'post'),
(11, 'kategori_infrastruktur_sda', 'kategoriinfrastruktursda'),
(22, 'kelembagaan', 'tkpsda'),
(40, 'layanan_publik', 'peraturan'),
(41, 'layanan_publik', 'sop'),
(39, 'media_informasi', 'majalahbanyu'),
(9, 'pekerjaan_sda', 'pekerjaansda'),
(12, 'pembangunan_sda', 'infrastruktursda'),
(13, 'pembangunan_sda', 'kategoriinfrastruktursda'),
(14, 'pembangunan_sda', 'pekerjaansda'),
(16, 'pembangunan_sda', 'post'),
(8, 'pengguna', 'biodata'),
(17, 'profil', 'lokasikantor'),
(18, 'profil', 'sejarah'),
(19, 'profil', 'strukturorganisasi'),
(20, 'profil', 'tugasfungsi'),
(21, 'profil', 'visimisi'),
(37, 'rekomtek', 'intake'),
(29, 'rekomtek', 'layanan'),
(30, 'rekomtek', 'rekomendasiteknis'),
(31, 'rekomtek', 'statusrekomendasiteknis'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-07-11 07:50:08.642908'),
(2, 'auth', '0001_initial', '2025-07-11 07:50:09.247958'),
(3, 'admin', '0001_initial', '2025-07-11 07:50:09.390268'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-07-11 07:50:09.407048'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-07-11 07:50:09.439020'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-07-11 07:50:09.564562'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-07-11 07:50:09.647094'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-07-11 07:50:09.709998'),
(9, 'auth', '0004_alter_user_username_opts', '2025-07-11 07:50:09.733618'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-07-11 07:50:09.776464'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-07-11 07:50:09.779957'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-07-11 07:50:09.795269'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-07-11 07:50:09.823906'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-07-11 07:50:09.871856'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-07-11 07:50:09.921062'),
(16, 'auth', '0011_update_proxy_permissions', '2025-07-11 07:50:09.951564'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-07-11 07:50:10.005992'),
(18, 'sessions', '0001_initial', '2025-07-11 07:50:10.074387'),
(19, 'berita', '0001_initial', '2025-07-15 00:42:28.879044'),
(20, 'berita', '0002_alter_artikel_options_alter_artikel_thumbnail', '2025-07-15 01:09:22.555666'),
(21, 'pengguna', '0001_initial', '2025-07-15 01:22:18.320096'),
(22, 'pengguna', '0002_alter_biodata_foto', '2025-07-17 06:09:01.523461'),
(23, 'pekerjaan_sda', '0001_initial', '2025-07-17 06:24:58.140886'),
(25, 'pekerjaan_sda', '0002_alter_pekerjaansda_options', '2025-07-17 06:53:39.552616'),
(26, 'kategori_infrastruktur_sda', '0001_initial', '2025-07-17 07:05:12.391035'),
(28, 'berita', '0003_kategori_alter_artikel_options_artikel_kategori', '2025-07-17 12:43:16.734057'),
(31, 'profil', '0001_initial', '2025-07-19 04:05:39.938373'),
(32, 'profil', '0002_alter_lokasikantor_options_alter_sejarah_options_and_more', '2025-07-19 06:18:58.779403'),
(33, 'profil', '0003_alter_tugasfungsi_fungsi_alter_tugasfungsi_tugas', '2025-07-19 06:49:43.989338'),
(34, 'berita', '0004_artikel_tgl_buat_artikel_tgl_update', '2025-07-19 14:46:10.818578'),
(36, 'profil', '0004_alter_visimisi_misi_alter_visimisi_visi', '2025-07-19 14:46:10.905290'),
(37, 'berita', '0005_alter_artikel_tgl_buat_alter_artikel_tgl_update', '2025-07-20 03:17:11.740547'),
(38, 'berita', '0006_alter_artikel_isi', '2025-07-20 04:24:54.941483'),
(39, 'kelembagaan', '0001_initial', '2025-07-21 01:32:56.147814'),
(40, 'kelembagaan', '0002_alter_tkpsda_options', '2025-07-21 01:37:06.301815'),
(43, 'infrastruktur_sda', '0001_initial', '2025-07-23 01:10:38.084972'),
(44, 'galeri', '0001_initial', '2025-07-29 02:44:04.317974'),
(45, 'galeri', '0002_alter_foto_foto_dokumentasi', '2025-07-29 02:51:42.857331'),
(46, 'galeri', '0003_video', '2025-07-29 05:32:00.034241'),
(47, 'galeri', '0004_alter_foto_tanggal_kegiatan_and_more', '2025-07-29 05:33:54.172810'),
(48, 'galeri', '0005_alter_foto_tanggal_kegiatan_and_more', '2025-07-29 05:35:04.797746'),
(49, 'contact', '0001_initial', '2025-07-31 06:04:12.473644'),
(50, 'contact', '0002_alter_pesankontak_tanggal_kirim', '2025-07-31 07:31:37.460876'),
(51, 'berita', '0007_artikel_views', '2025-08-03 02:16:44.942650'),
(52, 'infrastruktur_sda', '0002_infrastruktursda_views', '2025-08-03 13:24:02.658092'),
(53, 'galeri', '0006_foto_views_video_views', '2025-08-03 13:50:00.838443'),
(59, 'rekomtek', '0001_initial', '2025-08-04 03:55:38.319792'),
(60, 'berita', '0008_artikel_slug', '2025-08-05 00:50:29.081991'),
(61, 'galeri', '0007_album_foto_album', '2025-08-06 00:29:08.964258'),
(62, 'galeri', '0008_remove_foto_album_delete_album', '2025-08-06 01:50:02.047817'),
(63, 'galeri', '0009_fotokegiatanperencanaan_alter_video_options', '2025-08-06 02:17:27.086448'),
(64, 'galeri', '0010_kategorikegiatanfisik_kategorikegiatanperencanaan_and_more', '2025-08-06 05:49:21.292156'),
(65, 'galeri', '0011_alter_foto_options_and_more', '2025-08-06 05:55:06.649339'),
(66, 'galeri', '0012_alter_video_options', '2025-08-07 01:25:08.640198'),
(67, 'rekomtek', '0002_alter_layanan_options_and_more', '2025-08-07 01:25:08.646213'),
(68, 'galeri', '0013_videokegiatanperencanaan_alter_video_options', '2025-08-07 06:47:08.909798'),
(69, 'rekomtek', '0003_remove_rekomendasiteknis_deskripsi_and_more', '2025-08-12 03:31:14.027327'),
(70, 'rekomtek', '0004_rename_alamat_perusahaan_rekomendasiteknis_deskripsi_and_more', '2025-08-12 03:56:45.485264'),
(71, 'rekomtek', '0005_rename_jumlah_usulan_rekomendasiteknis_alamat_perusahaan_and_more', '2025-08-12 06:42:16.175343'),
(72, 'rekomtek', '0006_rekomendasiteknis_cara_pembuangan_air_and_more', '2025-08-12 07:01:16.294603'),
(73, 'rekomtek', '0007_remove_rekomendasiteknis_cara_pembuangan_air_and_more', '2025-08-12 07:12:04.055351'),
(74, 'rekomtek', '0008_intake', '2025-08-12 07:20:44.116242'),
(75, 'rekomtek', '0009_alter_intake_options_and_more', '2025-08-13 03:31:29.267734'),
(76, 'dashboard', '0001_initial', '2025-08-19 07:35:09.651984'),
(77, 'rekomtek', '0010_alter_intake_sumber_air', '2025-08-19 07:35:09.660447'),
(78, 'rekomtek', '0011_statusrekomendasiteknis_keterangan_and_more', '2025-08-19 13:33:58.003790'),
(79, 'rekomtek', '0012_alter_statusrekomendasiteknis_status', '2025-08-19 23:58:45.696969'),
(80, 'rekomtek', '0013_statusrekomendasiteknis_tanggal_kirim', '2025-08-20 14:13:12.615513'),
(81, 'media_informasi', '0001_initial', '2025-08-20 15:10:25.496736'),
(82, 'layanan_publik', '0001_initial', '2025-08-24 06:54:13.599224'),
(83, 'rekomtek', '0014_statusrekomendasiteknis_user', '2025-08-24 12:46:30.606027'),
(84, 'hasil_survey_kepuasan', '0001_initial', '2025-08-25 01:32:34.532330'),
(85, 'hasil_survey_kepuasan', '0002_hidrologi_alter_ikm_file', '2025-08-25 02:01:39.993721');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1vfd8sj8lo23vqssusrjby7nffbupz45', '.eJxVjDsOwjAQRO_iGlle_COU9DmDtfZucADZUpxUiLvjSCmgmGbem3mLgNuaw9Z4CTOJqwBx-u0ipieXHdADy73KVMu6zFHuijxok2Mlft0O9-8gY8t9rbVKhr2mHg-kwSjvErKdaGIwYAdAh2cPyG6wCUEl71HbqLtqLiQ-X9P_N10:1ugDdN:wp2WWoaKb8mCq_7QJiDZquYXhNq17RxHYrRJ5x9CMjM', '2025-08-11 02:30:37.493142'),
('2em4xnwmq5fhpyma5ze91nogh8gsq20z', '.eJxVjDsOwjAQRO_iGlle_COU9DmDtfZucADZUpxUiLvjSCmgmGbem3mLgNuaw9Z4CTOJqwBx-u0ipieXHdADy73KVMu6zFHuijxok2Mlft0O9-8gY8t9rbVKhr2mHg-kwSjvErKdaGIwYAdAh2cPyG6wCUEl71HbqLtqLiQ-X9P_N10:1ueSrM:lUG7R0gL1SjuJ-1VHY7_gGi8fuDVHmnjy0KAmoThCGY', '2025-08-06 06:21:48.812690'),
('7wdlve537rhc0h9fzgu7rnwp4tfhmvw3', '.eJxVjDsOwyAQBe9CHSFYzC9lep8BLbAEJxGWjF1FuXtsyUXSvpl5bxZwW2vYOi1hyuzKJLv8bhHTk9oB8gPbfeZpbusyRX4o_KSdj3Om1-10_w4q9rrXPrpBYETlrC2ypGi00EVlIj8UIYAU5N1xkBxZZQANSYiyaAHakyL2-QLp9jfW:1ubTAB:YsmYDT8QDm2wm56lDZivHrZqtif_igVyAL8-NIZ2wPY', '2025-07-29 00:04:51.618039'),
('clzk8rln1apq2w4ll46pjl94ol3hogrx', '.eJxVjDtuwzAQRO_COiuIlPmxy_Q5A7EUVxZFiQr4iQrDd48MuEiqGcybmQez2OpsW6Fsg2c3Jgz7-Bs6HCOlF_ELpvvejXuqObjuVenetHRfu6f18939dzBjmc-11qNy0lwVDTT1WnqpjJE4KSVQcTcZhXQRl4FzLkgIr3skLScajPTuyvV5-hPoIG8x1xBptaIXEgxIODCGFTZKlXKAb4qUF8QEbWsb-IAJIbbSNiy11XD6tLR0D0CbOxWWeLBbzY2evwLNW9A:1uqKQV:hUfYnftR4P2fhyIUN8r3VRp2Ixk9JeBlBG-z-M_Gtpg', '2025-09-07 23:47:07.390427'),
('f46oyv7zizn5ofrhgmbmkwn8ht5bpl8m', '.eJxVjMsOwiAQRf-FtSEDwlBcuu83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiQuQltx-h2Z4iO3naQ7tdss49zWZWK5K_KgXY5zys_r4f4dVOr1WxdUcGZCpwfl0SfjgEpJ2aiIFvJA3gF7xkiArJUFzTmx4qigmGhRvD8BPjgh:1ubJ25:t84OIuPv1LKs7IVtEm7IXQ5EK9TN_PV9fWu29NkZkjs', '2025-07-28 13:15:49.205807'),
('g7gn2mzs9xs2kaa2hq0r34411p26en4u', '.eJxVjDsOwjAQRO_iGlle_COU9DmDtfZucADZUpxUiLvjSCmgmGbem3mLgNuaw9Z4CTOJqwBx-u0ipieXHdADy73KVMu6zFHuijxok2Mlft0O9-8gY8t9rbVKhr2mHg-kwSjvErKdaGIwYAdAh2cPyG6wCUEl71HbqLtqLiQ-X9P_N10:1uoK56:zX3w6EBZR4OvbZwzNz9qCbWLGS4SQFskU7O-qw4pMxo', '2025-09-02 11:00:44.322689'),
('gstee5hjbo8wenj8rg7yq5dxtsj0skt4', '.eJxVjDsOwjAQRO_iGlle_COU9DmDtfZucADZUpxUiLvjSCmgmGbem3mLgNuaw9Z4CTOJqwBx-u0ipieXHdADy73KVMu6zFHuijxok2Mlft0O9-8gY8t9rbVKhr2mHg-kwSjvErKdaGIwYAdAh2cPyG6wCUEl71HbqLtqLiQ-X9P_N10:1ucp8Z:bYUrM9uHHiNdaQ7Io3cPzrEVuQR1Dy7hJV0tp9bw8Mc', '2025-08-01 17:44:47.827837'),
('hvcg7zravtwv2to4511o6lejz1p7mozv', '.eJxVjDsOwyAQBe9CHSFYzC9lep8BLbAEJxGWjF1FuXtsyUXSvpl5bxZwW2vYOi1hyuzKJLv8bhHTk9oB8gPbfeZpbusyRX4o_KSdj3Om1-10_w4q9rrXPrpBYETlrC2ypGi00EVlIj8UIYAU5N1xkBxZZQANSYiyaAHakyL2-QLp9jfW:1ubgQ2:FRkxmJwV_ULTzdZGWYz4ArF6GZpexjuEjmIkEBLXtDU', '2025-07-29 14:14:06.941340'),
('nwkop8x9e7872h5osf6xqgbnfmo4mepx', '.eJxVjDsOwjAQRO_iGlle_COU9DmDtfZucADZUpxUiLvjSCmgmGbem3mLgNuaw9Z4CTOJqwBx-u0ipieXHdADy73KVMu6zFHuijxok2Mlft0O9-8gY8t9rbVKhr2mHg-kwSjvErKdaGIwYAdAh2cPyG6wCUEl71HbqLtqLiQ-X9P_N10:1umRjt:CUW5-10NEnROnF83Eoew7KXa1GPvaCVZKb77TJVRrjY', '2025-08-28 06:47:05.953026'),
('o70yt31yq8v9b3w37dq2ffb069nx7wr0', '.eJxVjDsOwjAQRO_iGlle_COU9DmDtfZucADZUpxUiLvjSCmgmGbem3mLgNuaw9Z4CTOJqwBx-u0ipieXHdADy73KVMu6zFHuijxok2Mlft0O9-8gY8t9rbVKhr2mHg-kwSjvErKdaGIwYAdAh2cPyG6wCUEl71HbqLtqLiQ-X9P_N10:1unXL5:VDxtuaaqZro_AVcsZkKecL8UQVXNUJN6y_Xrs1iaG3U', '2025-08-31 06:57:59.315786'),
('pz7178b76blxvv9finfcspxo4mgqmu7u', '.eJyNUc1ugzAMfhfOMyLlr91x9z0DMolpTSCghICmae8-s3JYD1N3iBLZ34_95TNpMC63JgbyDZvkNVHJy-9ai9qS2xumR3edUj25xXOb7pD06Ib0fTI0vB3YB4Ebhpuw8zzTBdW5kVMrk6siqyuNVHamI1Wo8qKwwlOtkKpLqVFluq4xL9tcoMV5F12ZNjIN-oUtDc0pO5VwhhJMtNFd0QG7zmNYfLRL9BAMgsEBRwgbBhpblMKMP8jZTyu7wICaZDqh0N_6G1oeYCS3kGeYyZLvUUTiGEcwjA7BxhBHsY4Ly9v1Mg-DWMoNvd2eO4g6zPEfai06gx5hXXkGtu6ZtGx69RQCdBzY7ltonJHhnFUXaOW37tFJOh8QGOcjzTvvMTtkL4G6I8O78dc3aFzL1g:1uqKtp:QJnDlk6CU4hHHTxLZZAD4-KZxvlpKjpndcdwybi4FYY', '2025-09-08 00:17:25.483541'),
('si0digux22fu5fbrc3jjx94v4l901lk8', '.eJxVjDsOwjAQRO_iGlle_COU9DmDtfZucADZUpxUiLvjSCmgmGbem3mLgNuaw9Z4CTOJqwBx-u0ipieXHdADy73KVMu6zFHuijxok2Mlft0O9-8gY8t9rbVKhr2mHg-kwSjvErKdaGIwYAdAh2cPyG6wCUEl71HbqLtqLiQ-X9P_N10:1umRju:WgVD-ek93Kkw2pDiNTwPSY_FzaVYk9mHUBelUztg-Go', '2025-08-28 06:47:06.952722'),
('ttrqbmn9bdsqzj8j61mhkw6oinw7ymlg', '.eJxVjDsOwjAQRO_iGlle_COU9DmDtfZucADZUpxUiLvjSCmgmGbem3mLgNuaw9Z4CTOJqwBx-u0ipieXHdADy73KVMu6zFHuijxok2Mlft0O9-8gY8t9rbVKhr2mHg-kwSjvErKdaGIwYAdAh2cPyG6wCUEl71HbqLtqLiQ-X9P_N10:1ud7rk:kveFViP_zxbXsg7EOLuOu9Q4B0h-a40lYoqXyC0xfF8', '2025-08-02 13:44:40.448297'),
('ufmq6zioyfv77gjhws3qmvl5odo032bu', '.eJxVjDsOwjAQRO_iGlle_COU9DmDtfZucADZUpxUiLvjSCmgmGbem3mLgNuaw9Z4CTOJqwBx-u0ipieXHdADy73KVMu6zFHuijxok2Mlft0O9-8gY8t9rbVKhr2mHg-kwSjvErKdaGIwYAdAh2cPyG6wCUEl71HbqLtqLiQ-X9P_N10:1ud7rj:-VYJPCg2_MpYzY1U5zChnu57e8MtUpQCYp317vtqRhs', '2025-08-02 13:44:39.112037'),
('xjgxsqyi148c2fwhsenfkvfsww4ic1xu', '.eJxVjDsOwjAQRO_iGlle_COU9DmDtfZucADZUpxUiLvjSCmgmGbem3mLgNuaw9Z4CTOJqwBx-u0ipieXHdADy73KVMu6zFHuijxok2Mlft0O9-8gY8t9rbVKhr2mHg-kwSjvErKdaGIwYAdAh2cPyG6wCUEl71HbqLtqLiQ-X9P_N10:1up4l1:4OjbVgi2U0EorzvsdJ4iOdC1PZCBVmoCUrE6kCjQcQc', '2025-09-04 12:51:07.892061'),
('xz01btirlucco4d53s7pwqgp2qst5eiq', '.eJxVjDsOwyAQBe9CHSFYzC9lep8BLbAEJxGWjF1FuXtsyUXSvpl5bxZwW2vYOi1hyuzKJLv8bhHTk9oB8gPbfeZpbusyRX4o_KSdj3Om1-10_w4q9rrXPrpBYETlrC2ypGi00EVlIj8UIYAU5N1xkBxZZQANSYiyaAHakyL2-QLp9jfW:1ubgki:XJV207W_C6c2HtWkA88ZxvVPP00I3bbFO9jyJraN6To', '2025-07-29 14:35:28.504051'),
('zdc90kfbc5qr23ur36fo6mf9ka516m48', '.eJxVjEEOwiAQRe_C2pAylIG6dO8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3EW4MTpdwwUH1x3ku5Ub03GVtdlDnJX5EG7vLbEz8vh_h0U6uVbWxsxGDcha86DNcmgc4YyIhCqkB0SjzBqpRQwQLIDsTWZtTMpTMqK9wf5AjeR:1uoFSY:XkmfAG4kTgpoQMzZxp8HbRjlgqCV7iVFOyrkc9HfBzo', '2025-09-02 06:04:38.720732');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_foto`
--

CREATE TABLE `galeri_foto` (
  `id` bigint(20) NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `uraian_singkat` varchar(255) DEFAULT NULL,
  `Foto_dokumentasi` varchar(100) DEFAULT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `tanggal_upload` date NOT NULL,
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0),
  `kategori_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `galeri_foto`
--

INSERT INTO `galeri_foto` (`id`, `nama_kegiatan`, `uraian_singkat`, `Foto_dokumentasi`, `tanggal_kegiatan`, `tanggal_upload`, `views`, `kategori_id`) VALUES
(1, 'proyek irigasi biduk-biduk', 'melakukan proses obervasi lahan yang akan dibangun jaringan irigasi', 'foto/Danau_Embung.jpeg', '2024-03-06', '2025-07-29', 0, 2),
(2, 'irigasi', 'tes tes tes tes tes tes tes tes', 'foto/Rt._Pangan_Sek_4_100_STA_00200.jpeg', '2025-07-29', '2025-07-29', 0, 2),
(4, 'Pembangunan Tanggul', 'Struktur tanggul pengaman sebagai upaya mitigasi risiko abrasi di kawasan pesisir.', 'foto/IMG-20250130-WA0097.jpg', '2025-01-30', '2025-08-06', 0, 1),
(5, 'Pekerjaan Pantai', 'Tanjung jumlai', 'foto/WhatsApp_Image_2025-01-31_at_10.02.30_1.jpeg', '2025-02-02', '2025-08-07', 0, 1),
(6, 'Pekerjaan Pantai Talisayan', '-', 'foto/WhatsApp_Image_2024-11-30_at_13.23.36.jpeg', '2024-12-02', '2025-08-07', 0, 1),
(7, 'Kegiatan Salur irigasi tanjung perengat', '-', 'foto/100_Sekunder_6_Tj._Perengat__STA_00100.jpeg', '2025-02-04', '2025-08-07', 0, 2),
(8, 'Pekerjaan pantai Kaniungan', '-', 'foto/IMG-20250106-WA0044.jpg', '2025-01-30', '2025-08-07', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `galeri_fotokegiatanperencanaan`
--

CREATE TABLE `galeri_fotokegiatanperencanaan` (
  `id` bigint(20) NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `uraian_singkat` varchar(255) DEFAULT NULL,
  `Foto_dokumentasi` varchar(100) DEFAULT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `tanggal_upload` date NOT NULL,
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0),
  `kategori_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `galeri_fotokegiatanperencanaan`
--

INSERT INTO `galeri_fotokegiatanperencanaan` (`id`, `nama_kegiatan`, `uraian_singkat`, `Foto_dokumentasi`, `tanggal_kegiatan`, `tanggal_upload`, `views`, `kategori_id`) VALUES
(1, 'Sidang TKPSDA', 'Momen diskusi aktif dalam Sidang TKPSDA yang digelar untuk menyelaraskan kebijakan SDA', 'foto/WhatsApp_Image_2025-01-15_at_08_3hp02rE.21.57.jpeg', '2025-01-15', '2025-08-06', 0, 1),
(2, 'Sidang Komisi Irigasi', 'Komisi Irigasi dibentuk untuk mendukung pengelolaan sistem irigasi berbasis peran serta masyarakat, guna mewujudkan irigasi yang efisien, efektif, dan berkelanjutan.', 'foto/WhatsApp_Image_2025-01-14_at_15.35.45.jpeg', '2025-01-28', '2025-08-06', 0, 1),
(3, 'Sidang Dewan SDA', 'Rapat koordinasi Dewan SDA dalam rangka perumusan kebijakan pengelolaan sumber daya air', 'foto/WhatsApp_Image_2025-01-21_at_09.05.21_2.jpeg', '2025-01-28', '2025-08-06', 0, 1),
(4, 'Pengambilan sampel air permukaan untuk analisis kualitas air', '-', 'foto/IMG_3723.JPG', '2025-01-28', '2025-08-07', 0, 4),
(5, 'Presentasi Peta Hidrologi untuk Perencanaan SDA', 'Pemaparan sebaran titik pos hidrologi untuk mendukung perencanaan SDA', 'foto/WhatsApp_Image_2022-12-12_at_10.48.38.jpeg', '2022-12-12', '2025-08-07', 0, 4),
(6, 'Tinjauan Lokasi Rekomtek', 'Survei lapangan dilakukan untuk mengumpulkan data teknis kawasan rencana proyek. Data ini digunakan sebagai bahan kajian Rekomtek oleh Bidang SDA.', 'foto/IMG_0022.jpg', '2025-04-11', '2025-08-07', 0, 3),
(7, 'Survei Lokasi untuk Proses Rekomtek SDA', 'Tim melakukan peninjauan lapangan untuk verifikasi usulan kegiatan sumber daya air.', 'foto/IMG_3908.jpg', '2025-01-28', '2025-08-07', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `galeri_kategorikegiatanfisik`
--

CREATE TABLE `galeri_kategorikegiatanfisik` (
  `id` bigint(20) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `galeri_kategorikegiatanfisik`
--

INSERT INTO `galeri_kategorikegiatanfisik` (`id`, `nama_kategori`) VALUES
(1, 'Pantai'),
(2, 'Irigasi');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_kategorikegiatanperencanaan`
--

CREATE TABLE `galeri_kategorikegiatanperencanaan` (
  `id` bigint(20) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `galeri_kategorikegiatanperencanaan`
--

INSERT INTO `galeri_kategorikegiatanperencanaan` (`id`, `nama_kategori`) VALUES
(1, 'Irigasi'),
(3, 'Rekomtek'),
(4, 'Hidrologi');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_video`
--

CREATE TABLE `galeri_video` (
  `id` bigint(20) NOT NULL,
  `judul_video` varchar(255) DEFAULT NULL,
  `uraian_singkat` varchar(255) DEFAULT NULL,
  `file_video` varchar(100) NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `tanggal_upload` date NOT NULL,
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `galeri_video`
--

INSERT INTO `galeri_video` (`id`, `judul_video`, `uraian_singkat`, `file_video`, `tanggal_kegiatan`, `tanggal_upload`, `views`) VALUES
(1, 'Progres Pembangunan Tanggul Pengaman Pantai', 'Pembangunan tanggul untuk melindungi pantai dari abrasi dan menjaga garis pantai tetap stabil', 'video/WhatsApp_Video_2025-01-14_at_11.43.34.mp4', '2023-09-20', '2025-07-29', 0),
(2, 'Pekerjaan banjir', 'Dokumentasi kegiatan normalisasi saluran air untuk mengatasi banjir di wilayah Karang Asam.', 'video/VID-20250130-WA0056.mp4', '2025-02-02', '2025-07-30', 0),
(3, 'Pekerjaan Irigasi Tanjung Perengat', 'Kegiatan lapangan irigasi Tanjung Perengat sebagai bentuk pelayanan infrastruktur air bagi petani', 'video/Tj._Perengat_Primer_Pelaksanaan_1.mp4', '2025-02-04', '2025-08-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `galeri_videokegiatanperencanaan`
--

CREATE TABLE `galeri_videokegiatanperencanaan` (
  `id` bigint(20) NOT NULL,
  `judul_video` varchar(255) DEFAULT NULL,
  `uraian_singkat` varchar(255) DEFAULT NULL,
  `file_video` varchar(100) NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `tanggal_upload` date NOT NULL,
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `galeri_videokegiatanperencanaan`
--

INSERT INTO `galeri_videokegiatanperencanaan` (`id`, `judul_video`, `uraian_singkat`, `file_video`, `tanggal_kegiatan`, `tanggal_upload`, `views`) VALUES
(1, 'Kegiatan Rekomtek', 'Tim melakukan peninjauan lapangan untuk verifikasi usulan kegiatan sumber daya air', 'video/IMG_3924.MOV', '2025-01-28', '2025-08-07', 0),
(2, 'Kegiatan TKPSDA', 'Momen diskusi aktif dalam Sidang TKPSDA yang digelar untuk menyelaraskan kebijakan SDA', 'video/Snapsave.app_-Mf1uq90gLEMoz_7Y.mp4', '2025-01-15', '2025-08-07', 0),
(3, 'Sosialisasi Pemberdayaan Masyarakat', 'Meningkatkan peran masyarakat dalam menjaga sumber daya air di Pantai Manggar Kota Balikpapan', 'video/IMG_1832.MOV', '2025-01-15', '2025-08-11', 0),
(4, 'Kunjungan Lapangan Embung', 'Pemantauan langsung embung guna memastikan keberlanjutan fungsi pengairan dan konservasi air', 'video/copy_7F0A5DCD-5F87-448F-953E-4711757C9BF9.MOV', '2025-04-30', '2025-08-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_survey_kepuasan_hidrologi`
--

CREATE TABLE `hasil_survey_kepuasan_hidrologi` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `tanggal_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `hasil_survey_kepuasan_hidrologi`
--

INSERT INTO `hasil_survey_kepuasan_hidrologi` (`id`, `judul`, `file`, `tanggal_upload`) VALUES
(1, 'Hidrologi 1', 'Hidrologi/Majalah_Banyu_Cetak_01.pdf', '2025-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_survey_kepuasan_ikm`
--

CREATE TABLE `hasil_survey_kepuasan_ikm` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `tanggal_upload` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `hasil_survey_kepuasan_ikm`
--

INSERT INTO `hasil_survey_kepuasan_ikm` (`id`, `judul`, `file`, `tanggal_upload`) VALUES
(1, 'IKM 1', 'Indeks_Kepuasan_masyarakat/Majalah_Banyu_Cetak_01.pdf', '2025-08-25 01:38:37.907105');

-- --------------------------------------------------------

--
-- Table structure for table `infrastruktur_sda`
--

CREATE TABLE `infrastruktur_sda` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `uraian` longtext DEFAULT NULL,
  `data_teknis` longtext DEFAULT NULL,
  `slug` varchar(225) DEFAULT NULL,
  `tgl_buat` datetime(6) DEFAULT NULL,
  `tgl_update` datetime(6) DEFAULT NULL,
  `kategori_id` bigint(20) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `infrastruktur_sda`
--

INSERT INTO `infrastruktur_sda` (`id`, `nama`, `gambar`, `uraian`, `data_teknis`, `slug`, `tgl_buat`, `tgl_update`, `kategori_id`, `views`) VALUES
(2, 'saluran irigasi', '', '<p>testestestest hahahahahah hihihihihihi huhuhuuhuhu</p>', '<p>veevv bedkefnk mena cekfa kskdekfi nekfnnkncl kefn lefeofj lafmmlef ;efjj efkpfkfefkmffefefmmf</p>', '2025-7-23-saluran-irigasi', '2025-07-23 00:00:00.000000', '2025-07-23 00:00:00.000000', 2, 1),
(3, 'Bendung Daerah Irigasi Biatan', '', '<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Sumber air utama untuk mengairi areal </span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">daerah</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"> irigasi Biatan diambil dari Mata Air Sungai Tumbit yang terletak di Desa Sumber Mulya, pengambilan air dilakukan dengan membuat bendung untuk meninggikan muka air. Mata air Sungai Tumbit yang keluar dari bawah tanah mengeluarkan debit berkisar antara 3.6 m<sup>3</sup>/det &ndash; 4.8 m<sup>3</sup>/det.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bendung direncanakan dibangun pada palung sungai yang terletak dihilir sumber mata air pada jarak &plusmn; 140 m. Daerah Irigasi Biatan terletak di dua wilayah desa dan dua wilayah kecamatan, yaitu Desa Sumber Mulya di Kecamatan Talisayan dan Desa Biatan Ilir di Kecamatan Biatan Kabupaten Berau.</span></span></span></span></p>', '<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-size:9pt\"><span style=\"font-family:&quot;Lucida Sans Typewriter&quot;\"><span style=\"color:#6633ff\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">&raquo; Tipe Bangunan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= Bendung Tetap</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-size:9pt\"><span style=\"font-family:&quot;Lucida Sans Typewriter&quot;\"><span style=\"color:#6633ff\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">&raquo;</span></span></span>&nbsp; <span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Elevasi Dasar Sungai&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;= + 65.60</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-size:9pt\"><span style=\"font-family:&quot;Lucida Sans Typewriter&quot;\"><span style=\"color:#6633ff\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">&raquo;&nbsp; Elevasi Mercu Bendung&nbsp;&nbsp;&nbsp;&nbsp;= + 67.80</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-size:9pt\"><span style=\"font-family:&quot;Lucida Sans Typewriter&quot;\"><span style=\"color:#6633ff\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">&raquo;&nbsp; Lebar Bendung&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= 29.00 m&nbsp;</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-size:9pt\"><span style=\"font-family:&quot;Lucida Sans Typewriter&quot;\"><span style=\"color:#6633ff\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">&raquo;&nbsp; Tinggi Bendung&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= 2.00 m</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-size:9pt\"><span style=\"font-family:&quot;Lucida Sans Typewriter&quot;\"><span style=\"color:#6633ff\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">&raquo;&nbsp; Bentuk Mercu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= Bulat</span></span></span></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:48px\"><span style=\"font-size:9pt\"><span style=\"font-family:&quot;Lucida Sans Typewriter&quot;\"><span style=\"color:#6633ff\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">&raquo;</span></span></span>&nbsp; <span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Kolam Olak&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= USBR</span></span></span></strong></span></span></span></p>', '2025-7-28-bendung-daerah-irigasi-biatan', '2025-07-23 00:00:00.000000', '2025-07-23 00:00:00.000000', 4, 1),
(4, 'Bendungan Kaliorang', 'Pembangunan_sda/Bendungan_Kaliorang.jpg', '<p style=\"text-align:justify\">Daerah Irigasi Kaliorang merupakan bagian dari sentra daerah pertanian di Kabupaten Kutai Timur yang memiliki potensi besar untuk dikembangkan dimana sebagian besar penduduk bermatapencaharian petani dan nelayan. Kegiatan pengembangan dan optimalisasi daerah irigasi agar dapat meningkatkan proktivitas sector pertanian dalam rangka menunjang program ketahanan pangan. Oleh karena itu Bidang SDA Dinas PU Kalimantan Timur melakukan Pekerjaan Perencaan Review Design DI. Kaliorang Kab. Kutai Timur yang dilakukan pada tahun 2024 dan mendapatkan hasil survei terkait Luas Baku lahan pertanian di daerah tersebut sebesar 1.200 Ha dengan luas fungsional &plusmn;137 Ha. Kondisi lahannya sebagian besar merupakan lahan yang sudah tergarap dengan sistem tadah hujan maupun irigasi desa yang diusahakan sendiri oleh petani setempat (panen 1-2 kali dalam setahun).&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\nKonsep pengembangan Daerah Irigasi Kaliorang sesuai kondisi karakteristik daerah adalah dengan merencanakan sistem jaringan irigasi teknis dimana kebutuhan air irigasinya disuplai dari Bendungan Kaliorang di hulu Sungai Progo sebagai penyedia air utama kemudian dibantu pengambilan airnya oleh Bendung Regulator Kaliorang yang berada lebih di hilir dan berjarak lebih dekat dengan Daerah Irigasi Kaliorang. Jumlah petani yang berada di daerah irigasi kaliorang berkisar &plusmn;30 petani. Tujuan dari pengembangan jaringan irigasi ini adalah meningkatkan produktifitas petani/masyarakat di sektor pertanian dengan cara mengembangkan intensitas dan efisiensi penggunaan air untuk pertanian dan lain-lain sehingga dapat menunjang dan meningkatkan swasembada pangan di Kabupaten Kutai Timur. Hal tersebut didukung dengan pengesahan melalui RTRW Kabupaten Kutai Timur yang menjadikan daerah Kecamatan Kaliorang menjadi Kawasan Budidaya Non Kehutanan (KBNK).</p>', '<h2><strong>DATA TEKNIS</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Waduk</strong></td>\r\n			<td><strong>Tubuh Bendungan</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tinggi Muka Air</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Kontruksi : Urugan Tanah, Homogen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Normal (mdpal) : +50,00</p>\r\n			</td>\r\n			<td>Tinggi (m) : 16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Banjir (mdpal) : +54,15</td>\r\n			<td>Panjang (m) : 439,73</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Minimum (mdpal) : +40,00</td>\r\n			<td>Lebar Puncak (m) : 6</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Luas Genangan</strong></td>\r\n			<td><strong>Elevasi</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Normal (ha) :&nbsp;89,399</p>\r\n			</td>\r\n			<td>Puncak (mdpal)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;+55,00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Banjir (ha) :&nbsp;92,538</p>\r\n			</td>\r\n			<td>Dasar (mdpal)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;+39,00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Minimum (Ha)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;0,333</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Bangunan Pelimpah</strong></td>\r\n			<td><strong>Bangunan Pengelak</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipe Pelimpah&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;Pelimpah Langsung</td>\r\n			<td><strong>Cofferdam</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Konstruksi&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;Beton Bertulang</td>\r\n			<td>Konstruksi&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;Urugan Tanah Homogen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Minimum (Ha)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;0,333</td>\r\n			<td>Letak&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;Hulu</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Debit Pelimpah&nbsp;&nbsp; &nbsp;</strong></td>\r\n			<td>Tinggi (m)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;6,00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Q1000 &nbsp;(m3/dtk)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;606,093</td>\r\n			<td>Panjang (m)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;335,00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>QPMF (m3/dtk)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;878,017&nbsp;&nbsp; &nbsp;</td>\r\n			<td>Lebar Puncak (m)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;6,00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>-</td>\r\n			<td>Kemiringan Hulu:Hilir&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;1 : 3</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Volume Genangan&nbsp;&nbsp; &nbsp;</strong></td>\r\n			<td><strong>Kemiringan Lereng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Normal (juta m3)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;3,336</td>\r\n			<td>Hulu (1:n)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Efektif (juta m3)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;3,026&nbsp;&nbsp; &nbsp;</td>\r\n			<td>Hilir (1:n) &nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Banjir (juta m3) &nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;6,706&nbsp;&nbsp; &nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tampungan Mati (juta m3)&nbsp;&nbsp; &nbsp;:&nbsp;&nbsp; &nbsp;0,310&nbsp; &nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2025-7-24-bendungan-kaliorang', '2025-07-23 00:00:00.000000', '2025-07-23 00:00:00.000000', 4, 0);
INSERT INTO `infrastruktur_sda` (`id`, `nama`, `gambar`, `uraian`, `data_teknis`, `slug`, `tgl_buat`, `tgl_update`, `kategori_id`, `views`) VALUES
(5, 'Jaringan Irigasi Biatan', 'Pembangunan_sda/bendung_biatan.jpg', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Hamparan rencana Daerah Irigasi Biatan terletak di sebelah kanan (timur) Sungai Tumbit (Mata Air Tumbit) yang direncanakan sebagai sumber pengambilan air untuk mengairi areal rencana daerah irigasi memanjang dari selatan ke utara searah sungai tersebut. Pada mata air tersebut dibangun sebuah bendung (Bendung Biatan) yang menaikkan elevasi muka air. <span style=\"color:black\">Daerah Irigasi Biatan memiliki area yang berpotensi sebagai lahan persawahan produktif seluas &plusmn; 1.779 Ha, namun saat ini dari luas area tersebut yang telah tergarap sebagai lahan pertanian masih seluas 620 Ha yaitu sebagai area fungsional yang sudah ada sarana jaringan irigasinya</span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Dengan kemiringan permukaan tanahnya yang berkisar antara 0-15%, maka lokasi ini memungkinkan untuk dijadikan daerah beririgasi dengan sistem pengaliran secara gravitasi. Pengembangan daerah irigasi ini bertujuan untuk mendukung peningkatan kesejahteraan petani dan menciptakan peluang kesempatan kerja yang terkait dengan mengevaluasi jaringan alam dan buatan yang sudah ada dan merencanakan sistem jaringan irigasi bagi rencana pengembangan daerah irigasi.Untuk itu diperlukan usaha untuk mengubah fungsi dan sekaligus meningkatkan lahan yang ada agar lebih produktif menjadi lahan berpengairan teknis, sehingga dapat dipergunakan untuk lahan usaha tani seperti layaknya daerah irigasi.</span></span></span></span></p>', '<h1><strong>Data Teknis</strong></h1>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; width:604px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:1px solid #a6a6a6; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Saluran Induk Tumbit</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:1px solid #a6a6a6; width:21px\">\r\n			<p style=\"margin-right:-17px; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:105px\">\r\n			<p style=\"margin-right:-17px; text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:1px solid #a6a6a6; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Saluran Pembuang</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:1px solid #a6a6a6; width:27px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">12.960 </span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">3.780</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Lebar Dasar (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2,50 - 0,35 </span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Lebar Dasar (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">6,00</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Debit Aliran (m<sup>3</sup>/dtk)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">3,238 - 0,257 </span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Debit Aliran (m<sup>3</sup>/dtk)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">7,600</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Luas Layanan (Ha)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1.322,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Saluran Lainnya</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Saluran Sekunder Lele</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pjg Saluran Muka (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">7.745</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">11.069</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pjg Saluran Pengelak Banjir (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Lebar Dasar (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">0,85 - 0,35</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pjg Saluran Suplesi (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1.640</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Debit Aliran (m<sup>3</sup>/dtk)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">0,524 - 0,079 </span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pjg Saluran Gendong (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Luas Layanan (Ha)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">320,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pjg Sal. Pipa Pompanisasi (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Saluran Sekunder Pesantren</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Bagi/Sadap</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1.796</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bagi (buah)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Lebar Dasar (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">0,50 - 0,40</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bagi Sadap (buah)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">13</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Debit Aliran (m<sup>3</sup>/dtk)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">0,224 - 0,090</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Sadap (buah)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">8</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Luas Layanan (Ha)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">137,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Muka (buah)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">10</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Tersier (buah)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:1px solid #a6a6a6; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang Tanggul (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:1px solid #a6a6a6; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Pelengkap (buah)</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:32px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Kantong Lumpur</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang Jalan Inspeksi (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">7.610</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Ukur</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">36</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang Jalan Usaha Tani (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Suplesi</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Jembatan</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">: </span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">6</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">P3A</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Gorong-Gorong (Silang)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">34</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Jumlah</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Talang</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">4</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Jumlah Anggota</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Terjunan</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">11</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Status</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Got Miring</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Siphon</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pelimpah Samping / Corong</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Muka Outlet</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Pertemuan</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pintu Pembuang</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pintu Klep</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Terowongan</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Krib</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:151px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:163px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Tempat/Tangga Cuci</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:27px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2025-7-24-irigasi-samarinda', '2025-07-24 00:00:00.000000', '2025-07-24 00:00:00.000000', 2, 2);
INSERT INTO `infrastruktur_sda` (`id`, `nama`, `gambar`, `uraian`, `data_teknis`, `slug`, `tgl_buat`, `tgl_update`, `kategori_id`, `views`) VALUES
(6, 'Jaringan Irigasi Kaliorang', 'Pembangunan_sda/irigasi_kaliorang.jpg', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Daerah Irigasi Kaliorang merupakan bagian dari sentra daerah pertanian di Kabupaten Kutai Timur yang memiliki potensi besar untuk dikembangkan dimana sebagian besar penduduk bermatapencaharian petani dan nelayan.</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"> Kegiatan pengembangan dan optimalisasi daerah irigasi agar dapat meningkatkan proktivitas sector pertanian dalam rangka menunjang program ketahanan pangan. Oleh karena itu</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"> Bidang SDA Dinas PU Kalimantan Timur </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">melakukan Pekerjaan Perencaan Review Design DI. Kaliorang Kab. Kutai Timur </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">yang dilakukan pada tahun 20</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">24 dan mendapatkan hasil survei terkait </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Luas </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Baku </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">lahan pertanian di daerah tersebut </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">sebesar </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">1.200 Ha dengan luas fungsional</span></span> <span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">&plusmn;</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">137</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"> Ha. Kondisi lahannya sebagian besar merupakan lahan yang sudah tergarap dengan sistem tadah hujan maupun irigasi desa yang diusahakan sendiri oleh petani setempat (panen 1-2 kali dalam setahun). </span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Konsep pengembangan Daerah Irigasi Kaliorang sesuai kondisi karakteristik daerah adalah dengan merencanakan sistem jaringan irigasi teknis dimana kebutuhan air irigasinya disuplai dari Bendungan Kaliorang di hulu Sungai Progo sebagai penyedia air utama kemudian dibantu pengambilan airnya oleh Bendung Regulator Kaliorang yang berada lebih di hilir dan berjarak lebih dekat dengan Daerah Irigasi Kaliorang.</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"> Jumlah petani yang berada di daerah irigasi kaliorang berkisar </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">&plusmn;</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">30 petani.</span></span> <span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Tujuan dari pengembangan jaringan irigasi ini adalah meningkatkan produktifitas petani/masyarakat di sektor pertanian dengan cara mengembangkan intensitas dan efisiensi penggunaan air untuk pertanian dan lain-lain sehingga dapat menunjang dan meningkatkan swasembada pangan di Kabupaten Kutai Timur. Hal tersebut didukung dengan pengesahan melalui RTRW Kabupaten Kutai Timur yang menjadikan daerah Kecamatan Kaliorang menjadi Kawasan Budidaya Non Kehutanan (KBNK).</span></span></span></span></p>', '<h1><strong>Data Teknis</strong></h1>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; width:567px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:283px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Saluran Primer Kaliorang</span></span></strong></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:1px solid #a6a6a6; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Saluran Lainnya</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:1px solid #a6a6a6; width:20px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">3.611</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pjg Saluran Muka (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Lebar Dasar (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1,60 &ndash; 1,10</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pjg Saluran Pengelak Banjir (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Debit Aliran (m<sup>3</sup>/dtk)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2,135 &ndash; 1,660</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pjg Saluran Suplesi (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Luas Layanan (Ha)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">297,00</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pjg Saluran Gendong (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pjg Sal. Pipa Pompanisasi (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:283px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Saluran Sekunder Kaliorang Kanan</span></span></strong></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:1px solid #a6a6a6; width:169px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">4.937</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Bagi/Sadap</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Lebar Dasar (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1,10 &ndash; 0,60 </span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bagi (buah)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Debit Aliran (m<sup>3</sup>/dtk)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1,100 &ndash; 0,287 </span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bagi Sadap (buah)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Luas Layanan (Ha)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">667,00 </span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Sadap (buah)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">12</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Muka (buah)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:283px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Saluran Sekunder Kaliorang Kiri</span></span></strong></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:1px solid #a6a6a6; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Tersier (buah)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1.321</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Lebar Dasar (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">0,70</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang Tanggul (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Debit Aliran (m<sup>3</sup>/dtk)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">0,531 - 0,497 </span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Luas Layanan (Ha)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">256,00</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang Jalan Inspeksi (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">6.630</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang Jalan Usaha Tani (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Saluran Pembuang</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Panjang (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">9.269</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:32px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">P3A</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Lebar Dasar (m)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Jumlah</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">19</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; height:5px; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Debit Aliran (m<sup>3</sup>/dtk)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; height:5px; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; height:5px; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; height:5px; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; height:5px; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Jumlah Anggota</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; height:5px; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; height:5px; width:62px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">509</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Status</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Aktif</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:1px solid #a6a6a6; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Pelengkap (buah)</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:1px solid #a6a6a6; width:21px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Kantong Lumpur</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pelimpah Samping / Corong</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Ukur</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">22</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Outlet</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Suplesi</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Bangunan Pertemuan</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Jembatan</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">: </span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">6</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pintu Pembuang</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Gorong-Gorong (Silang)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">9</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pintu Klep</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Talang</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Terowongan</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Terjunan</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Krib</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Got Miring</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:1px solid #a6a6a6; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Tempat/Tangga Cuci</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:none; border-top:none; width:157px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Siphon</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:none; border-top:none; width:21px\">\r\n			<p style=\"margin-right:-17px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">:</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:105px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; vertical-align:top; width:32px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:169px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:20px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:none; border-top:none; width:62px\">\r\n			<p style=\"margin-right:-17px\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2025-7-28-jaringan-irigasi-kaliorang', '2025-07-28 00:00:00.000000', '2025-07-28 00:00:00.000000', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `infrastruktur_sda_post`
--

CREATE TABLE `infrastruktur_sda_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_infrastruktur_sda`
--

CREATE TABLE `kategori_infrastruktur_sda` (
  `id` bigint(20) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_buat` datetime(6) DEFAULT NULL,
  `tgl_update` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `kategori_infrastruktur_sda`
--

INSERT INTO `kategori_infrastruktur_sda` (`id`, `nama_kategori`, `tgl_buat`, `tgl_update`) VALUES
(1, 'Pantai', NULL, NULL),
(2, 'irigasi', NULL, NULL),
(3, 'hidrologi', '2025-07-23 01:13:35.000000', '2025-07-23 01:13:36.000000'),
(4, 'Bendungan', '2025-07-23 01:13:49.000000', '2025-07-23 01:13:52.000000');

-- --------------------------------------------------------

--
-- Table structure for table `kelembagaan_tkpsda`
--

CREATE TABLE `kelembagaan_tkpsda` (
  `id` bigint(20) NOT NULL,
  `isi` longtext DEFAULT NULL,
  `tugas` longtext DEFAULT NULL,
  `fungsi` longtext DEFAULT NULL,
  `keanggotaan` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `kelembagaan_tkpsda`
--

INSERT INTO `kelembagaan_tkpsda` (`id`, `isi`, `tugas`, `fungsi`, `keanggotaan`) VALUES
(1, '<p style=\"text-align:justify\"><strong>Tim Koordinasi Pengelolaan Sumber Daya Air (TKPSDA) WS Mahakam</strong>&nbsp;telah terbentuk melalui Keputusan Menteri Pekerjaan Umum dan Perumahan Rakyat Nomor 1088/KPTS/M/2018 tentang Pembentukan Tim Koordinasi Sumber Daya Air Wilayah Sungai Mahakam yang telah diubah dengan Keputusan Menteri Pekerjaan Umum dan Perumahan Rakyat Nomor 424/KPTS/M/2021 tentang Pembentukan Tim Koordinasi Sumber Daya Air Wilayah Sungai Mahakam, sebagai wadah koordinasi dengan pihak terkait yang diperlukan guna keterpaduan dalam pengelolaan sumber daya air khususnya pada Wilayah Sungai Mahakam, serta tercapainya kesepahaman antar sektor, antar wilayah, dan antar pemilik kepentingan.</p>', '<p style=\"text-align:justify\"><strong>TUGAS TKPSDA WS MAHAKAM</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Pembahasan&nbsp;<strong>pola dan&nbsp;rencana</strong>&nbsp;pengelolaan sumber&nbsp;daya air pada WS Mahakam;</li>\r\n	<li style=\"text-align:justify\">Pembahasan&nbsp;<strong>program dan&nbsp;kegiatan</strong>&nbsp;pengelolaan&nbsp;sumber daya air pada WS&nbsp;Mahakam;</li>\r\n	<li style=\"text-align:justify\">Pembahasan&nbsp;<strong>Rencana&nbsp;Alokasi Air Tahunan (RAAT)</strong>&nbsp;pada WS Mahakam;</li>\r\n	<li style=\"text-align:justify\">Pembahasan&nbsp;<strong>Pengelolaan Sistem Informasi&nbsp;Hidrologi, Hidrometeorologi, dan&nbsp;Hidrogeologi (SIH3)</strong>&nbsp;pada WS Mahakam;</li>\r\n	<li style=\"text-align:justify\">Pembahasan&nbsp;<strong>Pendayagunaan Kelembagaan</strong>&nbsp;Pengelolaan Sumber Daya Air pada WS&nbsp;Mahakam;</li>\r\n	<li style=\"text-align:justify\"><strong>Pemberian Pertimbangan</strong>&nbsp;kepada Menteri Pekerjaan Umum dan Perumahan Rakyat terkait permasalahan pengelolaan sumber daya air pada WS Mahakam.</li>\r\n</ul>', '<p style=\"text-align:justify\"><strong>FUNGSI KOORDINASI TKPSDA WS MAHAKAM</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong>Konsultasi dengan pihak terkait</strong>&nbsp;yang diperlukan&nbsp;guna keterpaduan dalam pengelolaan sumber daya&nbsp;air pada WS Mahakam, serta tercapainya&nbsp;kesepahaman antar sektor, antar wilayah, dan antar&nbsp;pemilik kepentingan;</li>\r\n	<li style=\"text-align:justify\"><strong>Pengintegrasian dan penyelarasan kepentingan</strong>&nbsp;antar sektor, antar wilayah, serta antar pemilik&nbsp;kepentingan dalam pengelolaan sumber daya air&nbsp;pada WS Mahakam;</li>\r\n	<li style=\"text-align:justify\"><strong>Kegiatan pemantauan dan evaluasi pelaksanaan&nbsp;program dan rencana</strong>&nbsp;kegiatan pengelolaan sumber daya air pada WS Mahakam.</li>\r\n</ul>', '<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\" rowspan=\"1\" style=\"text-align:center\">Unsur Pemerintah</td>\r\n			<td colspan=\"3\" rowspan=\"1\" style=\"text-align:center\">Unsur Nonpemerintah</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Pemerintah Pusat</td>\r\n			<td style=\"text-align:center; width:120px\">&nbsp;</td>\r\n			<td style=\"text-align:center\">Instansi</td>\r\n			<td style=\"text-align:center\">Masyarakat Adat</td>\r\n			<td style=\"text-align:center\">1</td>\r\n			<td style=\"text-align:center\">Kelembagaan</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Pemerintah Provinsi</td>\r\n			<td style=\"text-align:center; width:120px\">&nbsp;</td>\r\n			<td style=\"text-align:center\">instansi</td>\r\n			<td style=\"text-align:center\">Pengguna Air Untuk Pertanian</td>\r\n			<td style=\"text-align:center\">1</td>\r\n			<td style=\"text-align:center\">Kelembagaan</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Pemerintah KabupatenKota</td>\r\n			<td style=\"text-align:center; width:120px\">&nbsp;</td>\r\n			<td style=\"text-align:center\">instansi</td>\r\n			<td style=\"text-align:center\">Pengusaha Air MinumPengusaha Air Minum</td>\r\n			<td style=\"text-align:center\">3</td>\r\n			<td style=\"text-align:center\">Instansi</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center; width:120px\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">Lembaga Konservasi SDA</td>\r\n			<td style=\"text-align:center\">3</td>\r\n			<td style=\"text-align:center\">Lembaga</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center; width:120px\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">Pengguna SDA Untuk Transportasi</td>\r\n			<td style=\"text-align:center\">1</td>\r\n			<td style=\"text-align:center\">Lembaga</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center; width:120px\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">Pengguna SDA Untuk Pariwisata/Olahraga</td>\r\n			<td style=\"text-align:center\">2</td>\r\n			<td style=\"text-align:center\">Lembaga</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center; width:120px\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">Pengusaha Bidang Kehutanan</td>\r\n			<td style=\"text-align:center\">&nbsp;1&nbsp; &nbsp;</td>\r\n			<td style=\"text-align:center\">Lembaga</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center; width:120px\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">Pengendali Daya Rusak Air</td>\r\n			<td style=\"text-align:center\">3</td>\r\n			<td style=\"text-align:center\">Lembaga</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Total</td>\r\n			<td style=\"text-align:center; width:120px\">16</td>\r\n			<td style=\"text-align:center\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td style=\"text-align:center\">Total</td>\r\n			<td style=\"text-align:center\">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_publik_peraturan`
--

CREATE TABLE `layanan_publik_peraturan` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `tanggal_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `layanan_publik_peraturan`
--

INSERT INTO `layanan_publik_peraturan` (`id`, `judul`, `file`, `tanggal_upload`) VALUES
(1, 'peraturan', 'file_peraturan/Majalah_Banyu_Cetak_01.pdf', '2025-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_publik_sop`
--

CREATE TABLE `layanan_publik_sop` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `tanggal_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_informasi_majalahbanyu`
--

CREATE TABLE `media_informasi_majalahbanyu` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `file_majalah` varchar(100) NOT NULL,
  `tanggal_upload` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `media_informasi_majalahbanyu`
--

INSERT INTO `media_informasi_majalahbanyu` (`id`, `judul`, `file_majalah`, `tanggal_upload`) VALUES
(1, 'Majalah Banyu Edisi 1', 'majalah_banyu/Majalah_Banyu_Cetak_01.pdf', '2025-08-20 15:11:34.280188');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan_sda`
--

CREATE TABLE `pekerjaan_sda` (
  `id` bigint(20) NOT NULL,
  `nama_pekerjaan` longtext DEFAULT NULL,
  `tahun` longtext NOT NULL,
  `pagu_anggaran` text DEFAULT NULL,
  `sumber_dana` varchar(150) NOT NULL,
  `kontraktor` varchar(150) NOT NULL,
  `konsultan` varchar(150) NOT NULL,
  `tgl_buat` datetime(6) DEFAULT NULL,
  `tgl_update` datetime(6) DEFAULT NULL,
  `infrastruktur_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `pekerjaan_sda`
--

INSERT INTO `pekerjaan_sda` (`id`, `nama_pekerjaan`, `tahun`, `pagu_anggaran`, `sumber_dana`, `kontraktor`, `konsultan`, `tgl_buat`, `tgl_update`, `infrastruktur_id`) VALUES
(3, '<p>jembatan untuk penyebrangan</p>', '2022', '400000000', 'apbd', 'adit', 'deny', '2025-07-23 00:00:00.000000', '2025-07-23 00:00:00.000000', 2),
(4, '<p>rgrgsgg</p>', '2012', '134343444', 'apbd', 'adit', 'deny', '2025-07-23 06:30:00.000000', '2025-07-23 06:30:00.000000', 3);
INSERT INTO `pekerjaan_sda` (`id`, `nama_pekerjaan`, `tahun`, `pagu_anggaran`, `sumber_dana`, `kontraktor`, `konsultan`, `tgl_buat`, `tgl_update`, `infrastruktur_id`) VALUES
(7, '<h1><strong>Data Pekerjaan</strong></h1>\r\n\r\n<h2><strong>Pekerjaan Perencanaan</strong></h2>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:-2px; width:584px\">\r\n	<thead>\r\n		<tr>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:54px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Tahun</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:95px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Anggaran (Rp)</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Sumber Dana</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:236px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Nama Pekerjaan</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:142px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Konsultan </span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:54px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2007</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:95px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">500.000.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD I</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:236px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Survey, Investigasi, Desain (SID) Irigasi Biatan Kabupaten Berau</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:142px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Mitra Agung Manunggal</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:54px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2008</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:95px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD I</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:236px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Lanjutan Survey, Investigasi, Desain (SID) D.I. Biatan Kabupaten Berau</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:142px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">CV. Widya Aika</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:54px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2009</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:95px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">189.580.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD I</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:236px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">UKL &amp; UPL D.I. Biatan Kabupaten Berau</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:142px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">CV. Widya Aika</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:54px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2022</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:95px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">478.317.315,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:236px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Review Design DI Biatan Kab. Berau</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:142px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">. </span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Arcsindo Karya Utama</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:54px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2023</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:95px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">354.076.680,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:236px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Penyusunan dan Penetapan Rencana Tata Tanam Global D.I. Biatan Kab. Berau</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:142px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Inasa Sakha Kirana</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><strong>Pekerjaan Fisik</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:-2px; width:626px\">\r\n	<thead>\r\n		<tr>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Tahun</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Anggaran (Rp)</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Sumber Dana</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:66px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Progres Fisik</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:161px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Item Pekerjaan</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Kontraktor</span></span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"background-color:#f2f2f2; border-bottom:2px double #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:1px solid #a6a6a6; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Konsultan Supervisi</span></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2010</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">4.471.635.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">&nbsp;APBD I</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">78%</span></span></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">(Bendung)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bendung</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan jalan inspeksi/akses (2.700 m)</span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Adhi Karya (Persero), Tbk</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2011</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">24.218.632.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD I</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">100%</span></span></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">(Bendung)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Lanjutan pembangunan bendung</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembawa (induk tumbit [lining] 589 m, induk tumbit [belum lining] 1.859 m, &nbsp;dan sekunder lele [lining] 7.065 m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan bagi/sadap irigasi (8)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan pelengkap irigasi (4)</span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Adhi Karya (Persero), Tbk</span></span></span></span></p>\r\n\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Divisi Konstruksi V</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">CV. Patoya Indah</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; height:103px; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2012</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; height:103px; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1.693.999.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; height:103px; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD I</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; height:103px; width:66px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; height:103px; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembawa (sekunder lele [lining] 600 m dan sekunder lele [belum lining] 1.725 m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran gendong</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembuang (5.195 m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Normalisasi sungai di hilir bendung</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan pagar (relling) bendung</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan bagi sadap irigasi (5)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan pelengkap irigasi (14)</span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; height:103px; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Ikhsan Hakim</span></span></span></span></p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; height:103px; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">CV. Citra Kota Consult</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">4.318.983.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD-P I</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2013</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">8.848.153.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD I</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembawa (sekunder lele [lining] 1.500 m dan sekunder lele [belum lining] 2.000 m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembuang (3.850 m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan bagi/sadap irigasi (3)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan pelengkap irigasi (4)</span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Ikhsan Hakim</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Arcsindo Karya Utama</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2014</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">9.906.904.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD I</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembawa (induk tumbit [lining] 1.960 m dan lining sekunder lele [lining] 250 m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembuang (2.300 m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan bagi/sadap irigasi (3)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan pelengkap irigasi (1)</span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Swadaya Bhakti Guna</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Archeas</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2015</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">8.979.169.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD I</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembawa (induk tumbit [lining]1.250 m dan induk tumbit [belum lining] 935 m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan pelengkap irigasi (2)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan patok batas (400 titik)</span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Semoga Barokah</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">CV. Portal Consultant</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2016</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD I (DAK)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembawa (induk tumbit [lining] 2.026 m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan bagi/sadap irigasi (4)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan pelengkap irigasi (2)</span></span></span></span></li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Taruhamas</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">CV. Super Tehnik Pratama</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2017</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">5.004.247.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">APBD (DAK)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembawa (</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Primer &amp; Sekunder</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"> [lining] </span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">1</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">.</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">698</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"> m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan bagi/sadap irigasi (</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">3</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan pelengkap irigasi (</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">6</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">)</span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. </span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Cremona</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">CV. </span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Executive Consultant</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">2018</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">7.505.620.000,00</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">(DAK)</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan saluran pembawa (</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Sekunder</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"> [lining] </span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">3</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">.</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">300</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"> m)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan bagi/sadap irigasi (</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">8</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">)</span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">Pembangunan bangunan pelengkap irigasi (</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">5</span></span><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">)</span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">PT. Taman Sari Abadi</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\">CV. Arcsindo Karya Utama</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">2023</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">3.833.700.819,07</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">APBD </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Pekerjaan saluran pembawa dan Inspeksi = 30 M</span></span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Pekerjaan pembuatan gorong- gorong = 2 unit </span></span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Pekerjaan rehab dan pembersihan saluran pembawa (rehab saluran pembawa 462 m, untuk pembersihan saluran = 7.150 m, timbunan sirtu 1.675 m)</span></span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Pekerjaan saluran pembuang = 3.970 m</span></span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Pekerjaan salurang gendong = 375 m</span></span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">CV. Benua karya</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">CV. Patoya Indah </span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:1px solid #a6a6a6; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">2024</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:115px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">4.850.000.000,00</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:57px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">APBD</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:66px\">\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:161px\">\r\n			<ul>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Rehabilitasi Bendung (Bangunan Peninggi) (Penanganan pembuatan badan tanggul panjang tanggul kiri 206,407 meter dan panjang tanggul kanan 128.87 Meter)</span></span></span></span></span></li>\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">Rehabilitasi Saluran Pembawa (Penanganan Saluran 710 meter)</span></span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">CV. Arbie Karya Persada </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid #a6a6a6; border-left:none; border-right:1px solid #a6a6a6; border-top:none; width:85px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,sans-serif\"><span style=\"color:black\">CV. Patoya Indah</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2011', '969.43', 'APBD I', 'adit', 'deny', '2025-07-28 00:00:00.000000', '2025-07-28 00:00:00.000000', 5);
INSERT INTO `pekerjaan_sda` (`id`, `nama_pekerjaan`, `tahun`, `pagu_anggaran`, `sumber_dana`, `kontraktor`, `konsultan`, `tgl_buat`, `tgl_update`, `infrastruktur_id`) VALUES
(8, '<p>ppkooojokokok</p>', '2011', '6565878908', 'apbd', 'adit', 'eny', '2025-07-28 00:00:00.000000', '2025-07-28 00:00:00.000000', 5),
(10, 'SID D.I. Kaliorang', '2011', '1.000.000.000', 'apbd', 'PT. Wijaya Karya (Persero) Tbk.', 'deny', '2025-07-28 00:00:00.000000', '2025-07-28 00:00:00.000000', 6),
(11, 'SID D.I. Kaliorang', '2011', '1.000.000.000', 'apbd', 'PT. Wijaya Karya (Persero) Tbk.', 'deny', '2025-07-28 00:00:00.000000', '2025-07-28 00:00:00.000000', 6),
(12, 'SID D.I. Kaliorang', '2011', '1.000.000.000', 'apbd', 'PT. Wijaya Karya (Persero) Tbk.', 'deny', '2025-07-28 00:00:00.000000', '2025-07-28 00:00:00.000000', 6),
(13, 'testes', '2011', '1000.000.000', 'apbd', 'PT. Wijaya Karya (Persero) Tbk.', 'deny', '2025-07-28 00:00:00.000000', '2025-07-28 00:00:00.000000', 4),
(14, 'hshdhdhe', '2023', '10.000.000.000', 'apbd', 'PT. Wijaya Karya (Persero) Tbk.', 'deny', '2025-07-28 00:00:00.000000', '2025-07-28 00:00:00.000000', 4),
(15, 'Bendung Daerah Irigasi Biatan', '2012', '-', '-', '-', '-', '2025-07-28 00:00:00.000000', '2025-07-28 00:00:00.000000', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_biodata`
--

CREATE TABLE `pengguna_biodata` (
  `id` bigint(20) NOT NULL,
  `alamat` longtext DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `pengguna_biodata`
--

INSERT INTO `pengguna_biodata` (`id`, `alamat`, `telpon`, `foto`, `user_id`) VALUES
(1, 'jl. tengkawang', '02938328', 'gambar_pengguna/Logo_PU.jpg', 1),
(2, 'jl. m said', '08970791413', 'gambar_pengguna/pp_kosong.jpg', 26);

-- --------------------------------------------------------

--
-- Table structure for table `profil_lokasikantor`
--

CREATE TABLE `profil_lokasikantor` (
  `id` bigint(20) NOT NULL,
  `nama_kantor` varchar(255) NOT NULL,
  `alamat` longtext NOT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `koordinat_lat` decimal(9,6) DEFAULT NULL,
  `koordinat_long` decimal(9,6) DEFAULT NULL,
  `tgl_dibuat` datetime(6) NOT NULL,
  `tgl_diperbarui` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profil_sejarah`
--

CREATE TABLE `profil_sejarah` (
  `id` bigint(20) NOT NULL,
  `isi` longtext NOT NULL,
  `tgl_dibuat` datetime(6) NOT NULL,
  `tgl_diperbarui` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profil_strukturorganisasi`
--

CREATE TABLE `profil_strukturorganisasi` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `urutan` int(10) UNSIGNED NOT NULL CHECK (`urutan` >= 0),
  `tgl_dibuat` datetime(6) NOT NULL,
  `tgl_diperbarui` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `profil_strukturorganisasi`
--

INSERT INTO `profil_strukturorganisasi` (`id`, `nama`, `jabatan`, `foto`, `urutan`, `tgl_dibuat`, `tgl_diperbarui`) VALUES
(2, 'adittt', 'rektor', 'struktur/download_4_X52ZKG5.jpg', 1, '2025-07-19 04:49:04.564081', '2025-07-19 04:49:04.564081');

-- --------------------------------------------------------

--
-- Table structure for table `profil_tugasfungsi`
--

CREATE TABLE `profil_tugasfungsi` (
  `id` bigint(20) NOT NULL,
  `tgl_dibuat` datetime(6) NOT NULL,
  `tgl_diperbarui` datetime(6) NOT NULL,
  `fungsi` longtext DEFAULT NULL,
  `tugas` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `profil_tugasfungsi`
--

INSERT INTO `profil_tugasfungsi` (`id`, `tgl_dibuat`, `tgl_diperbarui`, `fungsi`, `tugas`) VALUES
(1, '2025-07-19 06:19:16.175221', '2025-07-19 07:28:05.609967', '<p style=\"text-align:justify\"><strong><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Bidang Sumber Daya Air memiliki fungsi dalam merumuskan kebijakan teknis, menyusun perencanaan, serta melaksanakan pembangunan dan pengelolaan infrastruktur sumber daya air seperti sungai, waduk, embung, dan jaringan irigasi. Selain itu, fungsi lainnya meliputi pengendalian banjir dan pengamanan pantai, konservasi dan pendayagunaan sumber daya air secara berkelanjutan, serta pengawasan terhadap pemanfaatan air dan daya rusaknya. Bidang ini juga bertanggung jawab dalam koordinasi lintas sektor dan wilayah, pengumpulan serta penyebaran data dan informasi hidrologi, hidrogeologi, dan kualitas air, sebagai dasar pengambilan keputusan yang tepat dan berkelanjutan. Semua pelaksanaan fungsi ini dilakukan sesuai dengan kebijakan nasional dan daerah, serta mengacu pada ketentuan peraturan perundang-undangan yang berlaku.</span></span></em></strong></p>', '<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Times New Roman,Times,serif\">Melaksanakan urusan pemerintahan di bidang pekerjaan umum dan penataan ruang, khususnya sub-urusan sumber daya air, yang meliputi perencanaan, pelaksanaan, pengawasan, pengendalian, serta evaluasi terhadap program dan kegiatan pengelolaan sumber daya air. Hal ini dilakukan sesuai dengan kebijakan yang ditetapkan oleh Pemerintah Provinsi Kalimantan Timur serta berdasarkan peraturan perundang-undangan yang berlaku, guna menjamin ketersediaan air baku, pengendalian daya rusak air, dan peningkatan kesejahteraan masyarakat melalui pengelolaan infrastruktur sumber daya air yang berkelanjutan dan berwawasan lingkungan.</span></strong></span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `profil_visimisi`
--

CREATE TABLE `profil_visimisi` (
  `id` bigint(20) NOT NULL,
  `visi` longtext DEFAULT NULL,
  `misi` longtext DEFAULT NULL,
  `tgl_dibuat` datetime(6) NOT NULL,
  `tgl_diperbarui` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `profil_visimisi`
--

INSERT INTO `profil_visimisi` (`id`, `visi`, `misi`, `tgl_dibuat`, `tgl_diperbarui`) VALUES
(1, '<p style=\"text-align:center\"><span style=\"font-size:18px\"><em><strong>Terwujudnya pengelolaan sumber daya air yang berkelanjutan, adil, dan berwawasan lingkungan untuk mendukung pembangunan daerah dan kesejahteraan masyarakat Kalimantan Timur</strong></em></span></p>', '<p style=\"text-align:center\"><em><strong><span style=\"font-size:20px\">Dinas Pekerjaan Umum Bidang Sumber Daya Air Kalimantan Timur bertugas mengembangkan dan memelihara infrastruktur sumber daya air secara terpadu dan berkelanjutan. Fokus utama meliputi peningkatan efektivitas pengendalian banjir, pengelolaan irigasi, serta konservasi air. Selain itu, dinas ini menjamin ketersediaan dan distribusi air yang merata guna memenuhi kebutuhan masyarakat. Partisipasi aktif masyarakat dan para pemangku kepentingan juga didorong dalam setiap proses pengelolaan sumber daya air. Untuk itu, layanan publik yang diberikan senantiasa mengedepankan profesionalisme, transparansi, dan akuntabilitas.</span></strong></em></p>', '2025-07-19 05:34:25.420114', '2025-07-21 02:18:29.116513');

-- --------------------------------------------------------

--
-- Table structure for table `rekomtek_intake`
--

CREATE TABLE `rekomtek_intake` (
  `id` bigint(20) NOT NULL,
  `sumber_air` varchar(50) DEFAULT NULL,
  `kelurahan_desa` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kabupaten_kota` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `titik_koordinat` varchar(100) DEFAULT NULL,
  `tujuan_pemanfaatan` longtext DEFAULT NULL,
  `cara_pengambilan_air` longtext DEFAULT NULL,
  `cara_pembuangan_air` longtext DEFAULT NULL,
  `volume_pengambilan` decimal(10,2) DEFAULT NULL,
  `lama_waktu_pengambilan` varchar(50) DEFAULT NULL,
  `jenis_pompa` varchar(100) DEFAULT NULL,
  `kapasitas_pompa` decimal(10,2) DEFAULT NULL,
  `upload_name_plate_pompa` varchar(100) DEFAULT NULL,
  `rekomtek_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `rekomtek_intake`
--

INSERT INTO `rekomtek_intake` (`id`, `sumber_air`, `kelurahan_desa`, `kecamatan`, `kabupaten_kota`, `provinsi`, `titik_koordinat`, `tujuan_pemanfaatan`, `cara_pengambilan_air`, `cara_pembuangan_air`, `volume_pengambilan`, `lama_waktu_pengambilan`, `jenis_pompa`, `kapasitas_pompa`, `upload_name_plate_pompa`, `rekomtek_id`) VALUES
(2, 'sungai', 'Ampen Medang', 'Batu putih', 'Berau', 'KALIMANTAN TIMUR', '-0.5007452786555087, 117.1132306840973', 'Kegiatan Domestik di kantor dan perumahan', 'Menggunakan pompa', 'digunakan untuk kegiatan domestik di kantor dan perumahan', 56.67, '6 jam/hari', '-', 0.07, 'uploads/sda2.jpeg', 17),
(3, 'danau', 'Ampen Medang', 'Batu putih', 'Berau', 'KALIMANTAN TIMUR', '-0.5007452786555087, 117.1132306840973', 'Kegiatan Domestik di kantor dan perumahan', 'Menggunakan pompa', 'digunakan untuk kegiatan domestik di kantor dan perumahan', 56.67, '6 jam/hari', '-', 0.20, 'uploads/WhatsApp_Image_2025-01-14_at_11.43.34.jpeg', 17),
(5, 'sungai', 'loa bahu', 'sungai kunjang', 'KOTA SAMARINDA', 'KALIMANTAN TIMUR', '-0.5007452786555087, 117.1132306840973', 'Mengairi sawah', 'Disedot melalui mesin', 'di buang ke penampungan', 56.70, '6 jam/hari', 'testes', 0.42, 'uploads/IMG-20250130-WA0097.jpg', 26),
(6, 'sungai', 'dr', 'dr', 'dr', 'dr', 'dr', 'baku', 'mekanis', 'over flow', 18.00, '8', 'ebara18', 18.00, 'uploads/siteman_irigasi.png', 34);

-- --------------------------------------------------------

--
-- Table structure for table `rekomtek_layanan`
--

CREATE TABLE `rekomtek_layanan` (
  `id` bigint(20) NOT NULL,
  `nama_layanan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `rekomtek_layanan`
--

INSERT INTO `rekomtek_layanan` (`id`, `nama_layanan`) VALUES
(1, 'Rekomendasi Teknis Izin Pengusahaan Sumber Daya Air'),
(2, 'Rekomendasi Teknis Izin Penggunaan Sumber Daya Air'),
(3, 'Pelaksanaan Kontruksi Pada Sumber Air'),
(4, 'Pengalihan Air Sungai');

-- --------------------------------------------------------

--
-- Table structure for table `rekomtek_rekomendasiteknis`
--

CREATE TABLE `rekomtek_rekomendasiteknis` (
  `id` bigint(20) NOT NULL,
  `nama_pemohon` varchar(255) DEFAULT NULL,
  `kontak_pemohon` varchar(100) DEFAULT NULL,
  `email_pemohon` varchar(254) DEFAULT NULL,
  `tanggal_permohonan` date NOT NULL,
  `layanan_id` bigint(20) DEFAULT NULL,
  `alamat_perusahaan` longtext DEFAULT NULL,
  `nama_direktur` varchar(255) DEFAULT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `dok_berita_acara` varchar(100) DEFAULT NULL,
  `dok_gambar_desain` varchar(100) DEFAULT NULL,
  `dok_izin_lingkungan` varchar(100) DEFAULT NULL,
  `dok_jenis_prasarana` varchar(100) DEFAULT NULL,
  `dok_kepemilikan_lahan` varchar(100) DEFAULT NULL,
  `dok_perizinan_usaha` varchar(100) DEFAULT NULL,
  `dok_proposal_teknis` varchar(100) DEFAULT NULL,
  `dok_rencana_operasi` varchar(100) DEFAULT NULL,
  `dok_surat_permohonan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `rekomtek_rekomendasiteknis`
--

INSERT INTO `rekomtek_rekomendasiteknis` (`id`, `nama_pemohon`, `kontak_pemohon`, `email_pemohon`, `tanggal_permohonan`, `layanan_id`, `alamat_perusahaan`, `nama_direktur`, `nama_perusahaan`, `dok_berita_acara`, `dok_gambar_desain`, `dok_izin_lingkungan`, `dok_jenis_prasarana`, `dok_kepemilikan_lahan`, `dok_perizinan_usaha`, `dok_proposal_teknis`, `dok_rencana_operasi`, `dok_surat_permohonan`) VALUES
(12, 'Medi Sahputra', '08970791413', 'dadfaf@gmail.com', '2025-08-11', 1, '25  lt/det atau 64.800 m3/bln', 'Desa Santan ulu, kecamatan marangkayu kabupaten kutai kartanegara', 'PT Cahaya Gemilang Sawit', '', '', '', '', '', '', '', '', ''),
(17, 'Yayan Handian Ginanjar', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-13', 1, 'Desa Ampeng Medang, Kec. Batu Putih, Kab Berau Prov. Kalimantan Timur', 'Yayan Handian Ginanjar', 'PT Inti Energi Kaltim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Achmad Effendy', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-19', 3, 'jl. revolusi ii Gg.Poksay ii no 22b, kelurahan loa bahu, kecamatan sungai kunjang', 'Yayan Handian Ginanjar', 'pt pencari cinta sejati', 'uploads/dokumen/rekomtek_4_m02zslo.pdf', 'uploads/dokumen/rekomtek_4.pdf', 'uploads/dokumen/rekomtek_4_G1GPb6V.pdf', 'uploads/dokumen/rekomtek_4_7WG750d.pdf', 'uploads/dokumen/rekomtek_3.pdf', 'uploads/dokumen/rekomtek_3_DB1Wl6k.pdf', 'uploads/dokumen/rekomtek_4_Wv6oYip.pdf', 'uploads/dokumen/rekomtek_3_3r78zfv.pdf', 'uploads/dokumen/rekomtek_3_act8yG8.pdf'),
(25, 'Abdul Halim', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-19', 4, 'jl. revolusi ii Gg.Poksay ii no 22b, kelurahan loa bahu, kecamatan sungai kunjang', 'Yayan Handian Ginanjar', 'pt pencari cinta sejati', 'uploads/dokumen/01JVGRPV0810B47N7M68G52GF5_I25YS4M.jpg', 'uploads/dokumen/IMG-20250106-WA0044_Rkwpgci.jpg', 'uploads/dokumen/Bendungan_Kaliorang_vznkhtW.jpg', 'uploads/dokumen/IMG_0022_pp1dVeP.jpg', 'uploads/dokumen/pp_kosong_AY9fxxW.jpg', 'uploads/dokumen/Danau_Embung_e3gNdvV.jpeg', 'uploads/dokumen/WhatsApp_Image_2024-11-30_at_13_tQMHbXw.23.36.jpeg', 'uploads/dokumen/notfound_8TyioGa.jpg', 'uploads/dokumen/pp_kosong_y49O01i.jpg'),
(26, 'Bahrudin', '08970791413', 'bahrudin@gmail.com', '2025-08-19', 1, 'jl. M said Gg Polewali', 'Arbansyah', 'PT Alam Perkasa', 'uploads/dokumen/WhatsApp_Image_2025-01-31_at_10.02.30_1.jpeg', 'uploads/dokumen/IMG_3908_VI5kEh4.jpg', 'uploads/dokumen/IMG-20250106-WA0044_SdmyH5O.jpg', 'uploads/dokumen/WhatsApp_Image_2024-11-30_at_13_2tBBK5L.23.36.jpeg', 'uploads/dokumen/IMG-20250130-WA0097_eArmoXC.jpg', 'uploads/dokumen/WhatsApp_Image_2025-01-14_at_15_UqLZ6LU.35.45.jpeg', 'uploads/dokumen/Bendungan_Kaliorang_BnB0i6Q.jpg', 'uploads/dokumen/100_Sekunder_6_Tj._Perengat__STA_00100.jpeg', 'uploads/dokumen/WhatsApp_Image_2025-01-14_at_11_zPYISUi.43.34.jpeg'),
(28, 'Lamine Yamal', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-20', 4, 'jl. revolusi ii Gg.Poksay ii no 22b, kelurahan loa bahu, kecamatan sungai kunjang', 'Arbansyah', 'PT Indah Permata', 'uploads/dokumen/rekomtek_8_wyPJIBn.pdf', 'uploads/dokumen/Cetak-KRS-2311102441093_3_Hv1GRnX.pdf', 'uploads/dokumen/rekomtek_8.pdf', 'uploads/dokumen/Cetak-KRS-2311102441093_3_ZqtnL4b.pdf', 'uploads/dokumen/rekomtek_6_gAQqS67.pdf', 'uploads/dokumen/rekomtek_6_E1E1Q7V.pdf', 'uploads/dokumen/rekomtek_6_vsxjy1u.pdf', 'uploads/dokumen/rekomtek_7_vwyDKqC.pdf', 'uploads/dokumen/rekomtek_7_hf0i88H.pdf'),
(29, 'Prabowo', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-20', 4, 'jl. revolusi ii Gg.Poksay ii no 22b, kelurahan loa bahu, kecamatan sungai kunjang', 'Arbansyah', 'pt intan permata', 'uploads/dokumen/rekomtek_7_98Gvwfe.pdf', 'uploads/dokumen/Cetak-KRS-2311102441093_3_60NwIxI.pdf', 'uploads/dokumen/Cetak-KRS-2311102441093_3_pAkwANn.pdf', 'uploads/dokumen/rekomtek_7_xwer1is.pdf', 'uploads/dokumen/rekomtek_6_Rmn8hvX.pdf', 'uploads/dokumen/rekomtek_7_vZXCWfP.pdf', 'uploads/dokumen/rekomtek_7_G3HNNNP.pdf', 'uploads/dokumen/rekomtek_6_vOmczRY.pdf', 'uploads/dokumen/rekomtek_7_7k0ueDG.pdf'),
(30, 'Sayekti Harits', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-20', 3, 'jl. revolusi ii Gg.Poksay ii no 22b, kelurahan loa bahu, kecamatan sungai kunjang', 'Arbansyah', 'pt intan permata', 'uploads/dokumen/Cetak-KRS-2311102441093_3_n15O9y9.pdf', 'uploads/dokumen/rekomtek_8_JESPMvM.pdf', 'uploads/dokumen/rekomtek_8_SOUcIHG.pdf', 'uploads/dokumen/rekomtek_8_T3UzGV3.pdf', 'uploads/dokumen/rekomtek_8_JZtbxcp.pdf', 'uploads/dokumen/Cetak-KRS-2311102441093_3_fDlqMbH.pdf', 'uploads/dokumen/Cetak-KRS-2311102441093_3_u2hehVB.pdf', 'uploads/dokumen/rekomtek_8_f8cozeY.pdf', 'uploads/dokumen/Cetak-KRS-2311102441093_3_FTKKpSU.pdf'),
(31, 'alya', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-21', 4, 'jl. juannda', 'Arbansyah', 'pt intan permata', 'uploads/dokumen/logo_dpupr-removebg-preview.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_aiZimyG.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_AsmnSsj.png', 'uploads/dokumen/logo_dpupr-removebg-preview_3CTF2FM.png', 'uploads/dokumen/logo_dpupr-removebg-preview_HEFqFQ6.png', 'uploads/dokumen/logo_dpupr.png', 'uploads/dokumen/logo_dpupr-removebg-preview_0ZjMUa1.png', 'uploads/dokumen/logo_dpupr-removebg-preview_PcVx9au.png'),
(32, 'Roma irama', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-21', 4, 'jl. M said Gg Polewali', 'Arbansyah', 'pt intan permata', 'uploads/dokumen/logo_dpupr-removebg-preview_1_YFRSYlQ.png', 'uploads/dokumen/logo_dpupr-removebg-preview_kP4NyMs.png', 'uploads/dokumen/logo_dpupr-removebg-preview_A12dXvt.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_rBS15qy.png', 'uploads/dokumen/logo_dpupr-removebg-preview_xmmZmVW.png', 'uploads/dokumen/logo_dpupr-removebg-preview_b8GELwc.png', 'uploads/dokumen/logo_dpupr_Qoejz1k.png', 'uploads/dokumen/logo_dpupr_CVAECAy.png', 'uploads/dokumen/logo_dpupr_7HTavkO.png'),
(33, 'Uzumaki naruto', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-21', 3, 'Desa Ampeng Medang, Kec. Batu Putih, Kab Berau Prov. Kalimantan Timur', 'Arbansyah', 'pt intan permata', 'uploads/dokumen/logo_dpupr_VJGEyVs.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_oT9e8uZ.png', 'uploads/dokumen/logo_dpupr_VoGX4Vs.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_BlgxE9I.png', 'uploads/dokumen/logo_dpupr_paUICjh.png', 'uploads/dokumen/logo_dpupr-removebg-preview_KHFtazp.png', 'uploads/dokumen/logo_dpupr-removebg-preview_3slf87a.png', 'uploads/dokumen/logo_dpupr_kEvek1o.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_tGunkjt.png'),
(34, 'sandy', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-22', 1, 'Desa Ampeng Medang, Kec. Batu Putih, Kab Berau Prov. Kalimantan Timur', 'Arbansyah', 'PT Inti Energi Kaltim', 'uploads/dokumen/siteman_irigasi_4bgdEBJ.png', 'uploads/dokumen/siteman_irigasi.png', 'uploads/dokumen/siteman_irigasi_Vm6wcG8.png', 'uploads/dokumen/siteman_irigasi_Qqx0PHc.png', 'uploads/dokumen/siteman_irigasi_RUz7Ena.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_M7DzQIr.png', 'uploads/dokumen/siteman_irigasi_ynhvxV4.png', 'uploads/dokumen/siteman_irigasi_lzVmTkU.png', 'uploads/dokumen/siteman_irigasi_XFJeI9E.png'),
(35, 'naufal', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-24', 3, 'jl. revolusi ii Gg.Poksay ii no 22b, kelurahan loa bahu, kecamatan sungai kunjang', 'Arbansyah', 'PT Inti Energi Kaltim', 'uploads/dokumen/rekomtek.pdf', 'uploads/dokumen/rekomtek_6_D1FoQTB.pdf', 'uploads/dokumen/rekomtek_4_LCIxCCL.pdf', 'uploads/dokumen/rekomtek_4_wMC13vJ.pdf', 'uploads/dokumen/rekomtek_5.pdf', 'uploads/dokumen/rekomtek_6_hq9qtU9.pdf', 'uploads/dokumen/rekomtek_5_Ggshdk8.pdf', 'uploads/dokumen/rekomtek_8_4x0LG1R.pdf', 'uploads/dokumen/rekomtek_1.pdf'),
(36, 'rizkii', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-24', 4, 'ijd9w9dw9dw', 'Arbansyah', 'PT Inti Energi Kaltim', 'uploads/dokumen/logo_dpupr-removebg-preview_1_dE3YJb4.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_YvbFUQs.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_v9hiRYF.png', 'uploads/dokumen/logo_dpupr-removebg-preview_Q9aS1J4.png', 'uploads/dokumen/logo_dpupr-removebg-preview_2NnuJHR.png', 'uploads/dokumen/logo_dpupr-removebg-preview_jjn6g8O.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_Uy70i3Z.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_kvdZtLe.png', 'uploads/dokumen/logo_dpupr-removebg-preview_bYK3fuX.png'),
(37, 'Hendrie', '08970791413', 'adityaasaputraa2005@gmail.com', '2025-08-24', 3, 'jl. M said Gg Polewali', 'Arbansyah', 'PT Inti Energi Kaltim', 'uploads/dokumen/logo_dpupr-removebg-preview_1_5VGBylt.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_bmgsonB.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_HWjIKL6.png', 'uploads/dokumen/logo_dpupr-removebg-preview_1_Au4wIVH.png', 'uploads/dokumen/logo_dpupr-removebg-preview_o2TdsYg.png', 'uploads/dokumen/logo_dpupr-removebg-preview_RilQhTa.png', 'uploads/dokumen/logo_dpupr-removebg-preview_TpdJEbu.png', 'uploads/dokumen/logo_dpupr-removebg-preview_0eRbEVE.png', 'uploads/dokumen/logo_dpupr_5X1QpxC.png');

-- --------------------------------------------------------

--
-- Table structure for table `rekomtek_statusrekomendasiteknis`
--

CREATE TABLE `rekomtek_statusrekomendasiteknis` (
  `id` bigint(20) NOT NULL,
  `jadwal_kunjungan_lapangan` date DEFAULT NULL,
  `tanggal_kunjungan_lapangan_1` date DEFAULT NULL,
  `tanggal_kunjungan_lapangan_2` date DEFAULT NULL,
  `rekomtek_id` bigint(20) DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `tanggal_kirim` date NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `rekomtek_statusrekomendasiteknis`
--

INSERT INTO `rekomtek_statusrekomendasiteknis` (`id`, `jadwal_kunjungan_lapangan`, `tanggal_kunjungan_lapangan_1`, `tanggal_kunjungan_lapangan_2`, `rekomtek_id`, `keterangan`, `status`, `tanggal_kirim`, `user_id`) VALUES
(7, '2025-08-12', '2025-08-12', '2025-08-12', 12, NULL, 'diterima', '2025-08-20', NULL),
(8, '2025-08-19', '2025-08-19', '2025-08-19', 21, NULL, 'diterima', '2025-08-20', NULL),
(9, NULL, NULL, NULL, 17, 'berkas - berkas yang di upload masih kurang tepat', 'ditolak', '2025-08-20', NULL),
(10, '2025-08-28', '2025-08-29', '2025-08-30', 26, '-', 'diterima', '2025-08-20', NULL),
(11, '2025-09-01', '2025-09-02', '2025-09-03', 25, '-', 'diterima', '2025-08-20', NULL),
(12, NULL, NULL, NULL, 28, 'berkas tidak sesuai', 'ditolak', '2025-08-21', NULL),
(13, NULL, NULL, NULL, 29, 'surat amdal tidak sesuai', 'ditolak', '2025-08-20', NULL),
(14, '2025-08-26', '2025-08-27', '2025-08-28', 30, 'Semua dokumen persyaratan telah valid dan sesuai standar teknis. Jadwal kunjungan lapangan telah ditetapkan sesuai permohonan', 'diterima', '2025-08-20', NULL),
(19, NULL, NULL, NULL, 34, NULL, 'proses', '2025-08-22', NULL),
(20, '2025-08-24', '2025-08-24', '2025-08-24', 35, '', 'diterima', '2025-08-24', 28),
(21, '2025-08-24', '2025-08-24', '2025-08-24', 36, 'Berkas berkas masih kurang tepat', 'ditolak', '2025-08-24', 28),
(22, '2025-08-24', '2025-08-24', '2025-08-24', 37, 'Dokumen sudah lengkap', 'diterima', '2025-08-24', 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `berita_artikel`
--
ALTER TABLE `berita_artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `berita_artikel_author_id_3519cf92_fk_auth_user_id` (`author_id`),
  ADD KEY `berita_artikel_kategori_id_d39da5d8_fk_berita_kategori_id` (`kategori_id`);

--
-- Indexes for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_pesankontak`
--
ALTER TABLE `contact_pesankontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_foto_profil`
--
ALTER TABLE `dashboard_foto_profil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galeri_foto_kategori_id_f7ff1209_fk_galeri_ka` (`kategori_id`);

--
-- Indexes for table `galeri_fotokegiatanperencanaan`
--
ALTER TABLE `galeri_fotokegiatanperencanaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galeri_fotokegiatanp_kategori_id_cfcc06f1_fk_galeri_ka` (`kategori_id`);

--
-- Indexes for table `galeri_kategorikegiatanfisik`
--
ALTER TABLE `galeri_kategorikegiatanfisik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri_kategorikegiatanperencanaan`
--
ALTER TABLE `galeri_kategorikegiatanperencanaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri_video`
--
ALTER TABLE `galeri_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri_videokegiatanperencanaan`
--
ALTER TABLE `galeri_videokegiatanperencanaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_survey_kepuasan_hidrologi`
--
ALTER TABLE `hasil_survey_kepuasan_hidrologi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_survey_kepuasan_ikm`
--
ALTER TABLE `hasil_survey_kepuasan_ikm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infrastruktur_sda`
--
ALTER TABLE `infrastruktur_sda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `infrastruktur_sda_kategori_id_0941d180_fk_kategori_` (`kategori_id`);

--
-- Indexes for table `infrastruktur_sda_post`
--
ALTER TABLE `infrastruktur_sda_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_infrastruktur_sda`
--
ALTER TABLE `kategori_infrastruktur_sda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelembagaan_tkpsda`
--
ALTER TABLE `kelembagaan_tkpsda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_publik_peraturan`
--
ALTER TABLE `layanan_publik_peraturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan_publik_sop`
--
ALTER TABLE `layanan_publik_sop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_informasi_majalahbanyu`
--
ALTER TABLE `media_informasi_majalahbanyu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan_sda`
--
ALTER TABLE `pekerjaan_sda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pekerjaan_sda_infrastruktur_id_16395853_fk_infrastruktur_sda_id` (`infrastruktur_id`);

--
-- Indexes for table `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `profil_lokasikantor`
--
ALTER TABLE `profil_lokasikantor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil_sejarah`
--
ALTER TABLE `profil_sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil_strukturorganisasi`
--
ALTER TABLE `profil_strukturorganisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil_tugasfungsi`
--
ALTER TABLE `profil_tugasfungsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil_visimisi`
--
ALTER TABLE `profil_visimisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekomtek_intake`
--
ALTER TABLE `rekomtek_intake`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rekomtek_intake_rekomtek_id_be60dcb4_fk_rekomtek_` (`rekomtek_id`);

--
-- Indexes for table `rekomtek_layanan`
--
ALTER TABLE `rekomtek_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekomtek_rekomendasiteknis`
--
ALTER TABLE `rekomtek_rekomendasiteknis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rekomtek_rekomendasi_layanan_id_bef078e3_fk_rekomtek_` (`layanan_id`);

--
-- Indexes for table `rekomtek_statusrekomendasiteknis`
--
ALTER TABLE `rekomtek_statusrekomendasiteknis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rekomtek_statusrekom_rekomtek_id_20aee48a_fk_rekomtek_` (`rekomtek_id`),
  ADD KEY `rekomtek_statusrekom_user_id_90162df8_fk_auth_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berita_artikel`
--
ALTER TABLE `berita_artikel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_pesankontak`
--
ALTER TABLE `contact_pesankontak`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dashboard_foto_profil`
--
ALTER TABLE `dashboard_foto_profil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galeri_fotokegiatanperencanaan`
--
ALTER TABLE `galeri_fotokegiatanperencanaan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galeri_kategorikegiatanfisik`
--
ALTER TABLE `galeri_kategorikegiatanfisik`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galeri_kategorikegiatanperencanaan`
--
ALTER TABLE `galeri_kategorikegiatanperencanaan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `galeri_video`
--
ALTER TABLE `galeri_video`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galeri_videokegiatanperencanaan`
--
ALTER TABLE `galeri_videokegiatanperencanaan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hasil_survey_kepuasan_hidrologi`
--
ALTER TABLE `hasil_survey_kepuasan_hidrologi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hasil_survey_kepuasan_ikm`
--
ALTER TABLE `hasil_survey_kepuasan_ikm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infrastruktur_sda`
--
ALTER TABLE `infrastruktur_sda`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `infrastruktur_sda_post`
--
ALTER TABLE `infrastruktur_sda_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_infrastruktur_sda`
--
ALTER TABLE `kategori_infrastruktur_sda`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelembagaan_tkpsda`
--
ALTER TABLE `kelembagaan_tkpsda`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `layanan_publik_peraturan`
--
ALTER TABLE `layanan_publik_peraturan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `layanan_publik_sop`
--
ALTER TABLE `layanan_publik_sop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_informasi_majalahbanyu`
--
ALTER TABLE `media_informasi_majalahbanyu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pekerjaan_sda`
--
ALTER TABLE `pekerjaan_sda`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profil_lokasikantor`
--
ALTER TABLE `profil_lokasikantor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profil_sejarah`
--
ALTER TABLE `profil_sejarah`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profil_strukturorganisasi`
--
ALTER TABLE `profil_strukturorganisasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profil_tugasfungsi`
--
ALTER TABLE `profil_tugasfungsi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profil_visimisi`
--
ALTER TABLE `profil_visimisi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rekomtek_intake`
--
ALTER TABLE `rekomtek_intake`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rekomtek_layanan`
--
ALTER TABLE `rekomtek_layanan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rekomtek_rekomendasiteknis`
--
ALTER TABLE `rekomtek_rekomendasiteknis`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `rekomtek_statusrekomendasiteknis`
--
ALTER TABLE `rekomtek_statusrekomendasiteknis`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `berita_artikel`
--
ALTER TABLE `berita_artikel`
  ADD CONSTRAINT `berita_artikel_author_id_3519cf92_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `berita_artikel_kategori_id_d39da5d8_fk_berita_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `berita_kategori` (`id`);

--
-- Constraints for table `dashboard_foto_profil`
--
ALTER TABLE `dashboard_foto_profil`
  ADD CONSTRAINT `dashboard_foto_profil_user_id_349a7b28_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD CONSTRAINT `galeri_foto_kategori_id_f7ff1209_fk_galeri_ka` FOREIGN KEY (`kategori_id`) REFERENCES `galeri_kategorikegiatanfisik` (`id`);

--
-- Constraints for table `galeri_fotokegiatanperencanaan`
--
ALTER TABLE `galeri_fotokegiatanperencanaan`
  ADD CONSTRAINT `galeri_fotokegiatanp_kategori_id_cfcc06f1_fk_galeri_ka` FOREIGN KEY (`kategori_id`) REFERENCES `galeri_kategorikegiatanperencanaan` (`id`);

--
-- Constraints for table `infrastruktur_sda`
--
ALTER TABLE `infrastruktur_sda`
  ADD CONSTRAINT `infrastruktur_sda_kategori_id_0941d180_fk_kategori_` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_infrastruktur_sda` (`id`);

--
-- Constraints for table `pekerjaan_sda`
--
ALTER TABLE `pekerjaan_sda`
  ADD CONSTRAINT `pekerjaan_sda_infrastruktur_id_16395853_fk_infrastruktur_sda_id` FOREIGN KEY (`infrastruktur_id`) REFERENCES `infrastruktur_sda` (`id`);

--
-- Constraints for table `pengguna_biodata`
--
ALTER TABLE `pengguna_biodata`
  ADD CONSTRAINT `pengguna_biodata_user_id_e6b22e27_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `rekomtek_intake`
--
ALTER TABLE `rekomtek_intake`
  ADD CONSTRAINT `rekomtek_intake_rekomtek_id_be60dcb4_fk_rekomtek_` FOREIGN KEY (`rekomtek_id`) REFERENCES `rekomtek_rekomendasiteknis` (`id`);

--
-- Constraints for table `rekomtek_rekomendasiteknis`
--
ALTER TABLE `rekomtek_rekomendasiteknis`
  ADD CONSTRAINT `rekomtek_rekomendasi_layanan_id_bef078e3_fk_rekomtek_` FOREIGN KEY (`layanan_id`) REFERENCES `rekomtek_layanan` (`id`);

--
-- Constraints for table `rekomtek_statusrekomendasiteknis`
--
ALTER TABLE `rekomtek_statusrekomendasiteknis`
  ADD CONSTRAINT `rekomtek_statusrekom_rekomtek_id_20aee48a_fk_rekomtek_` FOREIGN KEY (`rekomtek_id`) REFERENCES `rekomtek_rekomendasiteknis` (`id`),
  ADD CONSTRAINT `rekomtek_statusrekom_user_id_90162df8_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
