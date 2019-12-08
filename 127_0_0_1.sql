-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 05:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example`
--
CREATE DATABASE IF NOT EXISTS `example` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `example`;

-- --------------------------------------------------------

--
-- Table structure for table `good`
--

CREATE TABLE `good` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `good`
--
ALTER TABLE `good`
  ADD PRIMARY KEY (`id`);
--
-- Database: `foodmanagement`
--
CREATE DATABASE IF NOT EXISTS `foodmanagement` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `foodmanagement`;

-- --------------------------------------------------------

--
-- Table structure for table `cregister`
--

CREATE TABLE `cregister` (
  `cname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cregister`
--

INSERT INTO `cregister` (`cname`, `address`, `phone`, `email`, `pass`) VALUES
('agbalaji', '1222324', 123456, 'agbalaji66@gmail.com', '123456'),
('ishu', '1222', 1212, 'ishu@gmail.com', '123'),
('balaji', '1234545', 123456789, 'kign@gmail.com', 'king'),
('maha', '13 panthadi 7th street', 2147483647, 'maha@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `email` varchar(200) NOT NULL,
  `feed` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`email`, `feed`) VALUES
('agbalaji66@gmail.com', 'need food for 5 members on 1.4.2019'),
('maha@gmail.com', 'need food for 5 members on 1.4.2019'),
('rock', 'may i help you'),
('priya', 'i can help all'),
('balaji', 'i can help today contact No : 1234567890'),
('ishu@gmail.com', 'hi i am fine to help others');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uname` varchar(200) NOT NULL,
  `pass` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `pass`) VALUES
