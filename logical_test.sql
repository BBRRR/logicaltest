-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Agu 2021 pada 05.41
-- Versi Server: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `logical_test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `mhs_id` int(11) NOT NULL AUTO_INCREMENT,
  `mhs_nim` varchar(20) NOT NULL,
  `mhs_nama` varchar(200) NOT NULL,
  `mhs_angkatan` varchar(20) NOT NULL,
  PRIMARY KEY (`mhs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`mhs_id`, `mhs_nim`, `mhs_nama`, `mhs_angkatan`) VALUES
(1, '2018001', 'jono', '2018'),
(2, '2018002', 'taufik', '2018'),
(3, '2018003', 'maria', '2018'),
(4, '2018004', 'sari', '2019'),
(5, '2018005', 'bambang', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa_nilai`
--

CREATE TABLE IF NOT EXISTS `tb_mahasiswa_nilai` (
  `mhs_nilai_id` int(11) NOT NULL AUTO_INCREMENT,
  `mhs_id` int(11) NOT NULL,
  `mk_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  PRIMARY KEY (`mhs_nilai_id`),
  KEY `mhs_id` (`mhs_id`),
  KEY `mhs_id_2` (`mhs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `tb_mahasiswa_nilai`
--

INSERT INTO `tb_mahasiswa_nilai` (`mhs_nilai_id`, `mhs_id`, `mk_id`, `nilai`) VALUES
(1, 1, 1, 70),
(2, 1, 2, 76),
(3, 2, 1, 82),
(4, 2, 2, 74),
(5, 4, 1, 78),
(6, 4, 2, 80),
(7, 5, 1, 60);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_matakuliah`
--

CREATE TABLE IF NOT EXISTS `tb_matakuliah` (
  `mk_id` int(11) NOT NULL AUTO_INCREMENT,
  `mk_kode` varchar(20) NOT NULL,
  `mk_sks` varchar(20) NOT NULL,
  `mk_nama` varchar(200) NOT NULL,
  PRIMARY KEY (`mk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`mk_id`, `mk_kode`, `mk_sks`, `mk_nama`) VALUES
(1, 'MK202', '3', 'OOP'),
(2, 'MK303', '2', 'Basis Data');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
