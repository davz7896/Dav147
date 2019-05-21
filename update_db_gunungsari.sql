-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2019 at 05:18 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gunungsari`
--

-- --------------------------------------------------------

--
-- Table structure for table `agen_marketing`
--

CREATE TABLE `agen_marketing` (
  `kode` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `no_rek` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `agen_marketing`
--

INSERT INTO `agen_marketing` (`kode`, `nama`, `bank`, `no_rek`) VALUES
('A0001', 'PT.MBB', 'B.BCA', '542784'),
('AGEN-1', 'PT.TRIDJAYA KARTIKA', 'MANDIRI', '55741587564');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`nim`, `nama`, `email`, `alamat`, `telepon`, `foto`) VALUES
('7136163', 'jono', 'jono@gmail.com', 'malang', '09128393', 'img-4.png'),
('776376123', 'Samintul John', 'samintul@gmail.com', 'Semarang', '01923810', 'img-5.png'),
('9817389172', 'Joni', 'joni@gmail.com', 'Jombang', '01930912389', 'img-9.png'),
('P001', 'Jambol', 'jams@gmail.com', 'Blitar- malang', '081123456987', 'Koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ganti_nama`
--

CREATE TABLE `ganti_nama` (
  `nota` varchar(30) NOT NULL,
  `id_pelanggan` varchar(30) NOT NULL,
  `id_kavling` varchar(30) NOT NULL,
  `no_kavling` varchar(30) NOT NULL,
  `tgl_jual` varchar(30) NOT NULL,
  `utj` varchar(30) NOT NULL,
  `dp` varchar(30) NOT NULL,
  `angsuran` varchar(30) NOT NULL,
  `x_angsur` varchar(10) NOT NULL,
  `tgl_angsur_awal` varchar(30) NOT NULL,
  `tgl_angsur_akhir` varchar(30) NOT NULL,
  `harga_jadi` varchar(30) NOT NULL,
  `biaya_gnti_nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ganti_nama`
--

INSERT INTO `ganti_nama` (`nota`, `id_pelanggan`, `id_kavling`, `no_kavling`, `tgl_jual`, `utj`, `dp`, `angsuran`, `x_angsur`, `tgl_angsur_awal`, `tgl_angsur_akhir`, `harga_jadi`, `biaya_gnti_nama`) VALUES
('FR/A/0030033', '7136163', 'FR/A/003', '003', '20-05-2019', 'Rp. 1.000.000', 'Rp.1.340.000', 'Rp.1.786.667', '3', '2019-05-17', '2019-07-17', 'Rp.7.700.000', 'Rp. 1.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `kavling`
--

CREATE TABLE `kavling` (
  `nim1` varchar(50) NOT NULL,
  `kode_perumahan` varchar(30) NOT NULL,
  `blok` varchar(10) NOT NULL,
  `no_kav` varchar(30) NOT NULL,
  `l_tanah` varchar(20) NOT NULL,
  `l_bangunan` varchar(100) NOT NULL,
  `tipe` varchar(13) NOT NULL,
  `posisi` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `ppn` int(50) NOT NULL,
  `total` int(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kavling`
--

INSERT INTO `kavling` (`nim1`, `kode_perumahan`, `blok`, `no_kav`, `l_tanah`, `l_bangunan`, `tipe`, `posisi`, `harga`, `ppn`, `total`, `status`) VALUES
('FR/A/001', 'FR', 'A', '001', '150', '150', 'Upnormal', 'Lurus', 100000000, 10000000, 110000000, 'Hold'),
('FR/A/002', 'FR', 'A', '002', '150', '150', 'Upnormal', 'Lurus', 5000000, 500000, 5500000, 'Available'),
('FR/A/003', 'FR', 'A', '003', '150', '150', 'Upnormal', 'Lurus', 7000000, 700000, 7700000, 'Available'),
('FR/A/004', 'FR', 'A', '004', '150', '150', 'Upnormal', 'Lurus', 10000000, 1000000, 11000000, 'Available'),
('MR/A/001', 'MR', 'A', '001', '150', '150', 'Upnormal', 'Lurus', 1000000, 100000, 1100000, 'Available'),
('MR/A/002', 'MR', 'A', '002', '150', '150', 'Upnormal', 'Lurus', 1000000, 100000, 1100000, 'Available'),
('MR/A/003', 'MR', 'A', '003', '150', '150', 'Upnormal', 'Lurus', 70000000, 7000000, 77000000, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `marketer`
--

CREATE TABLE `marketer` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kota1` varchar(50) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `marketer`
--

INSERT INTO `marketer` (`nim`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `email`, `alamat`, `kota1`, `telepon`, `foto`) VALUES
('MK001', 'Naning', '', '0000-00-00', '', 'naning@gmail.com', 'Wonokromo', '', '0851726371623', 'wanita.png'),
('P001', 'Jambol', '', '0000-00-00', '', 'jams@gmail.com', 'Blitar- Malang', '', '081123456987', 'Koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `kode_transaksi` varchar(30) NOT NULL,
  `id_pelanggan` varchar(30) NOT NULL,
  `id_kavling` varchar(30) NOT NULL,
  `no_kavling` varchar(30) NOT NULL,
  `tgl_jual` varchar(30) NOT NULL,
  `utj` varchar(30) NOT NULL,
  `dp` varchar(30) NOT NULL,
  `angsuran` varchar(30) NOT NULL,
  `x_angsur` varchar(10) NOT NULL,
  `tgl_angsur_awal` varchar(30) NOT NULL,
  `tgl_angsur_akhir` varchar(30) NOT NULL,
  `harga_jadi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`kode_transaksi`, `id_pelanggan`, `id_kavling`, `no_kavling`, `tgl_jual`, `utj`, `dp`, `angsuran`, `x_angsur`, `tgl_angsur_awal`, `tgl_angsur_akhir`, `harga_jadi`) VALUES
('FR/A/0030033', '7136163', 'FR/A/003', '003', '17-05-2019', 'Rp. 1.000.000', 'Rp.1.340.000', 'Rp.1.786.667', '3', '2019-05-17', '2019-07-17', 'Rp.7.700.000'),
('FR/A/0040043', 'P001', 'FR/A/004', '004', '17-05-2019', 'Rp. 1.000.000', 'Rp.2.000.000', 'Rp.2.666.667', '3', '2019-05-17', '2019-07-17', 'Rp.11.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `perumahan`
--

CREATE TABLE `perumahan` (
  `kode_perumahan` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perumahan`
--

INSERT INTO `perumahan` (`kode_perumahan`, `foto`, `nama`, `alamat`, `telepon`, `email`, `status`) VALUES
('FR', 'Florencia Regency.jpg', 'Florencya Regency', 'Surabaya', '08172378123', 'floren@gmail.com', 1),
('GS', 'Grand Land Regency.jpg', 'Gunung Sari', 'Surabaya', '01928381723', 'gunung@gmail.com', 1),
('MR', 'Perumahan1.jpg', 'Milineal Regency', 'Surabaya', '0182381823', 'milineal@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pindah_kavling`
--

CREATE TABLE `pindah_kavling` (
  `nota_baru` varchar(30) NOT NULL,
  `nota_lama` varchar(30) NOT NULL,
  `id_pelanggan` varchar(30) NOT NULL,
  `id_kavling` varchar(30) NOT NULL,
  `no_kavling` varchar(30) NOT NULL,
  `tgl_jual` varchar(30) NOT NULL,
  `utj` varchar(30) NOT NULL,
  `dp` varchar(30) NOT NULL,
  `angsuran` varchar(30) NOT NULL,
  `x_angsur` varchar(10) NOT NULL,
  `tgl_angsur_awal` varchar(30) NOT NULL,
  `tgl_angsur_akhir` varchar(30) NOT NULL,
  `harga_jadi` varchar(30) NOT NULL,
  `biaya_pndah_kav` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pindah_kavling`
--

INSERT INTO `pindah_kavling` (`nota_baru`, `nota_lama`, `id_pelanggan`, `id_kavling`, `no_kavling`, `tgl_jual`, `utj`, `dp`, `angsuran`, `x_angsur`, `tgl_angsur_awal`, `tgl_angsur_akhir`, `harga_jadi`, `biaya_pndah_kav`) VALUES
('FR/A/0010043', 'FR/A/0040043', 'P001', 'FR/A/001', '004', '17-05-2019', 'Rp. 1.000.000', 'Rp.2.000.000', 'Rp.2.666.667', '3', '2019-05-17', '2019-07-17', 'Rp.11.000.000', 'Rp. 1.000.000'),
('FR/A/0040033', 'FR/A/0030033', '7136163', 'FR/A/004', '004', '20-05-2019', 'Rp. 1.000.000', 'Rp.1.340.000', 'Rp.1.786.667', '3', '2019-05-17', '2019-07-17', 'Rp.7.700.000', 'Rp. 1.000.000'),
('MR/A/0010033', 'FR/A/0030033', '7136163', 'MR/A/001', '001', '20-05-2019', 'Rp. 1.000.000', 'Rp.1.340.000', 'Rp.1.786.667', '3', '2019-05-17', '2019-07-17', 'Rp.7.700.000', 'Rp. 1.000.000'),
('MR/A/0030033', 'FR/A/0030033', '7136163', 'MR/A/003', '003', '17-05-2019', 'Rp. 1.000.000', 'Rp.1.340.000', 'Rp.1.786.667', '3', '2019-05-17', '2019-07-17', 'Rp.7.700.000', 'Rp. 1.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `kode` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `norekening` int(15) NOT NULL,
  `alamat_bank` varchar(15) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`kode`, `nama`, `norekening`, `alamat_bank`, `telepon`, `fax`, `kontak`, `catatan`) VALUES
('1', 'David', 193013, 'Mandiri Indones', '13810309', '131736', '1316234', 'Coba Coba'),
('', 'Atmaja', 859004572, 'BRI', '', '', '', 'COBA AJA'),
('', 'Nadya', 88776655, 'BNI', '', '', '', 'cOBA aJA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `agen_marketing` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `level_user` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `agen_marketing`, `email`, `telp`, `level_user`, `foto`) VALUES
(0, 'admin2', 'admin2', '21232f297a57a5a743894a0e4a801fc3', 'tridjaya', 'putnow@yahoo.com', '7845498746', 'admin', '0'),
(2, 'admin', 'admin', 'c132115067a893c243184799a7be24b1', 'tridjaya', 'tridjaya@kartika.com', '0165444', 'admin', '0'),
(12152332, 'dendo', 'dendo', '08aeb2926d05ca5383a8f324de3c4147', 'PT. Tridjaya Kartika', 'dendo@gmail.com', '9172379', 'member', ''),
(55123123, 'dono', 'dono', 'e3b810115555736a216f137df55789f6', 'PT. Tridjaya Kartika', 'dono@gmail.com', '7612367132', 'member', 'img-5.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agen_marketing`
--
ALTER TABLE `agen_marketing`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `ganti_nama`
--
ALTER TABLE `ganti_nama`
  ADD PRIMARY KEY (`nota`);

--
-- Indexes for table `kavling`
--
ALTER TABLE `kavling`
  ADD PRIMARY KEY (`nim1`);

--
-- Indexes for table `marketer`
--
ALTER TABLE `marketer`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- Indexes for table `perumahan`
--
ALTER TABLE `perumahan`
  ADD PRIMARY KEY (`kode_perumahan`);

--
-- Indexes for table `pindah_kavling`
--
ALTER TABLE `pindah_kavling`
  ADD PRIMARY KEY (`nota_baru`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD KEY `kode` (`kode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
