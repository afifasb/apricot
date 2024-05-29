-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2024 at 10:03 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbalai_wil6`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `judul` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `judul`, `slug`, `deskripsi`, `tanggal_mulai`, `tanggal_selesai`, `foto`) VALUES
(3, 'Webinar Teknologi Instalasi Pengelolaan Air (IPA) SPAM Regional', 'webinar-teknologi-instalasi-pengelolaan-air-ipa-spam-regional', '<p> Diselenggarakan di Aula Majapahit Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya secara <em><strong>hybrid (online &amp; offline)</strong></em></p>', '2023-01-11', '2023-01-12', ''),
(4, 'Pelatihan Perencanaan Teknis Air Tanah', 'pelatihan-perencanaan-teknis-air-tanah', '<p>Diselenggarakan secara Distance Learning (online)</p>', '2023-01-24', '2023-02-03', ''),
(5, 'Pelatihan Pengelolaan Teknis Pembangunan Bangunan Gedung Negara (Sertifikasi)', 'pelatihan-pengelolaan-teknis-pembangunan-bangunan-gedung-negara-sertifikasi', '<p>Diselenggarakan secara Blended Learning</p>', '2023-01-30', '2023-03-13', ''),
(6, 'Pelatihan Fungsional Penata Kelola Jalan dan Jembatan Ahli Pertama', 'pelatihan-fungsional-penata-kelola-jalan-dan-jembatan-ahli-pertama', '<p>Diselenggarakan secara Distance Learning (online)</p>', '2023-03-13', '2023-04-05', ''),
(8, 'Bimbingan Teknis Manajemen Proyek Konstruksi', 'bimbingan-teknis-manajemen-proyek-konstruksi', '<p>Diselenggarakan secara Klasikal</p>\n<p>di Balai Pengembangan Kompetensi ASN Tarokan. Ds. Bulusari, Kec. Tarokan, Kabupaten Kediri</p>', '2023-03-16', '2023-03-18', ''),
(9, 'Pelatihan Manajemen  Rantai Pasok', 'pelatihan-manajemen-rantai-pasok', '<p>Diselenggarakan secara Distance Learning</p>', '2023-05-08', '2023-05-12', ''),
(10, 'Bimbingan Teknis Operasi dan Pemeliharaan Irigasi Tingkat Juru', 'bimbingan-teknis-operasi-dan-pemeliharaan-irigasi-tingkat-juru', '<p>Diselenggarakan secara Klasikal kerjasama dengan Dinas PUPR Kabupaten Ngawi</p>\n<p>di Nata Azana Hotel Solo, Jl. Moh Yamin No 25, Surakarta, Jawa Tengah.</p>', '2023-05-16', '2023-05-17', ''),
(11, 'Pelatihan KPBU Sektor Jalan dan Jembatan', 'pelatihan-kpbu-sektor-jalan-dan-jembatan', '<p>Diselenggarakan secara Distance Learning (online)</p>', '2023-05-15', '2023-05-22', ''),
(12, 'Pelatihan Kepemimpinan Administrator (PKA) Kementerian PUPR', 'pelatihan-kepemimpinan-administrator-pka-kementerian-pupr', '<p>Pelatihan dilaksanakan secara <em>Blended Learning</em></p>\n<p>dimulai dari <span style=\"font-weight: 300;\">Pembelajaran Mandiri (MOCC) - Klasikal Tahap II</span></p>', '2023-03-15', '2023-08-02', ''),
(13, 'Pelatihan dan Uji Sertifikasi Barang/Jasa Pemeintahan Level 1', 'pelatihan-dan-uji-sertifikasi-barang-jasa-pemeintahan-level-1', '<p>Pelatihan dimulai dengan Pembelajaran Mandiri (MOCC) .<br>Kemudian Klasikal di Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya</p>', '2023-05-29', '2023-06-17', ''),
(14, 'Pelatihan Calon Analisis Kebijakan', 'pelatihan-calon-analisis-kebijakan', '<p>Doselenggarakan secara <em>Distance Learning</em></p>', '2023-06-14', '2023-07-17', ''),
(15, 'Pelatihan Teknisi Laboratorium Mekanika Tanah Serta Wheel Traching Machine (WTM) Pekerjaan Jalan Dan Jembatan Kerjasama Antara Pusat Pengembangan Kompetensi Jalan, Perumahan, Dan Pengembangan Infrastruktur Wilayah Dengan Balai Besar Pelaksanaan Jalan Nasional Jawa Timur Bali', 'pelatihan-teknisi-laboratorium-mekanika-tanah-serta-wheel-traching-machine-wtm-pekerjaan-jalan-dan-jembatan-kerjasama-antara-pusat-pengembangan-kompetensi-jalan-perumahan-dan-pengembangan-infrastruktur-wilayah-dengan-balai-besar-pelaksanaan-jalan-nasional-jawa-timur-bali', '<p>Diselenggarakan Secara <em>Blended Learning</em></p>\n<p>Pembelajaran E Learning pada tanggal 10 Juli s.d 21 Juli 2023</p>\n<p>Pembelajaran Klasikal pada tanggal 24 s.d 29 Juli 2023</p>', '2023-07-10', '2023-07-29', ''),
(16, 'Workshop Manajemen Risiko di Lingkungan Kementerian PUPR', 'workshop-manajemen-risiko-di-lingkungan-kementerian-pupr', '<p>Diselenggarakan secara Klasikal</p>\n<p>11 s.d 13 Oktober 2023</p>', '2023-10-11', '2023-10-13', ''),
(17, ' Pelatihan Pemeriksaan Unit Produksi Campuran Beraspal (Asphal Mixing Plant)', 'pelatihan-pemeriksaan-unit-produksi-campuran-beraspal-asphal-mixing-plant', '<p>Dislenggarakan secara <em>Blanded Learning</em></p>\n<p>09 s.d. 18 Oktober 2023</p>', '2023-10-09', '2023-10-18', ''),
(18, 'Pelatihan Operasi dan Pemeliharaan Irigasi Tingkat Juru', 'pelatihan-operasi-dan-pemeliharaan-irigasi-tingkat-juru', '<p>Dislenggarakan secara <em>Klasikal</em></p>\n<p>01 s.d. 11 November 2023</p>', '2023-11-01', '2023-11-11', ''),
(19, 'Pelatihan Tata Persuratan dan Kearsipan', 'pelatihan-tata-persuratan-dan-kearsipan', '<p>Dislenggarakan secara <em>Blanded Learning</em></p>\n<p>06 s.d. 10 November 2023</p>', '2023-11-06', '2023-11-10', ''),
(20, 'Pelatihan Perencanaan Anggaran', 'pelatihan-perencanaan-anggaran', '<p>Dislenggarakan secara <em>Blanded Learning</em></p>\n<p>13 s.d. 22November 2023</p>', '2023-11-13', '2023-11-22', ''),
(21, 'Pelatihan Perencanaan Anggaran', 'pelatihan-perencanaan-anggaran', '<p>Dislenggarakan secara <em>Blanded Learning</em></p>\n<p>13 s.d. 22November 2023</p>', '2023-11-13', '2023-11-22', '');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `artikel_id` bigint(20) UNSIGNED NOT NULL,
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
  `artikel_kirim_api` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`artikel_id`, `artikel_judul`, `artikel_isi`, `artikel_kategori`, `artikel_tags`, `artikel_foto`, `artikel_sbg_headline`, `artikel_tgl_posting`, `artikel_id_user`, `artikel_tgl_last_edit`, `artikel_editable`, `artikel_id_user_last_edit`, `artikel_seo_url`, `artikel_meta_description`, `artikel_meta_author`, `artikel_meta_keyword`, `artikel_og_image`, `artikel_og_title`, `artikel_og_description`, `artikel_in_draft`, `artikel_aktif`, `artikel_terhapus`, `artikel_status`, `artikel_was_published`, `artikel_sesi_id`, `artikel_dibaca`, `artikel_kirim_api`) VALUES
(1, 'Webinar Teknologi IPA SPAM Regional Sebagai Upaya Pembekalan Strategi Pengolahan Air', '<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">BPSDM Kementerian PUPR melalui Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya kembali menyelenggarakan webinar, kali ini dengan tema <strong>“Teknologi Instalasi Pengolahan Air (IPA) SPAM Regional”</strong> yang dilaksanakan di kampus Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya. Webinar ini dilaksanakan secara <em>Hybrid (Virtual &amp; Klasikal), </em>dimana 30 orang peserta langsung datang di Balai dan peserta online sebanyak 142 partisipan pada Rabu, 11 Januari 2023. </span><span style=\"font-weight: 400;\">Tujuan dari diselenggarakan kegiatan webinar ini adalah untuk memberikan pembekalan maupun strategi tentang tata cara instalasi pengolahan air dari SPAM Regional.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Dalam sambutannya, Kepala Badan Sumber Daya Manusia Kementerian PUPR Khalawi AH mengatakan, bahwasanya kegiatan webinar ini merupakan bagian dari Kegiatan Accelerating Infrastructure Delivery Through Better Engineer Service Project (ESP) sebagai upaya percepatan persiapan proyek di Kementerian Pekerjaan Umum dan Perumahan Rakyat (PUPR). Kegiatan ESP di Ditjen Cipta Karya dilaksanakan dalam rangka mendukung pencapaian pembangunan infrastruktur perumahan dan permukiman yang tertuang dalam Rencana Pembangunan Jangka Menengah Nasional (RPJBMN). Kepala BPSDM juga </span><span style=\"font-weight: 400;\">menambahkan harapannya <em>“Semoga melalui kegiatan webinar ini, dapat memberikan tambahan pembekalan/wawasan peserta terhadap bagaimana cara proses instalasi pengolahan air (IPA) di bidang sanitasi\"</em>.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Materi yang dibahas pada webinar ini meliputi “Pengolahan Air Minum; Ir Anang Muchlis, Sp. PSDA Direktur Air Minum”. “Penerapan Teknologi Sistem Kontrol Digital (SCADA) Pada Instalasi Pengolahan Air Minum; Gigih Yuli Asmara, S.T Perumda Tugu Tirta Kota Malang”. “Pemakaian Teknologi Untuk Underdrain System di Filter; Sudirman, ST Direktur Operasional PDAM Tirta Asasta Kota Depok”. “Teknologi Decanter Hadirkan Pengolahan Air Minum Yang Zero Waste; Ir Margie Elise Tumbelaka, Dipl. Infrastructure Management; Direktur Operasional PT. Aetra Air Jakarta”. “ Penerapan Teknologi Membrane Untuk Pengolahan Air Minum Dan Limbah; Prof. Ir. Suprihanto Notodarmojo, Ph.D Teknik Lingkungan ITB”. “Pembangunan &amp; Pengoprasian IPA Dengan Teknologi Membrane untuk Pengolahan Air Gambut; Agus Adnan, ST Direktur PDAM Tirta Dumai Bersemai”. “Teknologi Desinfeksi Untuk Proses Pengolahan Air yang Aman; Rofiq Iqbal ST, M.Eng.,Ph. D Teknik Lingkungan ITB”.</span></p>\n<p style=\"text-align: justify;\"> </p>\n<table style=\"width: 252px;\">\n<tbody>\n<tr>\n<td style=\"width: 60.4062px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 173.594px;\"><span style=\"color: #333399;\"><em>Batara Dwi Primanda, S.I.K.</em></span></td>\n</tr>\n<tr>\n<td style=\"width: 60.4062px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 173.594px;\"><span style=\"color: #333399;\"><em>MF</em></span></td>\n</tr>\n</tbody>\n</table>\n<p> </p>', 6, '6,5,4,2,1', '', 'Y', '2023-01-25 14:16:27', 14, '2023-01-25 14:43:36', 'N', 14, 'webinar-teknologi-ipa-spam-regional-sebagai-upaya-pembekalan-strategi-pengolahan-air', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '15371252301', 817, 0),
(2, 'Core Value BerAKHLAK Sebagai Pilar Utama Inovasi ASN', '<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Sebagai Aparatur Sipil Negara (ASN) nilai-nilai dasar core value bisa menjadi pendorong atau penyemangat bagi ASN agar mampu memberikan pelayanan yang terbaik serta berkualitas baik ditingkat pusat maupun daerah. </span><span style=\"font-weight: 400;\">Secara umum yang kita ketahui Core Value ASN “BerAKHLAK” melalui Surat Edaran Menteri PANRB Nomor 20 Tahun 2021 Tentang Implementasi Core Values dan Employer Branding ASN terdiri dari Berorientasi Pelayanan, Akuntabel, Kompeten, Harmonis, Loyal, Adaptif, Kolaboratif dibuat agar mampu menyeragamkan nilai-nilai ASN di Indonesia.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Di era 4.0 sekarang ini, yang dimana semua segala aspek dipermudahkan dengan dunia digital. Dengan demikian para ASN diharapkan mampu menyesuaikan diri dengan adanya perubahan tersebut. Kata kuncinya yaitu “Inovasi”, bagaimana hal tersebut bisa di kembangkan dalam dunia kerja/ruang lingkup ASN. </span><span style=\"font-weight: 400;\">Badan Pengambangan Sumber Daya Manusia (BPSDM) berkomitmen dalam menerapkan nilai-nilai “BerAKHLAK”. Seperti halnya menjadi penggerak dalam mengendalikan bergulirnya kegiatan ialah Sistem SPIP. Sesuai peraturan kepala Badan Pengawasan Keuangan dan Pembangunan Nomor 5 tahun 2021 tentang Penilaian Maturitas Penyelenggaraan Sistem SPIP, maka kini konsep SPIP telah terintegrasi dengan penilaian manajemen risiko yang menjadi salah satu amanah RPJMN 2020-2024.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Sehubungan dengan fungsi Core Value nilai- nilai dasar BerAKHLAK diatas, akan menjadi pilar utama bagi ASN untuk selalu bersikap “Inovasi” maupun berperilaku sesuai birokrasi serta mampu menyeimbangkan ekspektasi organisasi.</span></p>\n<p style=\"text-align: justify;\"> </p>\n<table style=\"width: 252px;\">\n<tbody>\n<tr>\n<td style=\"width: 61.4479px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 176.552px;\"><span style=\"color: #333399;\"><em>Batara Dwi Primanda, S.I.K.</em></span></td>\n</tr>\n<tr>\n<td style=\"width: 61.4479px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 176.552px;\"><span style=\"color: #333399;\"><em>MF</em></span></td>\n</tr>\n</tbody>\n</table>', 4, '5,4,2,1', '', 'Y', '2023-01-26 10:37:42', 14, '2023-01-26 10:38:42', 'Y', 14, 'core-value-berakhlak-sebagai-pilar-utama-inovasi-asn', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '34285262301', 2517, 0),
(3, 'Perangi Narkoba, Selamatkan Generasi Muda', '<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Dalam kehidupan kita selalu disibukkan dengan beberapa kegiatan yang membuat kita selalu </span><em><span style=\"font-weight: 400;\">overtime </span></em><span style=\"font-weight: 400;\">hingga larut malam, khususnya untuk para pekerja. Para pekerja tersebut dituntut untuk selalu extra dalam memenuhi target yang akan dicapai, sehingga untuk mengatasinya mereka menggunakan Narkoba yang bertujuan untuk membuat kondisi tubuh tetap terjaga. Namun seiring berjalan, Narkoba tersebut akan membuat candu dan akan selalu dikonsumsi untuk keperluan lain tanpa terkontrol sekalipun dan dampaknya  akan merugikan diri sendiri dan keluarga tercinta. Kasus lain tentang narkoba juga banyak marak di kalangan remaja yang membuat masa depan dari remaja-remaja tersebut terhenti karena narkoba.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Dengan maraknya teknologi yang semakin canggih di era globalisasi ini, masyarakat luas bahkan pejabat sekalipun sangat mudah untuk melakukan transaksi (narkoba). Untuk itu, tak henti-hentinya pemerintah selalu berupaya terus untuk memutus rantai penyebaran narkoba di kalangan masyarakat Indonesia dengan menggunakan media apapun, mulai dari ajakan menggunakan lisan, spanduk, poster, video maupun foto yang di tayangkan di lingkungan sekolah, pemerintahan maupun tempat umum sekalipun.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Dalam Undang Undang Nomor 35 tahun 2009, Narkotika dibedakan dalam 3 jenis golongan, yaitu : </span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Narkotika golongan I, yaitu jenis narkotika yang berpotensi sangat tinggi menyebabkan ketergantungan, hanya digunakan untuk tujuan pengembangan ilmu pengetahuan. </span><span style=\"font-weight: 400;\">Narkotika golongan II, adalah narkotika yang berpotensi tinggi menyebabkan ketergantungan, memiliki khasiat sebagai obat namun penggunaannya hanya sebagai opsi terakhir dan dapat digunakan dalam terapi serta bertujuan mengembangkan ilmu pengetahuan. </span><span style=\"font-weight: 400;\">Narkotika golongan III, adalah narkotika yang berpotensi ringan menyebabkan ketergantungan, memiliki khasiat pengobatan dan kerap digunakan dalam terapi dan/atau bertujuan mengembangkan ilmu pengetahuan. </span><span style=\"font-weight: 400;\">Sedangkan hukuman pidana bagi pengguna narkotika diatur dalam pasal 127 dengan hukuman penjara maksimal 4 tahun, hukuman pidana denda maksimal 10.000.000.000. Pengguna narkotika juga berhak untuk melakukan rehabilitasi untuk penyembuhan dari ketergantungan terhadap narkotika.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Begitu bahayanya jika menggunakan narkoba, dari tindak pidana bahkan tentang kesehatan kita, dampak lain juga akan membuat keluarga menjadi hancur karena narkoba. </span><span style=\"font-weight: 400;\">Yuukk, mari kita jauhi narkoba dengan hal-hal positif. Mulai dengan berolahraga, istirahat yang cukup, makan-makanan yang bergizi dan beribadah. </span><span style=\"font-weight: 400;\">WAR ON DRUGS !!</span></p>\n<p style=\"text-align: justify;\"> </p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19px;\">\n<td style=\"width: 61px; height: 19px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 252.438px; height: 19px;\"><span style=\"color: #333399;\"><em>M. Wisnu Pradana Sugiarto S.Pd.</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 61px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 252.438px; height: 13px;\"><span style=\"color: #333399;\"><em>MF</em></span></td>\n</tr>\n</tbody>\n</table>', 4, '', '', 'Y', '2023-01-26 14:19:14', 14, '2023-01-26 14:23:14', 'Y', 14, 'perangi-narkoba-selamatkan-generasi-muda', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '2622262301', 1400, 0),
(4, 'Melalui Webinar, Implementasi Pembangunan Infrastruktur Sektor Air Minum di Indonesia Terwujud', '<p style=\"text-align: justify;\"><em><strong>Surabaya, Januari 2023</strong></em></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Salah satu yang disebutkan dalam Undang-undang Nomor 5 tahun 2014 dan Peraturan Pemerintah Nomor 17 tahun 2020 adalah tentang hak pengembangan kompetensi bagi setiap PNS paling sedikit 20 JP dalam 1 tahun. Salah satu cara yang dapat dilakukan adalah melalui webinar.</span></p>\n<p style=\"text-align: justify;\">Mengawali tahun anggaran 2023, Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya bekerjasama dengan Direktorat Sistem dan Strategi Penyelenggaraan Infrastruktur Permukiman, Direktorat Jenderal Cipta Karya, menyelenggarakan webinar dengan tema Teknologi Instalasi Pengolahan Air SPAM Regional. Kegiatan webinar ini merupakan bagian dari Accelerating Infrastructure Delivery Through Better Engineering Services Project (ESP) yang didanai melalui Loan ADB No. 3455-INO, sebagai upaya percepatan persiapan proyek di Kementerian Pekerjaan Umum dan Perumahan Rakyat.</p>\n<p style=\"text-align: justify;\">Kegiatan ESP di Ditjen Cipta Karya dilaksanakan dalam rangka mendukung pencapaian pembangunan infrastruktur perumahan dan permukiman yang tertuang dalam Rencana Pembangunan Jangka Menengah Nasional (RPJMN) tahun 2014-2019 dan 2020-2024 melalui penyusunan dokumen FS, DED, AMDAL, dan LARP untuk mendukung implementasi pembangunan infrastruktur sektor air minum dan air limbah/sanitasi di Indonesia. </p>\n<p style=\"text-align: justify;\">Webinar ini diselenggarakan dengan metode hybrid pada tanggal 11 – 12 Januari 2023. Diikuti 280 peserta dari Direktorat Jenderal Cipta Karya dan Dinas PU daerah. Hadir melalui ruang zoom, Kepala Badan Pengembangan Sumber Daya Manusia sekaligus membuka acara dan Direktur Sistem dan Strategi Penyelenggaraan Infrastruktur Permukiman, beserta jajaran.</p>\n<p style=\"text-align: justify;\">Tujuan dari kegiatan ini seperti yang disampaikan Bapak Khalawi adalah membekali peserta pemahaman tentang bidang air minum dan memberi gambaran terkait inovasi teknologi penyelenggaraan SPAM yang lebih hemat dalam penganggaran, ramah lingkungan, hemat energi, dan berkelanjutan.</p>\n<p style=\"text-align: justify;\">Dimoderatori Ir. Agus Ahyar, M.Sc., Direktur SPAM, Direktorat Jenderal Cipta Karya, tujuh narasumber dari praktisi dan Institut Teknologi Bandung dihujani banyak pertanyaan dari peserta. Bahkan waktu yang disediakan harus molor di tiap sesinya karena antusias peserta.</p>\n<p style=\"text-align: justify;\">Harapan peserta bahwa kegiatan webinar ini akan berkelanjutan di waktu yang akan datang dalam upaya memantau dan mengevaluasi hasil pekerjaan mereka, terkait ilmu baru yang mereka telah peroleh, termasuk juga update informasi terkait inovasi teknologi.</p>\n<p style=\"text-align: justify;\"> </p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19px;\">\n<td style=\"width: 61px; height: 19px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 252.438px; height: 19px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 61px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 252.438px; height: 13px;\"><span style=\"color: #333399;\"><em>MF</em></span></td>\n</tr>\n</tbody>\n</table>', 6, '6,5,4,3,2,1', '', 'Y', '2023-02-09 15:48:46', 14, '2023-02-09 16:15:54', 'Y', 14, 'melalui-webinar-implementasi-pembangunan-infrastruktur-sektor-air-minum-di-indonesia-terwujud', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '74111092302', 801, NULL),
(6, 'DENGAN PENGEMBANGAN KOMPETENSI OPTIMAL, PELAYANAN PUBLIK JADI MAKSIMAL', '<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Kamis, 23 Februari 2023, Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya tidak nampak seperti biasa. Banyak dijumpai kumpulan orang yang berbicara dengan ceria dan gelak tawa mengiringi percakapan. #KampusPerubahan, dengan luas kurang lebih 1,5 hektar, yang biasa terlihat lengang menjadi berwarna di hari itu. </span><span style=\"font-weight: 400;\">Ada gawe besar yang sedang disandang balai kita tercinta ini. Sekretariat Badan Pengembangan Sumber Daya Manusia, Kementerian PUPR, mempercayakan 3 kegiatan besarnya di awal tahun, diselenggarakan disini. Tiga kegiatan besar itu adalah (1). Forum Manajemen Risiko: Pembekalan Pejabat Perbendaharaan dalam Rangka Realisasi Anggaran dan Penerapan Manajemen Risiko di BPSDM, (2). Pengusulan Pensiun Periode 2024 serta proses  peremajaan data kepegawaian di Sistem Informasi ASN (SIASN) BKN, serta (3). Forum Group Discussion Penyusunan Instrumen Analisis Kebutuhan Pengembangan Kompetensi (AKPK) Bidang PUPR. </span><span style=\"font-weight: 400;\">Bagaikan kegiatan reuni akbar, para pejuang pengembangan kompetensi dari seluruh unit kerja BPSDM, dari Medan sampai Papua turut serta menghadiri. Tidak saja 9 Balai Pengembangan Kompetensi, perwakilan dari Balai Penilaian Kompetensi, Politeknik PU, dan 4 Pusat Pengembangan Kompetensi mengikuti kegiatan. Dikomandani 4 Kepala Pusat dan 10 Kepala Balai, serta dibersamai pejabat pengawas, pejabat fungsional dan pelaksana, hanya Direktur Politeknik saja yang kehadirannya diwakilkan.</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Kepala BPSDM, Bapak Dr. Ir. Khalawi Abdul Hamid, M.Sc., MM., IPU., membuka acara didampingi Sekretaris Badan, Bapak Ir. Achmad Subki, MT dan Kepala Bapekom Surabaya,  Bapak Amir Hamzah, ST.,  MT. Dengan gaya khasnya yang menghibur, Kaba selalu menyelipkan cerita-cerita menarik pengalaman 30 tahun mengabdi di Kementerian PUPR, yang sering mengundang senyum hadirin. </span><span style=\"font-weight: 400;\">Narasumber yang diundang untuk membagi ilmu kepada peserta pun tidak kalah hebatnya. Hadir secara daring, Staf Khusus Menteri PUPR Bidang Auditing dan Pengawasan Pembangunan, Bapak Dr. Binsar H. Simanjuntak. Kepala Biro Keuangan Kementerian PUPR, Bapak Budi Setiawan, S.Kom., MT dan Kepala Pusat Pembinaan Program dan Kebijakan Pengembangan Kompetensi ASN, Deputi III Lembaga Administrasi Negara RI, Ibu Erna Irawati, S.Sos.,M.Pol.Adm yang hadir di sesi siang pun menyampaikan materi menarik yang membuat antusias audien untuk bertanya. </span><span style=\"font-weight: 400;\">Bahkan di hari kedua, Forum Manajemen Risiko: Pembekalan Pejabat Perbendaharaan dalam Rangka Realisasi Anggaran dan Penerapan Manajemen Risiko di BPSDM juga menghadirkan Bapak Ir. Nicodemus Daud, M.Si., Direktur Kelembagaan dan Sumber Daya Konstruksi dari Dirjen Bina Konstruksi untuk menyampaikan materi. Ada pula narasumber dari Biro Kepegawaian dan Ortala, Biro Keuangan, Inspektorat Jenderal, dan Ditjen Bina Konstruksi. </span><span style=\"font-weight: 400;\">Seperti yang telah disampaikan dalam arahannya, Kepala Badan mengharapkan kerjasama dan partisipasi aktif dari para peserta agar tujuan dari kegiatan ini, para pelaksana tugas bisa mencapai kualitas optimal  demi memberikan pelayanan yang terbaik bagi seluruh mitra kerja BPSDM</span></p>\n<p> </p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19px;\">\n<td style=\"width: 61px; height: 19px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 252.438px; height: 19px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 61px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 252.438px; height: 13px;\"><span style=\"color: #333399;\"><em>MF</em></span></td>\n</tr>\n</tbody>\n</table>', 4, '5,4,3,2,1', '', 'Y', '2023-03-01 16:44:52', 14, '2023-03-24 14:31:32', 'N', 14, 'dengan-pengembangan-kompetensi-optimal-pelayanan-publik-jadi-maksimal', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '7529012303', 997, 0),
(7, 'Dengan Perencanaan Teknis Air Tanah yang Kompeten,  Kesejahteraan dapat Diraih', '<p><span style=\"font-weight: 400;\">Surabaya, Januari 2023</span></p>\n<p><span style=\"font-weight: 400;\">Tidak dapat dipungkiri bahwa air merupakan salah satu sumber daya alam yang sangat dibutuhkan oleh manusia dan makhluk hidup lainnya. Baik itu air permukaan maupun air tanah. </span>Indonesia merupakan salah satu negara yang air tanahnya dapat ditemui dengan mudah dimana saja. Akan tetapi potensinya berbeda-beda di setiap daerah. Dan agar pemanfaatannya dapat memberikan kesejahteraan bagi rakyat, maka diperlukan pengelolaan secara cermat, bijaksana, adil, serta merata. Dikarenakan pemanfaatannya yang membutuhkan biaya sangat mahal, maka air tanah diupayakan hanya sebagai penambah kekurangan air permukaan. Kecuali untuk pulau kecil atau daerah kering, dimana air tanah menjadi satu-satunya sumber air yang dapat dimanfaatkan. Harga mahal juga bisa dilihat dari sisi konservasi, karena pengisian kembali air tanah akan membutuhkan waktu sangat lama.</p>\n<p><span style=\"font-weight: 400;\">Pelatihan Perencanaan Teknis Air Tanah merupakan pelatihan pertama yang diselenggarakan Bapekom Surabaya di tahun anggaran 2023 ini. Empat puluh dua orang yang berasal dari Direktorat SDA, </span><span style=\"font-weight: 400;\">Kementerian PUPR dan dinas daerah tercatat sebagai peserta. Pelatihan yang dilaksanakan dengan sistem pembelajaran jarak jauh ini berlangsung pada </span><span style=\"font-weight: 400;\">24 Januari sampai dengan 3 Februari. </span><span style=\"font-weight: 400;\">Hadir di ruang zoom, Kepala Bidang Manajemen Sistem dan Pelaksanaan Pengembangan Kompetensi, Dr. Fitri Riandini, S.Si, MT sebagai pejabat pembuka sekaligus penutup pelatihan, mewakili  Kapusbangkom SDA dan Permukiman.</span></p>\n<p><span style=\"font-weight: 400;\">Berdasarkan dari rapat evaluasi untuk proses pembelajaran yang dijalani, terpilih 3 peserta terbaik. Mereka adalah </span><span style=\"font-weight: 400;\"> </span><span style=\"font-weight: 400;\">Destiana Wahyu Pratiwi, ST.</span><span style=\"font-weight: 400;\"> dari </span><span style=\"font-weight: 400;\">Balai Besar Wilayah Sungai Bengawan Solo</span><span style=\"font-weight: 400;\"> sebagai peserta terbaik pertama. </span><span style=\"font-weight: 400;\">Pitua Pardamean Lumbantoruan, A.Md.</span><span style=\"font-weight: 400;\"> dari </span><span style=\"font-weight: 400;\">Balai Wilayah Sungai Maluku</span><span style=\"font-weight: 400;\"> sebagai terbaik kedua. Dan terbaik ketiga diraih </span><span style=\"font-weight: 400;\">Sarah Siti Rahmah, A.Md.T.</span><span style=\"font-weight: 400;\"> dari  </span><span style=\"font-weight: 400;\">Balai Besar Wilayah Sungai Citarum</span><span style=\"font-weight: 400;\">. </span><span style=\"font-weight: 400;\">Febryhandi Eka Kusuma Putra, ST., MT dari Direktorat Air Tanah dan Air Baku, mewakili peserta, menyampaikan rasa terima kasihnya kepada seluruh panitia dan narasumber atas ilmu bermanfaat yang telah mereka peroleh selama 8 hari tersebut. Sekaligus berharap pembelajaran berkelanjutan kedepan yang bisa dilaksanakan secara klasikal dengan tambahan praktek lapangan.</span></p>\n<p> </p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19px;\">\n<td style=\"width: 61px; height: 19px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 252.438px; height: 19px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 61px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 252.438px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-03-24 15:39:49', 14, '2023-03-24 15:39:58', 'Y', 14, 'dengan-perencanaan-teknis-air-tanah-yang-kompeten-kesejahteraan-dapat-diraih', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '8628242303', 761, 0),
(8, 'Bimtek Kerjasama dalam Rangka Pelayanan terhadap Unit Layanan Daerah', '<p>Surabaya, Maret 2023</p>\n<p>Pejabat Pelaksana Teknis Kegiatan (PPTK) adalah pejabat pada unit SKPD yang melaksanakan satu atau beberapa kegiatan dari suatu program sesuai dengan bidang tugasnya. Tusi mereka terkait pengendalian dan pelaporan pelaksanaan kegiatan, menyiapkan dokumen anggaran atas beban pengeluaran pelaksanaan kegiatan, serta melaksanakan tugas pengadaan barang/jasa sesuai peraturan perundang-undangan.</p>\n<p>Oleh karena kruisalnya jabatan ini, BKD Kabupaten Kediri memandang perlu diberikannya pembekalan kepada para PPTK di lingkungan pemerintahan Kabupaten Kediri.</p>\n<p>Bimbingan Teknis Manajemen Proyek Konstruksi merupakan kegiatan kerjasama BKD Kabupaten Kediri dan #KampusPerubahan yang dipilih dalam upaya pengembangan kompetensi para PPTK tersebut. Diikuti 30 peserta, bimtek ini berlangsung dari 16 – 18 Maret 2023 yang dilaksanakan secara klasikal di Balai Pengembangan Kompetensi ASN Kabupaten Kediri.</p>\n<p>Total 24 jam pelajaran yang disampaikan oleh para Widyaiswara yang berasal dari BPSDM Kementerian PUPR selama 3 hari tersebut. Hadir Sekretaris Daerah Kabupaten Kediri, Dr. Mohammad Solikin, MAP., dalam pembukaan sekaligus membuka bimtek. Ditemani Plt. Kepala BKD, Heru Santoso, SE., MM., beserta jajaran, beliau menyampaikan pesan kepada peserta untuk bersungguh-sungguh mengambil sebanyak-banyaknya ilmu untuk bekal dalam bertugas. Besar harapan bahwa konsekuensi buruk dari tugas mereka nantinya bisa diminimalisir atau bahkan tidak sama sekali. Karena beliau sadar banyak celah terkait jabatan PPTK yang bisa mengantarkan jadi “temuan”. </p>\n<p>Kerjasama dengan Pemerintah Kabupaten Kediri kali ini bukanlah yang pertama dilakukan Bapekom Surabaya. Ada riwayat bahwa #KampusPerubahan telah dipercaya 2 kali pada masa sebelumnya sebagai pengampu pelatihan. Semoga kerjasama ini semakin bersemai di waktu mendatang dalam rangka pengembangan kompetensi ASN</p>\n<p> </p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19px;\">\n<td style=\"width: 60.9062px; height: 19px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 251.531px; height: 19px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 60.9062px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 251.531px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-04-04 11:05:46', 14, '2023-04-04 11:05:54', 'Y', 14, 'bimtek-kerjasama-dalam-rangka-pelayanan-terhadap-unit-layanan-daerah', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '6515042304', 833, 0),
(9, 'Selain Kualitas, Estetika Bangunan juga Merupakan Daya Tarik Infrastruktur', '<p>Surabaya, Maret 2023</p>\n<p>Menteri PUPR dalam setiap arahannya selalu menekankan bahwa terkait infrastruktur permukiman yang dilaksanakan oleh Ditjen Cipta Karya, untuk selalu mengedepankan kualitas dan nilai estetika sebagai unsur daya tarik infrastruktur.</p>\n<p>Tiga hal yang diperlukan dalam upaya menjamin kualitas pekerjaan, yaitu : (1). Memenuhi kriteria kesiapan kegiatan dan melakukan perencanaan yang berkualitas pada tahap Pra Konstruksi, (2). Melakukan pengawasan yang ketat pada tahap Konstruksi, (3). Melakukan evaluasi pada tahap Pasca Konstruksi. Dan itu semua hanya tidak terlepas dari kompetensi sumber daya manusia yang terlibat didalamnya.</p>\n<p>Pelatihan Pengelola Teknis Pembangunan Bangunan Gedung Negara yang diselenggarakan Bapekom Surabaya adalah salah satu upaya pengembangan kompetensi bidang permukiman.</p>\n<p>Diikuti 33 orang peserta yang berasal dari unit kerja di Ditjen Cipta Karya Kementerian PUPR dan dinas daerah, pelatihan ini dilaksanakan secara blended learning sejak 30 Januari sampai 13 Maret 2023. Selain belajar baik secara daring maupun klasikal di #KampusPerubahan, para peserta juga difasilitasi dengan proses magang. Dan berdasarkan rekap hasil evaluasi terhadap nilai akademik maupun non akademik, peserta yang dinyatakan lulus berjumlah 31 dari 33 orang yang tercatat mengikuti.</p>\n<p>Dalam arahannya Kepala Bidang Manajemen Sistem dan Pelaksanaan Pengembangan Kompetensi, Pusbangkom SDA dan Permukiman mengingatkan bahwa untuk memantau penerapan pengetahuan dan keterampilan hasil pelatihan oleh para alumni, 6 bulan setelah mengikuti pelatihan akan dilaksanakan evaluasi yang nanti akan dinilai oleh atasan, sejawat, maupun bawahan</p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19px;\">\n<td style=\"width: 60.9062px; height: 19px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 251.531px; height: 19px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 60.9062px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 251.531px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-04-05 11:27:25', 14, '2023-04-05 11:27:55', 'Y', 14, 'selain-kualitas-estetika-bangunan-juga-merupakan-daya-tarik-infrastruktur', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '25359052304', 927, 0),
(10, 'Dengan Penerapan NSPK SIDLACOM Tepat, Pembangunan Jalan-Jembatan Tercapai', '<p>Surabaya, Maret 2023</p>\n<p>Di medio Maret ini #KampusPerubahan memiliki agenda pelatihan yang secara penuh dilaksanakan dengan metode pembelajaran jarak jauh. Tepatnya di 13 Maret sampai dengan 5 April 2023. Pelatihan yang dimaksud adalah Pelatihan Fungsional Penata Kelola Jalan dan Jembatan Ahli Pertama.</p>\n<p>Pelatihan ini merupakan syarat bagi penata kelola jalan dan jembatan ahli pertama untuk kenaikan ke jenjang fungsional muda. Hal tersebut termaktub dalam Permen PANRB Nomor 81 Tahun 2021 pasal 14 dan ayat 4. Sebagian besar mata pelatihan yang disampaikan terkait dengan penyelenggaran teknis jalan dan jembatan, meliputi teknik perancangan, pelaksanaan, serta preservasi jalan dan jembatan. Sementara terkait administrasi, peserta juga diberikan pengenalan SAKIP Program dan Anggaran, penyampaian kebijakan jafung, dan cara penyusunan DUPAK.</p>\n<p>Seperti yang disampaikan Kasie Penyelenggara, Alfan Bramestia, dalam laporannya, bahwa tujuan pelatihan ini adalah agar peserta mampu memahami kebijakan umum jabatan fungsional, mampu menginformasikan dan memberi masukan penerapan NSPK terkait SIDLACOM (survei, investigasi, desain, akuisisi tanah, konstruksi, operasi dan pemeliharaan).</p>\n<p>Peserta yang terpilih untuk mengikuti, berasal dari unit kerja Ditjen Bina Marga Kementerian PUPR serta Dinas Pekerjaan Umum Bina Marga dan Penataan Ruang di kabupaten/kota wilayah layanan Bapekom Surabaya. Total hadir secara virtual sejumlah 33 orang.</p>\n<p>Membacakan arahan Kapusbangkom Jalan, Jembatan, dan PIW, Bapak Asep Hilmansyah, ST., MT., mengharapkan bahwa pelatihan ini dapat membantu meningkatkan kompetensi jabatan fungsional. Hal tersebut sejalan dengan fungsinya sebagai pendukung kinerja organisasi dalam tercapainya pembangunan infrastruktur.</p>\n<p>Beliau juga menyadari bahwa pembelajaran jarak jauh memang memiliki beberapa kendala. Tapi dengan komitmen dari peserta, unit pengutus, maupun kontrol kualitas dari panitia penyelenggara, capaian keberhasilan pelatihan bisa maksimal</p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19.7031px;\">\n<td style=\"width: 60.9062px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 251.531px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 60.9062px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 251.531px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-04-18 11:32:19', 14, '2023-04-18 11:32:35', 'Y', 14, 'dengan-penerapan-nspk-sidlacom-tepat-pembangunan-jalan-jembatan-tercapai', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '0450182304', 1193, 0),
(11, 'TERTIB PENYELENGGARAAN KONSTRUKSI DENGAN PENGAWASAN KETAT SISTEM RANTAI PASOK', '<p>Surabaya, Mei 2023</p>\n<p>Manajemen Rantai Pasok adalah manajemen yang meliputi perencanaan dan pengelolaan semua kegiatan yang terlibat dalam identifikasi sumber daya dan pengadaan, konversi, serta semua kegiatan manajemen logistik. MRP lazim digunakan sebagai alat dukung pencapaian tujuan program pemerintah.</p>\n<p>Dalam Undang-Undang No. 2 Tahun 2017 tentang Jasa Konstruksi diamanatkan untuk mengembangkan sistem rantai pasok Jasa Konstruksi serta meningkatkan penggunaan standar mutu material dan peralatan sesuai dengan Standar Nasional Indonesia.</p>\n<p>Sementara dalam Peraturan Menteri PUPR No. 7 Tahun 2021 tentang Pencatatan Sumber Daya Material dan Peralatan Konstruksi disebutkan bahwa pencatatan SDMPK harus dilaksanakan secara sederhana, mudah, cepat, akurat, informatif, dan tanpa dipungut biaya. Yang selanjutnya dicatatkan dalam Sistem Informasi Jasa Konstruksi Terintegrasi.</p>\n<p>Menindaklanjuti amanat tersebut, Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya mengawali Mei ini dengan Pelatihan Manajemen Rantai Pasok<strong>. </strong>Pelatihan yang direncanakan berlangsung dari 8 – 12 Mei, dilaksanakan secara <em>distance learning</em>, dan iikuti oleh 30 peserta yang berasal dari unit kerja Kementerian PUPR.</p>\n<p>Pelatihan yang seremonialnya dibuka oleh Kapusbangom Manajeman ini bertujuan agar peserta mampu melakukan tugas dan tanggung jawabnya terkait manajemen rantai pasok konstruksi. Karena dalam pelaksanaan tertib penyelenggaraan konstruksi masih banyak ditemui kendala, antara lain : (1) Penerapan sistem RP Konstruksi masih terbatas, (2) Penilaian terhadap RP belum menjadi bagian dari persyaratan dalam penentuan pemenang PBJ, dan (3) Belum dilakukan pengawasan yang konsisten terhadap realisasi RP dalam PBJ Konstruksi</p>\n<p>Oleh sebab itu, seluruh pemangku kepentingan jasa konstruksi perlu melakukan pengembangan sistem rantai pasok konstruksi secara sistematis dan terencana. Dimulai sejak tahap perencanaan proyek, biaya, waktu, sumber daya manusia, Badan Usaha, teknologi, serta material dan peralatan konstruksi.</p>\n<p>Dalam arahannya, Ir. Moh Adam, MM. mengingatkan agar peserta bersungguh-sungguh mengikuti seluruh proses pembelajaran. Tidak terlalu sering dan berlama-lama meninggalkan ruang zoom, juga tidak membagi konsentrasi dengan mengerjakan tugas kantor, supaya manfaat yang diperoleh juga maksimal</p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19.7031px;\">\n<td style=\"width: 60.875px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 251.562px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 60.875px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 251.562px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-05-10 13:40:34', 14, '2023-05-10 13:42:36', 'Y', 14, 'tertib-penyelenggaraan-konstruksi-dengan-pengawasan-ketat-sistem-rantai-pasok', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '36150102305', 909, 0),
(12, ' Pemimpin Amanah Merupakan Kunci Keberhasilan Organisasi ', '<p>Surabaya, Mei 2023</p>\n<p>Isu-isu strategis Kementerian PUPR adalah terkait pemenuhan kebutuhan infrastruktur. Ekspektasi masyarakat yang semakin tinggi, tugas yang lebih rumit dan menantang, menjadi sebab munculnya kepemimpinan strategis.</p>\n<p>Salah satu determinan utama dalam kehidupan organisasi, termasuk di sektor publik, adalah kepemimpinan. Kepemimpinan mempunyai peran sentral dalam kehidupan organisasi. Tanpa adanya kepemimpinan yang baik, akan sangat sulit bagi organisasi publik untuk mencapai tujuannya. Bahkan begitu pentingnya masalah kepemimpinan ini, menjadikan pemimpin selalu sebagai fokus atensi tentang penyebab keberhasilan atau kegagalan suatu organisasi.</p>\n<p>Pelatihan Kepemimpinan Administrator, yang dilaksanakan Bapekom Surabaya sejak 15 Maret sampai 2 Agustus 2023 ini, adalah salah satu upaya untuk meningkatkan kompetensi para pemimpin tersebut. Pelatihan ini diikuti oleh 29 pejabat administrator dan pejabat fungsional terpilih, dari 29 unit kerja di Kementerian PUPR. Sebanyak 735 jam pelajaran atau setara dengan 105 hari kalender pelatihan disajikan dalam 6 tahapan metode pembelajaran.</p>\n<p>Pelatihan yang seremonial pembukaannya dipimpin Sekretaris Badan Pengembangan Sumber Daya Manusia, dilaksanakan pada Rabu, 10 Mei 2023, di #KampusPerubahan. Didampingi Kapusbangkom Manajemen, Ir. Moh Adam, MM dan Kepala Bapekom Surabaya, Amir Hamzah, ST., MT., Ir. Achmad Subki, MT., mengingatkan bahwa seorang pemimpin harus selalu menjunjung nilai integritas, loyalitas, dan profesionalitas dalam menjalankan amanah profesinya. Mampu bekerjasama, berkoordinasi, serta menggerakkan setiap yang ia pimpin untuk bersama-sama memajukan organisasi. Dengan demikian, tujuan organisasi dan terlebih, harapan masyarakat akan mampu dipenuhi. Karena sejatinya, pejabat publik adalah pelayan masyarakat. Dan kepuasan masyarakat adalah tolak ukur keberhasilan suatu layanan</p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19.7031px;\">\n<td style=\"width: 60.875px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 251.562px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 60.875px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 251.562px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-05-17 11:31:15', 14, '2023-05-17 11:31:22', 'Y', 14, 'pemimpin-amanah-merupakan-kunci-keberhasilan-organisasi', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '7278172305', 944, 0),
(13, 'KPBU sebagai Upaya Pembangunan Jalan dan Jembatan', '<p>Surabaya, Mei 2023</p>\n<p>KPBU merupakan skema kerja sama antara badan usaha dengan pemerintah dalam menyediakan infrastruktur dengan spesifikasi yang telah ditetapkan pemerintah. Penyelenggaraan kerja sama tersebut menggunakan sebagian atau seluruh sumber daya badan usaha. Terdapat transfer risiko dari pemerintah kepada badan usaha.</p>\n<p>Dengan memanfaatkan skema KPBU, pemerintah lebih memiliki kesempatan menyediakan layanan infrastruktur yang memadai kepada publik dengan lebih efektif, efisien, akuntabel, dan berkesinambungan.</p>\n<p>Secara garis besar, skema KPBU sektor jalan dan jembatan, mencakup sektor jalan tol dan sektor jalan non tol, baik <em>solicited</em> (prakarsa oleh pemerintah) maupun <em>unsolicited</em> (prakarsa oleh badan usaha).</p>\n<p>Pembebasan lahan merupakan faktor penghambat terbesar dalam pembangunan infrastruktur. Terhambatnya tahapan ini berakibat tidak terlaksananya tahap pembangunan berikutnya. Oleh sebab keterbatasan anggaran, pemerintah hanya mampu menyediakan 30% dari total APBN untuk pembangunan infrastruktur. Maka, skema KPBU menjadi salah satu solusi.</p>\n<p>Pelatihan KPBU Sektor Jalan dan Jembatan yang diselenggarakan oleh Bapekom Surabaya merupakan upaya dalam memenuhi kompetensi teknis bidang pembiayaan infrastruktur pekerjaan umum dan perumahan serta kompetensi teknis bidang bina marga.</p>\n<p>Pelatihan yang dilaksanakan secara <em>distance learning</em> pada 15-22 Mei 2023, diikuti oleh 25 pegawai dari Ditjen Bina Marga Kementerian PUPR dan dinas daerah. Dibuka oleh Sekretaris BPSDM, Ir. Achmad Subki, MT., direncanakan, peserta akan memperoleh 33 jam pelajaran terkait perencanaan, tahapan pembiayaan, dan penyusunan dokumen KPBU sektor jalan dan jembatan yang sesuai dengan peraturan dan kebijakan yang berlaku.</p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19.7031px;\">\n<td style=\"width: 60.875px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 251.562px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 60.875px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 251.562px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-05-17 11:57:28', 14, '2023-05-17 11:57:36', 'Y', 14, 'kpbu-sebagai-upaya-pembangunan-jalan-dan-jembatan', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '3662172305', 969, 0),
(14, 'Operasi dan Pemeliharaan Irigasi Diperhatikan, Ketahanan Pangan Terwujud', '<p>Surakarta, Mei 2023</p>\n<p>Irigasi atau pengairan diartikan sebagai upaya yang dilakukan manusia untuk mengairi lahan pertanian. Fungsinya adalah mendukung peningkatan produksi pertanian dalam rangka ketahanan pangan nasional dan kesejahteraan masyarakat, khususnya para petani.</p>\n<p>Kondisi jaringan irigasi tentunya akan menurun seiring berjalannya waktu dan penggunaannya. Kegiatan operasi jaringan irigasi memiliki peranan penting untuk menjaga agar pengaturan dan pelayanan air dapat terlaksana sesuai dengan perencanaannya. Sedangkan kegiatan pemeliharaan jaringan irigasi berguna dalam menjaga jaringan irigasi untuk dapat terus berfungsi secara optimal.</p>\n<p>Kurang diprioritaskannya kegiatan O&amp;P jika dibandingkan dengan kegiatan pembangunan baru atau rehabilitasi jaringan irigasi, kualitas maupun kuantitas SDM pelaksana O&amp;P turut mempengaruhi keberlanjutan dan keoptimalan fungsi jaringan irigasi.</p>\n<p>Dalam pelaksanaannya, telah ditetapkan kelembagaan irigasi dengan tugas dan fungsinya masing-masing. Termasuk petugas Juru Pengairan yang menjadi ujung tombak pemerintah dalam melaksanakan kegiatan operasi dan pemeliharaan irigasi secara rutin di lapangan.</p>\n<p>Juru memiliki peran penting untuk membantu Pengamat atau UPTD dalam melaksanakan tugas yang berkaitan dengan operasi dan pemeliharaan. Oleh karena itu, diperlukan juru-juru pengairan yang handal dan memiliki kompetensi kerja guna menunjang tugasnya sehari-hari. Bimbingan Teknis OP Irigasi Tingkat Juru merupakan salah satu upaya untuk mewujudkan hal tersebut.</p>\n<p>Bekerjasama dengan Dinas Pekerjaan Umum dan Penataan Ruang Kabupaten Ngawi, #KampusPerubahan menjalankan fungsi pelayanannya dalam meningkatkan kompetensi Juru Pengairan pada 16-17 Mei 2023. Sejumlah 44 peserta turut hadir di bimtek yang dibuka oleh Kapusbangkom SDAP, Ir. Alexander Leda, ST., MT., didampingi Sekretaris Dinas, Widya Decky Hariyono, ST., MM dan Kepala Bapekom Surabaya, Amir Hamzah, ST., MT.</p>\n<p>Melalui bimtek ini, peserta akan mendapatkan wawasan mengenai kelembagaan dan jaringan irigasi secara umum, pelaksanaan kegiatan operasi dan pemeliharaan jaringan irigasi, serta kemampuan dalam pengisian blanko. Sehingga diharapkan akan ada peningkatan kompetensi dan kinerja saat mengaplikasikan ilmu tersebut di unit kerjanya masing-masing.<br><br></p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19.7031px;\">\n<td style=\"width: 60.875px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 251.562px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 60.875px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 251.562px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-05-29 11:26:35', 14, '2023-05-29 11:26:42', 'Y', 14, 'operasi-dan-pemeliharaan-irigasi-diperhatikan-ketahanan-pangan-terwujud', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '49136292305', 781, 0),
(16, 'SELAIN METODE PENYAMPURAN ASPAL HARUS SESUAI SOP, SDM HANDAL JUGA DIBUTUHKAN SEBAGAI PELAKSANA KERJA', '<p>Surabaya, Oktober 2023</p>\n<p>Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya mengawali bulan Oktober ini dengan melaksanakan Pelatihan Pemeriksaan Unit Produksi Campuran Beraspal. Pelatihan bidang jalan dan jembatan ini adalah dalam rangka memenuhi kompetensi teknis ASN, sesuai amanah Peraturan Menteri PUPR Nomor 7 Tahun 2020 tentang Standar Kompetensi Jabatan Aparatur Sipil Negara Bidang Teknik Pekerjaan Umum dan Perumahan Rakyat</p>\n<p>Pelatihan yang dirancang secara blended learning ini dibuka oleh Kepala Bidang Manajemen Sistem dan Pelaksanaan Pengembangan Kompetensi dari Pusbangkom JPW. Pelatihan yang direncanakan berlangsung dari tanggal 9-18 Oktober ini diikuti 37 peserta dari Kementerian PUPR dan Dinas Daerah.</p>\n<p>Sebanyak 43 jam pelajaran disiapkan demi memenuhi kompetensi dasar peserta. Mampu menjelaskan fungsi, cara kerja, dan pengoperasian komponen serta standar kelaikan operasi komponen unit produksi campuran beraspal adalah merupakan standar kompetensi kelulusan bagi seluruh peserta.</p>\n<p>Seluruh peserta adalah orang-orang terpilih, baik secara kriteria maupun atas pilihan pimpinan. Besar harapan, agar kesempatan ini dimanfaatkan sebaik-baiknya untuk meningkatkan kinerja organisasi. Demikian Ero, S.Pd., M.Pd.,dalam membacakan arahan Kepala BPSDM.</p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19.7031px;\">\n<td style=\"width: 60.875px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 251.562px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 60.875px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 251.562px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-10-12 10:47:54', 14, '2023-10-12 10:48:01', 'Y', 14, 'selain-metode-penyampuran-aspal-harus-sesuai-sop-sdm-handal-juga-dibutuhkan-sebagai-pelaksana-kerja', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '1570122310', 270, 0),
(17, 'WORKSHOP MANAJEMEN RISIKO DALAM RANGKA  PENCAPAIAN TUJUAN ORGANISASI', '<p>Surabaya, Oktober 2023</p>\n<p>Tata kelola pemerintahan yang semakin terbuka berimbas pada tuntutan masyarakat dalam perbaikan pelayanan. Tak pelak, penyelenggara pemerintahan dihadapkan pada berbagai risiko yang harus dikelola agar perbaikan pelayanan dapat tercapai.</p>\n<p>Kementerian PUPR yang ditunjuk sebagai penyelenggara dan pemelihara infrastruktur pun tidak terlepas dari risiko. Dengan 96 unit kerja Eselon II, 264 Balai Besar/Balai Wilayah, dan 703 Satuan Kerja yang tersebar di 34 provinsi, dipastikan perlunya pengelolaan risiko agar tidak mengganggu tugas dan fungsinya</p>\n<p>Setiap pelaksana publik dituntut untuk memahami tujuan organisasi dan risiko-risiko yang dapat menghambat pencapaian tujuan organisasi. Selain itu, mereka juga harus mampu memahami peran dan berpartisipasi aktif dalam pelaksanaan Manajemen Risiko</p>\n<p>Sebagai bentuk implementasi Peraturan Menteri PUPR No. 20 Tahun 2018 tentang Penyelengggraan SPIP di Kementerian PUPR, Badan Pengembangan SDM menyelenggarakan Workshop Manajemen Risiko di Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya.</p>\n<p>Workshop yang diagendakan berlangsung dari 11-13 Oktober ini bertujuan untuk menyamakan persepsi diantara para pengelola resiko di levelnya masing-masing. Workshop yang dibuka oleh Kepala Pusat Pengembangan Kompetensi Manajemen, Bp Ir. Moeh Adam, MM., ini diikuti 26 peserta dari unit dan satuan kerja di Kementerian PUPR.</p>\n<p>Dalam arahannya beliau juga mengingatkan peran pimpinan dalam manajemen risiko, yaitu dengan menciptakan budaya sadar risiko dan memberikan fasilitas untuk pegawai dalam meningkatkan kompetensi dan ketrerampilan terkait manajemen risiko.</p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19.7031px;\">\n<td style=\"width: 60.875px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 251.562px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 60.875px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 251.562px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-10-12 10:54:04', 14, '2023-10-12 10:54:12', 'Y', 14, 'workshop-manajemen-risiko-dalam-rangka-pencapaian-tujuan-organisasi', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '178122310', 238, 0);
INSERT INTO `artikel` (`artikel_id`, `artikel_judul`, `artikel_isi`, `artikel_kategori`, `artikel_tags`, `artikel_foto`, `artikel_sbg_headline`, `artikel_tgl_posting`, `artikel_id_user`, `artikel_tgl_last_edit`, `artikel_editable`, `artikel_id_user_last_edit`, `artikel_seo_url`, `artikel_meta_description`, `artikel_meta_author`, `artikel_meta_keyword`, `artikel_og_image`, `artikel_og_title`, `artikel_og_description`, `artikel_in_draft`, `artikel_aktif`, `artikel_terhapus`, `artikel_status`, `artikel_was_published`, `artikel_sesi_id`, `artikel_dibaca`, `artikel_kirim_api`) VALUES
(18, 'BERUPAYA MEMANTASKAN DIRI JADI KUNCI KEBERHASILAN TRAINER DALAM MENDIDIK', '<p>TOT Penghunian dan Pengelolaan Rumah Susun merupakan program kerjasama Pusat Pengembangan Kompetensi Jalan, Perumahan, dan Pengembangan Infrastruktur Wilayah dan Direktorat Jenderal Perumahan, yang penyelenggaraannya dilaksanakan oleh Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya</p>\n<p>Pelatihan yang prosesi pembukaannya dilakukan pada Rabu pagi, 18 Oktober 2023, secara zoom meeting ini diikuti 20 calon trainer. Dengan 70 jam pelajaran terprogram, diharapkan para peserta nantinya, mampu menyampaikan materi terkait penerapan tahapan penyiapan dan pengembangan aspek penghunian dan pengelolaan rumah susun.</p>\n<p>Pelatihan yang dibuka Kepala Pusat Pengembangan Kompetensi Jalan, Perumahan, dan Pengembangan Infrastruktur Wilayah ini dilaksanakan secara blended learning. Untuk jadwal e-learning dilaksanakan pada 18 s.d 27 Oktober dan untuk pembelajaran klasikal pada 30 Oktober s.d 01 November, akan diselenggarakan di #KampusPerubahan, Bapekom Surabaya.</p>\n<p>Dalam arahannya, Dr. Doedoeng Zaenal Arifin, ST., MT. berpesan bahwa para calon trainer harus berupaya memantaskan diri, mengingat pelatihan ini merupakan pelatihan tingkat advance. Dua peran yang dituntut bagi alumni, yaitu paham secara substansi teknis penghunian dan pengelolaan rusun dan mencetak trainer yang berperan sebagai agen yang bisa mentransfer ilmu kepada para pengelola rusun lainnya di wilayah kerja atau binaannya sehingga mampu melakukan penerapan, penyiapan, dan peningkatan kapasitas.</p>\n<p>Mengelola rusun itu unik dan menarik, lanjut beliau, karena ada aspek sosiologis yang terlibat. Mampu menanamkan kepada pengelola rusun untuk melibatkan soul dan mampu mengayomi penghuni adalah nilai-nilai yang harus ditanamkan seorang trainer.</p>\n<p>Menukil pepatah lama..“Saya dengar, saya lupa. Saya tulis, saya ingat. Saya lakukan, saya paham”. Beliau mengingatkan kepada para peserta untuk membuat kontribusi nyata sebagai trainer agar ilmu yang diperoleh dapat bermanfaat. Karena banyak orang mampu (aspek kognitif), tapi tidak banyak orang mau (motivasi). Dan 3 hal yang mampu mendorong/memotivasi seseorang untuk melakukan sesuatu, yaitu kebutuhan akan kekuasaan (power), hubungan dengan pihak lain (affiliation), dan prestasi (achievement), demikian pesan terakhir Kapus.</p>\n<table style=\"width: 328.438px;\">\n<tbody>\n<tr style=\"height: 19.7031px;\">\n<td style=\"width: 60.875px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Penuilis</em></span></td>\n<td style=\"width: 251.562px; height: 19.7031px;\"><span style=\"color: #333399;\"><em>Sarah Akib</em></span></td>\n</tr>\n<tr style=\"height: 13px;\">\n<td style=\"width: 60.875px; height: 13px;\"><span style=\"color: #333399;\"><em>Editor</em></span></td>\n<td style=\"width: 251.562px; height: 13px;\"><span style=\"color: #333399;\"><em>WP</em></span></td>\n</tr>\n</tbody>\n</table>', 9, '5,4,3,2,1', '', 'Y', '2023-10-21 10:44:27', 14, '2023-12-05 16:08:00', 'Y', 14, 'berupaya-memantaskan-diri-jadi-kunci-keberhasilan-trainer-dalam-mendidik', '', '', '', '', '', '', 'N', 'Y', 'N', 'publish', 'Y', '60102212310', 217, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner_depan`
--

