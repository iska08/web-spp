-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2022 pada 14.40
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_spp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kompetensi_keahlian` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `kompetensi_keahlian`, `created_at`, `updated_at`) VALUES
(1, 'X RPL 1', 'Rekayasa Perangkat Lunak', '2022-06-15 03:08:22', '2022-06-15 03:08:22'),
(2, 'X RPL 2', 'Rekayasa Perangkat Lunak', '2022-06-15 03:08:23', '2022-06-15 03:08:23'),
(3, 'X MM 1', 'Multimedia', '2022-06-15 03:08:23', '2022-06-29 09:51:26'),
(4, 'X MM 2', 'Multimedia', '2022-06-29 09:49:38', '2022-06-29 09:49:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_07_01_123554_create_petugas_table', 1),
(6, '2021_07_01_123659_create_kelas_table', 1),
(7, '2021_07_01_123746_create_spp_table', 1),
(8, '2021_07_10_224442_create_permission_tables', 1),
(9, '2021_07_15_072638_create_siswa_table', 1),
(10, '2021_07_15_072759_create_pembayaran_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pembayaran` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_bayar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulan_bayar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_bayar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `kode_pembayaran`, `petugas_id`, `siswa_id`, `nisn`, `tanggal_bayar`, `bulan_bayar`, `tahun_bayar`, `jumlah_bayar`, `created_at`, `updated_at`) VALUES
(14, 'SPPRXS8SA', 1, 1, '08909978', '2022-06-29 17:06:09', 'Januari', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(15, 'SPPRNE4EK', 1, 1, '08909978', '2022-06-29 17:06:09', 'Februari', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(16, 'SPPRVT72S', 1, 1, '08909978', '2022-06-29 17:06:09', 'Maret', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(17, 'SPPRV1RX5', 1, 1, '08909978', '2022-06-29 17:06:09', 'April', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(18, 'SPPR7UICO', 1, 1, '08909978', '2022-06-29 17:06:09', 'Mei', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(19, 'SPPRWUOBS', 1, 1, '08909978', '2022-06-29 17:06:09', 'Juni', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(20, 'SPPRB1JLI', 1, 1, '08909978', '2022-06-29 17:06:09', 'Juli', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(21, 'SPPRMZATG', 1, 1, '08909978', '2022-06-29 17:06:09', 'Agustus', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(22, 'SPPRNECRB', 1, 1, '08909978', '2022-06-29 17:06:09', 'September', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(23, 'SPPRBSJGK', 1, 1, '08909978', '2022-06-29 17:06:09', 'Oktober', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(24, 'SPPRKTTJF', 1, 1, '08909978', '2022-06-29 17:06:09', 'November', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(25, 'SPPRCXOI3', 1, 1, '08909978', '2022-06-29 17:06:09', 'Desember', '2020', 165000, '2022-06-29 10:06:09', '2022-06-29 10:06:09'),
(26, 'SPPRF18HD', 1, 1, '08909978', '2022-06-29 17:06:48', 'Januari', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(27, 'SPPRE2GCF', 1, 1, '08909978', '2022-06-29 17:06:48', 'Februari', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(28, 'SPPRDMGZR', 1, 1, '08909978', '2022-06-29 17:06:48', 'Maret', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(29, 'SPPRF0KSS', 1, 1, '08909978', '2022-06-29 17:06:48', 'April', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(30, 'SPPRTLLZU', 1, 1, '08909978', '2022-06-29 17:06:48', 'Mei', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(31, 'SPPRDWQL6', 1, 1, '08909978', '2022-06-29 17:06:48', 'Juni', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(32, 'SPPREXZCU', 1, 1, '08909978', '2022-06-29 17:06:48', 'Juli', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(33, 'SPPRKSZ1S', 1, 1, '08909978', '2022-06-29 17:06:48', 'Agustus', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(34, 'SPPRD930T', 1, 1, '08909978', '2022-06-29 17:06:48', 'September', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(35, 'SPPRSJMOJ', 1, 1, '08909978', '2022-06-29 17:06:48', 'Oktober', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(36, 'SPPRFSF8S', 1, 1, '08909978', '2022-06-29 17:06:48', 'November', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(37, 'SPPRUCWE5', 1, 1, '08909978', '2022-06-29 17:06:48', 'Desember', '2021', 170000, '2022-06-29 10:06:48', '2022-06-29 10:06:48'),
(38, 'SPPRHMXRW', 1, 1, '08909978', '2022-06-29 17:07:24', 'Januari', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(39, 'SPPR74OYL', 1, 1, '08909978', '2022-06-29 17:07:24', 'Februari', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(40, 'SPPRV9J0M', 1, 1, '08909978', '2022-06-29 17:07:24', 'Maret', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(41, 'SPPRIENXT', 1, 1, '08909978', '2022-06-29 17:07:24', 'April', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(42, 'SPPRIWSOV', 1, 1, '08909978', '2022-06-29 17:07:24', 'Mei', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(43, 'SPPRLTVGL', 1, 1, '08909978', '2022-06-29 17:07:24', 'Juni', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(44, 'SPPREJGPR', 1, 1, '08909978', '2022-06-29 17:07:24', 'Juli', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(45, 'SPPRGANJN', 1, 1, '08909978', '2022-06-29 17:07:24', 'Agustus', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(46, 'SPPRZBMXS', 1, 1, '08909978', '2022-06-29 17:07:24', 'September', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(47, 'SPPRRPKQT', 1, 1, '08909978', '2022-06-29 17:07:24', 'Oktober', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(48, 'SPPRFXBFU', 1, 1, '08909978', '2022-06-29 17:07:24', 'November', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(49, 'SPPR5IZEO', 1, 1, '08909978', '2022-06-29 17:07:24', 'Desember', '2022', 175000, '2022-06-29 10:07:24', '2022-06-29 10:07:24'),
(50, 'SPPRXTBXO', 1, 2, '08909096', '2022-06-29 17:08:10', 'Januari', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(51, 'SPPRVIF5J', 1, 2, '08909096', '2022-06-29 17:08:10', 'Februari', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(52, 'SPPRICHZN', 1, 2, '08909096', '2022-06-29 17:08:10', 'Maret', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(53, 'SPPRVCGA0', 1, 2, '08909096', '2022-06-29 17:08:10', 'April', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(54, 'SPPRNABXD', 1, 2, '08909096', '2022-06-29 17:08:10', 'Mei', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(55, 'SPPRSM4YE', 1, 2, '08909096', '2022-06-29 17:08:10', 'Juni', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(56, 'SPPRBKOBH', 1, 2, '08909096', '2022-06-29 17:08:10', 'Juli', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(57, 'SPPRHW3TX', 1, 2, '08909096', '2022-06-29 17:08:10', 'Agustus', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(58, 'SPPR6LA3N', 1, 2, '08909096', '2022-06-29 17:08:10', 'September', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(59, 'SPPRHUM7F', 1, 2, '08909096', '2022-06-29 17:08:10', 'Oktober', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(60, 'SPPRHL7AF', 1, 2, '08909096', '2022-06-29 17:08:10', 'November', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(61, 'SPPRTFLBU', 1, 2, '08909096', '2022-06-29 17:08:10', 'Desember', '2020', 165000, '2022-06-29 10:08:10', '2022-06-29 10:08:10'),
(62, 'SPPRBVNGI', 1, 2, '08909096', '2022-06-29 17:08:37', 'Januari', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(63, 'SPPRGVHI5', 1, 2, '08909096', '2022-06-29 17:08:37', 'Februari', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(64, 'SPPRE1ZVK', 1, 2, '08909096', '2022-06-29 17:08:37', 'Maret', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(65, 'SPPRSUTVF', 1, 2, '08909096', '2022-06-29 17:08:37', 'April', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(66, 'SPPR81ZUE', 1, 2, '08909096', '2022-06-29 17:08:37', 'Mei', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(67, 'SPPRWGGOP', 1, 2, '08909096', '2022-06-29 17:08:37', 'Juni', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(68, 'SPPRZFGEJ', 1, 2, '08909096', '2022-06-29 17:08:37', 'Juli', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(69, 'SPPRBGKVL', 1, 2, '08909096', '2022-06-29 17:08:37', 'Agustus', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(70, 'SPPRH1VN1', 1, 2, '08909096', '2022-06-29 17:08:37', 'September', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(71, 'SPPRTYCCU', 1, 2, '08909096', '2022-06-29 17:08:37', 'Oktober', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(72, 'SPPRYTMQS', 1, 2, '08909096', '2022-06-29 17:08:37', 'November', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(73, 'SPPRBMKMK', 1, 2, '08909096', '2022-06-29 17:08:37', 'Desember', '2021', 170000, '2022-06-29 10:08:37', '2022-06-29 10:08:37'),
(74, 'SPPRR0BPJ', 1, 2, '08909096', '2022-06-29 17:09:01', 'Januari', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(75, 'SPPRHHW17', 1, 2, '08909096', '2022-06-29 17:09:01', 'Februari', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(76, 'SPPRJH4SF', 1, 2, '08909096', '2022-06-29 17:09:01', 'Maret', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(77, 'SPPR3A3LL', 1, 2, '08909096', '2022-06-29 17:09:01', 'April', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(78, 'SPPRWAQRC', 1, 2, '08909096', '2022-06-29 17:09:01', 'Mei', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(79, 'SPPREIK5Z', 1, 2, '08909096', '2022-06-29 17:09:01', 'Juni', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(80, 'SPPRGTC2H', 1, 2, '08909096', '2022-06-29 17:09:01', 'Juli', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(81, 'SPPRSMOMJ', 1, 2, '08909096', '2022-06-29 17:09:01', 'Agustus', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(82, 'SPPR0IOBB', 1, 2, '08909096', '2022-06-29 17:09:01', 'September', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(83, 'SPPRZ8VSB', 1, 2, '08909096', '2022-06-29 17:09:01', 'Oktober', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(84, 'SPPRFT3ET', 1, 2, '08909096', '2022-06-29 17:09:01', 'November', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01'),
(85, 'SPPRCMD9X', 1, 2, '08909096', '2022-06-29 17:09:01', 'Desember', '2022', 175000, '2022-06-29 10:09:01', '2022-06-29 10:09:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create-siswa', 'web', '2022-06-15 03:08:16', '2022-06-15 03:08:16'),
(2, 'read-siswa', 'web', '2022-06-15 03:08:16', '2022-06-15 03:08:16'),
(3, 'update-siswa', 'web', '2022-06-15 03:08:16', '2022-06-15 03:08:16'),
(4, 'delete-siswa', 'web', '2022-06-15 03:08:16', '2022-06-15 03:08:16'),
(5, 'create-users', 'web', '2022-06-15 03:08:16', '2022-06-15 03:08:16'),
(6, 'read-users', 'web', '2022-06-15 03:08:16', '2022-06-15 03:08:16'),
(7, 'update-users', 'web', '2022-06-15 03:08:16', '2022-06-15 03:08:16'),
(8, 'delete-users', 'web', '2022-06-15 03:08:17', '2022-06-15 03:08:17'),
(9, 'create-spp', 'web', '2022-06-15 03:08:17', '2022-06-15 03:08:17'),
(10, 'read-spp', 'web', '2022-06-15 03:08:17', '2022-06-15 03:08:17'),
(11, 'update-spp', 'web', '2022-06-15 03:08:17', '2022-06-15 03:08:17'),
(12, 'delete-spp', 'web', '2022-06-15 03:08:17', '2022-06-15 03:08:17'),
(13, 'create-kelas', 'web', '2022-06-15 03:08:17', '2022-06-15 03:08:17'),
(14, 'read-kelas', 'web', '2022-06-15 03:08:17', '2022-06-15 03:08:17'),
(15, 'update-kelas', 'web', '2022-06-15 03:08:17', '2022-06-15 03:08:17'),
(16, 'delete-kelas', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(17, 'create-roles', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(18, 'read-roles', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(19, 'update-roles', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(20, 'delete-roles', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(21, 'create-permissions', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(22, 'read-permissions', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(23, 'update-permissions', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(24, 'delete-permissions', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(25, 'create-pembayaran', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(26, 'read-pembayaran', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(27, 'update-pembayaran', 'web', '2022-06-15 03:08:18', '2022-06-15 03:08:18'),
(28, 'delete-pembayaran', 'web', '2022-06-15 03:08:19', '2022-06-15 03:08:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_petugas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_petugas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `user_id`, `kode_petugas`, `nama_petugas`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, 1, 'PTGFBMZA', 'Administrator', 'Laki-laki', '2022-06-15 03:08:24', '2022-06-15 03:08:24'),
(2, 2, 'PTGWAJGC', 'Indah', 'Perempuan', '2022-06-15 03:08:24', '2022-06-15 03:22:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-06-15 03:08:19', '2022-06-15 03:08:19'),
(2, 'petugas', 'web', '2022-06-15 03:08:21', '2022-06-15 03:08:21'),
(3, 'siswa', 'web', '2022-06-15 03:08:22', '2022-06-15 03:08:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_siswa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nisn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_siswa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telepon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `kode_siswa`, `nisn`, `nis`, `nama_siswa`, `jenis_kelamin`, `alamat`, `no_telepon`, `user_id`, `kelas_id`, `created_at`, `updated_at`) VALUES
(1, 'SSWKHSW4', '08909978', '08909955', 'Diva', 'Perempuan', 'Surabaya', '08599876098', 3, 1, '2022-06-15 03:08:25', '2022-06-15 03:19:09'),
(2, 'SSWIEMJG', '08909096', '08909842', 'Nina', 'Perempuan', 'Surabaya', '08599865056', 4, 2, '2022-06-15 03:08:25', '2022-06-15 03:19:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id`, `tahun`, `nominal`, `created_at`, `updated_at`) VALUES
(2, '2021', '170000', '2022-06-15 03:08:19', '2022-06-15 03:08:19'),
(3, '2022', '175000', '2022-06-15 03:08:19', '2022-06-15 03:08:19'),
(4, '2020', '165000', '2022-06-29 09:57:43', '2022-06-29 09:57:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin123', 'admin@example.com', NULL, '$2y$10$mr0NGtwfyRlYsQQR8DvO6ujvawcmhqYc08YyKvnOsyJ40juIs8Y4C', NULL, NULL, NULL, '2022-06-15 03:08:23', '2022-06-15 03:08:23'),
(2, 'indah123', 'indah@example.com', NULL, '$2y$10$mq2Z42S55wS0fD9r4kvd3uNY.fqvu5K5XM96H8fBWoiiU.irtxrrG', NULL, NULL, NULL, '2022-06-15 03:08:24', '2022-06-15 03:22:55'),
(3, 'diva123', 'diva@example.com', NULL, '$2y$10$02mQOtiCJ2VMe5Mc/vOsReT1CIxO0B6CkZXUelogaZxd5Zrt6kmly', NULL, NULL, NULL, '2022-06-15 03:08:25', '2022-06-15 03:08:25'),
(4, 'nina123', 'nina@example.com', NULL, '$2y$10$iqEkj77l97SXXb0IkoFKxuN0YJ6m11gBFyDp92wYdjPYLGPdJtA5G', NULL, NULL, NULL, '2022-06-15 03:08:25', '2022-06-15 03:23:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_petugas_id_foreign` (`petugas_id`),
  ADD KEY `pembayaran_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `petugas_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_user_id_foreign` (`user_id`),
  ADD KEY `siswa_kelas_id_foreign` (`kelas_id`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `spp`
--
ALTER TABLE `spp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_petugas_id_foreign` FOREIGN KEY (`petugas_id`) REFERENCES `petugas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD CONSTRAINT `petugas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
