-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2014 at 06:31 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pps2`
--

-- --------------------------------------------------------

--
-- Table structure for table `adp_sector_lookup`
--

CREATE TABLE IF NOT EXISTS `adp_sector_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `adp_sector_lookup`
--

INSERT INTO `adp_sector_lookup` (`id`, `name`, `status`) VALUES
(1, 'Agriculture', 'Active'),
(2, 'Rural Development and Rural Institutions', 'Active'),
(3, 'Water Resources', 'Active'),
(4, 'Industries', 'Active'),
(5, 'Power', 'Active'),
(6, 'Oil, Gas and Natural Resources', 'Active'),
(7, 'Transport', 'Active'),
(8, 'Communication', 'Active'),
(9, 'Physical Planning, Water Supply and Housing', 'Active'),
(10, 'Education and Religious Affairs', 'Active'),
(11, 'Sports and Culture', 'Active'),
(12, 'Health, Nutrition, Population and Family Welfare', 'Active'),
(13, 'Mass Media', 'Active'),
(14, 'Social Welfare, Women Affairs and Youth Development', 'Active'),
(15, 'Public Administration', 'Active'),
(16, 'Science, Information and Communication Technology', 'Active'),
(17, 'Labour and Employment', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `adp_subsector_lookup`
--

CREATE TABLE IF NOT EXISTS `adp_subsector_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adp_sector_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `adp_subsector_lookup`
--

INSERT INTO `adp_subsector_lookup` (`id`, `adp_sector_id`, `name`, `status`) VALUES
(1, 1, 'Food', 'Active'),
(2, 1, 'Forestry', 'Active'),
(3, 1, 'Fisheries', 'Active'),
(4, 1, 'Livestock', 'Active'),
(5, 1, 'Irrigation', 'Active'),
(6, 1, 'Crops', 'Active'),
(7, 2, 'Not Applicable', 'Active'),
(8, 3, 'Not Applicable', 'Active'),
(9, 4, 'Chemical and Minaral Industry', 'Active'),
(10, 4, 'Sugar, Food and Allied Insustry Wing', 'Active'),
(11, 4, 'Small and Cottage Industries', 'Active'),
(12, 4, 'Jute, Textile and BEPZA', 'Active'),
(13, 4, 'Engineering and Electronics Wing', 'Active'),
(14, 5, 'Generation', 'Active'),
(15, 5, 'Transmission', 'Active'),
(16, 5, 'Distribution', 'Active'),
(17, 6, 'Not Applicable', 'Active'),
(18, 7, 'Roads', 'Active'),
(19, 7, 'Railways', 'Active'),
(20, 7, 'Civil Aviation', 'Active'),
(21, 7, 'Shipping', 'Active'),
(22, 8, 'Not Applicable', 'Active'),
(23, 9, 'Not Applicable', 'Active'),
(24, 10, 'Primary Education', 'Active'),
(25, 10, 'Secondary and Higher Secondary Education', 'Active'),
(26, 10, 'Technical Education', 'Active'),
(27, 10, 'University Education', 'Active'),
(28, 10, 'Ministry of Education', 'Active'),
(29, 10, 'Ministry of Defence', 'Active'),
(30, 10, 'Ministry of Religious Affairs', 'Active'),
(31, 11, 'Sports', 'Active'),
(32, 11, 'Culture', 'Active'),
(33, 12, 'Health and Nutrition', 'Active'),
(34, 12, 'Population and Family Welfair', 'Active'),
(35, 13, 'Not Applicable', 'Active'),
(36, 14, 'Social Welfare', 'Active'),
(37, 14, 'Women Affairs', 'Active'),
(38, 14, 'Youth Development', 'Active'),
(39, 15, 'Not Applicable', 'Active'),
(40, 16, 'Not Applicable', 'Active'),
(41, 17, 'Not Applicable', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `agency_lookup`
--

CREATE TABLE IF NOT EXISTS `agency_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ministry_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=356 ;

--
-- Dumping data for table `agency_lookup`
--

INSERT INTO `agency_lookup` (`id`, `ministry_id`, `name`, `status`) VALUES
(1, 1, 'Dhaka Water Supply and Sewerage Authority (WASA)', 'Active'),
(2, 1, 'Chittagong Water Supply and Sewerage Authority (CWASA)', 'Active'),
(3, 1, 'Dhaka North City Corporation', 'Active'),
(4, 1, 'Local Government Division', 'Active'),
(5, 1, 'Department of Public Health Engineering', 'Active'),
(6, 1, 'National Institute of Local Government', 'Active'),
(7, 1, 'Rajshahi Water Supply and Sewerage Authority (RWASA)', 'Active'),
(8, 1, 'Khulna Water Supply and Sewerage Authority (KWASA)', 'Active'),
(9, 1, 'Local Government Engineering Department', 'Active'),
(10, 1, 'Dhaka South City Corporation', 'Active'),
(11, 1, 'Chittagong City Corporation', 'Active'),
(12, 1, 'Rajshahi City Corporation', 'Active'),
(13, 1, 'Barisal City Corporation', 'Active'),
(14, 1, 'Narayanganj City Corporation', 'Active'),
(15, 1, 'Khulna City Corporation', 'Active'),
(16, 1, 'Sylhet City Corporation', 'Active'),
(17, 2, 'Ministry of Agriculture', 'Active'),
(18, 2, 'Bangladesh Agricultural Research Council (BARC)', 'Active'),
(19, 2, 'Integrated Agricultural Productivity Project (IAPP)', 'Active'),
(20, 2, 'Bangladesh Agricultural Development Corporation (BADC)', 'Active'),
(21, 2, 'Department of Agricultural extension (DAE)', 'Active'),
(22, 2, 'Bangladesh Rice Research Institute (BRRI)', 'Active'),
(23, 2, 'Bangladesh Agricultural Research Institute (BARI)', 'Active'),
(24, 2, 'Bangladesh Rice Knowledge Bank (BRKB)', 'Active'),
(25, 2, 'Bangladesh Jute Research Institute (BJRI)', 'Active'),
(26, 2, 'Bangladesh Institute of Nuclear Agriculture (BINA)', 'Active'),
(27, 2, 'Bangladesh Sugarcane Research Institute (BSRI)', 'Active'),
(28, 2, 'Barind Multipurpose Development Authority (BMDA)', 'Active'),
(29, 2, 'Cotton Development Board (CDB)', 'Active'),
(30, 2, 'Seed Certification Agency (SCA)', 'Active'),
(31, 2, 'Soil Resource Development Institute (SRDI)', 'Active'),
(32, 2, 'Department of Agricultural Marketing (DAM)', 'Active'),
(33, 2, 'Agriculture Information Service (AIS)', 'Active'),
(34, 2, 'Bangladesh Applied Nutrition and Development Board (BAN-HRDB)', 'Active'),
(35, 2, 'SAARC Agriculture Centre (SAC)', 'Active'),
(36, 3, 'Ashuganj Power Station Company Ltd. (APSCL)', 'Active'),
(37, 3, 'Bangladesh Power Development Board (BPDB)', 'Active'),
(38, 3, 'Dhaka Electric Supply Authority (DESA)', 'Active'),
(39, 3, 'Dhaka Electric Supply Company (DESC0)', 'Active'),
(40, 3, 'Dhaka Power Distribution Company Ltd (DPDCL)', 'Active'),
(41, 3, 'Electricity Generation Company of Bangladesh Ltd. (EGCB)', 'Active'),
(42, 3, 'West Zone Power Distribution Company Ltd. (WZPDCL)', 'Active'),
(43, 3, 'Power Cell', 'Active'),
(44, 3, 'Power Grid Company of Bangladesh (PGCB)', 'Active'),
(45, 3, 'Rural Electrification Board (REB)', 'Active'),
(46, 3, 'Rural Power Company Ltd. (RPCL)', 'Active'),
(47, 3, ' Power Division, M/O. Power, Energy & Mineral Res.', 'Active'),
(48, 4, 'Bridges Division ', 'Active'),
(49, 4, ' Bangladesh Bridge Authority', 'Active'),
(50, 5, 'Ministry of Railways', 'Active'),
(51, 5, 'Bangladesh Railway', 'Active'),
(52, 6, 'Roads Division', 'Active'),
(53, 6, 'Roads and Highways Department, Bangladesh', 'Active'),
(54, 6, 'Bangladesh Road Transport Corporation', 'Active'),
(55, 6, 'Bangladesh Road Transport Authority', 'Active'),
(56, 6, 'Dhaka Transport Co-ordination Authority', 'Active'),
(57, 7, 'Ministry of Education', 'Active'),
(58, 7, 'Bangladesh Madrasha Teachers'' Training Institute (BMTTI)', 'Active'),
(59, 7, 'National Academy for Computer Training and Research (NACTAR)', 'Active'),
(60, 7, 'Higher Education Quality Enhancement Project (HEQEP)', 'Active'),
(61, 7, 'Intermediate & Secondary Education Boards, Bangladesh', 'Active'),
(62, 7, 'Directorate of Secondary and Higher Education (DSHE)', 'Active'),
(63, 7, 'Directorate of Technical Education', 'Active'),
(64, 7, 'National Curriculum and Textbook Board (NCTB)', 'Active'),
(65, 7, 'Board of Intermediate & Secondary Education Board, Dhaka', 'Active'),
(66, 7, 'Bangladesh Technical Education Board (BTEB)', 'Active'),
(67, 7, 'Bangladesh Madrasah Education Board', 'Active'),
(68, 7, 'Secondary and Higher Secondary Education Board, Dhaka', 'Active'),
(69, 7, 'Secondary and Higher Secondary Education Board, Chittagong', 'Active'),
(70, 7, 'Secondary and Higher Secondary Education Board, Rajshahi', 'Active'),
(71, 7, 'Secondary and Higher Secondary Education Board, Comilla', 'Active'),
(72, 7, 'Secondary and Higher Secondary Education Board, Jessore', 'Active'),
(73, 7, 'Secondary and Higher Secondary Education Board, Barisal', 'Active'),
(74, 7, 'Secondary and Higher Secondary Education Board, Sylhet', 'Active'),
(75, 7, 'Secondary and Higher Secondary Education Board, Dinajpur', 'Active'),
(76, 7, 'University Grants Commission (UGC)', 'Active'),
(77, 7, 'Bangladesh Bureau of Educational Information & Statistics (BANBEIS)', 'Active'),
(78, 7, 'National Academy for Educational Management (NAEM)', 'Active'),
(79, 7, 'Directorate of Inspection and Audit (DIA)', 'Active'),
(80, 7, 'Education Engineering Department (EED)', 'Active'),
(81, 7, 'Non-government Teachers Registration and Certification Authority (NTRCA)', 'Active'),
(82, 8, 'Center for Environmental and Geographic Information Services', 'Active'),
(83, 8, 'Bangladesh Haor & Wetland Development Board', 'Active'),
(84, 8, 'River Research Institute (RRI)', 'Active'),
(85, 8, 'Institute of Water Modelling (IWM)', 'Active'),
(86, 8, 'Water Resources Planning Organization (WARPO)', 'Active'),
(87, 8, 'Bangladesh Water Development Board', 'Active'),
(88, 8, 'Joint Rivers Commission, Bangladesh', 'Active'),
(89, 8, 'Flood Forecasting and Warning Center', 'Active'),
(90, 8, 'Ministry of Water Resources ', 'Active'),
(91, 9, 'Ministry of Primary and Mass Education', 'Active'),
(92, 9, 'Bureau of Non-Formal Education (BNFE)', 'Active'),
(93, 9, 'Directorate of Primary Education (DPE)', 'Active'),
(94, 9, 'National Academy for Primary Education', 'Active'),
(95, 10, 'National e-Government Procurement (e-GP)', 'Active'),
(96, 10, 'Agriculture Water Resources and Rural Institutions', 'Active'),
(97, 10, 'General Economics Division', 'Active'),
(98, 10, 'Industry and Energy Division', 'Active'),
(99, 10, 'Physical Infrastructure Division', 'Active'),
(100, 10, 'Planning Division', 'Active'),
(101, 10, 'Programming Division', 'Active'),
(102, 10, 'Socio Economic Infrastructure Division', 'Active'),
(103, 10, 'Implementation Monitoring and Evaluation Division (IMED)', 'Active'),
(104, 10, 'Support to ICT Task Force Programme Project', 'Active'),
(105, 10, 'Central Procurement Technical Unit (CPTU)', 'Active'),
(106, 10, 'Ministry of Planning', 'Active'),
(107, 11, 'Titas Gas Transmission and Distribution Company Limited (TGTDCL)', 'Active'),
(108, 11, 'Rupantarita Prakritik Gas Company Ltd. (RPGCL)', 'Active'),
(109, 11, 'Bangladesh Oil, Gas and Mineral Corporation (Petrobangla)', 'Active'),
(110, 11, 'EMR Division, M/O. Power, Energy & Mineral Res.', 'Active'),
(111, 3, 'Power Division, M/O. Power, Energy & Mineral Res.', 'Active'),
(112, 12, 'Ministry of Public Administration', 'Active'),
(113, 12, ' Bangladesh Institute of Administration & Management Foundation (BIAM)', 'Active'),
(114, 12, 'Bangladesh Civil Service Administration Academy', 'Active'),
(115, 12, 'Bangladesh Government Press', 'Active'),
(116, 12, ' Bangladesh Public Administration Training Center', 'Active'),
(117, 13, 'Bangladesh Public Service Commission (BPSC)', 'Active'),
(118, 14, 'Finance Division', 'Active'),
(119, 14, 'Bangladesh Krishi Bank (BKB)', 'Active'),
(120, 14, 'Bangladesh Institute of Bank Management (BIBM)', 'Active'),
(121, 14, 'The Security Printing Corporation (Bangladesh) Ltd.', 'Active'),
(122, 14, 'Bangladesh Bank', 'Active'),
(123, 14, 'Bangladesh House Building Finance Corporation', 'Active'),
(124, 14, 'Investment Corporation of Bangladesh (ICB)', 'Active'),
(125, 14, 'Palli Karma-Sahayak Foundation (PKSF)', 'Active'),
(126, 14, 'Chittagong Stock Exchange (CSE)', 'Active'),
(127, 14, 'Dhaka Stock Exchange (DSE)', 'Active'),
(128, 14, 'Karmasangsthan Bank', 'Active'),
(129, 14, 'Bangladesh Securities and Exchange Commission', 'Active'),
(130, 14, 'Office of the Controller General of Accounts', 'Active'),
(131, 14, 'Financial Management Reform Programme', 'Active'),
(132, 14, 'Comptroller and Auditor General of Bangladesh', 'Active'),
(133, 53, 'e-TIN Registration', 'Active'),
(134, 15, 'Bank and Financial Institutions Division', 'Active'),
(135, 16, 'Economic Relations Divisions (ERD)', 'Active'),
(136, 17, 'Ministry of Finance', 'Active'),
(137, 18, 'Ministry of Information', 'Active'),
(138, 18, 'Bangladesh Press Council', 'Active'),
(139, 18, 'Press Institute of Bangladesh', 'Active'),
(140, 18, 'National Institute of Mass Communication', 'Active'),
(141, 18, 'Press Information Department (PID)', 'Active'),
(142, 18, 'Department of Mass Communication', 'Active'),
(143, 18, 'Bangladesh Television', 'Active'),
(144, 18, 'Bangladesh Betar', 'Active'),
(145, 18, 'Bangladesh Film Development Corporation', 'Active'),
(146, 18, 'Bangladesh Film Archive', 'Active'),
(147, 18, 'Bangladesh Film Censor Board', 'Active'),
(148, 18, 'Bangladesh Sangbad Sangstha (BSS)', 'Active'),
(149, 19, 'Ministry of Food', 'Active'),
(150, 19, 'Directorate General of Food', 'Active'),
(151, 20, 'Ministry of Disaster Management and Relief', 'Active'),
(152, 20, 'Department of Disaster Management', 'Active'),
(153, 20, 'Disaster Management Bureau', 'Active'),
(154, 20, 'Department of Relief & Rehabilitation (DRR)', 'Active'),
(155, 21, 'M/O. Posts, Telecomm. and Information Technology', 'Active'),
(156, 21, 'Bangladesh Telecommunication Regulatory Commission (BTRC)', 'Active'),
(157, 21, 'Telephone Shilpa Sangstha Ltd. (TSS)', 'Active'),
(158, 21, 'Bangladesh Telecommunications Company Limited (BTCL)', 'Active'),
(159, 21, 'Bangladesh Post Office', 'Active'),
(160, 21, 'Bangladesh Submarine Cable Company Limited (BSCCL)', 'Active'),
(161, 21, 'Teletalk Bangladesh Limited', 'Active'),
(162, 22, 'Posts and Telecommunications Division', 'Active'),
(163, 23, 'Ministry of Religious Affairs (MORA)', 'Active'),
(164, 23, 'Bangladesh Hajj Management Portal', 'Active'),
(165, 23, ' Islamic Foundation Bangladesh', 'Active'),
(166, 24, 'Ministry of Foreign Affairs', 'Active'),
(167, 24, 'Bangladesh Deputy High Commission, Karachi, Pakistan', 'Active'),
(168, 24, 'Bangladesh High Commission, Kenya', 'Active'),
(169, 24, 'Bangladesh Embassy, Jordan', 'Active'),
(170, 24, 'Bangladesh Deputy High Commission in Kolkata, India', 'Active'),
(171, 24, 'Bangladesh Embassy, France', 'Active'),
(172, 24, 'Bangladesh Embassy, Kingdom of Bahrain', 'Active'),
(173, 24, 'Bangladesh High Commission Canberra, Australia', 'Active'),
(174, 24, 'Bangladesh High Commission, Bandar Seri Begawan, Brunei Darussalam', 'Active'),
(175, 24, 'Bangladesh Embassy, Brussels, Belgium', 'Active'),
(176, 24, 'Bangladesh High Commission, Ottawa, Canada', 'Active'),
(177, 24, 'Bangladesh Embassy, Berlin, Germany', 'Active'),
(178, 24, 'Bangladesh High Commission, New Delhi, India', 'Active'),
(179, 24, 'Bangladesh Embassy, Rome, Italy', 'Active'),
(180, 24, 'Bangladesh Embassy, Tokyo, Japan, Bangladesh High Commission, Kuala Lumpur, Malaysia', 'Active'),
(181, 24, 'Bangladesh Embassy, Moscow, Russian Federation', 'Active'),
(182, 24, 'Bangladesh Embassy, The Hague, The Netherlands', 'Active'),
(183, 24, 'Bangladesh High Commission, Islamabad, Pakistan', 'Active'),
(184, 24, 'Bangladesh Embassy, Riyadh, Saudi Arabia', 'Active'),
(185, 24, 'Consulate General of Bangladesh, Jeddah, Saudi Arabia', 'Active'),
(186, 24, 'Bangladesh High Commission, Singapore', 'Active'),
(187, 24, 'Bangladesh Embassy, Stockholm, Sweden', 'Active'),
(188, 24, 'Bangladesh High Commission, London, UK', 'Active'),
(189, 24, 'Bangladesh Embassy, Washington DC, U.S.A', 'Active'),
(190, 24, 'Bangladesh Permanent Mission to the UN, New York, U.S.A', 'Active'),
(191, 24, 'Bangladesh Consulate General, New York, U.S.A', 'Active'),
(192, 24, 'Bangladesh Consulate General, Los Angels, U.S.A', 'Active'),
(193, 24, 'Bangladesh Embassy, China', 'Active'),
(194, 25, 'Bangladesh Bureau of Statistics', 'Active'),
(195, 26, 'Ministry of Environment and Forests', 'Active'),
(196, 26, 'Bangladesh Forest Department', 'Active'),
(197, 26, 'Department of Environment (DOE)', 'Active'),
(198, 26, 'Bangladesh Forest Research Institute', 'Active'),
(199, 27, 'Ministry of Defence', 'Active'),
(200, 27, 'Bangladesh Ordnance Factories (BOF)', 'Active'),
(201, 27, 'Bangladesh Meteorological Department', 'Active'),
(202, 27, 'Controller General Defence Finance (CGDF)', 'Active'),
(203, 27, 'Directorate General of Defence Purchase', 'Active'),
(204, 27, 'Bangladesh Army', 'Active'),
(205, 27, 'Bangladesh Navy', 'Active'),
(206, 27, 'Bangladesh Air Force', 'Active'),
(207, 27, 'Bangladesh Space Research and Remote Sensing Organization (SPARRSO)', 'Active'),
(208, 27, 'Military Institute of Science & Technology (MIST)', 'Active'),
(209, 27, 'Survey Of Bangladesh', 'Active'),
(210, 27, 'Defence Services Command and Staff College', 'Active'),
(211, 27, 'National Defense College (NDC)', 'Active'),
(212, 28, 'Ministry of Labour And Employment', 'Active'),
(213, 28, 'Department of Labour', 'Active'),
(214, 28, 'Child Labour Unit', 'Active'),
(215, 29, 'Ministry of Textiles and Jute', 'Active'),
(216, 29, 'Bangladesh Silk Foundation (BSF)', 'Active'),
(217, 29, 'Bangladesh Jute Mills Corporation (BJMC)', 'Active'),
(218, 29, 'Department of Textiles (DOT)', 'Active'),
(219, 29, 'Bangladesh Handloom Board (BHB)', 'Active'),
(220, 29, 'Bangladesh Textiles Mills corporation (BTMC)', 'Active'),
(221, 29, 'Bangladesh Sericulture Research and Training Institute', 'Active'),
(222, 29, 'Bangladesh Sericulture Board (BSB)', 'Active'),
(223, 29, 'Department of Jute', 'Active'),
(224, 30, 'Ministry of Housing and Public Works', 'Active'),
(225, 30, 'Department of Architecture', 'Active'),
(226, 30, 'Urban Development Directorate', 'Active'),
(227, 30, 'Directorate of Government Accommodation', 'Active'),
(228, 30, 'Public Works Department (PWD)', 'Active'),
(229, 30, 'Rajdhani Unnayan Kartipokkha (Rajuk)', 'Active'),
(230, 30, 'National Housing Authority', 'Active'),
(231, 30, 'Chittagong Development Authority', 'Active'),
(232, 30, 'Rajshahi Development Authority', 'Active'),
(233, 30, 'Housing and Building Research Institute', 'Active'),
(234, 30, 'Khulna Development Authority', 'Active'),
(235, 31, 'Bangladesh Energy Regulatory Commission (BERC)', 'Active'),
(236, 32, 'Ministry of Commerce', 'Active'),
(237, 32, 'Directorate of National Consumer Rights Protection', 'Active'),
(238, 32, 'Bangladesh Tariff Commission', 'Active'),
(239, 32, 'Office of the Chief Controller of Imports and Exports (CCI&E)', 'Active'),
(240, 32, 'Jiban Bima Corporation', 'Active'),
(241, 32, 'The Institute of Chartered Accountants of Bangladesh (ICAB)', 'Active'),
(242, 32, 'Bangladesh Tea Board', 'Active'),
(243, 32, 'Shadharan Bima Corporation', 'Active'),
(244, 32, 'Office of the Registrar of Joint Stock Companies & Firms', 'Active'),
(245, 32, 'The Institute of Cost and Management Accountants of Bangladesh (ICMAB)', 'Active'),
(246, 32, 'Trading Corporation of Bangladesh (TCB)', 'Active'),
(247, 32, 'Export Promotion Bureau (EPB) Bangladesh', 'Active'),
(248, 33, 'Ministry of Chittagong Hills Tracts Affairs', 'Active'),
(249, 34, 'Ministry of Civil Aviation and Tourism', 'Active'),
(250, 34, 'Civil Aviation Authority, Bangladesh (CAAB)', 'Active'),
(251, 34, 'Bangladesh Parjatan Corporation (National Tourism Organization)', 'Active'),
(252, 34, 'Biman Bangladesh Airlines', 'Active'),
(253, 34, 'Ruposhi Bangla Hotel', 'Active'),
(254, 35, 'Ministry of Land', 'Active'),
(255, 35, 'Directorate of Land Record and Survey', 'Active'),
(256, 36, 'Ministry of Women and Children Affairs (MWCA)', 'Active'),
(257, 37, 'Ministry of Fisheries and Livestock', 'Active'),
(258, 37, 'Directorate of Livestock Services', 'Active'),
(259, 37, 'Department of Fisheries', 'Active'),
(260, 37, 'Bangladesh Fisheries Research Institute', 'Active'),
(261, 37, 'Bangladesh Livestock Research Institute', 'Active'),
(262, 38, 'Ministry of Youth & Sports', 'Active'),
(263, 38, 'Bangladesh Krira Shikkha Protisthan (BKSP)', 'Active'),
(264, 38, 'Department of Youth Development', 'Active'),
(265, 39, 'Ministry of Communication', 'Active'),
(266, 40, 'Ministry of Industries', 'Active'),
(267, 40, 'Small & Medium Enterprise Foundation (SMEF)', 'Active'),
(268, 40, 'Bangladesh Acreditation Board (BAB)', 'Active'),
(269, 40, 'Office of the Chief Inspector of Boiler', 'Active'),
(270, 40, 'Department of Patents, Designs and Trademarks (DPDT)', 'Active'),
(271, 40, 'Bangladesh Chemical Industries Corporation (BCIC)', 'Active'),
(272, 40, 'Bangladesh Steel & Engineering Corporation (BSEC)', 'Active'),
(273, 40, 'Bangladesh Small and Cottage Industries Corporation (BSCIC)', 'Active'),
(274, 40, 'Bangladesh Institute of Management (BIM)', 'Active'),
(275, 40, 'Bangladesh Standards and Testing Institution (BSTI)', 'Active'),
(276, 40, 'Bangladesh Industrial and Technical Assistance Center (BITAC)', 'Active'),
(277, 40, 'National Productivity Organization (NPO)', 'Active'),
(278, 41, 'Ministry of Science and Technology', 'Active'),
(279, 41, 'Bangabandhu Sheikh Mujibur Rahman Novo Theatre', 'Active'),
(280, 41, ' Bangladesh Council of Scientific and Industrial Research (BCSIR)', 'Active'),
(281, 41, 'National Institute of Biotechnology', 'Active'),
(282, 41, 'Bangladesh Atomic Energy Commission', 'Active'),
(283, 41, 'Bangladesh National Scientific and Technical Documentation Centre (BANSDOC)', 'Active'),
(284, 41, 'National Museum of Science & Technology (NMST)', 'Active'),
(285, 42, 'Ministry of Social Welfare', 'Active'),
(286, 42, 'Sheikh Zayed Bin Sultan Al Nahyan Trust (Bangladesh)', 'Active'),
(287, 42, 'National Foundation for Development of the Disabled Persons', 'Active'),
(288, 42, 'The Department of Social Services', 'Active'),
(289, 42, 'Bangladesh National Social Welfare Council', 'Active'),
(290, 43, 'Ministry of Cultural Affairs', 'Active'),
(291, 43, 'Nazrul Institute', 'Active'),
(292, 43, 'Bangladesh Shilpakala Academy', 'Active'),
(293, 43, 'Bangla Academy', 'Active'),
(294, 43, 'Bangladesh National Museum', 'Active'),
(295, 43, 'Department of Public Libraries', 'Active'),
(296, 43, 'Copyright Office Bangladesh', 'Active'),
(297, 43, 'Directorate of Archives and Libraries', 'Active'),
(298, 44, 'Ministry of Home Affairs', 'Active'),
(299, 44, 'Bangladesh Jail', 'Active'),
(300, 44, 'Police Reform Programme (PRP)', 'Active'),
(301, 44, 'Dhaka Metropolitan Police', 'Active'),
(302, 44, 'Police Internal Oversight', 'Active'),
(303, 44, 'Department of Immigration and Passports', 'Active'),
(304, 44, 'Bangladesh Police', 'Active'),
(305, 44, 'Border Guard Bangladesh', 'Active'),
(306, 44, 'Bangladesh Ansar and VDP', 'Active'),
(307, 44, 'Bangladesh Coast Guard', 'Active'),
(308, 44, 'Department of Narcotics Control', 'Active'),
(309, 44, 'Rapid Action Battalion', 'Active'),
(310, 45, 'Ministry of Health and Family Welfare', 'Active'),
(311, 45, 'International Centre for Diarrhoeal Disease Research, Bangladesh (ICDDR,B)', 'Active'),
(312, 45, 'National Institute of Population Research and Training (NIPORT)', 'Active'),
(313, 45, 'National Electro Medical Equipment Maintenance Workshop & Training Center', 'Active'),
(314, 45, 'Directorate General of Health Services (DGHS)', 'Active'),
(315, 45, 'Directorate General of Family Planning', 'Active'),
(316, 45, 'Directorate General of Drug Administration (DGDA)', 'Active'),
(317, 46, 'Ektee Bari Ektee Khamar', 'Active'),
(318, 46, 'Bangladesh Academy for Rural Development', 'Active'),
(319, 46, 'Department of Cooperatives', 'Active'),
(320, 46, 'Bangladesh Rural Development Board (BRDB)', 'Active'),
(321, 47, 'Ministry of Liberation War Affairs', 'Active'),
(322, 48, 'Ministry of Expatriates'' Welfare & Overseas Employment', 'Active'),
(323, 48, 'Probashi Kallyan Bank', 'Active'),
(324, 48, 'Bangladesh Overseas Employment and Services Limited (BOESL)', 'Active'),
(325, 48, 'Bureau of Manpower, Employment and Training (BMET)', 'Active'),
(326, 49, 'Ministry of Shipping', 'Active'),
(327, 49, 'Bangladesh Marine Academy', 'Active'),
(328, 50, 'Bangladesh Election Commission', 'Active'),
(329, 51, 'Information Commission', 'Active'),
(330, 52, 'Bangladesh Computer Council (BCC)', 'Active'),
(331, 52, 'Controller of Certifying Authorities (CCA)', 'Active'),
(332, 52, 'Hi-Tech Park Bangladesh', 'Active'),
(333, 53, 'National Board of Revenue (NBR)', 'Active'),
(334, 53, 'Directorate of National Savings', 'Active'),
(335, 53, 'Chittagong Custom House', 'Active'),
(336, 53, 'Dhaka Custom House', 'Active'),
(337, 54, 'Ministry of Law, Justice and Parliamentary Affairs', 'Active'),
(338, 54, 'Legislative & Parliamentary Affairs Division', 'Active'),
(339, 55, 'Supreme Court of Bangladesh', 'Active'),
(340, 56, 'Bangladesh Law Commission', 'Active'),
(341, 57, 'Bangladesh Judicial Service Commission', 'Active'),
(342, 58, 'President''s Office', 'Active'),
(343, 59, 'Prime Minister''s Office', 'Active'),
(344, 59, 'Armed Forces Division', 'Active'),
(345, 59, 'National Security Intelligence (NSI)', 'Active'),
(346, 59, 'Bangladesh Economic Zones Authority (BEZA)', 'Active'),
(347, 59, 'Bangladesh Export Processing Zones Authority (BEPZA)', 'Active'),
(348, 59, 'Board of Investment', 'Active'),
(349, 59, 'Privatization Commission, Bangladesh', 'Active'),
(350, 59, 'Public Private Partnership Office Bangladesh (PPP)', 'Active'),
(351, 59, 'Special Security Force (SSF)', 'Active'),
(352, 59, 'NGO Affairs Bureau', 'Active'),
(353, 59, 'ASHRAYAN -2 (Poverty Alleviation & Rehabilitation Project)', 'Active'),
(354, 60, 'Cabinet Division', 'Active'),
(355, 61, 'National Parliament of Bangladesh', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `annexure_v`
--

CREATE TABLE IF NOT EXISTS `annexure_v` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `economic_code_id` int(11) NOT NULL,
  `economic_subcode_id` int(11) NOT NULL,
  `economic_subcode_name` varchar(512) NOT NULL,
  `unit` varchar(64) NOT NULL,
  `unit_cost` double NOT NULL,
  `qty` int(11) NOT NULL,
  `total_cost` double NOT NULL,
  `gob` double NOT NULL,
  `gob_fe` double NOT NULL,
  `rpa_through_gob` double NOT NULL,
  `rpa_special_account` double NOT NULL,
  `dpa` double NOT NULL,
  `own_fund` double NOT NULL,
  `own_fund_fe` double NOT NULL,
  `other` double NOT NULL,
  `other_fe` double NOT NULL,
  `total_year` int(11) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `major_item` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Dumping data for table `annexure_v`
--

INSERT INTO `annexure_v` (`id`, `pid`, `economic_code_id`, `economic_subcode_id`, `economic_subcode_name`, `unit`, `unit_cost`, `qty`, `total_cost`, `gob`, `gob_fe`, `rpa_through_gob`, `rpa_special_account`, `dpa`, `own_fund`, `own_fund_fe`, `other`, `other_fe`, `total_year`, `attachment`, `major_item`) VALUES
(11, 22, 5, 133, 'Machineries & Equipment', '', 0, 0, 12, 3, 5, 4, 5, 0, 0, 0, 0, 0, 1, '', 'No'),
(12, 22, 2, 2, 'Pay of Establishment#%DDD#%#%#%DDDD', '', 0, 0, 15, 5, 6, 6, 4, 0, 0, 0, 0, 0, 1, '', 'No'),
(13, 22, 4, 42, 'Satellite/Frequency', '', 0, 0, 42, 2, 8, 8, 8, 8, 8, 8, 8, 8, 1, '', 'No'),
(14, 22, 11, 390, 'Rural Roads and Culverts', '', 0, 0, 534, 89, 89, 89, 89, 89, 89, 89, 89, 89, 1, '', 'No'),
(15, 22, 5, 139, 'Educational Institutions', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 'No'),
(16, 22, 9, 352, 'Telecommunication Equipment', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 'No'),
(17, 22, 13, 432, 'Other Non-government Institutions', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 'No'),
(18, 22, 6, 168, '5-Year Treasury Bond-2007 (2.86 Crore, 6%)', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 'No'),
(19, 23, 4, 38, 'Overtime', '', 0, 0, 5.23, 3, 5, 0, 0, 0, 2, 4, 0.23, 0.32, 1, '', 'No'),
(21, 23, 6, 169, 'National Bond', '', 0, 0, 8, 4, 4, 4, 0, 0, 0, 0, 0, 0, 1, '', 'No'),
(22, 23, 9, 349, 'Teaching and Learning Material', '', 0, 0, 12, 6, 6, 6, 0, 0, 0, 0, 0, 0, 1, '', 'No'),
(23, 24, 1, 1, 'Pay of Officers', 'MM', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(25, 24, 2, 2, 'Pay of Establishment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(27, 24, 3, 4, 'House Rent Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(28, 24, 3, 5, 'Rest and Recreation Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(29, 24, 3, 6, 'Festival Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(30, 24, 3, 7, 'Medical Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(31, 24, 3, 8, 'Hill Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(32, 24, 3, 9, 'Defence Service Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(33, 24, 3, 10, 'Allowences for Chief, Headmen and Karbaries', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(34, 24, 3, 11, 'Batsman Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(35, 24, 3, 12, 'Washing Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(36, 24, 3, 13, 'Haircut Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(37, 24, 3, 14, 'Foreign Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'Yes'),
(38, 24, 3, 15, 'Entertainment/Sumptuary Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(39, 24, 3, 16, 'Charge Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'Yes'),
(40, 24, 3, 17, 'Retainery', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(41, 24, 3, 18, 'Compensatory Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(42, 24, 3, 19, 'Ration Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(43, 24, 3, 20, 'Daily/Subsistence Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(44, 24, 3, 22, 'Internee/Apprenticeship Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(45, 24, 3, 23, 'Fixed Travel Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(46, 24, 3, 21, 'Tiffin Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'Yes'),
(47, 24, 3, 24, 'Conveyance Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(48, 24, 3, 25, 'Overtime', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(49, 24, 3, 26, 'Educational Allowances', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(50, 24, 3, 27, 'Uniform Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(51, 24, 3, 28, 'Training Allowance (Fixed)', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(52, 24, 3, 29, 'Hazardous Job Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(53, 24, 3, 30, 'Contract Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(54, 24, 3, 30, 'Contract Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(55, 24, 3, 31, 'Constituency Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(56, 24, 3, 32, 'Operation Allowance Electoral Area Office', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(57, 24, 3, 33, 'Telephone Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(58, 24, 3, 34, 'Other Allowances', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(59, 24, 4, 35, 'Travel Expenses', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'Yes'),
(60, 24, 4, 36, 'Transfer Expenses', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(61, 24, 3, 3, 'Dearness Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(62, 24, 4, 37, 'Contingent Staff', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(63, 24, 4, 38, 'Overtime', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(64, 24, 4, 39, 'Rent-Office', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(65, 24, 9, 337, 'Office Buildings', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(66, 24, 9, 338, 'Residential Buildings', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(67, 24, 9, 339, 'Other Buildings', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(68, 24, 9, 340, 'Motor Vehicles', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'Yes'),
(69, 24, 9, 341, 'Water Transport', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 5, '', 'No'),
(70, 24, 9, 342, 'Aircraft', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(71, 24, 9, 343, 'Camera and Accessories', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(72, 24, 9, 344, 'Machinery and Other Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(73, 24, 9, 345, 'Engineering Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(74, 24, 9, 346, 'Computers and Accessories', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 5, '', 'No'),
(75, 24, 9, 347, 'Computer Softwares', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'Yes'),
(76, 24, 9, 348, 'Office Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(77, 24, 9, 349, 'Teaching and Learning Material', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(78, 24, 9, 350, 'Furniture and Fixtures', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(79, 24, 9, 351, 'Laboratory Equipmentï¿½s / Material', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(80, 24, 9, 352, 'Telecommunication Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(81, 24, 9, 353, 'Ballot Box (Procurement)', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(82, 24, 9, 354, 'Radio Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(83, 24, 9, 357, 'Military Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(84, 24, 9, 358, 'Rolling Stock', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(85, 24, 9, 359, 'Meteorological Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(86, 24, 9, 360, 'Rail Installations', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(87, 24, 9, 355, 'Military Hardware', '', 0, 0, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, '', 'No'),
(88, 24, 9, 356, 'Electrical Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(89, 24, 9, 361, 'Roads and Highways', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(90, 24, 9, 362, 'Military Hardware (Arrears)', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(91, 24, 9, 363, 'Bridges', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(92, 24, 9, 364, 'Rural Roads and Culverts', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(93, 24, 9, 365, 'Irrigation Structures', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(94, 24, 9, 366, 'Drainage Structures', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(95, 24, 9, 367, 'Sanitation and Water Supply', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(96, 24, 9, 368, 'Afforestation', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(97, 24, 9, 369, 'Monuments', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(98, 24, 9, 370, 'Museum Artifacts, Paintings, Archives, Films', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(99, 24, 9, 371, 'Tubewell & Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(100, 24, 9, 372, 'Others', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(101, 24, 9, 373, 'Bullet Proof Jacket', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(102, 24, 9, 374, 'Firefighting Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(103, 24, 9, 375, 'Mobile Instrument', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(104, 24, 9, 376, 'Tents & Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(105, 24, 9, 377, 'Arms, Motor Vehicle and Equipment for Police', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(106, 24, 9, 378, 'Aircooler', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(107, 24, 9, 341, 'Water Transport', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 5, '', 'No'),
(108, 24, 9, 342, 'Aircraft', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(109, 24, 9, 345, 'Engineering Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(110, 24, 9, 346, 'Computers and Accessories', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 5, '', 'No'),
(111, 24, 9, 355, 'Military Hardware', '', 0, 0, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, '', 'No'),
(112, 24, 9, 346, 'Computers and Accessories', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 5, '', 'No'),
(113, 24, 9, 343, 'Camera and Accessories', '', 0, 0, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, '', 'No'),
(114, 24, 9, 343, 'Camera and Accessories', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', 'No'),
(130, 25, 1, 1, 'Pay of Officers', 'LS', 15, 2, 30, 5, 5, 5, 5, 5, 5, 55, 5, 5, 1, '', 'Yes'),
(131, 25, 2, 2, 'Pay of Establishment', 'SM', 9.6, 5, 48, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '', 'Yes'),
(134, 26, 1, 1, 'Pay of Officers', 'Per Person', 19, 1, 19, 10, 0, 0, 0, 0, 0, 0, 9, 8, 2, '', 'No'),
(138, 26, 3, 4, 'House Rent Allowance', 'Per Person', 5, 10, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 2, '', 'No'),
(139, 26, 9, 337, 'Office Buildings', 'Per building', 60, 1, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 2, '', 'No'),
(140, 26, 11, 388, 'Roads and Highways', 'Per road', 105, 1, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 2, '', 'No'),
(151, 28, 2, 2, 'Pay of Establishment', '', 0, 0, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 'Yes'),
(152, 31, 3, 7, 'Medical Allowance', '', 0, 0, 345, 300, 0, 45, 0, 0, 0, 0, 0, 0, 1, '', 'No'),
(153, 31, 12, 411, 'Sick Industries', '', 0, 0, 90, 67, 0, 23, 0, 0, 0, 0, 0, 0, 1, '', 'No'),
(154, 25, 11, 386, 'Residential Buildings', '', 0, 0, 15, 4, 6, 5, 6, 0, 0, 0, 0, 0, 1, '', 'No'),
(155, 30, 2, 2, 'Pay of Establishment\r\n\r\n\r\nasdfasdf', 'LS', 0, 0, 348, 348, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 'No'),
(156, 27, 1, 1, 'Pay of Officers', '', 0, 0, 57, 3, 0, 50, 4, 0, 0, 0, 0, 0, 1, '', 'No'),
(157, 27, 10, 380, 'Forest', '', 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 'No'),
(158, 23, 9, 339, 'Other Buildings', '', 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `annexure_v_contingency`
--

CREATE TABLE IF NOT EXISTS `annexure_v_contingency` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `economic_code_id` int(11) NOT NULL,
  `economic_subcode_id` int(11) NOT NULL,
  `economic_subcode_name` varchar(512) NOT NULL,
  `unit` varchar(64) NOT NULL,
  `unit_cost` double NOT NULL,
  `qty` int(11) NOT NULL,
  `total_cost` double NOT NULL,
  `gob` double NOT NULL,
  `gob_fe` double NOT NULL,
  `rpa_through_gob` double NOT NULL,
  `rpa_special_account` double NOT NULL,
  `dpa` double NOT NULL,
  `own_fund` double NOT NULL,
  `own_fund_fe` double NOT NULL,
  `other` double NOT NULL,
  `other_fe` double NOT NULL,
  `total_year` int(11) NOT NULL,
  `type` enum('Physical','Price') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `annexure_v_contingency`
--

INSERT INTO `annexure_v_contingency` (`id`, `pid`, `economic_code_id`, `economic_subcode_id`, `economic_subcode_name`, `unit`, `unit_cost`, `qty`, `total_cost`, `gob`, `gob_fe`, `rpa_through_gob`, `rpa_special_account`, `dpa`, `own_fund`, `own_fund_fe`, `other`, `other_fe`, `total_year`, `type`) VALUES
(11, 21, 99999, 9999901, 'Physical Contingency', '', 0, 0, 220, 5, 55, 0, 95, 5, 55, 5, 55, 5, 0, 'Physical'),
(12, 21, 88888, 8888801, 'Price Contingency', '', 0, 0, 149, 5, 5, 0, 5, 34, 5, 45, 45, 45, 0, 'Price'),
(19, 23, 99999, 9999901, 'Physical Contingency', '', 0, 0, 20.44, 1.03, 2, 9, 1, 2, 3.87, 4.78, 3.54, 3.43, 1, 'Physical'),
(20, 23, 88888, 8888801, 'Price Contingency', '', 0, 0, 33, 3, 4.43, 4, 5, 6, 7, 7, 8, 8, 1, 'Price'),
(21, 22, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(22, 22, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(23, 24, 99999, 9999901, 'Physical Contingency', '', 0, 0, 30, 5, 5, 0, 5, 5, 5, 5, 5, 5, 0, 'Physical'),
(24, 24, 88888, 8888801, 'Price Contingency', '', 0, 0, 30, 5, 5, 0, 5, 5, 5, 5, 5, 5, 0, 'Price'),
(28, 26, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Price'),
(33, 25, 99999, 9999901, 'Physical Contingency', '', 0, 0, 48, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, 'Physical'),
(34, 25, 88888, 8888801, 'Price Contingency', '', 0, 0, 42, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 'Price'),
(35, 31, 99999, 9999901, 'Physical Contingency', '', 0, 0, 33, 10, 0, 23, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(36, 31, 88888, 8888801, 'Price Contingency', '', 0, 0, 7, 2, 0, 5, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(37, 30, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(38, 30, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(39, 27, 99999, 9999901, 'Physical Contingency', '', 0, 0, 72, 5, 0, 67, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(40, 27, 88888, 8888801, 'Price Contingency', '', 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price');

-- --------------------------------------------------------

--
-- Table structure for table `annexure_v_contingency_details`
--

CREATE TABLE IF NOT EXISTS `annexure_v_contingency_details` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `gob` double NOT NULL,
  `gob_fe` double NOT NULL,
  `rpa_through_gob` double NOT NULL,
  `rpa_special_account` double NOT NULL,
  `dpa` double NOT NULL,
  `own_fund` double NOT NULL,
  `own_fund_fe` double NOT NULL,
  `other` double NOT NULL,
  `other_fe` double NOT NULL,
  `total` double NOT NULL,
  `year_serial` int(11) NOT NULL,
  `type` enum('Physical','Price') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `annexure_v_contingency_details`
--

INSERT INTO `annexure_v_contingency_details` (`id`, `pid`, `gob`, `gob_fe`, `rpa_through_gob`, `rpa_special_account`, `dpa`, `own_fund`, `own_fund_fe`, `other`, `other_fe`, `total`, `year_serial`, `type`) VALUES
(35, 23, 1.03, 2, 9, 1, 2, 3.87, 4.78, 3.54, 3.43, 20.44, 1, 'Physical'),
(36, 23, 3, 4.43, 4, 5, 6, 7, 7, 8, 8, 33, 1, 'Price'),
(37, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(38, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(39, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 1, 'Physical'),
(40, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 2, 'Physical'),
(41, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 1, 'Price'),
(42, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 2, 'Price'),
(43, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 3, 'Physical'),
(44, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 4, 'Physical'),
(45, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 5, 'Physical'),
(46, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 3, 'Price'),
(47, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 4, 'Price'),
(48, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 5, 'Price'),
(67, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(68, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(71, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(72, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(73, 26, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 'Physical'),
(74, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(75, 26, 8, 0, 7, 6, 0, 8, 0, 0, 0, 29, 2, 'Physical'),
(76, 26, 0, 0, 0, 7, 0, 0, 0, 0, 0, 7, 2, 'Price'),
(77, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(78, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(79, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(80, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(81, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(82, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(83, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(84, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(85, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Physical'),
(86, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Price'),
(87, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(88, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(89, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(90, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(91, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Physical'),
(92, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Price'),
(93, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(94, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(95, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Physical'),
(96, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(97, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(98, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Price'),
(101, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(102, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(103, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(104, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(105, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(106, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(107, 25, 8, 8, 8, 8, 8, 8, 8, 8, 8, 48, 1, 'Physical'),
(108, 25, 7, 7, 7, 7, 7, 7, 7, 7, 7, 42, 1, 'Price'),
(109, 31, 10, 0, 23, 0, 0, 0, 0, 0, 0, 33, 1, 'Physical'),
(110, 31, 2, 0, 5, 0, 0, 0, 0, 0, 0, 7, 1, 'Price'),
(111, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(112, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(113, 27, 5, 0, 67, 0, 0, 0, 0, 0, 0, 72, 1, 'Physical'),
(114, 27, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 'Price');

-- --------------------------------------------------------

--
-- Table structure for table `annexure_v_details`
--

CREATE TABLE IF NOT EXISTS `annexure_v_details` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `annex_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `gob` double NOT NULL,
  `gob_fe` double NOT NULL,
  `rpa_through_gob` double NOT NULL,
  `rpa_special_account` double NOT NULL,
  `dpa` double NOT NULL,
  `own_fund` double NOT NULL,
  `own_fund_fe` double NOT NULL,
  `other` double NOT NULL,
  `other_fe` double NOT NULL,
  `total` double NOT NULL,
  `financial_year` varchar(256) NOT NULL,
  `year_serial` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=646 ;

--
-- Dumping data for table `annexure_v_details`
--

INSERT INTO `annexure_v_details` (`id`, `annex_id`, `pid`, `gob`, `gob_fe`, `rpa_through_gob`, `rpa_special_account`, `dpa`, `own_fund`, `own_fund_fe`, `other`, `other_fe`, `total`, `financial_year`, `year_serial`) VALUES
(28, 11, 22, 3, 5, 4, 5, 0, 0, 0, 0, 0, 12, 'lklkl', 1),
(29, 12, 22, 5, 6, 6, 4, 0, 0, 0, 0, 0, 15, 'lklkl', 1),
(31, 13, 22, 2, 8, 8, 8, 8, 8, 8, 8, 8, 42, 'lklkl', 1),
(32, 14, 22, 89, 89, 89, 89, 89, 89, 89, 89, 89, 534, 'lklkl', 1),
(37, 15, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lklkl', 1),
(39, 16, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lklkl', 1),
(41, 17, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lklkl', 1),
(43, 18, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'lklkl', 1),
(53, 19, 23, 3, 5, 0, 0, 0, 2, 4, 0.23, 0.32, 5.23, 'Bangladesh 2014', 1),
(55, 21, 23, 4, 4, 4, 0, 0, 0, 0, 0, 0, 8, 'Bangladesh 2014', 1),
(56, 22, 23, 6, 6, 6, 0, 0, 0, 0, 0, 0, 12, 'Bangladesh 2014', 1),
(57, 23, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(58, 23, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(59, 23, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(60, 23, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(61, 23, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(67, 25, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(68, 25, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(69, 25, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(70, 25, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(71, 25, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(77, 27, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(78, 27, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(79, 27, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(80, 27, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(81, 27, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(82, 28, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(83, 28, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(84, 28, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(85, 28, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(86, 28, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(87, 29, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(88, 29, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(89, 29, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(90, 29, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(91, 29, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(92, 30, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(93, 30, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(94, 30, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(95, 30, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(96, 30, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(97, 31, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(98, 31, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(99, 31, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(100, 31, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(101, 31, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(102, 32, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(103, 32, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(104, 32, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(105, 32, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(106, 32, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(107, 33, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(108, 33, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(109, 33, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(110, 33, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(111, 33, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(112, 34, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(113, 34, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(114, 34, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(115, 34, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(116, 34, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(117, 35, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(118, 35, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(119, 35, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(120, 35, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(121, 35, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(122, 36, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(123, 36, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(124, 36, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(125, 36, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(126, 36, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(127, 37, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(128, 37, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(129, 37, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(130, 37, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(131, 37, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(132, 38, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(133, 38, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(134, 38, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(135, 38, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(136, 38, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(137, 39, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(138, 39, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(139, 39, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(140, 39, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(141, 39, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(142, 40, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(143, 40, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(144, 40, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(145, 40, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(146, 40, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(147, 41, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(148, 41, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(149, 41, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(150, 41, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(151, 41, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(152, 42, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(153, 42, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(154, 42, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(155, 42, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(156, 42, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(157, 43, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(158, 43, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(159, 43, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(160, 43, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(161, 43, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(162, 44, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(163, 44, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(164, 44, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(165, 44, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(166, 44, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(167, 45, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(168, 45, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(169, 45, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(170, 45, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(171, 45, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(172, 46, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(173, 46, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(174, 46, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(175, 46, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(176, 46, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(177, 47, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(178, 47, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(179, 47, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(180, 47, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(181, 47, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(182, 48, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(183, 48, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(184, 48, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(185, 48, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(186, 48, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(187, 49, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(188, 49, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(189, 49, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(190, 49, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(191, 49, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(192, 50, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(193, 50, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(194, 50, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(195, 50, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(196, 50, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(197, 51, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(198, 51, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(199, 51, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(200, 51, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(201, 51, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(202, 52, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(203, 52, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(204, 52, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(205, 52, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(206, 52, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(207, 53, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(208, 53, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(209, 53, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(210, 53, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(211, 53, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(212, 54, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(213, 54, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(214, 54, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(215, 54, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(216, 54, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(217, 55, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(218, 55, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(219, 55, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(220, 55, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(221, 55, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(222, 56, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(223, 56, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(224, 56, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(225, 56, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(226, 56, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(227, 57, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(228, 57, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(229, 57, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(230, 57, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(231, 57, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(232, 58, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(233, 58, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(234, 58, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(235, 58, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(236, 58, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(237, 59, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(238, 59, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(239, 59, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(240, 59, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(241, 59, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(242, 60, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(243, 60, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(244, 60, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(245, 60, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(246, 60, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(247, 61, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(248, 61, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(249, 61, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(250, 61, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(251, 61, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(252, 62, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(253, 62, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(254, 62, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(255, 62, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(256, 62, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(257, 63, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(258, 63, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(259, 63, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(260, 63, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(261, 63, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(262, 64, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(263, 64, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(264, 64, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(265, 64, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(266, 64, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(267, 65, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(268, 65, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(269, 65, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(270, 65, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(271, 65, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(272, 66, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(273, 66, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(274, 66, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(275, 66, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(276, 66, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(277, 67, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(278, 67, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(279, 67, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(280, 67, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(281, 67, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(282, 68, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(283, 68, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(284, 68, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(285, 68, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(286, 68, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(287, 69, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(288, 69, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(289, 69, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(290, 69, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 4),
(291, 69, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 5),
(292, 70, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(293, 70, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(294, 70, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(295, 70, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(296, 70, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(297, 71, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(298, 71, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(299, 71, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3),
(300, 71, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 4),
(301, 71, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 5),
(302, 72, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(303, 72, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(304, 72, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(305, 72, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(306, 72, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(307, 73, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(308, 73, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(309, 73, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(310, 73, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(311, 73, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(312, 74, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(313, 74, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(314, 74, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(315, 74, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 4),
(316, 74, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 5),
(317, 75, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(318, 75, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(319, 75, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(320, 75, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(321, 75, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(322, 76, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(323, 76, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(324, 76, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(325, 76, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(326, 76, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(327, 77, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(328, 77, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(329, 77, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(330, 77, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(331, 77, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(332, 78, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(333, 78, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(334, 78, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(335, 78, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(336, 78, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(337, 79, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(338, 79, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(339, 79, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(340, 79, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(341, 79, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(342, 80, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(343, 80, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(344, 80, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(345, 80, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(346, 80, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(347, 81, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(348, 81, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(349, 81, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(350, 81, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(351, 81, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(352, 82, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(353, 82, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(354, 82, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(355, 82, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(356, 82, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(357, 83, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(358, 83, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(359, 83, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(360, 83, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(361, 83, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(362, 84, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(363, 84, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(364, 84, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(365, 84, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(366, 84, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(367, 85, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(368, 85, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(369, 85, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(370, 85, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(371, 85, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(372, 86, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(373, 86, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(374, 86, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(375, 86, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(376, 86, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(377, 87, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(378, 87, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(379, 87, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3),
(380, 87, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 4),
(381, 87, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 5),
(382, 88, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(383, 88, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(384, 88, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(385, 88, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(386, 88, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(387, 89, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(388, 89, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(389, 89, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(390, 89, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(391, 89, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(392, 90, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(393, 90, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(394, 90, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(395, 90, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(396, 90, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(397, 91, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(398, 91, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(399, 91, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(400, 91, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(401, 91, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(402, 92, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(403, 92, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(404, 92, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(405, 92, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(406, 92, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(407, 93, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(408, 93, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(409, 93, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(410, 93, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(411, 93, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(412, 94, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(413, 94, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(414, 94, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(415, 94, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(416, 94, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(417, 95, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(418, 95, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(419, 95, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(420, 95, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(421, 95, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(422, 96, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(423, 96, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(424, 96, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(425, 96, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(426, 96, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(427, 97, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(428, 97, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(429, 97, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(430, 97, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(431, 97, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(432, 98, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(433, 98, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(434, 98, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(435, 98, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(436, 98, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(437, 99, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(438, 99, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(439, 99, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(440, 99, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(441, 99, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(442, 100, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(443, 100, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(444, 100, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(445, 100, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(446, 100, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(447, 101, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(448, 101, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(449, 101, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(450, 101, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(451, 101, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(452, 102, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(453, 102, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(454, 102, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(455, 102, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(456, 102, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(457, 103, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(458, 103, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(459, 103, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(460, 103, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(461, 103, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(462, 104, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(463, 104, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(464, 104, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(465, 104, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(466, 104, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(467, 105, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(468, 105, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(469, 105, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(470, 105, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(471, 105, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(472, 106, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(473, 106, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(474, 106, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(475, 106, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(476, 106, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(477, 107, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(478, 107, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(479, 107, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(480, 107, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 4),
(481, 107, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 5),
(482, 108, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(483, 108, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(484, 108, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(485, 108, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(486, 108, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(487, 109, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(488, 109, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(489, 109, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(490, 109, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(491, 109, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(492, 110, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(493, 110, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(494, 110, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(495, 110, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 4),
(496, 110, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 5),
(497, 111, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(498, 111, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(499, 111, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 3),
(500, 111, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 4),
(501, 111, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 5),
(502, 112, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(503, 112, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(504, 112, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(505, 112, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 4),
(506, 112, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-2019', 5),
(507, 113, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(508, 113, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(509, 113, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(510, 113, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(511, 113, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(512, 114, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(513, 114, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2015-2016', 2),
(514, 114, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2016-2017', 3),
(515, 114, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2017-2018', 4),
(516, 114, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2018-2019', 5),
(596, 134, 26, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2014-2015', 1),
(599, 134, 26, 0, 0, 0, 0, 0, 0, 0, 9, 8, 9, '2015-2014', 2),
(604, 138, 26, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, '2014-2015', 1),
(605, 138, 26, 30, 0, 0, 0, 0, 0, 0, 0, 0, 30, '2015-2014', 2),
(606, 139, 26, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2014-2015', 1),
(607, 139, 26, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2014', 2),
(608, 140, 26, 100, 0, 0, 0, 0, 0, 0, 0, 0, 100, '2014-2015', 1),
(609, 140, 26, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2015-2014', 2),
(636, 151, 28, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 'Bangladesh 2014', 1),
(637, 130, 25, 5, 5, 5, 5, 5, 5, 55, 5, 5, 30, 'Bangladesh 2014', 1),
(638, 131, 25, 8, 8, 8, 8, 8, 8, 8, 8, 8, 48, 'Bangladesh 2014', 1),
(639, 152, 31, 300, 0, 45, 0, 0, 0, 0, 0, 0, 345, '2014-2015', 1),
(640, 153, 31, 67, 0, 23, 0, 0, 0, 0, 0, 0, 90, '2014-2015', 1),
(641, 154, 25, 4, 6, 5, 6, 0, 0, 0, 0, 0, 15, 'Bangladesh 2014', 1),
(642, 155, 30, 348, 0, 0, 0, 0, 0, 0, 0, 0, 348, '2014-2015', 1),
(643, 156, 27, 3, 0, 50, 4, 0, 0, 0, 0, 0, 57, 'Bangladesh 2014', 1),
(644, 157, 27, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'Bangladesh 2014', 1),
(645, 158, 23, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Bangladesh 2014', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_info`
--

CREATE TABLE IF NOT EXISTS `app_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `description` text,
  `version` varchar(10) NOT NULL DEFAULT '0.0.0',
  `app_msg_start` int(11) NOT NULL DEFAULT '0',
  `app_msg_end` int(11) NOT NULL DEFAULT '0',
  `fqpn` varchar(254) NOT NULL DEFAULT '',
  `app_type` enum('Editor','Reporter','Wizard','Undefined') NOT NULL DEFAULT 'Undefined',
  `author` varchar(128) NOT NULL DEFAULT '',
  `license` enum('GPL','LGPL','Proprietary','Artistic License','Other Open Source License') NOT NULL DEFAULT 'Proprietary',
  `status` enum('Assigned','In Progress','Alpha','Beta','Released','Maint Cycle','Unassigned') NOT NULL DEFAULT 'Assigned',
  `doc_id` int(11) DEFAULT NULL,
  `create_date` date NOT NULL DEFAULT '0000-00-00',
  `last_updated` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Application Information Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `app_language`
--

CREATE TABLE IF NOT EXISTS `app_language` (
  `msg_lang` varchar(5) NOT NULL DEFAULT '',
  `language` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`msg_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Available Application Message Languages';

--
-- Dumping data for table `app_language`
--

INSERT INTO `app_language` (`msg_lang`, `language`) VALUES
('en-es', 'Spanish'),
('en-uk', 'UK English'),
('en-us', 'American English');

-- --------------------------------------------------------

--
-- Table structure for table `app_message`
--

CREATE TABLE IF NOT EXISTS `app_message` (
  `msg_code` int(11) NOT NULL DEFAULT '0',
  `msg_lang` varchar(5) NOT NULL DEFAULT '',
  `msg_type` enum('Error','Success','Informative') NOT NULL DEFAULT 'Error',
  `msg_text` text NOT NULL,
  `msg_dev_hints` varchar(254) NOT NULL DEFAULT '',
  `app_name` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`msg_code`,`msg_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Application Message Table';

--
-- Dumping data for table `app_message`
--

INSERT INTO `app_message` (`msg_code`, `msg_lang`, `msg_type`, `msg_text`, `msg_dev_hints`, `app_name`) VALUES
(130, 'en-us', 'Error', 'The email you provided does not match an existing user account.', 'ERROR_NO_EMAIL_FOUND', 'any'),
(140, 'en-us', 'Error', 'Attempt to send an email to your account has failed. Please retry later or contact site administrator.', 'ERROR_EMAIL_NOT_SENT', 'any'),
(150, 'en-us', 'Success', 'An email with password reset instructions has been sent to you. Please check your email and take appropriate actions.', 'SUCCESS_EMAIL_SENT', 'any'),
(100, 'en-us', 'Error', 'The error message itself could not be found. The developer needs to address this issue.', 'ERR_APP_MESSAGE_NOT_FOUND', 'any'),
(160, 'en-us', 'Success', 'Your password has been successfully reset.', 'SUCCESS_PASSWORD_CHANGED', 'any'),
(170, 'en-us', 'Error', 'For security reasons, the password reset link is valid for only one attempt. The link you clicked on has already been used once. Please request another password reset email by clicking on the forgotten password link in the login form.', 'ERROR_INVALID_RESET_REQUEST', 'any'),
(666, 'en-us', 'Error', 'You are not authorized to run this application. Please consult with the site administrator.', 'ERROR_UNAUTHORIZED_ACCESS', 'any'),
(701, 'en-us', 'Error', 'Please enter a different name. A directory with the same FQPN already exists.', 'ERR_FQPN_EXISTS', 'any'),
(702, 'en-us', 'Success', 'The application has been created successfully.', 'APP_ADDITION_SUCCESSFUL', 'any'),
(703, 'en-us', 'Error', 'The application could not be created.', 'APP_ADDITION_FAILED', 'any'),
(1011, 'en-us', 'Success', 'New User Information has been saved successfully. Thank You.', 'USER_SAVE_MSG', 'user_manager'),
(1012, 'en-us', 'Success', 'User Information has been updated successfully. Thank you.', 'USER_UPDATE_MSG', 'user_manager'),
(1013, 'en-us', 'Success', 'The selected User Information has been deleted successfully. Thank You.', 'USER_DELETE_MSG', 'user_manager'),
(1021, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The User Information can not be saved. Please try again later.</font>', 'USER_SAVE_ERROR_MSG', 'user_manager'),
(1031, 'en-us', 'Informative', 'The username you provided already exists in the database. Please try another username.', 'DUPLICATE_USERNAME', 'user_manager'),
(1022, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The User Information can not be updated. Please try again later.</font>', 'USER_UPDATE_ERROR_MSG', 'user_manager'),
(1023, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The User Information can not be deleted. Please try again later.</font>', 'USER_DELETE_ERROR_MSG', 'user_manager'),
(1131, 'en-us', 'Informative', 'The group name you provided already exists in the database. Please try another group name.', 'DUPLICATE_GROUPNAME', 'group_manager'),
(1123, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The Group Information can not be deleted. Please try again later.</font>', 'GROUP_DELETE_ERROR_MSG', 'group_manager'),
(1122, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The Group Information can not be updated. Please try again later.</font>', 'GROUP_UPDATE_ERROR_MSG', 'group_manager'),
(1121, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The Group Information can not be saved. Please try again later.</font>', 'GROUP_SAVE_ERROR_MSG', 'group_manager'),
(1113, 'en-us', 'Success', 'The selected Group Information has been deleted successfully. Thank You.', 'GROUP_DELETE_SUCCESS_MSG', 'group_manager'),
(1112, 'en-us', 'Success', 'Group Information has been updated successfully. Thank you.', 'GROUP_UPDATE_SUCCESS_MSG', 'group_manager'),
(1111, 'en-us', 'Success', 'New Group Information has been saved successfully. Thank You.', 'GROUP_SAVE_SUCCESS_MSG', 'group_manager');

-- --------------------------------------------------------

--
-- Table structure for table `app_meta`
--

CREATE TABLE IF NOT EXISTS `app_meta` (
  `app_id` int(11) NOT NULL DEFAULT '0',
  `meta_key` varchar(128) NOT NULL DEFAULT '',
  `meta_value` varchar(254) NOT NULL DEFAULT '',
  PRIMARY KEY (`app_id`,`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Application Meta Data Table';

-- --------------------------------------------------------

--
-- Table structure for table `app_profile`
--

CREATE TABLE IF NOT EXISTS `app_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `start` bigint(20) NOT NULL DEFAULT '0',
  `end` bigint(20) NOT NULL DEFAULT '0',
  `total` bigint(20) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  `remote_ip` varchar(14) NOT NULL DEFAULT '',
  `call` varchar(128) NOT NULL DEFAULT '',
  `notes` tinytext,
  `run_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Application profile data' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `country_lookup`
--

CREATE TABLE IF NOT EXISTS `country_lookup` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `id` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_lookup`
--

INSERT INTO `country_lookup` (`name`, `id`) VALUES
('Andorra', 'AD'),
('United Arab Emirates', 'AE'),
('Afghanistan', 'AF'),
('Antigua and Barbuda', 'AG'),
('Anguilla', 'AI'),
('Albania', 'AL'),
('Armenia', 'AM'),
('Netherlands Antilles', 'AN'),
('Angola', 'AO'),
('Argentina', 'AR'),
('American Samoa', 'AS'),
('Austria', 'AT'),
('Australia', 'AU'),
('Aruba', 'AW'),
('Azerbaijan', 'AZ'),
('Bosnia and Herzegowina', 'BA'),
('Barbados', 'BB'),
('Bangladesh', 'BD'),
('Belgium', 'BE'),
('Burkina Faso', 'BF'),
('Bulgaria', 'BG'),
('Bahrain', 'BH'),
('Burundi', 'BI'),
('Benin', 'BJ'),
('Bermuda', 'BM'),
('Brunei Darussalam', 'BN'),
('Bolivia', 'BO'),
('Brazil', 'BR'),
('Bahamas', 'BS'),
('Bhutan', 'BT'),
('Bouvet Island', 'BV'),
('Botswana', 'BW'),
('Belarus', 'BY'),
('Belize', 'BZ'),
('Canada', 'CA'),
('Cocos (Keeling) Islands', 'CC'),
('Central African Republic', 'CF'),
('Congo', 'CG'),
('Switzerland', 'CH'),
('Cote D''Ivoire', 'CI'),
('Cook Islands', 'CK'),
('Chile', 'CL'),
('Cameroon', 'CM'),
('China', 'CN'),
('Colombia', 'CO'),
('Costa Rica', 'CR'),
('Cuba', 'CU'),
('Cape Verde', 'CV'),
('Christmas Island', 'CX'),
('Cyprus', 'CY'),
('Czech Republic', 'CZ'),
('Germany', 'DE'),
('Djibouti', 'DJ'),
('Denmark', 'DK'),
('Dominica', 'DM'),
('Dominican Republic', 'DO'),
('Algeria', 'DZ'),
('Ecuador', 'EC'),
('Estonia', 'EE'),
('Egypt', 'EG'),
('Western Sahara', 'EH'),
('Eritrea', 'ER'),
('Spain', 'ES'),
('Ethiopia', 'ET'),
('Finland', 'FI'),
('Fiji', 'FJ'),
('Falkland Islands (Malvinas)', 'FK'),
('Micronesia, Federated States of', 'FM'),
('Faroe Islands', 'FO'),
('France', 'FR'),
('France, Metropolitan', 'FX'),
('Gabon', 'GA'),
('Grenada', 'GD'),
('Georgia', 'GE'),
('French Guiana', 'GF'),
('Ghana', 'GH'),
('Gibraltar', 'GI'),
('Greenland', 'GL'),
('Gambia', 'GM'),
('Guinea', 'GN'),
('Guadeloupe', 'GP'),
('Equatorial Guinea', 'GQ'),
('Greece', 'GR'),
('South Georgia and the South Sandwich Islands', 'GS'),
('Guatemala', 'GT'),
('Guam', 'GU'),
('Guinea-bissau', 'GW'),
('Guyana', 'GY'),
('Hong Kong', 'HK'),
('Heard and Mc Donald Islands', 'HM'),
('Honduras', 'HN'),
('Croatia', 'HR'),
('Haiti', 'HT'),
('Hungary', 'HU'),
('Indonesia', 'ID'),
('Ireland', 'IE'),
('Israel', 'IL'),
('India', 'IN'),
('British Indian Ocean Territory', 'IO'),
('Iraq', 'IQ'),
('Iran (Islamic Republic of)', 'IR'),
('Iceland', 'IS'),
('Italy', 'IT'),
('Jamaica', 'JM'),
('Jordan', 'JO'),
('Japan', 'JP'),
('Kenya', 'KE'),
('Kyrgyzstan', 'KG'),
('Cambodia', 'KH'),
('Kiribati', 'KI'),
('Comoros', 'KM'),
('Saint Kitts and Nevis', 'KN'),
('Korea, Democratic People''s Republic of', 'KP'),
('Korea, Republic of', 'KR'),
('Kuwait', 'KW'),
('Cayman Islands', 'KY'),
('Kazakhstan', 'KZ'),
('Lao People''s Democratic Republic', 'LA'),
('Lebanon', 'LB'),
('Saint Lucia', 'LC'),
('Liechtenstein', 'LI'),
('Sri Lanka', 'LK'),
('Liberia', 'LR'),
('Lesotho', 'LS'),
('Lithuania', 'LT'),
('Luxembourg', 'LU'),
('Latvia', 'LV'),
('Libyan Arab Jamahiriya', 'LY'),
('Morocco', 'MA'),
('Monaco', 'MC'),
('Moldova, Republic of', 'MD'),
('Madagascar', 'MG'),
('Marshall Islands', 'MH'),
('Macedonia, The Former Yugoslav Republic of', 'MK'),
('Mali', 'ML'),
('Myanmar', 'MM'),
('Mongolia', 'MN'),
('Macau', 'MO'),
('Northern Mariana Islands', 'MP'),
('Martinique', 'MQ'),
('Mauritania', 'MR'),
('Montserrat', 'MS'),
('Malta', 'MT'),
('Mauritius', 'MU'),
('Maldives', 'MV'),
('Malawi', 'MW'),
('Mexico', 'MX'),
('Malaysia', 'MY'),
('Mozambique', 'MZ'),
('Namibia', 'NA'),
('New Caledonia', 'NC'),
('Niger', 'NE'),
('Norfolk Island', 'NF'),
('Nigeria', 'NG'),
('Nicaragua', 'NI'),
('Netherlands', 'NL'),
('Norway', 'NO'),
('Nepal', 'NP'),
('Nauru', 'NR'),
('Niue', 'NU'),
('New Zealand', 'NZ'),
('Oman', 'OM'),
('Panama', 'PA'),
('Peru', 'PE'),
('French Polynesia', 'PF'),
('Papua New Guinea', 'PG'),
('Philippines', 'PH'),
('Pakistan', 'PK'),
('Poland', 'PL'),
('St. Pierre and Miquelon', 'PM'),
('Pitcairn', 'PN'),
('Puerto Rico', 'PR'),
('Portugal', 'PT'),
('Palau', 'PW'),
('Paraguay', 'PY'),
('Qatar', 'QA'),
('Reunion', 'RE'),
('Romania', 'RO'),
('Russian Federation', 'RU'),
('Rwanda', 'RW'),
('Saudi Arabia', 'SA'),
('Solomon Islands', 'SB'),
('Seychelles', 'SC'),
('Sudan', 'SD'),
('Sweden', 'SE'),
('Singapore', 'SG'),
('St. Helena', 'SH'),
('Slovenia', 'SI'),
('Svalbard and Jan Mayen Islands', 'SJ'),
('Slovakia (Slovak Republic)', 'SK'),
('Sierra Leone', 'SL'),
('San Marino', 'SM'),
('Senegal', 'SN'),
('Somalia', 'SO'),
('Suriname', 'SR'),
('Sao Tome and Principe', 'ST'),
('El Salvador', 'SV'),
('Syrian Arab Republic', 'SY'),
('Swaziland', 'SZ'),
('Turks and Caicos Islands', 'TC'),
('Chad', 'TD'),
('French Southern Territories', 'TF'),
('Togo', 'TG'),
('Thailand', 'TH'),
('Tajikistan', 'TJ'),
('Tokelau', 'TK'),
('Turkmenistan', 'TM'),
('Tunisia', 'TN'),
('Tonga', 'TO'),
('East Timor', 'TP'),
('Turkey', 'TR'),
('Trinidad and Tobago', 'TT'),
('Tuvalu', 'TV'),
('Taiwan', 'TW'),
('Tanzania, United Republic of', 'TZ'),
('Ukraine', 'UA'),
('Uganda', 'UG'),
('United Kingdom', 'UK'),
('United States Minor Outlying Islands', 'UM'),
('United States', 'US'),
('Uruguay', 'UY'),
('Uzbekistan', 'UZ'),
('Vatican City State (Holy See)', 'VA'),
('Saint Vincent and the Grenadines', 'VC'),
('Venezuela', 'VE'),
('Virgin Islands (British)', 'VG'),
('Virgin Islands (U.S.)', 'VI'),
('Viet Nam', 'VN'),
('Vanuatu', 'VU'),
('Wallis and Futuna Islands', 'WF'),
('Samoa', 'WS'),
('Yemen', 'YE'),
('Mayotte', 'YT'),
('Yugoslavia', 'YU'),
('South Africa', 'ZA'),
('Zambia', 'ZM'),
('Zaire', 'ZR'),
('Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `dev_partner_lookup`
--

CREATE TABLE IF NOT EXISTS `dev_partner_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `dev_partner_lookup`
--

INSERT INTO `dev_partner_lookup` (`id`, `name`, `status`) VALUES
(1, 'AARDO', 'Active'),
(2, 'ACIAR', 'Active'),
(3, 'Asian Development Bank', 'Active'),
(4, 'Association for Voluntary Surgical Cooperation', 'Active'),
(5, 'Australia', 'Active'),
(6, 'Canadian International Development Agency', 'Active'),
(7, 'China', 'Active'),
(8, 'China Buyers Credit', 'Active'),
(9, 'CIS', 'Active'),
(10, 'Commonwealth Fund for Technical Cooperation', 'Active'),
(11, 'Danish International Development Agency', 'Active'),
(12, 'Denmark', 'Active'),
(13, 'DRGA', 'Active'),
(14, 'EC', 'Active'),
(15, 'EDCF', 'Active'),
(16, 'Enfant du Monde', 'Active'),
(17, 'European Economic Community ', 'Active'),
(18, 'European Union', 'Active'),
(19, 'Finnish International Development Agency', 'Active'),
(20, 'Food and Agriculture Organization ', 'Active'),
(21, 'France', 'Active'),
(22, 'GEF', 'Active'),
(23, 'German Agency for Technical Cooperation ', 'Active'),
(24, 'Germany', 'Active'),
(25, 'India', 'Active'),
(26, 'International Centre for Integrated Mountain Development', 'Active'),
(27, 'International Development Agency', 'Active'),
(28, 'International Fund for Agricultural Development ', 'Active'),
(29, 'International Labour Organization ', 'Active'),
(30, 'International Union for Conservation of Nature', 'Active'),
(31, 'Islamic Development Bank', 'Active'),
(32, 'Italy', 'Active'),
(33, 'ITC', 'Active'),
(34, 'Japan', 'Active'),
(35, 'Japan Bank for International Cooperation ', 'Active'),
(36, 'Japan Debt Relief Grant', 'Active'),
(37, 'Japan Environmental Grant Fund', 'Active'),
(38, 'Japan International Cooperation Agency', 'Active'),
(39, 'Japan Special Fund', 'Active'),
(40, 'JDCF', 'Active'),
(41, 'JFPR', 'Active'),
(42, 'KOICA', 'Active'),
(43, 'Korea South South Corporation, North Korea', 'Active'),
(44, 'Kreditanstalt Fuer Wiederaufbau', 'Active'),
(45, 'Kuwait', 'Active'),
(46, 'Kuwait Development Fund', 'Active'),
(47, 'Kuwait Fund for Arab Economic Development', 'Active'),
(48, 'MLF', 'Active'),
(49, 'NDF', 'Active'),
(50, 'Netherlands', 'Active'),
(51, 'Netherlands Directorate General for International Cooperation', 'Active'),
(52, 'Norway', 'Active'),
(53, 'Norwegain Agency for International Development ', 'Active'),
(54, 'OECF', 'Active'),
(55, 'ORAT', 'Active'),
(56, 'Organization for Industrial Spiritual and Cultural Advancement ', 'Active'),
(57, 'Organization of Islamic Countries', 'Active'),
(58, 'Organization of Petroleum Exporting Countries ', 'Active'),
(59, 'Overseas Economic Cooperation for Development', 'Active'),
(60, 'RNE', 'Active'),
(61, 'RTP-FNP', 'Active'),
(62, 'SAARC', 'Active'),
(63, 'Saudi Arabia', 'Active'),
(64, 'Saudi Fund for Development', 'Active'),
(65, 'South Korea', 'Active'),
(66, 'Spain', 'Active'),
(67, 'Suppliers Credit', 'Active'),
(68, 'Sweden', 'Active'),
(69, 'Swedish International Development Agency', 'Active'),
(70, 'Swiss Development Corporation', 'Active'),
(71, 'UK Department for International Development', 'Active'),
(72, 'UNEP', 'Active'),
(73, 'United Arab Emirates', 'Active'),
(74, 'United Nations Capital Development Fund', 'Active'),
(75, 'United Nations Development Programme', 'Active'),
(76, 'United Nations Economic and Social Commission for Asia and the Pacific', 'Active'),
(77, 'United Nations Educational, Scientific and Cultural Organization', 'Active'),
(78, 'United Nations High Commission for Refugees', 'Active'),
(79, 'United Nations Industrial Development Organization', 'Active'),
(80, 'United Nations International Children''s Emergency Fund', 'Active'),
(81, 'United Nations Population Fund', 'Active'),
(82, 'United States Agency for International Development', 'Active'),
(83, 'USDA', 'Active'),
(84, 'World Bank', 'Active'),
(85, 'World Food Centre', 'Active'),
(86, 'World Food Programme', 'Active'),
(87, 'World Health Organization', 'Active'),
(88, 'World Intellectual Property Organization', 'Active'),
(89, 'World Trade Organization', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `district_lookup`
--

CREATE TABLE IF NOT EXISTS `district_lookup` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `div_id` int(11) NOT NULL,
  `district_name` varchar(200) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `district_lookup`
--

INSERT INTO `district_lookup` (`district_id`, `div_id`, `district_name`, `status`) VALUES
(1, 40, 'Bagerhat', 'Active'),
(2, 20, 'Bandarban', 'Active'),
(3, 10, 'Barguna', 'Active'),
(4, 50, 'Bogra', 'Active'),
(5, 30, 'Dhaka', 'Active'),
(6, 60, 'Habiganj', 'Active'),
(7, 10, 'Barisal District', 'Active'),
(8, 10, 'Bhola District', 'Active'),
(9, 10, 'Jhalokati District', 'Active'),
(10, 10, 'Patuakhali District', 'Active'),
(11, 10, 'Pirojpur District', 'Active'),
(12, 20, 'Brahmanbaria District', 'Active'),
(13, 20, 'Chandpur District', 'Active'),
(14, 20, 'Chittagong District', 'Active'),
(15, 20, 'Comilla District', 'Active'),
(16, 20, 'Cox''s Bazar District', 'Active'),
(17, 20, 'Feni District', 'Active'),
(18, 20, 'Khagrachari District', 'Active'),
(19, 20, 'Lakshmipur District', 'Active'),
(20, 20, 'Noakhali District', 'Active'),
(21, 20, 'Rangamati District', 'Active'),
(22, 30, 'Faridpur District', 'Active'),
(23, 30, 'Gazipur District', 'Active'),
(24, 30, 'Gopalganj District', 'Active'),
(25, 30, 'Jamalpur District', 'Active'),
(26, 30, 'Kishoreganj District', 'Active'),
(27, 30, 'Madaripur District', 'Active'),
(28, 30, 'Manikganj District', 'Active'),
(29, 30, 'Munshiganj District', 'Active'),
(30, 30, 'Mymensingh District', 'Active'),
(31, 30, 'Narayanganj District', 'Active'),
(32, 30, 'Netrokona District', 'Active'),
(33, 30, 'Rajbari District', 'Active'),
(34, 30, 'Shariatpur District', 'Active'),
(35, 30, 'Sherpur District', 'Active'),
(36, 30, 'Tangail District', 'Active'),
(37, 30, 'Narsingdi District', 'Active'),
(38, 40, 'Chuadanga District', 'Active'),
(39, 40, 'Jessore District', 'Active'),
(40, 40, 'Jhenaidah District', 'Active'),
(41, 40, 'Khulna District', 'Active'),
(42, 40, 'Kushtia District', 'Active'),
(43, 40, 'Magura District', 'Active'),
(44, 40, 'Meherpur District', 'Active'),
(45, 40, 'Narail District', 'Active'),
(46, 40, 'Satkhira District', 'Active'),
(47, 50, 'Sonatola Upazila', 'Active'),
(48, 50, 'Naogaon District', 'Active'),
(49, 50, 'Natore District', 'Active'),
(50, 50, 'Nawabganj District', 'Active'),
(51, 50, 'Pabna District', 'Active'),
(52, 50, 'Rajshahi District', 'Active'),
(53, 50, 'Sirajganj District', 'Active'),
(54, 60, 'Moulvibazar District', 'Active'),
(55, 60, 'Sunamganj District', 'Active'),
(56, 60, 'Sylhet District', 'Active'),
(57, 70, 'Dinajpur District', 'Active'),
(58, 70, 'Gaibandha District', 'Active'),
(59, 70, 'Kurigram District', 'Active'),
(60, 70, 'Lalmonirhat District', 'Active'),
(61, 70, 'Nilphamari District', 'Active'),
(62, 70, 'Panchagarh District', 'Active'),
(63, 70, 'Rangpur District', 'Active'),
(64, 70, 'Thakurgaon District', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `division_lookup`
--

CREATE TABLE IF NOT EXISTS `division_lookup` (
  `divid` varchar(2) NOT NULL,
  `division_name` varchar(100) NOT NULL DEFAULT '',
  `status` enum('Active','Inactive') NOT NULL,
  PRIMARY KEY (`divid`),
  KEY `div_code` (`divid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `division_lookup`
--

INSERT INTO `division_lookup` (`divid`, `division_name`, `status`) VALUES
('10', 'Barishal', 'Active'),
('20', 'Chittagong', 'Active'),
('30', 'Dhaka', 'Active'),
('40', 'Khulna', 'Active'),
('50', 'Rajshahi', 'Active'),
('60', 'Sylhet', 'Active'),
('70', 'Rangpur', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL DEFAULT '',
  `mime_type` varchar(128) NOT NULL DEFAULT '',
  `local_filename` varchar(254) NOT NULL DEFAULT '',
  `remote_filename` varchar(254) NOT NULL DEFAULT '',
  `doc_dir` text NOT NULL,
  `keywords` text NOT NULL,
  `size` bigint(20) NOT NULL DEFAULT '0',
  `access_type` enum('Public','Private','Group') NOT NULL DEFAULT 'Public',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `permission_group_id` int(11) NOT NULL DEFAULT '0',
  `group_access_rights` enum('None','Read Only','Read-Write') DEFAULT 'None',
  `world_access_rights` enum('None','Read Only','Read-Write') DEFAULT 'None',
  `status` enum('Normal','Deleted','Archive') NOT NULL DEFAULT 'Normal',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Document table' AUTO_INCREMENT=25 ;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `title`, `mime_type`, `local_filename`, `remote_filename`, `doc_dir`, `keywords`, `size`, `access_type`, `owner_id`, `permission_group_id`, `group_access_rights`, `world_access_rights`, `status`) VALUES
(24, '', 'application/msword', 'CV_of_SAM_Harun.doc', 'cv_of_sam_harun_24.doc', 'D:/xampp2/htdocs/pps2/documents/24/cv_of_sam_harun_24.doc', '', 156160, 'Public', 0, 0, 'None', 'None', 'Normal'),
(22, '', 'application/octet-stream', 'axvlc.dll', 'axvlc_22.dll', 'D:/xampp2/htdocs/pps2/documents/23/axvlc_22.dll', '', 516247, 'Public', 0, 0, 'None', 'None', 'Normal'),
(23, '', 'text/plain', 'THANKS.txt', 'thanks_23.txt', 'D:/xampp2/htdocs/pps2/documents/24/thanks_23.txt', '', 23678, 'Public', 0, 0, 'None', 'None', 'Normal'),
(21, '', 'text/plain', 'NEWS.txt', 'news_21.txt', 'D:/xampp2/htdocs/pps2/documents/23/news_21.txt', '', 78601, 'Public', 0, 0, 'None', 'None', 'Normal'),
(20, '', 'text/plain', 'COPYING.txt', 'copying_20.txt', 'D:/xampp2/htdocs/pps2/documents/23/copying_20.txt', '', 18437, 'Public', 0, 0, 'None', 'None', 'Normal'),
(19, '', 'text/plain', 'README.txt', 'D:/xampp2/htdocs/pps2/documents/23/readme_19.txt', 'D:/xampp2/htdocs/pps2/documents/23/readme_19.txt', '', 1764, 'Public', 0, 0, 'None', 'None', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `economic_code_lookup`
--

CREATE TABLE IF NOT EXISTS `economic_code_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `economic_code` int(11) NOT NULL,
  `component_type` enum('Revenue Component','Capital Component') NOT NULL,
  `economic_code_name` varchar(256) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `economic_code_lookup`
--

INSERT INTO `economic_code_lookup` (`id`, `economic_code`, `component_type`, `economic_code_name`, `status`) VALUES
(1, 4500, 'Revenue Component', 'Pay of Officers', 'Active'),
(2, 4600, 'Revenue Component', 'Pay of Establishment', 'Active'),
(3, 4700, 'Revenue Component', 'Allowances', 'Active'),
(4, 4800, 'Revenue Component', 'Supplies and Services', 'Active'),
(5, 4900, 'Revenue Component', 'Repair & Maintenance', 'Active'),
(6, 5000, 'Revenue Component', 'Term Loan Interest', 'Active'),
(7, 5900, 'Revenue Component', 'Grants in Aid', 'Active'),
(8, 6600, 'Revenue Component', 'Block Allocations', 'Active'),
(9, 6800, 'Capital Component', 'Acquisition of Assets', 'Active'),
(10, 6900, 'Capital Component', 'Acquisition / Purchase of Land', 'Active'),
(11, 7000, 'Capital Component', 'Construction and Works', 'Active'),
(12, 7100, 'Capital Component', 'Investments in Shares and Equities', 'Active'),
(13, 7200, 'Capital Component', 'Capital Grants', 'Active'),
(14, 7900, 'Capital Component', 'Development Import Duty and VAT', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `economic_subcode_lookup`
--

CREATE TABLE IF NOT EXISTS `economic_subcode_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `economic_code_id` int(11) NOT NULL,
  `economic_subcode` int(11) NOT NULL,
  `economic_subcode_name` varchar(256) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=441 ;

--
-- Dumping data for table `economic_subcode_lookup`
--

INSERT INTO `economic_subcode_lookup` (`id`, `economic_code_id`, `economic_subcode`, `economic_subcode_name`, `status`) VALUES
(1, 1, 4501, 'Pay of Officers', 'Active'),
(2, 2, 4601, 'Pay of Establishment', 'Active'),
(3, 3, 4701, 'Dearness Allowance', 'Active'),
(4, 3, 4705, 'House Rent Allowance', 'Active'),
(5, 3, 4709, 'Rest and Recreation Allowance', 'Active'),
(6, 3, 4713, 'Festival Allowance', 'Active'),
(7, 3, 4717, 'Medical Allowance', 'Active'),
(8, 3, 4721, 'Hill Allowance', 'Active'),
(9, 3, 4722, 'Defence Service Allowance', 'Active'),
(10, 3, 4723, 'Allowences for Chief, Headmen and Karbaries', 'Active'),
(11, 3, 4724, 'Batsman Allowance', 'Active'),
(12, 3, 4725, 'Washing Allowance', 'Active'),
(13, 3, 4726, 'Haircut Allowance', 'Active'),
(14, 3, 4729, 'Foreign Allowance', 'Active'),
(15, 3, 4733, 'Entertainment/Sumptuary Allowance', 'Active'),
(16, 3, 4737, 'Charge Allowance', 'Active'),
(17, 3, 4741, 'Retainery', 'Active'),
(18, 3, 4745, 'Compensatory Allowance', 'Active'),
(19, 3, 4749, 'Ration Allowance', 'Active'),
(20, 3, 4753, 'Daily/Subsistence Allowance', 'Active'),
(21, 3, 4755, 'Tiffin Allowance', 'Active'),
(22, 3, 4757, 'Internee/Apprenticeship Allowance', 'Active'),
(23, 3, 4761, 'Fixed Travel Allowance', 'Active'),
(24, 3, 4765, 'Conveyance Allowance', 'Active'),
(25, 3, 4769, 'Overtime', 'Active'),
(26, 3, 4773, 'Educational Allowances', 'Active'),
(27, 3, 4775, 'Uniform Allowance', 'Active'),
(28, 3, 4777, 'Training Allowance (Fixed)', 'Active'),
(29, 3, 4781, 'Hazardous Job Allowance', 'Active'),
(30, 3, 4785, 'Contract Allowance', 'Active'),
(31, 3, 4789, 'Constituency Allowance', 'Active'),
(32, 3, 4791, 'Operation Allowance Electoral Area Office', 'Active'),
(33, 3, 4793, 'Telephone Allowance', 'Active'),
(34, 3, 4795, 'Other Allowances', 'Active'),
(35, 4, 4801, 'Travel Expenses', 'Active'),
(36, 4, 4802, 'Transfer Expenses', 'Active'),
(37, 4, 4804, 'Contingent Staff', 'Active'),
(38, 4, 4805, 'Overtime', 'Active'),
(39, 4, 4806, 'Rent-Office', 'Active'),
(40, 4, 4807, 'Rent - Residential', 'Active'),
(41, 4, 4808, 'Rent - Equipment', 'Active'),
(42, 4, 4809, 'Satellite/Frequency', 'Active'),
(43, 4, 4810, 'Municipal Rates and Taxes', 'Active'),
(44, 4, 4811, 'Land Tax', 'Active'),
(45, 4, 4813, 'Customs Duty / VAT', 'Active'),
(46, 4, 4814, 'Miscellaneous Taxes', 'Active'),
(47, 4, 4815, 'Postage', 'Active'),
(48, 4, 4816, 'Telephones/Telegram/Teleprinter', 'Active'),
(49, 4, 4817, 'Telex/Fax/Internet', 'Active'),
(50, 4, 4818, 'Registration Fee', 'Active'),
(51, 4, 4819, 'Water', 'Active'),
(52, 4, 4821, 'Electricity', 'Active'),
(53, 4, 4822, 'Fuel and Gas', 'Active'),
(54, 4, 4823, 'Petrol, Oil and Lubricants', 'Active'),
(55, 4, 4824, 'Insurance / Bank Charges', 'Active'),
(56, 4, 4825, 'Subscriptions', 'Active'),
(57, 4, 4826, 'Commissions, Discounts', 'Active'),
(58, 4, 4827, 'Printing and Binding', 'Active'),
(59, 4, 4828, 'Stationery, Seals and Stamps', 'Active'),
(60, 4, 4829, 'Research Expenses', 'Active'),
(61, 4, 4830, 'Printing of Stamps/ Taka Notes/ Certificates', 'Active'),
(62, 4, 4831, 'Books and Periodicals', 'Active'),
(63, 4, 4832, 'Audio Video/Film Production', 'Active'),
(64, 4, 4833, 'Advertising and Publicity', 'Active'),
(65, 4, 4834, 'Sports Goods', 'Active'),
(66, 4, 4835, 'Publications', 'Active'),
(67, 4, 4836, 'Uniforms', 'Active'),
(68, 4, 4837, 'Passport Books', 'Active'),
(69, 4, 4838, 'Intelligence', 'Active'),
(70, 4, 4839, 'Pre-Shipment Inspection Fee', 'Active'),
(71, 4, 4840, 'Training Expenses', 'Active'),
(72, 4, 4842, 'Seminar, Conference Expenses', 'Active'),
(73, 4, 4843, 'Licence Fee', 'Active'),
(74, 4, 4844, 'Delegation Expenses', 'Active'),
(75, 4, 4845, 'Entertainment Expenses', 'Active'),
(76, 4, 4846, 'Freight and Transport Charges', 'Active'),
(77, 4, 4847, 'Awards and Rewards', 'Active'),
(78, 4, 4848, 'Management Charges', 'Active'),
(79, 4, 4849, 'Compensation', 'Active'),
(80, 4, 4850, 'Election Expenses', 'Active'),
(81, 4, 4851, 'Labour Wages', 'Active'),
(82, 4, 4852, 'Chemicals', 'Active'),
(83, 4, 4853, 'Bullet proof jacket', 'Active'),
(84, 4, 4854, 'Consumable Stores', 'Active'),
(85, 4, 4855, 'Dairy Products', 'Active'),
(86, 4, 4856, 'Raw Materials and Spares', 'Active'),
(87, 4, 4857, 'Prevention and Preservation', 'Active'),
(88, 4, 4858, 'Seeds and Plants', 'Active'),
(89, 4, 4859, 'Insecticide', 'Active'),
(90, 4, 4860, 'Corrugated Iron Sheeting', 'Active'),
(91, 4, 4861, 'Fertilizer', 'Active'),
(92, 4, 4862, 'Vaccine and Medicine', 'Active'),
(93, 4, 4863, 'Fish and Fish Products', 'Active'),
(94, 4, 4864, 'Fish and Animal Feed', 'Active'),
(95, 4, 4865, 'Birth Control Materials (Male & Female)', 'Active'),
(96, 4, 4866, 'Poultry', 'Active'),
(97, 4, 4867, 'Animal Husbandry', 'Active'),
(98, 4, 4868, 'Medical and Surgical Supplies', 'Active'),
(99, 4, 4869, 'Medical Expenses', 'Active'),
(100, 4, 4870, 'Provisions and Foodstuff Procurement', 'Active'),
(101, 4, 4871, 'Bedding', 'Active'),
(102, 4, 4872, 'Diet', 'Active'),
(103, 4, 4873, 'Rations', 'Active'),
(104, 4, 4874, 'Consultancy', 'Active'),
(105, 4, 4875, 'Cleaning and Washing', 'Active'),
(106, 4, 4876, 'IUD and Norplant (Clinical Family Planning', 'Active'),
(107, 4, 4877, 'R R Fund', 'Active'),
(108, 4, 4878, 'Satellite Clinic Organization Expenditure', 'Active'),
(109, 4, 4879, 'Arms and Ammunition', 'Active'),
(110, 4, 4880, 'Supplies for Public Order and Safety', 'Active'),
(111, 4, 4881, 'Hire of Security Services', 'Active'),
(112, 4, 4882, 'Legal Expenses', 'Active'),
(113, 4, 4883, 'Honorarium/Fees/Remuneration', 'Active'),
(114, 4, 4884, 'Examination Fees and Expenses', 'Active'),
(115, 4, 4885, 'Testing Fee', 'Active'),
(116, 4, 4886, 'Survey', 'Active'),
(117, 4, 4887, 'Copying Charges', 'Active'),
(118, 4, 4888, 'Computer Consumables', 'Active'),
(119, 4, 4889, 'Audit Fees', 'Active'),
(120, 4, 4890, 'Functions/Ceremonies', 'Active'),
(121, 4, 4891, 'Subsistence', 'Active'),
(122, 4, 4892, 'Royalties/Revenue Share', 'Active'),
(123, 4, 4893, 'Hiring Charges', 'Active'),
(124, 4, 4894, 'Parliament Session', 'Active'),
(125, 4, 4895, 'Committee Meetings/Commission', 'Active'),
(126, 4, 4896, 'Mail Bag', 'Active'),
(127, 4, 4897, 'Sanitation', 'Active'),
(128, 4, 4898, 'Special Expenditure', 'Active'),
(129, 4, 4899, 'Other Expenses', 'Active'),
(130, 5, 4901, 'Motor Vehicles', 'Active'),
(131, 5, 4906, 'Furniture and Fixtures', 'Active'),
(132, 5, 4911, 'Computers and Office Equipment', 'Active'),
(133, 5, 4916, 'Machineries & Equipment', 'Active'),
(134, 5, 4921, 'Office  Buildings', 'Active'),
(135, 5, 4922, 'POA Stores and Civil Works', 'Active'),
(136, 5, 4923, 'Government Structure', 'Active'),
(137, 5, 4924, 'Ballot Boxes', 'Active'),
(138, 5, 4926, 'Residential Buildings', 'Active'),
(139, 5, 4927, 'Educational Institutions', 'Active'),
(140, 5, 4930, 'Meteorology Equipment', 'Active'),
(141, 5, 4931, 'Other Buildings and Structures', 'Active'),
(142, 5, 4932, 'Engineering Equipment', 'Active'),
(143, 5, 4936, 'Roads Bridges and Highways', 'Active'),
(144, 5, 4941, 'Rural Roads and Culverts', 'Active'),
(145, 5, 4946, 'Irrigation Structures', 'Active'),
(146, 5, 4947, 'Drainage Structure', 'Active'),
(147, 5, 4951, 'Sanitation and Water Supply', 'Active'),
(148, 5, 4955, 'Signal/Wireless Equipment', 'Active'),
(149, 5, 4956, 'Telecommunications Equipment', 'Active'),
(150, 5, 4958, 'Lines & Wires', 'Active'),
(151, 5, 4959, 'Mast & Aerials', 'Active'),
(152, 5, 4961, 'Electrical Installations', 'Active'),
(153, 5, 4966, 'Rolling Stock', 'Active'),
(154, 5, 4971, 'Railway Installations', 'Active'),
(155, 5, 4976, 'Water Transport', 'Active'),
(156, 5, 4981, 'Aircraft', 'Active'),
(157, 5, 4986, 'Rehabilitation', 'Active'),
(158, 5, 4991, 'Other Repairs and Maintenance', 'Active'),
(159, 5, 4993, 'Pillar Construction and Maintenance', 'Active'),
(160, 6, 5001, 'Prize Bonds', 'Active'),
(161, 6, 5002, '5 Years Treasury Bond-2008 (10 & 20 Crore)', 'Active'),
(162, 6, 5003, '5 Years Treasury Bond-2008 (9.3297 Crore)', 'Active'),
(163, 6, 5004, '5 Years Treasury Bond-2008 (92.03 Lakh)', 'Active'),
(164, 6, 5005, 'Wage Earner Development Bonds', 'Active'),
(165, 6, 5006, 'Bangladesh Treasury Bond (BGTB) 3 years', 'Active'),
(166, 6, 5007, '5-Year Treasury Bond-2008 (94.32 Crore, 5%)', 'Active'),
(167, 6, 5008, 'Bangladesh Treasury Bond (BGTB) 5 years', 'Active'),
(168, 6, 5009, '5-Year Treasury Bond-2007 (2.86 Crore, 6%)', 'Active'),
(169, 6, 5010, 'National Bond', 'Active'),
(170, 6, 5012, 'Bangladesh Treasury Bond (BGTB) 10 years', 'Active'),
(171, 6, 5014, 'Bangladesh Treasury Bond (BGTB) 15 years', 'Active'),
(172, 6, 5015, '1 year Treasury Bonds', 'Active'),
(173, 6, 5016, 'Bangladesh Treasury Bond (BGTB) 20 years', 'Active'),
(174, 6, 5020, '2 year Treasury Bond', 'Active'),
(175, 6, 5021, '3-Year Sonali Bank Treasury Bond-2009 (1000 Crore Taka)', 'Active'),
(176, 6, 5022, 'Bangladesh Treasury Bond (BGTB) 25 years', 'Active'),
(177, 6, 5024, 'Interest of 3 Years Treasury Bond-1997', 'Active'),
(178, 6, 5025, '3 year Treasury Bond', 'Active'),
(179, 6, 5026, 'T & T Bond', 'Active'),
(180, 6, 5027, '3 year Treasury Bond -1998', 'Active'),
(181, 6, 5028, '3 Year Treasury Bond ( B. S. R. S ) - 2000', 'Active'),
(182, 6, 5029, '3 year BSRS Bond', 'Active'),
(183, 6, 5030, '10 Year Treasury Bond for Loss Financing - Jute', 'Active'),
(184, 6, 5031, '3 year Treasury Bond for Export', 'Active'),
(185, 6, 5032, '10 Years Treasury Bond BSC', 'Active'),
(186, 6, 5033, '3 year National Investment Bond', 'Active'),
(187, 6, 5034, 'Interest of 3 Years Treasury Bond-2000', 'Active'),
(188, 6, 5035, '3 year BADC Treasury Bond - 1998', 'Active'),
(189, 6, 5036, '3 Years Treasury Bond ( B. T. M. C ) - 2001', 'Active'),
(190, 6, 5037, '3 year BTMC Treasury Bond - 1998', 'Active'),
(191, 6, 5038, '3 Year Treasury Bond ( Biman ) -1998', 'Active'),
(192, 6, 5040, '5 year Treasury Bond', 'Active'),
(193, 6, 5041, '5 Years Treasury Bond ( Biman ) - 2003', 'Active'),
(194, 6, 5042, '5 Year Biman Treasury Bond - 2000', 'Active'),
(195, 6, 5043, '5 Years Treasury Bond ( Biman )', 'Active'),
(196, 6, 5045, '7 year Treasury Bond', 'Active'),
(197, 6, 5046, '10 year Treasury Bond - 2006', 'Active'),
(198, 6, 5047, '10 year Treasury Bond - 2006', 'Active'),
(199, 6, 5048, '10 year Treasury Bond - 2006', 'Active'),
(200, 6, 5049, '10 Years Treasury Bond ( B. S. C ) - 2008', 'Active'),
(201, 6, 5050, '10 year Treasury Bond', 'Active'),
(202, 6, 5051, '10 year Treasury Bond - 2005', 'Active'),
(203, 6, 5052, 'Treasury Bond ( 1992 - 2002 ) @ 9%', 'Active'),
(204, 6, 5055, '15 year Treasury Bond', 'Active'),
(205, 6, 5056, '15 year Special Treasury Bond - 2008', 'Active'),
(206, 6, 5057, '15 year Treasury Bond for Recapitalization of', 'Active'),
(207, 6, 5058, 'BJMC Credit Bond', 'Active'),
(208, 6, 5059, '15 year Treasury Bond (BKB) - 2011', 'Active'),
(209, 6, 5060, '10 Years Treasury Bond ( Jete Sector )', 'Active'),
(210, 6, 5061, '20 year Jute Bond', 'Active'),
(211, 6, 5062, 'Corporation/Financial Institution Investment', 'Active'),
(212, 6, 5063, '20 year BJC Bond', 'Active'),
(213, 6, 5064, 'Sick Industries Assistance Bond', 'Active'),
(214, 6, 5065, '25 year Treasury Bond - 2019', 'Active'),
(215, 6, 5067, '25 year Treasury Bond - 2020', 'Active'),
(216, 6, 5068, '25 Years Agriculture Credit Expenditure Bond', 'Active'),
(217, 6, 5069, '25 year Treasury Bond ( Jute Sector ) - 2018', 'Active'),
(218, 6, 5071, 'Special Bond', 'Active'),
(219, 6, 5072, '5 Years Treasury Bond-2009 (53.2688 Crore)', 'Active'),
(220, 6, 5073, 'Income Tax Bond', 'Active'),
(221, 6, 5074, 'Recapitalization Bond -  Interest of Bank', 'Active'),
(222, 6, 5075, 'Recapitalization Bond -  Interest of Corporation', 'Active'),
(223, 6, 5076, 'Cash Assistance to Banks for Write off Loan', 'Active'),
(224, 6, 5077, '5 Years Non negotiable Bond (0.04 crore 5%)', 'Active'),
(225, 6, 5078, '5 Years Treasury Bond (0.4624 Crore)', 'Active'),
(226, 6, 5079, '5 Years Treasury Bond-2004', 'Active'),
(227, 6, 5080, '5 Years Treasury Bond-2005', 'Active'),
(228, 6, 5081, '7 Year Treasury Bond for Payment of State', 'Active'),
(229, 6, 5083, '5 Years Treasury Bond - 2004', 'Active'),
(230, 6, 5084, '10 Years  (BJMC) Treasury Bond - 2006 (7%)', 'Active'),
(231, 6, 5086, '5 Years Treasury Bond-2005 (5%) Sick', 'Active'),
(232, 6, 5087, '5 Years Treasury Bond-2005 (Tk 64.51 crore 7%', 'Active'),
(233, 6, 5088, '5 Years Treasury Bond-2005 (Tk 30.45 crore 7%', 'Active'),
(234, 6, 5089, '5 Years Treasury Bond-2006 (Tk 2,23,49000 7%', 'Active'),
(235, 6, 5090, '5 Years Treasury Bond-2006 (Tk 62.31 Lac 7%', 'Active'),
(236, 6, 5091, '5 Years Treasury Bond-2005  (Sick Industries)', 'Active'),
(237, 6, 5092, '5 Years Treasury Bond-2005  (Sick Industries)', 'Active'),
(238, 6, 5093, '5 Years Treasury Bond-2006 (Tk 75.66 crore 5%', 'Active'),
(239, 6, 5094, '5 Years Treasury Bond-2006 (Tk 0.51 crore 5%', 'Active'),
(240, 6, 5095, '5 Years Tresury Bond-2005', 'Active'),
(241, 6, 5096, '5 Years Treasury Bond-2006 (Tk 70.22 crore,', 'Active'),
(242, 6, 5097, '5 Years  Treasury Bond - 2008 (7.5%)', 'Active'),
(243, 7, 5901, 'Grant in Aid - General', 'Active'),
(244, 7, 5902, 'Development Budget -General Grant', 'Active'),
(245, 7, 5903, 'Salary Support', 'Active'),
(246, 7, 5904, 'Income Tax Grant', 'Active'),
(247, 7, 5905, 'Uniform Grant', 'Active'),
(248, 7, 5907, 'House Grant', 'Active'),
(249, 7, 5909, 'House Rent Grant', 'Active'),
(250, 7, 5911, 'Medical  Grant', 'Active'),
(251, 7, 5913, 'Festival Bonus', 'Active'),
(252, 7, 5914, 'Pension and Retirement Benefits Grant', 'Active'),
(253, 7, 5915, 'Union Council Members Honorarium', 'Active'),
(254, 7, 5916, 'Union Council Chairman''s Honorarium', 'Active'),
(255, 7, 5917, 'Sports Grants', 'Active'),
(256, 7, 5919, 'Book Grant', 'Active'),
(257, 7, 5921, 'Research Grant', 'Active'),
(258, 7, 5922, 'Grant for Training', 'Active'),
(259, 7, 5923, 'Cultural Grant', 'Active'),
(260, 7, 5925, 'Welfare Grant', 'Active'),
(261, 7, 5927, 'Burial Grant', 'Active'),
(262, 7, 5929, 'Car Grant', 'Active'),
(263, 7, 5930, 'Machinery Grant', 'Active'),
(264, 7, 5931, 'Salary Support to Non-Government Teacher', 'Active'),
(265, 7, 5933, 'Non-Government Educational Institutions', 'Active'),
(266, 7, 5935, 'Film Production', 'Active'),
(267, 7, 5937, 'Grants for Religious Purposes', 'Active'),
(268, 7, 5938, 'Grants for Non Government Orphanages', 'Active'),
(269, 7, 5939, 'Government Employees Benevolent Fund', 'Active'),
(270, 7, 5941, 'Group Insurance Grant', 'Active'),
(271, 7, 5942, 'Project Grant', 'Active'),
(272, 7, 5943, 'Vulnerable Group Development (VGD)', 'Active'),
(273, 7, 5944, 'Vunerable Group Feeding', 'Active'),
(274, 7, 5945, 'Test Relief (TR)', 'Active'),
(275, 7, 5947, 'Gratuitous Relief (GR)', 'Active'),
(276, 7, 5949, 'Relief and Charities', 'Active'),
(277, 7, 5951, 'Donations, Gifts, Presents', 'Active'),
(278, 7, 5953, 'Discretionary Grants', 'Active'),
(279, 7, 5955, 'Grants to Employees for Medical Treatment', 'Active'),
(280, 7, 5957, 'Flood', 'Active'),
(281, 7, 5959, 'Drought', 'Active'),
(282, 7, 5961, 'Electricity Expenses', 'Active'),
(283, 7, 5962, 'Water Grants', 'Active'),
(284, 7, 5963, 'Stipend / Scholarship', 'Active'),
(285, 7, 5965, 'Special Grant', 'Active'),
(286, 7, 5967, 'Welfare Fund', 'Active'),
(287, 7, 5969, 'Trust Fund', 'Active'),
(288, 7, 5971, 'Agriculture Rehabilitation Grant', 'Active'),
(289, 7, 5972, 'Rehabilitation grants for Fisheries', 'Active'),
(290, 7, 5973, 'Flood Rehabilitation Grant', 'Active'),
(291, 7, 5974, 'Repair Grant', 'Active'),
(292, 7, 5975, 'Cyclone Rehabilitation Grant', 'Active'),
(293, 7, 5976, 'Rural Road Construction Grants', 'Active'),
(294, 7, 5977, 'Others', 'Active'),
(295, 7, 5978, 'Rehabilitation Grants for Livestock', 'Active'),
(296, 7, 5980, 'Grants in Revolving Fund', 'Active'),
(297, 7, 5981, 'Annuity', 'Active'),
(298, 7, 5985, 'Miscellaneous', 'Active'),
(299, 7, 5990, 'Micro-Credit Grant', 'Active'),
(300, 7, 5991, 'Maintaining Life Fund Deficit', 'Active'),
(301, 7, 5992, 'TR Cash', 'Active'),
(302, 7, 5999, 'Education Grants for Disabled', 'Active'),
(303, 8, 6601, 'Completed Development Projects', 'Active'),
(304, 8, 6602, 'Special Programme', 'Active'),
(305, 8, 6605, 'Special Operation', 'Active'),
(306, 8, 6607, 'Preparation of Voters List', 'Active'),
(307, 8, 6611, 'Haj', 'Active'),
(308, 8, 6612, 'SAARC Speakers Conference', 'Active'),
(309, 8, 6613, 'Book Purchase for Educational Institute', 'Active'),
(310, 8, 6615, 'Scientific Equipment Purchase for Educational', 'Active'),
(311, 8, 6616, 'Junior Scholarship Examination', 'Active'),
(312, 8, 6617, 'Education Week', 'Active'),
(313, 8, 6621, 'Medical Surgical Requisites', 'Active'),
(314, 8, 6622, 'Lump for Oxygen', 'Active'),
(315, 8, 6631, 'Renewal and Reserve Fund', 'Active'),
(316, 8, 6632, 'Utility Services Charge', 'Active'),
(317, 8, 6633, 'New Recruitment', 'Active'),
(318, 8, 6634, 'Manpower Rationalization', 'Active'),
(319, 8, 6635, 'Transfer to Suspense Account', 'Active'),
(320, 8, 6641, 'Non-Recurring', 'Active'),
(321, 8, 6643, 'Repairs and Maintenance Government Schools', 'Active'),
(322, 8, 6645, 'Repairs and Maintenance Non-Government', 'Active'),
(323, 8, 6647, 'Repairs and Maintenance Technical Institutions', 'Active'),
(324, 8, 6649, 'Military Wanted for Relief Works', 'Active'),
(325, 8, 6650, 'Demonstration Plot', 'Active'),
(326, 8, 6651, 'Unexpected', 'Active'),
(327, 8, 6661, 'Food for Works', 'Active'),
(328, 8, 6671, 'Welfare Fund', 'Active'),
(329, 8, 6675, 'Anti Smuggling Operation', 'Active'),
(330, 8, 6681, 'Unallocated Block Allocation', 'Active'),
(331, 8, 6683, 'Compensation in Lieu of Duty Drawback', 'Active'),
(332, 8, 6685, 'Refund of Tax Deducted', 'Active'),
(333, 8, 6687, 'Pay Scale Implementation', 'Active'),
(334, 8, 6691, 'Defence Expenditure', 'Active'),
(335, 8, 6693, 'Special Relief Works', 'Active'),
(336, 8, 6699, 'Armed forces aid to Civil Administration', 'Active'),
(337, 9, 6801, 'Office Buildings', 'Active'),
(338, 9, 6803, 'Residential Buildings', 'Active'),
(339, 9, 6805, 'Other Buildings', 'Active'),
(340, 9, 6807, 'Motor Vehicles', 'Active'),
(341, 9, 6809, 'Water Transport', 'Active'),
(342, 9, 6811, 'Aircraft', 'Active'),
(343, 9, 6812, 'Camera and Accessories', 'Active'),
(344, 9, 6813, 'Machinery and Other Equipment', 'Active'),
(345, 9, 6814, 'Engineering Equipment', 'Active'),
(346, 9, 6815, 'Computers and Accessories', 'Active'),
(347, 9, 6817, 'Computer Softwares', 'Active'),
(348, 9, 6819, 'Office Equipment', 'Active'),
(349, 9, 6820, 'Teaching and Learning Material', 'Active'),
(350, 9, 6821, 'Furniture and Fixtures', 'Active'),
(351, 9, 6822, 'Laboratory Equipment’s / Material', 'Active'),
(352, 9, 6823, 'Telecommunication Equipment', 'Active'),
(353, 9, 6824, 'Ballot Box (Procurement)', 'Active'),
(354, 9, 6825, 'Radio Equipment', 'Active'),
(355, 9, 6826, 'Military Hardware', 'Active'),
(356, 9, 6827, 'Electrical Equipment', 'Active'),
(357, 9, 6828, 'Military Equipment', 'Active'),
(358, 9, 6829, 'Rolling Stock', 'Active'),
(359, 9, 6830, 'Meteorological Equipment', 'Active'),
(360, 9, 6831, 'Rail Installations', 'Active'),
(361, 9, 6833, 'Roads and Highways', 'Active'),
(362, 9, 6834, 'Military Hardware (Arrears)', 'Active'),
(363, 9, 6835, 'Bridges', 'Active'),
(364, 9, 6837, 'Rural Roads and Culverts', 'Active'),
(365, 9, 6839, 'Irrigation Structures', 'Active'),
(366, 9, 6841, 'Drainage Structures', 'Active'),
(367, 9, 6843, 'Sanitation and Water Supply', 'Active'),
(368, 9, 6845, 'Afforestation', 'Active'),
(369, 9, 6847, 'Monuments', 'Active'),
(370, 9, 6849, 'Museum Artifacts, Paintings, Archives, Films', 'Active'),
(371, 9, 6850, 'Tubewell & Equipment', 'Active'),
(372, 9, 6851, 'Others', 'Active'),
(373, 9, 6852, 'Bullet Proof Jacket', 'Active'),
(374, 9, 6853, 'Firefighting Equipment', 'Active'),
(375, 9, 6855, 'Mobile Instrument', 'Active'),
(376, 9, 6865, 'Tents & Equipment', 'Active'),
(377, 9, 6868, 'Arms, Motor Vehicle and Equipment for Police', 'Active'),
(378, 9, 6869, 'Aircooler', 'Active'),
(379, 10, 6901, 'Acquisition / Purchase of Land', 'Active'),
(380, 10, 6911, 'Forest', 'Active'),
(381, 10, 6921, 'Inland Water Body', 'Active'),
(382, 10, 6931, 'Sub-Soil Deposits', 'Active'),
(383, 10, 6941, 'Others', 'Active'),
(384, 11, 7001, 'Land Development', 'Active'),
(385, 11, 7006, 'Office Buildings', 'Active'),
(386, 11, 7011, 'Residential Buildings', 'Active'),
(387, 11, 7016, 'Other Buildings and Structures', 'Active'),
(388, 11, 7021, 'Roads and Highways', 'Active'),
(389, 11, 7026, 'Bridges', 'Active'),
(390, 11, 7031, 'Rural Roads and Culverts', 'Active'),
(391, 11, 7036, 'Irrigation Structures', 'Active'),
(392, 11, 7041, 'Drainage Structures', 'Active'),
(393, 11, 7046, 'Sanitation and Water Supply', 'Active'),
(394, 11, 7047, 'Sinking of Tubewell', 'Active'),
(395, 11, 7051, 'Telecommunication', 'Active'),
(396, 11, 7053, 'Lines & Wires', 'Active'),
(397, 11, 7054, 'Mast and Aerials', 'Active'),
(398, 11, 7055, 'Small Capital Works', 'Active'),
(399, 11, 7056, 'Electrical Installation', 'Active'),
(400, 11, 7061, 'Rail Installations', 'Active'),
(401, 11, 7066, 'Mineral Exploration', 'Active'),
(402, 11, 7071, 'Mines and Mineral Extraction', 'Active'),
(403, 11, 7076, 'Excavation Religious Sites and Monuments', 'Active'),
(404, 11, 7081, 'Others', 'Active'),
(405, 12, 7101, 'Share Capital', 'Active'),
(406, 12, 7102, 'Development Budget - Equity', 'Active'),
(407, 12, 7111, 'Equity', 'Active'),
(408, 12, 7113, 'Investment for Recapitalization of Bank', 'Active'),
(409, 12, 7114, 'Investment for Recapitalization of State owned', 'Active'),
(410, 12, 7115, 'Jesac', 'Active'),
(411, 12, 7116, 'Sick Industries', 'Active'),
(412, 12, 7117, 'Compensation Payable to BKB Against', 'Active'),
(413, 12, 7121, 'International Financial Institutions', 'Active'),
(414, 12, 7123, 'Conversion of Cash Loan into Equity', 'Active'),
(415, 12, 7124, 'Conversion of Bank Loan into Equity - BADC', 'Active'),
(416, 12, 7125, 'Conversion of Bank Loan into Equity', 'Active'),
(417, 12, 7127, 'Conversion of Foreign Loan into Equity', 'Active'),
(418, 12, 7131, 'Non-ADP Projects', 'Active'),
(419, 12, 7141, 'Other Investments', 'Active'),
(420, 12, 7199, 'Adjustment', 'Active'),
(421, 13, 7201, 'Financial Institutions', 'Active'),
(422, 13, 7202, 'Development Budget - Capital Grant', 'Active'),
(423, 13, 7206, 'Non-Financial Institutions', 'Active'),
(424, 13, 7211, 'T & T', 'Active'),
(425, 13, 7216, 'Railway', 'Active'),
(426, 13, 7221, 'Post Office', 'Active'),
(427, 13, 7226, 'District Councils', 'Active'),
(428, 13, 7231, 'City Corporations', 'Active'),
(429, 13, 7236, 'Pourshavas', 'Active'),
(430, 13, 7241, 'Other Local Bodies', 'Active'),
(431, 13, 7246, 'Non-government Education Institutions', 'Active'),
(432, 13, 7251, 'Other Non-government Institutions', 'Active'),
(433, 13, 7256, 'Others', 'Active'),
(434, 14, 7901, 'CD / V A T', 'Active'),
(435, 14, 7969, 'Transfer, Adjustment and Others (Capital)', 'Active'),
(436, 14, 7981, 'Miscellaneous  Capital Expenditure', 'Active'),
(437, 14, 7982, 'Capital Lumpsum', 'Active'),
(438, 14, 7983, 'Manpower Rationalization', 'Active'),
(439, 14, 7985, 'Consultant', 'Active'),
(440, 14, 7999, 'Capital General', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `group_type` enum('Customer','Customer Service','Engineering','Management','Marketing','Operations','Production','Quality Assurance','Quality Control','Representative','Sales','Support','Technicans','Others') NOT NULL DEFAULT 'Customer',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `group_email` varchar(128) NOT NULL DEFAULT '',
  `group_leader` bigint(20) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `status` enum('Active','Planned','Inactive') NOT NULL DEFAULT 'Active',
  `create_date` date NOT NULL DEFAULT '0000-00-00',
  `last_updated` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `group_email` (`group_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ministry_lookup`
--

CREATE TABLE IF NOT EXISTS `ministry_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `ministry_lookup`
--

INSERT INTO `ministry_lookup` (`id`, `name`, `status`) VALUES
(1, 'Local Government Division', 'Active'),
(2, 'Ministry of Agriculture', 'Active'),
(3, ' Power Division, M/O. Power, Energy & Mineral Res.', 'Active'),
(4, 'Bridge Division', 'Active'),
(5, 'Ministry of Railways', 'Active'),
(6, 'Roads Division', 'Active'),
(7, 'Ministry of Education', 'Active'),
(8, 'Ministry of Water Resources', 'Active'),
(9, 'Ministry of Primary & Mass Education (MOPME)', 'Active'),
(10, 'Ministry of Planning', 'Active'),
(11, 'EMR Division, M/O. Power, Energy & Mineral Res.', 'Active'),
(12, 'Ministry of Public Administration', 'Active'),
(13, 'Bangladesh Public Service Commission (BPSC)', 'Active'),
(14, 'Finance Division', 'Active'),
(15, 'Bank and Financial Institutions Division', 'Active'),
(16, 'Economic Relations Divisions (ERD)', 'Active'),
(17, 'Ministry of Finance', 'Active'),
(18, 'Ministry of Information', 'Active'),
(19, 'Ministry of Food', 'Active'),
(20, 'Ministry of Disaster Management and Relief', 'Active'),
(21, 'M/O. Posts, Telecomm. and Information Technology', 'Active'),
(22, 'Posts and Telecommunications Division', 'Active'),
(23, 'Ministry of Religious Affairs (MORA)', 'Active'),
(24, 'Ministry of Foreign Affairs', 'Active'),
(25, 'Statistics and Informatics Division', 'Active'),
(26, 'Ministry of Environment and Forests', 'Active'),
(27, 'Ministry of Defence', 'Active'),
(28, 'Ministry of Labour And Employment', 'Active'),
(29, 'Ministry of Textiles and Jute', 'Active'),
(30, 'Ministry of Housing and Public Works', 'Active'),
(31, 'Bangladesh Energy Regulatory Commission (BERC)', 'Active'),
(32, 'Ministry of Commerce', 'Active'),
(33, 'Ministry of Chittagong Hills Tracts Affairs', 'Active'),
(34, 'Ministry of Civil Aviation and Tourism', 'Active'),
(35, 'Ministry of Land', 'Active'),
(36, 'Ministry of Women and Children Affairs (MWCA)', 'Active'),
(37, 'Ministry of Fisheries and Livestock', 'Active'),
(38, 'Ministry of Youth & Sports', 'Active'),
(39, 'Ministry of Communication', 'Active'),
(40, 'Ministry of Industries', 'Active'),
(41, 'Ministry of Science and Technology', 'Active'),
(42, 'Ministry of Social Welfare', 'Active'),
(43, 'Ministry of Cultural Affairs', 'Active'),
(44, 'Ministry of Home Affairs', 'Active'),
(45, 'Ministry of Health and Family Welfare', 'Active'),
(46, 'Rural Development & Cooperative Division', 'Active'),
(47, 'Ministry of Liberation War Affairs', 'Active'),
(48, 'Ministry of Expatriates'' Welfare & Overseas Employment', 'Active'),
(49, 'Ministry of Shipping', 'Active'),
(50, 'Bangladesh Election Commission', 'Active'),
(51, 'Information Commission', 'Active'),
(52, 'Information and Communication Technology Division', 'Active'),
(53, 'Internal Resources Division (IRD)', 'Active'),
(54, 'Ministry of Law, Justice and Parliamentary Affairs', 'Active'),
(55, 'Supreme Court of Bangladesh', 'Active'),
(56, 'Bangladesh Law Commission', 'Active'),
(57, 'Bangladesh Judicial Service Commission', 'Active'),
(58, 'President''s Office', 'Active'),
(59, 'Prime Minister''s Office', 'Active'),
(60, 'Cabinet Division', 'Active'),
(61, 'National Parliament of Bangladesh', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `procurement_method_lookup`
--

CREATE TABLE IF NOT EXISTS `procurement_method_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `procurement_method` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `procurement_method_lookup`
--

INSERT INTO `procurement_method_lookup` (`id`, `procurement_method`) VALUES
(1, 'DPM'),
(2, 'RFQM'),
(3, 'TSTM'),
(4, 'RTM'),
(5, 'OTM');

-- --------------------------------------------------------

--
-- Table structure for table `procurement_type_lookup`
--

CREATE TABLE IF NOT EXISTS `procurement_type_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `procurement_type` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `procurement_type_lookup`
--

INSERT INTO `procurement_type_lookup` (`id`, `procurement_type`) VALUES
(1, 'NCT'),
(2, 'INT');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_title_en` text NOT NULL,
  `project_title_bn` text NOT NULL,
  `project_type` enum('DPP','TPP') NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_of_commencement` date NOT NULL,
  `date_of_completion` date NOT NULL,
  `adp_sector` int(11) NOT NULL,
  `adp_sub_sector` int(11) NOT NULL,
  `sector_division` int(11) NOT NULL,
  `objectives` text NOT NULL,
  `exchange_rate` varchar(512) NOT NULL,
  `status` enum('Draff','Approved','Rejected','Forwarded to Ministry','Returned from Ministry','Forwarded to Commission','Returned from Commission') NOT NULL DEFAULT 'Draff',
  `ministry_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `current_holder` int(11) NOT NULL,
  `implementation_arrangement` text NOT NULL,
  `after_completion` text NOT NULL,
  `date_of_logframe_summary_preparation` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Projects of all DPP, TPP' AUTO_INCREMENT=32 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_title_en`, `project_title_bn`, `project_type`, `create_date`, `date_of_commencement`, `date_of_completion`, `adp_sector`, `adp_sub_sector`, `sector_division`, `objectives`, `exchange_rate`, `status`, `ministry_id`, `agency_id`, `created_by`, `current_holder`, `implementation_arrangement`, `after_completion`, `date_of_logframe_summary_preparation`) VALUES
(20, 'Implementation of digital ECNEC', 'Implementation of digital ECNEC', 'DPP', '2014-06-24 10:10:27', '2014-07-01', '2016-06-30', 1, 20, 4, '<p>asdf asdf asd asdfa sdf asdfasd fasdfasdf asdfhasdkf asldflasdf lasdjflasdflsdf lasdkjf hfdjasdfkldasjfj askldfjaskld fjasldkfj asdlfjaskldf lasdjf lsadkfj lasdjf</p>', 'asd fasdf asdf', 'Draff', 0, 0, 0, 0, '', '', '0000-00-00'),
(21, 'Junayeed', 'Junayeed', 'DPP', '2014-07-16 07:17:08', '0000-00-00', '0000-00-00', 0, 0, 0, '', '', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00'),
(22, 'Harun', 'ggasdgf', 'DPP', '2014-07-17 17:26:05', '2014-07-17', '2014-07-18', 0, 0, 0, '', '', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00'),
(23, 'Aid Effectiveness Project for ERD', 'Aid Effectiveness Project for ERD', 'DPP', '2014-07-17 18:09:48', '2014-07-01', '2014-07-16', 1, 3, 4, '<p>0</p>', '', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00'),
(24, 'Test Project 20.07.2014', 'Test Project 20.07.2014', 'DPP', '2014-07-20 03:25:40', '2014-07-01', '2015-06-30', 6, 17, 3, '<p>0</p>', '', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00'),
(25, '2nd Test for 3 Years', '2nd Test for 3 Years', 'DPP', '2014-07-20 06:09:40', '2014-07-01', '2015-06-30', 14, 38, 1, '<p>faasf</p>', '', 'Forwarded to Ministry', 2, 26, 26, 26, '', '', '0000-00-00'),
(26, 'Development of 30 Feet road in Mohammadpur', 'à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦à¦ªà§à¦° à§©à§¦ à¦«à¦¿à¦Ÿ à¦°à¦¾à¦¸à§à¦¤à¦¾ à¦ªà§à¦°à¦•à¦²à§à¦ª', 'DPP', '2014-07-20 06:12:19', '2014-09-01', '2015-12-30', 8, 22, 1, '<p><strong>Objective</strong> 1</p>\r\n\r\n<h2>Objective<em> 2</em></h2>', '77', 'Draff', 6, 53, 27, 27, '', '', '0000-00-00'),
(27, '3rd Test22ddd', '', 'DPP', '2014-07-20 06:50:55', '2014-07-01', '2015-06-30', 13, 35, 3, '<p>4</p>', '3', 'Forwarded to Commission', 2, 26, 26, 26, '', '', '0000-00-00'),
(28, 'BINA Test', 'BINA Test', 'DPP', '2014-07-20 06:52:40', '2014-07-01', '2017-06-30', 12, 34, 1, '<p>dasdasd</p>', '', 'Forwarded to Commission', 2, 26, 26, 26, '<p>bbbbbbbbbbbbbbbbbb</p>', '<p>xcvxcvxcvx&nbsp; v x v</p>', '2014-07-25'),
(30, 'ss', 'd', 'DPP', '2014-07-22 07:37:27', '2014-07-22', '2014-07-23', 1, 3, 4, '<p>dfgdsfgd fsdg sdfgsdf</p>', '324', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00'),
(31, 'DAE Project', 'DAE Project', 'DPP', '2014-07-26 17:40:22', '2014-07-23', '2018-03-22', 0, 0, 0, '', '', 'Draff', 2, 21, 28, 28, '', '', '0000-00-00');

--
-- Triggers `projects`
--
DROP TRIGGER IF EXISTS `Insert_Status`;
DELIMITER //
CREATE TRIGGER `Insert_Status` AFTER UPDATE ON `projects`
 FOR EACH ROW IF new.status != old.status THEN
INSERT INTO project_status VALUES(NULL,new.id,new.status,now());
END IF
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `projects_part_b`
--

CREATE TABLE IF NOT EXISTS `projects_part_b` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `background_with_problem` text NOT NULL,
  `background_linkages` text NOT NULL,
  `background_objectaives` text NOT NULL,
  `background_outcomes` text NOT NULL,
  `background_outputs` text NOT NULL,
  `background_activities` text NOT NULL,
  `background_sex` text NOT NULL,
  `background_proverty` text NOT NULL,
  `study` text NOT NULL,
  `lessons_learnt_successful_project` text NOT NULL,
  `lessons_learnt_not_work_well` text NOT NULL,
  `effect_other_project` text NOT NULL,
  `effect_environmental` text NOT NULL,
  `effect_climate_change` text NOT NULL,
  `effect_gender` text NOT NULL,
  `effect_employment` text NOT NULL,
  `effect_poverty` text NOT NULL,
  `effect_organizational_setup` text NOT NULL,
  `effect_institutional_productivity` text NOT NULL,
  `effect_regional_disparity` text NOT NULL,
  `effect_environment_clearance_causes` text NOT NULL,
  `clearance_eca` varchar(100) NOT NULL,
  `linkage_perspective_plan` text NOT NULL,
  `mission_vision` text NOT NULL,
  `achievement_of_mission` text NOT NULL,
  `private_sector_participation` text NOT NULL,
  `foreign_aided_project_conditionality` text NOT NULL,
  `project_compensation` text NOT NULL,
  `risk_analysis` text NOT NULL,
  `sustainability` text NOT NULL,
  `governance` text NOT NULL,
  `psc_tor` text NOT NULL,
  `pic_tor` text NOT NULL,
  `others_any` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `projects_part_b`
--

INSERT INTO `projects_part_b` (`id`, `pid`, `background_with_problem`, `background_linkages`, `background_objectaives`, `background_outcomes`, `background_outputs`, `background_activities`, `background_sex`, `background_proverty`, `study`, `lessons_learnt_successful_project`, `lessons_learnt_not_work_well`, `effect_other_project`, `effect_environmental`, `effect_climate_change`, `effect_gender`, `effect_employment`, `effect_poverty`, `effect_organizational_setup`, `effect_institutional_productivity`, `effect_regional_disparity`, `effect_environment_clearance_causes`, `clearance_eca`, `linkage_perspective_plan`, `mission_vision`, `achievement_of_mission`, `private_sector_participation`, `foreign_aided_project_conditionality`, `project_compensation`, `risk_analysis`, `sustainability`, `governance`, `psc_tor`, `pic_tor`, `others_any`) VALUES
(1, 26, '<p>Background with problem statement Background with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statement</p>\r\n\r\n<p>Background with problem statement</p>\r\n\r\n<p>Background with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statementBackground with problem statement</p>', '<p>Linkages(to other projects, institutions ) Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )Linkages(to other projects, institutions )</p>', '<p>Objectives ObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectivesObjectives</p>', '<p>Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes Outcomes</p>', '<p>Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; <strong>Outputs </strong>Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; Outputs Outputs&nbsp; v</p>', '<p>Activities Activities Activities Activities <strong>Activities </strong>Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities Activities</p>', '<p>Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target <strong>population </strong>and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman Sex disaggregated data for target population and constraints faced by woman</p>', '<p>Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty <strong>Situation </strong>Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation Poverty Situation</p>', '<p>Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings &amp; recommendations. If not mention the causes. Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings &amp; recommendations. If not mention the causes.Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings &amp; recommendations. If not mention the causes.Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings &amp; recommendations. If not mention the causes.Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings &amp; recommendations. If not mention the causes.Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings &amp; recommendations. If not mention the causes.Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings &amp; recommendations. If not mention the causes.Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings &amp; recommendations. If not mention the causes.Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings &amp; recommendations. If not mention the causes.Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings &amp; recommendations. If not mention the causes.</p>', '<p>Indicate which issues lead to make project successful Indicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successful</p>', '<p>Indicate which issues lead to make project successful Indicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successfulIndicate which issues lead to make project successful</p>', '<p>Other project/existing installations</p>', '<p>Other project/existing installations</p>', '<p>Other project/existing installations</p>', '<p>Other project/existing installations</p>', '<p>Other project/existing installations</p>', '<p>Other project/existing installations</p>', '<p>Other project/existing installations</p>', '<p>Other project/existing installations</p>', '<p>Other project/existing installations</p>', '<p>Other project/existing installations</p>', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 21, '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', '<p>7</p>', '<p>8</p>', '<p>1</p>', '<p>1</p>', '<p>2</p>', '<p>12</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', '<p>7</p>', '<p>8</p>', '<p>9</p>', '<p>00000</p>', '', '<p>2</p>', '<p>4</p>', '<p>6</p>', '<p>7</p>', '<p>5</p>', '<p>8</p>', '<p>8</p>', '', '', '', '', ''),
(3, 25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 25, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 28, '', '', '', '', '', '', '', '<blockquote>\r\n<ul>\r\n	<li><span class="marker">Test</span></li>\r\n</ul>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '<p>asdad</p>', '<p>asdfasd</p>', '<p>sadfasdf</p>', '<p>sdafsadfsadfsdafsadfasdfasd</p>', '<p>dfgdfg fg hdfghdfgh</p>', '<p>fdghd hdfg hdfg hdf hdfgh</p>', '<p>fg hhdf hdfgh dfghdf</p>', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project_agencies`
--

CREATE TABLE IF NOT EXISTS `project_agencies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `agency_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `project_agencies`
--

INSERT INTO `project_agencies` (`id`, `pid`, `agency_id`) VALUES
(27, 19, 2),
(28, 19, 1),
(55, 20, 2),
(62, 26, 53),
(64, 24, 26),
(68, 28, 26),
(69, 30, 26),
(70, 27, 26),
(71, 25, 26),
(82, 23, 113),
(83, 23, 26);

-- --------------------------------------------------------

--
-- Table structure for table `project_attachments`
--

CREATE TABLE IF NOT EXISTS `project_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `project_dev_partners`
--

CREATE TABLE IF NOT EXISTS `project_dev_partners` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `dev_partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `project_dev_partners`
--

INSERT INTO `project_dev_partners` (`id`, `pid`, `dev_partner_id`) VALUES
(33, 20, 2),
(34, 20, 3),
(35, 20, 9),
(39, 26, 38),
(43, 24, 3),
(44, 24, 6),
(45, 24, 26),
(46, 30, 2),
(47, 27, 3),
(48, 25, 3);

-- --------------------------------------------------------

--
-- Table structure for table `project_locations`
--

CREATE TABLE IF NOT EXISTS `project_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `location_type` enum('Division','District','Upzila') NOT NULL,
  `location_cost` double NOT NULL,
  `location_comments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `project_locations`
--

INSERT INTO `project_locations` (`id`, `pid`, `location_id`, `location_type`, `location_cost`, `location_comments`) VALUES
(66, 20, 20, 'Division', 0, ''),
(67, 20, 2, 'District', 0, ''),
(68, 20, 527, 'Upzila', 0, ''),
(83, 23, 10, 'Division', 4, 'asdffdas'),
(84, 23, 20, 'Division', 2, 'harun'),
(85, 23, 50, 'Division', 0, ''),
(86, 23, 60, 'Division', 0, ''),
(87, 23, 7, 'District', 4, 'sdfasdfas asd f'),
(88, 23, 12, 'District', 2, 'sd'),
(89, 23, 16, 'District', 2, 'dsf'),
(90, 23, 6, 'District', 0, ''),
(91, 23, 50, 'District', 0, ''),
(92, 23, 78, 'Upzila', 3, 'sdf'),
(93, 23, 127, 'Upzila', 54, 'scsfd'),
(94, 23, 128, 'Upzila', 643, 'sdfa'),
(95, 26, 30, 'Division', 120, ''),
(96, 26, 5, 'District', 10, ''),
(97, 26, 2, 'Upzila', 120, ''),
(98, 24, 20, 'Division', 2, ''),
(99, 24, 30, 'Division', 0, ''),
(100, 24, 2, 'District', 0, ''),
(101, 24, 36, 'District', 0, ''),
(102, 24, 65, 'Upzila', 0, ''),
(103, 24, 291, 'Upzila', 0, ''),
(104, 24, 297, 'Upzila', 0, ''),
(105, 28, 20, 'Division', 23, ''),
(106, 28, 14, 'District', 23, ''),
(107, 28, 89, 'Upzila', 0, ''),
(108, 25, 20, 'Division', 22, ''),
(109, 25, 50, 'Division', 234, ''),
(110, 25, 13, 'District', 0, ''),
(111, 25, 16, 'District', 0, ''),
(112, 25, 17, 'District', 0, ''),
(113, 25, 135, 'Upzila', 0, ''),
(114, 25, 81, 'Upzila', 0, ''),
(115, 30, 20, 'Division', 2, ''),
(116, 30, 12, 'District', 2, ''),
(117, 27, 20, 'Division', 3, ''),
(118, 27, 2, 'District', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `project_log_frame`
--

CREATE TABLE IF NOT EXISTS `project_log_frame` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `goal_summary` text NOT NULL,
  `goal_ovi` text NOT NULL,
  `goal_mov` text NOT NULL,
  `goal_ai` text NOT NULL,
  `objective_summary` text NOT NULL,
  `objective_ovi` text NOT NULL,
  `objective_mov` text NOT NULL,
  `objective_ai` text NOT NULL,
  `output_summary` text NOT NULL,
  `output_ovi` text NOT NULL,
  `output_mov` text NOT NULL,
  `output_ai` text NOT NULL,
  `input_summary` text NOT NULL,
  `input_ovi` text NOT NULL,
  `input_mov` text NOT NULL,
  `input_ai` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `project_log_frame`
--

INSERT INTO `project_log_frame` (`id`, `pid`, `goal_summary`, `goal_ovi`, `goal_mov`, `goal_ai`, `objective_summary`, `objective_ovi`, `objective_mov`, `objective_ai`, `output_summary`, `output_ovi`, `output_mov`, `output_ai`, `input_summary`, `input_ovi`, `input_mov`, `input_ai`) VALUES
(1, 21, 'dsf', 'df', 'sdfgdgfdg', 'dfgsdfg', 'sdf', 'dfg', 'xcv', 'gsdfg', 'd', 'sfdg', 'fgb', 'sdfgsdfg', 'dsfg', 'Harun', 'dsfgsdfg', 'sdfgsdfg'),
(2, 28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project_major_items`
--

CREATE TABLE IF NOT EXISTS `project_major_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `annex_id` int(11) NOT NULL,
  `basis` text NOT NULL,
  `basis_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `project_major_items`
--

INSERT INTO `project_major_items` (`id`, `pid`, `annex_id`, `basis`, `basis_date`) VALUES
(5, 25, 130, 'Harun', '2014-07-14'),
(6, 25, 131, 'Junayeed', '2014-07-26'),
(7, 28, 151, 'harun3', '2014-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `project_major_items_comparative_cost`
--

CREATE TABLE IF NOT EXISTS `project_major_items_comparative_cost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `annex_id` int(11) NOT NULL,
  `unit_cost_ongoing` text NOT NULL,
  `unit_cost_completed` text NOT NULL,
  `remarks` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `project_major_items_comparative_cost`
--

INSERT INTO `project_major_items_comparative_cost` (`id`, `pid`, `annex_id`, `unit_cost_ongoing`, `unit_cost_completed`, `remarks`) VALUES
(1, 28, 151, '344444444444444', '5555555555555555555', 'dfssdfsdsdfrrrrrrrrrrrrrrrrrrrrr');

-- --------------------------------------------------------

--
-- Table structure for table `project_management`
--

CREATE TABLE IF NOT EXISTS `project_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_of_the_post` varchar(512) NOT NULL,
  `qty` int(11) NOT NULL,
  `qualification` text NOT NULL,
  `amount` double NOT NULL,
  `responsibility` text NOT NULL,
  `attachment` text NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `project_management`
--

INSERT INTO `project_management` (`id`, `name_of_the_post`, `qty`, `qualification`, `amount`, `responsibility`, `attachment`, `pid`) VALUES
(35, 'Software Engineer', 23, 'sdsaf', 3000, 'sdafas sad fasd', '22', 23);

-- --------------------------------------------------------

--
-- Table structure for table `project_messages`
--

CREATE TABLE IF NOT EXISTS `project_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `msg` text NOT NULL,
  `doc_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msg_from` varchar(100) NOT NULL,
  `msg_from_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `project_messages`
--

INSERT INTO `project_messages` (`id`, `pid`, `title`, `msg`, `doc_id`, `create_date`, `msg_from`, `msg_from_id`) VALUES
(5, 25, 'hdd', 'sdsdsd', 7, '2014-08-02 13:51:58', 'Ministry', 17),
(6, 25, 'xxxx', 'assss', 8, '2014-08-02 14:07:27', 'Ministry', 17),
(7, 25, 'fff', 'dddd', 9, '2014-08-02 15:41:31', 'Ministry', 17),
(8, 24, 'Harun', 'Harun asdfadas', 23, '2014-08-08 00:31:35', 'Agency', 26),
(9, 24, 'Test Again', 'Valo lage na\r\n\r\n\r\nValo lage na', 24, '2014-08-08 00:38:32', 'Agency', 26);

-- --------------------------------------------------------

--
-- Table structure for table `project_ministries`
--

CREATE TABLE IF NOT EXISTS `project_ministries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `ministry_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `project_ministries`
--

INSERT INTO `project_ministries` (`id`, `pid`, `ministry_id`) VALUES
(85, 20, 1),
(91, 26, 6),
(93, 24, 2),
(97, 28, 2),
(98, 30, 2),
(99, 27, 2),
(100, 25, 2),
(106, 23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `project_mode_financing`
--

CREATE TABLE IF NOT EXISTS `project_mode_financing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `loan_gob` double NOT NULL,
  `loan_gob_fe` double NOT NULL,
  `loan_pa` double NOT NULL,
  `loan_rpa` double NOT NULL,
  `loan_own_fund` double NOT NULL,
  `loan_own_fund_fe` double NOT NULL,
  `loan_others` double NOT NULL,
  `loan_others_fe` double NOT NULL,
  `loan_pa_source` text NOT NULL,
  `grant_gob` double NOT NULL,
  `grant_gob_fe` double NOT NULL,
  `grant_pa` double NOT NULL,
  `grant_rpa` double NOT NULL,
  `grant_own_fund` double NOT NULL,
  `grant_own_fund_fe` double NOT NULL,
  `grant_others` double NOT NULL,
  `grant_others_fe` double NOT NULL,
  `grant_pa_source` text NOT NULL,
  `equity_gob` double NOT NULL,
  `equity_gob_fe` double NOT NULL,
  `equity_pa` double NOT NULL,
  `equity_pa_rpa` double NOT NULL,
  `equity_own_fund` double NOT NULL,
  `equity_own_fund_fe` double NOT NULL,
  `equity_others` double NOT NULL,
  `equity_others_fe` double NOT NULL,
  `equity_pa_sources` double NOT NULL,
  `others_gob` double NOT NULL,
  `others_gob_fe` double NOT NULL,
  `others_pa` double NOT NULL,
  `others_pa_rpa` double NOT NULL,
  `others_own_fund` double NOT NULL,
  `others_own_fund_fe` double NOT NULL,
  `others_others` double NOT NULL,
  `others_others_fe` double NOT NULL,
  `others_pa_sources` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `project_mode_financing`
--

INSERT INTO `project_mode_financing` (`id`, `pid`, `loan_gob`, `loan_gob_fe`, `loan_pa`, `loan_rpa`, `loan_own_fund`, `loan_own_fund_fe`, `loan_others`, `loan_others_fe`, `loan_pa_source`, `grant_gob`, `grant_gob_fe`, `grant_pa`, `grant_rpa`, `grant_own_fund`, `grant_own_fund_fe`, `grant_others`, `grant_others_fe`, `grant_pa_source`, `equity_gob`, `equity_gob_fe`, `equity_pa`, `equity_pa_rpa`, `equity_own_fund`, `equity_own_fund_fe`, `equity_others`, `equity_others_fe`, `equity_pa_sources`, `others_gob`, `others_gob_fe`, `others_pa`, `others_pa_rpa`, `others_own_fund`, `others_own_fund_fe`, `others_others`, `others_others_fe`, `others_pa_sources`) VALUES
(7, 20, 1, 4, 2, 12, 45, 43, 5, 3, 'undp', 2, 65, 7, 23, 6, 12, 4, 54, 'dds asd', 5, 5, 5, 5, 6, 6, 5, 465, 65, 67, 57, 578, 6786, 78, 6786, 786, 78, 678),
(8, 23, 0, 0, 33, 0, 0, 0, 12, 0, '', 17.03, 19.43, 37, 29, 12.87, 15.78, 11.77, 11.75, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 26, 0, 0, 0, 0, 0, 0, 0, 0, '', 243, 0, 20, 20, 8, 0, 9, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 24, 438, 438, 1304, 866, 438, 438, 438, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 28, 0, 1, 3, 2, 1, 1, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 30, 300, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 27, 14, 0, 121, 121, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 25, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_procurement_plans`
--

CREATE TABLE IF NOT EXISTS `project_procurement_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `package_no` varchar(64) NOT NULL,
  `procurement_desc` text NOT NULL,
  `procurement_unit` varchar(16) NOT NULL,
  `procurement_qty` double NOT NULL,
  `procurement_method` varchar(64) NOT NULL,
  `procurement_type` varchar(64) NOT NULL,
  `approv_auth` varchar(64) NOT NULL,
  `fund_src` varchar(256) NOT NULL,
  `estd_cost` double NOT NULL,
  `tender_invitation` date NOT NULL,
  `contract_sign` date NOT NULL,
  `contract_completion` date NOT NULL,
  `procurement_category` enum('Goods','Works','Services') NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `project_procurement_plans`
--

INSERT INTO `project_procurement_plans` (`id`, `pid`, `package_no`, `procurement_desc`, `procurement_unit`, `procurement_qty`, `procurement_method`, `procurement_type`, `approv_auth`, `fund_src`, `estd_cost`, `tender_invitation`, `contract_sign`, `contract_completion`, `procurement_category`, `create_date`) VALUES
(4, 23, '22', 'sdf asdfjkaklsd fklasjd flasj dfkla', 'LS', 3, 'DPM', 'NCT', '', '', 46, '0000-00-00', '2014-07-14', '2014-07-07', 'Goods', '2014-08-07'),
(5, 23, '34', '342\r\nddd\r\n\r\n\r\nsadasd', 'ff', 4, 'RTM', 'INT', '', '', 5, '0000-00-00', '2014-07-08', '2014-07-15', 'Goods', '2014-08-07'),
(6, 23, '43', 'asdf sd fsdf asd', 'ggg', 5, 'OTM', 'INT', '', '', 4, '0000-00-00', '2014-07-15', '2014-08-03', 'Goods', '2014-08-07'),
(11, 23, 'xxxx', 'sdfas', '44', 1, 'TSTM', 'INT', '', '', 55, '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-07-18'),
(12, 23, '4', 'asdfa', '4', 1, 'RFQM', 'NCT', '', '', 5, '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-07-18'),
(13, 23, 'zzz', 'sfas', '4', 3, 'OTM', 'NCT', '', '', 48, '0000-00-00', '0000-00-00', '0000-00-00', 'Services', '2014-07-18'),
(14, 23, '999', 'sdfasd', '3', 5, 'TSTM', 'INT', '', '', 5, '0000-00-00', '0000-00-00', '0000-00-00', 'Services', '2014-07-18'),
(15, 0, '', '', '', 0, '', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '0000-00-00'),
(16, 0, '', '', '', 0, '', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '0000-00-00'),
(17, 0, '', '', '', 0, '', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '0000-00-00'),
(18, 0, '', '', '', 0, '', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '0000-00-00'),
(19, 24, '1', 'sadjfhas\r\nsdafhasdfj\r\nasdfasdfjh\r\nasdfhasdfj\r\nasdfashdj', '3', 4, 'DPM', 'NCT', '4', '5', 6, '0000-00-00', '2014-08-05', '2014-08-11', 'Goods', '2014-08-04'),
(20, 30, '2', 'sdfasdf sdfsdf', '44s', 4, 'DPM', 'NCT', 'fasdfsdfasd  dd', 'sdfds', 34, '0000-00-00', '2014-08-13', '2014-08-11', 'Goods', '2014-08-04'),
(21, 30, '22', '2\r\n3   \r\n\r\n\r\nddddd', '35', 3, 'DPM', 'NCT', '345', '5', 55, '0000-00-00', '2014-08-11', '2014-08-11', 'Goods', '2014-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `project_status`
--

CREATE TABLE IF NOT EXISTS `project_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `project_status`
--

INSERT INTO `project_status` (`id`, `pid`, `status`, `date`) VALUES
(3, 27, 'Draff', '2014-08-01 01:26:29'),
(4, 24, 'Draff', '2014-08-01 01:36:59'),
(5, 24, 'Returned from Ministry', '2014-08-01 01:37:57'),
(6, 24, 'Forwarded to Ministry', '2014-08-01 02:05:22'),
(7, 21, 'Draff', '2014-08-01 22:11:50'),
(8, 22, 'Draff', '2014-08-01 22:11:50'),
(9, 24, 'Draff', '2014-08-01 22:11:50'),
(10, 28, 'Draff', '2014-08-01 22:11:50'),
(11, 30, 'Draff', '2014-08-01 22:11:50'),
(12, 31, 'Draff', '2014-08-01 22:11:50'),
(13, 28, 'Forwarded to Ministry', '2014-08-01 22:13:09'),
(14, 28, 'Forwarded to Commission', '2014-08-01 22:25:37'),
(15, 27, 'Forwarded to Ministry', '2014-08-01 22:52:27'),
(16, 27, 'Returned from Ministry', '2014-08-01 23:08:49'),
(17, 27, 'Forwarded to Ministry', '2014-08-01 23:10:08'),
(18, 27, 'Forwarded to Commission', '2014-08-01 23:10:37'),
(19, 27, 'Returned from Commission', '2014-08-01 23:19:16'),
(20, 27, 'Forwarded to Commission', '2014-08-01 23:33:41'),
(21, 25, 'Forwarded to Ministry', '2014-08-02 13:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `sector_division_lookup`
--

CREATE TABLE IF NOT EXISTS `sector_division_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sector_division_lookup`
--

INSERT INTO `sector_division_lookup` (`id`, `name`, `status`) VALUES
(1, 'Physical Infrastructure Division', 'Active'),
(2, 'Socio Economic Infrastructure Division', 'Active'),
(3, 'Industry and Energy Division', 'Active'),
(4, 'Agriculture, Water Resource and Rural Institution Division', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `upzila_lookup`
--

CREATE TABLE IF NOT EXISTS `upzila_lookup` (
  `upzila_id` int(11) NOT NULL AUTO_INCREMENT,
  `div_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `upzila_name` varchar(200) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`upzila_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=557 ;

--
-- Dumping data for table `upzila_lookup`
--

INSERT INTO `upzila_lookup` (`upzila_id`, `div_id`, `district_id`, `upzila_name`, `status`) VALUES
(1, 30, 5, 'Dhaka North City Corporation (DNCC)', 'Active'),
(2, 30, 5, 'Dhaka South City Corporation (DSCC)', 'Active'),
(3, 50, 4, 'Gabtoli Pourashova', 'Active'),
(4, 50, 4, 'Bogra sadar', 'Active'),
(5, 10, 3, 'Amtali Upazila', 'Active'),
(6, 10, 3, 'Amtali Pourashova', 'Active'),
(7, 10, 3, 'Betagi Pourashova', 'Active'),
(8, 10, 3, 'Patharghata Pourashova', 'Active'),
(9, 10, 3, 'Barguna Sadar Pourashova', 'Active'),
(10, 10, 3, 'Bamna Upazila', 'Active'),
(11, 10, 3, 'Barguna Sadar Upazila', 'Active'),
(12, 10, 3, 'Betagi Upazila', 'Active'),
(13, 10, 3, 'Patharghata Upazila', 'Active'),
(14, 10, 3, 'Taltoli Upazila', 'Active'),
(15, 10, 7, 'Agailjhara Upazila', 'Active'),
(16, 10, 7, 'Bakerganj Pourashova', 'Active'),
(17, 10, 7, 'Banaripara Pourashova', 'Active'),
(18, 10, 7, 'Gournadi Pourashova', 'Active'),
(19, 10, 7, 'Mehendiganj Pourashova', 'Active'),
(20, 10, 7, 'Muladi Pourashova', 'Active'),
(21, 10, 7, 'Babuganj Upazila', 'Active'),
(22, 10, 7, 'Barisal City Corporation (BCC)', 'Active'),
(23, 10, 7, 'Bakerganj Upazila', 'Active'),
(24, 10, 7, 'Banaripara Upazila', 'Active'),
(25, 10, 7, 'Gaurnadi Upazila', 'Active'),
(26, 10, 7, 'Hizla Upazila', 'Active'),
(27, 10, 7, 'Barisal Sadar Upazila', 'Active'),
(28, 10, 7, 'Mehendiganj Upazila', 'Active'),
(29, 10, 7, 'Muladi Upazila', 'Active'),
(30, 10, 7, 'Wazirpur Upazila', 'Active'),
(31, 10, 8, 'Bhola Sadar Upazila', 'Active'),
(32, 10, 8, 'Bhola Sadar Pourashova', 'Active'),
(33, 10, 8, 'Daulatkhan Pourashova', 'Active'),
(34, 10, 8, 'Burhanuddin Pourashova', 'Active'),
(35, 10, 8, 'Lalmohan Pourashova', 'Active'),
(36, 10, 8, 'Charfasson Pourashova', 'Active'),
(37, 10, 8, 'Burhanuddin Upazila', 'Active'),
(38, 10, 8, 'Char Fasson Upazila', 'Active'),
(39, 10, 8, 'Daulatkhan Upazila', 'Active'),
(40, 10, 8, 'Lalmohan Upazila', 'Active'),
(41, 10, 8, 'Manpura Upazila', 'Active'),
(42, 10, 8, 'Tazumuddin Upazila', 'Active'),
(43, 10, 9, 'Jhalokati Sadar Upazila', 'Active'),
(44, 10, 9, 'Kathalia Upazila', 'Active'),
(45, 10, 9, 'Nalchity Upazila', 'Active'),
(46, 10, 9, 'Rajapur Upazila', 'Active'),
(47, 10, 10, 'Bauphal Upazila', 'Active'),
(48, 10, 10, 'Dashmina Upazila', 'Active'),
(49, 10, 10, 'Galachipa Upazila', 'Active'),
(50, 10, 10, 'Kalapara Upazila', 'Active'),
(51, 10, 10, 'Mirzaganj Upazila', 'Active'),
(52, 10, 10, 'Patuakhali Sadar Upazila', 'Active'),
(53, 10, 10, 'Rangabali Upazila', 'Active'),
(54, 10, 10, 'Dumki Upazila', 'Active'),
(55, 10, 11, 'Bhandaria Upazila', 'Active'),
(56, 10, 11, 'Kawkhali Upazila', 'Active'),
(57, 10, 11, 'Mathbaria Upazila', 'Active'),
(58, 10, 11, 'Nazirpur Upazila', 'Active'),
(59, 10, 11, 'Pirojpur Sadar Upazila', 'Active'),
(60, 10, 11, 'Nesarabad (Swarupkati) Upazila', 'Active'),
(61, 10, 11, 'Zianagor Upazila', 'Active'),
(62, 20, 2, 'Ali Kadam Upazila', 'Active'),
(63, 20, 2, 'Bandarban Pourashova', 'Active'),
(64, 20, 2, 'Lama Pourashova', 'Active'),
(65, 20, 2, 'Bandarban Sadar Upazila', 'Active'),
(66, 20, 2, 'Lama Upazila', 'Active'),
(67, 20, 2, 'Naikhongchhari Upazila', 'Active'),
(68, 20, 2, 'Rowangchhari Upazila', 'Active'),
(69, 20, 2, 'Ruma Upazila', 'Active'),
(70, 20, 2, 'Thanchi Upazila', 'Active'),
(71, 20, 12, 'Akhaura Upazila', 'Active'),
(72, 20, 12, 'Bancharampur Upazila', 'Active'),
(73, 20, 12, 'Brahmanbaria Sadar Upazila', 'Active'),
(74, 20, 12, 'Kasba Upazila', 'Active'),
(75, 20, 12, 'Nabinagar Upazila', 'Active'),
(76, 20, 12, 'Nasirnagar Upazila', 'Active'),
(77, 20, 12, 'Sarail Upazila', 'Active'),
(78, 20, 12, 'Ashuganj Upazila', 'Active'),
(79, 20, 12, 'Bijoynagar Upazila', 'Active'),
(80, 20, 13, 'Chandpur Sadar Upazila', 'Active'),
(81, 20, 13, 'Faridganj Upazila', 'Active'),
(82, 20, 13, 'Haimchar Upazila', 'Active'),
(83, 20, 13, 'Haziganj Upazila', 'Active'),
(84, 20, 13, 'Kachua Upazila', 'Active'),
(85, 20, 13, 'Matlab Dakshin Upazila', 'Active'),
(86, 20, 13, 'Matlab Uttar Upazila', 'Active'),
(87, 20, 13, 'Shahrasti Upazila', 'Active'),
(88, 20, 14, 'Anwara Upazila', 'Active'),
(89, 20, 14, 'Banshkhali Upazila', 'Active'),
(90, 20, 14, 'Boalkhali Upazila', 'Active'),
(91, 20, 14, 'Chittagong City Corporation (CCC)', 'Active'),
(92, 20, 14, 'Chandanaish Upazila', 'Active'),
(93, 20, 14, 'Fatikchhari Upazila', 'Active'),
(94, 20, 14, 'Hathazari Upazila', 'Active'),
(95, 20, 14, 'Lohagara Upazila', 'Active'),
(96, 20, 14, 'Mirsharai Upazila', 'Active'),
(97, 20, 14, 'Patiya Upazila', 'Active'),
(98, 20, 14, 'Rangunia Upazila', 'Active'),
(99, 20, 14, 'Raozan Upazila', 'Active'),
(100, 20, 14, 'Sandwip Upazila', 'Active'),
(101, 20, 14, 'Satkania Upazila', 'Active'),
(102, 20, 14, 'Sitakunda Upazila', 'Active'),
(103, 20, 14, 'Bandor (Chittagong Port) Thana', 'Active'),
(104, 20, 14, 'Chandgaon Thana', 'Active'),
(105, 20, 14, 'Double Morring Thana', 'Active'),
(106, 20, 14, 'Kotwali Thana', 'Active'),
(107, 20, 14, 'Pahartali Thana', 'Active'),
(108, 20, 14, 'Panchlaish Thana', 'Active'),
(109, 20, 15, 'Barura Upazila', 'Active'),
(110, 20, 15, 'Brahmanpara Upazila', 'Active'),
(111, 20, 15, 'Comilla City Corporation (COCC)', 'Active'),
(112, 20, 15, 'Burichong Upazila', 'Active'),
(113, 20, 15, 'Chandina Upazila', 'Active'),
(114, 20, 15, 'Chauddagram Upazila', 'Active'),
(115, 20, 15, 'Daudkandi Upazila', 'Active'),
(116, 20, 15, 'Debidwar Upazila', 'Active'),
(117, 20, 15, 'Homna Upazila', 'Active'),
(118, 20, 15, 'Laksam Upazila', 'Active'),
(119, 20, 15, 'Muradnagar Upazila', 'Active'),
(120, 20, 15, 'Nangalkot Upazila', 'Active'),
(121, 20, 15, 'Comilla Sadar Upazila', 'Active'),
(122, 20, 15, 'Meghna Upazila', 'Active'),
(123, 20, 15, 'Titas Upazila', 'Active'),
(124, 20, 15, 'Monohargonj Upazila', 'Active'),
(125, 20, 15, 'Sadar South Upazila', 'Active'),
(126, 20, 16, 'Chakaria Upazila', 'Active'),
(127, 20, 16, 'Cox''s Bazar Sadar Upazila', 'Active'),
(128, 20, 16, 'Kutubdia Upazila', 'Active'),
(129, 20, 16, 'Maheshkhali Upazila', 'Active'),
(130, 20, 16, 'Ramu Upazila', 'Active'),
(131, 20, 16, 'Teknaf Upazila', 'Active'),
(132, 20, 16, 'Ukhia Upazila', 'Active'),
(133, 20, 16, 'Pekua Upazila', 'Active'),
(134, 20, 17, 'Chhagalnaiya Upazila', 'Active'),
(135, 20, 17, 'Daganbhuiyan Upazila', 'Active'),
(136, 20, 17, 'Feni Sadar Upazila', 'Active'),
(137, 20, 17, 'Parshuram Upazila', 'Active'),
(138, 20, 17, 'Sonagazi Upazila', 'Active'),
(139, 20, 17, 'Fulgazi Upazila', 'Active'),
(140, 20, 18, 'Dighinala Upazila', 'Active'),
(141, 20, 18, 'Khagrachhari Upazila', 'Active'),
(142, 20, 18, 'Lakshmichhari Upazila', 'Active'),
(143, 20, 18, 'Mahalchhari Upazila', 'Active'),
(144, 20, 18, 'Manikchhari Upazila', 'Active'),
(145, 20, 18, 'Matiranga Upazila', 'Active'),
(146, 20, 18, 'Panchhari Upazila', 'Active'),
(147, 20, 18, 'Ramgarh Upazila', 'Active'),
(148, 20, 19, 'Lakshmipur Sadar Upazila', 'Active'),
(149, 20, 19, 'Raipur Upazila', 'Active'),
(150, 20, 19, 'Ramganj Upazila', 'Active'),
(151, 20, 19, 'Ramgati Upazila', 'Active'),
(152, 20, 19, 'Komolnagar Upazila', 'Active'),
(153, 20, 20, 'Begumganj Upazila', 'Active'),
(154, 20, 20, 'Noakhali Sadar Upazila', 'Active'),
(155, 20, 20, 'Chatkhil Upazila', 'Active'),
(156, 20, 20, 'Companiganj Upazila', 'Active'),
(157, 20, 20, 'Hatiya Upazila', 'Active'),
(158, 20, 20, 'Senbagh Upazila', 'Active'),
(159, 20, 20, 'Sonaimuri Upazila', 'Active'),
(160, 20, 20, 'Subarnachar Upazila', 'Active'),
(161, 20, 20, 'Kabirhat Upazila', 'Active'),
(162, 20, 21, 'Bagaichhari Upazila', 'Active'),
(163, 20, 21, 'Barkal Upazila', 'Active'),
(164, 20, 21, 'Kawkhali (Betbunia) Upazila', 'Active'),
(165, 20, 21, 'Belaichhari Upazila', 'Active'),
(166, 20, 21, 'Kaptai Upazila', 'Active'),
(167, 20, 21, 'Juraichhari Upazila', 'Active'),
(168, 20, 21, 'Langadu Upazila', 'Active'),
(169, 20, 21, 'Naniyachar Upazila', 'Active'),
(170, 20, 21, 'Rajasthali Upazila', 'Active'),
(171, 20, 21, 'Rangamati Sadar Upazila', 'Active'),
(172, 30, 5, 'Dhamrai Upazila', 'Active'),
(173, 30, 5, 'Dohar Upazila', 'Active'),
(174, 30, 5, 'Keraniganj Upazila', 'Active'),
(175, 30, 5, 'Nawabganj Upazila', 'Active'),
(176, 30, 5, 'Savar Upazila', 'Active'),
(177, 30, 22, 'Alfadanga Upazila', 'Active'),
(178, 30, 22, 'Bhanga Upazila', 'Active'),
(179, 30, 22, 'Boalmari Upazila', 'Active'),
(180, 30, 22, 'Charbhadrasan Upazila', 'Active'),
(181, 30, 22, 'Faridpur Sadar Upazila', 'Active'),
(182, 30, 22, 'Madhukhali Upazila', 'Active'),
(183, 30, 22, 'Nagarkanda Upazila', 'Active'),
(184, 30, 22, 'Sadarpur Upazila', 'Active'),
(185, 33, 22, 'Saltha Upazila', 'Active'),
(186, 30, 23, 'Gazipur Sadar Upazila', 'Active'),
(187, 30, 23, 'Gazipur City Corporation (GCC)', 'Active'),
(188, 30, 23, 'Kaliakair Upazila', 'Active'),
(189, 30, 23, 'Kaliganj Upazila', 'Active'),
(190, 30, 23, 'Kapasia Upazila', 'Active'),
(191, 30, 23, 'Sreepur Upazila', 'Active'),
(192, 30, 24, 'Gopalganj Sadar Upazila', 'Active'),
(193, 30, 24, 'Kashiani Upazila', 'Active'),
(194, 30, 24, 'Kotalipara Upazila', 'Active'),
(195, 30, 24, 'Muksudpur Upazila', 'Active'),
(196, 30, 24, 'Tungipara Upazila', 'Active'),
(197, 30, 25, 'Baksiganj Upazila', 'Active'),
(198, 30, 25, 'Dewanganj Upazila', 'Active'),
(199, 30, 25, 'Islampur Upazila', 'Active'),
(200, 30, 25, 'Jamalpur Sadar Upazila', 'Active'),
(201, 30, 25, 'Madarganj Upazila', 'Active'),
(202, 30, 25, 'Melandaha Upazila', 'Active'),
(203, 30, 25, 'Sarishabari Upazila', 'Active'),
(204, 30, 26, 'Astagram Upazila', 'Active'),
(205, 30, 26, 'Bajitpur Upazila', 'Active'),
(206, 30, 26, 'Bhairab Upazila', 'Active'),
(207, 30, 26, 'Hossainpur Upazila', 'Active'),
(208, 30, 26, 'Itna Upazila', 'Active'),
(209, 30, 26, 'Karimganj Upazila', 'Active'),
(210, 30, 26, 'Katiadi Upazila', 'Active'),
(211, 30, 26, 'Kishoreganj Sadar Upazila', 'Active'),
(212, 30, 26, 'Kuliarchar Upazila', 'Active'),
(213, 30, 26, 'Mithamain Upazila', 'Active'),
(214, 30, 26, 'Nikli Upazila', 'Active'),
(215, 30, 26, 'Pakundia Upazila', 'Active'),
(216, 30, 26, 'Tarail Upazila', 'Active'),
(217, 30, 27, 'Rajoir Upazila', 'Active'),
(218, 30, 27, 'Madaripur Sadar Upazila', 'Active'),
(219, 30, 27, 'Kalkini Upazila', 'Active'),
(220, 30, 27, 'Shibchar Upazila', 'Active'),
(221, 30, 28, 'Daulatpur Upazila', 'Active'),
(222, 30, 28, 'Ghior Upazila', 'Active'),
(223, 30, 28, 'Harirampur Upazila', 'Active'),
(224, 30, 28, 'Manikgonj Sadar Upazila', 'Active'),
(225, 30, 28, 'Saturia Upazila', 'Active'),
(226, 30, 28, 'Shivalaya Upazila', 'Active'),
(227, 30, 28, 'Singair Upazila', 'Active'),
(228, 30, 29, 'Gazaria Upazila', 'Active'),
(229, 30, 29, 'Lohajang Upazila', 'Active'),
(230, 30, 29, 'Munshiganj Sadar Upazila', 'Active'),
(231, 30, 29, 'Sirajdikhan Upazila', 'Active'),
(232, 30, 29, 'Sreenagar Upazila', 'Active'),
(233, 30, 29, 'Tongibari Upazila', 'Active'),
(234, 30, 30, 'Bhaluka Upazila', 'Active'),
(235, 30, 30, 'Dhobaura Upazila', 'Active'),
(236, 30, 30, 'Fulbaria Upazila', 'Active'),
(237, 30, 30, 'Gaffargaon Upazila', 'Active'),
(238, 30, 30, 'Gauripur Upazila', 'Active'),
(239, 30, 30, 'Haluaghat Upazila', 'Active'),
(240, 30, 30, 'Ishwarganj Upazila', 'Active'),
(241, 30, 30, 'Mymensingh Sadar Upazila', 'Active'),
(242, 30, 30, 'Muktagachha Upazila', 'Active'),
(243, 30, 30, 'Nandail Upazila', 'Active'),
(244, 30, 30, 'Phulpur Upazila', 'Active'),
(245, 30, 30, 'Trishal Upazila', 'Active'),
(246, 30, 30, 'Tara Khanda Upazila', 'Active'),
(247, 30, 31, 'Araihazar Upazila', 'Active'),
(248, 30, 31, 'Narayanganj City Corporation (NCC)', 'Active'),
(249, 30, 31, 'Bandar Upazila', 'Active'),
(250, 30, 31, 'Narayanganj Sadar Upazila', 'Active'),
(251, 30, 31, 'Rupganj Upazila', 'Active'),
(252, 30, 31, 'Sonargaon Upazila', 'Active'),
(253, 30, 31, 'Fatullah Upazila', 'Active'),
(254, 30, 31, 'Siddhirganj Upazila', 'Active'),
(255, 30, 32, 'Atpara Upazila', 'Active'),
(256, 30, 32, 'Netrakona Pouroshova', 'Active'),
(257, 30, 32, 'Mohongonj Pouroshova', 'Active'),
(258, 30, 32, 'Durgapur Pouroshova', 'Active'),
(259, 30, 32, 'Kendhua Pouroshova', 'Active'),
(260, 30, 32, 'Modon Pouroshova', 'Active'),
(261, 30, 32, 'Purbadhola Pouroshova', 'Active'),
(262, 30, 32, 'Barhatta Upazila', 'Active'),
(263, 30, 32, 'Durgapur Upazila', 'Active'),
(264, 30, 32, 'Khaliajuri Upazila', 'Active'),
(265, 30, 32, 'Kalmakanda Upazila', 'Active'),
(266, 30, 32, 'Kendua Upazila', 'Active'),
(267, 30, 32, 'Madan Upazila', 'Active'),
(268, 30, 32, 'Mohanganj Upazila', 'Active'),
(269, 30, 32, 'Netrokona Sadar Upazila', 'Active'),
(270, 30, 32, 'Purbadhala Upazila', 'Active'),
(271, 30, 33, 'Baliakandi Upazila', 'Active'),
(272, 30, 33, 'Goalandaghat Upazila', 'Active'),
(273, 30, 33, 'Pangsha Upazila', 'Active'),
(274, 30, 33, 'Rajbari Sadar Upazila', 'Active'),
(275, 30, 33, 'Kalukhali Upazila', 'Active'),
(276, 30, 34, 'Bhedarganj Upazila', 'Active'),
(277, 30, 34, 'Damudya Upazila', 'Active'),
(278, 30, 34, 'Gosairhat Upazila', 'Active'),
(279, 30, 34, 'Naria Upazila', 'Active'),
(280, 30, 34, 'Shariatpur Sadar Upazila', 'Active'),
(281, 30, 34, 'Zanjira Upazila', 'Active'),
(282, 30, 34, 'Shakhipur Upazila', 'Active'),
(283, 30, 35, 'Jhenaigati Upazila', 'Active'),
(284, 30, 35, 'Nakla Upazila', 'Active'),
(285, 30, 35, 'Nalitabari Upazila', 'Active'),
(286, 30, 35, 'Sherpur Sadar Upazila', 'Active'),
(287, 30, 35, 'Sreebardi Upazila', 'Active'),
(288, 30, 36, 'Gopalpur Upazila', 'Active'),
(289, 30, 36, 'Basail Upazila', 'Active'),
(290, 30, 36, 'Bhuapur Upazila', 'Active'),
(291, 30, 36, 'Delduar Upazila', 'Active'),
(292, 30, 36, 'Ghatail Upazila', 'Active'),
(293, 30, 36, 'Kalihati Upazila', 'Active'),
(294, 30, 36, 'Madhupur Upazila', 'Active'),
(295, 30, 36, 'Mirzapur Upazila', 'Active'),
(296, 30, 36, 'Nagarpur Upazila', 'Active'),
(297, 30, 36, 'Sakhipur Upazila', 'Active'),
(298, 30, 36, 'Dhanbari Upazila', 'Active'),
(299, 30, 36, 'Tangail Sadar Upazila', 'Active'),
(300, 30, 37, 'Narsingdi Sadar Upazila', 'Active'),
(301, 30, 37, 'Belabo Upazila', 'Active'),
(302, 30, 37, 'Monohardi Upazila', 'Active'),
(303, 30, 37, 'Palash Upazila', 'Active'),
(304, 30, 37, 'Raipura Upazila', 'Active'),
(305, 30, 37, 'Shibpur Upazila', 'Active'),
(306, 40, 1, 'Bagerhat Sadar Upazila', 'Active'),
(307, 40, 1, 'Mongla Pouroshova', 'Active'),
(308, 40, 1, 'Morrelganj Pouroshova', 'Active'),
(309, 40, 1, 'Bagherhat Pouroshova', 'Active'),
(310, 40, 1, 'Chitalmari Upazila', 'Active'),
(311, 40, 1, 'Fakirhat Upazila', 'Active'),
(312, 40, 1, 'Kachua Upazila', 'Active'),
(313, 40, 1, 'Mollahat Upazila', 'Active'),
(314, 40, 1, 'Mongla Upazila', 'Active'),
(315, 40, 1, 'Morrelganj Upazila', 'Active'),
(316, 40, 1, 'Rampal Upazila', 'Active'),
(317, 40, 1, 'Sarankhola Upazila', 'Active'),
(318, 40, 38, 'Alamdanga Upazila', 'Active'),
(319, 40, 38, 'Chuadanga Sadar Upazila', 'Active'),
(320, 40, 38, 'Damurhuda Upazila', 'Active'),
(321, 40, 38, 'Jibannagar Upazila', 'Active'),
(322, 40, 39, 'Abhaynagar Upazila', 'Active'),
(323, 40, 39, 'Bagherpara Upazila', 'Active'),
(324, 40, 39, 'Chaugachha Upazila', 'Active'),
(325, 40, 39, 'Jhikargachha Upazila', 'Active'),
(326, 40, 39, 'Keshabpur Upazila', 'Active'),
(327, 40, 39, 'Jessore Sadar Upazila', 'Active'),
(328, 40, 39, 'Manirampur Upazila', 'Active'),
(329, 40, 39, 'Sharsha Upazila', 'Active'),
(330, 40, 40, 'Harinakunda Upazila', 'Active'),
(331, 40, 40, 'Jhenaidah Sadar Upazila', 'Active'),
(332, 40, 40, 'Kaliganj Upazila', 'Active'),
(333, 40, 40, 'Kotchandpur Upazila', 'Active'),
(334, 40, 40, 'Maheshpur Upazila', 'Active'),
(335, 40, 40, 'Shailkupa Upazila', 'Active'),
(336, 40, 41, 'Batiaghata Upazila', 'Active'),
(337, 40, 41, 'Dacope Upazila', 'Active'),
(338, 40, 41, 'Dumuria Upazila', 'Active'),
(339, 40, 41, 'Khulna City Corporation (KCC)', 'Active'),
(340, 40, 41, 'Dighalia Upazila', 'Active'),
(341, 40, 41, 'Koyra Upazila', 'Active'),
(342, 40, 41, 'Paikgachha Upazila', 'Active'),
(343, 40, 41, 'Phultala Upazila', 'Active'),
(344, 40, 41, 'Rupsha Upazila', 'Active'),
(345, 40, 41, 'Terokhada Upazila', 'Active'),
(346, 40, 41, 'Daulatpur Thana', 'Active'),
(347, 40, 41, 'Khalishpur Thana', 'Active'),
(348, 40, 41, 'Khan Jahan Ali Thana', 'Active'),
(349, 40, 41, 'Kotwali Thana', 'Active'),
(350, 40, 41, 'Sonadanga Thana', 'Active'),
(351, 40, 41, 'Harintana Thana', 'Active'),
(352, 40, 42, 'Bheramara Upazila', 'Active'),
(353, 40, 42, 'Daulatpur Upazila', 'Active'),
(354, 40, 42, 'Khoksa Upazila', 'Active'),
(355, 40, 42, 'Kumarkhali Upazila', 'Active'),
(356, 40, 42, 'Kushtia Sadar Upazila', 'Active'),
(357, 40, 42, 'Mirpur Upazila', 'Active'),
(358, 40, 42, 'Shekhpara Upazila', 'Active'),
(359, 40, 43, 'Magura Sadar Upazila', 'Active'),
(360, 40, 43, 'Mohammadpur Upazila', 'Active'),
(361, 40, 43, 'Shalikha Upazila', 'Active'),
(362, 40, 43, 'Sreepur Upazila', 'Active'),
(363, 40, 44, 'Gangni Upazila', 'Active'),
(364, 40, 44, 'Meherpur Sadar Upazila', 'Active'),
(365, 40, 44, 'Mujibnagar Upazila', 'Active'),
(366, 40, 45, 'Kalia Upazila', 'Active'),
(367, 40, 45, 'Lohagara Upazila', 'Active'),
(368, 40, 45, 'Narail Sadar Upazila', 'Active'),
(369, 40, 45, 'Naragati Thana', 'Active'),
(370, 40, 46, 'Assasuni Upazila', 'Active'),
(371, 40, 46, 'Debhata Upazila', 'Active'),
(372, 40, 46, 'Kalaroa Upazila', 'Active'),
(373, 40, 46, 'Kaliganj Upazila', 'Active'),
(374, 40, 46, 'Satkhira Sadar Upazila', 'Active'),
(375, 40, 46, 'Shyamnagar Upazila', 'Active'),
(376, 40, 46, 'Tala Upazila', 'Active'),
(377, 50, 4, 'Adamdighi Upazila', 'Active'),
(378, 50, 4, 'Bogra Pouroshova', 'Active'),
(379, 50, 4, 'Nandigram Pourashova', 'Active'),
(380, 50, 4, 'Dhunot Pourashova', 'Active'),
(381, 50, 4, 'Dupchanchia Pourashova', 'Active'),
(382, 50, 4, 'Sonatola Pourashova', 'Active'),
(383, 50, 4, 'Kahalu Pourashova', 'Active'),
(384, 50, 4, 'Santahar Pourashova', 'Active'),
(385, 50, 4, 'Sariakandi Pourashova', 'Active'),
(386, 50, 4, 'Shibganj Pourashova', 'Active'),
(387, 50, 4, 'Sherpur Pourashova', 'Active'),
(388, 50, 4, 'Dhunat Upazila', 'Active'),
(389, 50, 4, 'Dhupchanchia Upazila', 'Active'),
(390, 50, 4, 'Gabtali Upazila', 'Active'),
(391, 50, 4, 'Kahaloo Upazila', 'Active'),
(392, 50, 4, 'Nandigram Upazila', 'Active'),
(393, 50, 4, 'Sariakandi Upazila', 'Active'),
(394, 50, 4, 'Sahajanpur Upazila', 'Active'),
(395, 50, 4, 'Sherpur Upazila', 'Active'),
(396, 50, 4, 'Shibganj Upazila', 'Active'),
(397, 50, 4, 'Sonatola Upazila', 'Active'),
(398, 50, 47, 'Akkelpur Upazila', 'Active'),
(399, 50, 47, 'Joypurhat Sadar Upazila', 'Active'),
(400, 50, 47, 'Kalai Upazila', 'Active'),
(401, 50, 47, 'Khetlal Upazila', 'Active'),
(402, 50, 47, 'Panchbibi Upazila', 'Active'),
(403, 50, 48, 'Atrai Upazila', 'Active'),
(404, 50, 48, 'Badalgachhi Upazila', 'Active'),
(405, 50, 48, 'Manda Upazila', 'Active'),
(406, 50, 48, 'Dhamoirhat Upazila', 'Active'),
(407, 50, 48, 'Mohadevpur Upazila', 'Active'),
(408, 50, 48, 'Naogaon Sadar Upazila', 'Active'),
(409, 50, 48, 'Niamatpur Upazila', 'Active'),
(410, 50, 48, 'Patnitala Upazila', 'Active'),
(411, 50, 48, 'Porsha Upazila', 'Active'),
(412, 50, 48, 'Raninagar Upazila', 'Active'),
(413, 50, 48, 'Sapahar Upazila', 'Active'),
(414, 50, 49, 'Bagatipara Upazila', 'Active'),
(415, 50, 49, 'Baraigram Upazila', 'Active'),
(416, 50, 49, 'Gurudaspur Upazila', 'Active'),
(417, 50, 49, 'Lalpur Upazila', 'Active'),
(418, 50, 49, 'Natore Sadar Upazila', 'Active'),
(419, 50, 49, 'Singra Upazila', 'Active'),
(420, 50, 49, 'Naldanga Upazila', 'Active'),
(421, 50, 50, 'Bholahat Upazila', 'Active'),
(422, 50, 50, 'Gomastapur Upazila', 'Active'),
(423, 50, 50, 'Nachole Upazila', 'Active'),
(424, 50, 50, 'Nawabganj Sadar Upazila', 'Active'),
(425, 50, 50, 'Shibganj Upazila', 'Active'),
(426, 50, 51, 'Atgharia Upazila', 'Active'),
(427, 50, 51, 'Bera Upazila', 'Active'),
(428, 50, 51, 'Bhangura Upazila', 'Active'),
(429, 50, 51, 'Chatmohar Upazila', 'Active'),
(430, 50, 51, 'Faridpur Upazila', 'Active'),
(431, 50, 51, 'Ishwardi Upazila', 'Active'),
(432, 50, 51, 'Pabna Sadar Upazila', 'Active'),
(433, 50, 51, 'Santhia Upazila', 'Active'),
(434, 50, 51, 'Sujanagar Upazila', 'Active'),
(435, 50, 51, 'Ataikula Upazila', 'Active'),
(436, 50, 52, 'Bagha Upazila', 'Active'),
(437, 50, 52, 'Bagmara Upazila', 'Active'),
(438, 50, 52, 'Rajshahi City Corporation (RCC)', 'Active'),
(439, 50, 52, 'Charghat Upazila', 'Active'),
(440, 50, 52, 'Durgapur Upazila', 'Active'),
(441, 50, 52, 'Godagari Upazila', 'Active'),
(442, 50, 52, 'Mohanpur Upazila', 'Active'),
(443, 50, 52, 'Paba Upazila', 'Active'),
(444, 50, 52, 'Puthia Upazila', 'Active'),
(445, 50, 52, 'Tanore Upazila', 'Active'),
(446, 50, 52, 'Boalia Thana', 'Active'),
(447, 50, 52, 'Matihar Thana', 'Active'),
(448, 50, 52, 'Rajpara Thana', 'Active'),
(449, 50, 52, 'Shah Mokdum Thana', 'Active'),
(450, 50, 53, 'Belkuchi Upazila', 'Active'),
(451, 50, 53, 'Chauhali Upazila', 'Active'),
(452, 50, 53, 'Kamarkhanda Upazila', 'Active'),
(453, 50, 53, 'Kazipur Upazila', 'Active'),
(454, 50, 53, 'Raiganj Upazila', 'Active'),
(455, 50, 53, 'Shahjadpur Upazila', 'Active'),
(456, 50, 53, 'Sirajganj Sadar Upazila', 'Active'),
(457, 50, 53, 'Tarash Upazila', 'Active'),
(458, 50, 53, 'Ullahpara Upazila', 'Active'),
(459, 60, 6, 'Ajmiriganj Upazila', 'Active'),
(460, 60, 6, 'Bahubal Upazila', 'Active'),
(461, 60, 6, 'Baniyachong Upazila', 'Active'),
(462, 60, 6, 'Chunarughat Upazila', 'Active'),
(463, 60, 6, 'Habiganj Sadar Upazila', 'Active'),
(464, 60, 6, 'Lakhai Upazila', 'Active'),
(465, 60, 6, 'Madhabpur Upazila', 'Active'),
(466, 60, 6, 'Nabiganj Upazila', 'Active'),
(467, 60, 54, 'Barlekha Upazila', 'Active'),
(468, 60, 54, 'Kamalganj Upazila', 'Active'),
(469, 60, 54, 'Kulaura Upazila', 'Active'),
(470, 60, 54, 'Moulvibazar Sadar Upazila', 'Active'),
(471, 60, 54, 'Rajnagar Upazila', 'Active'),
(472, 60, 54, 'Sreemangal Upazila', 'Active'),
(473, 60, 54, 'Juri Upazila', 'Active'),
(474, 60, 55, 'Bishwamvarpur Upazila', 'Active'),
(475, 60, 55, 'Chhatak Upazila', 'Active'),
(476, 60, 55, 'Derai Upazila', 'Active'),
(477, 60, 55, 'Dharampasha Upazila', 'Active'),
(478, 60, 55, 'Dowarabazar Upazila', 'Active'),
(479, 60, 55, 'Jagannathpur Upazila', 'Active'),
(480, 60, 55, 'Jamalganj Upazila', 'Active'),
(481, 60, 55, 'Sullah Upazila', 'Active'),
(482, 60, 55, 'Sunamganj Sadar Upazila', 'Active'),
(483, 60, 55, 'Tahirpur Upazila', 'Active'),
(484, 60, 55, 'South Sunamganj Upazila', 'Active'),
(485, 60, 56, 'Balaganj Upazila', 'Active'),
(486, 60, 56, 'Beanibazar Upazila', 'Active'),
(487, 60, 56, 'Sylhet City Corporation (SCC)', 'Active'),
(488, 60, 56, 'Bishwanath Upazila', 'Active'),
(489, 60, 56, 'Companigonj Upazila', 'Active'),
(490, 60, 56, 'Fenchuganj Upazila', 'Active'),
(491, 60, 56, 'Golapganj Upazila', 'Active'),
(492, 60, 56, 'Gowainghat Upazila', 'Active'),
(493, 60, 56, 'Jaintiapur Upazila', 'Active'),
(494, 60, 56, 'Kanaighat Upazila', 'Active'),
(495, 60, 56, 'Sylhet Sadar Upazila', 'Active'),
(496, 60, 56, 'Zakiganj Upazila', 'Active'),
(497, 60, 56, 'South Shurma Upazila', 'Active'),
(498, 70, 57, 'Birampur Upazila', 'Active'),
(499, 70, 57, 'Birganj Upazila', 'Active'),
(500, 70, 57, 'Biral Upazila', 'Active'),
(501, 70, 57, 'Bochaganj Upazila', 'Active'),
(502, 70, 57, 'Chirirbandar Upazila', 'Active'),
(503, 70, 57, 'Phulbari Upazila', 'Active'),
(504, 70, 57, 'Ghoraghat Upazila', 'Active'),
(505, 70, 57, 'Hakimpur Upazila', 'Active'),
(506, 70, 57, 'Kaharole Upazila', 'Active'),
(507, 70, 57, 'Khansama Upazila', 'Active'),
(508, 70, 57, 'Dinajpur Sadar Upazila', 'Active'),
(509, 70, 57, 'Nawabganj Upazila', 'Active'),
(510, 70, 57, 'Parbatipur Upazila', 'Active'),
(511, 70, 58, 'Phulchhari Upazila', 'Active'),
(512, 70, 58, 'Gaibandha Sadar Upazila', 'Active'),
(513, 70, 58, 'Gobindaganj Upazila', 'Active'),
(514, 70, 58, 'Palashbari Upazila', 'Active'),
(515, 70, 58, 'Sadullapur Upazila', 'Active'),
(516, 70, 58, 'Sughatta Upazila', 'Active'),
(517, 70, 58, 'Sundarganj Upazila', 'Active'),
(518, 70, 59, 'Bhurungamari Upazila', 'Active'),
(519, 70, 59, 'Char Rajibpur Upazila', 'Active'),
(520, 70, 59, 'Chilmari Upazila', 'Active'),
(521, 70, 59, 'Phulbari Upazila', 'Active'),
(522, 70, 59, 'Kurigram Sadar Upazila', 'Active'),
(523, 70, 59, 'Nageshwari Upazila', 'Active'),
(524, 70, 59, 'Rajarhat Upazila', 'Active'),
(525, 70, 59, 'Raomari Upazila', 'Active'),
(526, 70, 59, 'Ulipur Upazila', 'Active'),
(527, 70, 60, 'Aditmari Upazila', 'Active'),
(528, 70, 60, 'Hatibandha Upazila', 'Active'),
(529, 70, 60, 'Kaliganj Upazila', 'Active'),
(530, 70, 60, 'Lalmonirhat Sadar Upazila', 'Active'),
(531, 70, 60, 'Patgram Upazila', 'Active'),
(532, 70, 61, 'Dimla Upazila', 'Active'),
(533, 70, 61, 'Domar Upazila', 'Active'),
(534, 70, 61, 'Jaldhaka Upazila', 'Active'),
(535, 70, 61, 'Kishoreganj Upazila', 'Active'),
(536, 70, 61, 'Nilphamari Sadar Upazila', 'Active'),
(537, 70, 61, 'Saidpur Upazila', 'Active'),
(538, 70, 62, 'Atwari Upazila', 'Active'),
(539, 70, 62, 'Boda Upazila', 'Active'),
(540, 70, 62, 'Debiganj Upazila', 'Active'),
(541, 70, 62, 'Panchagarh Sadar Upazila', 'Active'),
(542, 70, 62, 'Tetulia Upazila', 'Active'),
(543, 70, 63, 'Badarganj Upazila', 'Active'),
(544, 70, 63, 'Gangachhara Upazila', 'Active'),
(545, 70, 63, 'Rangpur City Corporation (RACC)', 'Active'),
(546, 70, 63, 'Kaunia Upazila', 'Active'),
(547, 70, 63, 'Rangpur Sadar Upazila', 'Active'),
(548, 70, 63, 'Mithapukur Upazila', 'Active'),
(549, 70, 63, 'Pirgachha Upazila', 'Active'),
(550, 70, 63, 'Pirganj Upazila', 'Active'),
(551, 70, 63, 'Taraganj Upazila', 'Active'),
(552, 70, 64, 'Baliadangi Upazila', 'Active'),
(553, 70, 64, 'Haripur Upazila', 'Active'),
(554, 70, 64, 'Pirganj Upazila', 'Active'),
(555, 70, 64, 'Ranisankail Upazila', 'Active'),
(556, 70, 64, 'Thakurgaon Sadar Upazila', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `designation` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive','Archived') NOT NULL DEFAULT 'Active',
  `create_date` date NOT NULL DEFAULT '0000-00-00',
  `user_type` enum('Super Admin','Commission','Ministry','Agency') NOT NULL,
  `ministry_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `sector_division` int(11) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `designation`, `username`, `password`, `email`, `status`, `create_date`, `user_type`, `ministry_id`, `agency_id`, `company_id`, `sector_division`) VALUES
(1, 'Sr. Software Engineer', 'admin', '3858f62230ac3c915f300c664312c63f', 'admin@evoknow.com', 'Active', '2006-01-23', 'Super Admin', 1, 2, 0, 0),
(17, 'Sr. Engineer', 'agri', '02054b032812a9731d4385eebc9a39a9', 's@agri.com', 'Active', '2014-06-05', 'Ministry', 2, 0, 0, 0),
(25, 'ddddd', 'bina1', 'bae323386189695c31e3e96cd7ea2020', 'samharun@gmail.com', 'Active', '2014-06-05', 'Agency', 2, 26, 0, 0),
(26, 'Managing Director', 'bina', 'af7c14172fd3062c434bc56cb99fa703', 'bina@bina.com', 'Active', '2014-07-16', 'Agency', 2, 26, 0, 0),
(27, 'Chief Executive Engineer', 'rhd', 'e7d8abbab93fe3a1b5b83f4358f8055f', 'rhd@rhd.com', 'Active', '2014-07-16', 'Agency', 6, 53, 0, 0),
(28, 'ddddd', 'dae', '39c0b36f38aed3bd87307bb554c74d74', 'dae@gmail.com', 'Active', '2014-06-05', 'Agency', 2, 21, 0, 0),
(30, 'Assistant Chief', 'comuser1', 'edcd266c143797743d7b767d56c3d902', 's@comuser.com', 'Active', '2014-06-05', 'Commission', 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE IF NOT EXISTS `user_address` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `address1` varchar(128) NOT NULL DEFAULT '',
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(50) NOT NULL DEFAULT '',
  `zipcode` varchar(20) NOT NULL DEFAULT '',
  `country` char(2) NOT NULL DEFAULT '',
  `home_phone` varchar(20) NOT NULL DEFAULT '',
  `work_phone` varchar(20) NOT NULL DEFAULT '',
  `cell_phone` varchar(20) NOT NULL DEFAULT '',
  `create_date` date NOT NULL DEFAULT '0000-00-00',
  `last_updated` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_id`, `address1`, `address2`, `city`, `state`, `zipcode`, `country`, `home_phone`, `work_phone`, `cell_phone`, `create_date`, `last_updated`) VALUES
(2, '', NULL, '', '', '', '', '', '', '', '2014-05-10', '0000-00-00'),
(3, '', NULL, '', '', '', '', '', '', '', '2014-06-05', '0000-00-00'),
(17, '', NULL, '', '', '', '', '', '', '', '2014-06-05', '0000-00-00'),
(25, '', NULL, '', '', '', '', '', '', '', '2014-06-05', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `us_states`
--

CREATE TABLE IF NOT EXISTS `us_states` (
  `id` char(2) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_states`
--

INSERT INTO `us_states` (`id`, `name`) VALUES
('AK', 'Alaska'),
('AL', 'Alabama'),
('AR', 'Arkansas'),
('AZ', 'Arizona'),
('CA', 'California'),
('CO', 'Colorado'),
('CT', 'Connecticut'),
('DC', 'Dist of Columbia'),
('DE', 'Delaware'),
('FL', 'Florida'),
('GA', 'Georgia'),
('HI', 'Hawaii'),
('IA', 'Iowa'),
('ID', 'Idaho'),
('IL', 'Illinois'),
('IN', 'Indiana'),
('KS', 'Kansas'),
('KY', 'Kentucky'),
('LA', 'Louisiana'),
('MA', 'Massachusetts'),
('MD', 'Maryland'),
('ME', 'Maine'),
('MI', 'Michigan'),
('MN', 'Minnesota'),
('MO', 'Missouri'),
('MS', 'Mississippi'),
('MT', 'Montana'),
('NC', 'North Carolina'),
('ND', 'North Dakota'),
('NE', 'Nebraska'),
('NH', 'New Hampshire'),
('NJ', 'New Jersey'),
('NM', 'New Mexico'),
('NV', 'Nevada'),
('NY', 'New York'),
('OH', 'Ohio'),
('OK', 'Oklahoma'),
('OR', 'Oregon'),
('PA', 'Pennsylvania'),
('RI', 'Rhode Island'),
('SC', 'South Carolina'),
('SD', 'South Dakota'),
('TN', 'Tennessee'),
('TX', 'Texas'),
('UT', 'Utah'),
('VA', 'Virginia'),
('VT', 'Vermont'),
('WA', 'Washington'),
('WI', 'Wisconsin'),
('WV', 'West Virginia'),
('WY', 'Wyoming');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_component_type_wise_subtotal`
--
CREATE TABLE IF NOT EXISTS `view_component_type_wise_subtotal` (
`pid` int(11)
,`component_type` enum('Revenue Component','Capital Component')
,`sub_total_cost` double
,`sub_gob` double
,`sub_gob_fe` double
,`sub_rpa` double
,`sub_rpa_special` double
,`sub_dpa` double
,`sub_own_fund` double
,`sub_own_fund_fe` double
,`sub_other` double
,`sub_other_fe` double
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_component_type_year_wise_subtotal`
--
CREATE TABLE IF NOT EXISTS `view_component_type_year_wise_subtotal` (
`pid` int(11)
,`year_serial` int(11)
,`component_type` enum('Revenue Component','Capital Component')
,`sub_total_cost` double
,`sub_gob` double
,`sub_gob_fe` double
,`sub_rpa` double
,`sub_rpa_special` double
,`sub_dpa` double
,`sub_own_fund` double
,`sub_own_fund_fe` double
,`sub_other` double
,`sub_other_fe` double
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_project_grand_total`
--
CREATE TABLE IF NOT EXISTS `view_project_grand_total` (
`pid` int(11)
,`total_cost` double
,`gob_cost` double
,`gob_fe_cost` double
,`pa_through_gob_cost` double
,`pa_spc_acnt_cost` double
,`pa_dpa_cost` double
,`own_fund_cost` double
,`own_fund_fe_cost` double
,`other_cost` double
,`other_fe_cost` double
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_project_wise_component_sub_total`
--
CREATE TABLE IF NOT EXISTS `view_project_wise_component_sub_total` (
`pid` int(11)
,`component_type` enum('Revenue Component','Capital Component')
,`sub_total_total_cost` double
,`sub_total_gob` double
,`sub_total_gob_fe` double
,`sub_total_rpa_through_gob` double
,`sub_total_rpa_special_account` double
,`sub_total_dpa` double
,`sub_total_own_fund` double
,`sub_total_own_fund_fe` double
,`sub_total_other` double
,`sub_total_other_fe` double
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_unionprojectgrandtotal`
--
CREATE TABLE IF NOT EXISTS `view_unionprojectgrandtotal` (
`pid` int(11)
,`total_cost` double
,`gob` double
,`gob_fe` double
,`rpa_through_gob` double
,`rpa_special_account` double
,`dpa` double
,`own_fund` double
,`own_fund_fe` double
,`other` double
,`other_fe` double
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `year_wise_gob_ownfund`
--
CREATE TABLE IF NOT EXISTS `year_wise_gob_ownfund` (
`gob_total` double
,`gob_fe_total` double
,`own_fund_total` double
,`own_fund_fe_total` double
,`pid` int(11)
,`year_serial` int(11)
,`financial_year` varchar(256)
);
-- --------------------------------------------------------

--
-- Structure for view `view_component_type_wise_subtotal`
--
DROP TABLE IF EXISTS `view_component_type_wise_subtotal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_component_type_wise_subtotal` AS select `anx`.`pid` AS `pid`,`ec`.`component_type` AS `component_type`,sum(`anx`.`total_cost`) AS `sub_total_cost`,sum(`anx`.`gob`) AS `sub_gob`,sum(`anx`.`gob_fe`) AS `sub_gob_fe`,sum(`anx`.`rpa_through_gob`) AS `sub_rpa`,sum(`anx`.`rpa_special_account`) AS `sub_rpa_special`,sum(`anx`.`dpa`) AS `sub_dpa`,sum(`anx`.`own_fund`) AS `sub_own_fund`,sum(`anx`.`own_fund_fe`) AS `sub_own_fund_fe`,sum(`anx`.`other`) AS `sub_other`,sum(`anx`.`other_fe`) AS `sub_other_fe` from (`annexure_v` `anx` left join `economic_code_lookup` `ec` on((`anx`.`economic_code_id` = `ec`.`id`))) where 1 group by `ec`.`component_type`,`anx`.`pid`;

-- --------------------------------------------------------

--
-- Structure for view `view_component_type_year_wise_subtotal`
--
DROP TABLE IF EXISTS `view_component_type_year_wise_subtotal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_component_type_year_wise_subtotal` AS select `anx`.`pid` AS `pid`,`anx_d`.`year_serial` AS `year_serial`,`ec`.`component_type` AS `component_type`,sum(`anx_d`.`total`) AS `sub_total_cost`,sum(`anx_d`.`gob`) AS `sub_gob`,sum(`anx_d`.`gob_fe`) AS `sub_gob_fe`,sum(`anx_d`.`rpa_through_gob`) AS `sub_rpa`,sum(`anx_d`.`rpa_special_account`) AS `sub_rpa_special`,sum(`anx_d`.`dpa`) AS `sub_dpa`,sum(`anx_d`.`own_fund`) AS `sub_own_fund`,sum(`anx_d`.`own_fund_fe`) AS `sub_own_fund_fe`,sum(`anx_d`.`other`) AS `sub_other`,sum(`anx_d`.`other_fe`) AS `sub_other_fe` from ((`annexure_v_details` `anx_d` left join `annexure_v` `anx` on((`anx_d`.`annex_id` = `anx`.`id`))) left join `economic_code_lookup` `ec` on((`anx`.`economic_code_id` = `ec`.`id`))) where 1 group by `ec`.`component_type`,`anx_d`.`year_serial`,`anx`.`pid`;

-- --------------------------------------------------------

--
-- Structure for view `view_project_grand_total`
--
DROP TABLE IF EXISTS `view_project_grand_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_project_grand_total` AS select `view_unionprojectgrandtotal`.`pid` AS `pid`,sum(`view_unionprojectgrandtotal`.`total_cost`) AS `total_cost`,sum(`view_unionprojectgrandtotal`.`gob`) AS `gob_cost`,sum(`view_unionprojectgrandtotal`.`gob_fe`) AS `gob_fe_cost`,sum(`view_unionprojectgrandtotal`.`rpa_through_gob`) AS `pa_through_gob_cost`,sum(`view_unionprojectgrandtotal`.`rpa_special_account`) AS `pa_spc_acnt_cost`,sum(`view_unionprojectgrandtotal`.`dpa`) AS `pa_dpa_cost`,sum(`view_unionprojectgrandtotal`.`own_fund`) AS `own_fund_cost`,sum(`view_unionprojectgrandtotal`.`own_fund_fe`) AS `own_fund_fe_cost`,sum(`view_unionprojectgrandtotal`.`other`) AS `other_cost`,sum(`view_unionprojectgrandtotal`.`other_fe`) AS `other_fe_cost` from `view_unionprojectgrandtotal` group by `view_unionprojectgrandtotal`.`pid`;

-- --------------------------------------------------------

--
-- Structure for view `view_project_wise_component_sub_total`
--
DROP TABLE IF EXISTS `view_project_wise_component_sub_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_project_wise_component_sub_total` AS select `pavt`.`pid` AS `pid`,`eclt`.`component_type` AS `component_type`,sum(`pavt`.`total_cost`) AS `sub_total_total_cost`,sum(`pavt`.`gob`) AS `sub_total_gob`,sum(`pavt`.`gob_fe`) AS `sub_total_gob_fe`,sum(`pavt`.`rpa_through_gob`) AS `sub_total_rpa_through_gob`,sum(`pavt`.`rpa_special_account`) AS `sub_total_rpa_special_account`,sum(`pavt`.`dpa`) AS `sub_total_dpa`,sum(`pavt`.`own_fund`) AS `sub_total_own_fund`,sum(`pavt`.`own_fund_fe`) AS `sub_total_own_fund_fe`,sum(`pavt`.`other`) AS `sub_total_other`,sum(`pavt`.`other_fe`) AS `sub_total_other_fe` from ((`annexure_v` `pavt` left join `economic_code_lookup` `eclt` on((`pavt`.`economic_code_id` = `eclt`.`id`))) left join `economic_subcode_lookup` `eslt` on((`pavt`.`economic_subcode_id` = `eslt`.`id`))) where 1 group by `pavt`.`pid`,`eclt`.`component_type`;

-- --------------------------------------------------------

--
-- Structure for view `view_unionprojectgrandtotal`
--
DROP TABLE IF EXISTS `view_unionprojectgrandtotal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_unionprojectgrandtotal` AS select `annexure_v`.`pid` AS `pid`,sum(`annexure_v`.`total_cost`) AS `total_cost`,sum(`annexure_v`.`gob`) AS `gob`,sum(`annexure_v`.`gob_fe`) AS `gob_fe`,sum(`annexure_v`.`rpa_through_gob`) AS `rpa_through_gob`,sum(`annexure_v`.`rpa_special_account`) AS `rpa_special_account`,sum(`annexure_v`.`dpa`) AS `dpa`,sum(`annexure_v`.`own_fund`) AS `own_fund`,sum(`annexure_v`.`own_fund_fe`) AS `own_fund_fe`,sum(`annexure_v`.`other`) AS `other`,sum(`annexure_v`.`other_fe`) AS `other_fe` from `annexure_v` where 1 group by `annexure_v`.`pid` union all select `annexure_v_contingency`.`pid` AS `pid`,sum(`annexure_v_contingency`.`total_cost`) AS `total_cost`,sum(`annexure_v_contingency`.`gob`) AS `gob`,sum(`annexure_v_contingency`.`gob_fe`) AS `gob_fe`,sum(`annexure_v_contingency`.`rpa_through_gob`) AS `rpa_through_gob`,sum(`annexure_v_contingency`.`rpa_special_account`) AS `pa_spc_acnt`,sum(`annexure_v_contingency`.`dpa`) AS `pa_dpa`,sum(`annexure_v_contingency`.`own_fund`) AS `own_fund`,sum(`annexure_v_contingency`.`own_fund_fe`) AS `own_fund_fe`,sum(`annexure_v_contingency`.`other`) AS `other`,sum(`annexure_v_contingency`.`other_fe`) AS `other_fe` from `annexure_v_contingency` where 1 group by `annexure_v_contingency`.`pid`;

-- --------------------------------------------------------

--
-- Structure for view `year_wise_gob_ownfund`
--
DROP TABLE IF EXISTS `year_wise_gob_ownfund`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `year_wise_gob_ownfund` AS select sum(`ax`.`gob`) AS `gob_total`,sum(`ax`.`gob_fe`) AS `gob_fe_total`,sum(`ax`.`own_fund`) AS `own_fund_total`,sum(`ax`.`own_fund_fe`) AS `own_fund_fe_total`,`ax`.`pid` AS `pid`,`ax`.`year_serial` AS `year_serial`,`ax`.`financial_year` AS `financial_year` from `annexure_v_details` `ax` group by `ax`.`pid`,`ax`.`year_serial` order by `ax`.`year_serial`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
