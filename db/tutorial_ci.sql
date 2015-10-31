-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2014 at 02:59 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tutorial_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `ringkasan` text NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_berita`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `slug`, `ringkasan`, `isi`, `status_berita`, `id_user`, `tanggal`) VALUES
(1, 'Latihan Code Igniter', 'latihan-code-igniter', '<p>Quis nostrud exercitation ut enim ad minim veniam, eu fugiat nulla pariatur. Cupidatat non proident, consectetur adipisicing elit, mollit anim id est laborum. Ut labore et dolore magna aliqua.</p>', '<p>Quis nostrud exercitation ut enim ad minim veniam, eu fugiat nulla pariatur. Cupidatat non proident, consectetur adipisicing elit, mollit anim id est laborum. Ut labore et dolore magna aliqua.</p>\r\n<p>In reprehenderit in voluptate quis nostrud exercitation ut enim ad minim veniam. Sed do eiusmod tempor incididunt eu fugiat nulla pariatur. Sunt in culpa in reprehenderit in voluptate consectetur adipisicing elit.</p>\r\n<p>Velit esse cillum dolore ut enim ad minim veniam. Duis aute irure dolor ut aliquip ex ea commodo consequat. Eu fugiat nulla pariatur. Ut labore et dolore magna aliqua.</p>\r\n<p>Quis nostrud exercitation in reprehenderit in voluptate duis aute irure dolor. Ullamco laboris nisi sed do eiusmod tempor incididunt cupidatat non proident. Consectetur adipisicing elit, sunt in culpa mollit anim id est laborum. Ut aliquip ex ea commodo consequat.</p>\r\n<p>Velit esse cillum dolore qui officia deserunt lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ullamco laboris nisi. Velit esse cillum dolore eu fugiat nulla pariatur. Qui officia deserunt duis aute irure dolor lorem ipsum dolor sit amet. Sed do eiusmod tempor incididunt sunt in culpa cupidatat non proident.</p>\r\n', 'Publish', 1, '2014-09-21 16:36:20'),
(2, 'Menampilkan berita dengan CI', 'menampilkan-berita', '<p>Cumque nihil impedit quo minus at vero eos et accusamus et iusto odio cum soluta nobis est eligendi optio. Id quod maxime placeat facere possimus, omnis dolor repellendus. Nisi ut aliquid ex ea commodi consequatur? Neque porro quisquam est, sed ut perspiciatis unde omnis cum soluta nobis est eligendi optio.</p>', '<p>Cumque nihil impedit quo minus at vero eos et accusamus et iusto odio cum soluta nobis est eligendi optio. Id quod maxime placeat facere possimus, omnis dolor repellendus. Nisi ut aliquid ex ea commodi consequatur? Neque porro quisquam est, sed ut perspiciatis unde omnis cum soluta nobis est eligendi optio.</p>\r\n<p>Sed quia non numquam eius modi iste natus error sit voluptatem quis autem vel eum iure reprehenderit. Saepe eveniet ut et voluptates repudiandae sint ullam corporis suscipit laboriosam, excepturi sint occaecati cupiditate non provident. Sed quia consequuntur magni dolores eos dicta sunt explicabo.</p>\r\n<p>Nisi ut aliquid ex ea commodi consequatur? Totam rem aperiam, omnis voluptas assumenda est, sed quia non numquam eius modi. Et quasi architecto beatae vitae dignissimos ducimus qui blanditiis qui in ea voluptate. Vel illum qui dolorem eum fugiat omnis voluptas assumenda est, quis autem vel eum iure reprehenderit.</p>\r\n<p>Ullam corporis suscipit laboriosam, id est laborum et dolorum fuga. Sed quia consequuntur magni dolores eos consequatur aut perferendis doloribus asperiores repellat. Sed quia non numquam eius modi quo voluptas nulla pariatur? Accusantium doloremque laudantium, omnis dolor repellendus. Et molestiae non recusandae.</p>\r\n<p>Atque corrupti quos dolores et quas molestias nam libero tempore, et expedita distinctio. Nisi ut aliquid ex ea commodi consequatur? Quo voluptas nulla pariatur? Id quod maxime placeat facere possimus, sed quia non numquam eius modi aut odit aut fugit. Tempora incidunt ut labore et dolore praesentium voluptatum deleniti excepturi sint occaecati cupiditate non provident.</p>\r\n', 'Publish', 1, '2014-09-21 16:36:20'),
(3, 'Latihan Halaman Statis dengan CI', 'latihan-static-page', '<p>Big is no longer impregnable to focus on improvement, not cost, as knowledge is fragmented into specialities. Building a dynamic relationship between the main players. Empowerment of all personnel, not just key operatives, the vitality of conceptual synergies is of supreme importance organizations capable of double-loop learning.</p>', '<p>Big is no longer impregnable to focus on improvement, not cost, as knowledge is fragmented into specialities. Building a dynamic relationship between the main players. Empowerment of all personnel, not just key operatives, the vitality of conceptual synergies is of supreme importance organizations capable of double-loop learning.</p>\r\n<p>Maximization of shareholder wealth through separation of ownership from management the three cs - customers, competition and change - have created a new world for business as knowledge is fragmented into specialities. In order to build a shared view of what can be improved, empowerment of all personnel, not just key operatives, through the  adoption of a proactive stance, the astute manager can adopt a position at the vanguard. Building a dynamic relationship between the main players. Exploiting the productive lifecycle taking full cognizance of organizational learning parameters and principles, benchmarking against industry leaders, an essential process, should be a top priority at all times. Measure the process, not the people.</p>', 'Publish', 1, '2014-09-21 16:36:20'),
(4, 'Belajar CI Sendiri', 'belajar-sendiri', '<p>In order to build a shared view of what can be improved, motivating participants and capturing their expectations, while those at the coal face don''t have sufficient view of the overall goals. Through the  adoption of a proactive stance, the astute manager can adopt a position at the vanguard. To experience a profound paradigm shift, an important ingredient of business process reengineering the new golden rule gives enormous power to those individuals and units. Taking full cognizance of organizational learning parameters and principles, exploitation of core competencies as an essential enabler, organizations capable of double-loop learning.</p>', '<p>The strategic vision - if indeed there be one - is required to identify as knowledge is fragmented into specialities whenever single-loop learning strategies go wrong. From binary cause and effect to complex patterns, in a collaborative, forward-thinking venture brought together through the merging of like minds. That will indubitably lay the firm foundations for any leading company taking full cognizance of organizational learning parameters and principles, by moving executive focus from lag financial indicators to more actionable lead indicators. By adopting project appraisal through incremental cash flow analysis, building a dynamic relationship between the main players.</p>\r\n<p>In order to build a shared view of what can be improved, motivating participants and capturing their expectations, while those at the coal face don''t have sufficient view of the overall goals. Through the  adoption of a proactive stance, the astute manager can adopt a position at the vanguard. To experience a profound paradigm shift, an important ingredient of business process reengineering the new golden rule gives enormous power to those individuals and units. Taking full cognizance of organizational learning parameters and principles, exploitation of core competencies as an essential enabler, organizations capable of double-loop learning.</p>\r\n<p>The strategic vision - if indeed there be one - is required to identify an investment program where cash flows exactly match shareholders'' preferred time patterns of consumption. Highly motivated participants contributing to a valued-added outcome. An important ingredient of business process reengineering the components and priorities for the change program motivating participants and capturing their expectations. The balanced scorecard, like the executive dashboard, is an essential tool whether the organization''s core competences are fully in line, given market realities benchmarking against industry leaders, an essential process, should be a top priority at all times.</p>', 'Draft', 1, '2014-09-21 16:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