('balaji', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`fname`, `lname`, `email`, `uname`, `pass`) VALUES
('balaji', 'ag', 'agbalaji66@gmail.com', 'balaji', '123456'),
('ganesh', 'ak', 'annanationalganesh@gmail.com', 'ganesh', '123456'),
('maha', 'laks', 'maha@gmail.com', 'maha', 'maha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"test\",\"table\":\"login\"},{\"db\":\"test\",\"table\":\"log\"},{\"db\":\"foodmanagement\",\"table\":\"register\"},{\"db\":\"foodmanagement\",\"table\":\"login\"},{\"db\":\"foodmanagement\",\"table\":\"feed\"},{\"db\":\"foodmanagement\",\"table\":\"cregister\"},{\"db\":\"test\",\"table\":\"gps\"},{\"db\":\"example\",\"table\":\"good\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'test', 'gps', '[]', '2019-09-09 17:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-11-06 16:14:33', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `gps`
--

CREATE TABLE `gps` (
  `ip` varchar(200) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `long` varchar(20) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gps`
--

INSERT INTO `gps` (`ip`, `lat`, `long`, `time`) VALUES
('DESKTOP-2JH6PNU', '9.9135096', '78.1240806', '2019-09-09 18:13:34.786159'),
('DESKTOP-2JH6PNU', '9.9135096', '78.1240806', '2019-09-09 18:14:35.076226'),
('DESKTOP-2JH6PNU', '9.9135096', '78.1240806', '2019-09-09 18:15:35.362826'),
('DESKTOP-2JH6PNU', '9.9135096', '78.1240806', '2019-09-09 18:16:35.671298'),
('DESKTOP-2JH6PNU', '9.9135096', '78.1240806', '2019-09-09 18:17:36.670306'),
('DESKTOP-2JH6PNU', '', '', '2019-09-10 01:50:35.660699'),
('DESKTOP-2JH6PNU', '', '', '2019-09-10 01:50:41.127100'),
('DESKTOP-2JH6PNU', '', '', '2019-09-10 01:50:46.267154'),
('DESKTOP-2JH6PNU', '', '', '2019-09-10 01:50:52.037645'),
('DESKTOP-2JH6PNU', '', '', '2019-09-10 01:50:58.063546'),
('DESKTOP-2JH6PNU', '', '', '2019-09-10 01:51:04.052968'),
('DESKTOP-2JH6PNU', '', '', '2019-09-10 01:51:10.143110'),
('DESKTOP-2JH6PNU', '9.9135116', '78.1240785', '2019-09-10 01:55:30.919832'),
('DESKTOP-2JH6PNU', '9.9135116', '78.1240785', '2019-09-10 01:55:33.820737'),
('DESKTOP-2JH6PNU', '9.9135116', '78.1240785', '2019-09-10 01:56:16.533834'),
('DESKTOP-2JH6PNU', '9.9135116', '78.1240785', '2019-09-10 01:56:46.010582'),
('DESKTOP-2JH6PNU', '9.9135116', '78.1240785', '2019-09-10 01:57:46.387573'),
('DESKTOP-2JH6PNU', '9.9135116', '78.1240785', '2019-09-10 01:58:02.103467'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:46:11.308455'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:47:11.497618'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:48:11.644849'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:49:11.916616'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:50:12.158079'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:51:12.408357'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:52:12.616361'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:53:12.866804'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:54:13.070935'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:55:13.338820'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:56:13.545494'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:57:13.848486'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:58:14.092045'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 13:59:14.347886'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:00:14.589960'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:01:14.892268'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:02:15.100717'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:03:15.354999'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:04:15.547518'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:05:15.810445'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:06:15.981762'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:07:16.233921'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:08:16.476322'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:09:16.725330'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:10:16.914098'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:11:17.109527'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:12:17.293896'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:13:17.553010'),
('DESKTOP-2JH6PNU', '9.9135443', '78.1240802', '2019-09-11 14:14:17.866470'),
('DESKTOP-2JH6PNU', '9.8821386', '78.0836829', '2019-09-12 07:09:01.969126'),
('DESKTOP-2JH6PNU', '9.8821386', '78.0836829', '2019-09-12 07:09:11.484546'),
('DESKTOP-2JH6PNU', '9.8821386', '78.0836829', '2019-09-12 07:10:11.608588'),
('DESKTOP-2JH6PNU', '9.8821386', '78.0836829', '2019-09-12 07:11:12.150674'),
('DESKTOP-2JH6PNU', '9.8821386', '78.0836829', '2019-09-12 07:12:13.264519'),
('DESKTOP-2JH6PNU', '9.8821386', '78.0836829', '2019-09-12 07:13:14.156206'),
('DESKTOP-2JH6PNU', '9.8821386', '78.0836829', '2019-09-12 07:14:15.154652'),
('DESKTOP-2JH6PNU', '9.8821386', '78.0836829', '2019-09-12 07:15:16.154062'),
('DESKTOP-2JH6PNU', '9.8821386', '78.0836829', '2019-09-12 07:16:17.140514'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:28:04.495016'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:29:28.711909'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:29:33.481625'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:30:01.902690'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:30:29.210762'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:33:26.471109'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:34:26.818831'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:34:42.387175'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:34:56.343468'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:35:56.550181'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:36:06.184796'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:37:06.445182'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:38:07.157506'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:39:47.967017'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:40:48.384441'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:41:49.168623'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:42:50.148983'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:43:50.488135'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:44:23.582647'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:45:17.199907'),
('DESKTOP-2JH6PNU', '9.882066799999999', '78.0836786', '2019-09-12 07:45:42.953741'),
('DESKTOP-2JH6PNU', '9.8822259', '78.0836343', '2019-09-12 07:46:10.614590'),
('DESKTOP-2JH6PNU', '9.8822259', '78.0836343', '2019-09-12 07:47:10.896789'),
('DESKTOP-2JH6PNU', '9.8822259', '78.0836343', '2019-09-12 07:47:49.293560'),
('DESKTOP-2JH6PNU', '9.8822259', '78.0836343', '2019-09-12 07:48:12.562046'),
('DESKTOP-2JH6PNU', '9.8822259', '78.0836343', '2019-09-12 07:48:22.408757'),
('DESKTOP-2JH6PNU', '9.8822022', '78.083666', '2019-09-12 07:48:56.273976'),
('DESKTOP-2JH6PNU', '9.8822022', '78.083666', '2019-09-12 07:49:56.625953'),
('DESKTOP-2JH6PNU', '9.8822022', '78.083666', '2019-09-12 07:51:18.828682'),
('DESKTOP-2JH6PNU', '9.8822022', '78.083666', '2019-09-12 07:51:36.273043'),
('DESKTOP-2JH6PNU', '9.8822022', '78.083666', '2019-09-12 07:53:02.661562'),
('DESKTOP-2JH6PNU', '9.8822022', '78.083666', '2019-09-12 07:53:37.828640'),
('DESKTOP-2JH6PNU', '9.8822022', '78.083666', '2019-09-12 07:54:38.245033'),
('DESKTOP-2JH6PNU', '9.8822022', '78.083666', '2019-09-12 07:55:03.631688'),
('DESKTOP-2JH6PNU', '11.127122499999999', '78.6568942', '2019-09-12 08:12:10.007286'),
('DESKTOP-2JH6PNU', '11.127122499999999', '78.6568942', '2019-09-12 08:12:22.011598'),
('DESKTOP-2JH6PNU', '11.127122499999999', '78.6568942', '2019-09-12 08:12:42.675649'),
('DESKTOP-2JH6PNU', '9.9135111', '78.1240813', '2019-09-12 13:26:21.465083'),
('DESKTOP-2JH6PNU', '9.9135111', '78.1240813', '2019-09-12 13:26:55.417258'),
('DESKTOP-2JH6PNU', '9.9135111', '78.1240813', '2019-09-12 13:27:43.489589'),
('DESKTOP-2JH6PNU', '9.9135111', '78.1240813', '2019-09-12 13:28:43.699447'),
('DESKTOP-2JH6PNU', '9.9135111', '78.1240813', '2019-09-12 13:29:44.002893'),
('DESKTOP-2JH6PNU', '9.9135111', '78.1240813', '2019-09-12 13:30:44.675186'),
('DESKTOP-2JH6PNU', '9.9135111', '78.1240813', '2019-09-12 13:31:44.907320'),
('DESKTOP-2JH6PNU', '9.9135111', '78.1240813', '2019-09-12 13:31:51.735899'),
('DESKTOP-2JH6PNU', '9.9135111', '78.1240813', '2019-09-12 13:59:27.096506'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:15:46.423710'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:16:46.688480'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:17:46.902718'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:19:12.209153'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:20:12.469586'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:21:13.479704'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:22:14.416200'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:23:15.427873'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:24:16.686092'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:25:17.405737'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:26:18.388569'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:27:19.409849'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:28:20.411909'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:29:21.430233'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:30:22.418468'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:31:23.405867'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:32:24.414951'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:33:25.414089'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:34:26.414351'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:35:27.407533'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:36:28.424265'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:37:29.412478'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:38:30.423409'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:39:31.432106'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:40:32.411898'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:41:33.420780'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:42:34.425007'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:43:35.419436'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:44:36.422389'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:45:37.421632'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:46:38.428802'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:47:39.418800'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:48:40.414367'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:49:41.429580'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:50:42.430402'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:51:43.425592'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:52:44.431008'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:53:45.428867'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:54:46.432214'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:55:47.425094'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:56:48.433791'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:57:49.421227'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:58:50.427934'),
('::1', '9.9135751', '78.1240447', '2019-09-12 17:59:51.413914'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:00:52.424860'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:01:53.400715'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:02:54.414857'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:03:55.403206'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:04:56.437771'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:05:57.410719'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:06:58.410793'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:07:59.420401'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:09:00.428009'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:10:01.396555'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:11:02.437693'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:12:03.411436'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:13:04.418586'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:14:05.433163'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:15:06.407155'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:16:07.418936'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:17:08.427281'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:18:09.410160'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:19:10.421848'),
('::1', '9.9135751', '78.1240447', '2019-09-12 18:20:11.432733'),
('::1', '9.9135111', '78.1240813', '2019-09-12 18:21:20.213985'),
('::1', '9.9135005', '78.1240588', '2019-09-16 13:30:18.277738'),
('::1', '9.9135005', '78.1240588', '2019-09-16 13:31:18.549109'),
('::1', '9.9135005', '78.1240588', '2019-09-16 13:32:19.315887');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`) VALUES
('balaji', 'balaji'),
('viky', 'viky');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
