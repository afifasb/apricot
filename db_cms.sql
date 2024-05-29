-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 22, 2021 at 09:34 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `judul`, `slug`, `deskripsi`, `tanggal_mulai`, `tanggal_selesai`, `foto`) VALUES
(3, 'test agenda', 'test-agenda', '<p>test</p>', '2021-09-16', '2021-09-22', 'http://localhost/bpsdmcontent/an-component/media/upload-gambar-pendukung/pensi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
CREATE TABLE IF NOT EXISTS `artikel` (
  `artikel_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `artikel_judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_kategori` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `artikel_tags` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_sbg_headline` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `artikel_tgl_posting` datetime NOT NULL,
  `artikel_id_user` bigint(20) NOT NULL,
  `artikel_tgl_last_edit` datetime NOT NULL,
  `artikel_editable` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `artikel_id_user_last_edit` int(11) NOT NULL,
  `artikel_seo_url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_meta_description` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_meta_author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_meta_keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_og_image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_og_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_og_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_in_draft` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `artikel_aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `artikel_terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `artikel_status` enum('publish','draft','deleted') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artikel_was_published` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `artikel_sesi_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_dibaca` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`artikel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`artikel_id`, `artikel_judul`, `artikel_isi`, `artikel_kategori`, `artikel_tags`, `artikel_foto`, `artikel_sbg_headline`, `artikel_tgl_posting`, `artikel_id_user`, `artikel_tgl_last_edit`, `artikel_editable`, `artikel_id_user_last_edit`, `artikel_seo_url`, `artikel_meta_description`, `artikel_meta_author`, `artikel_meta_keyword`, `artikel_og_image`, `artikel_og_title`, `artikel_og_description`, `artikel_in_draft`, `artikel_aktif`, `artikel_terhapus`, `artikel_status`, `artikel_was_published`, `artikel_sesi_id`, `artikel_dibaca`) VALUES
(1, 'Vestibulum molestie, tellus nec luctus tempor', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ac metus arcu. Vestibulum tristique ante tellus, rutrum elementum purus ultricies eu. Vestibulum molestie, tellus nec luctus tempor, justo diam venenatis purus, at auctor ipsum nulla a ipsum. Vestibulum accumsan faucibus fermentum. Proin pretium finibus ex ac tempor. Etiam euismod lorem vitae massa lacinia, non venenatis magna consequat. Quisque mattis condimentum mollis. Nulla mollis, orci quis viverra tempus, libero risus laoreet tellus, nec facilisis arcu lectus convallis ex. Mauris semper justo eget tellus fringilla venenatis. Etiam a augue varius, tincidunt nulla et, laoreet ligula. Mauris lacus libero, pretium eget efficitur ut, porta non felis. Nulla sit amet mollis lacus.</p>\n<p>Vestibulum quis lectus dui. Nulla enim mi, malesuada at efficitur vitae, varius eget odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec lacus eu neque varius eleifend sit amet sit amet turpis. Aliquam pellentesque maximus libero. Nunc dictum turpis quis justo fermentum accumsan. Aliquam porta egestas libero, at elementum ligula malesuada sed. Duis molestie felis sed odio vulputate congue. Duis dapibus vehicula tortor nec tincidunt. Aliquam aliquet nibh arcu.</p>\n<p>Pellentesque in ligula condimentum, condimentum nibh at, facilisis quam. Sed feugiat suscipit erat, quis blandit nunc viverra eu. Maecenas eget eleifend dolor. Cras maximus porttitor augue, eget iaculis felis. Sed malesuada nunc vel auctor auctor. Quisque porta sapien vel ornare porttitor. Vestibulum imperdiet rutrum elit, quis consequat libero auctor at. Nunc ac dui lacus. Vivamus lacinia elit est, id interdum magna mollis eget. Vivamus ullamcorper magna non ipsum mollis, quis ornare lacus pulvinar. Donec metus quam, feugiat in ligula ac, interdum dignissim metus. Donec massa ex, ullamcorper vel posuere sit amet, auctor vel ex. Praesent porta, enim quis gravida vestibulum, nisi enim rutrum tellus, nec hendrerit odio orci eget metus.</p>', 5, '5,2,1', '', 'Y', '2016-04-14 02:59:20', 1, '2016-04-14 02:59:20', 'Y', 1, 'vestibulum-molestie-tellus-nec-luctus-tempor', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '34340131604', 25),
(2, 'Proin feugiat enim ut quam hendrerit elementum', '<p>Sed feugiat suscipit erat, quis blandit nunc viverra eu. Maecenas eget eleifend dolor. Cras maximus porttitor augue, eget iaculis felis. Sed malesuada nunc vel auctor auctor. Quisque porta sapien vel ornare porttitor. Vestibulum imperdiet rutrum elit, quis consequat libero auctor at. Nunc ac dui lacus. Vivamus lacinia elit est, id interdum magna mollis eget. Vivamus ullamcorper magna non ipsum mollis, quis ornare lacus pulvinar. Donec metus quam, feugiat in ligula ac, interdum dignissim metus. Donec massa ex, ullamcorper vel posuere sit amet, auctor vel ex. Praesent porta, enim quis gravida vestibulum, nisi enim rutrum tellus, nec hendrerit odio orci eget metus.</p>\n<p>Suspendisse pellentesque dapibus ipsum sed malesuada. Proin feugiat enim ut quam hendrerit elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce consectetur molestie elementum. Fusce in dui ac elit volutpat accumsan sit amet quis nibh. Nam maximus rhoncus lorem, maximus mollis dui iaculis id. Morbi ut ligula nec sapien pharetra luctus quis at erat. Phasellus in ante dapibus, fermentum lorem ac, mollis enim. Proin non neque tellus. Nullam malesuada tincidunt augue ac fermentum. Donec pellentesque sit amet ex eu posuere. Cras lobortis tellus ac enim interdum, sit amet commodo dolor interdum. Pellentesque lobortis, sapien sed mattis vehicula, leo magna elementum turpis, a molestie risus diam eget libero. Proin pulvinar sapien augue, nec ornare orci bibendum ut. Suspendisse potenti. In lacus ante, viverra ac neque et, fringilla tincidunt libero.</p>\n<p>Cras vitae felis ut lacus auctor ultricies eu quis diam. Morbi ullamcorper nec neque ac vestibulum. Etiam in pellentesque leo. Morbi efficitur, orci eu aliquam fermentum, neque elit vestibulum dolor, sit amet aliquam nisl tellus sit amet tellus. Ut nec nisi placerat orci commodo ornare. Proin sed nibh maximus, dignissim massa nec, aliquet odio. Nullam ultricies diam pellentesque, tempor purus et, faucibus erat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis sed cursus orci. Sed bibendum justo non urna rutrum, non euismod sem ullamcorper. In imperdiet justo ex, nec feugiat magna aliquam dictum.</p>\n<p>Donec efficitur orci velit, interdum bibendum nulla vulputate eget. Nam dapibus eros eleifend, fringilla magna vitae, porttitor nibh. Fusce mollis nisl non tempus vulputate. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse vitae hendrerit arcu, sed feugiat velit. Pellentesque non tortor lectus. Sed vel urna lacus. Nunc sed magna id urna bibendum aliquam sed ac nibh. Nulla maximus pellentesque felis et ornare. Nunc placerat dui at tortor luctus rhoncus. Sed ut porttitor dolor, ut suscipit dui. Pellentesque imperdiet nulla risus, et porttitor lacus fringilla vitae. Integer eleifend nisl vitae dapibus dignissim. Suspendisse et mi eu dolor dapibus ullamcorper nec et mi.</p>', 5, '4,2', '', 'Y', '2016-04-14 03:18:19', 1, '0000-00-00 00:00:00', 'Y', 0, 'proin-feugiat-enim-ut-quam-hendrerit-elementum', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '63108131604', 22),
(3, 'Pellentesque consectetur nunc eget nisi gravida', '<p>Donec efficitur orci velit, interdum bibendum nulla vulputate eget. Nam dapibus eros eleifend, fringilla magna vitae, porttitor nibh. Fusce mollis nisl non tempus vulputate. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse vitae hendrerit arcu, sed feugiat velit. Pellentesque non tortor lectus. Sed vel urna lacus. Nunc sed magna id urna bibendum aliquam sed ac nibh. Nulla maximus pellentesque felis et ornare. Nunc placerat dui at tortor luctus rhoncus. Sed ut porttitor dolor, ut suscipit dui. Pellentesque imperdiet nulla risus, et porttitor lacus fringilla vitae. Integer eleifend nisl vitae dapibus dignissim. Suspendisse et mi eu dolor dapibus ullamcorper nec et mi.</p>\n<p>Sed vulputate ex odio, vel sagittis arcu feugiat et. Curabitur feugiat elementum risus, non ultrices elit suscipit eget. Donec rutrum tempor dolor, id mattis ligula viverra et. Ut enim est, faucibus eget urna id, egestas ullamcorper lacus. Ut lacinia ex eu velit condimentum ultricies. Nam vehicula, ante id varius dictum, augue neque finibus nisi, hendrerit mattis erat nisl non enim. Sed lobortis accumsan eros a consectetur. Nulla porta pharetra eros, id eleifend mauris tincidunt id. Nulla massa tellus, posuere a lacus sit amet, vehicula pretium lacus.</p>\n<p>Nam fringilla posuere ex, ut euismod orci scelerisque id. Morbi eget orci vel dui sollicitudin suscipit facilisis eget odio. Pellentesque vehicula purus sed lacus bibendum, sed dictum libero molestie. Suspendisse molestie nibh tellus, et congue risus dictum a. Nulla semper, magna faucibus laoreet dignissim, nibh arcu dictum magna, sit amet condimentum orci elit sit amet risus. Curabitur mauris lorem, lacinia sit amet erat ut, gravida maximus justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum scelerisque quis dui sed pharetra. Proin aliquam consectetur est. Nunc egestas laoreet gravida.</p>', 5, '2,5', '', 'Y', '2016-04-14 03:32:22', 1, '0000-00-00 00:00:00', 'Y', 0, 'pellentesque-consectetur-nunc-eget-nisi-gravida', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '30370131604', 8),
(4, ' Cras molestie orci id lacus sodales hendrerit', '<p>Nunc sed magna id urna bibendum aliquam sed ac nibh. Nulla maximus pellentesque felis et ornare. Nunc placerat dui at tortor luctus rhoncus. Sed ut porttitor dolor, ut suscipit dui. Pellentesque imperdiet nulla risus, et porttitor lacus fringilla vitae. Integer eleifend nisl vitae dapibus dignissim. Suspendisse et mi eu dolor dapibus ullamcorper nec et mi.</p>\n<p>Sed vulputate ex odio, vel sagittis arcu feugiat et. Curabitur feugiat elementum risus, non ultrices elit suscipit eget. Donec rutrum tempor dolor, id mattis ligula viverra et. Ut enim est, faucibus eget urna id, egestas ullamcorper lacus. Ut lacinia ex eu velit condimentum ultricies. Nam vehicula, ante id varius dictum, augue neque finibus nisi, hendrerit mattis erat nisl non enim. Sed lobortis accumsan eros a consectetur. Nulla porta pharetra eros, id eleifend mauris tincidunt id. Nulla massa tellus, posuere a lacus sit amet, vehicula pretium lacus.</p>\n<p>Nam fringilla posuere ex, ut euismod orci scelerisque id. Morbi eget orci vel dui sollicitudin suscipit facilisis eget odio. Pellentesque vehicula purus sed lacus bibendum, sed dictum libero molestie. Suspendisse molestie nibh tellus, et congue risus dictum a. Nulla semper, magna faucibus laoreet dignissim, nibh arcu dictum magna, sit amet condimentum orci elit sit amet risus. Curabitur mauris lorem, lacinia sit amet erat ut, gravida maximus justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum scelerisque quis dui sed pharetra. Proin aliquam consectetur est. Nunc egestas laoreet gravida.</p>\n<p>Pellentesque consectetur nunc eget nisi gravida, aliquam egestas diam sagittis. Fusce pulvinar porta facilisis. Sed viverra facilisis vulputate. Nunc non ipsum ac sapien sagittis aliquet a eget magna. Nulla fermentum finibus ipsum eget porta. Cras tempor est non suscipit fringilla. Nam efficitur nunc fermentum risus faucibus, non semper elit faucibus. Cras id nunc nulla.</p>\n<p>In hac habitasse platea dictumst. Cras molestie orci id lacus sodales hendrerit. Duis est mi, venenatis et iaculis eu, ultrices eu erat. Ut metus mauris, placerat sed purus vel, fringilla sollicitudin leo. Aliquam cursus turpis a est semper dictum. Integer vitae turpis in neque ullamcorper hendrerit. Nullam ut eros nec quam vestibulum semper. Nulla viverra euismod facilisis. Vestibulum sed diam nibh. Aliquam et nunc eu eros consectetur aliquet at vel ante. Sed sed ipsum viverra, pellentesque urna eget, convallis nisl. Nunc eu elit cursus leo vestibulum egestas vel id libero. Duis malesuada at velit a condimentum. Ut blandit orci enim, id viverra erat malesuada blandit</p>', 5, '1,4,3', '', 'Y', '2016-04-14 03:38:45', 1, '0000-00-00 00:00:00', 'Y', 0, 'cras-molestie-orci-id-lacus-sodales-hendrerit', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '6363131604', 12),
(5, 'Nam dapibus eros eleifend, fringilla magna vitae, porttitor nibh', '<p>Nullam ultricies diam pellentesque, tempor purus et, faucibus erat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis sed cursus orci. Sed bibendum justo non urna rutrum, non euismod sem ullamcorper. In imperdiet justo ex, nec feugiat magna aliquam dictum.</p>\n<p>Donec efficitur orci velit, interdum bibendum nulla vulputate eget. Nam dapibus eros eleifend, fringilla magna vitae, porttitor nibh. Fusce mollis nisl non tempus vulputate. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse vitae hendrerit arcu, sed feugiat velit. Pellentesque non tortor lectus. Sed vel urna lacus. Nunc sed magna id urna bibendum aliquam sed ac nibh. Nulla maximus pellentesque felis et ornare. Nunc placerat dui at tortor luctus rhoncus. Sed ut porttitor dolor, ut suscipit dui. Pellentesque imperdiet nulla risus, et porttitor lacus fringilla vitae. Integer eleifend nisl vitae dapibus dignissim. Suspendisse et mi eu dolor dapibus ullamcorper nec et mi.</p>\n<p>Sed vulputate ex odio, vel sagittis arcu feugiat et. Curabitur feugiat elementum risus, non ultrices elit suscipit eget. Donec rutrum tempor dolor, id mattis ligula viverra et. Ut enim est, faucibus eget urna id, egestas ullamcorper lacus. Ut lacinia ex eu velit condimentum ultricies. Nam vehicula, ante id varius dictum, augue neque finibus nisi, hendrerit mattis erat nisl non enim. Sed lobortis accumsan eros a consectetur. Nulla porta pharetra eros, id eleifend mauris tincidunt id. Nulla massa tellus, posuere a lacus sit amet, vehicula pretium lacus.</p>\n<p>Nam fringilla posuere ex, ut euismod orci scelerisque id. Morbi eget orci vel dui sollicitudin suscipit facilisis eget odio. Pellentesque vehicula purus sed lacus bibendum, sed dictum libero molestie. Suspendisse molestie nibh tellus, et congue risus dictum a. Nulla semper, magna faucibus laoreet dignissim, nibh arcu dictum magna, sit amet condimentum orci elit sit amet risus. Curabitur mauris lorem, lacinia sit amet erat ut, gravida maximus justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum scelerisque quis dui sed pharetra. Proin aliquam consectetur est. Nunc egestas laoreet gravida.</p>', 5, '3,2,1', '', 'Y', '2016-04-14 03:46:53', 1, '2018-07-08 12:55:12', 'Y', 1, 'nam-dapibus-eros-eleifend-fringilla-magna-vitae-porttitor-nibh', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '456131604', 5);

-- --------------------------------------------------------

--
-- Table structure for table `banner_depan`
--

DROP TABLE IF EXISTS `banner_depan`;
CREATE TABLE IF NOT EXISTS `banner_depan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_href` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_depan`
--

INSERT INTO `banner_depan` (`id`, `gambar`, `header`, `caption`, `link_href`, `link_text`) VALUES
(1, 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/man-489744_1280.jpg', 'Informasi Header 4', 'Kata kata header 4', '#', 'button'),
(2, 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/milky-way-1023340_1280.jpg', 'Informasi Header 3', 'Kata kata header 3', '#', 'button'),
(3, 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/sparkler-677774_1280.jpg', 'Informasi Header 2', 'Kata kata header 2', '#', 'button'),
(4, 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/footpath-691021_1280.jpg', 'Informasi Header 1', 'Kata kata header 1', '#', 'button'),
(5, 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/pensi.jpg', 'Selamat Datang di Website', ' BPSDM', '#', '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_item`
--

DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE IF NOT EXISTS `banner_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_group` int(11) NOT NULL,
  `gambar` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alttext` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_href` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_item`
--

INSERT INTO `banner_item` (`id`, `id_group`, `gambar`, `alttext`, `header`, `caption`, `link_href`, `link_text`) VALUES
(1, 1, 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/sparkler-677774_1280.jpg', '', 'test', 'test', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

DROP TABLE IF EXISTS `biodata`;
CREATE TABLE IF NOT EXISTS `biodata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_singkat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_fb` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `nama`, `foto`, `deskripsi_singkat`, `deskripsi`, `link_fb`) VALUES
(1, 'Balai Penelitian', 'http://localhost/bpsdmcontent/an-component/media/upload-gambar-pendukung/pensi.jpg', 'Praesent id pellentesque orci. Morbi congue viverra nisl nec rhoncus. Integer mattis, ipsum a tincidunt commodo, lacus arcu elementum elit, at mollis eros ante ac risus. In volutpat, ante at pretium ultricies, velit magna suscipit enim, aliquet blandit massa orci nec lorem. Nulla facilisi. ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
CREATE TABLE IF NOT EXISTS `download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_download` bigint(20) UNSIGNED NOT NULL,
  `nama_file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `download_temp`
--

DROP TABLE IF EXISTS `download_temp`;
CREATE TABLE IF NOT EXISTS `download_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_masuk`
--

DROP TABLE IF EXISTS `email_masuk`;
CREATE TABLE IF NOT EXISTS `email_masuk` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`, `slug`, `tanggal`) VALUES
(14, 'Question 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et dapibus dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean nibh justo, varius vitae tempor eu, gravida lacinia libero. Phasellus id ex tellus. Fusce rhoncus lectus ac suscipit venenatis. Fusce faucibus aliquet pharetra. Curabitur feugiat congue neque quis accumsan. Vestibulum ut leo volutpat, gravida enim non, maximus erat. Sed bibendum ornare egestas. Vivamus in ex id mi dignissim laoreet ut non dui. Etiam ut egestas metus. Maecenas condimentum iaculis purus.</p>\n<p>Mauris porttitor, erat et mollis cursus, risus turpis vestibulum erat, in pulvinar turpis metus in lacus. Sed laoreet faucibus accumsan. Curabitur luctus mollis nisl, eu placerat massa interdum eu. Maecenas nec ipsum ipsum. Cras a nulla finibus, eleifend ex in, mollis odio. Suspendisse maximus tortor sapien, in iaculis leo rhoncus in. Pellentesque ultrices diam congue dapibus scelerisque.</p>', 'question-1', '2018-07-10 02:50:26'),
(15, 'Question 2', '<p>Morbi non accumsan odio. Nulla tortor tortor, semper a justo quis, porta consequat mi. Nullam quis ante at felis dapibus hendrerit et non lectus. Pellentesque a aliquet justo. Etiam mauris urna, scelerisque vel ex nec, ultrices accumsan libero. Etiam auctor ipsum sit amet porta dignissim. Etiam enim lectus, tempus quis placerat maximus, posuere ut arcu. Nulla felis leo, vestibulum non eleifend congue, congue vel turpis. Nulla at enim consectetur, egestas purus ac, eleifend sem. Aenean malesuada congue venenatis. Sed nec viverra turpis, eget pharetra augue. Cras rutrum quam vitae ipsum interdum, eu elementum nisi consectetur.</p>\n<p>Phasellus in diam imperdiet, finibus tortor nec, ullamcorper est. Nam commodo felis at quam venenatis, eu dictum felis feugiat. Aliquam id orci dolor. In luctus mi vitae orci suscipit, vitae dignissim enim porttitor. Pellentesque lectus odio, mollis ac aliquam in, dapibus eu velit. Nullam mauris ligula, dictum non elit eleifend, venenatis dignissim purus. Cras maximus porttitor dui elementum auctor. Pellentesque accumsan metus vitae egestas vehicula.</p>\n<p><img src=\"http://localhost/bpsdm/an-component/media/upload-gambar-pendukung/man-489744_1280.jpg\" alt=\"man-489744_1280\"></p>\n<p>Mauris porta quis elit quis tincidunt. Proin at aliquet augue, eu auctor augue. Vivamus consequat risus quis dolor iaculis scelerisque. Sed eu posuere turpis, a tincidunt nunc. Maecenas sit amet metus eget purus ultrices porta. Sed eleifend, eros sit amet semper pulvinar, est quam sollicitudin velit, eu mollis felis enim vel enim. Proin tincidunt ut diam ac faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus ac pharetra arcu. Morbi facilisis, quam rhoncus laoreet egestas, neque urna euismod purus, sed rutrum mi lacus sed eros. Duis ut egestas turpis. Nullam sed nisi maximus, eleifend libero eu, ultricies mauris. Duis accumsan tincidunt lectus non gravida.</p>', 'question-2', '2018-07-13 07:38:55'),
(16, 'Question 3', '<p>Morbi faucibus, risus consequat consectetur ultrices, erat arcu iaculis nunc, sit amet condimentum enim tortor ut neque. In vitae dignissim enim. Pellentesque eu vehicula ex. Aenean condimentum magna vitae sem vehicula, nec molestie nisi lacinia. Praesent feugiat risus a neque varius luctus ut a justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean lobortis ipsum ac urna elementum, euismod aliquam ipsum facilisis. Aenean eget ante eleifend, ornare velit vehicula, tempus mi. Curabitur vestibulum tellus et libero tempor, sed vehicula turpis feugiat. In in neque sit amet ipsum rhoncus tincidunt. Suspendisse dapibus mollis lacinia. Nulla facilisi. Sed suscipit ullamcorper tincidunt.</p>\n<p>Etiam interdum sem eget mauris vulputate gravida. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt nisi eget condimentum rutrum. Mauris sed turpis volutpat, facilisis lorem non, vulputate ligula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed turpis purus, convallis eu sem in, mollis ultricies libero. Pellentesque tincidunt elementum turpis, at vehicula lorem eleifend nec. Ut ac tortor id orci tincidunt sollicitudin vel sit amet neque. In efficitur, ante vitae convallis iaculis, leo est ullamcorper dui, ut imperdiet ex velit sit amet metus. Suspendisse potenti.</p>', 'question-3', '2018-07-13 07:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `foto_artikel`
--

DROP TABLE IF EXISTS `foto_artikel`;
CREATE TABLE IF NOT EXISTS `foto_artikel` (
  `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_artikel` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_artikel`
--

INSERT INTO `foto_artikel` (`id_foto`, `id_artikel`, `nama_foto`, `featured`, `token_foto`) VALUES
(1, 1, 'easter-3.jpg', 'N', '0.6678904311266203'),
(2, 1, 'easter-2.jpg', 'N', '0.41757979673928336'),
(3, 1, 'easter-1.jpg', 'Y', '0.5253016542715023'),
(4, 2, 'fruit-4.jpg', 'N', ''),
(5, 2, 'fruit-3.jpg', 'Y', ''),
(6, 2, 'fruit-2.jpg', 'N', ''),
(7, 2, 'fruit-1.jpg', 'N', ''),
(8, 3, 'landscape-3.jpg', 'N', ''),
(9, 3, 'landscape-2.jpg', 'Y', ''),
(10, 3, 'landscape-1.jpg', 'N', ''),
(11, 3, 'landscape-4.jpg', 'N', ''),
(12, 4, 'cat-3.jpg', 'N', ''),
(13, 4, 'cat-4.jpg', 'N', ''),
(14, 4, 'cat-2.jpg', 'Y', ''),
(15, 4, 'cat-1.jpg', 'N', ''),
(16, 5, 'girl-4.jpg', 'N', ''),
(17, 5, 'girl-3.jpg', 'N', ''),
(18, 5, 'girl-2.jpg', 'N', ''),
(19, 5, 'girl-1.jpg', 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `foto_artikel_temp`
--

DROP TABLE IF EXISTS `foto_artikel_temp`;
CREATE TABLE IF NOT EXISTS `foto_artikel_temp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foto_galeri`
--

DROP TABLE IF EXISTS `foto_galeri`;
CREATE TABLE IF NOT EXISTS `foto_galeri` (
  `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_galeri` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_galeri`
--

INSERT INTO `foto_galeri` (`id_foto`, `id_galeri`, `nama_foto`, `token_foto`, `deskripsi_foto`) VALUES
(1, 1, 'girl-4.jpg', '0.939550010234409', ''),
(2, 1, 'girl-3.jpg', '0.4271409737155816', ''),
(3, 1, 'girl-2.jpg', '0.46774954888371423', ''),
(4, 1, 'girl-1.jpg', '0.3533645090137574', ''),
(5, 1, 'cat-4.jpg', '0.22239919276915976', ''),
(6, 1, 'cat-3.jpg', '0.7639180419177438', ''),
(7, 1, 'cat-2.jpg', '0.7786234522803119', ''),
(8, 1, 'cat-1.jpg', '0.539613783152344', ''),
(9, 1, 'landscape-4.jpg', '0.4304041406796044', ''),
(10, 2, 'landscape-41.jpg', '0.8595888335046369', ''),
(11, 2, 'landscape-2.jpg', '0.6165677440719071', ''),
(12, 2, 'landscape-3.jpg', '0.007538945937492381', ''),
(13, 2, 'landscape-1.jpg', '0.07667537818479597', 'Cum sociis natoque penatibus et magnis dis\nparturient montes, nascetur ridiculus mus :)'),
(14, 2, 'fruit-4.jpg', '0.8091352027357575', ''),
(15, 2, 'fruit-3.jpg', '0.4320605923752492', 'Maecenas urna elit, tincidunt in dapibus nec, vehicula eu dui');

-- --------------------------------------------------------

--
-- Table structure for table `foto_galeri_temp`
--

DROP TABLE IF EXISTS `foto_galeri_temp`;
CREATE TABLE IF NOT EXISTS `foto_galeri_temp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foto_user_tmp`
--

DROP TABLE IF EXISTS `foto_user_tmp`;
CREATE TABLE IF NOT EXISTS `foto_user_tmp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_foto` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

DROP TABLE IF EXISTS `galeri`;
CREATE TABLE IF NOT EXISTS `galeri` (
  `galeri_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kategori_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `galeri_nama` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_feature_img` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_meta_keyword` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_meta_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_og_image` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_og_deskripsi` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galeri_date` datetime NOT NULL,
  `galeri_date_edit` datetime NOT NULL,
  `galeri_user` bigint(20) UNSIGNED NOT NULL,
  `galeri_user_edit` bigint(20) UNSIGNED NOT NULL,
  `galeri_status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  PRIMARY KEY (`galeri_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `kategori_id`, `galeri_nama`, `galeri_deskripsi`, `galeri_feature_img`, `galeri_url`, `galeri_meta_keyword`, `galeri_meta_deskripsi`, `galeri_og_image`, `galeri_og_deskripsi`, `galeri_date`, `galeri_date_edit`, `galeri_user`, `galeri_user_edit`, `galeri_status`) VALUES
(1, 2, 'Ut consequat ultricies est, non rhoncus mauris congue porta', '<p>Vestibulum mollis, arcu iaculis bibendum varius, velit sapien blandit metus, ac posuere lorem nulla ac dolor. Maecenas urna elit, tincidunt in dapibus nec, vehicula eu dui. Duis lacinia fringilla massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut consequat ultricies est, non rhoncus mauris congue porta. Vivamus viverra suscipit felis eget condimentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer bibendum sagittis ligula, non faucibus nulla volutpat vitae. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n<p> </p>\n<p>In aliquet quam et velit bibendum accumsan. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum vitae ipsum nec arcu semper adipiscing at ac lacus. Praesent id pellentesque orci. Morbi congue viverra nisl nec rhoncus. Integer mattis, ipsum a tincidunt commodo, lacus arcu elementum elit, at mollis eros ante ac risus. In volutpat, ante at pretium ultricies, velit magna suscipit enim, aliquet blandit massa orci nec lorem. Nulla facilisi.</p>', '', 'ut-consequat-ultricies-est-non-rhoncus-mauris-congue-porta', '', '', '', '', '2016-04-14 09:05:08', '2016-04-14 10:31:44', 1, 1, 'publish'),
(2, 2, 'Maecenas pellentesque volutpat felis', '<p>Duis eu vehicula arcu. Nulla facilisi. Maecenas pellentesque volutpat felis, quis tristique ligula luctus vel. Sed nec mi eros. Integer augue enim, sollicitudin ullamcorper mattis eget, aliquam in est. Morbi sollicitudin libero nec augue dignissim ut consectetur dui volutpat. Nulla facilisi.</p>\n<p> </p>\n<p>Mauris egestas vestibulum neque cursus tincidunt. Donec sit amet pulvinar orci. Quisque volutpat pharetra tincidunt. Fusce sapien arcu, molestie eget varius egestas, faucibus ac urna. Sed at nisi in velit egestas aliquam ut a felis. Aenean malesuada iaculis nisl, ut tempor lacus egestas consequat. Nam nibh lectus, gravida sed egestas ut, feugiat quis dolor. Donec eu leo enim, non laoreet ante. Morbi dictum tempor vulputate. Phasellus ultricies risus vel augue sagittis euismod. Vivamus tincidunt placerat nisi in aliquam. Cras quis mi ac nunc pretium aliquam. Aenean elementum erat ac metus commodo rhoncus.</p>', '', 'maecenas-pellentesque-volutpat-felis', 'test,keyword', 'test deskripsi', 'http://localhost/bpsdm/an-component/media/upload-gambar-pendukung/sparkler-677774_1280.jpg', 'deskripsi fb', '2016-04-14 10:39:15', '2016-04-15 02:56:07', 1, 1, 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `group_banner`
--

DROP TABLE IF EXISTS `group_banner`;
CREATE TABLE IF NOT EXISTS `group_banner` (
  `id_group` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_banner`
--

INSERT INTO `group_banner` (`id_group`, `nama`, `tanggal`) VALUES
(1, 'Homepage', '2021-09-21 18:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

DROP TABLE IF EXISTS `informasi`;
CREATE TABLE IF NOT EXISTS `informasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `webprivacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `termcondition` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_deskripsi` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_banner` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_media` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `develope_mode` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `logo` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `width_thumb_artikel` int(10) UNSIGNED NOT NULL DEFAULT '300',
  `width_thumb_galeri` int(10) UNSIGNED NOT NULL DEFAULT '300',
  `width_thumb_produk` int(10) UNSIGNED NOT NULL DEFAULT '500',
  `prefix_suffix_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix_suffix_sebagai` enum('prefix','suffix','none') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'prefix',
  `default_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_populer_artikel` int(11) NOT NULL DEFAULT '10',
  `max_tampil_artikel` int(11) NOT NULL DEFAULT '10',
  `max_headline_artikel` int(11) NOT NULL DEFAULT '10',
  `max_headline_galeri` int(11) NOT NULL DEFAULT '10',
  `max_tampil_galeri` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `max_headline_produk` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `max_tampil_produk` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `sleep_mode` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `sleep_sampai` datetime NOT NULL,
  `max_tampil_agenda` int(11) NOT NULL DEFAULT '10',
  `max_tampil_download` int(11) NOT NULL DEFAULT '10',
  `max_tampil_agenda_umum` int(11) NOT NULL DEFAULT '3',
  `max_tampil_download_umum` int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `nama`, `deskripsi`, `disclaimer`, `webprivacy`, `termcondition`, `meta_keyword`, `meta_deskripsi`, `default_banner`, `featured_image`, `thumbnail_media`, `favicon`, `develope_mode`, `logo`, `custom_css`, `width_thumb_artikel`, `width_thumb_galeri`, `width_thumb_produk`, `prefix_suffix_title`, `prefix_suffix_sebagai`, `default_title`, `max_populer_artikel`, `max_tampil_artikel`, `max_headline_artikel`, `max_headline_galeri`, `max_tampil_galeri`, `max_headline_produk`, `max_tampil_produk`, `sleep_mode`, `sleep_sampai`, `max_tampil_agenda`, `max_tampil_download`, `max_tampil_agenda_umum`, `max_tampil_download_umum`) VALUES
(1, 'Balai BPSDM', '', '', '', '', 'bpsdm, pupr', 'Website Portal khusus unker BPSDM', '', 'http://localhost/bpsdmcontent/an-component/media/upload-gambar-pendukung/footpath-691021_1280.jpg', '', 'http://localhost/bpsdmcontent/an-component/media/upload-gambar-pendukung/close.png', 'N', '', '/*Masukan code CSS anda disini\nGunakan flag !important*/\n', 300, 300, 500, '| Kementrian PUPR', 'suffix', 'Website Portal Unit Kerja BPSDM', 4, 10, 10, 10, 1, 10, 10, 'N', '2016-04-14 02:13:08', 10, 10, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parent` bigint(20) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `id_kategori` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug_kategori`, `id_parent`, `aktif`, `terhapus`) VALUES
(1, 'Sains', 'sains', 0, 'Y', 'N'),
(2, 'Kuliner', 'kuliner', 0, 'Y', 'N'),
(3, 'Olah Raga', 'olah-raga', 0, 'Y', 'N'),
(4, 'Pariwisata', 'pariwisata', 0, 'Y', 'N'),
(5, 'Budaya', 'budaya', 0, 'Y', 'N'),
(6, 'Produk', 'produk', 0, 'Y', 'Y'),
(7, 'Profil', 'profil', 0, 'Y', 'Y'),
(8, 'Tugas dan Fungsi', 'tugas-dan-fungsi', 7, 'Y', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

DROP TABLE IF EXISTS `kategori_galeri`;
CREATE TABLE IF NOT EXISTS `kategori_galeri` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id`, `nama_kategori`, `slug_kategori`, `aktif`, `terhapus`) VALUES
(1, 'Wedding', 'wedding', 'Y', 'N'),
(2, 'Pre- wedding ', 'pre-wedding', 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

DROP TABLE IF EXISTS `kategori_produk`;
CREATE TABLE IF NOT EXISTS `kategori_produk` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_kategori` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kontak_masuk`
--

DROP TABLE IF EXISTS `kontak_masuk`;
CREATE TABLE IF NOT EXISTS `kontak_masuk` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_created` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_code`, `menu_nama`, `menu_created`) VALUES
(1, 'horizontal', 'utama', '2016-04-14 02:12:24'),
(2, 'vertical', 'samping', '2016-04-14 02:12:24'),
(3, 'vertical2', 'tambahan 1', '2016-04-14 02:12:24'),
(4, 'vertical3', 'tambahan 2', '2016-04-14 02:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `menu_child`
--

DROP TABLE IF EXISTS `menu_child`;
CREATE TABLE IF NOT EXISTS `menu_child` (
  `menu_child_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) NOT NULL,
  `menu_child_parent` bigint(20) NOT NULL DEFAULT '0',
  `menu_child_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_target` enum('_self','_blank','_parent','_top') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `posisi` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_child_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_child`
--

INSERT INTO `menu_child` (`menu_child_id`, `menu_id`, `menu_child_parent`, `menu_child_code`, `menu_child_nama`, `menu_child_url`, `menu_child_target`, `aktif`, `posisi`) VALUES
(6, 1, 0, 'home', 'Beranda', 'http://localhost/bpsdmcontent/', '_self', 'Y', 1),
(15, 1, 0, '', 'Produk', 'http://localhost/bpsdmcontent/kategori/6-produk', '_self', 'Y', 7),
(16, 1, 17, '', 'Tugas dan Fungsi', 'http://localhost/bpsdmcontent/kategori/6-produk', '_self', 'Y', 3),
(17, 1, 0, '', 'Profil', '#', '_self', 'Y', 2),
(18, 1, 17, '', 'Struktur Organisasi', '#', '_self', 'Y', 4),
(19, 1, 17, '', 'Informasi Pejabat', '#', '_self', 'Y', 5),
(20, 1, 17, '', 'Lokasi Kantor', '#', '_self', 'Y', 6),
(21, 1, 15, '', 'Rencana Stategis', '#', '_self', 'Y', 8),
(22, 1, 15, '', 'Pengelolaan Anggaran', '#', '_self', 'Y', 9),
(23, 1, 15, '', 'Peraturan Perundang-undangan', '#', '_self', 'Y', 10),
(24, 1, 15, '', 'Informasi Kepegawaian', '#', '_self', 'Y', 11),
(25, 1, 15, '', 'NSPK', '#', '_self', 'Y', 12),
(26, 1, 15, '', 'Data dan Informasi', '#', '_self', 'Y', 13),
(27, 1, 0, '', 'Dokumentasi', '#', '_self', 'Y', 14),
(28, 1, 27, '', 'Galeri Foto', '#', '_self', 'Y', 15),
(29, 1, 27, '', 'Galeri Video', '#', '_self', 'Y', 16),
(30, 1, 0, '', 'Unduhan', '#', '_self', 'Y', 17),
(31, 1, 0, '', 'Informasi Publik', '#', '_self', 'Y', 18),
(32, 1, 0, '', 'FAQ', 'faq', '_self', 'Y', 19),
(33, 1, 0, '', 'Kontak', '#', '_self', 'Y', 20);

-- --------------------------------------------------------

--
-- Table structure for table `news_ticker`
--

DROP TABLE IF EXISTS `news_ticker`;
CREATE TABLE IF NOT EXISTS `news_ticker` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `berita` varchar(700) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_posting` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_ticker`
--

INSERT INTO `news_ticker` (`id`, `berita`, `link`, `tanggal_posting`) VALUES
(1, 'volutpat felis, quis tristique ligula luctus vel. Sed nec mi eros. Integer augue enim, sollicitudin', '#link', '2016-03-22 04:18:22'),
(2, 'Fusce sapien arcu, molestie eget varius egestas, faucibus ac urna. Sed at nisi in velit egestas aliquam ut a felis.', '#kedua', '2016-03-22 04:19:12'),
(3, 'Aliquam nulla augue, porta non sagittis quis, accumsan vitae sem', '#ketiga', '2016-03-22 04:19:28'),
(4, 'ivamus vel ipsum ac augue sodales mollis euismod nec tellus. Fusce et augue rutrum nunc semper vehicula vel semper nisl.', '#empat', '2016-03-22 04:19:56'),
(5, 'Curabitur malesuada fermentum lacus vel accumsan. Duis ornare scelerisque nulla, ac pulvinar ligula tempus sit amet ', '#test', '2016-03-22 04:20:12'),
(6, 'Vivamus luctus mi eget lorem lobortis pharetra. Phasellus at tortor quam, a volutpat purus.', '#hai', '2016-03-22 04:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `page_judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_url` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_javascript` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_status` enum('published','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `page_id_user` bigint(20) UNSIGNED NOT NULL,
  `page_id_edit` bigint(20) UNSIGNED NOT NULL,
  `page_created` datetime NOT NULL,
  `page_edited` datetime NOT NULL,
  `page_meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_judul`, `page_url`, `page_isi`, `page_foto`, `page_javascript`, `page_status`, `page_id_user`, `page_id_edit`, `page_created`, `page_edited`, `page_meta_keywords`, `page_meta_description`) VALUES
(1, 'About Us', 'about-us', '<p>test</p>', 'http://localhost/bpsdmcontent/an-component/media/upload-gambar-pendukung/sparkler-677774_1280.jpg', '', 'published', 1, 0, '2021-09-23 00:25:10', '0000-00-00 00:00:00', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `pencarian_artikel`
--

DROP TABLE IF EXISTS `pencarian_artikel`;
CREATE TABLE IF NOT EXISTS `pencarian_artikel` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clean_keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pencarian_artikel`
--

INSERT INTO `pencarian_artikel` (`id`, `keyword`, `clean_keyword`, `tanggal`, `ip`) VALUES
(1, 'sdc as ', 'sdc as', '2021-09-23 01:10:10', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `pihak_ketiga`
--

DROP TABLE IF EXISTS `pihak_ketiga`;
CREATE TABLE IF NOT EXISTS `pihak_ketiga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recaptcha_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recaptcha_secret_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script_google_analytics` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disqus_unique_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pihak_ketiga`
--

INSERT INTO `pihak_ketiga` (`id`, `recaptcha_key`, `recaptcha_secret_key`, `script_google_analytics`, `disqus_unique_name`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_email`
--

DROP TABLE IF EXISTS `smtp_email`;
CREATE TABLE IF NOT EXISTS `smtp_email` (
  `id` int(11) NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` bigint(20) NOT NULL DEFAULT '25',
  `ssl_connection` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_email`
--

INSERT INTO `smtp_email` (`id`, `host`, `user`, `password`, `nama`, `port`, `ssl_connection`) VALUES
(1, '', '', '', '', 26, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id_tag` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_posting` bigint(20) NOT NULL,
  `user_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id_tag`, `nama_tag`, `slug_tag`, `user_posting`, `user_update`) VALUES
(1, 'kebahagiaan', 'kebahagiaan', 1, 1),
(2, 'impian', 'impian', 1, 1),
(3, 'cinta', 'cinta', 1, 0),
(4, 'harapan', 'harapan', 1, 0),
(5, 'kebaikan', 'kebaikan', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
CREATE TABLE IF NOT EXISTS `tema` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_tema` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versi` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screenshot` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tema`
--

INSERT INTO `tema` (`id`, `nama_tema`, `versi`, `aktif`, `author`, `web`, `screenshot`) VALUES
(22, 'ando', '1.0', 'N', 'Suseno', 'http://www.bikininapa.com', 'screenshot.jpg'),
(23, 'bpsdm-unker', '1.0', 'Y', '', '', 'screenshot.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_user` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_user` int(11) NOT NULL,
  `avatar_user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_user` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `terdaftar` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name_user`, `nama_lengkap`, `email`, `password_user`, `level_user`, `avatar_user`, `status_user`, `terhapus`, `terdaftar`) VALUES
(1, 'kamal', 'Kamal', '', '$2y$10$jAXbt0sfq7lOC2sHzFpXjuoMZJiy8PC8XmxHXcgSNbG96Ttri0uG6', 1, 'Melliani.jpg', 'Y', 'N', '0000-00-00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
