-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2015 at 07:22 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_masmatik`
--

-- --------------------------------------------------------

--
-- Table structure for table `ref_klasifikasi`
--

CREATE TABLE IF NOT EXISTS `ref_klasifikasi` (
  `id` int(4) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_klasifikasi`
--

INSERT INTO `ref_klasifikasi` (`id`, `kode`, `nama`, `uraian`) VALUES
(176, 'S-001', 'Undangan', 'Surat yang berkenaan dengan undangan'),
(177, 'S-002', 'Surat Pemberitahuan', 'Surat yang berkenaan dengan Pemberitahuan, informasi'),
(178, 'S-003', 'Surat Permohonan', '-'),
(179, 'S-004', 'Surat Keputusan', '-'),
(180, 'S-005', 'Surat Tugas', '-'),
(181, 'S-006', 'Surat Izin ', ''),
(182, 'S-007', 'Surat Keterangan Mahasiswa', ''),
(184, 'S-008', 'Surat Pengantar Keterangan Lulus', ''),
(186, 'S-009', 'Surat Pengantar KKL', ''),
(187, 'S-010', 'Surat Pengantar Observasi Lapangan', ''),
(188, 'S-011', 'Surat Pengantar Observasi Mata Kuliah', ''),
(189, 'S-012', 'Surat Pengantar Penelitian', ''),
(190, 'S-013', 'Surat Pengantar PKL', ''),
(191, 'S-014', 'Surat Pengantar PKM', ''),
(193, 'S-015', 'Surat Keterangan Pindah', ''),
(194, 'S-016', 'Surat Rekomendasi', ''),
(200, 'S-017', 'Surat Pengantar Observasi', '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_instansi`
--

CREATE TABLE IF NOT EXISTS `tr_instansi` (
  `id` int(1) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `ketua_instansi` varchar(100) NOT NULL,
  `nidn` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_instansi`
--

INSERT INTO `tr_instansi` (`id`, `nama`, `alamat`, `ketua_instansi`, `nidn`, `logo`) VALUES
(1, 'Jurusan Matematika', '<p>Fakultas Matematika dan Ilmu Pengetahuan Alam Universitas Negeri Jakarta\r\n<p>Jl. Rawamangun Muka, Jakarta Timur, Kota Jakarta, Daerah Khusus Ibukota Jakarta 13220 \r\n<p>Telp. (021) 4890046', 'Drs. Makmuri, M.Si', '19640715 198903 1 006', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE IF NOT EXISTS `t_admin` (
  `id` int(2) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(75) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`id`, `username`, `password`, `nama`, `nip`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', '19900326 201401 1 002', 'Super Admin'),
(2, 'umum', 'adfab9c56b8b16d6c067f8d3cff8818e', 'Divisi Web', '19900326 201401 1 002', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `t_disposisi`
--

CREATE TABLE IF NOT EXISTS `t_disposisi` (
  `id` int(6) NOT NULL,
  `id_surat` int(6) NOT NULL,
  `kpd_yth` varchar(250) NOT NULL,
  `isi_disposisi` varchar(250) NOT NULL,
  `sifat` enum('Biasa','Segera','Perlu Perhatian Khusus','Perhatian Batas Waktu') NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_disposisi`
--

INSERT INTO `t_disposisi` (`id`, `id_surat`, `kpd_yth`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`) VALUES
(1, 390, 'wakil rektor', 'dckh', 'Segera', '2015-11-19', 'kerjakan');

-- --------------------------------------------------------

--
-- Table structure for table `t_surat_keluar`
--

CREATE TABLE IF NOT EXISTS `t_surat_keluar` (
  `id` int(6) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `no_agenda` varchar(7) DEFAULT NULL,
  `isi_ringkas` mediumtext NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(100) DEFAULT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `pengolah` int(11) NOT NULL,
  `no_surat1` varchar(20) DEFAULT NULL,
  `no_surat2` varchar(20) DEFAULT NULL,
  `no_surat3` varchar(20) DEFAULT NULL,
  `no_surat4` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_surat_keluar`
--

INSERT INTO `t_surat_keluar` (`id`, `kode`, `no_agenda`, `isi_ringkas`, `tujuan`, `no_surat`, `tgl_surat`, `tgl_catat`, `keterangan`, `file`, `pengolah`, `no_surat1`, `no_surat2`, `no_surat3`, `no_surat4`) VALUES
(11, 'S-001', '0001', 'Izin KKN', 'Dinas Apa Ajalah', 'WE23', '2015-09-03', '2015-09-23', 'Izin', 'Information_Technology_Security.docx', 1, 'QW34', 'RF45', '56GH', 'JU78'),
(12, 'S-002', '0002', 'Laporan Kegiatan', 'Dinas Pariwisata DIY', '2356', '2015-09-15', '2015-09-23', 'HBKJBN', '', 1, 'RT6R', '5TR6', '5R6R', '6R5J'),
(13, 'S-002', '0003', 'Surat Keterangan Mahasiswa', 'Gregorius Andito', '032', '2015-10-07', '2015-10-07', 'gfjg', '', 1, '39.9', 'DU', 'VIII', '2015'),
(14, 'S-004', '0005', 'Surat Pengantar Penelitian', 'Pembantu Dekan 1', '2', '2015-11-09', '2015-11-09', '', NULL, 1, 'JM', 'DU', 'XI', '2015'),
(15, 'S-002', '0004', 'Surat Pengantar Observasi', 'Pembantu Dekan 1', '3', '2015-11-09', '2015-11-09', '', NULL, 1, 'JM', 'DU', 'X', '2015');

-- --------------------------------------------------------

--
-- Table structure for table `t_surat_masuk`
--

CREATE TABLE IF NOT EXISTS `t_surat_masuk` (
  `id` int(6) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `no_agenda` varchar(7) NOT NULL,
  `indek_berkas` varchar(100) NOT NULL,
  `isi_ringkas` mediumtext NOT NULL,
  `dari` varchar(250) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `pengolah` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_surat_masuk`
--

INSERT INTO `t_surat_masuk` (`id`, `kode`, `no_agenda`, `indek_berkas`, `isi_ringkas`, `dari`, `no_surat`, `tgl_surat`, `tgl_diterima`, `keterangan`, `file`, `pengolah`) VALUES
(69, 'S-001', '0001', 'Kajur Matematika', 'Undangan General Lecture', 'Panitia GL', '01/Bio.FMIPA.UNJ/IV/2015', '2015-04-01', '2015-04-08', 'Undangan', '', 1),
(70, 'S-002', '0002', 'Jurusan Matematika', 'Brosur ICMSE', 'Panitia', '-', '0000-00-00', '2015-04-10', 'Pemberitahuan', '', 1),
(71, 'S-002', '0003', 'Karyawan / Tenaga Kependidikan', 'Senam', 'TU FMIPA UNJ', '-', '2015-04-09', '2015-04-10', 'Pemberitahuan', '', 1),
(72, 'S-002', '0004', 'Lukman El Hakim', 'Workshop "Pengembangan Instrumen Analisis Kebutuhan Sumber Belajar Berbasis Kurikulum 2013"', 'Kepala PSB UNJ', '01/16/LL/2015', '2015-04-06', '2015-04-10', 'Pemberitahuan', '', 1),
(73, 'S-002', '0005', 'Dosen', 'Brosur Hibah Bantuan Penulisan Buku Teks Untuk DosenTA 2015', 'Bidang Akademik UNJ', '-', '2015-04-06', '2015-04-10', 'Pemberitahuan', '', 1),
(74, 'S-001', '0006', 'Dosen Program Magister Kajur + Kaprodi Matematika', 'Undangan Openhouse FMIPA UNJ', 'Dekan', '-', '2015-04-09', '2015-04-10', 'Undangan', '', 1),
(75, 'S-002', '0007', 'Dra. Suprakarti, M.Pd + Dr. Betty 25 + Kajur Matematika', 'Pemberitahuan Jadwal Ujian PKM', 'LPP', '13/H15/KM/IV/2015', '2015-04-13', '2015-04-13', 'Pemberitahuan', '', 1),
(76, 'S-001', '0008', 'Kajur Matematika', 'Undangan Seminar Active Learning In Higher Education (ALIHE)', 'LPP', '147/23/PT/2015', '2015-04-14', '2015-04-15', 'Undangan', '', 1),
(77, 'S-001', '0009', 'Kajur Matematika', 'Undangan Peserta Seminar Nasional Matematika', 'Jurusan Matematika UNM, Malang', '05/04/Seminar/2015', '2015-04-08', '2015-09-25', 'Undangan', '', 1),
(78, 'S-001', '0010', 'Kajur Matematika', 'Amplop Tertutup', 'PT. Pelindo III (Persero)', 'HM.04/42/P.III.2015', '0000-00-00', '2015-04-16', 'Amplop Tertutup', '', 1),
(79, 'S-001', '0011', 'Vera Maya Santi', 'Undangan Pelatihan ISO : 9001 : 2008 Fakultas', 'LPM', '40/24/LL/IV/2015', '2015-04-16', '2015-04-16', 'Undangan', '', 1),
(80, 'S-001', '0012', 'Kajur Matematika', 'Undangan Road Show Pimpinan UNJ ke FMIPA', 'Dekan', '-/-/-/-', '2015-04-16', '2015-04-16', 'Undangan', '', 1),
(81, 'S-002', '0013', 'Kajur Matematika', 'Insentif Buku Ajar Tahun 2015', 'P2M', '0646/E.54/HP/2015', '2015-04-01', '2015-04-16', 'Insentif', '', 1),
(82, 'S-001', '0014', 'Kajur Matematika', 'Undangan Seminar ALIHE (Active Learning In Higher Education)', 'LPP', '147/23/PT/2015', '2015-04-14', '2015-04-16', 'Undangan', '', 1),
(83, 'S-002', '0015', 'Kajur Matematika', 'Program Hibah Penulisan Buku Teks Perguruan Tinggi Th.2015', 'P2M', '0646/E.54/HP/2015', '2015-04-01', '2015-04-16', 'Pemberitahuan', '', 1),
(85, 'S-002', '0016', 'Kajur Matematika', 'Tak ada Perihal', 'Departemen Matematika USU', '-/-/-/-', '0000-00-00', '2015-04-16', 'Tidak ada', '', 1),
(86, 'S-002', '0017', 'Jurusan Matematika', 'Tawaran Beasiswa', 'DIKTI', '1395/E14/LN/2015', '2015-03-12', '2015-04-20', 'Pemberitahuan', '', 1),
(87, 'S-001', '0018', 'Jurusan Matematika', 'FGD Percepatan Guru Besar (Undangan)', 'Parek I', '-/-/-/-', '2015-04-02', '2015-04-20', 'Undangan', '', 1),
(88, 'S-002', '0019', 'Jurusan Matematika', 'Diskusi Ilmiah Forum Doktor', 'Parek I', '-/-/-/-', '2015-04-02', '2015-04-20', 'Undangan', '', 1),
(89, 'S-003', '0020', 'Anton N + Gerardus P', 'Permohonan Biodata', 'PPs', '3420/UN39.7.PPs/TU/2015', '2015-04-14', '2015-04-21', 'Permohonan', '', 1),
(90, 'S-001', '0021', 'Kajur + Kaprodi + Prof. Gerard', 'Undangan Peluncuran Buku "Pedagogik Teoritis Untuk Indonesia Karya Prof.Dr.Hartilaar', 'Wakil Rektor Bidang Akademik', '-/-/-/-', '0000-00-00', '2015-04-22', 'Undangan', '', 1),
(91, 'S-001', '0022', 'Anton N', 'Undangan Workshop Penyusunan Buku Panduan Pengembangan Kurikulum UNJ Th.2015', 'Wakil Rektor Bidang Akademik', '-/-/-/-', '2015-04-21', '2015-04-22', 'Undangan', '', 1),
(92, 'S-001', '0023', 'Kaprodi Matematika + Pendidikan Matematika', 'Undangan SemNasMat 2015', 'UNIKA Parahyangan', '-/-/-/-', '0000-00-00', '2015-04-22', 'Undangan', '', 1),
(93, 'S-002', '0024', 'Jurusan Matematika', 'Pemilihan Diktendik Berprestasi Tingkat Nasional Th.2015', 'DIKTI', '453/E42/2015', '2015-03-11', '2015-04-22', 'Pemberitahuan', '', 1),
(94, 'S-002', '0025', 'Jurusan Matematika', 'Brosur ICOWOBAS 2015 (5th International Conference And Workshops On Basic And Applied Science)', '-', '-/-/-/-', '0000-00-00', '2015-04-22', 'Pemberitahuan', '', 1),
(95, 'S-002', '0026', 'Jurusan Matematika', 'Insentif Buku Ajar Th. 2015', 'P2M', '0646/E54/HP/2015', '2015-04-01', '2015-04-22', 'Pemberitahuan', '', 1),
(96, 'S-002', '0027', 'Jurusan Matematika', 'Program Unggulan Berprestasi HKI (UBER HKI)', 'P2M', '0653/E54/HP/2015', '2015-04-01', '2015-04-22', 'Pemberitahuan', '', 1),
(97, 'S-002', '0028', 'Jurusan Matematika', 'Pembenahan Data PD DIKTI', 'PR1', '1147/UN39.1/TU/2015', '2015-04-14', '2015-04-22', 'Pemberitahuan', '', 1),
(98, 'S-001', '0029', 'Jurusan Matematika', 'Undangan diskusi kegiatan Th. 2015', 'Dekan', '-/-/-/-', '2015-04-21', '2015-04-22', 'Undangan', '', 1),
(99, 'S-002', '0030', 'Jurusan Matematika', 'Kilas FT', 'FT', '-/-/-/-', '0000-00-00', '2015-04-22', 'Pemberitahuan', '', 1),
(100, 'S-002', '0031', 'Jurusan Matematika', 'Info Lowongan Pekerjaan di Yayasan Pendidikan Jaya', 'Yayasan Pendidikan Jaya', '016/YPJ/IV/2015', '2015-04-20', '2015-04-23', 'Pemberitahuan', '', 1),
(101, 'S-002', '0032', 'Dosen Jurusan Matematika', 'Program Kerja Th.2015 LPP UNJ', 'LPP UNJ', '-/-/-/-', '2015-03-31', '2015-04-24', 'Pemberitahuan', '', 1),
(102, 'S-002', '0033', 'Dosen Jurusan Matematika', 'Daftar Tim Penyusun Buku Panduan Pembelajaran', '-', '-/-/-/-', '0000-00-00', '2015-04-24', 'Pemberitahuan', '', 1),
(103, 'S-002', '0034', 'Kajur + Kaprodi Matematika', 'Hasil Rapim Fakultas 24 April 2015', 'FMIPA', '-/-/-/-', '2015-04-24', '2015-04-27', 'Pemberitahuan', '', 1),
(104, 'S-005', '0035', 'Ibnu Hadi, Dwi Aw, Ratna W, Fariani H, Ellis S, Ratnaningsih ', 'Surat Tugas Dosen', 'FMIPA', '23/UN39.5.FMIPA/ST/2015', '2015-04-17', '2015-04-27', 'Pemberitahuan', '', 1),
(105, 'S-002', '0036', 'Wardani Rahayu', 'Surat Keterangan', 'Dekan', '225/UN39.5.FMIPA/Ket/2015', '2015-04-27', '2015-04-27', 'Pemberitahuan', '', 1),
(106, 'S-002', '0037', 'Jurusan Matematika', 'SKP Dosen Th. 2014', 'FMIPA', '-/-/-/-', '0000-00-00', '2015-04-27', 'Pemberitahuan', '', 1),
(107, 'S-002', '0038', 'Jurusan Matematika', 'Penelitian Th. 2014', 'FMIPA', '-/-/-/-', '0000-00-00', '2015-04-29', 'Pemberitahuan', '', 1),
(108, 'S-001', '0039', 'Ria Arafiyah + Anton N', 'Undangan Rapat Persiapan Ekspo Lemlit', 'Lemlit', '139/UNJ.39.9/PL/2015', '2015-04-23', '2015-04-29', 'Undangan', '', 1),
(109, 'S-001', '0040', 'Dosen Jurusan Matematika', 'Surat Edaran Upacara Peringatan HARDIKNAS', 'Rektor', '1281/UN39.2/TU/2015', '2015-04-24', '2015-04-29', 'Undangan', '', 1),
(110, 'S-002', '0041', 'Jurusan Matematika', 'Surat Edaran Upacara Peringatan HARDIKNAS', 'FMIPA', '-/-/-/-', '2015-04-29', '2015-04-30', 'Pemberitahuan', '', 1),
(111, 'S-002', '0042', 'Ibnu Hadi + Widyanto R', 'Buku Komik', 'Rektorat / Rumah Pensil', '-/-/-/-', '2015-04-29', '2015-04-30', 'Pemberitahuan', '', 1),
(112, 'S-002', '0043', 'Jurusan Matematika', 'Call For Abstracts And Preliminary Registration', 'PR1', '72/PR.I/TU/2015', '2015-04-28', '2015-05-04', 'Pemberitahuan', '', 1),
(113, 'S-001', '0044', 'Sri Sudaryati', 'Undangan Rapat Penilaian Berkas Ususl Kenaikan Jabatan', 'BAUK', '-/-/-/-', '2015-04-30', '2015-05-04', 'Undangan', '', 1),
(114, 'S-002', '0045', 'Prof. Gerard P', 'Penetapan Personalia Komisi Promotor Pengganti Program Pasca Sarjana UNJ', 'PPs', '139/SP/PPs/2015', '2015-04-22', '2015-05-05', 'Pemberitahuan', '', 1),
(115, 'S-006', '0046', 'Anton N + Lukman EH + Ibnu H + Siti RR + Agus AP', 'Surat Izin Dosen Acara OSN Siswa PK-LK', 'FMIPA', '38/UNJ39.5.FMIPA/Izin/2015', '2015-04-24', '2015-05-05', 'Surat Izin', '', 1),
(116, 'S-002', '0047', 'Jurusan Matematika', 'Anggaran P2M FMIPA Th. 2015', 'Dekan', '2645.FMIPA/KP/2015', '2015-04-30', '2015-05-05', 'Pemberitahuan', '', 1),
(117, 'S-002', '0048', 'Ratna W + Henny W + Vera Maya Santi', 'Pemberitahuan Audit Internal', 'LPM', '-/-/-/-', '2015-05-04', '2015-05-05', 'Pemberitahuan', '', 1),
(118, 'S-002', '0049', 'Ibnu Hadi', 'Amplop Tertutup', 'ITB', '-/-/-/-', '0000-00-00', '2015-05-05', 'Pemberitahuan', '', 1),
(119, 'S-002', '0050', 'Jurusan Matematika', 'Bantuan Dana Studi Lanjut Dosen Th. 2015', 'Rektorat', '-/-/-/-', '0000-00-00', '2015-05-05', 'Pemberitahuan', '', 1),
(120, 'S-002', '0051', 'Kaprodi Matematika', 'Pelaksanaan Semester Pendek 102', 'PR I', '76/PR.I/TU/2015', '2015-04-28', '2015-05-05', 'Pemberitahuan', '', 1),
(121, 'S-002', '0052', 'Kaprodi Matematika', 'Penulisan Draf Buku Pedoman Akademik 2015/2016', 'PR I', '75/PR.I/TU/2015', '2015-04-28', '2015-05-05', 'Pemberitahuan', '', 1),
(122, 'S-003', '0053', 'Kaprodi Matematika', 'Format Jadwal Semester Pendek', 'PR I', '75/PR.I/TU/2015', '2015-04-28', '2015-05-05', 'Pemberitahuan', '', 1),
(123, 'S-002', '0054', 'Wardani Rahayu', 'Reviewer Proposal Penelitian FMIPA 2015', 'PD I', '272/UNJ.39.6/FMIPA/DT/2014', '2015-05-04', '2015-05-05', 'Pemberitahuan', '', 1),
(124, 'S-002', '0055', 'Kajur Matematika', 'Amplop Tertutup', 'Departemen Statistika FMIPA Unpad', '-/-/-/-', '2015-05-02', '2015-05-05', 'Pemberitahuan', '', 1),
(125, 'S-001', '0056', 'Bambang Irawan', 'Undangan Persiapan Visitasi AIPT', 'PR I', '-/-/-/-', '2015-05-04', '2015-05-05', 'Undangan', '', 1),
(126, 'S-001', '0057', 'Anton N + Ria A', 'Undangan Rapat Ekspo Lanjutan', 'Lemlit', '145/UN39.9/PL/2015', '2015-05-04', '2015-05-05', 'Undangan', '', 1),
(127, 'S-002', '0058', 'Jurusan Matematika', 'Pelatihan Bahasa Inggris', 'UPT Bahasa', '016/UN39.17/BS/2015', '2015-05-05', '2015-05-06', 'Pemberitahuan', '', 1),
(128, 'S-001', '0059', 'Kajur Matematika', 'Undangan Rapat', 'Dekan', '-/-/-/-', '2015-05-05', '2015-05-07', 'Undangan', '', 1),
(129, 'S-002', '0060', 'Jurusan Matematika', 'Permohonan Database Dosen', 'UPT Humas UNJ', '110/20/HM/IV/2015', '2015-04-28', '2015-05-07', 'Pemberitahuan', '', 1),
(130, 'S-001', '0061', 'Vera Maya Santi', 'Undangan rapat koordinasi panitia sidang terbuka senat UNJ', 'PR 1', '-', '2015-05-05', '2015-05-07', '', '', 1),
(131, 'S-001', '0062', 'Suprakarti', 'Undangan rapat tim pengembang PPL / PKL', 'PPL / PKL', '-', '2015-05-07', '2015-05-11', '', '', 1),
(132, 'S-002', '0063', 'Jurusan Matematika', 'Buku direktori Pegawai UNJ 2014', '-', '-', '0000-00-00', '2015-05-11', '', '', 1),
(134, 'S-002', '0064', 'Pak Makmuri', 'Tim Verifikasi FMIPA', 'Dekan FMIPA', '302/UN.39.5/FMIPA/DT/2015', '2015-05-11', '2015-05-12', '', '', 1),
(135, 'S-002', '0065', 'Jurusan Matematika', 'Pendaftaran mahasiswa PPL/PKM', 'Pusat PPL dan PKL', '17/H15/KM/V/2015', '2015-05-11', '2015-05-12', '', '', 1),
(136, 'S-002', '0066', 'Jurusan Matematika', 'Buku "UNJ dalam Angka (2013)"', 'UNJ', '-', '0000-00-00', '2015-05-12', '', '', 1),
(137, 'S-003', '0067', 'Kajur Matematika', 'Permohonan Mengajar SP', 'Jurusan Kimia FMIPA', '261/JK/Adm/V/2015', '2015-05-12', '2015-05-13', '', '', 1),
(138, 'S-001', '0068', 'Kajur + Kaprodi, GUru Besar', 'Undangan Dies Natalis UNJ ke-51', 'UNJ', '-', '0000-00-00', '2015-05-15', '', '', 1),
(139, 'S-001', '0069', 'Anton Noornia', 'Undangan workshop penyusunan buku panduan dan pengembangan kurikulum UNj th.2015 (pertemuan kedua)', 'LPP', '193/23/PT/2015', '2015-05-13', '2015-05-15', '', '', 1),
(140, 'S-003', '0070', 'Kajur Matematika', 'Permohonan mata kuliah SP untuk matematika dasar', 'Jurusan Biologi FMIPA', '748/Bio.FMIPA/V/2015', '2015-05-13', '2015-05-15', '', '', 1),
(141, 'S-003', '0071', 'Jurusan Matematika', 'Permohonan peminjaman ruang kuliah jurusan matematika', 'Jurusan Fisika FMIPA', '391/FISIKA/2015', '2015-05-13', '2015-05-15', '', '', 1),
(142, 'S-002', '0072', 'Jurusan Matematika', 'Pembayaran serdos, tunjangan', 'PR II', '1432-2/KU/2015', '2015-05-13', '2015-05-18', '', '', 1),
(143, 'S-002', '0073', 'Jurusan Matematika', 'Pemberitahuan Monev On-Line semester 102', 'LPM', '60/24/LL/5/2015', '2015-05-12', '2015-05-19', '', '', 1),
(144, 'S-002', '0074', 'Jurusan Matematika', 'Pemberitahuan jadwal ujian PKM', 'PPL/PKL', '13/H15/KM/IV/2015', '2015-04-13', '2015-05-19', '', '', 1),
(145, 'S-002', '0075', 'Jurusan Matematika', 'Pendaftaran mahasiswa PPL/PKM semester ganjil 103 tahun 2015/2016', 'PPL/PKL', '17/H15/KM/IV/2015', '2015-05-11', '2015-05-19', '', '', 1),
(146, 'S-002', '0076', 'Jurusan Matematika', 'Pendaftaran online PPL/PKM', 'PPL/PKL', '16/H15/KM/IV/2015', '2015-05-08', '2015-05-19', '', '', 1),
(147, 'S-001', '0077', 'Jurusan Matematika', 'Undangan Lokakarya', 'FBS FMIPA UNJ', '01/6.FBS/V/2015', '2015-05-06', '2015-05-19', '', '', 1),
(148, 'S-002', '0078', 'Jurusan Matematika', 'Penundaan pencairan dana penelitian th.2015', 'Lemlit', '153/439.9/PL/2015', '2015-05-11', '2015-05-19', '', '', 1),
(149, 'S-001', '0079', 'Jurusan Matematika', 'Undangan workshop penyusunan buku panduan paguyuban kurikulum UNJ 2015', 'LPP', '193/23/PT/2015', '2015-05-13', '2015-05-19', '', '', 1),
(150, 'S-002', '0080', 'Jurusan Matematika', 'Presentasi hasil karya inovatif produktif dosen + mahasiswa', 'UNJ', '947/UN39/TU/2015', '2015-04-06', '2015-05-19', '', '', 1),
(151, 'S-002', '0081', 'Jurusan Matematika', 'Call for papers-International Conference On Science, Technology and Interdisciplinary Research', 'FT UnLamp', '493/IE.STAR/5/2015', '2015-05-04', '2015-05-20', '', '', 1),
(152, 'S-001', '0082', 'Vera Maya Santi', 'Undangan Rapat koordinasi lanjutan panitia sidang terbuka senat UNJ', 'PR I', '-', '2015-05-18', '2015-05-20', '', '', 1),
(153, 'S-001', '0083', 'Kajur + Kaprodi Matematika', 'Undangan penjelasan persiapan visitasi Akreditasi institusi perguruan tinggi (AIPT) UNJ', 'PR I', '-', '2015-05-18', '2015-05-20', '', '', 1),
(154, 'S-002', '0084', 'Kajur Matematika', 'Instrumen penilaian siklus penjaminan mutu fakultas semester 100-101 TA 2014', 'LPJM', '-', '0000-00-00', '2015-05-20', '', '', 1),
(155, 'S-001', '0085', 'Kajur Matematika + Aris HW', 'Undangan seminar dan diskusi tentang model-model pembelajaran', 'LPP', '203/23/PT/2015', '2015-05-19', '2015-05-21', '', '', 1),
(156, 'S-001', '0086', 'Aris Hadiyan', 'Undangan rapat workshop penyusunan buku panduan laporan pendidikan bagi mahasiswa disabilitas UNJ tahun 2015 (Pertemuan I)', 'LPP', '211/23/PT/2015', '2015-05-20', '2015-05-21', '', '', 1),
(157, 'S-001', '0087', 'Lukman EH, Lukita A, Anton N', 'Undangan semiloka ''Penulisan Artikel dan Akses Jurnal Internasional yang Terindeks Scopus, Thompson, DOAJ bagi pimpinan dan dosen PPs UNJ', 'PPs', '06/PAN.SEM-Lok/PPs.DOS/DIES-51', '2015-05-13', '2015-05-21', '', '', 1),
(158, 'S-001', '0088', 'Siti Rohmah R', 'Undangan Pengarahan dan pemberian surat tugas prajabatan', 'BAUK', '-', '0000-00-00', '2015-05-21', '', '', 1),
(159, 'S-001', '0089', 'Wardani Rahayu', 'Undangan workshop penyusunan buku panduan evaluasi pembelajaran UNJ th.2015', 'LPP', '214/23/PT/2015', '2015-05-20', '2015-05-21', '', '', 1),
(160, 'S-002', '0090', 'Prodi Siskom', 'Sertifikat Siskom (Prodi)', 'BAN-PT', '-', '2015-05-21', '2015-05-21', '', '', 1),
(161, 'S-002', '0091', 'Jurusan Matematika', 'Call for papers : Jurnal Penelitian Pos dan informatika', 'Komen Kominfo', '-', '0000-00-00', '2015-05-25', '', '', 1),
(162, 'S-002', '0092', 'Jurusan Matematika', 'International Conference on Counceling and Education', 'UNP', '-', '0000-00-00', '2015-05-25', '', '', 1),
(163, 'S-004', '0093', 'Vera Maya Santi', 'SK Panitia pelaksana sidang senat terbuka Dies Natalis', 'Rektor', '649/SP/2015', '2015-05-05', '2015-05-25', '', '', 1),
(164, 'S-001', '0094', 'Aris HW + Wardani R', 'Undangan workshop penyusunan buku panduan layanan pendidikan bagi mahasiswa disabilitas (Pertemuan I)', 'LPP', '211/23/PT/2015', '2015-05-20', '2015-05-25', '', '', 1),
(165, 'S-001', '0095', 'Kajur + Kaprodi Matematika', 'Undangan SemNas Fisika 2015', 'Kajur Fisika', '354/FISIKA/2015', '2015-05-25', '2015-05-25', '', '', 1),
(166, 'S-001', '0096', 'Kajur Matematika', 'Undangan seminar "Berhenti merokok, Apa Mungkin?"', 'Poliklinik UNJ', '106/SKU-PLKK/V/2015', '2015-05-21', '2015-05-26', '', '', 1),
(167, 'S-001', '0097', 'Vera Maya Santi', 'Undangan Rapat Expo (Finalisasi)', 'Lemlit', '178/UN39.9/LP/2015', '2015-05-25', '2015-05-26', '', '', 1),
(168, 'S-003', '0098', 'Kajur + Kaprodi Matematika', 'Permohonan menghadiri acara "UNJ research Expo"', 'Lemlit', '182/UN39.9/LP/2015', '2015-05-25', '2015-05-27', '', '', 1),
(169, 'S-002', '0099', 'Jurusan Matematika', 'Pemberitahuan kewajiban mengikuti KKN bagi mahasiswa', 'PR I', '89/PRI/TU/2015', '2015-05-21', '2015-05-27', '', '', 1),
(170, 'S-002', '0100', 'Jurusan Matematika', 'Brosur lowongan pekerjaan', 'Fokus study club JKT', 'SK/I/HRD/118/2015', '2015-05-22', '2015-05-27', '', '', 1),
(171, 'S-003', '0101', 'Jurusan Matematika', 'Permohonan menghadirkan mahasiswa S1 Kependidikan', 'LPP', '244/23/KM/2015', '2015-05-28', '2015-05-29', '', '', 1),
(172, 'S-002', '0102', 'Jurusan Matematika', 'Revisi surat perihal KKN bagi mahasiswa', 'PR', '93/PRI/TU/2015', '2015-05-27', '2015-05-29', '', '', 1),
(173, 'S-002', '0103', 'Kajur + Kaprodi Matematika', 'Persiapan visitasi AIPT th 2015', 'Dekan', '318/UN39.5/FMIPA/DT/2015', '2015-05-29', '2015-05-29', '', '', 1),
(174, 'S-002', '0104', 'Jurusan Matematika', 'Pemberitahuan cab micro teaching PPL/PKL LPP UNJ', 'PPL/PKL LPP', '19/H15/KM/V/2015', '2015-05-28', '2015-05-29', '', '', 1),
(175, 'S-002', '0105', 'Jurusan Matematika', 'Amplop Tertutup', '-', '-', '0000-00-00', '2015-05-29', '', '', 1),
(176, 'S-002', '0106', 'Jurusan Matematika', 'pemberitahuan kewajiban ikut KKN', 'PR I', '89/PRI/TU/2015', '2015-05-21', '2015-05-29', '', '', 1),
(177, 'S-002', '0107', 'Kajur + Kaprodi Matematika', 'Pelatihan penulisan Artikel ilmiah tahun 2015', 'Lemlit', '170/UN39.9/LP/2015', '2015-05-28', '2015-05-29', '', '', 1),
(178, 'S-002', '0108', 'Kajur Matematika', 'Indonesia Statistics conference and Olympiad 2015', 'Ikatan Perstatistikaan Indonesia', '-', '0000-00-00', '2015-06-01', '', '', 1),
(179, 'S-002', '0109', 'Kajur + Kaprodi Matematika', 'Pembukaan "UNJ Research Expo"', 'Lemlit', '186/UN39.9/LP/2015', '2015-05-28', '2015-06-03', '', '', 1),
(180, 'S-001', '0110', 'Kajur Matematika', 'Undangan Dies Natalis', '-', '-', '0000-00-00', '2015-06-04', '', '', 1),
(181, 'S-001', '0111', 'Kajur Matematika', 'Undangan seminar Mathematics, Science, And Computer Science Education 2015 (MSCEIS''15)', 'UPI', '04/MSCEIS/V/2015', '2015-05-06', '2015-06-08', '', '', 1),
(182, 'S-002', '0112', 'Kajur + Kaprodi Matematika', 'Perubahan jadwal PKM semester ganjil (103) thn 2015', 'LPP', '20/H15/KM/LPP/V/2015', '2015-06-03', '2015-06-08', '', '', 1),
(183, 'S-002', '0113', 'Kajur Matematika', 'Data sertifikasi dosen FMIPA', 'FMIPA', '335/UN.39.5/FMIPA/DT/2015', '2015-06-04', '2015-06-08', '', '', 1),
(184, 'S-001', '0114', 'Kajur Matematika', 'Undangan Tarhib ramadhan FMIPA', 'Dekan', '-', '2015-06-05', '2015-06-08', '', '', 1),
(185, 'S-002', '0115', 'Jurusan Matematika', '-', 'Universitas Sanata Dharma', '-', '0000-00-00', '2015-06-08', '', '', 1),
(186, 'S-002', '0116', 'kajur + kaprodi + kalab Matematika', 'Visitasi AIPT 2015', 'FMIPA', '338/UN.39.5/FMIPA/DT/2015', '2015-06-08', '2015-06-08', '', '', 1),
(187, 'S-002', '0117', 'Kajur + Kaprodi + kalab Matematika', 'Visitasi penilaian pelaksanaan SPM Fakultas oleh LPJM', 'FMIPA', '339/UN.39.5/FMIPA/DT/2015', '2015-06-08', '2015-06-08', '', '', 1),
(188, 'S-001', '0118', 'Gerardus Polla, Kajur, Kaprodi', 'Undangan Penyambutan visitasi AIPT', 'Rektor', '-', '2015-06-09', '2015-06-09', '', '', 1),
(189, 'S-002', '0119', 'Kajur Matematika', 'Perpanjangan pendaftaran mahasiswa PPL/PKM', 'Ka.Pusat PPL / PKL', '2/H15/KM/VI/2015', '2015-06-08', '2015-06-11', '', '', 1),
(190, 'S-001', '0120', 'Jurusan Matematika', 'Undangan Gathering Dies Natalis UNJ', 'Panitia Dies Natalis', '-', '0000-00-00', '2015-06-11', '', '', 1),
(191, 'S-001', '0121', 'Lukman EH', 'Undangan workshop buku panduan pembelajaran UNJ th 2015', 'LPP UNJ', '215/23/PT/2015', '2015-06-08', '2015-06-11', '', '', 1),
(192, 'S-002', '0122', 'Mahasiswa yang bersangkutan', 'Persetujuan PKL a.n Heru W + Bobby Reynaldo', 'BKN', '334/K/ROPEG/IV/2015', '2015-04-08', '2015-06-11', '', '', 1),
(193, 'S-002', '0123', 'Jurusan Matematika', 'Validasi peerta sertifikasi dosen 2015', 'PR I', '-', '2015-06-08', '2015-06-11', '', '', 1),
(194, 'S-001', '0124', 'Jurusan Matematika', 'Undangan raker RSB + RBA  FMIPA th 2016', 'Dekan', '-', '2015-06-09', '2015-06-11', '', '', 1),
(195, 'S-002', '0125', 'Jurusan Matematika', 'Amplop Tertutup', 'UNIKA PARAHYANGAN', '-', '0000-00-00', '2015-06-11', '', '', 1),
(196, '', '0126', 'Kajur + Kaprodi Matematika', 'Ralat Undangan raker RSB dan RBA FMIPA 2016', 'Dekan FMIPA', '-', '2015-06-15', '2015-06-15', '', '', 1),
(197, 'S-002', '0127', 'Kaprodi Matematika', 'Persetujuan PKL a.n Heru Wibowo + Bobby Reynaldo', 'BKN', '-', '2015-04-08', '2015-06-16', '', '', 1),
(198, 'S-001', '0128', 'Tenaga Honorer', 'Undangan sosialisasi BPJS kesehatan untuk tenaga honorer', 'Rektor', '-', '2015-06-15', '2015-06-16', '', '', 1),
(199, 'S-002', '0129', 'Jurusan Matematika', 'Pengesahan peserta semster pendek 102P', 'Fakultas FMIPA', '-', '0000-00-00', '2015-06-16', '', '', 1),
(200, 'S-002', '0130', 'Jurusan Matematika', 'Sosialisasi Serdos', 'PR II', '1838/UN39.2/TU/2015', '2015-06-16', '2015-06-19', '', '', 1),
(201, 'S-001', '0131', 'kaprodi Pendidikan Matematika', 'Undangan rapat kegiatan audit mutu akademik internal persiapan akreditasi BAN-PT prodi', 'LPM', '75/24/LL/VI/2015', '2015-06-18', '2015-06-19', '', '', 1),
(202, 'S-002', '0132', 'Jurusan Matematika', 'Brosur " The International Conference On Mathematics, Science, Education, And, Technology"', 'Panitia', '-', '0000-00-00', '2015-06-19', '', '', 1),
(203, 'S-002', '0133', 'Kajur Matematika', '-', 'Indo MS', '-', '0000-00-00', '2015-06-23', '', '', 1),
(204, 'S-002', '0134', 'Jurusan Matematika', 'Pemberitahuan bingkisan lebaran', 'TU FMIPA', '-', '2015-06-22', '2015-06-23', '', '', 1),
(205, 'S-004', '0135', 'Swida P, Vera MS, Anton N, M. Eka S, Dwi AW, Widyanti R', 'SK rektor tentang penetapan bantuan dana bagi dosen pelaksana kegiatan pengabdian kepada masyarakat di LPM UNJ', 'Rektor', '626/SP/2015', '2015-04-30', '2015-06-23', '', '', 1),
(206, 'S-001', '0136', 'IH, VM, RA', 'Undangan Pembekalan KKN', 'LPM', '-', '2015-06-17', '2015-06-29', '', '', 1),
(207, 'S-002', '0137', 'kajur + kalab Matematika', 'Notulen Rapat', 'Fakultas FMIPA', '-', '2015-06-26', '2015-06-30', '', '', 1),
(208, 'S-001', '0138', 'Jurusan Matematika', 'Undangan mengelola pembelajaran secara online (e-learning)', 'LPP UNJ', '301/23/PT/2015', '2015-06-29', '2015-06-30', '', '', 1),
(209, 'S-001', '0139', 'Kajur + Kaprodi Matematika', 'Undangan Ifthor Jama''i', 'UNJ', '-', '0000-00-00', '2015-07-01', '', '', 1),
(210, 'S-001', '0140', 'kaprodi Pendidikan Matematika', 'Undangan rapat koordinasi penyusunan barang akreditasi prodi', 'PD I', '-', '2015-06-30', '2015-07-01', '', '', 1),
(211, 'S-002', '0141', 'Kajur Matematika + Yudi M', 'Penyerahan soal penmaba 2015', 'PD I', '356/UN.39.6/FMIPA/DT/2015', '2015-06-30', '2015-07-01', '', '', 1),
(212, 'S-001', '0142', 'kajur + kaprodi + kalab Matematika', 'Undangan rapat pengembangan Lab FMIPA', 'Dekan', '-', '2015-06-30', '2015-07-01', '', '', 1),
(213, 'S-002', '0143', 'Jurusan Matematika', 'Informasi Libur Lebaran', 'Ka. BAUK', '1992/UN.39.11/TU/2015', '2015-06-30', '2015-07-01', '', '', 1),
(214, 'S-002', '0144', 'kaprodi Pendidikan Matematika', 'Tindak Lanjut Analisis Kebutuhan Sumber Belajar', 'LPP UNJ', '36/16/LL/2015', '2015-06-29', '2015-07-01', '', '', 1),
(215, 'S-002', '0145', 'Kajur Matematika', 'Proposal Lab terpadu MIPA', 'Dekan', '358/UN.39.5/FMIPA/DT/2015', '2015-07-02', '2015-07-03', '', '', 1),
(216, 'S-002', '0146', 'VMS, RA, SRR', 'Pelaksanaan paparan proposal penelitian hibah DIKTI 2016', 'Lemlit', '205/UN.39.9/LP/2015', '2015-06-29', '2015-07-06', '', '', 1),
(217, 'S-001', '0147', 'Sri Sudaryati', 'Undangan rapat penliaian berkas usul kenaikan jabatan / Akademik dosen', 'Ka. Tim PAK UNJ', '-', '2015-07-02', '2015-07-06', '', '', 1),
(218, 'S-002', '0148', 'Kaprodi Mtk, Kaprodi pend.mtk, kaprodi siskom, kaprodi magister pend.mat', 'Notulen rapat hari/tanggal : Kamis, 2 Juli 2015', 'FMIPA', '-', '2015-07-07', '2015-07-08', '', '', 1),
(219, '', '0149', 'Kaprodi Mtk, Kaprodi pend.mtk, kaprodi siskom, kaprodi magister pend.mat', 'Undangan buka puasa tanggal 9 Juli 2015', 'Rektor UNJ', '2041/UN.39/TU/2015', '2015-07-07', '2015-07-08', '', '', 1),
(220, 'S-001', '0150', 'Kaprodi S2pend.mat, kajur + kaprodi S1', 'Undangan Rapat persiapan yudisium FMIPA', 'Dekan', '-', '2015-07-08', '2015-07-08', '', '', 1),
(221, 'S-002', '0151', 'Vera Maya Santi', 'Amplop Tertutup', 'UNJ', '-', '0000-00-00', '2015-07-10', '', '', 1),
(222, 'S-001', '0152', 'Dosen + karyawan jurusan Matematika', 'Undangan Halal Bihalal UNJ', 'FIK', '298/UN.39.5.FIK/UND/VII/2015', '2015-07-22', '2015-07-24', '', '', 1),
(223, 'S-002', '0153', 'Drs. Makmuri, M.Si', 'Tim verifikasi FMIPA UNJ 2015', 'Dekan', '359/UN.39.5/FMIPA/DT/2015', '2015-07-14', '2015-07-24', '', '', 1),
(224, 'S-002', '0154', 'kajur + kaprodi matematika', 'Surat perpanjangan Masa Studi prodi pendidikan matematika', 'BAAK', '294/UN.39.12.1/EP/2015', '2015-07-14', '2015-07-24', '', '', 1),
(225, 'S-002', '0155', 'kaprodi', 'Surat perpanjangan masa studi prodi Matematika', 'BAAK', '311/UN.39.12.1/EP/2015', '2015-07-15', '2015-07-24', '', '', 1),
(226, 'S-002', '0156', 'kaprodi Matematika', 'Jadwal Semester 103 MKU', 'Ka. MKU', '46/UPT.MKU/VII/2015', '2015-07-12', '2015-07-27', '', '', 1),
(227, 'S-002', '0157', 'Jurusan Matematika', 'Daftar mahasiswa untuk evaluasi kemajuan studi', 'Ka.Biro BAAK', '290/UN.39.12.1/EP/2015', '2015-07-10', '2015-07-27', '', '', 1),
(228, 'S-001', '0158', 'Prof. Gerard P', 'Undangan HBH', 'UNJ', '-', '0000-00-00', '2015-07-27', '', '', 1),
(229, 'S-002', '0159', 'Jurusan Matematika', 'Jadwal MKDK semester 103', 'MKDK', '17/MKDK.LL/VII/2015', '2015-07-27', '2015-07-28', '', '', 1),
(230, 'S-001', '0160', 'Kajur + Kaprodi Matematika', 'Undangan rapat persiapan yudisium FMIPA', 'Dekan', '-', '2015-07-27', '2015-07-28', '', '', 1),
(231, 'S-001', '0161', 'kajur + kaprodi matematika', 'Undangan rapat kinerja jurusan', 'Dekan', '-', '2015-07-27', '2015-07-28', '', '', 1),
(232, 'S-002', '0162', 'PD, DA, DB + ED', 'Pendistrikasian buku ajar kurikulum KKNI 2014', 'LPP UNJ', '333/23/KR/2015', '2015-07-14', '2015-07-28', '', '', 1),
(233, 'S-002', '0163', 'RA + DH', 'Pencairan dana penelitian tahap I', 'Lemlit', '211/UN.39.9/PL/2015', '2015-07-27', '2015-07-29', '', '', 1),
(234, 'S-001', '0164', 'Jurusan Matematika', 'Undangan Forum FMIPA LPTK', 'KOMANSED', '003/Pan.Komansed/FMIPAUNIMA/2015', '2015-07-08', '2015-07-29', '', '', 1),
(235, 'S-002', '0165', 'Siti Rohmah, Ria Arafiyah', 'Perbaikan proposal desk evaluasi dan pembahasan proposal', 'Lemlit', '214/UN.39.9/PL/2015', '2015-07-27', '2015-07-30', '', '', 1),
(236, 'S-002', '0166', 'Jurusan Matematika', 'Jadwal MKU semster 103', 'MKU', '46/UPT.MKU/VII/2015', '2015-07-12', '2015-07-30', '', '', 1),
(237, 'S-001', '0167', 'Drs. Makmuri, M.Si', 'Undangan pembukaan prakondisi SM-3T UNJ Angkt V 2015-2016', 'LPP', '353/23/DL/2015', '2015-07-28', '2015-07-30', '', '', 1),
(238, 'S-001', '0168', 'Drs. Makmuri, M.Si', 'Undangan rapat kegiatan prakondisi SM-3T UNJ Angkt V', 'LPP', '354/23/DL/2015', '2015-07-28', '2015-07-30', '', '', 1),
(239, 'S-001', '0169', 'Jurusan Matematika', 'Undangan koordinasi kegiatan penmaba', 'FMIPA', '-', '2015-07-30', '2015-07-31', '', '', 1),
(240, 'S-001', '0170', 'Prof. Gerard P', 'Undangan', 'PPs', '-', '0000-00-00', '2015-08-03', '', '', 1),
(241, 'S-002', '0171', 'Anton N', 'Amplop Tertutup', 'PPs', '-', '0000-00-00', '2015-08-03', '', '', 1),
(242, 'S-002', '0172', 'Anton N, Tri Murdiyanto', 'Amplop Tertutup', 'Indo MS', '-', '0000-00-00', '2015-08-03', '', '', 1),
(243, 'S-001', '0173', 'kaprodi S1 Pend.Mat', 'Undangan rapat persapan akreditasi BAN-PT Prodi', 'LPjM', '86/24/LL/VIII/2015', '2015-08-05', '2015-08-04', '', '', 1),
(244, 'S-001', '0174', 'kajur + kaprodi matematika', 'Undangan lokakarya', 'AIPI', '-', '2015-07-29', '2015-08-04', '', '', 1),
(245, 'S-002', '0175', 'Jurusan Matematika', 'Pemberitahuan usul kenaikan pangkat', 'BAUK UNJ', '270/11.2/KP/2015', '2015-08-03', '2015-08-05', '', '', 1),
(246, 'S-002', '0176', 'Jurusan Matematika', 'Calon jamaah Haji th 2015', 'BAUK UNJ', '2269/UN39.11/TU/2015', '2015-07-28', '2015-08-05', '', '', 1),
(247, 'S-001', '0177', 'kajur + kaprodi matematika', 'Undangan persiapan MPA mahasiswa baru FMIPA UNJ TA 2015-2016', 'Dekan FMIPA UNJ', '-', '2015-08-05', '2015-08-07', '', '', 1),
(248, 'S-006', '0178', 'Anton Noornia', 'Surat Izin a.n Anton Noornia untuk prakondisi SM-3T', 'PD I', '70/6.FMIPA/Izin/2015', '2015-08-06', '2015-08-07', '', '', 1),
(249, 'S-001', '0179', 'Lukman El Hakim', 'Undangan pembahasan draft naskah buku panduan pembelajaran', 'LPP', '335/23/PT/2015', '2015-07-28', '2015-08-07', '', '', 1),
(250, 'S-001', '0180', 'Wardani Rahayu', 'Undangan pembahasan draft naskah buku panduan evaluasi pembelajaran', 'LPP', '337/23/PT/2015', '2015-07-28', '2015-08-07', '', '', 1),
(251, 'S-001', '0181', 'Anton Noornia', 'Undangan pembahasan draft naskah buku panduan pengembangan kurikulum', 'LPP', '336/23/PT/2015', '2015-07-28', '2015-08-07', '', '', 1),
(252, 'S-003', '0182', 'Anton Noornia', 'Permohonan instruktur', 'LPP', '355/23/DL/2015', '2015-07-31', '2015-08-07', '', '', 1),
(253, 'S-002', '0183', 'kajur + kaprodi matematika', 'Surat perpanjangan masa studi (PMS)', 'Ka. BAAK', '312/UN.39.12.1/EP/2015', '2015-07-15', '2015-08-07', '', '', 1),
(254, 'S-001', '0184', 'kaprodi Pendidikan Matematika', 'Undangan stadium general dan seminar pendidikan MIPA', 'FKIP Univ Lampung', '-', '0000-00-00', '2015-08-10', '', '', 1),
(255, 'S-001', '0185', 'Prof. Gerard P', 'Undangan sidang disertasi ', 'PPs', '-', '0000-00-00', '2015-08-10', '', '', 1),
(256, 'S-003', '0186', 'Lukman El Hakim', 'Permohonan izin penelitian', 'PD I', '734/6.FMIPA/DT/2015', '2015-08-07', '2015-08-10', '', '', 1),
(257, 'S-002', '0187', 'Jurusan Matematika', 'Kalender Akademik', 'UNJ', '-', '0000-00-00', '2015-08-10', '', '', 1),
(258, 'S-002', '0188', 'Kajur Matematika', 'Surat pengantar 2 bh buku', 'PR III', '442/UN.39.3/KM/VII/2015', '2015-07-27', '2015-08-11', '', '', 1),
(259, 'S-002', '0189', 'RA + DH', 'Pengunggahan laporan kemajuan pelaksanaan penelitian dan rekap laporan penggunaan anggaran 70%', 'Lemlit', '209/UN39.9/LT/2015', '2015-08-10', '2015-08-12', '', '', 1),
(260, 'S-002', '0190', 'Kajur Matematika', 'Surat edaran perpanjangan masa pembayaran uang kuliah bagi mahasiswa UNJ', 'UNJ / PR II', '2363/UN39.2/TU/2015', '2015-08-05', '2015-08-12', '', '', 1),
(261, 'S-004', '0191', 'Kajur Matematika', 'Salinan SK BAN-PT tentang akreditasi UNJ', 'BAN PT', '763/SK/BAN-PT/Akred/PT/VII/2015', '2015-07-10', '2015-08-12', '', '', 1),
(262, 'S-001', '0192', 'kajur + kaprodi matematika', 'Ralat undangan rapat persiapan semester 103, Lap. kinerja jurusan', 'Dekan', '-', '2015-08-11', '2015-08-12', '', '', 1),
(263, 'S-001', '0193', 'kajur + kaprodi matematika', 'Ralat undangan rapat persiapan MPA mahasiswa baru FMIPA UNJ', 'Dekan', '-', '2015-08-13', '2015-08-12', '', '', 1),
(264, 'S-002', '0194', 'Jurusan Matematika', 'Pembekalan asesor (Instruktur) PLPG', 'PR I', '2471/UN39.1/TU/2015', '2015-08-11', '2015-08-14', '', '', 1),
(265, 'S-001', '0195', 'Swida P', 'Undangan penerimaan Satyalancana Karya Satya', 'Rektor', '-', '2015-08-11', '2015-08-14', '', '', 1),
(266, 'S-005', '0196', 'kajur, FH, ME', 'Surat tugas sebagai tim penyusun proposal lab terpadu FMIPA', 'Dekan', '32/UN39.5.FMIPA/ST/2015', '2015-07-08', '2015-08-14', '', '', 1),
(267, 'S-002', '0197', 'Kajur Matematika', 'Rekap daftar hadir absen dosen Matematika FMIPA', 'FMIPA', '-', '0000-00-00', '2015-08-14', '', '', 1),
(268, 'S-002', '0198', 'Kajur Matematika', 'Info Program penghargaan publikasi ilmiah internasional LPDP (Kemenkeu RI)', 'Lemlit', '237/UN39.9/LP/2015', '2015-08-10', '2015-08-14', '', '', 1),
(269, 'S-002', '0199', 'dosen dan pegawai', 'Surat edaran upacara 17 agustus', 'PR II', '2403/UN39.2/TU/2015', '2015-08-10', '2015-08-14', '', '', 1),
(270, 'S-002', '0200', 'RA + IH + VM', 'Penjemputan mahasiswa KKN', 'LPM', '100/UN39.10/LL.VIII/2015', '2015-08-18', '2015-08-20', '', '', 1),
(271, 'S-001', '0201', 'Prof. Gerard P', 'Undangan ujian terbuka / Promosi doktor', 'PPs', '-', '0000-00-00', '2015-08-20', '', '', 1),
(272, 'S-001', '0202', 'Kaprodi Matematika', 'Undangan evaluasi mutu internal prodi di UNJ, dll', 'Rektorat', '2432/UN39.1/TU/2015', '2015-08-18', '2015-08-20', '', '', 1),
(273, 'S-001', '0203', 'Kajur Matematika', 'Undangan seminar "Penelitian kualitatif : Panduan dalam membimbing mahasiswa"', 'LPP', '380/23/PT/2015', '2015-08-18', '2015-08-20', '', '', 1),
(274, 'S-001', '0204', 'Jurusan Matematika', 'Undangan seminar lingkungan hidup', 'UNSRI', '240/UN39.9/LP/2015', '2015-08-11', '2015-08-20', '', '', 1),
(275, 'S-001', '0205', 'Jurusan Matematika', 'Ralat undangan sambutan kunjungan delegasi dari Jerman dan Malang', 'FIS', '485/6.FIS/LL/2015', '2015-08-19', '2015-08-20', '', '', 1),
(276, 'S-002', '0206', 'Jurusan Matematika', 'Informasi program penghargaan publikasi ilmiah internasional LPDP', 'Lemlit', '237/UN39.9/LP/2015', '2015-08-10', '2015-08-20', '', '', 1),
(277, 'S-001', '0207', 'Jurusan Matematika', 'Akreditasi BAN-PT Prodi', 'LPJM', '97/24/EP/VIII/2015', '2015-08-19', '2015-08-20', '', '', 1),
(278, 'S-001', '0208', 'kajur + kaprodi matematika', 'Undangan tasyakuran akreditasi institusi UNJ th 2015', 'Rektor', '-', '2015-08-18', '2015-08-21', '', '', 1),
(279, 'S-001', '0209', 'Jurusan Matematika', 'Undangan seminar internasional inovasi dan komersialisasi riset', 'LPPM', '1078/UN.37.31/TU/2015', '2015-08-07', '2015-08-21', '', '', 1),
(280, 'S-001', '0210', 'Kajur Matematika', 'Undangan seminar penelitian kualitatif panduan dalam membimbing mahasiswa', 'LPP', '380/23/PT/2015', '2015-08-18', '2015-08-21', '', '', 1),
(281, 'S-002', '0211', 'Kajur Matematika', 'Daftar nama mahasiswa KKN th 2015 tahap II', 'LPM', '89/UN.39.10/PM-VII/2015', '2015-07-29', '2015-08-21', '', '', 1),
(282, 'S-001', '0212', 'Kajur Matematika', 'Ralat undangan evaluasi mutu internal (EMI) prodi di UNJ + Pemberian penghargaan fakultas terbaik', 'LPM', '100/24.1/LL/VIII/20115', '2015-08-21', '2015-08-21', '', '', 1),
(283, 'S-001', '0213', 'Aris Hadiyan, Siti Rohmah', 'Undangan rapat penilaian olimpisme untuk Siti Rohmah R dan Aris Hadiyan', 'Dekan FMIPA', '392/UN39.5/FMIPA/DT/2015', '2015-08-14', '2015-08-24', '', '', 1),
(284, 'S-001', '0214', 'Sri Sudaryati', 'Undangan rapat penilaian berkas usul kenaikan jabatan', 'Tim PAK UNJ', '-', '2015-08-24', '2015-08-25', '', '', 1),
(285, 'S-001', '0215', 'kaprodi', 'Undangan pembekalan dan pelepasan mahasiswa peserta PKM', 'FMIPA', '-', '2015-08-21', '2015-08-25', '', '', 1),
(286, 'S-001', '0216', 'Kajur Matematika', 'Undangan MPA th 2015', 'Dekan', '396/UN39.5.FMIPA/DT/2015', '2015-08-20', '2015-08-25', '', '', 1),
(287, 'S-004', '0217', 'Jurusan Matematika', 'SK Panitia MPA', 'Dekan', '11/UN.39.f.FMIPA/SK/2015', '2015-08-18', '2015-08-25', '', '', 1),
(288, 'S-002', '0218', 'Jurusan Matematika', 'Insentif penerbitan artikel pada jurnal intenasional terindeks dan jurnal nasional terakreditasi DIKTI th Anggatan 2015', 'Rektorat', '-', '2015-01-29', '2015-08-27', '', '', 1),
(289, 'S-002', '0219', 'Jurusan Matematika', 'Bantuan dana seminar Internasional dalam dan luar negeri untuk dosen TA 2015', 'Rektorat', '-', '2015-01-27', '2015-08-27', '', '', 1),
(290, 'S-002', '0220', 'Jurusan Matematika', 'Seleksi penulisan artikel ilmiah tematik untuk diterbitkan dalam buku / eBook TA 2015', 'Rektorat', '-', '0000-00-00', '2015-08-27', '', '', 1),
(291, 'S-002', '0221', 'Jurusan Matematika', '"Lelang Ide Penelitian" bantuan dana penelitian kolaborasi dosen dan mahasiswa TA 2015/2016', 'Rektorat', '-', '0000-00-00', '2015-08-27', '', '', 1),
(292, 'S-001', '0222', 'Prof. Gerard P', 'Undangan sidang rektor', 'UNJ', '-', '0000-00-00', '2015-08-27', '', '', 1),
(293, 'S-001', '0223', 'Prof. Gerard P', 'Undangan', 'UNJ', '-', '0000-00-00', '2015-09-02', '', '', 1),
(294, 'S-002', '0224', 'kajur + kaprodi matematika, pend.mat', 'Dosen kualifikasi SI', 'Rektor UNJ', '2578/UN39/TU/2015', '2015-08-21', '2015-09-02', '', '', 1),
(295, 'S-002', '0225', 'Jurusan Matematika', 'Penetapan tarif sewa ruang /gedung di lingkungan UNJ', 'Rektorat UNJ', '1084.a/SP/2015', '2015-08-18', '2015-09-02', '', '', 1),
(296, 'S-001', '0226', 'Vera Maya Santi', 'Undangan', 'Rektor', '-', '2015-08-24', '2015-09-02', '', '', 1),
(297, 'S-001', '0227', 'kaprodi pend.math, matematika, siskom, sekjur matematika, kajur', 'Undangan wisuda semester genap', 'UNJ', '-', '0000-00-00', '2015-09-02', '', '', 1),
(298, 'S-001', '0228', 'Kajur Matematika', 'Undangan', 'LPP UNJ', '400/23/PT/2015', '2015-08-27', '2015-09-02', '', '', 1),
(299, 'S-002', '0229', 'Kajur Matematika', 'PLPG tahap II', 'LPP', '403/23/DL/2015', '2015-09-01', '2015-09-02', '', '', 1),
(300, 'S-001', '0230', 'PD , GP', 'Undangan kuliah perdana MABA Angkatan 2015 PPs', 'PPs', '6200/UN.39.5.PPs/TU/2015', '2015-08-31', '2015-09-02', '', '', 1),
(301, 'S-002', '0231', 'Pinta D, Gerard P', 'Permohonan memberi kuliah PPs UNJ 2015-2016', 'PPs', '6357/UN.39.5.PPs/TU/2015', '2015-08-31', '2015-09-02', '', '', 1),
(302, 'S-001', '0232', 'VM, RW', 'Undangan rapat koordinasi audit internal ISO:9001:2008', 'LPjM', '/24/LL/IX/2015', '2015-09-02', '2015-09-04', '', '', 1),
(303, 'S-002', '0233', 'Kajur Matematika', 'Pengganti penerima beasiswa Bidik Misi', 'FMIPA', '411/UN.39.8.FMIPA/KM/2015', '2015-09-01', '2015-09-04', '', '', 1),
(304, 'S-001', '0234', 'GP, SY, AN', 'Undangan sosialisasi Guru besar UNJ', 'PR I', '-', '2015-09-02', '2015-09-04', '', '', 1),
(305, 'S-002', '0235', 'kaprodi', 'Pembatalan undangan kegiatan evaluasi mutu intenal prodi di lingkungan UNJ', 'LPjM', '105/24/LL/IX/2015', '2015-09-04', '2015-09-08', '', '', 1),
(306, 'S-003', '0236', 'Jurusan Matematika', 'Permohonan tenaga pengajar tambahan', 'FIK', '459b/UN39.6/FIK.UNJ/KM/IX/2015', '2015-09-02', '2015-09-08', '', '', 1),
(307, 'S-001', '0237', 'SR, AH, IH, VM, LH', 'Undangan workshop persiapan kuliah olimpisme semester 103', 'FMIPA', '410/UN.39.5.FMIPA/DT/2015', '2015-09-03', '2015-09-08', '', '', 1),
(308, 'S-002', '0238', 'Jurusan Matematika', 'Usul tanda kehormatan satya lancana karya satya', 'Rektorat', '2533/UN39.11/KP/2015', '2015-08-21', '2015-09-09', '', '', 1),
(309, 'S-001', '0239', 'kajur + kaprodi matematika', 'Undangan persiapan seleksi OSN pertamina 2015', 'PD III', '-', '2015-09-09', '2015-09-10', '', '', 1),
(310, 'S-002', '0240', 'DH, RA', 'MONEV internal Hibah DIKTI 2015', 'Lemlit', '266/UN.39.9/LP/2015', '2015-09-07', '2015-09-10', '', '', 1),
(311, 'S-005', '0241', 'Kajur Matematika', 'Surat tugas Plt, PD III', 'Dekan FMIPA', '37/5.FMIPA/ST/2015', '2015-09-01', '2015-09-10', '', '', 1),
(312, 'S-001', '0242', 'kaprodi pendidikan matematika S1', 'Undangan rapat persiapan akreditasi BAN-PT Prodi', 'LPjM', '107/24/LL/VIII/2015', '2015-09-08', '2015-09-10', '', '', 1),
(313, 'S-001', '0243', 'TM', 'Ralat undangan rapat koordinasi', 'LPjM', 'III/24.1/LL/IX/2015', '2015-09-10', '2015-09-10', '', '', 1),
(314, 'S-002', '0244', 'PS, DB', 'Sertifikat Hasil test TOEP dan/atau TKDA', 'PLTI', '-', '0000-00-00', '2015-09-11', '', '', 1),
(315, 'S-002', '0245', 'Jurusan Matematika', 'Permendiknas tentang pedoman pemberian tugas belajar bagi PNS di ilngkungan DepDikNas', 'DepDikNas', '48/Thn 2009', '2015-08-12', '2015-09-11', '', '', 1),
(316, 'S-002', '0246', 'Jurusan Matematika', 'Permintaan data dosen', 'PD I', '-', '2015-09-10', '2015-09-14', '', '', 1),
(317, 'S-002', '0247', 'RA', 'Surat teguran belum menyerahkan laporan kemajuan penelitian hibah DIKTI 2015', 'Lemlit', '270/UN39.9/LP/2015', '2015-09-11', '2015-09-14', '', '', 1),
(318, 'S-002', '0248', 'RA, DH', 'Jadwal paparan MONEV Internal', 'Lemlit', '271/UN39.9/LP/2015', '2015-09-11', '2015-09-14', '', '', 1),
(319, 'S-002', '0249', 'Kajur Matematika', 'Amplop tertutup', 'DepStat FMIPA UNPAD', '-', '0000-00-00', '2015-09-14', '', '', 1),
(320, 'S-001', '0250', 'Kajur Matematika', 'Undangan seminar praktik penggunaan ICT dalam kegiatan pembelajran (E-Learning)', 'LPP UNJ', '420/23/PT/2015', '2015-09-11', '2015-09-15', '', '', 1),
(321, 'S-001', '0251', 'kajur + kaprodi matematika', 'Undangan sosialisasi PD DIKTI th 2015 UNJ', 'Rektorat', '-', '2015-09-02', '2015-09-15', '', '', 1),
(322, 'S-005', '0252', 'Kajur Matematika', 'Surat tugas PLh Dekan FMIPA a.n Dr. Muktiningsih, M.Si', 'FMIPA', '38/5.FIMA/ST/2015', '2015-09-11', '2015-09-15', '', '', 1),
(323, 'S-001', '0253', 'RW', 'Undangan penyegaran auditor kegiatan audit mutu akademi internal persiapan akreditasi BAN-PT Program studi', 'LPjM', '112/24/AK/IX/2015', '0000-00-00', '2015-09-16', '', '', 1),
(324, 'S-001', '0254', 'Kaprodi', 'Undangan evaluasi mutu internal + pemberian penghargaan fakultas terbaik dalam melaksanakan sistem penjaminan mutu perguruan tinggi', 'Rektor', '2703/UN39.4/TU/2015', '2015-09-14', '2015-09-18', '', '', 1),
(325, 'S-002', '0255', 'Jurusan Matematika', 'Scholarship Announcement from german academic exchange service CDAAD', 'PR I', '133/PR1/TU/2015', '2015-09-14', '2015-09-18', '', '', 1),
(326, 'S-003', '0256', 'Jurusan Matematika', 'Permohonan peserta OSN pertamina 2015', 'Dekan III FMIPA', '2030/UN2.73.D/DPPM.00/2015', '2015-09-14', '2015-09-18', '', '', 1),
(327, 'S-003', '0257', 'Jurusan Matematika', 'Permohonan pendelegasian diksar keperwiraan mahasiswa', 'Menwa UNJ', 'B-109/Sat-UNJ/IX/2015', '2015-09-09', '2015-09-18', '', '', 1),
(328, '', '0258', 'kajur + kaprodi pendidikan matematika', 'Undangan pelaporan perkembangan penyusunan barang S1 dan S2', 'PD I', '-', '2015-09-18', '2015-09-21', '', '', 1),
(329, 'S-002', '0259', 'kajur + kaprodi', 'Pengajuan TOR kegiatan jurusan /Prodi', 'PD II FMIPA', '431/UN.39.7/FMIPA/DT/2015', '2015-09-21', '2015-09-22', '', '', 1),
(330, 'S-002', '0260', 'Jurusan Matematika', 'Pembayaran Serdos / tunjangan', 'PR II', '/UN39/TU/2015', '2015-09-21', '2015-09-22', '', '', 1),
(331, 'S-002', '0261', 'DB, WR, DH, VM', 'Pekan ilmiah UNJ', 'Rektorat', '2337/UN39.1/TU/2015', '2015-07-31', '2015-09-22', '', '', 1),
(332, 'S-002', '0262', 'Jurusan Matematika', 'Data penelitian, publikasi, HKI dosen th 2013-2015', 'Lemlit', '278/UN39.9/LP/2015', '2015-09-21', '2015-09-23', '', '', 1),
(333, 'S-002', '0263', 'Jurusan Matematika', 'Jadwal pemutakhiran PD DIKTI', 'FMIPA', '-', '0000-00-00', '2015-09-23', '', '', 1),
(334, 'S-002', '0264', 'Siskom, kajur, Pend. matematika', 'Jadwal tes UNJ TOEP MABA 2015/2016', 'UPT Pelayanan bahasa UNJ', '034/UN39.17/BS/2015', '2015-09-22', '2015-09-25', '', '', 1),
(335, 'S-002', '0265', 'Jurusan Matematika', 'Amplop tertutup', '-', '-', '0000-00-00', '2015-09-25', '', '', 1),
(336, 'S-002', '0266', 'Jurusan Matematika', 'Seminar Nasional UNESA', 'Lemlit', '281/UN39.9/LP/2015', '2015-09-23', '2015-09-28', '', '', 1),
(337, 'S-002', '0267', 'Jurusan Matematika', 'Mechanical Week 2015 (Jerman Fest)', 'UNIKA Atmajaya', '-', '2015-09-28', '2015-09-28', '', '', 1),
(338, 'S-003', '0268', 'Kaprodi', 'Permohonan Ijin Rekondisi Mahasiswa', 'Dekan FMIPA', '438/UN39.6/FMIPA/KM/2014', '2015-09-25', '2015-09-28', '', '', 1),
(339, 'S-001', '0269', 'kaprodi + IH', 'Undangan pelatihan penulisan proposal PKM', 'PD III', '-', '0000-00-00', '2015-09-28', '', '', 1),
(340, 'S-002', '0270', 'Jurusan Matematika', 'Surat edaran penutupan akses pintu gerbang kendaraan area pasca sarjana', 'PR II', '2828/UN39.2/TU/2015', '2015-09-29', '2015-10-01', '', '', 1),
(341, 'S-002', '0271', 'M. Eka S , SRR', 'SK Penetapan Pengelola Website Tingkat fakultas / unit kerja di UNJ', 'Rektor', '1255/SP/2015', '0000-00-00', '2015-10-01', '', '', 1),
(342, 'S-003', '0272', 'Kaprodi', 'Permohonan dosen pembimbing KKN', 'LPM', '115/UN39.10/PM-IX/2015', '2015-09-30', '2015-10-01', '', '', 1),
(343, 'S-002', '0273', 'Prodi Statistik', 'Pemberitahuan kegiatan ISCO 1st 2015', 'Ikatan Perstatistikan Indonesia', 'VIII/ISI/ISCO/023/08-2015', '2015-08-24', '2015-10-01', '', '', 1),
(344, 'S-002', '0274', 'RA', 'Belum unggah laporan kemajuan', 'Lemlit', '286/UN39.9/LP/2015', '2015-09-30', '2015-10-01', '', '', 1),
(345, 'S-002', '0275', 'Jurusan Matematika', 'Permohonan sebaran MKU', 'MKU', '054/UPT-MKU/X/2015', '2015-10-01', '2015-10-02', '', '', 1),
(346, 'S-001', '0276', 'Anton Noornia', 'Undangan seminar usulan penelitian kompetitif nasional th 2015', 'Lemlit UNJ', '288/UN39.9/LP/2015', '2015-10-01', '2015-10-02', '', '', 1),
(347, 'S-004', '0277', 'Jurusan Matematika', 'SK tentang kenaikan jabatan fungsional dosen dan angka kreditnya', 'Dirjen Dikti Kemendikbud', '-', '0000-00-00', '2015-10-02', '', '', 1),
(348, 'S-004', '0278', 'FH', 'SK penetapan pengelola Lab untuk fakultas di lingkungan UNJ', 'Rektor', '1271/SP/2015', '2015-09-14', '2015-10-05', '', '', 1),
(349, 'S-003', '0279', 'Kajur Matematika', 'Permohonan pengunduran diri kaprodi siskom', 'Dekan', '446/UN39.5.FMIPA/DT/2015', '2015-10-05', '2015-10-05', '', '', 1),
(350, 'S-002', '0280', 'DB, WR, DH, VM', 'Ralat pelaksanaan pekan ilmiah UNJ', 'Rektorat', '2812/UN39.1/TU/2015', '2015-09-23', '2015-10-05', '', '', 1),
(351, 'S-002', '0281', 'RA', 'Belum unggah laporan kemajuan', 'Lemlit', '286/UN39.9/LP/2015', '2015-09-30', '2015-10-05', '', '', 1),
(352, 'S-002', '0282', 'Jurusan Matematika', 'Pemberitahuan program KKN Tahap I th 2016', 'LPM', '113/UN39.10/PM-IX/2015', '2015-09-23', '2015-10-05', '', '', 1),
(353, 'S-003', '0283', 'Jurusan Matematika', 'Permohonan dosen pembimbing KKN', 'LPM', '115/UN39.10/PM-IX/2015', '2015-09-30', '2015-10-05', '', '', 1),
(354, 'S-001', '0284', 'Anton Noornia', 'Undangan seminar usulan penelitian kompetitif nasional', 'Lemlit', '288/UN39.9/LP/2015', '2015-10-01', '2015-10-05', '', '', 1),
(355, 'S-002', '0285', 'Jurusan Matematika', 'Perpanjangan waktu perbaikan KRS, PKM, dan KKN', 'PR I', '137/PR1/TU/2015', '2015-09-25', '2015-10-05', '', '', 1),
(356, '', '0286', 'Jurusan Matematika', 'Kelengkapan berkas persyaratan DIKTI', 'PR 1', '31/PR1/DT/2015', '2015-09-23', '2015-10-05', '', '', 1),
(357, 'S-002', '0287', 'Dian, Ria', 'Lap penelitian dikti (kemajuan)', 'LP Penelitian', '289/UN39.9/LP/2015', '2015-10-02', '2015-10-06', '', '', 1),
(358, 'S-001', '0288', 'Kaprodi S1 mtk, siskom, penmath + kajur', 'Undangan pelatihan dosen pembimbing akademik', 'Dekan UPT-LBK', '53/UPT-LBK/X/2015', '2015-10-05', '2015-10-07', '', '', 1),
(359, 'S-002', '0289', 'Kaprodi', 'Informasi penyelenggaraan seminar nasional SATEK VI', 'LPPM Univ Lampung', '907/UN26/8/LPPM/2015', '2015-09-21', '2015-10-07', '', '', 1),
(360, 'S-004', '0290', 'Jurusan Matematika', 'SK tentang masa studi dosen tugas belajar', 'Rektor', '01 tahun 2015', '2015-09-10', '2015-10-08', '', '', 1),
(361, 'S-004', '0291', 'kajur + kaprodi', 'SK pemilihan ketua dan sekretaris program studi pada program sarjana + diploma', 'Rektor', 'No.1 th 2015', '2015-10-05', '2015-10-08', '', '', 1),
(362, 'S-003', '0292', 'kaprodi', 'Permohonan perwakilan mahasiswa penggerak anti rokok', 'UPt-BLK', '35/UPT-LBK/X/2015', '2015-10-02', '2015-10-09', '', '', 1),
(363, 'S-001', '0293', 'ES, SR, DB', 'Undangan pelatihan dosen pembimbing akademik', 'UPT-BLK', '66/UPT-LBK/X/2015', '2015-10-08', '2015-10-09', '', '', 1),
(364, 'S-001', '0294', 'Kajur Matematika', 'Undangan pelatihan dosen pembimbing akademik', 'UPT-BLK', '53/UPT-LBK/X/2015', '2015-10-05', '2015-10-09', '', '', 1),
(365, 'S-004', '0295', 'Kajur Matematika', 'SK tentang registrasi pendidik pada perguruan tinggi', 'Kemeristekdikti', '26 th 2015', '2015-09-03', '2015-10-09', '', '', 1),
(366, 'S-002', '0296', 'Kajur Matematika', 'Buku dokumen kurikulum berbasis KKNI 2014', 'UNJ', '-', '0000-00-00', '2015-10-09', '', '', 1),
(367, '', '0297', 'kajur + kaprodi matematika', 'Dosen FMIPA yang memenuhi kriteria untuk jadi balon kaprodi', 'Dekan', '-', '2015-10-09', '2015-10-09', '', '', 1),
(368, 'S-003', '0298', 'Kaprodi', 'Permohonan perwakilan mahasiswa konselor sebaya', 'UPT-LBK', '33/UPT-LBK/X/2015', '2015-10-02', '2015-10-09', '', '', 1),
(369, 'S-001', '0299', 'MX', 'Undangan rapat komisi akademik dan etik senat FMIPA tgl 22-10-2015', 'Dekan', '-', '2015-10-12', '2015-10-13', '', '', 1),
(370, 'S-002', '0300', 'kajur + kaprodi matematika', 'Studi banding dari Universitas Lambung Mangkurat', 'Dekan', '466/UN39.5/FMIPA/DT/2015', '2015-10-12', '2015-10-13', '', '', 1),
(371, 'S-002', '0301', 'kajur + kaprodi S2 pend.matematika', 'Home Base Dosen', 'Dekan', '467/UN39.5.FMIPA/KM/2015', '2015-10-12', '2015-10-13', '', '', 1),
(372, 'S-002', '0302', 'kajur + kaprodi', 'Notulen rapat', 'Dekan', '-', '2015-10-12', '2015-10-13', '', '', 1),
(373, 'S-001', '0303', 'Kajur Matematika', 'PLPG tahap 3 (Undangan rapat koordinasi)', 'LPP', '437/23/DL/2015', '2015-10-12', '2015-10-13', '', '', 1),
(374, 'S-005', '0304', 'Kajur + kaprodi', 'Surat tugas pendamping OSN Pertamina 2015', 'Dekan', '468/UN39.5.FMIPA/KM/2015', '2015-10-12', '2015-10-13', '', '', 1),
(375, 'S-003', '0305', 'GP + AN', 'Permohonan Bioadata dan data pendukung dosen', 'PPs UNJ', '6999/UN39.5.PPs/TU/2015', '2015-09-30', '2015-10-15', '', '', 1),
(376, 'S-001', '0306', 'RW', 'Undangan pengarahan bagi penerima hibah penulisan buku teks', 'PR I', '-', '2015-10-12', '2015-10-15', '', '', 1),
(377, 'S-002', '0307', 'Jurusan Matematika', 'Dosen yang memenuhi kriteria jadi balon kaprodi', 'Dekan', '-', '2015-10-09', '2015-10-19', '', '', 1),
(378, 'S-002', '0308', 'Jurusan Matematika', 'Informasi rekruitmen guru matematika di sekolah avincenna', 'PR IV', '123/PR4/LL/X/2015', '2015-10-16', '2015-10-19', '', '', 1),
(379, 'S-001', '0309', 'VM, MY, RW', 'Undangan bagi penerima hibah penulisan buku teks', 'UNJ', '-', '2015-10-12', '2015-10-20', '', '', 1),
(380, 'S-002', '0310', 'Jurusan Matematika', 'Rekap kehadiran dosen', '-', '-', '0000-00-00', '2015-10-20', '', '', 1);
INSERT INTO `t_surat_masuk` (`id`, `kode`, `no_agenda`, `indek_berkas`, `isi_ringkas`, `dari`, `no_surat`, `tgl_surat`, `tgl_diterima`, `keterangan`, `file`, `pengolah`) VALUES
(381, 'S-002', '0311', 'Kajur Matematika', 'PLPG tahap 4', 'LPP', '442/23/DL/2015', '2015-10-19', '2015-10-20', '', '', 1),
(382, 'S-002', '0312', 'kajur + kaprodi matematika', 'Penjelasan tentang aklamasi pada peraturan pemilihan kaprodi th 2015', 'FMIPA', '478/5.FMIPA/DT/2015', '2015-10-19', '2015-10-20', '', '', 1),
(383, 'S-002', '0313', 'kajur + kaprodi matematika', 'Data mahasiswa aktif', 'FMIPA', '476/UN39.5.FMIPA/DT/2015', '2015-10-19', '2015-10-20', '', '', 1),
(384, 'S-002', '0314', 'Kajur Matematika', 'Recruitment guru matematika di sekolah avicenna', 'PR 4', '123/PR4/LL/X/2015', '2015-10-16', '2015-10-20', '', '', 1),
(385, 'S-001', '0315', 'SR, ES, Agus Agung, tim pustikom', 'Undangan pembahasan evaluasi website FMIPA', 'PD I FMIPA', '-', '2015-10-21', '2015-10-21', '', '', 1),
(386, 'S-002', '0316', 'Kepala Jurusan Matematika', 'Pelatihan Bahasa Inggris bagi Tenaga Administrasi', 'UPT Pelayanan bahasa UNJ', '025/UN39.17/BS/2015', '2015-07-27', '2015-11-05', '', '03161.pdf', 1),
(387, 'S-002', '0317', 'Dekan Fakultas', 'Sosialisasi Serdos', 'Rektor UNJ', '1838/UN39.2/TU/2015', '2015-06-16', '2015-11-05', '', '03171.pdf', 1),
(388, 'S-001', '0318', 'Ketua Jurusan Matematika', 'Undangan Seminar', 'Pusat Pendidikan dan Pelatihan Pegawai', '1225/P4.2/KP/2015', '2015-09-01', '2015-11-05', '', '03181.pdf', 1),
(389, 'S-003', '0319', 'Dekan Fakultas', 'Permohonan Pengawas Pada Kegiatan SBMPTN 2015', 'Rektor UNJ', '91/PRI/TU/2015', '2015-05-25', '2015-11-05', '', '03191.pdf', 1),
(390, 'S-002', '0320', 'Jurusan Matematika', 'gjhghg', 'dinas', '09/98/DU/2015', '2015-11-09', '2015-11-09', 'khggjgjg  jhgjhgj  h g jh gjg   jhgjhg j  jhgjg jhg', '', 1),
(391, 'S-012', '0321', 'wfg', 'sdhgakj', 'cjdaskl', 'dasldhf', '2015-11-09', '2015-11-09', '', '', 2),
(392, 'S-009', '0322', 'cnahkg', 'khkjnb', 'sdl', 'kjhk', '2015-11-16', '2015-11-16', '', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ref_klasifikasi`
--
ALTER TABLE `ref_klasifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_instansi`
--
ALTER TABLE `tr_instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_disposisi`
--
ALTER TABLE `t_disposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_surat_keluar`
--
ALTER TABLE `t_surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_surat_masuk`
--
ALTER TABLE `t_surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ref_klasifikasi`
--
ALTER TABLE `ref_klasifikasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `tr_instansi`
--
ALTER TABLE `tr_instansi`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_disposisi`
--
ALTER TABLE `t_disposisi`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t_surat_keluar`
--
ALTER TABLE `t_surat_keluar`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `t_surat_masuk`
--
ALTER TABLE `t_surat_masuk`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=393;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