CREATE TABLE `banner_depan` (
  `id` int(11) NOT NULL,
  `gambar` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_href` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_depan`
--

INSERT INTO `banner_depan` (`id`, `gambar`, `header`, `caption`, `link_href`, `link_text`) VALUES
(23, 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/Banner/Narkoba.jpg', '', ' ', 'https://pu.go.id/s/p4gn', ''),
(38, 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/WEB_BANNER_BERAKHLAK.jpg', '', ' ', '', ''),
(42, 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/WEB_BANNER_PAKAIAN_DINAS.jpg', '', '', '', ''),
(50, 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/WEB_BANNER_SELAMAT_DATANG.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_item`
--

CREATE TABLE `banner_item` (
  `id` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `gambar` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alttext` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_href` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_singkat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_fb` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `nama`, `foto`, `deskripsi_singkat`, `deskripsi`, `link_fb`) VALUES
(1, 'Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/WhatsApp%20Image%202022-07-05%20at%2015.35.11_1.jpeg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_download` bigint(20) UNSIGNED NOT NULL,
  `nama_file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `file`, `jumlah_download`, `nama_file`, `slug`, `deskripsi`) VALUES
(3, '20160229022038_RENSTRABPSDM.pdf', 1, 'Renstra BPSDM Kementerian PUPR Tahun 2015-2019', 'renstra-bpsdm-kementerian-pupr-tahun-2015-2019', '<p>File Rencana Strategis Badan Pengembangan Sumber Daya Manusia Kementerian PUPR Tahun 2015 - 2019</p>'),
(4, '20210104020504_RenstraBPSDM2020-2024.pdf', 0, 'Renstra BPSDM Kementerian PUPR Tahun 2020-2024', 'renstra-bpsdm-kementerian-pupr-tahun-2020-2024', '<p>File Rencana Strategis Badan Pengembangan Sumber Daya Manusia Kementerian PUPR Tahun 2020 - 2024</p>'),
(5, 'scan0046.pdf', 1, 'File Contoh', 'file-contoh', '<p>Surat undangan</p>'),
(6, 'SIBB.jpeg', 0, 'testing download', 'testing-download', '<p>testing download</p>');

-- --------------------------------------------------------

--
-- Table structure for table `download_temp`
--

CREATE TABLE `download_temp` (
  `id` int(11) NOT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_masuk`
--

CREATE TABLE `email_masuk` (
  `email_id` int(11) NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `pertanyaan`, `jawaban`, `slug`, `tanggal`) VALUES
(14, 'Question 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et dapibus dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean nibh justo, varius vitae tempor eu, gravida lacinia libero. Phasellus id ex tellus. Fusce rhoncus lectus ac suscipit venenatis. Fusce faucibus aliquet pharetra. Curabitur feugiat congue neque quis accumsan. Vestibulum ut leo volutpat, gravida enim non, maximus erat. Sed bibendum ornare egestas. Vivamus in ex id mi dignissim laoreet ut non dui. Etiam ut egestas metus. Maecenas condimentum iaculis purus.</p>\n<p>Mauris porttitor, erat et mollis cursus, risus turpis vestibulum erat, in pulvinar turpis metus in lacus. Sed laoreet faucibus accumsan. Curabitur luctus mollis nisl, eu placerat massa interdum eu. Maecenas nec ipsum ipsum. Cras a nulla finibus, eleifend ex in, mollis odio. Suspendisse maximus tortor sapien, in iaculis leo rhoncus in. Pellentesque ultrices diam congue dapibus scelerisque.</p>', 'question-1', '2018-07-10 02:50:26'),
(15, 'Question 2', '<p>Morbi non accumsan odio. Nulla tortor tortor, semper a justo quis, porta consequat mi. Nullam quis ante at felis dapibus hendrerit et non lectus. Pellentesque a aliquet justo. Etiam mauris urna, scelerisque vel ex nec, ultrices accumsan libero. Etiam auctor ipsum sit amet porta dignissim. Etiam enim lectus, tempus quis placerat maximus, posuere ut arcu. Nulla felis leo, vestibulum non eleifend congue, congue vel turpis. Nulla at enim consectetur, egestas purus ac, eleifend sem. Aenean malesuada congue venenatis. Sed nec viverra turpis, eget pharetra augue. Cras rutrum quam vitae ipsum interdum, eu elementum nisi consectetur.</p>\n<p>Phasellus in diam imperdiet, finibus tortor nec, ullamcorper est. Nam commodo felis at quam venenatis, eu dictum felis feugiat. Aliquam id orci dolor. In luctus mi vitae orci suscipit, vitae dignissim enim porttitor. Pellentesque lectus odio, mollis ac aliquam in, dapibus eu velit. Nullam mauris ligula, dictum non elit eleifend, venenatis dignissim purus. Cras maximus porttitor dui elementum auctor. Pellentesque accumsan metus vitae egestas vehicula.</p>\n<p><img src=\"http://localhost/bpsdm/an-component/media/upload-gambar-pendukung/man-489744_1280.jpg\" alt=\"man-489744_1280\"></p>\n<p>Mauris porta quis elit quis tincidunt. Proin at aliquet augue, eu auctor augue. Vivamus consequat risus quis dolor iaculis scelerisque. Sed eu posuere turpis, a tincidunt nunc. Maecenas sit amet metus eget purus ultrices porta. Sed eleifend, eros sit amet semper pulvinar, est quam sollicitudin velit, eu mollis felis enim vel enim. Proin tincidunt ut diam ac faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus ac pharetra arcu. Morbi facilisis, quam rhoncus laoreet egestas, neque urna euismod purus, sed rutrum mi lacus sed eros. Duis ut egestas turpis. Nullam sed nisi maximus, eleifend libero eu, ultricies mauris. Duis accumsan tincidunt lectus non gravida.</p>', 'question-2', '2018-07-13 07:38:55'),
(16, 'Question 3', '<p>Morbi faucibus, risus consequat consectetur ultrices, erat arcu iaculis nunc, sit amet condimentum enim tortor ut neque. In vitae dignissim enim. Pellentesque eu vehicula ex. Aenean condimentum magna vitae sem vehicula, nec molestie nisi lacinia. Praesent feugiat risus a neque varius luctus ut a justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean lobortis ipsum ac urna elementum, euismod aliquam ipsum facilisis. Aenean eget ante eleifend, ornare velit vehicula, tempus mi. Curabitur vestibulum tellus et libero tempor, sed vehicula turpis feugiat. In in neque sit amet ipsum rhoncus tincidunt. Suspendisse dapibus mollis lacinia. Nulla facilisi. Sed suscipit ullamcorper tincidunt.</p>', 'question-3', '2018-07-13 07:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `foto_artikel`
--

CREATE TABLE `foto_artikel` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `id_artikel` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_artikel`
--

INSERT INTO `foto_artikel` (`id_foto`, `id_artikel`, `nama_foto`, `featured`, `token_foto`) VALUES
(1, 1, '1.jpg', 'N', ''),
(2, 1, '2.jpg', 'N', ''),
(3, 1, '3.jpg', 'Y', ''),
(4, 2, 'Logo_BerAKHLAK.png', 'N', ''),
(6, 3, '—Pngtree—muda_mendunia_tanpa_narkoba_8133134.png', 'Y', '0.3254152146004339'),
(7, 4, 'WhatsApp_Image_2023-02-09_at_3_48_03_PM_(1).jpeg', 'Y', '0.9640409718949334'),
(8, 4, 'WhatsApp_Image_2023-02-09_at_3_48_03_PM.jpeg', 'N', '0.03579228978125615'),
(9, 6, 'DSC092311.jpg', 'Y', ''),
(10, 6, 'DSC09247.jpg', 'N', ''),
(11, 6, 'DSC09488.jpg', 'N', ''),
(12, 6, 'DSC09387.jpg', 'N', ''),
(13, 7, 'Screenshot_(174).png', 'N', ''),
(14, 7, 'Screenshot_(184).png', 'N', ''),
(15, 7, 'Screenshot_(201).png', 'N', ''),
(16, 7, 'Screenshot_(1155).jpg', 'Y', ''),
(17, 8, 'DSCF0254.JPG', 'N', ''),
(18, 8, 'DSCF0226.JPG', 'Y', ''),
(19, 8, 'DSCF0046.JPG', 'N', ''),
(20, 8, 'DSCF0131.JPG', 'N', ''),
(21, 8, 'DSCF0158.JPG', 'N', ''),
(24, 9, 'DSC00148.JPG', 'N', '0.846099360090169'),
(25, 9, 'DSC00151.JPG', 'N', '0.5522683019317889'),
(26, 9, 'DSC002701.JPG', 'Y', '0.33943236019265965'),
(27, 9, 'DSC097691.JPG', 'N', '0.04151997768553084'),
(28, 9, 'IMG_20230314_090108.jpg', 'N', '0.33060193476283617'),
(29, 10, 'Screenshot_(1277).jpg', 'Y', ''),
(30, 10, 'Screenshot_(384).jpg', 'N', ''),
(31, 10, 'Screenshot_(1285)_(1).jpg', 'N', ''),
(32, 10, 'Screenshot_(1296).jpg', 'N', ''),
(33, 10, 'Screenshot_(372).jpg', 'N', ''),
(35, 11, 'Screenshot_(6).png', 'Y', ''),
(38, 11, 'Screenshot_(1316).png', 'N', '0.48897994987543725'),
(39, 11, 'Screenshot_(1320).png', 'N', '0.7199681764452595'),
(40, 11, 'Screenshot_(1328).png', 'N', '0.1171375329700235'),
(41, 11, 'Screenshot_(1326).png', 'N', '0.24746031822486536'),
(42, 12, 'DSC00022.JPG', 'N', ''),
(43, 12, 'DSC00011.JPG', 'N', ''),
(44, 12, 'DSC09938.JPG', 'N', ''),
(45, 12, 'DSC00018.JPG', 'N', ''),
(46, 12, 'DSC09988.JPG', 'Y', ''),
(47, 13, 'Screenshot_(1414).png', 'N', ''),
(48, 13, 'Screenshot_(1406).png', 'N', ''),
(49, 13, 'DSC09927.JPG', 'N', ''),
(50, 13, 'DSC09926.JPG', 'N', ''),
(51, 13, 'Screenshot_(1409).png', 'Y', ''),
(52, 14, 'DSC00053.JPG', 'N', ''),
(53, 14, 'DSC00008.JPG', 'N', ''),
(54, 14, 'DSC00017.JPG', 'N', ''),
(55, 14, 'DSC00055.JPG', 'N', ''),
(56, 14, 'DSC00028.JPG', 'Y', ''),
(63, 16, 'Screenshot_(1652).png', 'N', ''),
(64, 16, 'Screenshot_(1650).png', 'N', ''),
(65, 16, 'Screenshot_(1634).png', 'N', ''),
(66, 16, 'Screenshot_(1639).png', 'Y', ''),
(67, 17, 'Screenshot_(100).png', 'N', ''),
(68, 17, 'Screenshot_(93).png', 'Y', ''),
(69, 17, 'Screenshot_(92).jpg', 'N', ''),
(70, 17, 'DSC02882.JPG', 'N', ''),
(71, 18, 'Screenshot_(53).png', 'N', ''),
(72, 18, 'Screenshot_(72).png', 'N', ''),
(73, 18, 'Screenshot_(73).png', 'N', ''),
(74, 18, 'Screenshot_(90).png', 'N', ''),
(75, 18, 'Screenshot_(65).png', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `foto_artikel_temp`
--

CREATE TABLE `foto_artikel_temp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foto_artikel_temp`
--

INSERT INTO `foto_artikel_temp` (`id_foto`, `nama_foto`, `token_foto`, `sesi_form`, `id_user`) VALUES
(5, 'DSC09231.jpg', '0.9067135413996521', '1611012303', 0),
(21, 'DSC00270.JPG', '0.28766708923692397', '25359052304', 0),
(22, 'DSC09769.JPG', '0.6719196511319785', '25359052304', 0);

-- --------------------------------------------------------

--
-- Table structure for table `foto_galeri`
--

CREATE TABLE `foto_galeri` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `id_galeri` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_foto` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foto_galeri_temp`
--

CREATE TABLE `foto_galeri_temp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foto_user_tmp`
--

CREATE TABLE `foto_user_tmp` (
  `id_foto` bigint(20) UNSIGNED NOT NULL,
  `nama_foto` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` bigint(20) UNSIGNED NOT NULL,
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
  `galeri_status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_banner`
--

CREATE TABLE `group_banner` (
  `id_group` int(11) NOT NULL,
  `nama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
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
  `max_tampil_download_umum` int(11) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `nama`, `deskripsi`, `disclaimer`, `webprivacy`, `termcondition`, `meta_keyword`, `meta_deskripsi`, `default_banner`, `featured_image`, `thumbnail_media`, `favicon`, `develope_mode`, `logo`, `custom_css`, `width_thumb_artikel`, `width_thumb_galeri`, `width_thumb_produk`, `prefix_suffix_title`, `prefix_suffix_sebagai`, `default_title`, `max_populer_artikel`, `max_tampil_artikel`, `max_headline_artikel`, `max_headline_galeri`, `max_tampil_galeri`, `max_headline_produk`, `max_tampil_produk`, `sleep_mode`, `sleep_sampai`, `max_tampil_agenda`, `max_tampil_download`, `max_tampil_agenda_umum`, `max_tampil_download_umum`) VALUES
(1, 'Bapekom PUPR VI Surabaya', '', '<p>INI DISCLAIMER</p>', '<p>INI PRIVACY</p>', '<p>INI TERM &amp; CONDITION</p>', 'bpsdm, pupr', 'Website Portal khusus unker BPSDM', '', '', '', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/Logo_PU.jpg', 'N', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/Logo%20Balai%206.png', '/*Masukan code CSS anda disini\nGunakan flag !important*/', 300, 300, 500, '| BPSDM Kementerian PUPR', 'suffix', 'Bapekom PUPR VI Surabaya', 4, 10, 10, 10, 5, 10, 10, 'N', '2021-10-12 00:00:00', 10, 10, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parent` bigint(20) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug_kategori`, `id_parent`, `aktif`, `terhapus`) VALUES
(1, 'Pelatihan', 'pelatihan', 0, 'Y', 'Y'),
(2, 'Pendidikan', 'pendidikan', 0, 'Y', 'Y'),
(3, 'Assesment', 'assesment', 0, 'Y', 'Y'),
(4, 'Kegiatan Balai', 'kegiatan-balai', 0, 'Y', 'N'),
(5, 'Umum', 'umum', 0, 'Y', 'Y'),
(6, 'Webinar', 'webinar', 0, 'Y', 'N'),
(7, 'Latsar CPNS PUPR', 'latsar-cpns-pupr', 0, 'Y', 'N'),
(8, 'Pelatihan Teknis SDA dan Permukiman', 'pelatihan-teknis-sda-dan-permukiman', 0, 'Y', 'Y'),
(9, 'Pelatihan', 'pelatihan', 0, 'Y', 'N'),
(10, 'SDA dan Permukiman', 'sda-dan-permukiman', 9, 'Y', 'N'),
(11, 'Jalan Perumahan dan PIW', 'jalan-perumahan-dan-piw', 9, 'Y', 'N'),
(12, 'Kompetensi Manajemen', 'kompetensi-manajemen', 9, 'Y', 'N'),
(13, 'ASBN', 'asbn', 7, 'Y', 'Y'),
(14, 'ASBN', 'asbn', 0, 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id` bigint(20) NOT NULL,
  `nama_kategori` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id`, `nama_kategori`, `slug_kategori`, `aktif`, `terhapus`) VALUES
(1, 'Wedding', 'wedding', 'Y', 'Y'),
(2, 'Pre- wedding ', 'pre-wedding', 'Y', 'Y'),
(3, 'Infrastruktur', 'infrastruktur', 'Y', 'Y'),
(4, 'Infrastruktur', 'infrastruktur', 'Y', 'N'),
(5, 'Latsar CPNS PUPR', 'latsar-cpns-pupr', 'Y', 'N'),
(6, 'ASBN', 'asbn', 'Y', 'N'),
(7, 'Pelatihan Teknis', 'pelatihan-teknis', 'Y', 'N'),
(8, 'Pelatihan Teknis', 'pelatihan-teknis', 'Y', 'N'),
(9, 'Kegiatan Balai', 'kegiatan-balai', 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_kategori` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_kategori` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `parent_kategori`, `nama_kategori`, `slug_kategori`, `aktif`, `terhapus`) VALUES
(1, 0, 'test', 'test', 'Y', 'Y'),
(2, 0, 'pelatihan', 'pelatihan', 'Y', 'Y'),
(3, 2, 'pelatihan klasikal', 'pelatihan-klasikal', 'Y', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `kontak_balai`
--

CREATE TABLE `kontak_balai` (
  `id` int(11) NOT NULL,
  `nama` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(500) COLLATE latin1_general_ci DEFAULT NULL,
  `telp` varchar(500) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(500) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kontak_balai`
--

INSERT INTO `kontak_balai` (`id`, `nama`, `alamat`, `telp`, `email`) VALUES
(1, 'Balai Pengembangan Kompetensi PUPR Wilayah VI Surabaya', 'Jl. Gayung Kebonsari Nomor 48, Gayungan, Surabaya - Jawa Timur 60235', '(031) 8291040', 'bapekom6surabaya@pu.go.id');

-- --------------------------------------------------------

--
-- Table structure for table `kontak_masuk`
--

CREATE TABLE `kontak_masuk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_sosial`
--

CREATE TABLE `media_sosial` (
  `id` int(11) NOT NULL,
  `nama` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `icon` varchar(500) COLLATE latin1_general_ci DEFAULT NULL,
  `social_icon` varchar(500) COLLATE latin1_general_ci DEFAULT NULL,
  `url` varchar(500) COLLATE latin1_general_ci DEFAULT NULL,
  `status_aktif` int(11) DEFAULT NULL,
  `latest_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `media_sosial`
--

INSERT INTO `media_sosial` (`id`, `nama`, `icon`, `social_icon`, `url`, `status_aktif`, `latest_update`) VALUES
(1, 'Facebook', 'icon-facebook', 'social-facebook', 'https://web.facebook.com/pupr.bpsdm.bapekom6', 1, '2022-07-12 17:00:00'),
(2, 'Instagram', 'icon-instagram', 'social-instagram', 'https://www.instagram.com/pupr_bpsdm_bapekom6/', 1, '2022-08-01 10:06:08'),
(3, 'Youtube', 'icon-youtube', 'social-youtube', 'https://www.youtube.com/channel/UCeOB5nYLfjM8VmiN6mFc58g', 1, '2022-09-20 05:50:10'),
(4, 'Twitter', 'icon-twitter', 'social-twitter', '', 0, '2022-07-12 06:32:51'),
(5, 'Linkedin', 'icon-linkedin', 'social-linkedin', '', 0, '2022-04-22 04:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_code`, `menu_nama`, `menu_created`) VALUES
(1, 'horizontal', 'utama', '2016-04-14 02:12:24'),
(2, 'vertical', 'samping', '2016-04-14 02:12:24'),
(3, 'vertical2', 'tambahan 1', '0000-00-00 00:00:00'),
(4, 'vertical3', 'tambahan 2', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_child`
--

CREATE TABLE `menu_child` (
  `menu_child_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `menu_child_parent` bigint(20) NOT NULL DEFAULT '0',
  `menu_child_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_child_target` enum('_self','_blank','_parent','_top') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `posisi` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_child`
--

INSERT INTO `menu_child` (`menu_child_id`, `menu_id`, `menu_child_parent`, `menu_child_code`, `menu_child_nama`, `menu_child_url`, `menu_child_target`, `aktif`, `posisi`) VALUES
(6, 1, 0, 'home', 'BERANDA', 'http://localhost/apricot/', '_self', 'Y', 1),
(16, 1, 17, '', 'Tugas dan Fungsi', 'http://localhost/apricot/page/2-tugas-dan-fungsi', '_self', 'Y', 3),
(17, 1, 0, '', 'PROFIL', '#', '_self', 'Y', 2),
(18, 1, 17, '', 'Struktur Organisasi', 'http://localhost/apricot/page/4-struktur-organisasi', '_self', 'Y', 4),
(19, 1, 17, '', 'Visi dan Misi', 'http://localhost/apricot/page/25-visi-dan-misi', '_self', 'Y', 5),
(20, 1, 17, '', 'Wilayah Kerja', 'http://localhost/apricot/page/7-wilayah-kerja', '_self', 'Y', 6),
(49, 2, 0, 'disclaimer', 'Disclaimer', 'https://bpsdm.pu.go.id/webdev/disclaimer', '_self', 'Y', 1),
(50, 2, 0, 'about-us', 'About Us', 'https://bpsdm.pu.go.id/webdev/about-us', '_self', 'Y', 2),
(51, 2, 0, 'syarat-ketentuan', 'Syarat dan ketentuan', 'https://bpsdm.pu.go.id/webdev/syarat-dan-ketentuan', '_self', 'Y', 3),
(64, 1, 0, '', 'INFORMASI & LAYANAN PUBLIK', '#', '_self', 'Y', 14),
(66, 1, 64, '', 'Informasi Publik', '', '_self', 'Y', 18),
(70, 1, 66, '', 'Secara Berkala', 'http://localhost/apricot/page/18-secara-berkala', '_self', 'Y', 19),
(71, 1, 66, '', 'Serta Merta', 'http://localhost/apricot/', '_self', 'Y', 20),
(72, 1, 66, '', 'Setiap Saat', 'http://localhost/apricot/', '_self', 'Y', 21),
(75, 1, 64, '', 'e-PPID Kementerian PUPR', 'https://sahabat.pu.go.id/eppid', '_blank', 'Y', 29),
(76, 1, 64, '', 'Standar Layanan', '', '_self', 'Y', 15),
(77, 1, 0, '', 'PELATIHAN', '#', '_self', 'Y', 10),
(78, 1, 77, '', 'Kalender Pelatihan 2023', 'http://localhost/apricot/page/26-kalender-pelatihan-pengembangan-kompetensi', '_self', 'Y', 11),
(80, 1, 77, '', 'Pendaftaran Pelatihan', 'http://localhost/apricot/page/23-pendaftaran-pelatihan-pengembangan-kompetensi', '_self', 'Y', 12),
(81, 2, 0, 'home', 'Home', 'http://localhost/apricot/', '_self', 'Y', 4),
(85, 1, 17, '', 'Sarana dan Prasarana', 'https://online.fliphtml5.com/jippu/jzir/', '_blank', 'Y', 7),
(86, 1, 17, '', 'Widyaiswara', 'https://online.fliphtml5.com/jippu/ccjb/', '_blank', 'Y', 8),
(87, 1, 17, '', 'Akreditasi dan Penghargaan', '', '_self', 'Y', 9),
(88, 1, 77, '', 'Capaian Pelatihan', 'https://online.fliphtml5.com/jippu/zbru/', '_blank', 'Y', 13),
(89, 1, 64, '', 'Saran dan Pengaduan', 'http://localhost/apricot/page/30-saran-dan-pengaduan', '_blank', 'Y', 28),
(95, 1, 0, '', 'DOKUMENTASI', '', '_self', 'Y', 30),
(96, 1, 95, '', 'Galeri Foto', 'http://localhost/apricot/galeri', '_self', 'Y', 31),
(97, 1, 95, '', 'Galeri Video', 'http://localhost/apricot/page/24-galeri-informasi-video', '_blank', 'Y', 32),
(98, 1, 95, '', 'JDIH', 'https://jdih.pu.go.id/', '_self', 'Y', 33),
(102, 1, 76, '', 'Visi dan Misi Pelayanan', 'http://localhost/apricot/page/28-visi-dan-misi-ppid', '_self', 'Y', 16),
(103, 1, 76, '', 'Maklumat Pelayanan', 'http://localhost/apricot/page/29-maklumat-pelayanan', '_self', 'Y', 17),
(109, 2, 0, '', 'COBA', 'http://localhost/apricot/page/00-', '_blank', 'Y', 5),
(118, 1, 64, '', 'Layanan Informasi Terkait', 'http://localhost/apricot/page/33-layanan-informasi', '_self', 'Y', 22),
(119, 1, 118, '', 'SIMANTU (Sistem Ilmu Pengetahuan)', 'https://simantu.pu.go.id/', '_blank', 'Y', 23),
(120, 1, 118, '', 'SIPAR (Peminjaman Sarana dan Prasarana)', 'https://bpsdm.pu.go.id/sipar/', '_blank', 'Y', 24),
(121, 1, 118, '', 'SIPEKA (Sistem Informasi Penanganan Keluhan)', 'https://bpsdm.pu.go.id/sipeka/balai?balai=6', '_blank', 'Y', 25),
(122, 1, 118, '', 'SP4N LAPOR (Layanan & Pengaduan)', 'https://www.lapor.go.id/', '_blank', 'Y', 26),
(123, 1, 118, '', 'WISPU (Whistleblowing System Kementerian PUPR)', 'https://wispu.pu.go.id/', '_blank', 'Y', 27),
(124, 1, 0, 'home', '', 'https://forms.gle/FyRh7egXiEmwm84x6', '_blank', 'Y', 34);

-- --------------------------------------------------------

--
-- Table structure for table `news_ticker`
--

CREATE TABLE `news_ticker` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `berita` varchar(700) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_posting` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` bigint(20) NOT NULL,
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
  `page_meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_judul`, `page_url`, `page_isi`, `page_foto`, `page_javascript`, `page_status`, `page_id_user`, `page_id_edit`, `page_created`, `page_edited`, `page_meta_keywords`, `page_meta_description`) VALUES
(2, 'Tugas dan Fungsi', 'tugas-dan-fungsi', '', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/TUSI%20BARU-01.png', '', 'published', 1, 14, '2023-01-25 15:04:06', '0000-00-00 00:00:00', 'tupoksi tugas pokok dan fungsi', 'tupoksi tugas pokok dan fungsi'),
(4, 'Struktur Organisasi', 'struktur-organisasi', '', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/STRUKTUR%20ORGANISASI_NEW_1-01.jpg', '', 'published', 1, 14, '2023-08-15 10:23:56', '0000-00-00 00:00:00', 'struktur organisasi', 'struktur organisasi'),
(7, 'Wilayah Kerja', 'wilayah-kerja', '', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/6.%20UK%2055x40.png', '', 'published', 1, 14, '2023-01-25 15:51:44', '0000-00-00 00:00:00', 'wilayah kerja', 'wilayah kerja'),
(18, 'Informasi Disediakan Secara Berkala', 'informasi-disediakan-secara-berkala', '<p> </p>\n<table style=\"height: 82px;\" width=\"378\">\n<tbody>\n<tr>\n<td style=\"width: 369.34px;\">\n<p><span style=\"color: #333399;\"><strong>LAPORAN PENGADUAN TAHUN 2023 (</strong><strong>TRIWULAN II)</strong></span></p>\n<p><span style=\"color: #333399;\"><strong><iframe src=\"https://drive.google.com/file/d/1IyY_mpVzzOtyLD6e5iq3V9QpCu2SSHOz/preview\" width=\"320\" height=\"240\"></iframe></strong></span></p>\n</td>\n</tr>\n</tbody>\n</table>\n<table style=\"height: 40px;\" width=\"375\">\n<tbody>\n<tr>\n<td style=\"width: 366.354px;\">\n<p><span style=\"color: #0000ff;\"><strong>LAPORAN KETERBUKAAN INFORMASI PUBLIK TAHUN 2023</strong></span></p>\n<p><span style=\"color: #0000ff;\"><strong>PERIODE TRIWULAN II</strong></span></p>\n<p><span style=\"background-color: #0000ff; color: #ffff00;\"><strong><iframe src=\"https://drive.google.com/file/d/1ZIQJWSfGjPtmJnvI6NA-bUJn4sstTAxH/preview\" width=\"320\" height=\"240\"></iframe></strong></span></p>\n</td>\n</tr>\n</tbody>\n</table>\n<table>\n<tbody>\n<tr style=\"height: 23.7083px;\">\n<td style=\"height: 23.7083px;\">\n<p><span style=\"color: #0000ff;\"><strong>LAPORAN KETERBUKAAN INFORMASI PUBLIK TAHUN 2023</strong></span></p>\n<p><span style=\"color: #0000ff;\"><strong>PERIODE TRIWULAN I</strong></span></p>\n<p><iframe src=\"https://drive.google.com/file/d/17JH5B6xrah7Bxkgv5bX_zPn4rJUhIPC5/preview\" width=\"320\" height=\"240\"></iframe></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<p> _______________________________________________________________</p>\n<table style=\"width: 430.667px;\">\n<tbody>\n<tr>\n<td style=\"width: 421.667px;\">\n<p style=\"text-align: left;\"><strong><span style=\"color: #000080;\">Laporan Keterbukaan Informasi Publik Tahun 2022</span></strong></p>\n<p><strong><iframe src=\"https://drive.google.com/file/d/1bgjP4ayOVeW7ZpnN5eaWm7ByOhSmi-9b/preview\" width=\"320\" height=\"240\"></iframe></strong></p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 421.667px;\">\n<p> <strong><span style=\"color: #000080;\">Laporan Keterbukaan Informasi Publik Periode Triwulan VI</span></strong></p>\n<p> <iframe src=\"https://drive.google.com/file/d/1vjoUxSrvkVoDv8Q07MM8mr__E4rvvSzl/preview\" width=\"320\" height=\"240\"></iframe></p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 421.667px;\">\n<p><strong><span style=\"color: #000080;\">Laporan Keterbukaan Informasi Publik Periode Triwulan III</span></strong></p>\n<p><iframe src=\"https://drive.google.com/file/d/1-25vRydndSzl0x8UCyFzcs8mkdzMbl73/preview\" width=\"320\" height=\"240\"></iframe></p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 421.667px;\">\n<p><strong><span style=\"color: #000080;\">Laporan Keterbukaan Informasi Publik Periode Triwulan II</span></strong></p>\n<p> <iframe src=\"https://drive.google.com/file/d/1i6ZxcNaeJ5rZBHmDX98zQE-LUa_imzSS/preview\" width=\"320\" height=\"240\"></iframe></p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 421.667px;\">\n<p><strong><span style=\"color: #000080;\">Laporan Keterbukaan Informasi Publik Periode Triwulan I</span></strong></p>\n<p> <iframe src=\"https://drive.google.com/file/d/11XtWHt8VLgPsNg0vIwosIYrpSFefWFxC/preview\" width=\"320\" height=\"240\"></iframe></p>\n</td>\n</tr>\n</tbody>\n</table>', '', '', 'published', 14, 14, '2023-08-16 14:49:32', '0000-00-00 00:00:00', '', ''),
(19, 'Profil PPID', 'profil-ppid', '', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/Maintance.png', '', 'published', 14, 14, '2023-01-25 10:07:28', '0000-00-00 00:00:00', '', ''),
(20, 'Informasi Disediakan Serta Merta', 'informasi-disediakan-serta-merta', '', '', '', 'published', 14, 14, '2023-08-22 09:05:27', '0000-00-00 00:00:00', '', ''),
(22, 'Setiap Saat', 'setiap-saat', '', '', '', 'published', 14, 14, '2023-08-22 09:05:46', '0000-00-00 00:00:00', '', ''),
(23, 'Pendaftaran Pelatihan Pengembangan Kompetensi', 'pendaftaran-pelatihan-pengembangan-kompetensi', '<table style=\"background-color: #e83e5d; height: 46px; width: 320.333px;\" cellspacing=\"5\" cellpadding=\"5\">\n<thead>\n<tr style=\"border-color: #c42727; height: 24.3333px;\">\n<td style=\"width: 298.333px; text-align: center; height: 24.3333px;\"><span style=\"color: #333333;\"><em><strong>Klik </strong></em><span style=\"color: #ffffff;\"><strong><a style=\"color: #ffffff;\" href=\"https://bpsdm.pu.go.id/halaman/diklat\" target=\"_blank\">DISINI</a></strong></span><strong> </strong><em><strong>untuk Pendaftaran Pelatihan</strong></em></span></td>\n</tr>\n</thead>\n</table>', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/ALUR%20PENDAFTARAN%20PESERTA%20PELATIHAN-01_2.png', '', 'published', 14, 14, '2023-03-13 13:44:26', '0000-00-00 00:00:00', '', ''),
(24, 'Galeri Informasi Video', 'galeri-informasi-video', '<p> </p>\n<table style=\"height: 1937px;\" width=\"637\">\n<tbody>\n<tr>\n<td style=\"width: 628.351px;\">\n<p><span style=\"color: #333399;\"><strong>VIDEO PROFIL BALAI PENGEMBANGAN KOMPETENSI </strong></span><span style=\"color: #333399;\"><strong>PUPR WILAYAH VI SURABAYA</strong></span></p>\n<p><span style=\"color: #333399;\"><strong><iframe src=\"https://drive.google.com/file/d/1aqL04eB0IPPK58U23u3gNFtdIbV1llre/preview\" width=\"720\" height=\"480\"></iframe></strong></span></p>\n<p> </p>\n<p><span style=\"color: #333399;\"><strong>SARANA DAN PRASARANA BALAI PENGEMBANGAN KOMPETENSI </strong></span><span style=\"color: #333399;\"><strong>PUPR WILAYAH VI SURABAYA</strong></span></p>\n<p><span style=\"color: #333399;\"><strong><iframe src=\"https://drive.google.com/file/d/17egFzi0zR7hEbF3HbnJOiVADCA-_FmXZ/preview\" width=\"720\" height=\"540\"></iframe></strong></span></p>\n<p><span style=\"color: #333399;\"><strong> </strong></span></p>\n<p><span style=\"color: #333399;\"><strong>VIDEO PELATIHAN KEPEMIMPINAN ADMINISTRATOR BALAI PENGEMBANGAN KOMPETENSI </strong></span><span style=\"color: #333399;\"><strong>PUPR WILAYAH</strong></span></p>\n<p><span style=\"color: #333399;\"><strong>VI SURABAYA</strong></span></p>\n<p><span style=\"color: #333399;\"><strong><iframe src=\"https://drive.google.com/file/d/1kptXweaWFrBdGvNSzJIEPA7iKuysd2UI/preview\" width=\"720\" height=\"540\"></iframe></strong></span></p>\n<p> </p>\n<p><span style=\"color: #333399;\"><strong>JUMAT SEHAT BALAI PENGEMBANGAN KOMPETENSI </strong></span><span style=\"color: #333399;\"><strong>PUPR WILAYAH VI SURABAYA</strong></span></p>\n<p><span style=\"color: #333399;\"><strong><iframe src=\"https://drive.google.com/file/d/1BedMmaZyQEv2pY8-p5xPaNQCs-d7CtXW/preview\" width=\"720\" height=\"540\"></iframe></strong></span></p>\n<p> </p>\n<p><strong><span style=\"color: #000080;\">#MUDIKAMANBERKESAN _SELAMAT HARI RAYA IDUL FITRI 1444 HIJRIYAH</span></strong></p>\n<p><span style=\"color: #333399;\"><strong><iframe src=\"https://drive.google.com/file/d/1DQckPIpJh-OQ3gqlq6NISe34-7yWK80g/preview\" width=\"720\" height=\"540\"></iframe></strong></span></p>\n<p> </p>\n<p><strong><span style=\"color: #000080;\">SIENERGI DI HARI KEMENANGAN_SELAMAT HARI RAYA IDUL FITRI 1443 HIJRIYAH</span></strong></p>\n<p><span style=\"color: #333399;\"><strong><iframe src=\"https://drive.google.com/file/d/1fgwsCJ4nS8N0YqIqDI8mQtdcvUhLP-gj/preview\" width=\"720\" height=\"540\"></iframe></strong></span></p>\n</td>\n</tr>\n</tbody>\n</table>', '', '', 'published', 14, 14, '2023-08-22 09:03:44', '0000-00-00 00:00:00', '', ''),
(25, 'Visi dan Misi', 'visi-dan-misi', '', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/Visi%20%26%20Misi%20New-01.png', '', 'published', 14, 14, '2023-01-26 11:17:01', '0000-00-00 00:00:00', '', ''),
(26, 'Kalender Pelatihan Pengembangan Kompetensi', 'kalender-pelatihan-pengembangan-kompetensi', '', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/JADWAL%20PELATIHAN%20TENTATIVE-01.png', '', 'published', 14, 0, '2023-01-25 15:52:53', '0000-00-00 00:00:00', '', ''),
(28, 'Visi dan Misi PPID', 'visi-dan-misi-ppid', '', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/VISI_DAN_MISI_PPID-01-01-01.png', '', 'published', 14, 0, '2023-03-13 13:47:10', '0000-00-00 00:00:00', '', ''),
(29, 'Maklumat Pelayanan', 'maklumat-pelayanan', '', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/MAKLUMAT_PPID_Mesa_de_trabajo_1_Mesa_de_trabajo_1.jpg', '', 'published', 14, 14, '2023-03-13 13:49:10', '0000-00-00 00:00:00', '', ''),
(30, 'Saran dan Pengaduan', 'saran-dan-pengaduan', '<p>SILAHKAN KLIK LINK DI BAWAH INI<br><strong><a title=\"WHATSAPP\" href=\"https://api.whatsapp.com/send/?phone=%2B6281252800027&amp;text&amp;type=phone_number&amp;app_absent=0\" target=\"_blank\">WHATSAPP PENGADUAN</a></strong></p>', 'http://localhost/apricot/an-component/media/upload-gambar-pendukung/NOMOR%20PENGADUAN.jpg', '', 'published', 14, 14, '2023-08-16 08:29:54', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pencarian_artikel`
--

CREATE TABLE `pencarian_artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clean_keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` datetime NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pencarian_artikel`
--

INSERT INTO `pencarian_artikel` (`id`, `keyword`, `clean_keyword`, `tanggal`, `ip`) VALUES
(1, 'sdc as ', 'sdc as', '2021-09-23 01:10:10', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `pihak_ketiga`
--

CREATE TABLE `pihak_ketiga` (
  `id` int(11) NOT NULL,
  `recaptcha_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recaptcha_secret_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script_google_analytics` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disqus_unique_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pihak_ketiga`
--

INSERT INTO `pihak_ketiga` (`id`, `recaptcha_key`, `recaptcha_secret_key`, `script_google_analytics`, `disqus_unique_name`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_email`
--

CREATE TABLE `smtp_email` (
  `id` int(11) NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` bigint(20) NOT NULL DEFAULT '25',
  `ssl_connection` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL
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

CREATE TABLE `tags` (
  `id_tag` bigint(20) UNSIGNED NOT NULL,
  `nama_tag` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_posting` bigint(20) NOT NULL,
  `user_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id_tag`, `nama_tag`, `slug_tag`, `user_posting`, `user_update`) VALUES
(1, 'Bapekom6Surabaya', 'bapekom6surabaya', 1, 14),
(2, 'Kompetensi', 'kompetensi', 1, 14),
(3, 'Pelatihan', 'pelatihan', 1, 14),
(4, 'PUPR', 'pupr', 1, 1),
(5, 'BPSDM', 'bpsdm', 1, 1),
(6, 'Webinar PUPR', 'webinar-pupr', 14, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_tema` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versi` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screenshot` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tema`
--

INSERT INTO `tema` (`id`, `nama_tema`, `versi`, `aktif`, `author`, `web`, `screenshot`) VALUES
(23, 'bpsdm-unker', '1.0', 'Y', '', '', 'screenshot.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` bigint(11) UNSIGNED NOT NULL,
  `name_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_user` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_user` int(11) NOT NULL,
  `avatar_user` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_user` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `terhapus` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `terdaftar` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name_user`, `nama_lengkap`, `email`, `password_user`, `level_user`, `avatar_user`, `status_user`, `terhapus`, `terdaftar`) VALUES
(1, 'kamal', 'Kamal', '', '$2y$10$jAXbt0sfq7lOC2sHzFpXjuoMZJiy8PC8XmxHXcgSNbG96Ttri0uG6', 1, 'Melliani.jpg', 'Y', 'N', '0000-00-00'),
(2, 'faishal', 'Muhammad Faishal Ilham', 'faishal15@gmail.com', '$2y$10$HFz9TuTOz70WVCMxaZrLY.W03eswOS50Ommff8/egDcoC9BRS86qS', 1, 'Monalisa1.png', 'Y', 'Y', '2021-11-17'),
(3, 'balai1', 'balai1', 'balai1@gmail.com', '$2y$10$M4xSfSXar9pRCIFapVXzl.FFFaeYpIXXVCtOLjc513UR0bRFpkyKG', 0, 'default.jpg', 'Y', 'N', '2021-11-22'),
(4, 'balai2', 'balai2', 'balai2@gmail.com', '$2y$10$.Zl6HvqQfeXgxt0ndnj0l.MT4KB1bTfStMbnL17d6Ov6alGt9Jw4O', 0, 'default.jpg', 'Y', 'N', '2021-11-22'),
(5, 'balai3', 'balai3', 'balai3@gmail.com', '$2y$10$.NvFHXi6scC89vyFROMR7O6xLBFbQfy8sCn0h.vNMSq3sjqCCTdXO', 0, 'default.jpg', 'Y', 'N', '2021-11-22'),
(6, 'balai4', 'balai4', 'balai4@gmail.com', '$2y$10$yEEEWNac8KBti.FWXWVgoeu2tnUEIVROcZS7Bdq8uqQiRlxwkxSwi', 0, 'default.jpg', 'Y', 'N', '2021-11-22'),
(7, 'balai5', 'balai5', 'balai5@gmail.com', '$2y$10$HKhSLkIMpXYSsaNz3UaJ7eSSyv28gUfc3UdZe2YKSAbo2YFLl9GT6', 0, 'default.jpg', 'Y', 'N', '2021-11-22'),
(8, 'balai6', 'balai6', 'balai6@gmail.com', '$2y$10$ydjPgL.voqNW6faFLo2NruWGNqkzowi7jp3YLv..7Lxm5z6G6A19m', 0, 'default.jpg', 'Y', 'N', '2021-11-22'),
(9, 'balai7', 'balai7', 'balai7@gmail.com', '$2y$10$xXnmKaBITnAQOJbarvuLLO2/CWyKEOE28Hf4dGiGjm.S3NU95GAaq', 0, 'default.jpg', 'Y', 'N', '2021-11-22'),
(10, 'balai8', 'balai8', 'balai8@gmail.com', '$2y$10$1iG0tiXrce3AV7OzmW4FjOXX4u/b8.AdxEObWdSH5AtTKCAhLrijG', 0, 'default.jpg', 'Y', 'N', '2021-11-22'),
(11, 'balai9', 'balai9', 'balai9@gmail.com', '$2y$10$mRoRONLPKtkmqWCWGsFOjuZXPXFHHYcwy9F4zfJf9sFtFE6dW864G', 0, 'default.jpg', 'Y', 'N', '2021-11-22'),
(12, 'balaipensi', 'balaipensi', 'balaipensi@gmail.com', '$2y$10$WP7.CnzGbz5Ir3RCb6a5MuQP.n.aaJ8NT.FU4VhpmDtIjUQlV5es2', 0, 'default.jpg', 'Y', 'N', '2021-11-22'),
(13, 'bapekom6', 'bapekom6', 'bapekom6@gmail.com', '$2y$10$8L.hMIiL.t9yZPDcBsHbheNViObhVlHW.UnnzTJRPyiejM23o1w1y', 0, 'BPSDM.jpg', 'Y', 'Y', '2022-05-19'),
(14, 'bapekom6', 'Bapekom 6', 'bapekom6@gmail.com', '$2y$10$62Kc63yNCBAm0nIgIvdr7eA6ttLgOjTDG05d4Y.IP/6JwYZFUOPDu', 1, 'WhatsApp_Image_2022-07-05_at_15_35_11.jpeg', 'Y', 'N', '2022-09-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`artikel_id`);

--
-- Indexes for table `banner_depan`
--
ALTER TABLE `banner_depan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_item`
--
ALTER TABLE `banner_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_temp`
--
ALTER TABLE `download_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_masuk`
--
ALTER TABLE `email_masuk`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto_artikel`
--
ALTER TABLE `foto_artikel`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_artikel_temp`
--
ALTER TABLE `foto_artikel_temp`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_galeri`
--
ALTER TABLE `foto_galeri`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_galeri_temp`
--
ALTER TABLE `foto_galeri_temp`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `foto_user_tmp`
--
ALTER TABLE `foto_user_tmp`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Indexes for table `group_banner`
--
ALTER TABLE `group_banner`
  ADD PRIMARY KEY (`id_group`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak_balai`
--
ALTER TABLE `kontak_balai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak_masuk`
--
ALTER TABLE `kontak_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_sosial`
--
ALTER TABLE `media_sosial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_child`
--
ALTER TABLE `menu_child`
  ADD PRIMARY KEY (`menu_child_id`);

--
-- Indexes for table `news_ticker`
--
ALTER TABLE `news_ticker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pencarian_artikel`
--
ALTER TABLE `pencarian_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pihak_ketiga`
--
ALTER TABLE `pihak_ketiga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_email`
--
ALTER TABLE `smtp_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `artikel_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `banner_depan`
--
ALTER TABLE `banner_depan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `banner_item`
--
ALTER TABLE `banner_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `download_temp`
--
ALTER TABLE `download_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_masuk`
--
ALTER TABLE `email_masuk`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `foto_artikel`
--
ALTER TABLE `foto_artikel`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `foto_artikel_temp`
--
ALTER TABLE `foto_artikel_temp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `foto_galeri`
--
ALTER TABLE `foto_galeri`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `foto_galeri_temp`
--
ALTER TABLE `foto_galeri_temp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `foto_user_tmp`
--
ALTER TABLE `foto_user_tmp`
  MODIFY `id_foto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group_banner`
--
ALTER TABLE `group_banner`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kontak_balai`
--
ALTER TABLE `kontak_balai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kontak_masuk`
--
ALTER TABLE `kontak_masuk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media_sosial`
--
ALTER TABLE `media_sosial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu_child`
--
ALTER TABLE `menu_child`
  MODIFY `menu_child_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `news_ticker`
--
ALTER TABLE `news_ticker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `pencarian_artikel`
--
ALTER TABLE `pencarian_artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pihak_ketiga`
--
ALTER TABLE `pihak_ketiga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tag` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tema`
--
ALTER TABLE `tema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
