-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2014 at 05:49 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=361 ;

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
(355, 61, 'National Parliament of Bangladesh', 'Active'),
(356, 46, 'Rural Development & Cooperative Division', 'Active'),
(357, 36, 'Jatio Mahila Sangstha (JMS)', 'Active'),
(360, 40, 'Bangladesh Sugar & Food Industries Corporation (BSFIC)', 'Active');

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
  `attachment_id` int(11) NOT NULL,
  `major_item` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=656 ;

--
-- Dumping data for table `annexure_v`
--

INSERT INTO `annexure_v` (`id`, `pid`, `economic_code_id`, `economic_subcode_id`, `economic_subcode_name`, `unit`, `unit_cost`, `qty`, `total_cost`, `gob`, `gob_fe`, `rpa_through_gob`, `rpa_special_account`, `dpa`, `own_fund`, `own_fund_fe`, `other`, `other_fe`, `total_year`, `attachment_id`, `major_item`) VALUES
(11, 22, 5, 133, 'Machineries & Equipment', '', 0, 0, 12, 3, 5, 4, 5, 0, 0, 0, 0, 0, 1, 0, 'No'),
(12, 22, 2, 2, 'Pay of Establishment#%DDD#%#%#%DDDD', '', 0, 0, 15, 5, 6, 6, 4, 0, 0, 0, 0, 0, 1, 0, 'No'),
(13, 22, 4, 42, 'Satellite/Frequency', '', 0, 0, 42, 2, 8, 8, 8, 8, 8, 8, 8, 8, 1, 0, 'No'),
(14, 22, 11, 390, 'Rural Roads and Culverts', '', 0, 0, 534, 89, 89, 89, 89, 89, 89, 89, 89, 89, 1, 0, 'No'),
(15, 22, 5, 139, 'Educational Institutions', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(16, 22, 9, 352, 'Telecommunication Equipment', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(17, 22, 13, 432, 'Other Non-government Institutions', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(18, 22, 6, 168, '5-Year Treasury Bond-2007 (2.86 Crore, 6%)', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(23, 24, 1, 1, 'Pay of Officers', 'MM', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(25, 24, 2, 2, 'Pay of Establishment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(27, 24, 3, 4, 'House Rent Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(28, 24, 3, 5, 'Rest and Recreation Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(29, 24, 3, 6, 'Festival Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(30, 24, 3, 7, 'Medical Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(31, 24, 3, 8, 'Hill Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(32, 24, 3, 9, 'Defence Service Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(33, 24, 3, 10, 'Allowences for Chief, Headmen and Karbaries', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(34, 24, 3, 11, 'Batsman Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(35, 24, 3, 12, 'Washing Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(36, 24, 3, 13, 'Haircut Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(37, 24, 3, 14, 'Foreign Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'Yes'),
(38, 24, 3, 15, 'Entertainment/Sumptuary Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(39, 24, 3, 16, 'Charge Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'Yes'),
(40, 24, 3, 17, 'Retainery', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(41, 24, 3, 18, 'Compensatory Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(42, 24, 3, 19, 'Ration Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(43, 24, 3, 20, 'Daily/Subsistence Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(44, 24, 3, 22, 'Internee/Apprenticeship Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(45, 24, 3, 23, 'Fixed Travel Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(46, 24, 3, 21, 'Tiffin Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'Yes'),
(47, 24, 3, 24, 'Conveyance Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(48, 24, 3, 25, 'Overtime', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(49, 24, 3, 26, 'Educational Allowances', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(50, 24, 3, 27, 'Uniform Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(51, 24, 3, 28, 'Training Allowance (Fixed)', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(52, 24, 3, 29, 'Hazardous Job Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(53, 24, 3, 30, 'Contract Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(54, 24, 3, 30, 'Contract Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(55, 24, 3, 31, 'Constituency Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(56, 24, 3, 32, 'Operation Allowance Electoral Area Office', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(57, 24, 3, 33, 'Telephone Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(58, 24, 3, 34, 'Other Allowances', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(59, 24, 4, 35, 'Travel Expenses', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'Yes'),
(60, 24, 4, 36, 'Transfer Expenses', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(61, 24, 3, 3, 'Dearness Allowance', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(62, 24, 4, 37, 'Contingent Staff', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(63, 24, 4, 38, 'Overtime', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(64, 24, 4, 39, 'Rent-Office', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(65, 24, 9, 337, 'Office Buildings', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(66, 24, 9, 338, 'Residential Buildings', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(67, 24, 9, 339, 'Other Buildings', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(68, 24, 9, 340, 'Motor Vehicles', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'Yes'),
(69, 24, 9, 341, 'Water Transport', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 0, 'No'),
(70, 24, 9, 342, 'Aircraft', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(71, 24, 9, 343, 'Camera and Accessories', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(72, 24, 9, 344, 'Machinery and Other Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(73, 24, 9, 345, 'Engineering Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(74, 24, 9, 346, 'Computers and Accessories', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 0, 'No'),
(75, 24, 9, 347, 'Computer Softwares', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'Yes'),
(76, 24, 9, 348, 'Office Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(77, 24, 9, 349, 'Teaching and Learning Material', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(78, 24, 9, 350, 'Furniture and Fixtures', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(79, 24, 9, 351, 'Laboratory EquipmentÃ¯Â¿Â½s / Material', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(80, 24, 9, 352, 'Telecommunication Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(81, 24, 9, 353, 'Ballot Box (Procurement)', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(82, 24, 9, 354, 'Radio Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(83, 24, 9, 357, 'Military Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(84, 24, 9, 358, 'Rolling Stock', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(85, 24, 9, 359, 'Meteorological Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(86, 24, 9, 360, 'Rail Installations', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(87, 24, 9, 355, 'Military Hardware', '', 0, 0, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 'No'),
(88, 24, 9, 356, 'Electrical Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(89, 24, 9, 361, 'Roads and Highways', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(90, 24, 9, 362, 'Military Hardware (Arrears)', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(91, 24, 9, 363, 'Bridges', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(92, 24, 9, 364, 'Rural Roads and Culverts', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(93, 24, 9, 365, 'Irrigation Structures', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(94, 24, 9, 366, 'Drainage Structures', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(95, 24, 9, 367, 'Sanitation and Water Supply', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(96, 24, 9, 368, 'Afforestation', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(97, 24, 9, 369, 'Monuments', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(98, 24, 9, 370, 'Museum Artifacts, Paintings, Archives, Films', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(99, 24, 9, 371, 'Tubewell & Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(100, 24, 9, 372, 'Others', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(101, 24, 9, 373, 'Bullet Proof Jacket', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(102, 24, 9, 374, 'Firefighting Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(103, 24, 9, 375, 'Mobile Instrument', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(104, 24, 9, 376, 'Tents & Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(105, 24, 9, 377, 'Arms, Motor Vehicle and Equipment for Police', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(106, 24, 9, 378, 'Aircooler', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(107, 24, 9, 341, 'Water Transport', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 0, 'No'),
(108, 24, 9, 342, 'Aircraft', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(109, 24, 9, 345, 'Engineering Equipment', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(110, 24, 9, 346, 'Computers and Accessories', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 0, 'No'),
(111, 24, 9, 355, 'Military Hardware', '', 0, 0, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 'No'),
(112, 24, 9, 346, 'Computers and Accessories', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 0, 'No'),
(113, 24, 9, 343, 'Camera and Accessories', '', 0, 0, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 'No'),
(114, 24, 9, 343, 'Camera and Accessories', '', 0, 0, 30, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(130, 25, 1, 1, 'Pay of Officers', 'LS', 15, 2, 30, 5, 5, 5, 5, 5, 5, 55, 5, 5, 1, 0, 'Yes'),
(131, 25, 2, 2, 'Pay of Establishment', 'SM', 9.6, 5, 48, 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, 0, 'Yes'),
(134, 26, 1, 1, 'Pay of Officers', 'Per Person', 19, 1, 19, 10, 0, 0, 0, 0, 0, 0, 9, 8, 2, 0, 'No'),
(138, 26, 3, 4, 'House Rent Allowance', 'Per Person', 5, 10, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(139, 26, 9, 337, 'Office Buildings', 'Per building', 60, 1, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(140, 26, 11, 388, 'Roads and Highways', 'Per road', 105, 1, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(151, 28, 2, 2, 'Pay of Establishment', '', 0, 0, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 'Yes'),
(152, 31, 3, 7, 'Medical Allowance', '', 0, 0, 345, 300, 0, 45, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(153, 31, 12, 411, 'Sick Industries', '', 0, 0, 90, 67, 0, 23, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(154, 25, 11, 386, 'Residential Buildings', '', 0, 0, 15, 4, 6, 5, 6, 0, 0, 0, 0, 0, 1, 0, 'No'),
(155, 30, 2, 2, 'Pay of Establishment\r\n\r\n\r\nasdfasdf', 'LS', 0, 0, 348, 348, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(156, 27, 1, 1, 'Pay of Officers', '', 0, 0, 57, 3, 0, 50, 4, 0, 0, 0, 0, 0, 1, 0, 'No'),
(157, 27, 10, 380, 'Forest', '', 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(159, 21, 1, 1, 'Pay of Officers', '', 0, 0, 6, 1, 0, 4, 6, 34, 4, 0, 4, 0, 1, 0, 'No'),
(160, 32, 3, 18, 'Compensatory Allowance', '2', 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(161, 32, 2, 2, 'Pay of Establishment', 'LS', 3, 10, 30, 5, 0, 5, 5, 5, 5, 5, 5, 5, 1, 0, 'No'),
(162, 32, 11, 388, 'Roads and Highways', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(163, 32, 10, 381, 'Inland Water Body', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(164, 32, 11, 389, 'Bridges', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(165, 35, 1, 1, 'Pay of Officers', 'sdf', 6.8, 5, 34, 7, 7, 9, 9, 3, 3, 3, 3, 3, 2, 0, 'No'),
(166, 35, 9, 351, 'Laboratory EquipmentÃ¯Â¿Â½s / Material', '3', 20, 4, 80, 9, 4, 10, 49, 4, 4, 4, 4, 4, 2, 0, 'No'),
(167, 32, 2, 2, 'Pay of Establishment', 'LS', 7.5, 4, 30, 5, 5, 5, 5, 5, 5, 0, 5, 0, 1, 0, 'No'),
(168, 35, 4, 45, 'Customs Duty / VAT', '', 0, 0, 30, 25, 10, 5, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(169, 35, 14, 434, 'CD / V A T', '', 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(222, 23, 5, 131, 'Furniture and Fixtures', '', 0, 0, 18, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 0, 'No'),
(260, 37, 2, 2, 'Pay of Establishment', '', 0, 0, 28.5, 28.5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(261, 37, 3, 6, 'Festival Allowance', '', 0, 0, 2.82, 2.82, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(262, 37, 4, 35, 'Travel Expenses', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(263, 37, 4, 39, 'Rent-Office', '', 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(264, 37, 4, 45, 'Customs Duty / VAT', '', 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(265, 37, 4, 47, 'Postage', '', 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(266, 37, 4, 48, 'Telephones/Telegram/Teleprinter', '', 0, 0, 1.6, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(267, 37, 4, 50, 'Registration Fee', '', 0, 0, 0.92, 0.92, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(268, 37, 4, 52, 'Electricity', '', 0, 0, 1.6, 1.6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(269, 37, 4, 54, 'Petrol, Oil and Lubricants', '', 0, 0, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(270, 37, 4, 55, 'Insurance / Bank Charges', '', 0, 0, 0.5, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(271, 37, 4, 58, 'Printing and Binding', '', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(272, 37, 4, 59, 'Stationery, Seals and Stamps', '', 0, 0, 2.52, 2.52, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(273, 37, 4, 64, 'Advertising and Publicity', '', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(274, 37, 4, 71, 'i)Training Expenses for technical officers (10 nos)', '', 0, 0, 1.5, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(275, 37, 4, 71, 'ii) Training Expenses Owner/Manager/Operator/Fields-man on operation & maintenance of irrigation equipment (2 day programme)(50 batch 1500 farmers)', '', 0, 0, 6.4, 6.4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(276, 37, 4, 71, 'iii) Training Expenses of farmers on irrigation water management practices for increasing irrigation efficiency ( 1 day programme)(100 batch 3000 farmers)', '', 0, 0, 7.41, 7.41, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(277, 37, 4, 72, 'Seminar, Conference Expenses', '', 0, 0, 3.5, 3.5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(278, 37, 4, 76, 'Freight and Transport Charges', '', 0, 0, 1.4, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(279, 37, 4, 81, 'Labour Wages', '', 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(280, 37, 5, 130, 'i) Repair & maintenance of vehicles (8 nos of vehicles)', '', 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(281, 37, 5, 131, 'ii) Repair & maintenance of Office equipment & furniture', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(282, 37, 5, 145, 'iv) Repair & maintenance of Irrigation channel & infrastructure', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(283, 37, 5, 152, 'v) Repair & maintenance of Irrigation equipment & electric line including pre-work and post-work survey and design', '', 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(284, 37, 9, 346, 'i) Procurement of Computer, Printer, Projector, UPS and accessories (5 nos)', '', 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(285, 37, 9, 348, 'iv) Photocopier (1 nos)', '', 0, 0, 1.5, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(286, 37, 9, 350, 'Furniture and Fixtures', '', 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(287, 37, 9, 340, 'ii) Double cabin pickup (1 no)', '', 0, 0, 25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(288, 37, 9, 365, 'i) Sinking & commissioning materials of Force Mode Tube Well of 1-cusec capacity (40 nos)', '', 0, 0, 148, 148, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(289, 37, 9, 365, 'ii) Sinking & commissioning materials of Force Mode Tube Well of 2-cusec capacity (85 nos)', '', 0, 0, 722.5, 722.5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(290, 37, 11, 394, 'i) Installation of new force mode tube well of 1-cusec capacity with construction of pump house (40 schemes)', '', 0, 0, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(291, 37, 11, 394, 'ii) Installation of new force mode tube well of 2-cusec capacity with construction of pump house (85 schemes)', '', 0, 0, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(292, 37, 11, 391, 'iii) Construction of water distribution system with supply of materials for new force mode tube well (pvc buried pipe line) (each 300 meter) (40 schemes)', '', 0, 0, 115.3, 115.3, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(293, 37, 11, 391, 'iv) Construction of water distribution system with supply of materials for new force mode tube well (pvc buried pipe line) (each 500 meter) (85 schemes)pre-work and post-work', '', 0, 0, 462.4, 462.4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(294, 37, 11, 398, 'vii) Establishment of demonstration farm (1 nos)', '', 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(295, 37, 11, 399, 'v) Construction of electric lines with supply of transformer, meter and other accessories, internal wiriing and commissioning of pumps for new force mode ump including pre-work and post-work survey and design etc (40 schemes)', '', 0, 0, 120, 120, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(296, 37, 11, 399, 'vi) Construction of electric lines with supply of transformer, meter and other accessories, internal wiring and commissioning of pumps for new force mode pump includng pre-work and post-work survey and design etc (85 schemes)', '', 0, 0, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'No'),
(297, 38, 1, 1, 'Pay and allowances', '', 0, 0, 83.75, 83.75, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(298, 38, 4, 37, 'Office contingency', '', 0, 0, 51.75, 51.75, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(299, 38, 4, 52, 'Electricity', '', 0, 0, 1.25, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(300, 38, 4, 53, 'Oil & Fuel', '', 0, 0, 19.45, 19.45, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(301, 38, 4, 71, 'Training Expenses', '', 0, 0, 50.82, 50.82, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(302, 38, 4, 72, 'Seminar, Conference Expenses', '', 0, 0, 2.5, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(303, 38, 4, 75, 'Diversity Center/Insitu conservation and adaptive research plot of Pulse & Oil Seed Crops', '', 0, 0, 25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(304, 38, 4, 88, 'a) F.S production cost', '', 0, 0, 44, 44, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(305, 38, 4, 88, 'b) Seed procurement cost', '', 0, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(306, 38, 4, 88, 'c) Seed Incidental cost', '', 0, 0, 20.6, 20.6, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(307, 38, 4, 88, 'd) Gardening', '', 0, 0, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(308, 38, 4, 96, 'Poultry (20 Nos.)', '', 0, 0, 6.25, 6.25, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(309, 38, 4, 97, 'Animal Husbandry (20 Nos.)', '', 0, 0, 82, 82, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(310, 38, 4, 113, 'Project evaluation and monitoring', '', 0, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(311, 38, 5, 158, 'Repairs, Maintenance and Rehabilitation', '', 0, 0, 15.9, 15.9, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(312, 38, 9, 340, 'Mini truck', '', 0, 0, 45, 45, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(313, 38, 9, 340, 'Travel coaster', '', 0, 0, 70, 70, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(314, 38, 9, 340, 'Double cabin Pick-up', '', 0, 0, 55, 55, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(315, 38, 9, 340, 'Motor cycle', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(316, 38, 9, 343, 'Training equipments', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(317, 38, 9, 344, 'Agril. Machinery & equipments', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(318, 38, 9, 344, '1) Tractor (4WD)', '', 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(319, 38, 9, 344, '2) Tractor (2WD)', '', 0, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(320, 38, 9, 344, '3) Power Tiller', '', 0, 0, 2.8, 2.8, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(321, 38, 9, 344, '4) Rotavator', '', 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(322, 38, 9, 344, '5) Plough', '', 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(323, 38, 9, 344, '6) Laveller', '', 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(324, 38, 9, 344, '7) Cultivator', '', 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(325, 38, 9, 344, '8) Disc harrow', '', 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(326, 38, 9, 344, '9) Power sprayer', '', 0, 0, 1.05, 1.05, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(327, 38, 9, 344, '10) Shallow Tubewell', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(328, 38, 9, 344, '11) Deep Tubewell', '', 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(329, 38, 9, 344, '12) Winnower', '', 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(330, 38, 9, 344, '13) Tractor Trolly', '', 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(331, 38, 9, 344, '14) Power thresher', '', 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(332, 38, 9, 344, '15) Seed Driller', '', 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(333, 38, 9, 344, '16) Cleaner cum grader', '', 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(334, 38, 9, 344, '17) Dihumidifier', '', 0, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(335, 38, 9, 344, '18) Storage chamber for long term preservation', '', 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(336, 38, 9, 344, '19) Electric substation', '', 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(337, 38, 9, 344, '20) Standby generator (200 Kva)', '', 0, 0, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(338, 38, 9, 344, '21) Drier with chamber', '', 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(339, 38, 9, 344, '22) Air Conditioners', '', 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(340, 38, 9, 344, '23) Hand Trolly', '', 0, 0, 2.5, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(341, 38, 9, 344, '24) Vegetable type Moisture Meter', '', 0, 0, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(342, 38, 9, 344, '25) Portable moisture meter', '', 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(343, 38, 9, 344, '26) Petalgation Sheef', '', 0, 0, 48, 48, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(344, 38, 9, 344, '27) Packining machine', '', 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(345, 38, 9, 344, '28) Lab equipments', '', 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(346, 38, 9, 344, '29) Woods Dunnage', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(347, 38, 9, 344, '30) Generator', '', 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(348, 38, 9, 344, '31) Colour Sorter', '', 0, 0, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(349, 38, 9, 344, '32) Fork lift', '', 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(350, 38, 9, 344, '33) Tarpaulin', '', 0, 0, 7.5, 7.5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(351, 38, 9, 344, '34) Biogas plant', '', 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(352, 38, 9, 344, '35) Solar panel', '', 0, 0, 22, 22, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(353, 38, 9, 348, 'Office Equipment', '', 0, 0, 5.8, 5.8, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(354, 38, 9, 350, 'Furniture (Office, training room & rest house)', '', 0, 0, 25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(355, 38, 9, 372, 'Gunny bag', '', 0, 0, 6.4, 6.4, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(356, 38, 9, 372, 'Processing machinery for food and feed', '', 0, 0, 23, 23, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(357, 38, 10, 379, 'Acquisition / Purchase of Land', '', 0, 0, 746, 746, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(358, 38, 11, 384, 'Land Development', '', 0, 0, 150, 150, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(359, 38, 11, 387, 'a) Garage and implement shed', '', 0, 0, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(360, 38, 11, 387, 'b) Office and training room (2 storied)', '', 0, 0, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(361, 38, 11, 387, 'c) Rest house', '', 0, 0, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(362, 38, 11, 387, 'd) Boundary wall', '', 0, 0, 156, 156, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(363, 38, 11, 387, 'e) Godown (200 mt)', '', 0, 0, 70, 70, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(364, 38, 11, 387, 'f) Threshing floor', '', 0, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(365, 38, 11, 387, 'Irrigation channel (Burried)', '', 0, 0, 51, 51, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(366, 38, 11, 387, 'Building & structure (Lake & Pond)', '', 0, 0, 38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(367, 38, 11, 395, 'Telecommunication', '', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(368, 38, 11, 399, 'Electrical Installation', '', 0, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(369, 38, 11, 404, 'Approach road', '', 0, 0, 75, 75, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(370, 38, 11, 404, 'Other building & structure (Lake & Pond)', '', 0, 0, 79.24, 79.24, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(371, 38, 11, 404, 'Other construction', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 'No'),
(379, 44, 1, 1, 'Pay of Officers', '', 0, 0, 18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(381, 49, 1, 1, 'Pay of Officers', '', 0, 0, 16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(384, 45, 1, 1, 'Pay of Officers', '', 0, 0, 26, 26, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(386, 47, 1, 1, 'Pay of Officers', '', 0, 0, 18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(388, 54, 1, 1, '#%establishment', '', 0, 0, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(390, 43, 1, 1, 'Pay of Officers', 'No.', 1.8, 10, 18, 18, 5, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(391, 42, 1, 1, 'Pay of Officers', '', 0, 0, 115, 1, 0, 1, 12, 46, 5, 0, 50, 0, 1, 0, 'No'),
(392, 51, 1, 1, 'Pay of Officers', '', 0, 0, 118, 118, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(393, 53, 1, 1, 'Pay of Officers', '', 0, 0, 18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(396, 44, 2, 2, 'Pay of Establishment', '', 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(397, 42, 2, 2, 'Pay of Establishment', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(398, 54, 2, 2, 'salary', '', 0, 0, 33, 33, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(399, 49, 2, 2, 'Pay of Establishment', '', 0, 0, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(400, 47, 2, 2, 'Pay of Establishment', '', 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(402, 43, 2, 2, 'Pay of Establishment', 'No.', 0.87, 15, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(403, 51, 2, 2, 'Pay of Establishment', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(404, 45, 2, 2, 'Pay of Establishment', '', 0, 0, 21, 21, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(406, 53, 2, 2, 'Pay of Establishment', '', 0, 0, 18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(407, 42, 3, 6, 'Festival Allowance', '', 0, 0, 16, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 'No'),
(408, 53, 3, 3, 'Dearness Allowance for officers#%', '', 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(413, 44, 3, 3, 'Dearness Allowance (for Officer)', '', 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(414, 49, 3, 3, 'Dearness Allowance (for Officers)', '', 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(415, 54, 3, 11, 'Batsman Allowance', '', 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(416, 47, 3, 3, 'Dearness Allowance (for officer)', '', 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(418, 45, 3, 3, 'Dearness Allowance(For Officers)', '', 0, 0, 19, 19, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(420, 43, 3, 3, 'Dearness Allowance', 'No.', 0.24, 25, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(421, 44, 3, 3, 'Dearness Allowance (For Staff)', '', 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(422, 47, 3, 3, 'Dearness Allowance (for staff)', '', 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(423, 49, 4, 35, 'Travel Expenses', '', 0, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(424, 53, 3, 3, 'Dearness Allowance for Staff#%', '', 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(426, 51, 3, 3, 'Dearness Allowance', '', 0, 0, 22, 22, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(427, 44, 4, 35, 'Travel Expenses (Local)', '', 0, 0, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(430, 44, 4, 35, 'Travel Expenses (Foreign)', '', 0, 0, 80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(431, 53, 4, 35, 'Travel Expenses (Local)#%', '', 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(432, 43, 4, 35, 'Travel Expenses', 'LS', 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(434, 47, 4, 35, 'Travel Expenses', '', 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(435, 54, 7, 256, 'Book Grant', '', 0, 0, 16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(436, 45, 3, 23, 'Fixed Travel Allowance', '', 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(438, 44, 5, 130, 'Motor Vehicles', '', 0, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(440, 49, 5, 130, 'Motor Vehicles', '', 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(441, 44, 9, 340, 'Motor Vehicles (Prado)', 'No', 120, 5, 600, 0, 0, 600, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(442, 54, 9, 342, 'Aircraft', '', 0, 0, 210, 210, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(443, 49, 9, 337, 'Office Buildings', '', 0, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(444, 45, 9, 338, 'Residential Buildings', '', 0, 0, 200, 200, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(445, 53, 11, 385, 'Office Buildings', '', 0, 0, 400, 400, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(447, 43, 9, 337, 'Office Buildings', 'sqm', 0.01, 4200, 41, 26, 0, 15, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(448, 51, 4, 35, 'Travel Expenses', '', 0, 0, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(449, 42, 9, 340, 'Motor Vehicles (Micro bus)', 'No', 50, 3, 150, 150, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(450, 44, 9, 340, 'Motor Vehicles (Micro)', 'No', 100, 3, 300, 0, 0, 0, 0, 300, 0, 0, 0, 0, 2, 0, 'Yes'),
(452, 44, 9, 340, 'Motor Vehicles (Jeep)', 'No', 60, 2, 120, 120, 120, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(453, 53, 9, 340, 'Motor Vehicles (Jeep)#%', '', 200, 5, 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(454, 45, 13, 421, 'Financial Institutions', '', 0, 0, 80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(455, 49, 11, 385, 'Office Buildings', '', 0, 0, 65, 65, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(457, 54, 12, 406, 'Development Budget - Equity', '', 0, 0, 31, 31, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(458, 45, 11, 385, 'Office Buildings', '', 0, 0, 150, 150, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(460, 47, 9, 340, 'Motor Vehicles', 'no', 180, 5, 900, 0, 0, 600, 300, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(462, 43, 9, 340, 'Motor Vehicles', 'No.', 62.5, 2, 125, 100, 0, 25, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(463, 51, 9, 337, 'Office Buildings', '', 0, 0, 23, 23, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(465, 49, 10, 381, 'Inland Water Body', '', 0, 0, 95, 95, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(466, 51, 10, 379, 'Acquisition / Purchase of Land', '', 0, 0, 34, 34, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(467, 49, 13, 428, 'City Corporations', '', 0, 0, 115, 115, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(469, 41, 1, 1, 'Pay of Officers', 'Per Month', 5, 12, 60, 20, 0, 0, 0, 0, 40, 0, 0, 0, 2, 0, 'No'),
(470, 47, 11, 384, 'Land Development', 'ha', 1000, 5, 5000, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(473, 42, 11, 385, 'Office Buildings', '', 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(478, 42, 14, 434, 'CD / V A T', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'No'),
(479, 45, 4, 46, 'Miscellaneous Taxes', '', 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(480, 45, 12, 406, 'Development Budget - Equity', '', 0, 0, 28, 28, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Yes'),
(505, 45, 3, 8, 'Hill Allowance', '', 0, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(574, 55, 1, 1, 'Pay of Officers', '', 0, 0, 25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(575, 55, 9, 340, 'Motor Vehicles (jeep)', 'Nos', 40, 5, 200, 0, 0, 0, 0, 200, 0, 0, 0, 0, 2, 0, 'No'),
(576, 55, 4, 35, 'Travel Expenses', '', 0, 0, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(577, 55, 9, 340, 'Motor Vehicles(Pajaro)', 'Nos', 125, 2, 250, 0, 0, 0, 0, 250, 0, 0, 0, 0, 2, 0, 'No'),
(578, 50, 1, 1, 'Pay of Officers', '', 0, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(579, 50, 2, 2, 'Pay of Establishment', '', 0, 0, 17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(580, 50, 4, 35, 'Travel Expenses', '', 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(581, 50, 4, 39, 'Rent-Office', '', 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(582, 50, 9, 340, 'Motor Vehicles', '', 0, 0, 16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(583, 50, 9, 341, 'Water Transport', '', 0, 0, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(584, 50, 9, 342, 'Aircraft', '', 0, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(591, 46, 1, 1, 'Pay of Officers', '', 0, 0, 25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(592, 46, 2, 2, 'Pay of Establishment', '', 0, 0, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(593, 46, 4, 35, 'Travel Expenses (Local)', '', 0, 0, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(594, 46, 4, 35, 'Travel Expenses (Foreign)', '', 0, 0, 110, 110, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(595, 46, 4, 39, 'Rent-Office', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(596, 46, 9, 340, 'Motor Vehicles (Prafdo)', '', 0, 0, 200, 200, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(597, 46, 9, 340, 'Motor Vehicles (Jeep)', '', 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(598, 46, 9, 340, 'Motor Vehicles (Micro)', '', 0, 0, 57, 57, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(647, 33, 1, 1, 'Pay of Officers', '', 0, 0, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(648, 33, 2, 2, 'Pay of Establishment', '', 0, 0, 16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(650, 33, 6, 163, '5 Years Treasury Bond-2008 (92.03 Lakh)', '', 0, 0, 16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 2, 54, 'No'),
(651, 33, 12, 407, 'Equity', '', 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'No'),
(653, 56, 9, 347, 'Computer Softwares', '', 0, 0, 19, 6, 0, 6, 7, 0, 0, 0, 0, 0, 1, 0, 'No'),
(655, 56, 6, 173, 'Bangladesh Treasury Bond (BGTB) 20 years', '', 0, 0, 32, 3, 0, 4, 5, 6, 7, 0, 7, 0, 1, 0, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `annexure_vi`
--

CREATE TABLE IF NOT EXISTS `annexure_vi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `loan_period` int(11) NOT NULL,
  `interest_rate` double NOT NULL,
  `grace_period` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `annexure_vi`
--

INSERT INTO `annexure_vi` (`id`, `pid`, `loan_period`, `interest_rate`, `grace_period`) VALUES
(1, 0, 10, 2, 2),
(2, 0, 10, 2, 2),
(3, 0, 10, 2, 2),
(4, 0, 10, 2, 2),
(5, 0, 10, 2, 2),
(6, 0, 10, 2, 2),
(7, 0, 10, 2, 2),
(8, 0, 10, 2, 2),
(9, 0, 0, 0, 0),
(17, 23, 20, 4.6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `annexure_vi_details`
--

CREATE TABLE IF NOT EXISTS `annexure_vi_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `principal_amnt` double NOT NULL,
  `yearly_fixed_amnt` double NOT NULL,
  `yearly_interest` double NOT NULL,
  `total_payment` double NOT NULL,
  `end_balance` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `annexure_vi_details`
--

INSERT INTO `annexure_vi_details` (`id`, `pid`, `year`, `principal_amnt`, `yearly_fixed_amnt`, `yearly_interest`, `total_payment`, `end_balance`) VALUES
(154, 23, 1, 369, 0, 16.97, 16.97, 369),
(155, 23, 2, 369, 18.45, 16.97, 35.42, 350.55),
(156, 23, 3, 350.55, 18.45, 16.13, 34.58, 332.1),
(157, 23, 4, 332.1, 18.45, 15.28, 33.73, 313.65),
(158, 23, 5, 313.65, 18.45, 14.43, 32.88, 295.2),
(159, 23, 6, 295.2, 18.45, 13.58, 32.03, 276.75),
(160, 23, 7, 276.75, 18.45, 12.73, 31.18, 258.3),
(161, 23, 8, 258.3, 18.45, 11.88, 30.33, 239.85),
(162, 23, 9, 239.85, 18.45, 11.03, 29.48, 221.4),
(163, 23, 10, 221.4, 18.45, 10.18, 28.63, 202.95),
(164, 23, 11, 202.95, 18.45, 9.34, 27.79, 184.5),
(165, 23, 12, 184.5, 18.45, 8.49, 26.94, 166.05),
(166, 23, 13, 166.05, 18.45, 7.64, 26.09, 147.6),
(167, 23, 14, 147.6, 18.45, 6.79, 25.24, 129.15),
(168, 23, 15, 129.15, 18.45, 5.94, 24.39, 110.7),
(169, 23, 16, 110.7, 18.45, 5.09, 23.54, 92.25),
(170, 23, 17, 92.25, 18.45, 4.24, 22.69, 73.8),
(171, 23, 18, 73.8, 18.45, 3.39, 21.84, 55.35),
(172, 23, 19, 55.35, 18.45, 2.55, 21, 36.9),
(173, 23, 20, 36.9, 18.45, 1.7, 20.15, 18.45),
(174, 23, 21, 18.45, 18.45, 0.85, 19.3, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `annexure_v_contingency`
--

INSERT INTO `annexure_v_contingency` (`id`, `pid`, `economic_code_id`, `economic_subcode_id`, `economic_subcode_name`, `unit`, `unit_cost`, `qty`, `total_cost`, `gob`, `gob_fe`, `rpa_through_gob`, `rpa_special_account`, `dpa`, `own_fund`, `own_fund_fe`, `other`, `other_fe`, `total_year`, `type`) VALUES
(11, 21, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(12, 21, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
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
(40, 27, 88888, 8888801, 'Price Contingency', '', 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(41, 32, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(42, 32, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(43, 35, 99999, 9999901, 'Physical Contingency', '', 0, 0, 6, 0, 0, 3, 0, 0, 3, 0, 0, 0, 2, 'Physical'),
(44, 35, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(47, 23, 99999, 9999901, 'Physical Contingency', '', 0, 0, 198, 33, 33, 33, 33, 33, 33, 33, 33, 33, 3, 'Physical'),
(48, 23, 88888, 8888801, 'Price Contingency', '', 0, 0, 1998, 333, 333, 333, 333, 333, 333, 333, 333, 111, 3, 'Price'),
(49, 37, 99999, 9999901, 'Physical Contingency', '', 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'Physical'),
(50, 37, 88888, 8888801, 'Price Contingency', '', 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'Price'),
(51, 38, 99999, 9999901, 'Physical Contingency', '', 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 5, 'Physical'),
(52, 38, 88888, 8888801, 'Price Contingency', '', 0, 0, 268.5, 60, 0, 0, 0, 0, 208.5, 0, 0, 0, 5, 'Price'),
(53, 46, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(54, 46, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(55, 42, 99999, 9999901, 'Physical Contingency', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(56, 42, 88888, 8888801, 'Price Contingency', '', 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(57, 44, 99999, 9999901, 'Physical Contingency', '', 0, 0, 10, 0, 0, 0, 0, 10, 0, 0, 0, 0, 2, 'Physical'),
(58, 44, 88888, 8888801, 'Price Contingency', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(59, 43, 99999, 9999901, 'Physical Contingency', '', 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(60, 43, 88888, 8888801, 'Price Contingency', '', 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(61, 45, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(62, 45, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(63, 54, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(64, 54, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(65, 50, 99999, 9999901, 'Physical Contingency', '', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(66, 50, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(67, 49, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(68, 49, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(69, 51, 99999, 9999901, 'Physical Contingency', '', 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(70, 51, 88888, 8888801, 'Price Contingency', '', 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(71, 47, 99999, 9999901, 'Physical Contingency', '', 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(72, 47, 88888, 8888801, 'Price Contingency', '', 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(73, 41, 99999, 9999901, 'Physical Contingency', '', 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(74, 41, 88888, 8888801, 'Price Contingency', '', 0, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(75, 53, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(76, 53, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(77, 55, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(78, 55, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(79, 33, 99999, 9999901, 'Physical Contingency', '', 0, 0, 4, 3, 0, 1, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(80, 33, 88888, 8888801, 'Price Contingency', '', 0, 0, 6, 4, 0, 2, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(81, 56, 99999, 9999901, 'Physical Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(82, 56, 88888, 8888801, 'Price Contingency', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price');

-- --------------------------------------------------------

--
-- Table structure for table `annexure_v_contingency_details`
--

CREATE TABLE IF NOT EXISTS `annexure_v_contingency_details` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `contingency_id` int(11) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=238 ;

--
-- Dumping data for table `annexure_v_contingency_details`
--

INSERT INTO `annexure_v_contingency_details` (`id`, `contingency_id`, `pid`, `gob`, `gob_fe`, `rpa_through_gob`, `rpa_special_account`, `dpa`, `own_fund`, `own_fund_fe`, `other`, `other_fe`, `total`, `year_serial`, `type`) VALUES
(37, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(38, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(39, 0, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 1, 'Physical'),
(41, 0, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 1, 'Price'),
(67, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(68, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(71, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(72, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(73, 0, 26, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 'Physical'),
(74, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(75, 0, 26, 8, 0, 7, 6, 0, 8, 0, 0, 0, 29, 2, 'Physical'),
(76, 0, 26, 0, 0, 0, 7, 0, 0, 0, 0, 0, 7, 2, 'Price'),
(77, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(78, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(79, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(80, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(81, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(82, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(83, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(84, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(85, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Physical'),
(86, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Price'),
(87, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(88, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(89, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(90, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(91, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Physical'),
(92, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Price'),
(93, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(94, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(95, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Physical'),
(96, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(97, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(98, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Price'),
(101, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(102, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(103, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(104, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(105, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(106, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(107, 0, 25, 8, 8, 8, 8, 8, 8, 8, 8, 8, 48, 1, 'Physical'),
(108, 0, 25, 7, 7, 7, 7, 7, 7, 7, 7, 7, 42, 1, 'Price'),
(109, 0, 31, 10, 0, 23, 0, 0, 0, 0, 0, 0, 33, 1, 'Physical'),
(110, 0, 31, 2, 0, 5, 0, 0, 0, 0, 0, 0, 7, 1, 'Price'),
(111, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(112, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(113, 0, 27, 5, 0, 67, 0, 0, 0, 0, 0, 0, 72, 1, 'Physical'),
(114, 0, 27, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 'Price'),
(115, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(117, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(124, 0, 35, 0, 0, 3, 0, 0, 0, 0, 0, 0, 3, 1, 'Physical'),
(125, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(126, 0, 35, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 2, 'Physical'),
(127, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(128, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(129, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(134, 47, 23, 11, 11, 11, 11, 11, 11, 11, 11, 11, 66, 1, 'Physical'),
(135, 48, 23, 111, 111, 111, 111, 111, 111, 111, 111, 111, 666, 1, 'Price'),
(136, 47, 23, 22, 22, 22, 22, 22, 22, 22, 22, 22, 132, 2, 'Physical'),
(138, 48, 23, 222, 222, 222, 222, 222, 222, 222, 222, 0, 1332, 2, 'Price'),
(140, 49, 37, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 'Physical'),
(141, 49, 37, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 'Physical'),
(142, 49, 37, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 'Physical'),
(143, 49, 37, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 'Physical'),
(144, 50, 37, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 'Price'),
(145, 50, 37, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 'Price'),
(146, 50, 37, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 'Price'),
(147, 50, 37, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 'Price'),
(148, 51, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(149, 51, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(150, 51, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'Physical'),
(151, 51, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'Physical'),
(152, 51, 38, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, 5, 'Physical'),
(153, 52, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(154, 52, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(155, 52, 38, 0, 0, 0, 0, 0, 39.5, 0, 0, 0, 39.5, 3, 'Price'),
(156, 52, 38, 0, 0, 0, 0, 0, 81.7, 0, 0, 0, 81.7, 4, 'Price'),
(157, 52, 38, 60, 0, 0, 0, 0, 87.3, 0, 0, 0, 147.3, 5, 'Price'),
(160, 55, 42, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 'Physical'),
(161, 56, 42, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 'Price'),
(164, 57, 44, 0, 0, 0, 0, 10, 0, 0, 0, 0, 10, 1, 'Physical'),
(165, 57, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(166, 58, 44, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 'Price'),
(167, 58, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(168, 59, 43, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, 1, 'Physical'),
(169, 59, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(170, 60, 43, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 'Price'),
(171, 60, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(172, 61, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(173, 61, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(174, 62, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(175, 62, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(176, 63, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(177, 63, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(178, 64, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(179, 64, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(182, 65, 50, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'Physical'),
(183, 65, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(184, 66, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(185, 66, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(186, 67, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(187, 67, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(188, 68, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(189, 68, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(190, 69, 51, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 'Physical'),
(191, 69, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(192, 70, 51, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 'Price'),
(193, 70, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(194, 71, 47, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1, 'Physical'),
(195, 71, 47, 30, 0, 0, 0, 0, 0, 0, 0, 0, 30, 2, 'Physical'),
(196, 72, 47, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 'Price'),
(197, 72, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(198, 73, 41, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 'Physical'),
(199, 73, 41, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 2, 'Physical'),
(200, 74, 41, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 'Price'),
(201, 74, 41, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 2, 'Price'),
(202, 75, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(203, 75, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(204, 76, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(205, 76, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(206, 77, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(207, 77, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(208, 78, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(209, 78, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(210, 53, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(211, 53, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Physical'),
(212, 54, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price'),
(213, 54, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'Price'),
(230, 79, 33, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 'Physical'),
(232, 80, 33, 0, 0, 2, 0, 0, 0, 0, 0, 0, 2, 1, 'Price'),
(234, 79, 33, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 'Physical'),
(235, 80, 33, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 'Price'),
(236, 81, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Physical'),
(237, 82, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Price');

--
-- Triggers `annexure_v_contingency_details`
--
DROP TRIGGER IF EXISTS `update_annex_v_contingency_cost`;
DELIMITER //
CREATE TRIGGER `update_annex_v_contingency_cost` AFTER DELETE ON `annexure_v_contingency_details`
 FOR EACH ROW UPDATE annexure_v_contingency
SET
total_cost = (total_cost-OLD.total),
gob =(gob-OLD.gob),
gob_fe =(gob_fe-OLD.gob_fe),
rpa_through_gob =(rpa_through_gob-OLD.rpa_through_gob),
rpa_special_account =(rpa_special_account-OLD.rpa_special_account),
dpa =(dpa-OLD.dpa),
own_fund =(own_fund-OLD.own_fund),
own_fund_fe =(own_fund_fe-OLD.own_fund_fe),
other =(other-OLD.other),
other_fe =(other_fe-OLD.other_fe)
WHERE id = OLD.contingency_id
//
DELIMITER ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1624 ;

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
(57, 23, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(67, 25, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(77, 27, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(82, 28, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(87, 29, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(92, 30, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(97, 31, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(102, 32, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(107, 33, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(112, 34, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(117, 35, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(122, 36, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(127, 37, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(132, 38, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(137, 39, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(142, 40, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(147, 41, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(152, 42, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(157, 43, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(162, 44, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(167, 45, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(172, 46, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(177, 47, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(182, 48, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(187, 49, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(192, 50, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(197, 51, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(202, 52, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(207, 53, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(212, 54, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(217, 55, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(222, 56, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(227, 57, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(232, 58, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(237, 59, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(242, 60, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(247, 61, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(252, 62, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(257, 63, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(262, 64, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(267, 65, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(272, 66, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(277, 67, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(282, 68, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(287, 69, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(292, 70, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(297, 71, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(302, 72, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(307, 73, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(312, 74, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(317, 75, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(322, 76, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(327, 77, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(332, 78, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(337, 79, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(342, 80, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(347, 81, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(352, 82, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(357, 83, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(362, 84, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(367, 85, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(372, 86, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(377, 87, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(382, 88, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(387, 89, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(392, 90, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(397, 91, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(402, 92, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(407, 93, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(412, 94, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(417, 95, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(422, 96, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(427, 97, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(432, 98, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(437, 99, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(442, 100, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(447, 101, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(452, 102, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(457, 103, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(462, 104, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(467, 105, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(472, 106, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(477, 107, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(482, 108, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(487, 109, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(492, 110, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(497, 111, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(502, 112, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(507, 113, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
(512, 114, 24, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2014-2015', 1),
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
(646, 159, 21, 1, 0, 2, 3, 0, 0, 0, 0, 0, 6, 'sdfasdf', 1),
(662, 165, 35, 4, 4, 6, 6, 0, 0, 0, 0, 0, 16, 'Bangladesh 2014', 1),
(663, 166, 35, 5, 0, 6, 45, 0, 0, 0, 0, 0, 56, 'Bangladesh 2014', 1),
(664, 165, 35, 3, 3, 3, 3, 3, 3, 3, 3, 3, 18, '2014-2015', 2),
(665, 166, 35, 4, 4, 4, 4, 4, 4, 4, 4, 4, 24, '2014-2015', 2),
(669, 161, 32, 5, 0, 5, 5, 5, 5, 5, 5, 5, 30, 'hhhhh', 1),
(670, 167, 32, 5.005, 5, 5, 5, 5, 5, 0, 5, 0, 30, 'hhhhh', 1),
(671, 160, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'hhhhh', 1),
(672, 163, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'hhhhh', 1),
(673, 162, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'hhhhh', 1),
(674, 164, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'hhhhh', 1),
(675, 168, 35, 5, 5, 5, 0, 0, 0, 0, 0, 0, 10, 'Bangladesh 2014', 1),
(676, 168, 35, 20, 5, 0, 0, 0, 0, 0, 0, 0, 20, '2014-2015', 2),
(677, 169, 35, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 'Bangladesh 2014', 1),
(678, 169, 35, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2014-2015', 2),
(687, 222, 23, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, '2013-2014', 1),
(688, 222, 23, 2, 2, 2, 2, 2, 2, 2, 2, 2, 12, '2014-2015', 2),
(691, 260, 37, 1.32, 0, 0, 0, 0, 0, 0, 0, 0, 1.32, '2009-2010', 1),
(692, 260, 37, 9.06, 0, 0, 0, 0, 0, 0, 0, 0, 9.06, '2010-2011', 2),
(693, 260, 37, 9.06, 0, 0, 0, 0, 0, 0, 0, 0, 9.06, '2011-2012', 3),
(694, 260, 37, 9.06, 0, 0, 0, 0, 0, 0, 0, 0, 9.06, '2012-2013', 4),
(695, 261, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(696, 261, 37, 0.94, 0, 0, 0, 0, 0, 0, 0, 0, 0.94, '2010-2011', 2),
(697, 261, 37, 0.94, 0, 0, 0, 0, 0, 0, 0, 0, 0.94, '2011-2012', 3),
(698, 261, 37, 0.94, 0, 0, 0, 0, 0, 0, 0, 0, 0.94, '2012-2013', 4),
(699, 262, 37, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2009-2010', 1),
(700, 262, 37, 2.25, 0, 0, 0, 0, 0, 0, 0, 0, 2.25, '2010-2011', 2),
(701, 262, 37, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2011-2012', 3),
(702, 262, 37, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2012-2013', 4),
(703, 263, 37, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, '2009-2010', 1),
(704, 263, 37, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, '2010-2011', 2),
(705, 263, 37, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, '2011-2012', 3),
(706, 263, 37, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, '2012-2013', 4),
(707, 264, 37, 0.12, 0, 0, 0, 0, 0, 0, 0, 0, 0.12, '2009-2010', 1),
(708, 264, 37, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0.13, '2010-2011', 2),
(709, 264, 37, 0.12, 0, 0, 0, 0, 0, 0, 0, 0, 0.12, '2011-2012', 3),
(710, 264, 37, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0.13, '2012-2013', 4),
(711, 265, 37, 0.12, 0, 0, 0, 0, 0, 0, 0, 0, 0.12, '2009-2010', 1),
(712, 265, 37, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0.13, '2010-2011', 2),
(713, 265, 37, 0.12, 0, 0, 0, 0, 0, 0, 0, 0, 0.12, '2011-2012', 3),
(714, 265, 37, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0.13, '2012-2013', 4),
(715, 266, 37, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, '2009-2010', 1),
(716, 266, 37, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, '2010-2011', 2),
(717, 266, 37, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, '2011-2012', 3),
(718, 266, 37, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, '2012-2013', 4),
(719, 267, 37, 0.23, 0, 0, 0, 0, 0, 0, 0, 0, 0.23, '2009-2010', 1),
(720, 267, 37, 0.23, 0, 0, 0, 0, 0, 0, 0, 0, 0.23, '2010-2011', 2),
(721, 267, 37, 0.23, 0, 0, 0, 0, 0, 0, 0, 0, 0.23, '2011-2012', 3),
(722, 267, 37, 0.23, 0, 0, 0, 0, 0, 0, 0, 0, 0.23, '2012-2013', 4),
(723, 268, 37, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, '2009-2010', 1),
(724, 268, 37, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0.6, '2010-2011', 2),
(725, 268, 37, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, '2011-2012', 3),
(726, 268, 37, 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, '2012-2013', 4),
(727, 269, 37, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2009-2010', 1),
(728, 269, 37, 6.25, 0, 0, 0, 0, 0, 0, 0, 0, 6.25, '2010-2011', 2),
(729, 269, 37, 3.25, 0, 0, 0, 0, 0, 0, 0, 0, 3.25, '2011-2012', 3),
(730, 269, 37, 3.25, 0, 0, 0, 0, 0, 0, 0, 0, 3.25, '2012-2013', 4),
(731, 270, 37, 0.12, 0, 0, 0, 0, 0, 0, 0, 0, 0.12, '2009-2010', 1),
(732, 270, 37, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0.13, '2010-2011', 2),
(733, 270, 37, 0.12, 0, 0, 0, 0, 0, 0, 0, 0, 0.12, '2011-2012', 3),
(734, 270, 37, 0.13, 0, 0, 0, 0, 0, 0, 0, 0, 0.13, '2012-2013', 4),
(735, 271, 37, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2009-2010', 1),
(736, 271, 37, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2010-2011', 2),
(737, 271, 37, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2011-2012', 3),
(738, 271, 37, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2012-2013', 4),
(739, 272, 37, 0.63, 0, 0, 0, 0, 0, 0, 0, 0, 0.63, '2009-2010', 1),
(740, 272, 37, 0.63, 0, 0, 0, 0, 0, 0, 0, 0, 0.63, '2010-2011', 2),
(741, 272, 37, 0.63, 0, 0, 0, 0, 0, 0, 0, 0, 0.63, '2011-2012', 3),
(742, 272, 37, 0.63, 0, 0, 0, 0, 0, 0, 0, 0, 0.63, '2012-2013', 4),
(743, 273, 37, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2009-2010', 1),
(744, 273, 37, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2010-2011', 2),
(745, 273, 37, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2011-2012', 3),
(746, 273, 37, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2012-2013', 4),
(747, 274, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(748, 274, 37, 0.75, 0, 0, 0, 0, 0, 0, 0, 0, 0.75, '2010-2011', 2),
(749, 274, 37, 0.75, 0, 0, 0, 0, 0, 0, 0, 0, 0.75, '2011-2012', 3),
(750, 274, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2012-2013', 4),
(751, 275, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(752, 275, 37, 2.56, 0, 0, 0, 0, 0, 0, 0, 0, 2.56, '2010-2011', 2),
(753, 275, 37, 2.56, 0, 0, 0, 0, 0, 0, 0, 0, 2.56, '2011-2012', 3),
(754, 275, 37, 1.28, 0, 0, 0, 0, 0, 0, 0, 0, 1.28, '2012-2013', 4),
(755, 276, 37, 1.86, 0, 0, 0, 0, 0, 0, 0, 0, 1.86, '2009-2010', 1),
(756, 276, 37, 1.85, 0, 0, 0, 0, 0, 0, 0, 0, 1.85, '2010-2011', 2),
(757, 276, 37, 1.85, 0, 0, 0, 0, 0, 0, 0, 0, 1.85, '2011-2012', 3),
(758, 276, 37, 1.85, 0, 0, 0, 0, 0, 0, 0, 0, 1.85, '2012-2013', 4),
(759, 277, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(760, 277, 37, 0.7, 0, 0, 0, 0, 0, 0, 0, 0, 0.7, '2010-2011', 2),
(761, 277, 37, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 1.4, '2011-2012', 3),
(762, 277, 37, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 1.4, '2012-2013', 4),
(763, 278, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(764, 278, 37, 0.7, 0, 0, 0, 0, 0, 0, 0, 0, 0.7, '2010-2011', 2),
(765, 278, 37, 0.35, 0, 0, 0, 0, 0, 0, 0, 0, 0.35, '2011-2012', 3),
(766, 278, 37, 0.35, 0, 0, 0, 0, 0, 0, 0, 0, 0.35, '2012-2013', 4),
(767, 279, 37, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, '2009-2010', 1),
(768, 279, 37, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, '2010-2011', 2),
(769, 279, 37, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, '2011-2012', 3),
(770, 279, 37, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, '2012-2013', 4),
(771, 280, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(772, 280, 37, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2010-2011', 2),
(773, 280, 37, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2011-2012', 3),
(774, 280, 37, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2012-2013', 4),
(775, 281, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(776, 281, 37, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 2.5, '2010-2011', 2),
(777, 281, 37, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2011-2012', 3),
(778, 281, 37, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2012-2013', 4),
(779, 282, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(780, 282, 37, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 2.5, '2010-2011', 2),
(781, 282, 37, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2011-2012', 3),
(782, 282, 37, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2012-2013', 4),
(783, 283, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(784, 283, 37, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2010-2011', 2),
(785, 283, 37, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2011-2012', 3),
(786, 283, 37, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2012-2013', 4),
(787, 284, 37, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2009-2010', 1),
(788, 284, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2010-2011', 2),
(789, 284, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2011-2012', 3),
(790, 284, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2012-2013', 4),
(791, 285, 37, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 1.5, '2009-2010', 1),
(792, 285, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2010-2011', 2),
(793, 285, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2011-2012', 3),
(794, 285, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2012-2013', 4),
(795, 286, 37, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2009-2010', 1),
(796, 286, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2010-2011', 2),
(797, 286, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2011-2012', 3),
(798, 286, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2012-2013', 4),
(799, 287, 37, 25, 0, 0, 0, 0, 0, 0, 0, 0, 25, '2009-2010', 1),
(800, 287, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2010-2011', 2),
(801, 287, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2011-2012', 3),
(802, 287, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2012-2013', 4),
(803, 288, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(804, 288, 37, 111, 0, 0, 0, 0, 0, 0, 0, 0, 111, '2010-2011', 2),
(805, 288, 37, 37, 0, 0, 0, 0, 0, 0, 0, 0, 37, '2011-2012', 3),
(806, 288, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2012-2013', 4),
(807, 289, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(808, 289, 37, 425, 0, 0, 0, 0, 0, 0, 0, 0, 425, '2010-2011', 2),
(809, 289, 37, 297.5, 0, 0, 0, 0, 0, 0, 0, 0, 297.5, '2011-2012', 3),
(810, 289, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2012-2013', 4),
(811, 290, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(812, 290, 37, 27.5, 0, 0, 0, 0, 0, 0, 0, 0, 27.5, '2010-2011', 2),
(813, 290, 37, 27.5, 0, 0, 0, 0, 0, 0, 0, 0, 27.5, '2011-2012', 3),
(814, 290, 37, 55, 0, 0, 0, 0, 0, 0, 0, 0, 55, '2012-2013', 4),
(815, 291, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(816, 291, 37, 75, 0, 0, 0, 0, 0, 0, 0, 0, 75, '2010-2011', 2),
(817, 291, 37, 105, 0, 0, 0, 0, 0, 0, 0, 0, 105, '2011-2012', 3),
(818, 291, 37, 75, 0, 0, 0, 0, 0, 0, 0, 0, 75, '2012-2013', 4),
(819, 292, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(820, 292, 37, 28.83, 0, 0, 0, 0, 0, 0, 0, 0, 28.83, '2010-2011', 2),
(821, 292, 37, 28.82, 0, 0, 0, 0, 0, 0, 0, 0, 28.82, '2011-2012', 3),
(822, 292, 37, 57.65, 0, 0, 0, 0, 0, 0, 0, 0, 57.65, '2012-2013', 4),
(823, 293, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(824, 293, 37, 136, 0, 0, 0, 0, 0, 0, 0, 0, 136, '2010-2011', 2),
(825, 293, 37, 190.4, 0, 0, 0, 0, 0, 0, 0, 0, 190.4, '2011-2012', 3),
(826, 293, 37, 136, 0, 0, 0, 0, 0, 0, 0, 0, 136, '2012-2013', 4),
(827, 294, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(828, 294, 37, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2010-2011', 2),
(829, 294, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2011-2012', 3),
(830, 294, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2012-2013', 4),
(831, 295, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(832, 295, 37, 30, 0, 0, 0, 0, 0, 0, 0, 0, 30, '2010-2011', 2),
(833, 295, 37, 30, 0, 0, 0, 0, 0, 0, 0, 0, 30, '2011-2012', 3),
(834, 295, 37, 60, 0, 0, 0, 0, 0, 0, 0, 0, 60, '2012-2013', 4),
(835, 296, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2009-2010', 1),
(836, 296, 37, 75, 0, 0, 0, 0, 0, 0, 0, 0, 75, '2010-2011', 2),
(837, 296, 37, 105, 0, 0, 0, 0, 0, 0, 0, 0, 105, '2011-2012', 3),
(838, 296, 37, 75, 0, 0, 0, 0, 0, 0, 0, 0, 75, '2012-2013', 4),
(839, 297, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(840, 297, 38, 16.75, 0, 0, 0, 0, 0, 0, 0, 0, 16.75, '2014-2015', 2),
(841, 297, 38, 16.75, 0, 0, 0, 0, 0, 0, 0, 0, 16.75, '2015-2016', 3),
(842, 297, 38, 16.75, 0, 0, 0, 0, 0, 0, 0, 0, 16.75, '2016-2017', 4),
(843, 297, 38, 33.5, 0, 0, 0, 0, 0, 0, 0, 0, 33.5, '2017-2018', 5),
(844, 298, 38, 8.1, 0, 0, 0, 0, 0, 0, 0, 0, 8.1, '2013-2014', 1),
(845, 298, 38, 8.9, 0, 0, 0, 0, 0, 0, 0, 0, 8.9, '2014-2015', 2),
(846, 298, 38, 11.85, 0, 0, 0, 0, 0, 0, 0, 0, 11.85, '2015-2016', 3),
(847, 298, 38, 11.55, 0, 0, 0, 0, 0, 0, 0, 0, 11.55, '2016-2017', 4),
(848, 298, 38, 11.35, 0, 0, 0, 0, 0, 0, 0, 0, 11.35, '2017-2018', 5),
(849, 299, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(850, 299, 38, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, '2014-2015', 2),
(851, 299, 38, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, '2015-2016', 3),
(852, 299, 38, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0.3, '2016-2017', 4),
(853, 299, 38, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, '2017-2018', 5),
(854, 300, 38, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, '2013-2014', 1),
(855, 300, 38, 3.45, 0, 0, 0, 0, 0, 0, 0, 0, 3.45, '2014-2015', 2),
(856, 300, 38, 4.2, 0, 0, 0, 0, 0, 0, 0, 0, 4.2, '2015-2016', 3),
(857, 300, 38, 4.45, 0, 0, 0, 0, 0, 0, 0, 0, 4.45, '2016-2017', 4),
(858, 300, 38, 6.85, 0, 0, 0, 0, 0, 0, 0, 0, 6.85, '2017-2018', 5),
(859, 301, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(860, 301, 38, 15.25, 0, 0, 0, 0, 0, 0, 0, 0, 15.25, '2014-2015', 2),
(861, 301, 38, 11.09, 0, 0, 0, 0, 0, 0, 0, 0, 11.09, '2015-2016', 3),
(862, 301, 38, 12.47, 0, 0, 0, 0, 0, 0, 0, 0, 12.47, '2016-2017', 4),
(863, 301, 38, 12.01, 0, 0, 0, 0, 0, 0, 0, 0, 12.01, '2017-2018', 5),
(864, 302, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(865, 302, 38, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2014-2015', 2),
(866, 302, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(867, 302, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(868, 302, 38, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2017-2018', 5),
(869, 303, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(870, 303, 38, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2014-2015', 2),
(871, 303, 38, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2015-2016', 3),
(872, 303, 38, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2016-2017', 4),
(873, 303, 38, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2017-2018', 5),
(874, 304, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(875, 304, 38, 14, 0, 0, 0, 0, 0, 0, 0, 0, 14, '2014-2015', 2),
(876, 304, 38, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2016', 3),
(877, 304, 38, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2016-2017', 4),
(878, 304, 38, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2017-2018', 5),
(879, 305, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(880, 305, 38, 19.5, 0, 0, 0, 0, 0, 0, 0, 0, 19.5, '2014-2015', 2),
(881, 305, 38, 20.5, 0, 0, 0, 0, 0, 0, 0, 0, 20.5, '2015-2016', 3),
(882, 305, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(883, 305, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(884, 306, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(885, 306, 38, 7.65, 0, 0, 0, 0, 0, 0, 0, 0, 7.65, '2014-2015', 2),
(886, 306, 38, 2.75, 0, 0, 0, 0, 0, 0, 0, 0, 2.75, '2015-2016', 3),
(887, 306, 38, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, '2016-2017', 4),
(888, 306, 38, 3.2, 0, 0, 0, 0, 0, 0, 0, 0, 3.2, '2017-2018', 5),
(889, 307, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(890, 307, 38, 14, 0, 0, 0, 0, 0, 0, 0, 0, 14, '2014-2015', 2),
(891, 307, 38, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, '2015-2016', 3),
(892, 307, 38, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, '2016-2017', 4),
(893, 307, 38, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, '2017-2018', 5),
(894, 308, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(895, 308, 38, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 2.5, '2014-2015', 2),
(896, 308, 38, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2015-2016', 3),
(897, 308, 38, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2016-2017', 4),
(898, 308, 38, 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, '2017-2018', 5),
(899, 309, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(900, 309, 38, 40, 0, 0, 0, 0, 0, 0, 0, 0, 40, '2014-2015', 2),
(901, 309, 38, 14, 0, 0, 0, 0, 0, 0, 0, 0, 14, '2015-2016', 3),
(902, 309, 38, 14, 0, 0, 0, 0, 0, 0, 0, 0, 14, '2016-2017', 4),
(903, 309, 38, 14, 0, 0, 0, 0, 0, 0, 0, 0, 14, '2017-2018', 5),
(904, 310, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(905, 310, 38, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 2.5, '2014-2015', 2),
(906, 310, 38, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 1.5, '2015-2016', 3),
(907, 310, 38, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 1.5, '2016-2017', 4),
(908, 310, 38, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 1.5, '2017-2018', 5),
(909, 311, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(910, 311, 38, 4.3, 0, 0, 0, 0, 0, 0, 0, 0, 4.3, '2014-2015', 2),
(911, 311, 38, 3.5, 0, 0, 0, 0, 0, 0, 0, 0, 3.5, '2015-2016', 3),
(912, 311, 38, 3.9, 0, 0, 0, 0, 0, 0, 0, 0, 3.9, '2016-2017', 4),
(913, 311, 38, 4.2, 0, 0, 0, 0, 0, 0, 0, 0, 4.2, '2017-2018', 5),
(914, 312, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(915, 312, 38, 45, 0, 0, 0, 0, 0, 0, 0, 0, 45, '2014-2015', 2),
(916, 312, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(917, 312, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(918, 312, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(919, 313, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(920, 313, 38, 70, 0, 0, 0, 0, 0, 0, 0, 0, 70, '2014-2015', 2),
(921, 313, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(922, 313, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(923, 313, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(924, 314, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(925, 314, 38, 55, 0, 0, 0, 0, 0, 0, 0, 0, 55, '2014-2015', 2),
(926, 314, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(927, 314, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(928, 314, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(929, 315, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(930, 315, 38, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2014-2015', 2),
(931, 315, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(932, 315, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(933, 315, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(934, 316, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(935, 316, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(936, 316, 38, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2015-2016', 3),
(937, 316, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(938, 316, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(939, 317, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(940, 317, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(941, 317, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(942, 317, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(943, 317, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(944, 318, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(945, 318, 38, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2014-2015', 2),
(946, 318, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(947, 318, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(948, 318, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(949, 319, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(950, 319, 38, 30, 0, 0, 0, 0, 0, 0, 0, 0, 30, '2014-2015', 2),
(951, 319, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(952, 319, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(953, 319, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(954, 320, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(955, 320, 38, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 1.4, '2014-2015', 2),
(956, 320, 38, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 1.4, '2015-2016', 3),
(957, 320, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(958, 320, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(959, 321, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(960, 321, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2014-2015', 2),
(961, 321, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015-2016', 3),
(962, 321, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(963, 321, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(964, 322, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(965, 322, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2014-2015', 2),
(966, 322, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015-2016', 3),
(967, 322, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(968, 322, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(969, 323, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(970, 323, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2014-2015', 2),
(971, 323, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015-2016', 3),
(972, 323, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(973, 323, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(974, 324, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(975, 324, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2014-2015', 2),
(976, 324, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015-2016', 3),
(977, 324, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(978, 324, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(979, 325, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(980, 325, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2014-2015', 2),
(981, 325, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015-2016', 3),
(982, 325, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(983, 325, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(984, 326, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(985, 326, 38, 0.35, 0, 0, 0, 0, 0, 0, 0, 0, 0.35, '2014-2015', 2),
(986, 326, 38, 0.35, 0, 0, 0, 0, 0, 0, 0, 0, 0.35, '2015-2016', 3),
(987, 326, 38, 0.35, 0, 0, 0, 0, 0, 0, 0, 0, 0.35, '2016-2017', 4),
(988, 326, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(989, 327, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(990, 327, 38, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 2.5, '2014-2015', 2),
(991, 327, 38, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 2.5, '2015-2016', 3),
(992, 327, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(993, 327, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(994, 328, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(995, 328, 38, 25, 0, 0, 0, 0, 0, 0, 0, 0, 25, '2014-2015', 2),
(996, 328, 38, 25, 0, 0, 0, 0, 0, 0, 0, 0, 25, '2015-2016', 3),
(997, 328, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(998, 328, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(999, 329, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1000, 329, 38, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2014-2015', 2),
(1001, 329, 38, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2015-2016', 3),
(1002, 329, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1003, 329, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1004, 330, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1005, 330, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2014-2015', 2),
(1006, 330, 38, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015-2016', 3),
(1007, 330, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1008, 330, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1009, 331, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1010, 331, 38, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2014-2015', 2),
(1011, 331, 38, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2015-2016', 3),
(1012, 331, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1013, 331, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1014, 332, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1015, 332, 38, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2014-2015', 2),
(1016, 332, 38, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2015-2016', 3),
(1017, 332, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1018, 332, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1019, 333, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1020, 333, 38, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2014-2015', 2),
(1021, 333, 38, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2015-2016', 3),
(1022, 333, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1023, 333, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1024, 334, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1025, 334, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1026, 334, 38, 40, 0, 0, 0, 0, 0, 0, 0, 0, 40, '2015-2016', 3),
(1027, 334, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1028, 334, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1029, 335, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1030, 335, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1031, 335, 38, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2015-2016', 3),
(1032, 335, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1033, 335, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1034, 336, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1035, 336, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1036, 336, 38, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2015-2016', 3),
(1037, 336, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1038, 336, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1039, 337, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1040, 337, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1041, 337, 38, 35, 0, 0, 0, 0, 0, 0, 0, 0, 35, '2015-2016', 3),
(1042, 337, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1043, 337, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1044, 338, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1045, 338, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1046, 338, 38, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2015-2016', 3),
(1047, 338, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1048, 338, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1049, 339, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1050, 339, 38, 12, 0, 0, 0, 0, 0, 0, 0, 0, 12, '2014-2015', 2),
(1051, 339, 38, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2015-2016', 3),
(1052, 339, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1053, 339, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1054, 340, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1055, 340, 38, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 1.5, '2014-2015', 2),
(1056, 340, 38, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2015-2016', 3),
(1057, 340, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1058, 340, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1059, 341, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1060, 341, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1061, 341, 38, 6, 0, 0, 0, 0, 0, 0, 0, 0, 6, '2015-2016', 3),
(1062, 341, 38, 6, 0, 0, 0, 0, 0, 0, 0, 0, 6, '2016-2017', 4),
(1063, 341, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1064, 342, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1065, 342, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1066, 342, 38, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2015-2016', 3),
(1067, 342, 38, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2016-2017', 4),
(1068, 342, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1069, 343, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1070, 343, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1071, 343, 38, 24, 0, 0, 0, 0, 0, 0, 0, 0, 24, '2015-2016', 3),
(1072, 343, 38, 24, 0, 0, 0, 0, 0, 0, 0, 0, 24, '2016-2017', 4),
(1073, 343, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1074, 344, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1075, 344, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1076, 344, 38, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2016', 3),
(1077, 344, 38, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2016-2017', 4),
(1078, 344, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1079, 345, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1080, 345, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1081, 345, 38, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2015-2016', 3),
(1082, 345, 38, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2016-2017', 4),
(1083, 345, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1084, 346, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1085, 346, 38, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2014-2015', 2),
(1086, 346, 38, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2015-2016', 3),
(1087, 346, 38, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2016-2017', 4),
(1088, 346, 38, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2017-2018', 5),
(1089, 347, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1090, 347, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1091, 347, 38, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, '2015-2016', 3),
(1092, 347, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1093, 347, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1094, 348, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1095, 348, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1096, 348, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1097, 348, 38, 60, 0, 0, 0, 0, 0, 0, 0, 0, 60, '2016-2017', 4),
(1098, 348, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1099, 349, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1100, 349, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1101, 349, 38, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2016', 3),
(1102, 349, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1103, 349, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1104, 350, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1105, 350, 38, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2014-2015', 2),
(1106, 350, 38, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 2.5, '2015-2016', 3),
(1107, 350, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1108, 350, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1109, 351, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1110, 351, 38, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2014-2015', 2),
(1111, 351, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1112, 351, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1113, 351, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1114, 352, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1115, 352, 38, 22, 0, 0, 0, 0, 0, 0, 0, 0, 22, '2014-2015', 2),
(1116, 352, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1117, 352, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1118, 352, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1119, 353, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1120, 353, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014-2015', 2),
(1121, 353, 38, 5.2, 0, 0, 0, 0, 0, 0, 0, 0, 5.2, '2015-2016', 3),
(1122, 353, 38, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0.6, '2016-2017', 4),
(1123, 353, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1124, 354, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1125, 354, 38, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, '2014-2015', 2),
(1126, 354, 38, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2016', 3),
(1127, 354, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1128, 354, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1129, 355, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1130, 355, 38, 0.9, 0, 0, 0, 0, 0, 0, 0, 0, 0.9, '2014-2015', 2),
(1131, 355, 38, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 1.5, '2015-2016', 3),
(1132, 355, 38, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2016-2017', 4),
(1133, 355, 38, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2017-2018', 5),
(1134, 356, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1135, 356, 38, 23, 0, 0, 0, 0, 0, 0, 0, 0, 23, '2014-2015', 2),
(1136, 356, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1137, 356, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1138, 356, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1139, 357, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1140, 357, 38, 746, 0, 0, 0, 0, 0, 0, 0, 0, 746, '2014-2015', 2),
(1141, 357, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1142, 357, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1143, 357, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1144, 358, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1145, 358, 38, 100, 0, 0, 0, 0, 0, 0, 0, 0, 100, '2014-2015', 2),
(1146, 358, 38, 25, 0, 0, 0, 0, 0, 0, 0, 0, 25, '2015-2016', 3),
(1147, 358, 38, 25, 0, 0, 0, 0, 0, 0, 0, 0, 25, '2016-2017', 4),
(1148, 358, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1149, 359, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1150, 359, 38, 35, 0, 0, 0, 0, 0, 0, 0, 0, 35, '2014-2015', 2),
(1151, 359, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1152, 359, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1153, 359, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1154, 360, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1155, 360, 38, 60, 0, 0, 0, 0, 0, 0, 0, 0, 60, '2014-2015', 2),
(1156, 360, 38, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2015-2016', 3),
(1157, 360, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1158, 360, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1159, 361, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1160, 361, 38, 60, 0, 0, 0, 0, 0, 0, 0, 0, 60, '2014-2015', 2),
(1161, 361, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1162, 361, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1163, 361, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1164, 362, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1165, 362, 38, 106, 0, 0, 0, 0, 0, 0, 0, 0, 106, '2014-2015', 2),
(1166, 362, 38, 25, 0, 0, 0, 0, 0, 0, 0, 0, 25, '2015-2016', 3),
(1167, 362, 38, 25, 0, 0, 0, 0, 0, 0, 0, 0, 25, '2016-2017', 4),
(1168, 362, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1169, 363, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1170, 363, 38, 70, 0, 0, 0, 0, 0, 0, 0, 0, 70, '2014-2015', 2),
(1171, 363, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1172, 363, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1173, 363, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1174, 364, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1175, 364, 38, 30, 0, 0, 0, 0, 0, 0, 0, 0, 30, '2014-2015', 2),
(1176, 364, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1177, 364, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1178, 364, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1179, 365, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1180, 365, 38, 31, 0, 0, 0, 0, 0, 0, 0, 0, 31, '2014-2015', 2),
(1181, 365, 38, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, '2015-2016', 3),
(1182, 365, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1183, 365, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1184, 366, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1185, 366, 38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 38, '2014-2015', 2),
(1186, 366, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1187, 366, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1188, 366, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1189, 367, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1190, 367, 38, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2014-2015', 2),
(1191, 367, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1192, 367, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1193, 367, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1194, 368, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1195, 368, 38, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, '2014-2015', 2),
(1196, 368, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1197, 368, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1198, 368, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1199, 369, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1200, 369, 38, 30, 0, 0, 0, 0, 0, 0, 0, 0, 30, '2014-2015', 2),
(1201, 369, 38, 25, 0, 0, 0, 0, 0, 0, 0, 0, 25, '2015-2016', 3),
(1202, 369, 38, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, '2016-2017', 4),
(1203, 369, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1204, 370, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-2014', 1),
(1205, 370, 38, 79.24, 0, 0, 0, 0, 0, 0, 0, 0, 79.24, '2014-2015', 2),
(1206, 370, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 3),
(1207, 370, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 4),
(1208, 370, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-2018', 5),
(1216, 378, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014 - 2015', 1),
(1218, 379, 44, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2014-2015', 1),
(1219, 379, 44, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2016', 2),
(1220, 396, 44, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2014-2015', 1),
(1221, 396, 44, 6, 0, 0, 0, 0, 0, 0, 0, 0, 6, '2015-2016', 2),
(1222, 390, 43, 8, 2, 0, 0, 0, 0, 0, 0, 0, 8, '2014-15', 1),
(1223, 390, 43, 10, 3, 0, 0, 0, 0, 0, 0, 0, 10, '2015 - 2016', 2),
(1224, 402, 43, 6, 0, 0, 0, 0, 0, 0, 0, 0, 6, '2014-15', 1),
(1225, 402, 43, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, '2015 - 2016', 2),
(1226, 384, 45, 18, 0, 0, 0, 0, 0, 0, 0, 0, 18, '2015-2016', 1),
(1227, 384, 45, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2016-2017', 2),
(1228, 404, 45, 14, 0, 0, 0, 0, 0, 0, 0, 0, 14, '2015-2016', 1),
(1229, 404, 45, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, '2016-2017', 2),
(1230, 388, 54, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2015', 1),
(1231, 388, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2016', 2),
(1232, 398, 54, 14, 0, 0, 0, 0, 0, 0, 0, 0, 14, '2015', 1),
(1233, 398, 54, 19, 0, 0, 0, 0, 0, 0, 0, 0, 19, '2016', 2),
(1242, 391, 42, 1, 0, 1, 12, 46, 5, 0, 50, 0, 115, '2014 - 2015', 1),
(1243, 397, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014 - 2015', 1),
(1244, 407, 42, 0, 0, 2, 14, 0, 0, 0, 0, 0, 16, '2014 - 2015', 1),
(1245, 413, 44, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2014-2015', 1),
(1246, 413, 44, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2015-2016', 2),
(1247, 421, 44, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2014-2015', 1),
(1248, 421, 44, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2015-2016', 2),
(1249, 427, 44, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, '2014-2015', 1),
(1250, 427, 44, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, '2015-2016', 2),
(1251, 430, 44, 30, 0, 0, 0, 0, 0, 0, 0, 0, 30, '2014-2015', 1),
(1252, 430, 44, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2015-2016', 2),
(1253, 438, 44, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2014-2015', 1),
(1254, 438, 44, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2016', 2),
(1255, 418, 45, 13, 0, 0, 0, 0, 0, 0, 0, 0, 13, '2015-2016', 1),
(1256, 418, 45, 6, 0, 0, 0, 0, 0, 0, 0, 0, 6, '2016-2017', 2),
(1257, 436, 45, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2015-2016', 1),
(1258, 436, 45, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2016-2017', 2),
(1259, 420, 43, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2014-15', 1),
(1260, 420, 43, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015 - 2016', 2),
(1261, 432, 43, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2014-15', 1),
(1262, 432, 43, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015 - 2016', 2),
(1271, 381, 49, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2014-2015', 1),
(1272, 381, 49, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2015-2016', 2),
(1273, 399, 49, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2014-2015', 1),
(1274, 399, 49, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, '2015-2016', 2),
(1275, 414, 49, 6, 0, 0, 0, 0, 0, 0, 0, 0, 6, '2014-2015', 1),
(1276, 414, 49, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2015-2016', 2),
(1277, 423, 49, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, '2014-2015', 1),
(1278, 423, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1279, 440, 49, 9, 0, 0, 0, 0, 0, 0, 0, 0, 9, '2014-2015', 1),
(1280, 440, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1281, 392, 51, 118, 0, 0, 0, 0, 0, 0, 0, 0, 118, '2015-2016', 1),
(1282, 392, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2),
(1283, 403, 51, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2015-2016', 1),
(1284, 403, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2),
(1285, 426, 51, 11, 0, 0, 0, 0, 0, 0, 0, 0, 11, '2015-2016', 1),
(1286, 426, 51, 11, 0, 0, 0, 0, 0, 0, 0, 0, 11, '2016-2017', 2),
(1287, 386, 47, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2014-15', 1),
(1288, 386, 47, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-16', 2),
(1289, 400, 47, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2014-15', 1),
(1290, 400, 47, 6, 0, 0, 0, 0, 0, 0, 0, 0, 6, '2015-16', 2),
(1291, 416, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2014-15', 1),
(1292, 416, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015-16', 2),
(1293, 422, 47, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2014-15', 1),
(1294, 422, 47, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2015-16', 2),
(1295, 434, 47, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, '2014-15', 1),
(1296, 434, 47, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2015-16', 2),
(1297, 415, 54, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 1.2, '2015', 1),
(1298, 415, 54, 4.8, 0, 0, 0, 0, 0, 0, 0, 0, 4.8, '2016', 2),
(1299, 435, 54, 13, 0, 0, 0, 0, 0, 0, 0, 0, 13, '2015', 1),
(1300, 435, 54, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2016', 2),
(1301, 448, 51, 12, 0, 0, 0, 0, 0, 0, 0, 0, 12, '2015-2016', 1),
(1302, 448, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2),
(1303, 442, 54, 200, 0, 0, 0, 0, 0, 0, 0, 0, 200, '2015', 1),
(1304, 442, 54, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2016', 2),
(1305, 457, 54, 17, 0, 0, 0, 0, 0, 0, 0, 0, 17, '2015', 1),
(1306, 457, 54, 14, 0, 0, 0, 0, 0, 0, 0, 0, 14, '2016', 2),
(1307, 444, 45, 120, 0, 0, 0, 0, 0, 0, 0, 0, 120, '2015-2016', 1),
(1308, 444, 45, 80, 0, 0, 0, 0, 0, 0, 0, 0, 80, '2016-2017', 2),
(1309, 454, 45, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2015-2016', 1),
(1310, 454, 45, 30, 0, 0, 0, 0, 0, 0, 0, 0, 30, '2016-2017', 2),
(1311, 458, 45, 125, 0, 0, 0, 0, 0, 0, 0, 0, 125, '2015-2016', 1),
(1312, 458, 45, 25, 0, 0, 0, 0, 0, 0, 0, 0, 25, '2016-2017', 2),
(1313, 447, 43, 12, 0, 15, 0, 0, 0, 0, 0, 0, 27, '2014-15', 1),
(1314, 447, 43, 14, 0, 0, 0, 0, 0, 0, 0, 0, 14, '2015 - 2016', 2),
(1315, 462, 43, 50, 0, 25, 0, 0, 0, 0, 0, 0, 75, '2014-15', 1),
(1316, 462, 43, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2015 - 2016', 2),
(1317, 443, 49, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, '2014-2015', 1),
(1318, 443, 49, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, '2015-2016', 2),
(1319, 455, 49, 30, 0, 0, 0, 0, 0, 0, 0, 0, 30, '2014-2015', 1),
(1320, 455, 49, 35, 0, 0, 0, 0, 0, 0, 0, 0, 35, '2015-2016', 2),
(1321, 465, 49, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2014-2015', 1),
(1322, 465, 49, 45, 0, 0, 0, 0, 0, 0, 0, 0, 45, '2015-2016', 2),
(1323, 467, 49, 60, 0, 0, 0, 0, 0, 0, 0, 0, 60, '2014-2015', 1),
(1324, 467, 49, 55, 0, 0, 0, 0, 0, 0, 0, 0, 55, '2015-2016', 2),
(1325, 441, 44, 0, 0, 600, 0, 0, 0, 0, 0, 0, 600, '2014-2015', 1),
(1326, 441, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1327, 450, 44, 0, 0, 0, 0, 300, 0, 0, 0, 0, 300, '2014-2015', 1),
(1328, 450, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1329, 452, 44, 120, 120, 0, 0, 0, 0, 0, 0, 0, 120, '2014-2015', 1),
(1330, 452, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1331, 469, 41, 10, 0, 0, 0, 0, 20, 0, 0, 0, 30, '2014-2015', 1),
(1332, 469, 41, 10, 0, 0, 0, 0, 20, 0, 0, 0, 30, '2015-2016', 2),
(1351, 393, 53, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2014-2015', 1),
(1352, 393, 53, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2016', 2),
(1353, 406, 53, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2014-2015', 1),
(1354, 406, 53, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2016', 2),
(1355, 408, 53, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2014-2015', 1),
(1356, 408, 53, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2015-2016', 2),
(1357, 424, 53, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2014-2015', 1),
(1358, 424, 53, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2015-2016', 2),
(1359, 431, 53, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2014-2015', 1),
(1360, 431, 53, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2015-2016', 2),
(1361, 445, 53, 200, 0, 0, 0, 0, 0, 0, 0, 0, 200, '2014-2015', 1),
(1362, 445, 53, 200, 0, 0, 0, 0, 0, 0, 0, 0, 200, '2015-2016', 2),
(1363, 453, 53, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 1000, '2014-2015', 1),
(1364, 453, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1369, 449, 42, 150, 0, 0, 0, 0, 0, 0, 0, 0, 150, '2014 - 2015', 1),
(1370, 473, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014 - 2015', 1),
(1371, 478, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2014 - 2015', 1),
(1399, 479, 45, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015-2016', 1),
(1400, 479, 45, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2016-2017', 2),
(1401, 480, 45, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, '2015-2016', 1),
(1402, 480, 45, 13, 0, 0, 0, 0, 0, 0, 0, 0, 13, '2016-2017', 2),
(1411, 460, 47, 0, 0, 600, 300, 0, 0, 0, 0, 0, 900, '2014-15', 1),
(1412, 460, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-16', 2),
(1413, 470, 47, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 3000, '2014-15', 1),
(1414, 470, 47, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 2000, '2015-16', 2),
(1415, 463, 51, 23, 0, 0, 0, 0, 0, 0, 0, 0, 23, '2015-2016', 1),
(1416, 463, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2),
(1417, 466, 51, 34, 0, 0, 0, 0, 0, 0, 0, 0, 34, '2015-2016', 1),
(1418, 466, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-2017', 2),
(1419, 505, 45, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2016', 1),
(1420, 505, 45, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2016-2017', 2),
(1509, 574, 55, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2014-2015', 1),
(1510, 574, 55, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, '2015-2016', 2),
(1511, 575, 55, 0, 0, 0, 0, 200, 0, 0, 0, 0, 200, '2014-2015', 1),
(1512, 575, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1513, 576, 55, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2014-2015', 1),
(1514, 576, 55, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, '2015-2016', 2),
(1515, 577, 55, 0, 0, 0, 0, 250, 0, 0, 0, 0, 250, '2014-2015', 1),
(1516, 577, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1529, 578, 50, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2015-2016', 1),
(1530, 578, 50, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, '2016-2017', 2),
(1531, 579, 50, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2015-2016', 1),
(1532, 579, 50, 9, 0, 0, 0, 0, 0, 0, 0, 0, 9, '2016-2017', 2),
(1533, 580, 50, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2015-2016', 1),
(1534, 580, 50, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2016-2017', 2),
(1535, 581, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015-2016', 1),
(1536, 581, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2016-2017', 2),
(1537, 582, 50, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2015-2016', 1),
(1538, 582, 50, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2016-2017', 2),
(1539, 583, 50, 6, 0, 0, 0, 0, 0, 0, 0, 0, 6, '2015-2016', 1),
(1540, 583, 50, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, '2016-2017', 2),
(1541, 584, 50, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, '2015-2016', 1),
(1542, 584, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2016-2017', 2),
(1543, 591, 46, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, '2014-2015', 1),
(1544, 591, 46, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, '2015-2016', 2),
(1545, 592, 46, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2014-2015', 1);
INSERT INTO `annexure_v_details` (`id`, `annex_id`, `pid`, `gob`, `gob_fe`, `rpa_through_gob`, `rpa_special_account`, `dpa`, `own_fund`, `own_fund_fe`, `other`, `other_fe`, `total`, `financial_year`, `year_serial`) VALUES
(1546, 592, 46, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, '2015-2016', 2),
(1547, 593, 46, 15, 0, 0, 0, 0, 0, 0, 0, 0, 15, '2014-2015', 1),
(1548, 593, 46, 20, 0, 0, 0, 0, 0, 0, 0, 0, 20, '2015-2016', 2),
(1549, 594, 46, 50, 0, 0, 0, 0, 0, 0, 0, 0, 50, '2014-2015', 1),
(1550, 594, 46, 60, 0, 0, 0, 0, 0, 0, 0, 0, 60, '2015-2016', 2),
(1551, 595, 46, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, '2014-2015', 1),
(1552, 595, 46, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, '2015-2016', 2),
(1553, 596, 46, 200, 0, 0, 0, 0, 0, 0, 0, 0, 200, '2014-2015', 1),
(1554, 596, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1555, 597, 46, 100, 0, 0, 0, 0, 0, 0, 0, 0, 100, '2014-2015', 1),
(1556, 597, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1557, 598, 46, 57, 0, 0, 0, 0, 0, 0, 0, 0, 57, '2014-2015', 1),
(1558, 598, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2015-2016', 2),
(1610, 647, 33, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'Year-1', 1),
(1611, 648, 33, 6, 0, 0, 0, 0, 0, 0, 0, 0, 6, 'Year-1', 1),
(1612, 647, 33, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, 'Year 2', 2),
(1613, 648, 33, 10, 0, 0, 0, 0, 0, 0, 0, 0, 10, 'Year 2', 2),
(1614, 650, 33, 9, 0, 0, 0, 0, 0, 0, 0, 0, 9, 'Year-1', 1),
(1615, 650, 33, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, 'Year 2', 2),
(1616, 651, 33, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 'Year-1', 1),
(1617, 651, 33, 5, 0, 0, 0, 0, 0, 0, 0, 0, 5, 'Year 2', 2),
(1619, 653, 56, 6, 0, 6, 7, 0, 0, 0, 0, 0, 19, 'Year-1', 1),
(1623, 655, 56, 3, 0, 4, 5, 6, 7, 0, 7, 0, 32, 'Year-1', 1);

--
-- Triggers `annexure_v_details`
--
DROP TRIGGER IF EXISTS `update_annex_v_cost`;
DELIMITER //
CREATE TRIGGER `update_annex_v_cost` AFTER DELETE ON `annexure_v_details`
 FOR EACH ROW UPDATE annexure_v  
SET 
total_cost          = (total_cost-OLD.total), 
gob                 =(gob-OLD.gob), 
gob_fe              =(gob_fe-OLD.gob_fe),
rpa_through_gob     =(rpa_through_gob-OLD.rpa_through_gob),
rpa_special_account =(rpa_special_account-OLD.rpa_special_account),
dpa                 =(dpa-OLD.dpa),
own_fund            =(own_fund-OLD.own_fund),
own_fund_fe         =(own_fund_fe-OLD.own_fund_fe),
other               =(other-OLD.other),
other_fe            =(other_fe-OLD.other_fe)
WHERE id = OLD.annex_id
//
DELIMITER ;

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
-- Table structure for table `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `ministry_approval_tpp_limit` double NOT NULL,
  `planning_minister_approval_limit` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`ministry_approval_tpp_limit`, `planning_minister_approval_limit`) VALUES
(700, 2500);

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
(47, 50, 'Joypurhat', 'Active'),
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Document table' AUTO_INCREMENT=56 ;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `title`, `mime_type`, `local_filename`, `remote_filename`, `doc_dir`, `keywords`, `size`, `access_type`, `owner_id`, `permission_group_id`, `group_access_rights`, `world_access_rights`, `status`) VALUES
(26, '', 'application/msword', 'CV_of_SAM_Harun.doc', 'cv_of_sam_harun_26.doc', 'D:/xampp2/htdocs/pps2/documents/24/cv_of_sam_harun_26.doc', '', 149504, 'Public', 0, 0, 'None', 'None', 'Normal'),
(25, '', 'application/msword', 'CV_of_SAM_Harun.doc', 'cv_of_sam_harun_25.doc', 'D:/xampp2/htdocs/pps2/documents/24/cv_of_sam_harun_25.doc', '', 149504, 'Public', 0, 0, 'None', 'None', 'Normal'),
(24, '', 'application/msword', 'CV_of_SAM_Harun.doc', 'cv_of_sam_harun_24.doc', 'D:/xampp2/htdocs/pps2/documents/24/cv_of_sam_harun_24.doc', '', 156160, 'Public', 0, 0, 'None', 'None', 'Normal'),
(22, '', 'application/octet-stream', 'axvlc.dll', 'axvlc_22.dll', 'D:/xampp2/htdocs/pps2/documents/23/axvlc_22.dll', '', 516247, 'Public', 0, 0, 'None', 'None', 'Normal'),
(23, '', 'text/plain', 'THANKS.txt', 'thanks_23.txt', 'D:/xampp2/htdocs/pps2/documents/24/thanks_23.txt', '', 23678, 'Public', 0, 0, 'None', 'None', 'Normal'),
(21, '', 'text/plain', 'NEWS.txt', 'news_21.txt', 'D:/xampp2/htdocs/pps2/documents/23/news_21.txt', '', 78601, 'Public', 0, 0, 'None', 'None', 'Normal'),
(20, '', 'text/plain', 'COPYING.txt', 'copying_20.txt', 'D:/xampp2/htdocs/pps2/documents/23/copying_20.txt', '', 18437, 'Public', 0, 0, 'None', 'None', 'Normal'),
(19, '', 'text/plain', 'README.txt', 'D:/xampp2/htdocs/pps2/documents/23/readme_19.txt', 'D:/xampp2/htdocs/pps2/documents/23/readme_19.txt', '', 1764, 'Public', 0, 0, 'None', 'None', 'Normal'),
(27, '', 'text/x-sql', 'pps2-10-08-2014.sql', 'pps2-10-08-2014_27.sql', 'D:/xampp2/htdocs/pps2/documents/24/pps2-10-08-2014_27.sql', '', 209764, 'Public', 0, 0, 'None', 'None', 'Normal'),
(28, '', 'text/x-sql', 'pps2-10-08-2014.sql', 'pps2-10-08-2014_28.sql', 'D:/xampp2/htdocs/pps2/documents/24/pps2-10-08-2014_28.sql', '', 209764, 'Public', 0, 0, 'None', 'None', 'Normal'),
(29, '', 'image/jpeg', 'Chrysanthemum.jpg', 'chrysanthemum_29.jpg', '/var/www/documents/36/chrysanthemum_29.jpg', '', 879394, 'Public', 0, 0, 'None', 'None', 'Normal'),
(30, '', 'image/jpeg', 'Chrysanthemum.jpg', 'chrysanthemum_30.jpg', '/var/www/documents/36/chrysanthemum_30.jpg', '', 879394, 'Public', 0, 0, 'None', 'None', 'Normal'),
(31, '', 'image/jpeg', 'Desert.jpg', 'desert_31.jpg', '/var/www/documents/36/desert_31.jpg', '', 845941, 'Public', 0, 0, 'None', 'None', 'Normal'),
(32, '', 'application/pdf', 'Appendix-I.pdf', 'appendix-i_32.pdf', '/var/www/documents/37/appendix-i_32.pdf', '', 450696, 'Public', 0, 0, 'None', 'None', 'Normal'),
(33, '', 'application/pdf', 'Appendix-II.pdf', 'appendix-ii_33.pdf', '/var/www/documents/37/appendix-ii_33.pdf', '', 413636, 'Public', 0, 0, 'None', 'None', 'Normal'),
(34, '', 'application/pdf', 'Appendix-III(a).pdf', 'appendix-iii_a__34.pdf', '/var/www/documents/37/appendix-iii_a__34.pdf', '', 334255, 'Public', 0, 0, 'None', 'None', 'Normal'),
(35, '', 'application/pdf', 'Appendix-III(b).pdf', 'appendix-iii_b__35.pdf', '/var/www/documents/37/appendix-iii_b__35.pdf', '', 404988, 'Public', 0, 0, 'None', 'None', 'Normal'),
(36, '', 'application/pdf', 'Appendix-IV.pdf', 'appendix-iv_36.pdf', '/var/www/documents/37/appendix-iv_36.pdf', '', 827469, 'Public', 0, 0, 'None', 'None', 'Normal'),
(37, '', 'application/pdf', 'Appendix-V.pdf', 'appendix-v_37.pdf', '/var/www/documents/37/appendix-v_37.pdf', '', 15844548, 'Public', 0, 0, 'None', 'None', 'Normal'),
(38, '', 'application/pdf', 'Appendix-VI.pdf', 'appendix-vi_38.pdf', '/var/www/documents/37/appendix-vi_38.pdf', '', 794601, 'Public', 0, 0, 'None', 'None', 'Normal'),
(39, '', 'application/pdf', 'Appendix-VII.pdf', 'appendix-vii_39.pdf', '/var/www/documents/37/appendix-vii_39.pdf', '', 2472829, 'Public', 0, 0, 'None', 'None', 'Normal'),
(40, '', 'application/pdf', 'Appendix-IX.pdf', 'appendix-ix_40.pdf', '/var/www/documents/37/appendix-ix_40.pdf', '', 2630219, 'Public', 0, 0, 'None', 'None', 'Normal'),
(41, '', 'application/pdf', 'Appendix-X.pdf', 'appendix-x_41.pdf', '/var/www/documents/37/appendix-x_41.pdf', '', 480486, 'Public', 0, 0, 'None', 'None', 'Normal'),
(42, '', 'application/pdf', 'Appendix-XI.pdf', 'appendix-xi_42.pdf', '/var/www/documents/37/appendix-xi_42.pdf', '', 694694, 'Public', 0, 0, 'None', 'None', 'Normal'),
(43, '', 'application/pdf', 'Appendix-XII.pdf', 'appendix-xii_43.pdf', '/var/www/documents/37/appendix-xii_43.pdf', '', 2288170, 'Public', 0, 0, 'None', 'None', 'Normal'),
(44, '', 'application/pdf', 'Appendix-XIII.pdf', 'appendix-xiii_44.pdf', '/var/www/documents/37/appendix-xiii_44.pdf', '', 293106, 'Public', 0, 0, 'None', 'None', 'Normal'),
(45, '', 'application/pdf', 'Appendix-XIV.pdf', 'appendix-xiv_45.pdf', '/var/www/documents/37/appendix-xiv_45.pdf', '', 1398651, 'Public', 0, 0, 'None', 'None', 'Normal'),
(46, '', 'application/pdf', 'Appendix-XV.pdf', 'appendix-xv_46.pdf', '/var/www/documents/37/appendix-xv_46.pdf', '', 415389, 'Public', 0, 0, 'None', 'None', 'Normal'),
(47, '', 'application/pdf', 'Appendix-XVI.pdf', 'appendix-xvi_47.pdf', '/var/www/documents/37/appendix-xvi_47.pdf', '', 3392221, 'Public', 0, 0, 'None', 'None', 'Normal'),
(48, '', 'application/pdf', 'Appendix-XVII.pdf', 'appendix-xvii_48.pdf', '/var/www/documents/37/appendix-xvii_48.pdf', '', 1404610, 'Public', 0, 0, 'None', 'None', 'Normal'),
(49, '', 'application/pdf', 'Appendix-XVIII.pdf', 'appendix-xviii_49.pdf', '/var/www/documents/37/appendix-xviii_49.pdf', '', 511735, 'Public', 0, 0, 'None', 'None', 'Normal'),
(50, '', 'application/pdf', 'Appendix-XIX.pdf', 'appendix-xix_50.pdf', '/var/www/documents/37/appendix-xix_50.pdf', '', 310867, 'Public', 0, 0, 'None', 'None', 'Normal'),
(51, '', 'application/pdf', 'Appendix-XX.pdf', 'appendix-xx_51.pdf', '/var/www/documents/37/appendix-xx_51.pdf', '', 1923783, 'Public', 0, 0, 'None', 'None', 'Normal'),
(52, '', 'application/pdf', 'Appendix-VIII.pdf', 'appendix-viii_52.pdf', '/var/www/documents/37/appendix-viii_52.pdf', '', 483449, 'Public', 0, 0, 'None', 'None', 'Normal'),
(53, '', 'application/pdf', 'Bangladesh Tea Board Resort.pdf', 'bangladesh_tea_board_resort_53.pdf', '/var/www/documents/27/bangladesh_tea_board_resort_53.pdf', '', 538988, 'Public', 0, 0, 'None', 'None', 'Normal'),
(54, '', 'image/jpeg', 'bannerWebAppl.jpg', 'bannerwebappl_54.jpg', 'D:/xampp2/htdocs/pps2/documents/33/bannerwebappl_54.jpg', '', 106345, 'Public', 0, 0, 'None', 'None', 'Normal'),
(55, '', 'text/plain', 'pps_database_changes.txt', 'pps_database_changes_55.txt', 'D:/xampp2/htdocs/pps2/documents/37/pps_database_changes_55.txt', '', 1124, 'Public', 0, 0, 'None', 'None', 'Normal');

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
(351, 9, 6822, 'Laboratory Equipmentâ€™s / Material', 'Active'),
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
  `procurement_name` enum('Goods','Services') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `procurement_method_lookup`
--

INSERT INTO `procurement_method_lookup` (`id`, `procurement_method`, `procurement_name`) VALUES
(1, 'DPM', 'Goods'),
(2, 'RFQM', 'Goods'),
(3, 'TSTM', 'Goods'),
(4, 'RTM', 'Goods'),
(5, 'OTM', 'Goods'),
(6, 'LCS', 'Services'),
(7, 'LTM', 'Goods'),
(8, 'QCBS', 'Services'),
(9, 'SBCQ', 'Goods'),
(10, 'SFB', 'Services'),
(11, 'SSS', 'Services');

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
  `status` enum('Draff','Approved','Rejected','Forwarded to Ministry','Returned from Ministry','Forwarded to Commission','Returned from Commission','Forwarded to ECNEC','Return from ECNEC') NOT NULL DEFAULT 'Draff',
  `ministry_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `current_holder` int(11) NOT NULL,
  `implementation_arrangement` text NOT NULL,
  `after_completion` text NOT NULL,
  `date_of_logframe_summary_preparation` date NOT NULL,
  `contact_person` text NOT NULL,
  `responsible_person` text NOT NULL,
  `agency_forward_letter_id` int(11) NOT NULL,
  `ministry_forward_letter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Projects of all DPP, TPP' AUTO_INCREMENT=57 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_title_en`, `project_title_bn`, `project_type`, `create_date`, `date_of_commencement`, `date_of_completion`, `adp_sector`, `adp_sub_sector`, `sector_division`, `objectives`, `exchange_rate`, `status`, `ministry_id`, `agency_id`, `created_by`, `current_holder`, `implementation_arrangement`, `after_completion`, `date_of_logframe_summary_preparation`, `contact_person`, `responsible_person`, `agency_forward_letter_id`, `ministry_forward_letter_id`) VALUES
(20, 'Implementation of digital ECNEC', 'Implementation of digital ECNEC', 'DPP', '2014-06-24 10:10:27', '2014-07-01', '2016-06-30', 1, 20, 4, '<p>asdf asdf asd asdfa sdf asdfasd fasdfasdf asdfhasdkf asldflasdf lasdjflasdflsdf lasdkjf hfdjasdfkldasjfj askldfjaskld fjasldkfj asdlfjaskldf lasdjf lsadkfj lasdjf</p>', 'asd fasdf asdf', 'Approved', 0, 0, 0, 0, '', '', '0000-00-00', '', '', 0, 0),
(21, 'Junayeed', 'Junayeed', 'DPP', '2014-07-16 07:17:08', '0000-00-00', '0000-00-00', 0, 0, 0, '', '', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00', '', '', 0, 0),
(22, 'Reformation of public sector in Bangladesh', 'ggasdgf', 'TPP', '2014-07-17 17:26:05', '2014-07-17', '2014-07-18', 1, 6, 4, '<p>sdafsf asdfas</p>', 'sdf', 'Returned from Ministry', 2, 26, 26, 26, '', '', '0000-00-00', '', '', 0, 0),
(23, 'Aid Effectiveness Project for ERD through ICT with Planning Division, Economic Relations Division and IMED of Ministry of Planning', 'Aid Effectiveness Project for ERD', 'DPP', '2014-07-17 18:09:48', '2014-07-01', '2014-07-16', 11, 31, 4, '<p><strong><em>Objectives sfsdf</em></strong></p>\r\n\r\n<ul>\r\n	<li><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</li>\r\n	<li>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout</li>\r\n	<li>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</li>\r\n</ul>\r\n\r\n<p><strong><em>Targets</em></strong></p>\r\n\r\n<ol>\r\n	<li>Upgrade the data center</li>\r\n	<li>Update the network infrastructure</li>\r\n	<li>Modify the software</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', '', 'Forwarded to Commission', 2, 26, 26, 26, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2014-10-23', '', '', 0, 0),
(24, 'Test Project 20.07.2014', 'Test Project 20.07.2014', 'DPP', '2014-07-20 03:25:40', '2014-07-01', '2015-06-30', 6, 17, 3, '<p>0</p>', '', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00', '', '', 0, 0),
(25, '2nd Test for 3 Years', '2nd Test for 3 Years', 'DPP', '2014-07-20 06:09:40', '2014-07-01', '2015-06-30', 14, 38, 1, '<p>faasf</p>', '', 'Forwarded to Commission', 2, 26, 26, 26, '', '', '0000-00-00', '', '', 0, 0),
(26, 'Development of 30 Feet road in Mohammadpur', 'Ã Â¦Â®Ã Â§â€¹Ã Â¦Â¹Ã Â¦Â¾Ã Â¦Â®Ã Â§Â�Ã Â¦Â®Ã Â¦Â¦Ã Â¦ÂªÃ Â§Â�Ã Â¦Â° Ã Â§Â©Ã Â§Â¦ Ã Â¦Â«Ã Â¦Â¿Ã Â¦Å¸ Ã Â¦Â°Ã Â¦Â¾Ã Â¦Â¸Ã Â§Â�Ã Â¦Â¤Ã Â¦Â¾ Ã Â¦ÂªÃ Â§Â�Ã Â¦Â°Ã Â¦â€¢Ã Â¦Â²Ã Â§Â�Ã Â¦Âª', 'DPP', '2014-07-20 06:12:19', '2014-09-01', '2015-12-30', 8, 22, 4, '<p><strong>Objective</strong> 1</p>\r\n\r\n<h2>Objective<em> 2</em></h2>', '77', 'Draff', 6, 53, 27, 27, '', '', '0000-00-00', '', '', 0, 0),
(27, '3rd Test22ddd', '', 'DPP', '2014-07-20 06:50:55', '2014-07-01', '2015-06-30', 13, 35, 4, '<p>4</p>', '3', '', 2, 26, 26, 26, '', '', '0000-00-00', '', '', 0, 0),
(28, 'BINA Test', 'BINA Test', 'DPP', '2014-07-20 06:52:40', '2014-07-01', '2017-06-30', 12, 34, 1, '<p>dasdasd</p>', '', 'Forwarded to Commission', 2, 26, 26, 26, '<p>bbbbbbbbbbbbbbbbbb</p>', '<p>xcvxcvxcvx&nbsp; v x v</p>', '2014-07-25', '', '', 0, 0),
(30, 'ss', 'd', 'DPP', '2014-07-22 07:37:27', '2014-07-22', '2014-07-23', 1, 3, 4, '<p>dfgdsfgd fsdg sdfgsdf</p>', '324', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00', '', '', 0, 0),
(31, 'DAE Project', 'DAE Project', 'DPP', '2014-07-26 17:40:22', '2014-07-23', '2018-03-22', 0, 0, 0, '', '', 'Draff', 2, 21, 28, 28, '', '', '0000-00-00', '', '', 0, 0),
(32, 'Test11111111111111111111', '', 'DPP', '2014-08-23 15:14:50', '2014-08-06', '2014-08-13', 17, 41, 4, '<p>fasdfasf</p>', '333', 'Draff', 2, 26, 26, 26, '', '', '2014-11-04', '', '', 0, 0),
(33, 'Bangladesh', '', 'DPP', '2014-08-25 04:31:54', '2014-08-10', '2014-08-27', 1, 6, 4, '<p>dasfasd</p>', '', 'Approved', 2, 26, 26, 26, '', '', '0000-00-00', '', '', 0, 0),
(34, 'Test TPP', 'Test TPP', 'TPP', '2014-10-15 05:03:26', '2014-10-01', '2014-10-31', 0, 0, 0, '', '', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00', '', '', 0, 0),
(35, 'Test TPP1', 'Test TPP1', 'TPP', '2014-10-15 05:04:47', '2014-10-01', '2014-10-31', 16, 40, 4, '', '444', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00', 'tttttxxxxxxxxxxxxx', 'dddddd', 0, 0),
(36, 'ssssssssss', 'ddddddddddddd', 'TPP', '2014-10-15 05:05:54', '2014-10-15', '2014-10-15', 0, 0, 0, '', '', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00', '', '', 0, 0),
(37, 'Project for Enhancement of Agricultural Production and Poverty Alleviation by Introducing Force Mode Tube wells (FMTW) Irrigation', 'Project for Enhancement of Agricultural Production and Poverty Alleviation by Introducing Force Mode Tube wells (FMTW) Irrigation d', 'DPP', '2014-10-28 06:24:50', '2010-07-01', '2013-07-31', 1, 1, 4, '<p>3. Objectives of the Project. (Please specify)</p>\r\n\r\n<p>Objectives:</p>\r\n\r\n<p>The main objectives of this project are as follows:</p>\r\n\r\n<p>&bull; To produce additional 8340 metric tons of food grain per year pricing Tk. 1668.00 lakh through optimum utilization of surface &amp; ground water by developing irrigation infrastructure and applying modern and local appropriate technology.</p>\r\n\r\n<ul>\r\n	<li>To operate 85 nos. of 2-cusec FMTW and 40 nos. 1-cusec FMTW for utilization of ground water for irrigation of 3336 hectares of land.</li>\r\n	<li>To create self-employment opportunity and alleviate poverty of:</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>1500 Owners/ Managers/ Operators/ Field-men of irrigation equipment and 3000 farmers by upgrading their skill through training to participate in the implementation of the project activities and</li>\r\n	<li>10,100 farm family, 50,400 labourers (men 30240, women 20160) and poor women through engaging themselves in all activities of food grain production &amp; processing.</li>\r\n</ol>', '', 'Returned from Ministry', 2, 26, 26, 26, '', '<p>Yes, the project needs to be transferred to the revenue budget.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>After completion of the project, operation and maintenance activities for irrigation infrastructures constructed up to 1st Phase of the project and office management expenditure will be borne by collecting irrigation charges and revenue budget of GOB. For continuing the benefit of the project yearly cost of Tk 75.00 lakh will be needed. The salary of the manpower will be borne from revenue budget of the GOB.</p>', '2010-04-05', '', '', 0, 0),
(38, 'ESTABLISHMENT OF PULSE & OIL SEED MULTIPLICATION FARM AND SEED PROCESSING CENTRE AT SUBARNACHAR UPAZILA IN NOAKHALI DISTRICT', 'à¦¨à§‹à§Ÿà¦¾à¦–à¦¾à¦²à§€ à¦œà§‡à¦²à¦¾à¦° à¦¸à§à¦¬à¦°à§à¦£à¦šà¦° à¦‰à¦ªà¦œà§‡à¦²à¦¾à§Ÿ à¦¡à¦¾à¦² à¦“ à¦¤à§ˆà¦²à¦¬à§€à¦œ à¦¬à¦°à§à¦§à¦¨ à¦–à¦¾à¦®à¦¾à¦° à¦à¦¬à¦‚ à¦¬à§€à¦œ à¦ªà§à¦°à¦•à§à¦°à¦¿à§Ÿà¦¾à¦œà¦¾à¦¤à¦•à¦°à¦£ à¦•à§‡à¦¨à§à¦¦à§à¦° à¦¸à§à¦¥à¦¾à¦ªà¦¨', 'DPP', '2014-10-28 08:29:11', '2014-02-01', '2018-06-30', 1, 6, 4, '<p>asdf</p>', 'N/A', 'Draff', 2, 20, 33, 33, '', '', '0000-00-00', '', '', 0, 0),
(39, 'A', 'B', 'DPP', '2014-10-29 04:16:46', '2015-07-01', '2020-06-30', 0, 0, 0, '', '', 'Draff', 37, 257, 42, 42, '', '', '0000-00-00', '', '', 0, 0),
(40, 'Capacity Building of ERD', 'à¦•à§à¦¯à¦¾à¦ªà¦¾à¦¸à¦¿à¦Ÿà¦¿ à¦¬à¦¿à¦²à§à¦¡à¦¿à¦‚ à¦…à¦¬ à¦‡à¦†à¦°à¦¡à¦¿', 'DPP', '2014-10-29 04:25:59', '2015-01-01', '2015-12-31', 0, 0, 0, '', '', 'Draff', 16, 135, 63, 63, '', '', '0000-00-00', '', '', 0, 0),
(41, 'Demo Project by Shamiul 29.10.2014', '', 'DPP', '2014-10-29 05:06:33', '2015-01-02', '2015-03-27', 5, 14, 3, '<ol>\r\n	<li>To increase income of the farmers of the project of marketing services.</li>\r\n	<li>To reduce distress sale of crops of the small and medium farmers by providing credit facilities through Commercial Banks against stored crops through extension of SHOGORIP model.</li>\r\n	<li>To reduce post harvest losses and marketing cost by giving training, motivation and by doing other promotional activities.</li>\r\n</ol>', 'N/A', 'Draff', 40, 360, 53, 53, '', '', '2014-10-29', '', '', 0, 0),
(42, 'New Building for NMI --- Suman Gosh', 'à¦Ÿà§‡à¦¸à§à¦Ÿ-à§§', 'DPP', '2014-10-29 05:10:38', '2014-10-29', '2016-12-31', 9, 23, 1, '<ol>\r\n	<li>To increase income of the farmers of the project of marketing services.</li>\r\n	<li>To reduce distress sale of crops of the small and medium farmers by providing credit facilities through Commercial Banks against stored crops through extension of SHOGORIP model.</li>\r\n	<li>To reduce post harvest losses and marketing cost by giving training, motivation and by doing other promotional activities.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', '80.00 tk / US$\r\n30 june- 2014', 'Draff', 49, 326, 34, 34, '<p>The Department of Agricultural Marketing is one of the components of the project. The Project Director will be responsible for the overall management and implementation of the project, Project Implementation Unit (PIU) office will be set up in Dhaka with manpower of 01 Project Director, 01 (one) Training Officer, 01(One)&nbsp; Accounts&nbsp;&nbsp; Officers and 02 (Two) other supporting staff. 2(Two) regional offices will be set up in Khulna &amp; Jessore with manpower of 01 (One) Regional Manager, 01 (One) Assistant Director, 01 (One) Field officer, 01 (One) Computer operator cum Office Assistant &amp; 01 (One) MLSS for each office. The existing revenue staff of Head Office as well as districts level should also help in implementation of the project if necessary. The Project Director will also be assisted by the Director, DAM through guidance and necessary supports for effective implementation of the project. The overall co-ordination and management will also be provided by the Project Co-ordination unit (PCU) of Lead Agency (BADC). The proposed management setup of the project is shown in the annexure &ndash; II. Beside that, in order to ensure smooth implementation of the project, a Project Implementation and Management committee (PIMC) will be formed. The structure and TOR of the committee is shown in the Appendix -2&nbsp;&nbsp; Attached annexure- II).&nbsp;&nbsp;</p>', '<p>After completion of the project the activities and manpower would be transferred to the revenue budget.</p>', '2014-10-29', '', '', 0, 0),
(43, 'Skills Training in Haor Area-Babar', 'à¦¸à§à¦•à¦¿à¦²à¦¸à§â€Œ à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚ à¦‡à¦¨ à¦¹à¦¾à§Ÿà¦° à¦à¦²à¦¾à¦•à¦¾-à¦¬à¦¾à¦¬à¦°', 'DPP', '2014-10-29 05:10:39', '2015-07-01', '2016-06-30', 10, 26, 2, '<ol>\r\n	<li>To increase income of the farmers of the project of marketing services.</li>\r\n	<li>To reduce distress sale of crops of the small and medium farmers by providing credit facilities through Commercial Banks against stored crops through extension of SHOGORIP model.</li>\r\n	<li>To reduce post harvest losses and marketing cost by giving training, motivation and by doing other promotional activities.</li>\r\n</ol>', '1 US$ = 80 Tk. on 29-10-2014', 'Draff', 7, 63, 49, 49, '<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" style=\\"width:679px\\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\\"width:24px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td style=\\"width:385px\\">\r\n			<p>The Department of Agricultural Marketing is one of the components of the project. The Project Director will be responsible for the overall management and implementation of the project, Project Implementation Unit (PIU) office will be set up in Dhaka with manpower of 01 Project Director, 01 (one) Training Officer, 01(One)&nbsp; Accounts&nbsp;&nbsp; Officers and 02 (Two) other supporting staff. 2(Two) regional offices will be set up in Khulna &amp; Jessore with manpower of 01 (One) Regional Manager, 01 (One) Assistant Director, 01 (One) Field officer, 01 (One) Computer operator cum Office Assistant &amp; 01 (One) MLSS for each office. The existing revenue staff of Head Office as well as districts level should also help in implementation of the project if necessary. The Project Director will also be assisted by the Director, DAM through guidance and necessary supports for effective implementation of the project. The overall co-ordination and management will also be provided by the Project Co-ordination unit (PCU) of Lead Agency (BADC). The proposed management setup of the project is shown in the annexure &ndash; II. Beside that, in order to ensure smooth implementation of the project, a Project Implementation and Management committee (PIMC) will be formed. The structure and TOR of the committee is shown in the Appendix -2&nbsp;&nbsp; Attached annexure- II).&nbsp;&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>After completion of the project the activities and manpower would be transferred to the revenue budget.</p>', '2014-10-29', '', '', 0, 0),
(44, 'Capacity Building of ERD - Sobhan', 'à¦•à§à¦¯à¦¾à¦ªà¦¾à¦¸à¦¿à¦Ÿà¦¿ à¦¬à¦¿à¦²à§à¦¡à¦¿à¦‚ à¦…à¦¬ à¦‡à¦†à¦°à¦¡à¦¿ - à¦›à§‹à¦¬à¦¹à¦¾à¦¨', 'DPP', '2014-10-29 05:10:42', '2015-01-01', '2015-12-31', 15, 39, 2, '<ol>\r\n	<li>To increase income of the farmers of the project of marketing services.</li>\r\n	<li>To reduce distress sale of crops of the small and medium farmers by providing credit facilities through Commercial Banks against stored crops through extension of SHOGORIP model.</li>\r\n	<li>To reduce post harvest losses and marketing cost by giving training, motivation and by doing other promotional activities.</li>\r\n</ol>', '80.00 Taka/US$\r\n30 June 2014', 'Forwarded to Ministry', 16, 135, 63, 63, '<p>The Department of Agricultural Marketing is one of the components of the project. The Project Director will be responsible for the overall management and implementation of the project, Project Implementation Unit (PIU) office will be set up in Dhaka with manpower of 01 Project Director, 01 (one) Training Officer, 01(One)&nbsp; Accounts&nbsp;&nbsp; Officers and 02 (Two) other supporting staff. 2(Two) regional offices will be set up in Khulna &amp; Jessore with manpower of 01 (One) Regional Manager, 01 (One) Assistant Director, 01 (One) Field officer, 01 (One) Computer operator cum Office Assistant &amp; 01 (One) MLSS for each office. The existing revenue staff of Head Office as well as districts level should also help in implementation of the project if necessary. The Project Director will also be assisted by the Director, DAM through guidance and necessary supports for effective implementation of the project. The overall co-ordination and management will also be provided by the Project Co-ordination unit (PCU) of Lead Agency (BADC). The proposed management setup of the project is shown in the annexure &ndash; II. Beside that, in order to ensure smooth implementation of the project, a Project Implementation and Management committee (PIMC) will be formed. The structure and TOR of the committee is shown in the Appendix -2&nbsp;&nbsp; Attached annexure- II).&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>After completion of the project the activities and manpower would be transferred to the revenue budget.</p>', '2014-10-29', '', '', 0, 0),
(45, 'CLEAR Project- Shakila', 'à¦•à§à¦²à¦¿à§Ÿà¦¾à¦° à¦ªà§à¦°à¦•à¦²à§à¦ª- à¦¶à¦¾à¦•à¦¿à¦²à¦¾', 'DPP', '2014-10-29 05:10:43', '2015-01-01', '2015-12-31', 17, 41, 2, '<ol>\r\n	<li>To increase income of the farmers of the project of marketing services.</li>\r\n	<li>To reduce distress sale of crops of the small and medium farmers by providing credit facilities through Commercial Banks against stored crops through extension of SHOGORIP model.</li>\r\n	<li>To reduce post harvest losses and marketing cost by giving training, motivation and by doing other promotional activities.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', '80.00 Taka/us$', 'Draff', 28, 212, 41, 41, '<p>The Department of Agricultural Marketing is one of the components of the project. The Project Director will be responsible for the overall management and implementation of the project, Project Implementation Unit (PIU) office will be set up in Dhaka with manpower of 01 Project Director, 01 (one) Training Officer, 01(One)&nbsp; Accounts&nbsp;&nbsp; Officers and 02 (Two) other supporting staff. 2(Two) regional offices will be set up in Khulna &amp; Jessore with manpower of 01 (One) Regional Manager, 01 (One) Assistant Director, 01 (One) Field officer, 01 (One) Computer operator cum Office Assistant &amp; 01 (One) MLSS for each office. The existing revenue staff of Head Office as well as districts level should also help in implementation of the project if necessary. The Project Director will also be assisted by the Director, DAM through guidance and necessary supports for effective implementation of the project. The overall co-ordination and management will also be provided by the Project Co-ordination unit (PCU) of Lead Agency (BADC). The proposed management setup of the project is shown in the annexure &ndash; II. Beside that, in order to ensure smooth implementation of the project, a Project Implementation and Management committee (PIMC) will be formed.</p>', '<p>After completion of the project the activities and manpower would be transferred to the revenue budget.</p>', '2014-10-29', '', '', 0, 0),
(46, 'Establishment of Beel Nursery Project-Alim', 'Establishment of Beel Nursery Project-Alim', 'DPP', '2014-10-29 05:10:44', '2015-01-01', '2015-12-31', 1, 3, 4, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To ensure sufficient fish fingerling through establishment of Beel Nursery</p>\r\n\r\n<ol>\r\n	<li>To increase income of the farmers of the project of marketing services.</li>\r\n	<li>To reduce distress sale of crops of the small and medium farmers by providing credit facilities through Commercial Banks against stored crops through extension of SHOGORIP model.</li>\r\n	<li>To reduce post harvest losses and marketing cost by giving training, motivation and by doing other promotional activities.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', '', 'Draff', 37, 257, 42, 42, '', '', '2014-10-29', '', '', 0, 0),
(47, 'ruhul- development of bcs economic cadre trainning centre', 'bcs economic cadre er training kender unnayan', 'DPP', '2014-10-29 05:10:44', '2015-01-01', '2016-12-31', 15, 39, 2, '<p>1. to train 90% officer of planning ministry and planning commission.</p>\r\n\r\n<p>2. to develop the capascity of officers of planning commission.</p>', '$1= 78.01 on 18/09/2014 (Bangladesh bank)', 'Draff', 10, 0, 62, 62, '<p>afaerawrf bbnjgh</p>', '<p>sdfawsfawr</p>', '2014-10-29', '', '', 0, 0),
(48, 'Multi-Sectoral Programme on Violence Against Women - Nahar', 'à¦®à¦¾à¦²à§à¦Ÿà¦¿-à¦¸à§‡à¦•à§à¦Ÿà¦°à¦¾à¦² à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦® à¦…à¦¨ à¦­à¦¾à§Ÿà§‹à¦²à§‡à¦¨à§à¦¸ à¦à¦—à§‡à¦‡à¦¨à§‡à¦¸à§à¦Ÿ à§‹à¦®à§‡à¦¨', 'TPP', '2014-10-29 05:10:44', '2015-01-01', '2015-12-31', 0, 0, 0, '', '', 'Draff', 36, 256, 45, 45, '', '', '0000-00-00', '', '', 0, 0),
(49, 'Char Livelihood projects_CLP-2', 'CLP_2', 'DPP', '2014-10-29 05:10:45', '2014-10-30', '2016-03-30', 0, 0, 0, '', '', 'Draff', 46, 356, 39, 39, '', '', '0000-00-00', '', '', 0, 0),
(50, 'Construction of Ofice Building for NPO-Akibul', 'à¦¨à¦¾à¦¸à§à¦¨à¦¾à¦²', 'DPP', '2014-10-29 05:10:49', '2015-07-01', '2017-06-30', 0, 0, 0, '', '', 'Draff', 40, 277, 54, 54, '<p>The Department of Agricultural Marketing is one of the components of the project. The Project Director will be responsible for the overall management and implementation of the project, Project Implementation Unit (PIU) office will be set up in Dhaka with manpower of 01 Project Director, 01 (one) Training Officer, 01(One)&nbsp; Accounts&nbsp;&nbsp; Officers and 02 (Two) other supporting staff. 2(Two) regional offices will be set up in Khulna &amp; Jessore with manpower of 01 (One) Regional Manager, 01 (One) Assistant Director, 01 (One) Field officer, 01 (One) Computer operator cum Office Assistant &amp; 01 (One) MLSS for each office. The existing revenue staff of Head Office as well as districts level should also help in implementation of the project if necessary. The Project Director will also be assisted by the Director, DAM through guidance and necessary supports for effective implementation of the project. The overall co-ordination and management will also be provided by the Project Co-ordination unit (PCU) of Lead Agency (BADC). The proposed management setup of the project is shown in the annexure &ndash; II. Beside that, in order to ensure smooth implementation of the project, a Project Implementation and Management committee (PIMC) will be formed. The structure and TOR of the committee is shown in the Appendix -2&nbsp;&nbsp; Attached annexure- II).&nbsp;&nbsp;</p>', '', '2014-10-29', '', '', 0, 0),
(51, 'DoE 12 Storied Building', 'tuku', 'DPP', '2014-10-29 05:11:34', '2015-12-01', '2017-12-01', 0, 0, 0, '', '', 'Draff', 26, 197, 37, 37, '<table border=\\"\\\\&quot;0\\\\&quot;\\" cellpadding=\\"\\\\&quot;0\\\\&quot;\\" cellspacing=\\"\\\\&quot;0\\\\&quot;\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>The Department of Agricultural Marketing is one of the components of the project. The Project Director will be responsible for the overall management and implementation of the project, Project Implementation Unit (PIU) office will be set up in Dhaka with manpower of 01 Project Director, 01 (one) Training Officer, 01(One)&nbsp; Accounts&nbsp;&nbsp; Officers and 02 (Two) other supporting staff. 2(Two) regional offices will be set up in Khulna &amp; Jessore with manpower of 01 (One) Regional Manager, 01 (One) Assistant Director, 01 (One) Field officer, 01 (One) Computer operator cum Office Assistant &amp; 01 (One) MLSS for each office. The existing revenue staff of Head Office as well as districts level should also help in implementation of the project if necessary. The Project Director will also be assisted by the Director, DAM through guidance and necessary supports for effective implementation of the project. The overall co-ordination and management will also be provided by the Project Co-ordination unit (PCU) of Lead Agency (BADC). The proposed management setup of the project is shown in the annexure &ndash; II. Beside that, in order to ensure smooth implementation of the project, a Project Implementation and Management committee (PIMC) will be formed. The structure and TOR of the committee is shown in the Appendix -2&nbsp;&nbsp; Attached annexure- II).&nbsp;&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Attached annexure- III (a) &amp; III (b).</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Attached annexure-IV</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&lt;td style=&quot;\\\\&amp;quot;height:47px;&quot; width:385px\\\\&quot;=&quot;&quot;&gt;\r\n			<p>After completion of the project the activities and manpower would be transferred to the revenue budget.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', '2014-10-29', '', '', 0, 0),
(52, 'Welfare for Child Labour', 'à¦“à§Ÿà§‡à¦²à¦«à§‡à§Ÿà¦¾à¦° à¦«à¦° à¦šà¦¾à¦‡à¦²à§à¦¡ à¦²à§‡à¦¬à¦¾à¦°', 'TPP', '2014-10-29 05:11:43', '2015-06-01', '2017-06-01', 0, 0, 0, '', '', 'Draff', 28, 212, 41, 41, '', '', '0000-00-00', '', '', 0, 0),
(53, 'Multi-Sectoral Programme on Violence Against Women - Nahar', 'à¦®à¦¾à¦²à§à¦Ÿà¦¿-à¦¸à§‡à¦•à§à¦Ÿà¦°à¦¾à¦² à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦® à¦…à¦¨ à¦­à¦¾à§Ÿà§‹à¦²à§‡à¦¨à§à¦¸ à¦à¦—à§‡à¦‡à¦¨à§‡à¦¸à§à¦Ÿ à§‹à¦®à§‡à¦¨', 'DPP', '2014-10-29 05:13:00', '2015-01-01', '2015-12-31', 14, 37, 2, '<p>The main objectives of the project are:</p>\r\n\r\n<ul>\r\n	<li>To eliminate all forms violence against women and girls from the family and society.</li>\r\n	<li>To ensure human rights of women and girls; and</li>\r\n	<li>To provide legal, pschyco-social councelling and health services to the victimes of violence.</li>\r\n	<li>To provide financial support for self relient.</li>\r\n	<li>To create awareness on violence against women and girls.</li>\r\n</ul>', '1US$=80.00 BDT', 'Draff', 36, 256, 45, 45, '', '', '2014-11-02', '', '', 0, 0),
(54, 'Welfare for Child Labour', 'à¦“à§Ÿà§‡à¦²à¦«à§‡à§Ÿà¦¾à¦° à¦«à¦° à¦šà¦¾à¦‡à¦²à§à¦¡ à¦²à§‡à¦¬à¦¾à¦°', 'DPP', '2014-10-29 05:19:26', '2015-01-01', '2015-12-31', 0, 0, 0, '', '', 'Draff', 28, 212, 41, 41, '<p>The Department of Agricultural Marketing is one of the components of the project. The Project Director will be responsible for the overall management and implementation of the project, Project Implementation Unit (PIU) office will be set up in Dhaka with manpower of 01 Project Director, 01 (one) Training Officer, 01(One)&nbsp; Accounts&nbsp;&nbsp; Officers and 02 (Two) other supporting staff. 2(Two) regional offices will be set up in Khulna &amp; Jessore with manpower of 01 (One) Regional Manager, 01 (One) Assistant Director, 01 (One) Field officer, 01 (One) Computer operator cum Office Assistant &amp; 01 (One) MLSS for each office. The existing revenue staff of Head Office as well as districts level should also help in implementation of the project if necessary. The Project Director will also be assisted by the Director, DAM through guidance and necessary supports for effective implementation of the project. The overall co-ordination and management will also be provided by the Project Co-ordination unit (PCU) of Lead Agency (BADC). The proposed management setup of the project is shown in the annexure &ndash; II. Beside that, in order to ensure smooth implementation of the project, a Project Implementation and Management committee (PIMC) will be formed. The structure and TOR of the committee is shown in the Appendix -2&nbsp;&nbsp; Attached annexure- II).&nbsp;&nbsp;</p>', '<p>After completion of the project the activities and manpower would be transferred to the revenue budget.</p>', '2014-10-10', '', '', 0, 0),
(55, 'Land development project (selina) , 2014', 'Land development project (selina) , 2014', 'DPP', '2014-10-29 06:16:19', '2014-07-01', '2016-06-30', 0, 0, 0, '', '', 'Draff', 35, 254, 56, 56, '', '<p>Training Officer, 01(one Accounts officers and 02 (Two) other supporting staff. 2(two) regional offices will be set up in Khulna &amp; Jessore with manpower of 01(one) regional</p>', '2014-10-29', '', '', 0, 0),
(56, 'Test project by SAM Harun', 'Test project by SAM Harun', 'DPP', '2014-11-06 17:29:28', '2014-11-27', '2019-11-20', 0, 0, 0, '', '', 'Draff', 2, 26, 26, 26, '', '', '0000-00-00', '', '', 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

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
(7, 23, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '<p>asdad</p>', '<p>asdfasd</p>', '<p>sadfasdf</p>', '<p>sdafsadfsadfsdafsadfasdfasd</p>', '<p>dfgdfg fg hdfghdfgh</p>', '<p>fdghd hdfg hdfg hdf hdfgh</p>', '<p>fg hhdf hdfgh dfghdf</p>', '', '', '', '', ''),
(8, 22, '<p>sadfsd asfasd</p>', '<p>asf asdfasd</p>', '<p>asdf asd fa</p>', '<p>sdf sfdsdafasd</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 37, '<p>Bangladesh is one of the most densely populated country in the world and per capital income is very low. Most of the people in the country live in rural areas. They depend on agriculture directly or indirectly for their livelihood. They are not well experienced with modern agriculture system. So development in agriculture is not achieved as expected. Besides this, agriculture in the country is still largely dependent on the whims of nature, which results damages to crops to a great extent every year. As the population of the country is increasing day by day, pressure on agricultural products is increasing continuously. On the other hand cultivable land is decreasing due to construction of rural and urban infrastructure such as road, school, college, hospital, hat-bazar etc. for the increased population. The number of small, marginal &amp; landless farmers is alarmingly increasing. So we have to make a plan for increasing crop production through irrigation in the project area.</p>\r\n\r\n<p>In Bangladesh major irrigation project covered only 10% while minor irrigation covered 90% of irrigated area. Presently around .57% lifted water is lost due to lack of appropriate technical know-how in water management, unplanned and improper size of irrigation channel, poor control irrigation structure and unplanned irrigation system.</p>\r\n\r\n<p>As per views of irrigation specialists on Farm Water Management Technologies irrigation coverage could be increased by 40% and cost of irrigation could be reduced by 35% through increasing irrigation efficiency. At present condition it is also necessary to give emphasis on optimum and multipurpose use of ground water.</p>\r\n\r\n<p>For disseminating the modern and latest irrigation technology to the farmers, primarily 9000 persons will be imparted training on &lsquo;&lsquo;Operation, maintenance of irrigation equipment&rdquo; and &ldquo;On farm water management &ldquo;in the project area.</p>\r\n\r\n<p>The National Agriculture Policy includes among others the following objectives:</p>\r\n\r\n<ul>\r\n	<li>Ensure a profitable and sustainable agricultural production system and raise the purchasing power by increasing real income of the farmers;</li>\r\n	<li>Increase production and supplies of more national food crops and there by ensuring food security and improving national status;</li>\r\n	<li>Take appropriate steps to develop an efficient irrigation system and encourage farmers in providing supplementary irrigation during drought with a view to increasing cropping intensity and yield;</li>\r\n	<li>Take effective steps to ensure input supplies to the farmers at fair price. So implementation of the project will help to fulfill the objectives of NAP.</li>\r\n</ul>\r\n\r\n<p>The functions assigned to re-organized BADC among others are as follows:</p>\r\n\r\n<ul>\r\n	<li>To arrange training for farmers, dealers of irrigation equipment and mechanics for the expansion of modern sophisticated technology on operation and maintenance of irrigation equipment;</li>\r\n	<li>Expansion of technology of irrigation and water management;</li>\r\n</ul>\r\n\r\n<p>V Development of command area against all types of irrigation equipment;</p>\r\n\r\n<ul>\r\n	<li>To prepare plans for the development of water distribution in the crop field (design, construction and develop distribution system).</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Project is also included in the green leaf ADP-Book (2008-09) as well as in Mid-Term Budgetary Framework (MTBF). Hence the project deserves national consideration F&lt;^ approval by the government and implementation by BADC</p>', '<p>The people of the area are very much poor. For their socio-economic development, the necessity of the project is viable for exploitation of various potentials in the area. Due to application of modern minor irrigation techniques, cultivable land would increase and production of agriculture would go up. As a result import of food grain would be reduced to that extent. So there would be a positive impact on balance of payment. Income of the farmers of the project area would be increased through production of additional crops, vegetable etc. and job employment will also be generated. These will help to achieve the following strategic goals of PRSP:</p>\r\n\r\n<table border=\\"\\\\&quot;\\\\\\\\&quot;1\\\\\\\\&quot;\\\\&quot;\\" cellpadding=\\"\\\\&quot;\\\\\\\\&quot;0\\\\\\\\&quot;\\\\&quot;\\" cellspacing=\\"\\\\&quot;\\\\\\\\&quot;0\\\\\\\\&quot;\\\\&quot;\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Policy Matrix nos.</p>\r\n			</td>\r\n			<td>\r\n			<p>Goal</p>\r\n\r\n			<p>nos.</p>\r\n			</td>\r\n			<td>\r\n			<p>Strategic goal</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\\"\\\\&quot;\\\\\\\\&quot;4\\\\\\\\&quot;\\\\&quot;\\">\r\n			<p>Matrix-no. 4:</p>\r\n\r\n			<p>(Agricultural growth towards poverty reduction)</p>\r\n			</td>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>Increasing productivity &amp; profitability in crop sector.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>2</p>\r\n			</td>\r\n			<td>\r\n			<p>Ensuring food security through increasing production of food crops.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>7</p>\r\n			</td>\r\n			<td>\r\n			<p>Ensuring agriculture extension service.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>8</p>\r\n			</td>\r\n			<td>\r\n			<p>Expansion of irrigation with emphasis on efficient management of water resources.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\\"\\\\&quot;\\\\\\\\&quot;2\\\\\\\\&quot;\\\\&quot;\\">\r\n			<p>Matrix-no. 10:</p>\r\n\r\n			<p>(water resources development &amp; management)</p>\r\n			</td>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>Expand utilization of surface water.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>2</p>\r\n			</td>\r\n			<td>\r\n			<p>Rationalize of utilization of ground water.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>The main objectives of this project are as follows:</p>\r\n\r\n<ul>\r\n	<li>To produce additional 8340 metric tons of food grain per year pricing Tk. 1668.00 lakh through optimum utilization of surface &amp; ground water by developing irrigation infrastructure and applying modern and local appropriate technology.</li>\r\n	<li>To operate 85 nos. of 2-cusec FMTW and 40 nos. 1-cusec FMTW for utilization of ground water for irrigation of 3336 hectares of land.</li>\r\n	<li>To create self-employment opportunity and alleviate poverty of:</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>1500 Owners/ Managers/ Operators/ Field-men of irrigation equipment and 3000 farmers by upgrading their skill through training to participate in the implementation of the project activities and</li>\r\n	<li>10,100 farm family, 50,400 labourers (men 30240, women 20160) and poor women through engaging themselves in all activities of food grain production &amp; processing.</li>\r\n</ol>', '<ul>\r\n	<li>Installation of 125 nos. of new force mode tube well/ deep tube wells along with necessary accessories.</li>\r\n	<li>Construction of electric line for electrification of 125 nos. of new force mode deep lube well.</li>\r\n	<li>Construction of 54,500 meter of pvc sub-surfacc (Buried pipe line) irrigation channel for 125 nos. of new force mode tube well.</li>\r\n	<li>Imparting training of 4,500 nos. of owner/manager/driver/field man &amp; farmers.</li>\r\n	<li>Establishment of 1 nos. of irrigation demonstration plot.</li>\r\n</ul>', '<ul>\r\n	<li>85 nos. of 2-cusec and 40 nos. of l-cusec new Force Mode Tube Well (FMTW) will be installed for creation of irrigation facility in the project area. As a result, it would be possible to irrigate additional 3,336 hectares of land producing 8,340 metric tons of food grain pricing Tk 1,668.00 lakh per year in addition to supply of arsenic free water for domestic &amp; commercial use.</li>\r\n	<li>54,500 meter of pvc sub-surface channel (buried pipe) will be constructed for 125 nos. of Force Mode Tube Well (FMTW) schemes. As a result, it would be possible to irrigate additional 816 hectares of land producing 2,040 metric tons of food grain pricing Tk 408.00 lakh per year.</li>\r\n	<li>Electric line for 125 nos. of Force Mode Tube well will be constructed in the project area. As a result, it would be possible to save Tk. 62.50 lakh for production cost of the farmers per year and they will be benefited and encouraged towards agricultural activities.</li>\r\n	<li>1 nos. of irrigation demonstration farms will be established to motivate the farmers for producing cash crop by applying on-farm water management system.</li>\r\n</ul>\r\n\r\n<p>1,500 nos. (50 batches) of Owners /Managers/ Operators/ Field-men of irrigation equipment and farmers will be imparted practical (2- days) training on &ldquo;Operation, repair &amp; maintenance of irrigation equipment&rdquo;. These trainees would be skilled manpower of the country. They will get opportunity for self-employment and accordingly their socio-economic condition will be upgraded. They will be rehabilitated and will be enable to make themselves self-reliant, which can assist the poverty alleviation programme of the government. 3,000 nos. (100 batches) of farmers will be given practical (1- day) training on &quot;On farm water management system&rdquo; through demonstration plot. They will get opportunity for proper utilization of irrigation water in their own larm. As a result per unit cost of production will be reduced.</p>', '', '', '<p>Physical and other component of the project :</p>\r\n\r\n<p>A. Installation of Force Mode Tube well :</p>\r\n\r\n<p>85 nos. of 2-cusec and 40 nos. I-cusec force mode tubewell will be used in this project. These tube wells will be installed for creation of irrigation facility in &ldquo;Shallow Tube Well Critical Area&rdquo; where lifting of sufficient water during March-April is very difficult due to lowering of water table and causes less irrigation area in dry season to the field. After completion of the project 3,336 hectares of land will be brought under irrigation producing 8,340 Metric tons of food grains pricing Tk. 1,668 lakh per year. These tube wells will be operated on the basis of irrigation charge hourly or seasonal basis.</p>\r\n\r\n<p>13. Establishment of Demonstration Plot</p>\r\n\r\n<p>1 nos. of demonstration plot will be established to motivate the farmers for producing cash crops by applying different kinds of modern irrigation system such as sprinkler and furrow etc. to the farmers of the project area to encourage them to grow more diversified crops. They will also be demonstrated the irrigation scheduling practices.</p>\r\n\r\n<ol>\r\n	<li>Construction of Electric line for force mode Tube well:</li>\r\n</ol>\r\n\r\n<p>Construction of electric line for 85+40=125 nos. of new force mode tube well will reduce cost of production and operation and maintenance of these tube wells will be easier.</p>\r\n\r\n<ol>\r\n	<li>On- farm water Management (command area development) :</li>\r\n</ol>\r\n\r\n<p>i</p>\r\n\r\n<p>The demand of sweet water is increasing but its availability is decreasing in the whole world day by day. For the reverine country like Bangladesh, this scarcity is more deadly. The scarcity of sweet water rises up to the highest level during the dry season in the country. At these circumstances the surface and ground water should be used very efficiently. For this purpose the water losses should be reduced by developing/construcling water conveyance infrastructures and imparting proper training to the farmers.</p>\r\n\r\n<ol>\r\n	<li>Construction of water conveyance system: The target for construction of Buried pipe line (underground water distribution system) is 54,500 meters for (85+40 nos.) of tube well schemes.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Training ofowners/managers/operators/field men on &ldquo;Irrigation equipment&rdquo; and fanners on &ldquo;On fann water management: Most of the farmers/owners/managers/operators/fieldsmen are not skill enough for smooth operation, repair &amp; maintenance of their irrigation equipment properly. For this reason, the equipment used by them are not working smoothly and not lasting for a desirable period. As a result, the cost of operation repair-maintenance is increasing result the increase of the production cost. The techniques to use irrigation water, when and how to irrigate and how much water to be applied etc. are not well known to many of the growers. So, 150 batches (4500 persons) of owners/ managers/ operators/ fieldsmen of the irrigation equipment and farmers of the schemes will be imparted training on operation, repair &amp; maintenance of irrigation equipment and efficient use of irrigation water, construction of low-cost improved irrigation channel &amp; earthen dam respectively. The training course will be 2</li>\r\n</ol>\r\n\r\n<p>days for owncrs/managers/operalors/licldsmen and I day for farmers. As a result, trainees will develop themselves as skilled manpower and they will have the opportunity to establish themselves as self- employed workers. Their socio-economic condition will be developed and they will be socially rehabilitated and self sufficient, which will help the poverty alleviation aetivilies taken by the Govt, for sustainable economic condition of the rural people to be successful. Cost of the training program is proposed to be Tk. 6.40 lakh for 50 batches (2 days program) of owners/ managers/ operators/ fieldsmen and Tk. 7.45 lakh for 100 batches (1 day program) of farmers.</p>\r\n\r\n<ol>\r\n	<li>Principles, Operation &amp; maintenance of tube wells:</li>\r\n</ol>\r\n\r\n<p>Lifting of ground water is performed by two methods such as suction mode and force mode. Pumps used for shallow tube wells are suction mode pumps. In this project area, Shallow tube wells are inactive due to static water level goes beyond the suction limit (26 feet from the ground level) in the month of March/ April every year. Turbine pumps and submersible pumps arc force mode pumps. Suction mode pumps arc installed on the ground level which acts by creating vacuum, force mode pumps arc installed inside the well below the pumping water level. These pump act by creating upward pressure and force the water to lift. The installation of Force Mode Tube Well (FMTW)s will help to get the ground water in the shallow tube well critical area (project area). This Force Mode Tube Well (FMTW) will be operated on hourly/ yearly basis irrigation charge. Irrigation charge will be fixed &amp; re-fixed by the authority on the basis of electric tariff &amp; other expenses. The irrigation charge will be collected from the farmers through coupon system/ money receipt/ smart card system. Irrigation charges &amp; other income will be deposited in the Project Director&#39;s Receipt Account. The collected irrigation charges will be used for implementation of the project components such as electric bill, coupon commission, operator &amp; temporarily appointed man power salary/ allowances, repair &amp; maintenance of tube wells, pumps, irrigation channel, buried pipe line and other infra structures. After completion of the project the system will be continued under direct control of Chief Engineer (MI), BADC.</p>\r\n\r\n<p>The Tube Wells will be operated with the help of farmers group/ association. The operators will be deployed by the project/ BADC. In case of hourly charge/ smart card system, the expenditure for oil-fuel/ electricity, repair-maintenance &amp; others will be borne by the project. The farmers group/ association will responsible for the security of the pump/ tube wells and efficient distribution of supplied water to the field. The ownership of the tube wells are belongs to BADC.</p>\r\n\r\n<ol>\r\n	<li>Formation of farmers group/ association:</li>\r\n</ol>\r\n\r\n<p>Farmers group/ association will be formed with a view to operate, repair and maintain the force mode TW/deep tube well (I, 2-cusec) properly and smoothly. The farmers group/ association will be consist of one president, one secretary, one treasurer and required no. of members and they are liable to keep proper accounts of the money collected from the farmers to meet up the expenditure of the scheme. The farmers group/ association will also maintain necessary accounting paper so that they can provide deposits &amp; expenditure statement to the general members of the scheme. BADC will supervise the activities of those farmers group/ association.</p>\r\n\r\n<ol>\r\n	<li>Accommodation Facilities :</li>\r\n</ol>\r\n\r\n<p>The project has no provision for creation of accommodation facilities. The Project Director&rsquo;s office will be set up in Sech Bhaban, Sher-e-bangla nagar Dhaka. Other implementing offices will be accommodated in the existing BADC&rsquo;s Circle, Region, and Zonal office campus. If accommodation facilities of any zonal/ unit office is not available in the BADC or Upa-zila complexes, then that offices will be set up out side the Upa-zila complex at rented building. The rent will be fixed up by the authority as</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>per budget provision. Repairing, renovation and extension work of the infrastructure of BADC will be done through this project.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^</p>\r\n\r\n<ol>\r\n	<li>Financing :</li>\r\n</ol>\r\n\r\n<p>The gross cost of the project is estimated at Tk. 2352.37 lakh. There is no foreign exchange component. The total amount of Tk. 2352.37 lakh is proposed to be provided by GOB as grant. The financial activities of the project will be implemented as per &ldquo;Delegation of Financial Power for Development Projects&rdquo;.</p>\r\n\r\n<ol>\r\n	<li>Transport :</li>\r\n</ol>\r\n\r\n<p>The main functions of the project are field oriented. Success of such project largely depends on the intensive supervision and monitoring of the field activities. Transport is important for operation and maintenance, supervision and monitoring of the project. Existing old vehicles of the Held offices will be used for this purpose. But these vehicles are not sufficient to meet the requirement in all cases. There should be provision for purchase of new vehicles for providing heavy duty. For this reason, provision has been made for procurement of 1 Double cabins (2389-3153 cc) Pickup in the project.</p>\r\n\r\n<ol>\r\n	<li>Survey Methodology:</li>\r\n</ol>\r\n\r\n<p>BADC prepared a chart (for collecting information like location, demand, aquifer situation, static water level etc.) and circulate it to the regions and zones which are known as shallow tube well critical area. This is done as per decision of jachai committee of MoA. After a month data were sent to MIISU of BADC. Survey is done by the technical personnel of BADC designated as assistant engineer or sub-assistant engineer. In another way BADC collecting data of static water level every month under the survey and monitoring project. By analyzing all these data, we can get the water discharge and recharge capacity of aquifer.</p>\r\n\r\n<ol>\r\n	<li>Safe Yield and Life of force mode tube well:</li>\r\n</ol>\r\n\r\n<p>There arc two part of Force mode lube well, these are pump and well. Pump is driven by electricity and it can be repairable if inactive. But well remain active at least 20-30 years of drilling; it may be active after 20 to 30 years also. From the available information for groundwater storage it can predict that water will be available for extraction more or less 30 years.</p>', '<p>The development project proposal has been prepared after studying feasibility by the experienced field officers of BADC. The data of irrigation equipment, irrigable &amp; irrigated land etc. has been prepared by the survey &amp; monitoring project of BADC. Consultation has been done with the local farmers, elites &amp;. public representatives before preparation of the DPP. BADC has experience of 47 years in this arena of irrigation and it has been applied to prepare the DPP. Since inception of BADC, same procedure has been followed to prepare the project papers and the people of the country are getting the benefit of it.</p>', '<ul>\r\n	<li>The programme for installation of tubewells and construction of buried pipes should be completed in dry season.</li>\r\n	<li>Due to shortage of technical manpower the implementation of the project activities was hampered. To overcome this situation necessary&#39; technical manpower should be placed in upazila level to intensify development works. Adequate fund should be released during the 2nd &amp; 3rd quarter so that the physical &amp; financial prgramme could be completed as per target within schedule time.</li>\r\n</ul>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 38, '', '', '', '', '', '', '', '', '', '<p>asdf</p>', '<p>asdf</p>', '<p>sadf</p>', '<p>asdf</p>', '<p>sadf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>sadf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', '', '<p>sadf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>sadf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>'),
(11, 47, '<p>tfutrdiudt67</p>', '<p>trurr</p>', '<p>rt6utrujtyoijhggfvh</p>', '<p>cfhfgjhg xffhg cbbh jfgd</p>', '<p>hgffdhdf</p>', '<p>dgfdxvx</p>', '<p>sffsdf</p>', '<p>gsfdsfs</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 44, '<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>', '<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>', '<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>', '<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>', '<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>', '<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>', '<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>', '<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `projects_part_b` (`id`, `pid`, `background_with_problem`, `background_linkages`, `background_objectaives`, `background_outcomes`, `background_outputs`, `background_activities`, `background_sex`, `background_proverty`, `study`, `lessons_learnt_successful_project`, `lessons_learnt_not_work_well`, `effect_other_project`, `effect_environmental`, `effect_climate_change`, `effect_gender`, `effect_employment`, `effect_poverty`, `effect_organizational_setup`, `effect_institutional_productivity`, `effect_regional_disparity`, `effect_environment_clearance_causes`, `clearance_eca`, `linkage_perspective_plan`, `mission_vision`, `achievement_of_mission`, `private_sector_participation`, `foreign_aided_project_conditionality`, `project_compensation`, `risk_analysis`, `sustainability`, `governance`, `psc_tor`, `pic_tor`, `others_any`) VALUES
(13, 46, '<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" style=\\"width:684px\\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\\"3\\" style=\\"height:47px; width:645px\\">\r\n			<p>&nbsp;Background, Objectives, priority, rationale, linkages, targets and outputs/outcomes of the project including findings of feasibility studied survey, if any</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:307px\\">\r\n			<p><strong>Background of the project:</strong></p>\r\n			</td>\r\n			<td style=\\"width:159px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:179px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"3\\" style=\\"width:645px\\">\r\n			<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:307px\\">\r\n			<p><strong>Rationale of the project :</strong></p>\r\n			</td>\r\n			<td style=\\"width:159px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:179px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"3\\" style=\\"width:645px\\">\r\n			<p><strong>1.&nbsp; Agribusiness development:</strong> The project activities will help in agri-business development, credit linkage with banks to the entrepreneur by motivational, promotional and training activities.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2.&nbsp; &nbsp;Increase of income:</strong> The project activities will help farmers in a better marketing facilities &amp; favorable marketing environment; it will reduce various malpractices and undue interference in various stages of marketing. So farmers will able to sale their products at better prices. Thus it will increase income of the farmers.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp; <strong>3.&nbsp;&nbsp; Increase of storage/ holding capacity of crops of the farmers :</strong> The project will provide training regarding storage and preservation. The project will renovate existing LGED godowns and SHOGORIP model will be expanded. Syasha Gudam Rin Prokalpa in brief SOGORIP is a concept which has already been executed successfully in some areas of Bangladesh by a project SOGORIP of DAM. In which small &amp; medium farmers of a particular area had combined in an informal group comprising of average 800 farmers by giving motivation and training. Prior that a area and a LGED unused go down has been selected by doing a survey and that godown had taken in to the program by mutual correspondent among DAM, MOA &amp; LGED, for giving storage &amp; credit facilities in a organized way to group members. In that program a LGED unused godown at a particular area had been selected &amp; renovated by that project of DAM, where farmers of that area had been kept their crops &amp; got credit through banks by showing only a receipt memo &amp; project &ldquo;Pass Book&rdquo; from the godown. By which the farmers of a particular area have able to avoid distress sale of their crops. Each godown has a Godown Committee formed by the farmers of that area and also has an Advisory Committee headed by UNO of that Upazila.</p>\r\n\r\n			<p>This concept has become sustainable and has been running successfully after completion of the project. The existing 126 godowns are running. Now this has become a model of some of the areas of the country. This model can be expanded in the non-covered areas of the project districts. So some related activities have been included in this project.&nbsp; Mass promotional activities will be taken up. Linking up credit to the farmers with banks. Through these activities crop holding and financial capacity of farmers will increase.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4.&nbsp;&nbsp; Development of agro- processing:</strong> The project will provide training regarding various post harvest processing technologies. Linking credit to the processors. Through this activity agro-processing and diversified used of crops will increase. By the development of agro-processing, various types of processed foods will be available in the country. This will strengthen economy of that area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>5.&nbsp;&nbsp; Increase of standard of living. </strong>All the above activities will ensure more quality goods &amp; services available in that area. This will increase consumption of the people of that area which will increase nutritional status and also standard of living.</p>\r\n\r\n			<p>In view of the above background and rationale of the project &ldquo;<strong>Magura-Jesore-Narail-Khulna-Satkhira Integrated Agriculture Development Project&rdquo;</strong> (DAM-Part), has been designed with a view to perform the following activities to attain the objective of the project.</p>\r\n\r\n			<p>&nbsp;<strong>&nbsp;Modalities for ensuring efficient Marketing :</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>The modalities to attain the objectives of the project through ensuring efficient marketing are as follows:</p>\r\n\r\n			<ol>\r\n				<li>Linking farmers to markets.</li>\r\n				<li>Expanding credit-cum-storage scheme named Shoshyo Gudam Rin.</li>\r\n				<li>Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign.</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>1. Linking farmers to markets:</strong></p>\r\n\r\n			<p>For linking farmer to markets concentrated producing areas for different crops, fruits and vegetables will be identified. The farmers marketing groups will be formed. They will be provided training on marketing fields and then linkage will be made by giving different marketing supports like assemble centre, marketing management, information, interaction among the Stakeholders.</p>\r\n\r\n			<p><strong>2. Expanding credit-cum-storage scheme named Shoshyo Gudam Rin:</strong></p>\r\n\r\n			<p>At present there are 12 (Twelve) godowns in operation, 10 (Ten) more LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model. When the project will be implemented, number of godowns will be extended to 22(twenty two) from existing numbers. By performing this activity farmers of that areas will be able to get credit from the assigned banks against their stored crops at those godown. Thus they can avoid distress sale and will be able to get better price.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign:</strong></p>\r\n\r\n			<p>For transferring technological know how regarding entrepreneurship development, post harvest handling, processing and other marketing promotion activities, 01 (One) processing Centre- Cum Offices at Satkhira will be established .In those training centers various types of trainings will be organized. Besides this different seminar, workshop, training, promotional campaign will be conducted for developing interaction among the stakeholders, market promotion and market integration, leading to reduce post harvest loss, marketing cost and ensuring fair price.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>;lsfdkmjksajfj</p>', '<p>ksjdkjklsdgjla</p>', '<p>lksdmnklnflksjDs</p>', '<p>lsfkdflkjla</p>', '<p>sdf;lkos;akf</p>', '<p>s;dlkfp;skeoprkpoask</p>', '<p>;lksdlfklwsajdkjkajf</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 55, '<p>Gop</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 42, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `projects_part_b` (`id`, `pid`, `background_with_problem`, `background_linkages`, `background_objectaives`, `background_outcomes`, `background_outputs`, `background_activities`, `background_sex`, `background_proverty`, `study`, `lessons_learnt_successful_project`, `lessons_learnt_not_work_well`, `effect_other_project`, `effect_environmental`, `effect_climate_change`, `effect_gender`, `effect_employment`, `effect_poverty`, `effect_organizational_setup`, `effect_institutional_productivity`, `effect_regional_disparity`, `effect_environment_clearance_causes`, `clearance_eca`, `linkage_perspective_plan`, `mission_vision`, `achievement_of_mission`, `private_sector_participation`, `foreign_aided_project_conditionality`, `project_compensation`, `risk_analysis`, `sustainability`, `governance`, `psc_tor`, `pic_tor`, `others_any`) VALUES
(16, 45, '<table border=\\"\\\\&quot;0\\\\&quot;\\" cellpadding=\\"\\\\&quot;0\\\\&quot;\\" cellspacing=\\"\\\\&quot;0\\\\&quot;\\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Rationale of the project :</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1.&nbsp; Agribusiness development:</strong> The project activities will help in agri-business development, credit linkage with banks to the entrepreneur by motivational, promotional and training activities.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2.&nbsp;&nbsp; Increase of income:</strong> The project activities will help farmers in a better marketing facilities &amp; favorable marketing environment; it will reduce various malpractices and undue interference in various stages of marketing. So farmers will able to sale their products at better prices. Thus it will increase income of the farmers.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp; <strong>3.&nbsp;&nbsp; Increase of storage/ holding capacity of crops of the farmers :</strong> The project will provide training regarding storage and preservation. The project will renovate existing LGED godowns and SHOGORIP model will be expanded. Syasha Gudam Rin Prokalpa in brief SOGORIP is a concept which has already been executed successfully in some areas of Bangladesh by a project SOGORIP of DAM. In which small &amp; medium farmers of a particular area had combined in an informal group comprising of average 800 farmers by giving motivation and training. Prior that a area and a LGED unused go down has been selected by doing a survey and that godown had taken in to the program by mutual correspondent among DAM, MOA &amp; LGED, for giving storage &amp; credit facilities in a organized way to group members. In that program a LGED unused godown at a particular area had been selected &amp; renovated by that project of DAM, where farmers of that area had been kept their crops &amp; got credit through banks by showing only a receipt memo &amp; project &ldquo;Pass Book&rdquo; from the godown. By which the farmers of a particular area have able to avoid distress sale of their crops. Each godown has a Godown Committee formed by the farmers of that area and also has an Advisory Committee headed by UNO of that Upazila.</p>\r\n\r\n			<p>This concept has become sustainable and has been running successfully after completion of the project. The existing 126 godowns are running. Now this has become a model of some of the areas of the country. This model can be expanded in the non-covered areas of the project districts. So some related activities have been included in this project.&nbsp; Mass promotional activities will be taken up. Linking up credit to the farmers with banks. Through these activities crop holding and financial capacity of farmers will increase.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4.&nbsp;&nbsp; Development of agro- processing:</strong> The project will provide training regarding various post harvest processing technologies. Linking credit to the processors. Through this activity agro-processing and diversified used of crops will increase. By the development of agro-processing, various types of processed foods will be available in the country. This will strengthen economy of that area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>5.&nbsp;&nbsp; Increase of standard of living. </strong>All the above activities will ensure more quality goods &amp; services available in that area. This will increase consumption of the people of that area which will increase nutritional status and also standard of living.</p>\r\n\r\n			<p>In view of the above background and rationale of the project &ldquo;<strong>Magura-Jesore-Narail-Khulna-Satkhira Integrated Agriculture Development Project&rdquo;</strong> (DAM-Part), has been designed with a view to perform the following activities to attain the objective of the project.</p>\r\n\r\n			<p>&nbsp;<strong>&nbsp;Modalities for ensuring efficient Marketing :</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>The modalities to attain the objectives of the project through ensuring efficient marketing are as follows:</p>\r\n\r\n			<ol>\r\n				<li>Linking farmers to markets.</li>\r\n				<li>Expanding credit-cum-storage scheme named Shoshyo Gudam Rin.</li>\r\n				<li>Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign.</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>1. Linking farmers to markets:</strong></p>\r\n\r\n			<p>For linking farmer to markets concentrated producing areas for different crops, fruits and vegetables will be identified. The farmers marketing groups will be formed. They will be provided training on marketing fields and then linkage will be made by giving different marketing supports like assemble centre, marketing management, information, interaction among the Stakeholders.</p>\r\n\r\n			<p><strong>2. Expanding credit-cum-storage scheme named Shoshyo Gudam Rin:</strong></p>\r\n\r\n			<p>At present there are 12 (Twelve) godowns in operation, 10 (Ten) more LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model. When the project will be implemented, number of godowns will be extended to 22(twenty two) from existing numbers. By performing this activity farmers of that areas will be able to get credit from the assigned banks against their stored crops at those godown. Thus they can avoid distress sale and will be able to get better price.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign:</strong></p>\r\n\r\n			<p>For transferring technological know how regarding entrepreneurship development, post harvest handling, processing and other marketing promotion activities, 01 (One) processing Centre- Cum Offices at Satkhira will be established .In those training centers various types of trainings will be organized. Besides this different seminar, workshop, training, promotional campaign will be conducted for developing interaction among the stakeholders, market promotion and market integration, leading to reduce post harvest loss, marketing cost and ensuring fair price.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Targets and Activities : </strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Small and medium farmers of our country do not have sufficient storage/holding capacity. Huge crops particularly Paddy, Vegetables, Potato, Pineapples, Mango, Jackfruit are abundant in pick harvest season. In this glut situation farmers become very helpless. They do not get good prices because they are not organized and as they have very minimum storage/holding capacity they are bound to sell their product at a very low price. To get relief from this situation, farmers need to be organized. To give better prices to the farmers and to reduce marketing cost some marketing extension service will be needed. For extending marketing services to the farmers some groups with be formed.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>The detailed activities of the project area </strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1. Training:</strong> During the project period training will be provided to 6,000 farmers, 450 traders &amp; entrepreneurs, 50 DAM persons, on different aspects of marketing and post harvest handing. TOT training module will be developed and conducted for project officers and DAM officials on different aspects of marketing, processing and post harvest technologies. For TOT, resource persons will be invited from DAE, BARI, BIRRI, IFST/BCSIR and concerned agencies and institutions.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2. Assemble Centre:</strong> A total of 08 Assemble centers will be constructed in concentrated producing areas of the districts. So that farmers will be able to get market access in a congenial atmosphere of selected 10 Upazila of the districts. Assemble centers will be constructed comprising floor area a total of 7,200 sft for each centre. .&nbsp; For this purpose a total of 136 kathas of land will be procured at suitable places .Construction work will be done by PIW, DAE/LGED / BMTCL / BADC</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Processing Centre Cum Office:</strong>&nbsp; 01 (one) two storied Processing Centre cum Offices comprising floor area&nbsp; of 7,500 sft for each floor will be established in Satkhira district.&nbsp; For this purpose 30 kathas of land will be procured at suitable places .After completion of the construction, DAM&nbsp; District Offices will be set up at the centre.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4. Group Formation:</strong> For extending marketing services, some farmers groups will be formed. A total of 330 marketing groups in selected 33 Upazilas will be formed. 10 groups in each upazila and 10 members for each group of which 01 trader will be included in each group. These groups will be trained up in various fields of marketing, processing, post harvest technology etc.</p>\r\n\r\n			<p><strong>5. Promotional Program:</strong> Massive promotional campaign in Print, Electronic &amp; Other medias will be organized in the selected Upazilas in each district. Besides some promotional programs especially in the electronic and print media might be organized at the national level.</p>\r\n\r\n			<p><strong>6. Motivational Tour:</strong> Some motivational awareness programs will also be organized among common people of the areas regarding production, storage, utilization and processing technology, marketing approaches and international value of various crops. In this regard a total of 330 motivational tours comprising of 20 small farmers in each group and 10 groups of each Upazila of the area to the successful SOGORIP godowns of the region/another region will be organized.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>7. Linkage Development:</strong> Necessary linkage between production levels with consumption/user level will be developed through contract marketing system and by motivating them by organizing Seminar/Workshop/Focus-sessions/ Training and extending Marketing Extension Services.&nbsp;&nbsp;</p>\r\n\r\n			<p>&nbsp;<strong>8. Survey:</strong> &nbsp;Production data of important crops and business data of the areas will be collected by doing survey and maintained in it as database. In this regard 2 nos. of research/surveys on various aspects of production, marketing and consumption will be conducted.</p>\r\n\r\n			<p>&nbsp;<strong>9.</strong>&nbsp; <strong>Motivation</strong> will be given regarding application of standard weights and measures, uniform market charges, easy access to the markets, application of harmful chemical/pesticides in the horticulture products.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>10.</strong> <strong>Renovation/Establishment</strong> <strong>of 10 </strong><strong>LGED </strong><strong>godowns</strong> : 10 (Ten) LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model in the project area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>Project Output:&nbsp; </strong>This is a service oriented project. Therefore, it is not feasible to measure direct &nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; financial benefit. However, the project outputs are:</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<ul>\r\n				<li>Improvement of marketing system.</li>\r\n				<li>Contribution to the national economy.</li>\r\n				<li>Improvement of marketing efficiency.</li>\r\n				<li>Increase of income of the farmers and also people engaged in marketing level at the end of the project period.</li>\r\n				<li>Reduction post harvest losses by awarding farmers and traders about storage, handling, cleaning, and grading etc</li>\r\n				<li>Protection from distress sale in the glut situation by credit linkage and also by processing &amp; storage improvement</li>\r\n				<li>Increase supply of home made processed foods in the area.</li>\r\n				<li>Increase standard of living &amp; socioeconomic condition of the people in the area.</li>\r\n				<li>Extension and improvement of post harvest technology.</li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', '<table border=\\"\\\\&quot;0\\\\&quot;\\" cellpadding=\\"\\\\&quot;0\\\\&quot;\\" cellspacing=\\"\\\\&quot;0\\\\&quot;\\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Rationale of the project :</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1.&nbsp; Agribusiness development:</strong> The project activities will help in agri-business development, credit linkage with banks to the entrepreneur by motivational, promotional and training activities.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2.&nbsp;&nbsp; Increase of income:</strong> The project activities will help farmers in a better marketing facilities &amp; favorable marketing environment; it will reduce various malpractices and undue interference in various stages of marketing. So farmers will able to sale their products at better prices. Thus it will increase income of the farmers.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp; <strong>3.&nbsp;&nbsp; Increase of storage/ holding capacity of crops of the farmers :</strong> The project will provide training regarding storage and preservation. The project will renovate existing LGED godowns and SHOGORIP model will be expanded. Syasha Gudam Rin Prokalpa in brief SOGORIP is a concept which has already been executed successfully in some areas of Bangladesh by a project SOGORIP of DAM. In which small &amp; medium farmers of a particular area had combined in an informal group comprising of average 800 farmers by giving motivation and training. Prior that a area and a LGED unused go down has been selected by doing a survey and that godown had taken in to the program by mutual correspondent among DAM, MOA &amp; LGED, for giving storage &amp; credit facilities in a organized way to group members. In that program a LGED unused godown at a particular area had been selected &amp; renovated by that project of DAM, where farmers of that area had been kept their crops &amp; got credit through banks by showing only a receipt memo &amp; project &ldquo;Pass Book&rdquo; from the godown. By which the farmers of a particular area have able to avoid distress sale of their crops. Each godown has a Godown Committee formed by the farmers of that area and also has an Advisory Committee headed by UNO of that Upazila.</p>\r\n\r\n			<p>This concept has become sustainable and has been running successfully after completion of the project. The existing 126 godowns are running. Now this has become a model of some of the areas of the country. This model can be expanded in the non-covered areas of the project districts. So some related activities have been included in this project.&nbsp; Mass promotional activities will be taken up. Linking up credit to the farmers with banks. Through these activities crop holding and financial capacity of farmers will increase.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4.&nbsp;&nbsp; Development of agro- processing:</strong> The project will provide training regarding various post harvest processing technologies. Linking credit to the processors. Through this activity agro-processing and diversified used of crops will increase. By the development of agro-processing, various types of processed foods will be available in the country. This will strengthen economy of that area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>5.&nbsp;&nbsp; Increase of standard of living. </strong>All the above activities will ensure more quality goods &amp; services available in that area. This will increase consumption of the people of that area which will increase nutritional status and also standard of living.</p>\r\n\r\n			<p>In view of the above background and rationale of the project &ldquo;<strong>Magura-Jesore-Narail-Khulna-Satkhira Integrated Agriculture Development Project&rdquo;</strong> (DAM-Part), has been designed with a view to perform the following activities to attain the objective of the project.</p>\r\n\r\n			<p>&nbsp;<strong>&nbsp;Modalities for ensuring efficient Marketing :</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>The modalities to attain the objectives of the project through ensuring efficient marketing are as follows:</p>\r\n\r\n			<ol>\r\n				<li>Linking farmers to markets.</li>\r\n				<li>Expanding credit-cum-storage scheme named Shoshyo Gudam Rin.</li>\r\n				<li>Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign.</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>1. Linking farmers to markets:</strong></p>\r\n\r\n			<p>For linking farmer to markets concentrated producing areas for different crops, fruits and vegetables will be identified. The farmers marketing groups will be formed. They will be provided training on marketing fields and then linkage will be made by giving different marketing supports like assemble centre, marketing management, information, interaction among the Stakeholders.</p>\r\n\r\n			<p><strong>2. Expanding credit-cum-storage scheme named Shoshyo Gudam Rin:</strong></p>\r\n\r\n			<p>At present there are 12 (Twelve) godowns in operation, 10 (Ten) more LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model. When the project will be implemented, number of godowns will be extended to 22(twenty two) from existing numbers. By performing this activity farmers of that areas will be able to get credit from the assigned banks against their stored crops at those godown. Thus they can avoid distress sale and will be able to get better price.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign:</strong></p>\r\n\r\n			<p>For transferring technological know how regarding entrepreneurship development, post harvest handling, processing and other marketing promotion activities, 01 (One) processing Centre- Cum Offices at Satkhira will be established .In those training centers various types of trainings will be organized. Besides this different seminar, workshop, training, promotional campaign will be conducted for developing interaction among the stakeholders, market promotion and market integration, leading to reduce post harvest loss, marketing cost and ensuring fair price.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Targets and Activities : </strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Small and medium farmers of our country do not have sufficient storage/holding capacity. Huge crops particularly Paddy, Vegetables, Potato, Pineapples, Mango, Jackfruit are abundant in pick harvest season. In this glut situation farmers become very helpless. They do not get good prices because they are not organized and as they have very minimum storage/holding capacity they are bound to sell their product at a very low price. To get relief from this situation, farmers need to be organized. To give better prices to the farmers and to reduce marketing cost some marketing extension service will be needed. For extending marketing services to the farmers some groups with be formed.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>The detailed activities of the project area </strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1. Training:</strong> During the project period training will be provided to 6,000 farmers, 450 traders &amp; entrepreneurs, 50 DAM persons, on different aspects of marketing and post harvest handing. TOT training module will be developed and conducted for project officers and DAM officials on different aspects of marketing, processing and post harvest technologies. For TOT, resource persons will be invited from DAE, BARI, BIRRI, IFST/BCSIR and concerned agencies and institutions.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2. Assemble Centre:</strong> A total of 08 Assemble centers will be constructed in concentrated producing areas of the districts. So that farmers will be able to get market access in a congenial atmosphere of selected 10 Upazila of the districts. Assemble centers will be constructed comprising floor area a total of 7,200 sft for each centre. .&nbsp; For this purpose a total of 136 kathas of land will be procured at suitable places .Construction work will be done by PIW, DAE/LGED / BMTCL / BADC</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Processing Centre Cum Office:</strong>&nbsp; 01 (one) two storied Processing Centre cum Offices comprising floor area&nbsp; of 7,500 sft for each floor will be established in Satkhira district.&nbsp; For this purpose 30 kathas of land will be procured at suitable places .After completion of the construction, DAM&nbsp; District Offices will be set up at the centre.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4. Group Formation:</strong> For extending marketing services, some farmers groups will be formed. A total of 330 marketing groups in selected 33 Upazilas will be formed. 10 groups in each upazila and 10 members for each group of which 01 trader will be included in each group. These groups will be trained up in various fields of marketing, processing, post harvest technology etc.</p>\r\n\r\n			<p><strong>5. Promotional Program:</strong> Massive promotional campaign in Print, Electronic &amp; Other medias will be organized in the selected Upazilas in each district. Besides some promotional programs especially in the electronic and print media might be organized at the national level.</p>\r\n\r\n			<p><strong>6. Motivational Tour:</strong> Some motivational awareness programs will also be organized among common people of the areas regarding production, storage, utilization and processing technology, marketing approaches and international value of various crops. In this regard a total of 330 motivational tours comprising of 20 small farmers in each group and 10 groups of each Upazila of the area to the successful SOGORIP godowns of the region/another region will be organized.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>7. Linkage Development:</strong> Necessary linkage between production levels with consumption/user level will be developed through contract marketing system and by motivating them by organizing Seminar/Workshop/Focus-sessions/ Training and extending Marketing Extension Services.&nbsp;&nbsp;</p>\r\n\r\n			<p>&nbsp;<strong>8. Survey:</strong> &nbsp;Production data of important crops and business data of the areas will be collected by doing survey and maintained in it as database. In this regard 2 nos. of research/surveys on various aspects of production, marketing and consumption will be conducted.</p>\r\n\r\n			<p>&nbsp;<strong>9.</strong>&nbsp; <strong>Motivation</strong> will be given regarding application of standard weights and measures, uniform market charges, easy access to the markets, application of harmful chemical/pesticides in the horticulture products.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>10.</strong> <strong>Renovation/Establishment</strong> <strong>of 10 </strong><strong>LGED </strong><strong>godowns</strong> : 10 (Ten) LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model in the project area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>Project Output:&nbsp; </strong>This is a service oriented project. Therefore, it is not feasible to measure direct &nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; financial benefit. However, the project outputs are:</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<ul>\r\n				<li>Improvement of marketing system.</li>\r\n				<li>Contribution to the national economy.</li>\r\n				<li>Improvement of marketing efficiency.</li>\r\n				<li>Increase of income of the farmers and also people engaged in marketing level at the end of the project period.</li>\r\n				<li>Reduction post harvest losses by awarding farmers and traders about storage, handling, cleaning, and grading etc</li>\r\n				<li>Protection from distress sale in the glut situation by credit linkage and also by processing &amp; storage improvement</li>\r\n				<li>Increase supply of home made processed foods in the area.</li>\r\n				<li>Increase standard of living &amp; socioeconomic condition of the people in the area.</li>\r\n				<li>Extension and improvement of post harvest technology.</li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table border=\\"\\\\&quot;0\\\\&quot;\\" cellpadding=\\"\\\\&quot;0\\\\&quot;\\" cellspacing=\\"\\\\&quot;0\\\\&quot;\\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Rationale of the project :</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1.&nbsp; Agribusiness development:</strong> The project activities will help in agri-business development, credit linkage with banks to the entrepreneur by motivational, promotional and training activities.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2.&nbsp;&nbsp; Increase of income:</strong> The project activities will help farmers in a better marketing facilities &amp; favorable marketing environment; it will reduce various malpractices and undue interference in various stages of marketing. So farmers will able to sale their products at better prices. Thus it will increase income of the farmers.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp; <strong>3.&nbsp;&nbsp; Increase of storage/ holding capacity of crops of the farmers :</strong> The project will provide training regarding storage and preservation. The project will renovate existing LGED godowns and SHOGORIP model will be expanded. Syasha Gudam Rin Prokalpa in brief SOGORIP is a concept which has already been executed successfully in some areas of Bangladesh by a project SOGORIP of DAM. In which small &amp; medium farmers of a particular area had combined in an informal group comprising of average 800 farmers by giving motivation and training. Prior that a area and a LGED unused go down has been selected by doing a survey and that godown had taken in to the program by mutual correspondent among DAM, MOA &amp; LGED, for giving storage &amp; credit facilities in a organized way to group members. In that program a LGED unused godown at a particular area had been selected &amp; renovated by that project of DAM, where farmers of that area had been kept their crops &amp; got credit through banks by showing only a receipt memo &amp; project &ldquo;Pass Book&rdquo; from the godown. By which the farmers of a particular area have able to avoid distress sale of their crops. Each godown has a Godown Committee formed by the farmers of that area and also has an Advisory Committee headed by UNO of that Upazila.</p>\r\n\r\n			<p>This concept has become sustainable and has been running successfully after completion of the project. The existing 126 godowns are running. Now this has become a model of some of the areas of the country. This model can be expanded in the non-covered areas of the project districts. So some related activities have been included in this project.&nbsp; Mass promotional activities will be taken up. Linking up credit to the farmers with banks. Through these activities crop holding and financial capacity of farmers will increase.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4.&nbsp;&nbsp; Development of agro- processing:</strong> The project will provide training regarding various post harvest processing technologies. Linking credit to the processors. Through this activity agro-processing and diversified used of crops will increase. By the development of agro-processing, various types of processed foods will be available in the country. This will strengthen economy of that area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>5.&nbsp;&nbsp; Increase of standard of living. </strong>All the above activities will ensure more quality goods &amp; services available in that area. This will increase consumption of the people of that area which will increase nutritional status and also standard of living.</p>\r\n\r\n			<p>In view of the above background and rationale of the project &ldquo;<strong>Magura-Jesore-Narail-Khulna-Satkhira Integrated Agriculture Development Project&rdquo;</strong> (DAM-Part), has been designed with a view to perform the following activities to attain the objective of the project.</p>\r\n\r\n			<p>&nbsp;<strong>&nbsp;Modalities for ensuring efficient Marketing :</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>The modalities to attain the objectives of the project through ensuring efficient marketing are as follows:</p>\r\n\r\n			<ol>\r\n				<li>Linking farmers to markets.</li>\r\n				<li>Expanding credit-cum-storage scheme named Shoshyo Gudam Rin.</li>\r\n				<li>Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign.</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>1. Linking farmers to markets:</strong></p>\r\n\r\n			<p>For linking farmer to markets concentrated producing areas for different crops, fruits and vegetables will be identified. The farmers marketing groups will be formed. They will be provided training on marketing fields and then linkage will be made by giving different marketing supports like assemble centre, marketing management, information, interaction among the Stakeholders.</p>\r\n\r\n			<p><strong>2. Expanding credit-cum-storage scheme named Shoshyo Gudam Rin:</strong></p>\r\n\r\n			<p>At present there are 12 (Twelve) godowns in operation, 10 (Ten) more LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model. When the project will be implemented, number of godowns will be extended to 22(twenty two) from existing numbers. By performing this activity farmers of that areas will be able to get credit from the assigned banks against their stored crops at those godown. Thus they can avoid distress sale and will be able to get better price.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign:</strong></p>\r\n\r\n			<p>For transferring technological know how regarding entrepreneurship development, post harvest handling, processing and other marketing promotion activities, 01 (One) processing Centre- Cum Offices at Satkhira will be established .In those training centers various types of trainings will be organized. Besides this different seminar, workshop, training, promotional campaign will be conducted for developing interaction among the stakeholders, market promotion and market integration, leading to reduce post harvest loss, marketing cost and ensuring fair price.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Targets and Activities : </strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Small and medium farmers of our country do not have sufficient storage/holding capacity. Huge crops particularly Paddy, Vegetables, Potato, Pineapples, Mango, Jackfruit are abundant in pick harvest season. In this glut situation farmers become very helpless. They do not get good prices because they are not organized and as they have very minimum storage/holding capacity they are bound to sell their product at a very low price. To get relief from this situation, farmers need to be organized. To give better prices to the farmers and to reduce marketing cost some marketing extension service will be needed. For extending marketing services to the farmers some groups with be formed.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>The detailed activities of the project area </strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1. Training:</strong> During the project period training will be provided to 6,000 farmers, 450 traders &amp; entrepreneurs, 50 DAM persons, on different aspects of marketing and post harvest handing. TOT training module will be developed and conducted for project officers and DAM officials on different aspects of marketing, processing and post harvest technologies. For TOT, resource persons will be invited from DAE, BARI, BIRRI, IFST/BCSIR and concerned agencies and institutions.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2. Assemble Centre:</strong> A total of 08 Assemble centers will be constructed in concentrated producing areas of the districts. So that farmers will be able to get market access in a congenial atmosphere of selected 10 Upazila of the districts. Assemble centers will be constructed comprising floor area a total of 7,200 sft for each centre. .&nbsp; For this purpose a total of 136 kathas of land will be procured at suitable places .Construction work will be done by PIW, DAE/LGED / BMTCL / BADC</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Processing Centre Cum Office:</strong>&nbsp; 01 (one) two storied Processing Centre cum Offices comprising floor area&nbsp; of 7,500 sft for each floor will be established in Satkhira district.&nbsp; For this purpose 30 kathas of land will be procured at suitable places .After completion of the construction, DAM&nbsp; District Offices will be set up at the centre.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4. Group Formation:</strong> For extending marketing services, some farmers groups will be formed. A total of 330 marketing groups in selected 33 Upazilas will be formed. 10 groups in each upazila and 10 members for each group of which 01 trader will be included in each group. These groups will be trained up in various fields of marketing, processing, post harvest technology etc.</p>\r\n\r\n			<p><strong>5. Promotional Program:</strong> Massive promotional campaign in Print, Electronic &amp; Other medias will be organized in the selected Upazilas in each district. Besides some promotional programs especially in the electronic and print media might be organized at the national level.</p>\r\n\r\n			<p><strong>6. Motivational Tour:</strong> Some motivational awareness programs will also be organized among common people of the areas regarding production, storage, utilization and processing technology, marketing approaches and international value of various crops. In this regard a total of 330 motivational tours comprising of 20 small farmers in each group and 10 groups of each Upazila of the area to the successful SOGORIP godowns of the region/another region will be organized.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>7. Linkage Development:</strong> Necessary linkage between production levels with consumption/user level will be developed through contract marketing system and by motivating them by organizing Seminar/Workshop/Focus-sessions/ Training and extending Marketing Extension Services.&nbsp;&nbsp;</p>\r\n\r\n			<p>&nbsp;<strong>8. Survey:</strong> &nbsp;Production data of important crops and business data of the areas will be collected by doing survey and maintained in it as database. In this regard 2 nos. of research/surveys on various aspects of production, marketing and consumption will be conducted.</p>\r\n\r\n			<p>&nbsp;<strong>9.</strong>&nbsp; <strong>Motivation</strong> will be given regarding application of standard weights and measures, uniform market charges, easy access to the markets, application of harmful chemical/pesticides in the horticulture products.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>10.</strong> <strong>Renovation/Establishment</strong> <strong>of 10 </strong><strong>LGED </strong><strong>godowns</strong> : 10 (Ten) LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model in the project area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>Project Output:&nbsp; </strong>This is a service oriented project. Therefore, it is not feasible to measure direct &nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; financial benefit. However, the project outputs are:</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<ul>\r\n				<li>Improvement of marketing system.</li>\r\n				<li>Contribution to the national economy.</li>\r\n				<li>Improvement of marketing efficiency.</li>\r\n				<li>Increase of income of the farmers and also people engaged in marketing level at the end of the project period.</li>\r\n				<li>Reduction post harvest losses by awarding farmers and traders about storage, handling, cleaning, and grading etc</li>\r\n				<li>Protection from distress sale in the glut situation by credit linkage and also by processing &amp; storage improvement</li>\r\n				<li>Increase supply of home made processed foods in the area.</li>\r\n				<li>Increase standard of living &amp; socioeconomic condition of the people in the area.</li>\r\n				<li>Extension and improvement of post harvest technology.</li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table border=\\"\\\\&quot;0\\\\&quot;\\" cellpadding=\\"\\\\&quot;0\\\\&quot;\\" cellspacing=\\"\\\\&quot;0\\\\&quot;\\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Rationale of the project :</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1.&nbsp; Agribusiness development:</strong> The project activities will help in agri-business development, credit linkage with banks to the entrepreneur by motivational, promotional and training activities.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2.&nbsp;&nbsp; Increase of income:</strong> The project activities will help farmers in a better marketing facilities &amp; favorable marketing environment; it will reduce various malpractices and undue interference in various stages of marketing. So farmers will able to sale their products at better prices. Thus it will increase income of the farmers.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp; <strong>3.&nbsp;&nbsp; Increase of storage/ holding capacity of crops of the farmers :</strong> The project will provide training regarding storage and preservation. The project will renovate existing LGED godowns and SHOGORIP model will be expanded. Syasha Gudam Rin Prokalpa in brief SOGORIP is a concept which has already been executed successfully in some areas of Bangladesh by a project SOGORIP of DAM. In which small &amp; medium farmers of a particular area had combined in an informal group comprising of average 800 farmers by giving motivation and training. Prior that a area and a LGED unused go down has been selected by doing a survey and that godown had taken in to the program by mutual correspondent among DAM, MOA &amp; LGED, for giving storage &amp; credit facilities in a organized way to group members. In that program a LGED unused godown at a particular area had been selected &amp; renovated by that project of DAM, where farmers of that area had been kept their crops &amp; got credit through banks by showing only a receipt memo &amp; project &ldquo;Pass Book&rdquo; from the godown. By which the farmers of a particular area have able to avoid distress sale of their crops. Each godown has a Godown Committee formed by the farmers of that area and also has an Advisory Committee headed by UNO of that Upazila.</p>\r\n\r\n			<p>This concept has become sustainable and has been running successfully after completion of the project. The existing 126 godowns are running. Now this has become a model of some of the areas of the country. This model can be expanded in the non-covered areas of the project districts. So some related activities have been included in this project.&nbsp; Mass promotional activities will be taken up. Linking up credit to the farmers with banks. Through these activities crop holding and financial capacity of farmers will increase.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4.&nbsp;&nbsp; Development of agro- processing:</strong> The project will provide training regarding various post harvest processing technologies. Linking credit to the processors. Through this activity agro-processing and diversified used of crops will increase. By the development of agro-processing, various types of processed foods will be available in the country. This will strengthen economy of that area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>5.&nbsp;&nbsp; Increase of standard of living. </strong>All the above activities will ensure more quality goods &amp; services available in that area. This will increase consumption of the people of that area which will increase nutritional status and also standard of living.</p>\r\n\r\n			<p>In view of the above background and rationale of the project &ldquo;<strong>Magura-Jesore-Narail-Khulna-Satkhira Integrated Agriculture Development Project&rdquo;</strong> (DAM-Part), has been designed with a view to perform the following activities to attain the objective of the project.</p>\r\n\r\n			<p>&nbsp;<strong>&nbsp;Modalities for ensuring efficient Marketing :</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>The modalities to attain the objectives of the project through ensuring efficient marketing are as follows:</p>\r\n\r\n			<ol>\r\n				<li>Linking farmers to markets.</li>\r\n				<li>Expanding credit-cum-storage scheme named Shoshyo Gudam Rin.</li>\r\n				<li>Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign.</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>1. Linking farmers to markets:</strong></p>\r\n\r\n			<p>For linking farmer to markets concentrated producing areas for different crops, fruits and vegetables will be identified. The farmers marketing groups will be formed. They will be provided training on marketing fields and then linkage will be made by giving different marketing supports like assemble centre, marketing management, information, interaction among the Stakeholders.</p>\r\n\r\n			<p><strong>2. Expanding credit-cum-storage scheme named Shoshyo Gudam Rin:</strong></p>\r\n\r\n			<p>At present there are 12 (Twelve) godowns in operation, 10 (Ten) more LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model. When the project will be implemented, number of godowns will be extended to 22(twenty two) from existing numbers. By performing this activity farmers of that areas will be able to get credit from the assigned banks against their stored crops at those godown. Thus they can avoid distress sale and will be able to get better price.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign:</strong></p>\r\n\r\n			<p>For transferring technological know how regarding entrepreneurship development, post harvest handling, processing and other marketing promotion activities, 01 (One) processing Centre- Cum Offices at Satkhira will be established .In those training centers various types of trainings will be organized. Besides this different seminar, workshop, training, promotional campaign will be conducted for developing interaction among the stakeholders, market promotion and market integration, leading to reduce post harvest loss, marketing cost and ensuring fair price.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Targets and Activities : </strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Small and medium farmers of our country do not have sufficient storage/holding capacity. Huge crops particularly Paddy, Vegetables, Potato, Pineapples, Mango, Jackfruit are abundant in pick harvest season. In this glut situation farmers become very helpless. They do not get good prices because they are not organized and as they have very minimum storage/holding capacity they are bound to sell their product at a very low price. To get relief from this situation, farmers need to be organized. To give better prices to the farmers and to reduce marketing cost some marketing extension service will be needed. For extending marketing services to the farmers some groups with be formed.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>The detailed activities of the project area </strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1. Training:</strong> During the project period training will be provided to 6,000 farmers, 450 traders &amp; entrepreneurs, 50 DAM persons, on different aspects of marketing and post harvest handing. TOT training module will be developed and conducted for project officers and DAM officials on different aspects of marketing, processing and post harvest technologies. For TOT, resource persons will be invited from DAE, BARI, BIRRI, IFST/BCSIR and concerned agencies and institutions.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2. Assemble Centre:</strong> A total of 08 Assemble centers will be constructed in concentrated producing areas of the districts. So that farmers will be able to get market access in a congenial atmosphere of selected 10 Upazila of the districts. Assemble centers will be constructed comprising floor area a total of 7,200 sft for each centre. .&nbsp; For this purpose a total of 136 kathas of land will be procured at suitable places .Construction work will be done by PIW, DAE/LGED / BMTCL / BADC</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Processing Centre Cum Office:</strong>&nbsp; 01 (one) two storied Processing Centre cum Offices comprising floor area&nbsp; of 7,500 sft for each floor will be established in Satkhira district.&nbsp; For this purpose 30 kathas of land will be procured at suitable places .After completion of the construction, DAM&nbsp; District Offices will be set up at the centre.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4. Group Formation:</strong> For extending marketing services, some farmers groups will be formed. A total of 330 marketing groups in selected 33 Upazilas will be formed. 10 groups in each upazila and 10 members for each group of which 01 trader will be included in each group. These groups will be trained up in various fields of marketing, processing, post harvest technology etc.</p>\r\n\r\n			<p><strong>5. Promotional Program:</strong> Massive promotional campaign in Print, Electronic &amp; Other medias will be organized in the selected Upazilas in each district. Besides some promotional programs especially in the electronic and print media might be organized at the national level.</p>\r\n\r\n			<p><strong>6. Motivational Tour:</strong> Some motivational awareness programs will also be organized among common people of the areas regarding production, storage, utilization and processing technology, marketing approaches and international value of various crops. In this regard a total of 330 motivational tours comprising of 20 small farmers in each group and 10 groups of each Upazila of the area to the successful SOGORIP godowns of the region/another region will be organized.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>7. Linkage Development:</strong> Necessary linkage between production levels with consumption/user level will be developed through contract marketing system and by motivating them by organizing Seminar/Workshop/Focus-sessions/ Training and extending Marketing Extension Services.&nbsp;&nbsp;</p>\r\n\r\n			<p>&nbsp;<strong>8. Survey:</strong> &nbsp;Production data of important crops and business data of the areas will be collected by doing survey and maintained in it as database. In this regard 2 nos. of research/surveys on various aspects of production, marketing and consumption will be conducted.</p>\r\n\r\n			<p>&nbsp;<strong>9.</strong>&nbsp; <strong>Motivation</strong> will be given regarding application of standard weights and measures, uniform market charges, easy access to the markets, application of harmful chemical/pesticides in the horticulture products.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>10.</strong> <strong>Renovation/Establishment</strong> <strong>of 10 </strong><strong>LGED </strong><strong>godowns</strong> : 10 (Ten) LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model in the project area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>Project Output:&nbsp; </strong>This is a service oriented project. Therefore, it is not feasible to measure direct &nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; financial benefit. However, the project outputs are:</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<ul>\r\n				<li>Improvement of marketing system.</li>\r\n				<li>Contribution to the national economy.</li>\r\n				<li>Improvement of marketing efficiency.</li>\r\n				<li>Increase of income of the farmers and also people engaged in marketing level at the end of the project period.</li>\r\n				<li>Reduction post harvest losses by awarding farmers and traders about storage, handling, cleaning, and grading etc</li>\r\n				<li>Protection from distress sale in the glut situation by credit linkage and also by processing &amp; storage improvement</li>\r\n				<li>Increase supply of home made processed foods in the area.</li>\r\n				<li>Increase standard of living &amp; socioeconomic condition of the people in the area.</li>\r\n				<li>Extension and improvement of post harvest technology.</li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table border=\\"\\\\&quot;0\\\\&quot;\\" cellpadding=\\"\\\\&quot;0\\\\&quot;\\" cellspacing=\\"\\\\&quot;0\\\\&quot;\\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Rationale of the project :</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1.&nbsp; Agribusiness development:</strong> The project activities will help in agri-business development, credit linkage with banks to the entrepreneur by motivational, promotional and training activities.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2.&nbsp;&nbsp; Increase of income:</strong> The project activities will help farmers in a better marketing facilities &amp; favorable marketing environment; it will reduce various malpractices and undue interference in various stages of marketing. So farmers will able to sale their products at better prices. Thus it will increase income of the farmers.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp; <strong>3.&nbsp;&nbsp; Increase of storage/ holding capacity of crops of the farmers :</strong> The project will provide training regarding storage and preservation. The project will renovate existing LGED godowns and SHOGORIP model will be expanded. Syasha Gudam Rin Prokalpa in brief SOGORIP is a concept which has already been executed successfully in some areas of Bangladesh by a project SOGORIP of DAM. In which small &amp; medium farmers of a particular area had combined in an informal group comprising of average 800 farmers by giving motivation and training. Prior that a area and a LGED unused go down has been selected by doing a survey and that godown had taken in to the program by mutual correspondent among DAM, MOA &amp; LGED, for giving storage &amp; credit facilities in a organized way to group members. In that program a LGED unused godown at a particular area had been selected &amp; renovated by that project of DAM, where farmers of that area had been kept their crops &amp; got credit through banks by showing only a receipt memo &amp; project &ldquo;Pass Book&rdquo; from the godown. By which the farmers of a particular area have able to avoid distress sale of their crops. Each godown has a Godown Committee formed by the farmers of that area and also has an Advisory Committee headed by UNO of that Upazila.</p>\r\n\r\n			<p>This concept has become sustainable and has been running successfully after completion of the project. The existing 126 godowns are running. Now this has become a model of some of the areas of the country. This model can be expanded in the non-covered areas of the project districts. So some related activities have been included in this project.&nbsp; Mass promotional activities will be taken up. Linking up credit to the farmers with banks. Through these activities crop holding and financial capacity of farmers will increase.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4.&nbsp;&nbsp; Development of agro- processing:</strong> The project will provide training regarding various post harvest processing technologies. Linking credit to the processors. Through this activity agro-processing and diversified used of crops will increase. By the development of agro-processing, various types of processed foods will be available in the country. This will strengthen economy of that area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>5.&nbsp;&nbsp; Increase of standard of living. </strong>All the above activities will ensure more quality goods &amp; services available in that area. This will increase consumption of the people of that area which will increase nutritional status and also standard of living.</p>\r\n\r\n			<p>In view of the above background and rationale of the project &ldquo;<strong>Magura-Jesore-Narail-Khulna-Satkhira Integrated Agriculture Development Project&rdquo;</strong> (DAM-Part), has been designed with a view to perform the following activities to attain the objective of the project.</p>\r\n\r\n			<p>&nbsp;<strong>&nbsp;Modalities for ensuring efficient Marketing :</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>The modalities to attain the objectives of the project through ensuring efficient marketing are as follows:</p>\r\n\r\n			<ol>\r\n				<li>Linking farmers to markets.</li>\r\n				<li>Expanding credit-cum-storage scheme named Shoshyo Gudam Rin.</li>\r\n				<li>Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign.</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>1. Linking farmers to markets:</strong></p>\r\n\r\n			<p>For linking farmer to markets concentrated producing areas for different crops, fruits and vegetables will be identified. The farmers marketing groups will be formed. They will be provided training on marketing fields and then linkage will be made by giving different marketing supports like assemble centre, marketing management, information, interaction among the Stakeholders.</p>\r\n\r\n			<p><strong>2. Expanding credit-cum-storage scheme named Shoshyo Gudam Rin:</strong></p>\r\n\r\n			<p>At present there are 12 (Twelve) godowns in operation, 10 (Ten) more LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model. When the project will be implemented, number of godowns will be extended to 22(twenty two) from existing numbers. By performing this activity farmers of that areas will be able to get credit from the assigned banks against their stored crops at those godown. Thus they can avoid distress sale and will be able to get better price.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign:</strong></p>\r\n\r\n			<p>For transferring technological know how regarding entrepreneurship development, post harvest handling, processing and other marketing promotion activities, 01 (One) processing Centre- Cum Offices at Satkhira will be established .In those training centers various types of trainings will be organized. Besides this different seminar, workshop, training, promotional campaign will be conducted for developing interaction among the stakeholders, market promotion and market integration, leading to reduce post harvest loss, marketing cost and ensuring fair price.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Targets and Activities : </strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Small and medium farmers of our country do not have sufficient storage/holding capacity. Huge crops particularly Paddy, Vegetables, Potato, Pineapples, Mango, Jackfruit are abundant in pick harvest season. In this glut situation farmers become very helpless. They do not get good prices because they are not organized and as they have very minimum storage/holding capacity they are bound to sell their product at a very low price. To get relief from this situation, farmers need to be organized. To give better prices to the farmers and to reduce marketing cost some marketing extension service will be needed. For extending marketing services to the farmers some groups with be formed.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>The detailed activities of the project area </strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1. Training:</strong> During the project period training will be provided to 6,000 farmers, 450 traders &amp; entrepreneurs, 50 DAM persons, on different aspects of marketing and post harvest handing. TOT training module will be developed and conducted for project officers and DAM officials on different aspects of marketing, processing and post harvest technologies. For TOT, resource persons will be invited from DAE, BARI, BIRRI, IFST/BCSIR and concerned agencies and institutions.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2. Assemble Centre:</strong> A total of 08 Assemble centers will be constructed in concentrated producing areas of the districts. So that farmers will be able to get market access in a congenial atmosphere of selected 10 Upazila of the districts. Assemble centers will be constructed comprising floor area a total of 7,200 sft for each centre. .&nbsp; For this purpose a total of 136 kathas of land will be procured at suitable places .Construction work will be done by PIW, DAE/LGED / BMTCL / BADC</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Processing Centre Cum Office:</strong>&nbsp; 01 (one) two storied Processing Centre cum Offices comprising floor area&nbsp; of 7,500 sft for each floor will be established in Satkhira district.&nbsp; For this purpose 30 kathas of land will be procured at suitable places .After completion of the construction, DAM&nbsp; District Offices will be set up at the centre.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4. Group Formation:</strong> For extending marketing services, some farmers groups will be formed. A total of 330 marketing groups in selected 33 Upazilas will be formed. 10 groups in each upazila and 10 members for each group of which 01 trader will be included in each group. These groups will be trained up in various fields of marketing, processing, post harvest technology etc.</p>\r\n\r\n			<p><strong>5. Promotional Program:</strong> Massive promotional campaign in Print, Electronic &amp; Other medias will be organized in the selected Upazilas in each district. Besides some promotional programs especially in the electronic and print media might be organized at the national level.</p>\r\n\r\n			<p><strong>6. Motivational Tour:</strong> Some motivational awareness programs will also be organized among common people of the areas regarding production, storage, utilization and processing technology, marketing approaches and international value of various crops. In this regard a total of 330 motivational tours comprising of 20 small farmers in each group and 10 groups of each Upazila of the area to the successful SOGORIP godowns of the region/another region will be organized.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>7. Linkage Development:</strong> Necessary linkage between production levels with consumption/user level will be developed through contract marketing system and by motivating them by organizing Seminar/Workshop/Focus-sessions/ Training and extending Marketing Extension Services.&nbsp;&nbsp;</p>\r\n\r\n			<p>&nbsp;<strong>8. Survey:</strong> &nbsp;Production data of important crops and business data of the areas will be collected by doing survey and maintained in it as database. In this regard 2 nos. of research/surveys on various aspects of production, marketing and consumption will be conducted.</p>\r\n\r\n			<p>&nbsp;<strong>9.</strong>&nbsp; <strong>Motivation</strong> will be given regarding application of standard weights and measures, uniform market charges, easy access to the markets, application of harmful chemical/pesticides in the horticulture products.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>10.</strong> <strong>Renovation/Establishment</strong> <strong>of 10 </strong><strong>LGED </strong><strong>godowns</strong> : 10 (Ten) LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model in the project area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>Project Output:&nbsp; </strong>This is a service oriented project. Therefore, it is not feasible to measure direct &nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; financial benefit. However, the project outputs are:</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<ul>\r\n				<li>Improvement of marketing system.</li>\r\n				<li>Contribution to the national economy.</li>\r\n				<li>Improvement of marketing efficiency.</li>\r\n				<li>Increase of income of the farmers and also people engaged in marketing level at the end of the project period.</li>\r\n				<li>Reduction post harvest losses by awarding farmers and traders about storage, handling, cleaning, and grading etc</li>\r\n				<li>Protection from distress sale in the glut situation by credit linkage and also by processing &amp; storage improvement</li>\r\n				<li>Increase supply of home made processed foods in the area.</li>\r\n				<li>Increase standard of living &amp; socioeconomic condition of the people in the area.</li>\r\n				<li>Extension and improvement of post harvest technology.</li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table border=\\"\\\\&quot;0\\\\&quot;\\" cellpadding=\\"\\\\&quot;0\\\\&quot;\\" cellspacing=\\"\\\\&quot;0\\\\&quot;\\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Rationale of the project :</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1.&nbsp; Agribusiness development:</strong> The project activities will help in agri-business development, credit linkage with banks to the entrepreneur by motivational, promotional and training activities.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2.&nbsp;&nbsp; Increase of income:</strong> The project activities will help farmers in a better marketing facilities &amp; favorable marketing environment; it will reduce various malpractices and undue interference in various stages of marketing. So farmers will able to sale their products at better prices. Thus it will increase income of the farmers.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp; <strong>3.&nbsp;&nbsp; Increase of storage/ holding capacity of crops of the farmers :</strong> The project will provide training regarding storage and preservation. The project will renovate existing LGED godowns and SHOGORIP model will be expanded. Syasha Gudam Rin Prokalpa in brief SOGORIP is a concept which has already been executed successfully in some areas of Bangladesh by a project SOGORIP of DAM. In which small &amp; medium farmers of a particular area had combined in an informal group comprising of average 800 farmers by giving motivation and training. Prior that a area and a LGED unused go down has been selected by doing a survey and that godown had taken in to the program by mutual correspondent among DAM, MOA &amp; LGED, for giving storage &amp; credit facilities in a organized way to group members. In that program a LGED unused godown at a particular area had been selected &amp; renovated by that project of DAM, where farmers of that area had been kept their crops &amp; got credit through banks by showing only a receipt memo &amp; project &ldquo;Pass Book&rdquo; from the godown. By which the farmers of a particular area have able to avoid distress sale of their crops. Each godown has a Godown Committee formed by the farmers of that area and also has an Advisory Committee headed by UNO of that Upazila.</p>\r\n\r\n			<p>This concept has become sustainable and has been running successfully after completion of the project. The existing 126 godowns are running. Now this has become a model of some of the areas of the country. This model can be expanded in the non-covered areas of the project districts. So some related activities have been included in this project.&nbsp; Mass promotional activities will be taken up. Linking up credit to the farmers with banks. Through these activities crop holding and financial capacity of farmers will increase.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4.&nbsp;&nbsp; Development of agro- processing:</strong> The project will provide training regarding various post harvest processing technologies. Linking credit to the processors. Through this activity agro-processing and diversified used of crops will increase. By the development of agro-processing, various types of processed foods will be available in the country. This will strengthen economy of that area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>5.&nbsp;&nbsp; Increase of standard of living. </strong>All the above activities will ensure more quality goods &amp; services available in that area. This will increase consumption of the people of that area which will increase nutritional status and also standard of living.</p>\r\n\r\n			<p>In view of the above background and rationale of the project &ldquo;<strong>Magura-Jesore-Narail-Khulna-Satkhira Integrated Agriculture Development Project&rdquo;</strong> (DAM-Part), has been designed with a view to perform the following activities to attain the objective of the project.</p>\r\n\r\n			<p>&nbsp;<strong>&nbsp;Modalities for ensuring efficient Marketing :</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>The modalities to attain the objectives of the project through ensuring efficient marketing are as follows:</p>\r\n\r\n			<ol>\r\n				<li>Linking farmers to markets.</li>\r\n				<li>Expanding credit-cum-storage scheme named Shoshyo Gudam Rin.</li>\r\n				<li>Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign.</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>1. Linking farmers to markets:</strong></p>\r\n\r\n			<p>For linking farmer to markets concentrated producing areas for different crops, fruits and vegetables will be identified. The farmers marketing groups will be formed. They will be provided training on marketing fields and then linkage will be made by giving different marketing supports like assemble centre, marketing management, information, interaction among the Stakeholders.</p>\r\n\r\n			<p><strong>2. Expanding credit-cum-storage scheme named Shoshyo Gudam Rin:</strong></p>\r\n\r\n			<p>At present there are 12 (Twelve) godowns in operation, 10 (Ten) more LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model. When the project will be implemented, number of godowns will be extended to 22(twenty two) from existing numbers. By performing this activity farmers of that areas will be able to get credit from the assigned banks against their stored crops at those godown. Thus they can avoid distress sale and will be able to get better price.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign:</strong></p>\r\n\r\n			<p>For transferring technological know how regarding entrepreneurship development, post harvest handling, processing and other marketing promotion activities, 01 (One) processing Centre- Cum Offices at Satkhira will be established .In those training centers various types of trainings will be organized. Besides this different seminar, workshop, training, promotional campaign will be conducted for developing interaction among the stakeholders, market promotion and market integration, leading to reduce post harvest loss, marketing cost and ensuring fair price.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Targets and Activities : </strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Small and medium farmers of our country do not have sufficient storage/holding capacity. Huge crops particularly Paddy, Vegetables, Potato, Pineapples, Mango, Jackfruit are abundant in pick harvest season. In this glut situation farmers become very helpless. They do not get good prices because they are not organized and as they have very minimum storage/holding capacity they are bound to sell their product at a very low price. To get relief from this situation, farmers need to be organized. To give better prices to the farmers and to reduce marketing cost some marketing extension service will be needed. For extending marketing services to the farmers some groups with be formed.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>The detailed activities of the project area </strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1. Training:</strong> During the project period training will be provided to 6,000 farmers, 450 traders &amp; entrepreneurs, 50 DAM persons, on different aspects of marketing and post harvest handing. TOT training module will be developed and conducted for project officers and DAM officials on different aspects of marketing, processing and post harvest technologies. For TOT, resource persons will be invited from DAE, BARI, BIRRI, IFST/BCSIR and concerned agencies and institutions.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2. Assemble Centre:</strong> A total of 08 Assemble centers will be constructed in concentrated producing areas of the districts. So that farmers will be able to get market access in a congenial atmosphere of selected 10 Upazila of the districts. Assemble centers will be constructed comprising floor area a total of 7,200 sft for each centre. .&nbsp; For this purpose a total of 136 kathas of land will be procured at suitable places .Construction work will be done by PIW, DAE/LGED / BMTCL / BADC</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Processing Centre Cum Office:</strong>&nbsp; 01 (one) two storied Processing Centre cum Offices comprising floor area&nbsp; of 7,500 sft for each floor will be established in Satkhira district.&nbsp; For this purpose 30 kathas of land will be procured at suitable places .After completion of the construction, DAM&nbsp; District Offices will be set up at the centre.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4. Group Formation:</strong> For extending marketing services, some farmers groups will be formed. A total of 330 marketing groups in selected 33 Upazilas will be formed. 10 groups in each upazila and 10 members for each group of which 01 trader will be included in each group. These groups will be trained up in various fields of marketing, processing, post harvest technology etc.</p>\r\n\r\n			<p><strong>5. Promotional Program:</strong> Massive promotional campaign in Print, Electronic &amp; Other medias will be organized in the selected Upazilas in each district. Besides some promotional programs especially in the electronic and print media might be organized at the national level.</p>\r\n\r\n			<p><strong>6. Motivational Tour:</strong> Some motivational awareness programs will also be organized among common people of the areas regarding production, storage, utilization and processing technology, marketing approaches and international value of various crops. In this regard a total of 330 motivational tours comprising of 20 small farmers in each group and 10 groups of each Upazila of the area to the successful SOGORIP godowns of the region/another region will be organized.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>7. Linkage Development:</strong> Necessary linkage between production levels with consumption/user level will be developed through contract marketing system and by motivating them by organizing Seminar/Workshop/Focus-sessions/ Training and extending Marketing Extension Services.&nbsp;&nbsp;</p>\r\n\r\n			<p>&nbsp;<strong>8. Survey:</strong> &nbsp;Production data of important crops and business data of the areas will be collected by doing survey and maintained in it as database. In this regard 2 nos. of research/surveys on various aspects of production, marketing and consumption will be conducted.</p>\r\n\r\n			<p>&nbsp;<strong>9.</strong>&nbsp; <strong>Motivation</strong> will be given regarding application of standard weights and measures, uniform market charges, easy access to the markets, application of harmful chemical/pesticides in the horticulture products.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>10.</strong> <strong>Renovation/Establishment</strong> <strong>of 10 </strong><strong>LGED </strong><strong>godowns</strong> : 10 (Ten) LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model in the project area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>Project Output:&nbsp; </strong>This is a service oriented project. Therefore, it is not feasible to measure direct &nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; financial benefit. However, the project outputs are:</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<ul>\r\n				<li>Improvement of marketing system.</li>\r\n				<li>Contribution to the national economy.</li>\r\n				<li>Improvement of marketing efficiency.</li>\r\n				<li>Increase of income of the farmers and also people engaged in marketing level at the end of the project period.</li>\r\n				<li>Reduction post harvest losses by awarding farmers and traders about storage, handling, cleaning, and grading etc</li>\r\n				<li>Protection from distress sale in the glut situation by credit linkage and also by processing &amp; storage improvement</li>\r\n				<li>Increase supply of home made processed foods in the area.</li>\r\n				<li>Increase standard of living &amp; socioeconomic condition of the people in the area.</li>\r\n				<li>Extension and improvement of post harvest technology.</li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table border=\\"\\\\&quot;0\\\\&quot;\\" cellpadding=\\"\\\\&quot;0\\\\&quot;\\" cellspacing=\\"\\\\&quot;0\\\\&quot;\\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Rationale of the project :</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1.&nbsp; Agribusiness development:</strong> The project activities will help in agri-business development, credit linkage with banks to the entrepreneur by motivational, promotional and training activities.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2.&nbsp;&nbsp; Increase of income:</strong> The project activities will help farmers in a better marketing facilities &amp; favorable marketing environment; it will reduce various malpractices and undue interference in various stages of marketing. So farmers will able to sale their products at better prices. Thus it will increase income of the farmers.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp; <strong>3.&nbsp;&nbsp; Increase of storage/ holding capacity of crops of the farmers :</strong> The project will provide training regarding storage and preservation. The project will renovate existing LGED godowns and SHOGORIP model will be expanded. Syasha Gudam Rin Prokalpa in brief SOGORIP is a concept which has already been executed successfully in some areas of Bangladesh by a project SOGORIP of DAM. In which small &amp; medium farmers of a particular area had combined in an informal group comprising of average 800 farmers by giving motivation and training. Prior that a area and a LGED unused go down has been selected by doing a survey and that godown had taken in to the program by mutual correspondent among DAM, MOA &amp; LGED, for giving storage &amp; credit facilities in a organized way to group members. In that program a LGED unused godown at a particular area had been selected &amp; renovated by that project of DAM, where farmers of that area had been kept their crops &amp; got credit through banks by showing only a receipt memo &amp; project &ldquo;Pass Book&rdquo; from the godown. By which the farmers of a particular area have able to avoid distress sale of their crops. Each godown has a Godown Committee formed by the farmers of that area and also has an Advisory Committee headed by UNO of that Upazila.</p>\r\n\r\n			<p>This concept has become sustainable and has been running successfully after completion of the project. The existing 126 godowns are running. Now this has become a model of some of the areas of the country. This model can be expanded in the non-covered areas of the project districts. So some related activities have been included in this project.&nbsp; Mass promotional activities will be taken up. Linking up credit to the farmers with banks. Through these activities crop holding and financial capacity of farmers will increase.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4.&nbsp;&nbsp; Development of agro- processing:</strong> The project will provide training regarding various post harvest processing technologies. Linking credit to the processors. Through this activity agro-processing and diversified used of crops will increase. By the development of agro-processing, various types of processed foods will be available in the country. This will strengthen economy of that area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>5.&nbsp;&nbsp; Increase of standard of living. </strong>All the above activities will ensure more quality goods &amp; services available in that area. This will increase consumption of the people of that area which will increase nutritional status and also standard of living.</p>\r\n\r\n			<p>In view of the above background and rationale of the project &ldquo;<strong>Magura-Jesore-Narail-Khulna-Satkhira Integrated Agriculture Development Project&rdquo;</strong> (DAM-Part), has been designed with a view to perform the following activities to attain the objective of the project.</p>\r\n\r\n			<p>&nbsp;<strong>&nbsp;Modalities for ensuring efficient Marketing :</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>The modalities to attain the objectives of the project through ensuring efficient marketing are as follows:</p>\r\n\r\n			<ol>\r\n				<li>Linking farmers to markets.</li>\r\n				<li>Expanding credit-cum-storage scheme named Shoshyo Gudam Rin.</li>\r\n				<li>Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign.</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>1. Linking farmers to markets:</strong></p>\r\n\r\n			<p>For linking farmer to markets concentrated producing areas for different crops, fruits and vegetables will be identified. The farmers marketing groups will be formed. They will be provided training on marketing fields and then linkage will be made by giving different marketing supports like assemble centre, marketing management, information, interaction among the Stakeholders.</p>\r\n\r\n			<p><strong>2. Expanding credit-cum-storage scheme named Shoshyo Gudam Rin:</strong></p>\r\n\r\n			<p>At present there are 12 (Twelve) godowns in operation, 10 (Ten) more LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model. When the project will be implemented, number of godowns will be extended to 22(twenty two) from existing numbers. By performing this activity farmers of that areas will be able to get credit from the assigned banks against their stored crops at those godown. Thus they can avoid distress sale and will be able to get better price.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign:</strong></p>\r\n\r\n			<p>For transferring technological know how regarding entrepreneurship development, post harvest handling, processing and other marketing promotion activities, 01 (One) processing Centre- Cum Offices at Satkhira will be established .In those training centers various types of trainings will be organized. Besides this different seminar, workshop, training, promotional campaign will be conducted for developing interaction among the stakeholders, market promotion and market integration, leading to reduce post harvest loss, marketing cost and ensuring fair price.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Targets and Activities : </strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p>Small and medium farmers of our country do not have sufficient storage/holding capacity. Huge crops particularly Paddy, Vegetables, Potato, Pineapples, Mango, Jackfruit are abundant in pick harvest season. In this glut situation farmers become very helpless. They do not get good prices because they are not organized and as they have very minimum storage/holding capacity they are bound to sell their product at a very low price. To get relief from this situation, farmers need to be organized. To give better prices to the farmers and to reduce marketing cost some marketing extension service will be needed. For extending marketing services to the farmers some groups with be formed.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>The detailed activities of the project area </strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>1. Training:</strong> During the project period training will be provided to 6,000 farmers, 450 traders &amp; entrepreneurs, 50 DAM persons, on different aspects of marketing and post harvest handing. TOT training module will be developed and conducted for project officers and DAM officials on different aspects of marketing, processing and post harvest technologies. For TOT, resource persons will be invited from DAE, BARI, BIRRI, IFST/BCSIR and concerned agencies and institutions.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2. Assemble Centre:</strong> A total of 08 Assemble centers will be constructed in concentrated producing areas of the districts. So that farmers will be able to get market access in a congenial atmosphere of selected 10 Upazila of the districts. Assemble centers will be constructed comprising floor area a total of 7,200 sft for each centre. .&nbsp; For this purpose a total of 136 kathas of land will be procured at suitable places .Construction work will be done by PIW, DAE/LGED / BMTCL / BADC</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Processing Centre Cum Office:</strong>&nbsp; 01 (one) two storied Processing Centre cum Offices comprising floor area&nbsp; of 7,500 sft for each floor will be established in Satkhira district.&nbsp; For this purpose 30 kathas of land will be procured at suitable places .After completion of the construction, DAM&nbsp; District Offices will be set up at the centre.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4. Group Formation:</strong> For extending marketing services, some farmers groups will be formed. A total of 330 marketing groups in selected 33 Upazilas will be formed. 10 groups in each upazila and 10 members for each group of which 01 trader will be included in each group. These groups will be trained up in various fields of marketing, processing, post harvest technology etc.</p>\r\n\r\n			<p><strong>5. Promotional Program:</strong> Massive promotional campaign in Print, Electronic &amp; Other medias will be organized in the selected Upazilas in each district. Besides some promotional programs especially in the electronic and print media might be organized at the national level.</p>\r\n\r\n			<p><strong>6. Motivational Tour:</strong> Some motivational awareness programs will also be organized among common people of the areas regarding production, storage, utilization and processing technology, marketing approaches and international value of various crops. In this regard a total of 330 motivational tours comprising of 20 small farmers in each group and 10 groups of each Upazila of the area to the successful SOGORIP godowns of the region/another region will be organized.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>7. Linkage Development:</strong> Necessary linkage between production levels with consumption/user level will be developed through contract marketing system and by motivating them by organizing Seminar/Workshop/Focus-sessions/ Training and extending Marketing Extension Services.&nbsp;&nbsp;</p>\r\n\r\n			<p>&nbsp;<strong>8. Survey:</strong> &nbsp;Production data of important crops and business data of the areas will be collected by doing survey and maintained in it as database. In this regard 2 nos. of research/surveys on various aspects of production, marketing and consumption will be conducted.</p>\r\n\r\n			<p>&nbsp;<strong>9.</strong>&nbsp; <strong>Motivation</strong> will be given regarding application of standard weights and measures, uniform market charges, easy access to the markets, application of harmful chemical/pesticides in the horticulture products.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>10.</strong> <strong>Renovation/Establishment</strong> <strong>of 10 </strong><strong>LGED </strong><strong>godowns</strong> : 10 (Ten) LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model in the project area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<p><strong>Project Output:&nbsp; </strong>This is a service oriented project. Therefore, it is not feasible to measure direct &nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; financial benefit. However, the project outputs are:</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\"\\\\&quot;3\\\\&quot;\\">\r\n			<ul>\r\n				<li>Improvement of marketing system.</li>\r\n				<li>Contribution to the national economy.</li>\r\n				<li>Improvement of marketing efficiency.</li>\r\n				<li>Increase of income of the farmers and also people engaged in marketing level at the end of the project period.</li>\r\n				<li>Reduction post harvest losses by awarding farmers and traders about storage, handling, cleaning, and grading etc</li>\r\n				<li>Protection from distress sale in the glut situation by credit linkage and also by processing &amp; storage improvement</li>\r\n				<li>Increase supply of home made processed foods in the area.</li>\r\n				<li>Increase standard of living &amp; socioeconomic condition of the people in the area.</li>\r\n				<li>Extension and improvement of post harvest technology.</li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>N/A</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `projects_part_b` (`id`, `pid`, `background_with_problem`, `background_linkages`, `background_objectaives`, `background_outcomes`, `background_outputs`, `background_activities`, `background_sex`, `background_proverty`, `study`, `lessons_learnt_successful_project`, `lessons_learnt_not_work_well`, `effect_other_project`, `effect_environmental`, `effect_climate_change`, `effect_gender`, `effect_employment`, `effect_poverty`, `effect_organizational_setup`, `effect_institutional_productivity`, `effect_regional_disparity`, `effect_environment_clearance_causes`, `clearance_eca`, `linkage_perspective_plan`, `mission_vision`, `achievement_of_mission`, `private_sector_participation`, `foreign_aided_project_conditionality`, `project_compensation`, `risk_analysis`, `sustainability`, `governance`, `psc_tor`, `pic_tor`, `others_any`) VALUES
(17, 43, '<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" style=\\"width:684px\\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\\"height:47px; width:39px\\">\r\n			<p><strong>14.</strong></p>\r\n			</td>\r\n			<td colspan=\\"4\\" style=\\"height:47px; width:645px\\">\r\n			<p>&nbsp;Background, Objectives, priority, rationale, linkages, targets and outputs/outcomes of the project including findings of feasibility studied survey, if any</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p><strong>Background of the project:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:159px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:179px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\\"4\\" style=\\"width:645px\\">\r\n			<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p><strong>Rationale of the project :</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:159px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:179px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\\"4\\" style=\\"width:645px\\">\r\n			<p><strong>1.&nbsp; Agribusiness development:</strong> The project activities will help in agri-business development, credit linkage with banks to the entrepreneur by motivational, promotional and training activities.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2.&nbsp;&nbsp; Increase of income:</strong> The project activities will help farmers in a better marketing facilities &amp; favorable marketing environment; it will reduce various malpractices and undue interference in various stages of marketing. So farmers will able to sale their products at better prices. Thus it will increase income of the farmers.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp; <strong>3.&nbsp;&nbsp; Increase of storage/ holding capacity of crops of the farmers :</strong> The project will provide training regarding storage and preservation. The project will renovate existing LGED godowns and SHOGORIP model will be expanded. Syasha Gudam Rin Prokalpa in brief SOGORIP is a concept which has already been executed successfully in some areas of Bangladesh by a project SOGORIP of DAM. In which small &amp; medium farmers of a particular area had combined in an informal group comprising of average 800 farmers by giving motivation and training. Prior that a area and a LGED unused go down has been selected by doing a survey and that godown had taken in to the program by mutual correspondent among DAM, MOA &amp; LGED, for giving storage &amp; credit facilities in a organized way to group members. In that program a LGED unused godown at a particular area had been selected &amp; renovated by that project of DAM, where farmers of that area had been kept their crops &amp; got credit through banks by showing only a receipt memo &amp; project &ldquo;Pass Book&rdquo; from the godown. By which the farmers of a particular area have able to avoid distress sale of their crops. Each godown has a Godown Committee formed by the farmers of that area and also has an Advisory Committee headed by UNO of that Upazila.</p>\r\n\r\n			<p>This concept has become sustainable and has been running successfully after completion of the project. The existing 126 godowns are running. Now this has become a model of some of the areas of the country. This model can be expanded in the non-covered areas of the project districts. So some related activities have been included in this project.&nbsp; Mass promotional activities will be taken up. Linking up credit to the farmers with banks. Through these activities crop holding and financial capacity of farmers will increase.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4.&nbsp;&nbsp; Development of agro- processing:</strong> The project will provide training regarding various post harvest processing technologies. Linking credit to the processors. Through this activity agro-processing and diversified used of crops will increase. By the development of agro-processing, various types of processed foods will be available in the country. This will strengthen economy of that area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>5.&nbsp;&nbsp; Increase of standard of living. </strong>All the above activities will ensure more quality goods &amp; services available in that area. This will increase consumption of the people of that area which will increase nutritional status and also standard of living.</p>\r\n\r\n			<p>In view of the above background and rationale of the project &ldquo;<strong>Magura-Jesore-Narail-Khulna-Satkhira Integrated Agriculture Development Project&rdquo;</strong> (DAM-Part), has been designed with a view to perform the following activities to attain the objective of the project.</p>\r\n\r\n			<p>&nbsp;<strong>&nbsp;Modalities for ensuring efficient Marketing :</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>The modalities to attain the objectives of the project through ensuring efficient marketing are as follows:</p>\r\n\r\n			<ol>\r\n				<li>Linking farmers to markets.</li>\r\n				<li>Expanding credit-cum-storage scheme named Shoshyo Gudam Rin.</li>\r\n				<li>Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign.</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>1. Linking farmers to markets:</strong></p>\r\n\r\n			<p>For linking farmer to markets concentrated producing areas for different crops, fruits and vegetables will be identified. The farmers marketing groups will be formed. They will be provided training on marketing fields and then linkage will be made by giving different marketing supports like assemble centre, marketing management, information, interaction among the Stakeholders.</p>\r\n\r\n			<p><strong>2. Expanding credit-cum-storage scheme named Shoshyo Gudam Rin:</strong></p>\r\n\r\n			<p>At present there are 12 (Twelve) godowns in operation, 10 (Ten) more LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model. When the project will be implemented, number of godowns will be extended to 22(twenty two) from existing numbers. By performing this activity farmers of that areas will be able to get credit from the assigned banks against their stored crops at those godown. Thus they can avoid distress sale and will be able to get better price.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Transfer of technological know how through training, study tour of the stakeholders, awareness creation and conducting promotional campaign:</strong></p>\r\n\r\n			<p>For transferring technological know how regarding entrepreneurship development, post harvest handling, processing and other marketing promotion activities, 01 (One) processing Centre- Cum Offices at Satkhira will be established .In those training centers various types of trainings will be organized. Besides this different seminar, workshop, training, promotional campaign will be conducted for developing interaction among the stakeholders, market promotion and market integration, leading to reduce post harvest loss, marketing cost and ensuring fair price.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p><strong>Targets and Activities : </strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:159px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:179px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\\"4\\" style=\\"width:645px\\">\r\n			<p>Small and medium farmers of our country do not have sufficient storage/holding capacity. Huge crops particularly Paddy, Vegetables, Potato, Pineapples, Mango, Jackfruit are abundant in pick harvest season. In this glut situation farmers become very helpless. They do not get good prices because they are not organized and as they have very minimum storage/holding capacity they are bound to sell their product at a very low price. To get relief from this situation, farmers need to be organized. To give better prices to the farmers and to reduce marketing cost some marketing extension service will be needed. For extending marketing services to the farmers some groups with be formed.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p><strong>The detailed activities of the project area </strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:159px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:179px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\\"4\\" style=\\"width:645px\\">\r\n			<p><strong>1. Training:</strong> During the project period training will be provided to 6,000 farmers, 450 traders &amp; entrepreneurs, 50 DAM persons, on different aspects of marketing and post harvest handing. TOT training module will be developed and conducted for project officers and DAM officials on different aspects of marketing, processing and post harvest technologies. For TOT, resource persons will be invited from DAE, BARI, BIRRI, IFST/BCSIR and concerned agencies and institutions.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>2. Assemble Centre:</strong> A total of 08 Assemble centers will be constructed in concentrated producing areas of the districts. So that farmers will be able to get market access in a congenial atmosphere of selected 10 Upazila of the districts. Assemble centers will be constructed comprising floor area a total of 7,200 sft for each centre. .&nbsp; For this purpose a total of 136 kathas of land will be procured at suitable places .Construction work will be done by PIW, DAE/LGED / BMTCL / BADC</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>3. Processing Centre Cum Office:</strong>&nbsp; 01 (one) two storied Processing Centre cum Offices comprising floor area&nbsp; of 7,500 sft for each floor will be established in Satkhira district.&nbsp; For this purpose 30 kathas of land will be procured at suitable places .After completion of the construction, DAM&nbsp; District Offices will be set up at the centre.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>4. Group Formation:</strong> For extending marketing services, some farmers groups will be formed. A total of 330 marketing groups in selected 33 Upazilas will be formed. 10 groups in each upazila and 10 members for each group of which 01 trader will be included in each group. These groups will be trained up in various fields of marketing, processing, post harvest technology etc.</p>\r\n\r\n			<p><strong>5. Promotional Program:</strong> Massive promotional campaign in Print, Electronic &amp; Other medias will be organized in the selected Upazilas in each district. Besides some promotional programs especially in the electronic and print media might be organized at the national level.</p>\r\n\r\n			<p><strong>6. Motivational Tour:</strong> Some motivational awareness programs will also be organized among common people of the areas regarding production, storage, utilization and processing technology, marketing approaches and international value of various crops. In this regard a total of 330 motivational tours comprising of 20 small farmers in each group and 10 groups of each Upazila of the area to the successful SOGORIP godowns of the region/another region will be organized.&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>7. Linkage Development:</strong> Necessary linkage between production levels with consumption/user level will be developed through contract marketing system and by motivating them by organizing Seminar/Workshop/Focus-sessions/ Training and extending Marketing Extension Services.&nbsp;&nbsp;</p>\r\n\r\n			<p>&nbsp;<strong>8. Survey:</strong> &nbsp;Production data of important crops and business data of the areas will be collected by doing survey and maintained in it as database. In this regard 2 nos. of research/surveys on various aspects of production, marketing and consumption will be conducted.</p>\r\n\r\n			<p>&nbsp;<strong>9.</strong>&nbsp; <strong>Motivation</strong> will be given regarding application of standard weights and measures, uniform market charges, easy access to the markets, application of harmful chemical/pesticides in the horticulture products.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>10.</strong> <strong>Renovation/Establishment</strong> <strong>of 10 </strong><strong>LGED </strong><strong>godowns</strong> : 10 (Ten) LGED godowns will be renovated for inclusion in the program for expansion of SHOGORIP model in the project area.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\\"4\\" style=\\"width:645px\\">\r\n			<p><strong>Project Output:&nbsp; </strong>This is a service oriented project. Therefore, it is not feasible to measure direct &nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; financial benefit. However, the project outputs are:</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\\"4\\" style=\\"width:645px\\">\r\n			<ul style=\\"list-style-type:circle\\">\r\n				<li>Improvement of marketing system.</li>\r\n				<li>Contribution to the national economy.</li>\r\n				<li>Improvement of marketing efficiency.</li>\r\n				<li>Increase of income of the farmers and also people engaged in marketing level at the end of the project period.</li>\r\n				<li>Reduction post harvest losses by awarding farmers and traders about storage, handling, cleaning, and grading etc</li>\r\n				<li>Protection from distress sale in the glut situation by credit linkage and also by processing &amp; storage improvement</li>\r\n				<li>Increase supply of home made processed foods in the area.</li>\r\n				<li>Increase standard of living &amp; socioeconomic condition of the people in the area.</li>\r\n				<li>Extension and improvement of post harvest technology.</li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>15.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>Whether any pre-appraisal/ pre- investment study was done before formulation of this project? If so, attach summary of findings &amp; recommendations</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>16.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>&nbsp;<strong>Mention the following</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>a) Net present Value&nbsp; (NPV)</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (i) Financial</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>Not applicable.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (ii) Economic</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>Not applicable.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>b) Internal Rate of return</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(i) Financial</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>Not applicable.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (iii) Economic</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>Not applicable.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>17.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>Lessons learnt from similar nature of</p>\r\n\r\n			<p>projects</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>Not applicable.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>18.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>Indicate the basis of total and item-</p>\r\n\r\n			<p>wise cost estimate and the date of</p>\r\n\r\n			<p>preparation of rate of schedule</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>Present Market price at November, 2012.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>19.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>Give comparative cost of major of</p>\r\n\r\n			<p>similar other projects</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>There is no other similar Project.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>20.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>Attach detailed annual phasing of cost&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (As per Annex-v)</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>Attached annexure-V.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>21.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>Specification/ design of major components (attach)</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>Not applicable.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>22.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>Attach Amortization schedule for projects having involvement of loan from Government (As per Annex-VI)</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>Not applicable.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>23.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>&nbsp;Briefly describe the effect/ impact and specific mitigation measures there of if any &nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>This is an agricultural development project. The activities scheduled in the DPP are targeted to socio-economic improvement of the people of the area.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>(i) Other project/existing installations</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>(ii) Environment like land, water, air, bio-&nbsp;</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp; diversity etc</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>iii) Women and children</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>(iv) Employment, poverty alleviation etc.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>(v) Institutional productivity</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>(vi) Regional disparity</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>24.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>&nbsp;Specific Linkage with PRSP and MDGs (In terms of number &amp; percentage of policy matrix of PRSP)</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>25.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>Whether private sector/ local govt. or NGO&rsquo;s participation was considered? Describe how will they be involved?</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>Private sector, Local Government and other concerned Public Department participation will be needed.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>26.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>Incase of foreign aided project mention the major conditionally</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>27.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>&nbsp;Does the project involve rehabilitation/ resettlement? If so, indicate the magnitude and cost&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>28.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>Identify risks during implementation &amp; operation and mitigation measures there of&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p><strong>:</strong></p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p><strong>29.</strong></p>\r\n			</td>\r\n			<td style=\\"width:307px\\">\r\n			<p>&nbsp;Any other important details, technical or otherwise (e.g., sustainability, governance, Steering Committee, Project Implementation Committee etc</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:20px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td colspan=\\"2\\" style=\\"width:318px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 41, '<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>', '<p><strong>1.&nbsp; Agribusiness development:</strong> The project activities will help in agri-business development, credit linkage with banks to the entrepreneur by motivational, promotional and training activities.</p>\r\n\r\n<p><strong>2.&nbsp;&nbsp; Increase of income:</strong> The project activities will help farmers in a better marketing facilities &amp; favorable marketing environment; it will reduce various malpractices and undue interference in various stages of marketing. So farmers will able to sale their products at better prices. Thus it will increase income of the farmers.</p>\r\n\r\n<p>&nbsp;&nbsp; <strong>3.&nbsp;&nbsp; Increase of storage/ holding capacity of crops of the farmers :</strong> The project will provide training regarding storage and preservation. The project will renovate existing LGED godowns and SHOGORIP model will be expanded. Syasha Gudam Rin Prokalpa in brief SOGORIP is a concept which has already been executed successfully in some areas of Bangladesh by a project SOGORIP of DAM. In which small &amp; medium farmers of a particular area had combined in an informal group comprising of average 800 farmers by giving motivation and training. Prior that a area and a LGED unused go down has been selected by doing a survey and that godown had taken in to the program by mutual correspondent among DAM, MOA &amp; LGED, for giving storage &amp; credit facilities in a organized way to group members. In that program a LGED unused godown at a particular area had been selected &amp; renovated by that project of DAM, where farmers of that area had been kept their crops &amp; got credit through banks by showing only a receipt memo &amp; project &ldquo;Pass Book&rdquo; from the godown. By which the farmers of a particular area have able to avoid distress sale of their crops. Each godown has a Godown Committee formed by the farmers of that area and also has an Advisory Committee headed by UNO of that Upazila.</p>\r\n\r\n<p>This concept has become sustainable and has been running successfully after completion of the project. The existing 126 godowns are running. Now this has become a model of some of the areas of the country. This model can be expanded in the non-covered areas of the project districts. So some related activities have been included in this project.&nbsp; Mass promotional activities will be taken up. Linking up credit to the farmers with banks. Through these activities crop holding and financial capacity of farmers will increase.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4.&nbsp;&nbsp; Development of agro- processing:</strong> The project will provide training regarding various post harvest processing technologies. Linking credit to the processors. Through this activity agro-processing and diversified used of crops will increase. By the development of agro-processing, various types of processed foods will be available in the country. This will strengthen economy of that area.</p>\r\n\r\n<p><strong>5.&nbsp;&nbsp; Increase of standard of living. </strong>All the above activities will ensure more quality goods &amp; services available in that area. This will increase consumption of the people of that area which will increase nutritional status and also standard of living.</p>\r\n\r\n<p>In view of the above background and rationale of the project &ldquo;<strong>Magura-Jesore-Narail-Khulna-Satkhira Integrated Agriculture Development Project&rdquo;</strong> (DAM-Part), has been designed with a view to perform the following activities to attain the objective of the project.</p>', '', '', '', '<p>Small and medium farmers of our country do not have sufficient storage/holding capacity. Huge crops particularly Paddy, Vegetables, Potato, Pineapples, Mango, Jackfruit are abundant in pick harvest season. In this glut situation farmers become very helpless. They do not get good prices because they are not organized and as they have very minimum storage/holding capacity they are bound to sell their product at a very low price. To get relief from this situation, farmers need to be organized. To give better prices to the farmers and to reduce marketing cost some marketing extension service will be needed. For extending marketing services to the farmers some groups with be formed.&nbsp;</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 50, '<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" style=\\"width:684px\\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\\"width:39px\\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\\"width:645px\\">\r\n			<p>Bangladesh is a land of agriculture. The land of this country is very suitable for production of various kinds of crops as because the land of this country is formed with river borne silt. Agriculture plays a vital role in the economy of Bangladesh. About 62% of populations are engaged in agriculture. Its contribution in the GDP is 22%. Nearly 3,000 Million metric tons of cereal crops are produced in Bangladesh, besides about 6 million tons of potato, 2.5 million tons of Vegetables and other crops are produced. Production has boost up tremendously. Crop production has been diversified remarkably. BARI, BIRI &amp; other research organizations have invented an inspiring number of crop varieties and these are being extending throughout the country. These research organizations have also invented a considerable number of post harvest technologies of which a little number has extended in the field. In the past few decades the agriculture of Bangladesh has improved remarkably. But little structural change has occurred in Bangladesh. After a long struggle, productivity of crops began to increase in the 1960&rsquo;s and to some extent, rapidly during the 1970&rsquo;s. But recent analyses clearly indicate that productivity of most of the primary commodities of Bangladesh is still among the lowest in the world. So it is clearly understood that though agriculture has boost up, even then further scope of boosting is prevail. Some areas regarding production are yet to be addressed properly.</p>\r\n\r\n			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Department of agricultural marketing (DAM) is mandated to oversee and develop the marketing system which is dominated by some intermediary private traders. There are about 14,000 markets of different categories for agricultural commodities and the categories are primary rural markets, rural assembly markets, secondary markets, urban wholesale markets and urban retail markets. The agents of marketing operation are &lsquo;farias&rsquo;or collectors, &lsquo;beparis&rsquo; or assemblers, aratdars or wholesalers and retailers. The quality of perishable commodities, especially vegetables and fruits marketed in Bangladesh, is not highly satisfactory. This is the result of unscientific post harvest handing, such as; grading, washing, trimming, cooling, packaging and transport. Post harvest loss is also very high due to same reasons. Value of produces can be enhanced and spoilage can be reduced by introducing proper handling both for local and export markets. The department of agricultural marketing should be strengthened and empowered to bring improvement in marketing system of agricultural produces. Traditional marketing functions including market intelligence and proper enforcement of relevant rules and regulations should be widely and better implemented. Some newer concepts like Contract Marketing, Group Marketing, and Agribusiness should be widely practiced. Marketing information should be strengthened, especially in matters related to costs and profitability. Horticulture export from Bangladesh is still very insignificant. Practical feasibility studies should be undertaken to ascertain if Bangladesh can compete favorably with other exporting countries for fresh vegetables and fruits in the super markets (non-ethnic market) of the developed countries in respect of quality price and regularity in supply. High freight and shortage of available air- cargo space lack of refer container are also impeding export. The high end market for perishables has not yet fully developed. It is still in a growing stage in Bangladesh, mainly because the demand is still very small. If the overall marketing is improved, it will serve the interests of the super markets and the customers. A study is needed for collecting relevant information in this emerging field of high end marketing.&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 32, '<p>asdfsd</p>', '<p>asdas</p>', '<p>dasdsad</p>', '<p>asdfsda</p>', '<p>fdsfd</p>', '<p>sdfsdf</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project_agencies`
--

CREATE TABLE IF NOT EXISTS `project_agencies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `agency_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

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
(86, 32, 26),
(87, 22, 26),
(93, 35, 26),
(124, 23, 20),
(125, 23, 26),
(126, 23, 93),
(141, 38, 20),
(146, 46, 257),
(149, 41, 360),
(151, 42, 326),
(159, 44, 135),
(160, 43, 63),
(161, 45, 212),
(162, 53, 256),
(163, 47, 101),
(164, 33, 26),
(165, 37, 26);

-- --------------------------------------------------------

--
-- Table structure for table `project_analysis`
--

CREATE TABLE IF NOT EXISTS `project_analysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `financial_npv` double NOT NULL,
  `financial_bcr` double NOT NULL,
  `financial_irr` double NOT NULL,
  `financial_attachment` int(11) NOT NULL,
  `economic_npv` double NOT NULL,
  `economic_bcr` double NOT NULL,
  `economic_irr` double NOT NULL,
  `economic_attachment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `project_attachments`
--

CREATE TABLE IF NOT EXISTS `project_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `project_attachments`
--

INSERT INTO `project_attachments` (`id`, `pid`, `title`, `doc_id`, `create_date`) VALUES
(1, 24, 'Harun', 28, '2014-08-17 05:45:54'),
(2, 23, 'Image2', 29, '2014-08-23 08:23:45'),
(3, 22, 'tt', 0, '2014-10-01 12:00:01'),
(4, 22, 'dddd', 0, '2014-10-01 12:27:52'),
(5, 22, 'dddddd', 0, '2014-10-01 12:28:28'),
(6, 32, 'Image2', 31, '2014-10-12 04:27:58'),
(7, 35, '4444', 32, '2014-10-20 05:18:59'),
(8, 37, 'O&M cost after completion of the project', 32, '2014-09-17 11:08:24'),
(9, 37, 'Break up of Training & Seminar', 33, '2014-09-17 11:09:35'),
(10, 37, 'Economic Analysis (BCR and IRR)_1', 34, '2014-09-17 11:10:37'),
(11, 37, 'Economic Analysis (BCR and IRR)_2', 35, '2014-09-17 11:10:55'),
(12, 37, 'Upazila wise target of FMTW installation', 36, '2014-09-17 11:11:20'),
(13, 37, 'List of 1-cusec and 2-cusec FMTW scheme', 37, '2014-09-17 11:11:51'),
(14, 37, 'Project Map', 37, '2014-09-17 11:12:14'),
(15, 37, 'Minutes of Jachai Committee of MoA on 13-07-2008', 39, '2014-09-17 11:12:37'),
(16, 37, 'Minutes of Jachai Committee of MoA on 05-02-2009', 40, '2014-09-17 11:13:55'),
(17, 37, 'BADC opinion against Jachai committee Minutes', 41, '2014-09-17 11:14:50'),
(18, 37, 'Year wise target of irrigation charge', 42, '2014-09-17 11:15:10'),
(19, 37, 'Detailed Cost Estimation of FMTW', 43, '2014-09-17 11:15:33'),
(20, 37, 'Certificate on the safe yield of water by Force Mode Tube WelIs', 44, '2014-09-17 11:16:07'),
(21, 37, 'Minutes of the Manpower committee on 01-10-2009', 45, '2014-09-17 11:16:25'),
(22, 37, 'BADC.s opinion as per planning commission letter no-195 dated: 07-12-2009', 46, '2014-09-17 11:16:47'),
(23, 37, 'Minutes of the PEC meeting on 11-03-2010', 47, '2014-09-17 11:17:07'),
(24, 37, 'BADC opinion against the decisions of PEC meeting', 48, '2014-09-17 11:17:26'),
(25, 37, 'Letter for NOC to the Department of Environment', 49, '2014-09-17 11:17:44'),
(26, 0, 'Certificate of the Chairman, BADC', 50, '2014-09-17 11:18:02'),
(27, 37, 'NOC from Department of Environment', 51, '2014-09-17 11:18:19'),
(28, 37, 'BADC opinion against Jachai committee Minutes', 52, '2014-09-17 11:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `project_commission_status`
--

CREATE TABLE IF NOT EXISTS `project_commission_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `status` varchar(512) NOT NULL,
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `project_commission_status`
--

INSERT INTO `project_commission_status` (`id`, `pid`, `status`, `create_date`) VALUES
(1, 33, 'Bangal', '2014-11-01 18:21:31'),
(2, 27, 'Awaiting for PEC Recommendation', '2014-11-01 21:08:54'),
(3, 27, 'Desk Officer Assigned', '2014-11-01 22:31:18'),
(4, 27, 'Awaiting for PEC Recommendation', '2014-11-01 23:10:53'),
(5, 27, 'PEC Recommended', '2014-11-01 23:35:46'),
(6, 27, 'Forwarded to ECNEC', '2014-11-01 23:35:50'),
(7, 27, 'Awaiting for ECNEC Approval', '2014-11-01 23:35:56'),
(8, 27, 'ECNEC Approved', '2014-11-02 01:37:05'),
(9, 27, '', '2014-11-02 01:38:16'),
(10, 27, 'ECNEC Approved', '2014-11-02 01:38:41'),
(11, 27, 'Awaiting for PEC Recommendation', '2014-11-02 01:39:26'),
(12, 27, 'Awaiting for PEC Recommendation', '2014-11-02 01:41:06'),
(13, 27, 'PEC Recommended', '2014-11-02 10:39:24'),
(14, 37, 'Desk Officer Assigned', '2014-11-09 10:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `project_dev_partners`
--

CREATE TABLE IF NOT EXISTS `project_dev_partners` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `dev_partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

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
(48, 25, 3),
(59, 35, 2),
(60, 35, 4),
(67, 42, 34),
(75, 44, 34),
(76, 43, 3),
(77, 45, 29),
(78, 53, 11),
(79, 47, 84);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=204 ;

--
-- Dumping data for table `project_locations`
--

INSERT INTO `project_locations` (`id`, `pid`, `location_id`, `location_type`, `location_cost`, `location_comments`) VALUES
(66, 20, 20, 'Division', 0, ''),
(67, 20, 2, 'District', 0, ''),
(68, 20, 527, 'Upzila', 0, ''),
(83, 23, 10, 'Division', 11, 'asdffdassdf sdf sf sdf dsdfd'),
(84, 23, 20, 'Division', 13, 'harun adad'),
(85, 23, 50, 'Division', 0, ''),
(86, 23, 60, 'Division', 0, ''),
(87, 23, 7, 'District', 12, 'sdfasdfas asd f adasd'),
(88, 23, 12, 'District', 14, 'sd'),
(89, 23, 16, 'District', 16, 'dsf'),
(90, 23, 6, 'District', 0, ''),
(91, 23, 50, 'District', 0, ''),
(92, 23, 78, 'Upzila', 15, 'sdf'),
(93, 23, 127, 'Upzila', 54, 'scsfd'),
(94, 23, 128, 'Upzila', 643, 'sdfa'),
(95, 26, 30, 'Division', 120, ''),
(96, 26, 5, 'District', 10, ''),
(97, 26, 2, 'Upzila', 120, ''),
(98, 24, 20, 'Division', 2, ''),
(99, 24, 30, 'Division', 4, ''),
(100, 24, 2, 'District', 2, ''),
(101, 24, 36, 'District', 4, ''),
(102, 24, 65, 'Upzila', 2, ''),
(103, 24, 291, 'Upzila', 3, ''),
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
(118, 27, 2, 'District', 1, ''),
(119, 22, 20, 'Division', 33, ''),
(120, 22, 13, 'District', 33, ''),
(121, 22, 15, 'District', 33, ''),
(122, 37, 30, 'Division', 2, ''),
(123, 37, 23, 'District', 0, ''),
(124, 37, 25, 'District', 0, ''),
(125, 37, 26, 'District', 0, ''),
(126, 37, 30, 'District', 0, ''),
(127, 37, 35, 'District', 0, ''),
(128, 37, 36, 'District', 0, ''),
(129, 37, 289, 'Upzila', 19.8, ''),
(130, 37, 234, 'Upzila', 176.49, ''),
(131, 37, 291, 'Upzila', 19.8, ''),
(132, 37, 236, 'Upzila', 84.66, ''),
(133, 37, 237, 'Upzila', 59.4, ''),
(134, 37, 186, 'Upzila', 79.2, ''),
(135, 37, 292, 'Upzila', 158.4, ''),
(136, 37, 239, 'Upzila', 99, ''),
(137, 37, 207, 'Upzila', 59.4, ''),
(138, 37, 240, 'Upzila', 25.26, ''),
(139, 37, 200, 'Upzila', 160.44, ''),
(140, 37, 188, 'Upzila', 59.4, ''),
(141, 37, 190, 'Upzila', 59.4, ''),
(142, 37, 294, 'Upzila', 59.4, ''),
(143, 37, 295, 'Upzila', 178.78, ''),
(144, 37, 242, 'Upzila', 149.52, ''),
(145, 37, 285, 'Upzila', 178.2, ''),
(146, 37, 243, 'Upzila', 37.89, ''),
(147, 37, 215, 'Upzila', 59.4, ''),
(148, 37, 297, 'Upzila', 322.26, ''),
(149, 37, 191, 'Upzila', 63.15, ''),
(150, 37, 245, 'Upzila', 82.95, ''),
(151, 41, 50, 'Division', 0, ''),
(152, 41, 49, 'District', 0, ''),
(153, 41, 417, 'Upzila', 0, ''),
(157, 54, 40, 'Division', 0, ''),
(158, 54, 41, 'District', 0, ''),
(159, 54, 344, 'Upzila', 0, ''),
(173, 43, 60, 'Division', 0, ''),
(174, 43, 54, 'District', 0, ''),
(175, 43, 472, 'Upzila', 0, ''),
(176, 45, 20, 'Division', 0, ''),
(177, 45, 30, 'Division', 0, ''),
(178, 45, 60, 'Division', 0, ''),
(179, 45, 2, 'District', 0, ''),
(180, 45, 23, 'District', 0, ''),
(181, 45, 54, 'District', 0, ''),
(182, 45, 63, 'Upzila', 0, ''),
(183, 45, 187, 'Upzila', 0, ''),
(184, 45, 469, 'Upzila', 0, ''),
(185, 44, 30, 'Division', 12, ''),
(186, 44, 24, 'District', 33, ''),
(187, 44, 27, 'District', 0, ''),
(188, 44, 193, 'Upzila', 44, ''),
(189, 44, 217, 'Upzila', 0, ''),
(190, 47, 30, 'Division', 0, ''),
(191, 47, 5, 'District', 0, ''),
(192, 47, 2, 'Upzila', 0, ''),
(193, 50, 30, 'Division', 0, ''),
(194, 50, 5, 'District', 0, ''),
(195, 50, 1, 'Upzila', 0, ''),
(196, 55, 30, 'Division', 0, ''),
(197, 55, 5, 'District', 0, ''),
(198, 55, 174, 'Upzila', 0, ''),
(199, 33, 10, 'Division', 3, ''),
(200, 33, 3, 'District', 4, ''),
(201, 33, 8, 'District', 0, ''),
(202, 33, 5, 'Upzila', 0, ''),
(203, 33, 9, 'Upzila', 0, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `project_log_frame`
--

INSERT INTO `project_log_frame` (`id`, `pid`, `goal_summary`, `goal_ovi`, `goal_mov`, `goal_ai`, `objective_summary`, `objective_ovi`, `objective_mov`, `objective_ai`, `output_summary`, `output_ovi`, `output_mov`, `output_ai`, `input_summary`, `input_ovi`, `input_mov`, `input_ai`) VALUES
(1, 21, 'dsf', 'df', 'sdfgdgfdg', 'dfgsdfg', 'sdf', 'dfg', 'xcv', 'gsdfg', 'd', 'sfdg', 'fgb', 'sdfgsdfg', 'dsfg', 'Harun', 'dsfgsdfg', 'sdfgsdfg'),
(2, 28, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 35, 'ss', '', '', '', 'asdfsdf', '', '', '', '', '', '', '', '', '', '', ''),
(5, 23, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
(6, 37, '1. Ensuring food security through increasing production of food grain by expansion of irrigation with efficient management of water resource.', '1. The additional 8340 metric tons food grain pricing TK. 1668.00 lakh Produced every year after completion of the project.', '1.	Project office\r\n2.	MIISU', '', '1.3336 hectares of land directly and indirectly brought under irrigation\r\n2. 8340 metric tons additional food grain produced;\r\n3. Job opportunity created for the rural people;\r\n4. Ecologically and environmentally a balanced situation created;', '1.3336 hectares of land brought under irrigation within june/2013.\r\n2. 8340 metric tons of additional food grain produced every year after completion of the project.\r\n3. Job opportunity created within the project period (2010-2013).\r\n4. Ecologically and environmentally a balanced situation created within May/2013.', '1.	BBS\r\n2.	MIISU\r\n3.	Project office', '1.	Smooth release of Fund\r\n2.	Timely completion of civil works', '1 .All Procurement of the project completed\r\n/2flEquip/rtients, vehicles and other infrastructures Repaired\r\n3. Installation of 2-cusec force mode tube wells with pump house and discharge box completed\r\n4.Installation of 2-cusec force mode tube wells with pump house and discharge box completed\r\n5. PVC buried pipe and irrigation structures Constructed\r\n6. Farmers/ managers/ operators/ officers Trained, successfully completed workshop and seminars', '1. Procurement completed within June/2011.\r\n2. Equipments, vehicles and infrastructures repaired within March/2013.\r\n3. Installation of 85 nos. of 2-cusec force mode tube wells with pump house and discharge box completed within May/ 2013\r\n4. Installation of 40 nos. of 1-cusec force mode tube wells with pump house and discharge box completed within May/ 2013\r\n5. (85+40) nos. PVC buried pipe (500+300) m/no. Constructed within May/2013\r\n6. 3000 Farmers, 1500 managers/ operators and 10 officers Training and workshop/ seminars will be successfully completed within March/ 2013', '1.	BBS\r\n2.	Project office\r\n3.	Irrigation wing, BADC', '1. Smooth release of Fund', '1 .Procurement of irrigation equipments, pump sets, accessories, office equipment, furniture and vehicles\r\n2. Repair of irrigation equipments, vehicles and other infrastructures and completion of other revenue component\r\n3. Installation and electrification of 2-cusec force mode tube wells 4. Installation and electrification of 1-cusec force mode tube wells\r\n5. Construction of PVC buried pipe\r\n6. Training of farmers/ managers/ operators/ officers with workshop and seminars with demonstration plot', '1. Procurement will be completed during the project period. (Tk.905.00 Lakh)\r\n2. Irrigation equipments, vehicles and other infrastructures will be repaired and fulfilled other revenue components during project period. (Tk.89.05 Lakh)\r\n3. Installation of 2-cusec FMTW will be completed during the project period. 4. Installation of 1-cusec FMTW will be completed during the project period. (Tk.230.00 Lakh)\r\n5. Construction work will be completed during the project period. (Tk.577.70 Lakh)\\"\r\n6. Training will be completed and demonstration plot completed during the project period (Tk. 22.85 Lakh)', '1.	Project Office\r\n2.	Irrigation wing, BADC\r\n3.	MIISU, BADC', '1.	Timely approval of the project\r\n2.	Smooth release of fund'),
(7, 43, 'To improve socioeconomic status of the farmers in the project area.', '-20% reduced marketing cost\r\n-100% of linkage establishment between production system & marketing system', '-Project evaluation\r\n-Compare other benchmark survey', '', 'To increase income of the people by developing efficient agricultural marketing system', '* 100% reduced intermediary stages in the marketing channel.\r\n* 100% ensured better prices of the farmers products.\r\n1.	*100% Linkage developed between financial institutions and business people', '*PCR\r\n*Project evaluation report.\r\n*Impact study.\r\n*Implementation report.\r\n*Field survey\r\n*IMED report', '*Most suitable resource personal will be selected.\r\n*Suitable farmers will be selected and trained.\r\n*More avenue (Market) will be opened.\r\n*No political unrest will occurred.\r\n* Govt. policies & laws', '*Establishment of PD office and Regional office\r\n\r\n\r\n\r\n* Renovation of 10 new LGED godowns.\r\n\r\n\r\n* Land Development (Assembling Center &Training cum processing  Center)\r\n\r\n*Skilled personnel developed.\r\n\r\n*Transport available\r\n\r\n*Land procured ensured for 08 assemble center including building of 7200 sft each\r\n\r\n*Machinery & equipments procured for project execution\r\n*    Formation of farmers groups ensured', '* 1 no of PD office established by 2013.\r\n* 2 no. of Regional office established by 2014\r\n\r\n* 10 no. of LGED godowns renovation by 2018 and make them suitable for storage.\r\n*08 no Assembling Center & 01no processing  Center cum Office will be constructed by2018. \r\n\r\n* 6000 no. of farmers, 450 no. of traders, 50 no. of DAM personnel will be trained up by 2018.\r\n\r\n* 1 no. of double cabin pickup and 8 no. of motor cycle procured by 2014.\r\n\r\n\r\n* 8 no. of Land procured completed for assemble center including building of 7200 sft each by 2018.\r\n\r\n* 9no. of computers with necessary accessories & softwares, 3 no. of multimedia with laptop, 1 no. of photocopier, 5 set of telephone, internet & Fax, 4 nos of white & black board, 3 no. of IPS/Generator, 3 no. of Air conditioner, 2no of sound system,3 nos. of digital camera, some of weighing machines, and other necessary equipments procurement completed by 2018.', '*Consultation with stakeholder.\r\n*Field Visit.\r\n* Event progress report\r\n*Project Office & Regional office\r\n1.	*Monitoring & evaluation report', '* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.', '*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.	\r\n1.	7 manpower  including PD appointment \r\n2.	1120 sqm building construction with cost TK 2691.56 lakh \r\n3.	235 nos equipments with cost TK 2928.09 lakh \r\n4.	886 nos furnitures with cost TK 101.98 lakh \r\n5.	3 nos vehicles with cost TK 75.00 lakh	\r\n1.	IMED monthly and quarterly report\r\n2.	Ministry monthly and quarterly report\r\n3.	Project Director\\\\\\\\\\\\\\''s records	\r\n1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time\r\n\r\n\r\n\r\n\r\nInputs :\r\n*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.	\r\n1.	7 manpower  including PD appointment \r\n2.	1120 sqm building construction with cost TK 2691.56 lakh \r\n3.	235 nos equipments with cost TK 2928.09 lakh \r\n4.	886 nos furnitures with cost TK 101.98 lakh \r\n5.	3 nos vehicles with cost TK 75.00 lakh	\r\n1.	IMED monthly and quarterly report\r\n2.	Ministry monthly and quarterly report\r\n3.	Project Director\\\\\\\\\\\\\\''s records	\r\n1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time\r\n\r\n\r\n\r\n\r\nInputs :\r\n*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.', '1.	7 manpower  including PD appointment \r\n2.	1120 sqm building construction with cost TK 2691.56 lakh \r\n3.	235 nos equipments with cost TK 2928.09 lakh \r\n4.	886 nos furnitures with cost TK 101.98 lakh \r\n5.	3 nos vehicles with cost TK 75.00 lakh', '1.	IMED monthly and quarterly report\r\n2.	Ministry monthly and quarterly report\r\n3.	Project Director\\\\\\\\\\\\\\''s records', '1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time'),
(8, 54, 'To improve socio-economic status of the farmers in the project area.', '10 no. of LGED godowns renovation by 2018 and make them suitable for storage.\r\n*08 no Assembling Center & 01no processing  Center cum Office will be constructed by2018. \r\n\r\n* 6000 no. of farmers, 450 no. of traders, 50 no. of DAM personnel will be trained up by 2018.\r\n\r\n* 1 no. of double cabin pickup and 8 no. of motor cycle procured by 2014.\r\n\r\n\r\n* 8 no. of Land procured completed for assemble center including building of 7200 sft each by 2018.', 'Project evaluation\r\n-Compare other benchmark survey', '', 'To increase income of the people by developing efficient agricultural marketing system', '9no. of computers with necessary accessories & softwares, 3 no. of multimedia with laptop, 1 no. of photocopier, 5 set of telephone, internet & Fax, 4 nos of white & black board, 3 no. of IPS/Generator, 3 no. of Air conditioner, 2no of sound system,3 nos. of digital camera, some of weighing machines, and other necessary equipments procurement completed by 2018.', 'PCR\r\n*Project evaluation report.\r\n*Impact study.\r\n*Implementation report.\r\n*Field survey\r\n*IMED report', 'Most suitable resource personal will be selected.\r\n*Suitable farmers will be selected and trained.\r\n*More avenue (Market) will be opened.', 'Establishment of PD office and Regional office\r\n\r\n\r\n\r\n* Renovation of 10 new LGED godowns.\r\n\r\n\r\n* Land Development (Assembling Center &Training cum processing  Center)\r\n\r\n*Skilled personnel developed.\r\n\r\n*Transport available\r\n\r\n*Land procured ensured for 08 assemble center including building of 7200 sft each\r\n\r\n*Machinery & equipments procured for project execution\r\n\r\n*    Formation of farmers groups ensured', '1.	7 manpower  including PD appointment \r\n2.	1120 sqm building construction with cost TK 2691.56 lakh \r\n3.	235 nos equipments with cost TK 2928.09 lakh \r\n4.	886 nos furnitures with cost TK 101.98 lakh \r\n5.	3 nos vehicles with cost TK 75.00 lakh', 'Consultation with stakeholder.\r\n*Field Visit.', 'No political unrest will occurred.\r\n* Govt. policies & laws', 'Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns', '20% reduced marketing cost\r\n-100% of linkage establishment between production system & marketing system', 'Event progress report\r\n*Project Office & Regional office\r\n1.	*Monitoring & evaluation report', '* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available'),
(9, 41, 'To improve socio-economic status of the farmers in the project area.', '-20% reduced marketing cost\r\n-100% of linkage establishment between production system & marketing system.', '-Project evaluation\r\n-Compare other benchmark survey', '', 'To increase income of the people by developing efficient agricultural marketing system.', '* 100% reduced intermediary stages in the marketing channel.\r\n* 100% ensured better prices of the farmers products.\r\n1.	*100% Linkage developed between financial institutions and business people', '*PCR\r\n*Project evaluation report.\r\n*Impact study.\r\n*Implementation report.\r\n*Field survey\r\n*IMED report', '*Most suitable resource personal will be selected.\r\n*Suitable farmers will be selected and trained.\r\n*More avenue (Market) will be opened.\r\n*No political unrest will occurred.\r\n* Govt. policies & laws', '*Establishment of PD office and Regional office\r\n* Renovation of 10 new LGED godowns.\r\n* Land Development (Assembling Center &Training cum processing  Center)\r\n*Skilled personnel developed.\r\n*Transport available\r\n*Land procured ensured for 08 assemble center including building of 7200 sft each\r\n*Machinery & equipments procured for project execution\r\n*    Formation of farmers groups ensured', '* 1 no of PD office established by 2013.\r\n* 2 no. of Regional office established by 2014\r\n* 10 no. of LGED godowns renovation by 2018 and make them suitable for storage.\r\n*08 no Assembling Center & 01no processing  Center cum Office will be constructed by2018. \r\n* 6000 no. of farmers, 450 no. of traders, 50 no. of DAM personnel will be trained up by 2018.\r\n* 1 no. of double cabin pickup and 8 no. of motor cycle procured by 2014.\r\n* 8 no. of Land procured completed for assemble center including building of 7200 sft each by 2018.\r\n* 9no. of computers with necessary accessories & softwares, 3 no. of multimedia with laptop, 1 no. of photocopier, 5 set of telephone, internet & Fax, 4 nos of white & black board, 3 no. of IPS/Generator, 3 no. of Air conditioner, 2no of sound system,3 nos. of digital camera, some of weighing machines, and other necessary equipments procurement completed by 2018.\r\n1.	* 330 nos. of farmers groups completed by 2018.', '*Consultation with stakeholder.\r\n*Field Visit.\r\n* Event progress report\r\n*Project Office & Regional office\r\n1.	*Monitoring & evaluation report', '* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.', '*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.', '1.	7 manpower  including PD appointment \r\n2.	1120 sqm building construction with cost TK 2691.56 lakh \r\n3.	235 nos equipments with cost TK 2928.09 lakh \r\n4.	886 nos furnitures with cost TK 101.98 lakh \r\n5.	3 nos vehicles with cost TK 75.00 lakh', '1.	IMED monthly and quarterly report\r\n2.	Ministry monthly and quarterly report\r\n3.	Project Director\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\''s records', '1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time'),
(10, 42, 'To improve socio-economic status of the farmers in the project area.', '-20% reduced marketing cost\r\n-100% of linkage establishment between production system & marketing system', 'Project evaluation\r\n-Compare other benchmark survey', '', 'To increase income of the people by developing efficient agricultural marketing system .', '100% reduced intermediary stages in the marketing channel.\r\n* 100% ensured better prices of the farmers products.\r\n1.	*100% Linkage developed between financial institutions and business people', 'PCR\r\n*Project evaluation report.\r\n*Impact study.\r\n*Implementation report.\r\n*Field survey\r\n*IMED report', 'Most suitable resource personal will be selected.\r\n*Suitable farmers will be selected and trained.\r\n*More avenue (Market) will be opened.\r\n*No political unrest will occurred.\r\n* Govt. policies & laws', 'Establishment of PD office and Regional office\r\n\r\n\r\n\r\n* Renovation of 10 new LGED godowns.\r\n\r\n\r\n* Land Development (Assembling Center &Training cum processing  Center)\r\n\r\n*Skilled personnel developed.\r\n\r\n*Transport available\r\n\r\n*Land procured ensured for 08 assemble center including building of 7200 sft each\r\n\r\n*Machinery & equipments procured for project execution\r\n\r\n*    Formation of farmers groups ensured', '* 1 no of PD office established by 2013.\r\n* 2 no. of Regional office established by 2014\r\n\r\n* 10 no. of LGED godowns renovation by 2018 and make them suitable for storage.\r\n*08 no Assembling Center & 01no processing  Center cum Office will be constructed by2018. \r\n\r\n* 6000 no. of farmers, 450 no. of traders, 50 no. of DAM personnel will be trained up by 2018.\r\n\r\n* 1 no. of double cabin pickup and 8 no. of motor cycle procured by 2014.\r\n\r\n\r\n* 8 no. of Land procured completed for assemble center including building of 7200 sft each by 2018.\r\n\r\n* 9no. of computers with necessary accessories & softwares, 3 no. of multimedia with laptop, 1 no. of photocopier, 5 set of telephone, internet & Fax, 4 nos of white & black board, 3 no. of IPS/Generator, 3 no. of Air conditioner, 2no of sound system,3 nos. of digital camera, some of weighing machines, and other necessary equipments procurement completed by 2018.\r\n\r\n1.	* 330 nos. of farmers groups completed by 2018.', 'Consultation with stakeholder.\r\n*Field Visit.\r\n* Event progress report\r\n*Project Office & Regional office\r\n1.	*Monitoring & evaluation report', 'Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.', '*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.', '1.	7 manpower  including PD appointment \r\n2.	1120 sqm building construction with cost TK 2691.56 lakh \r\n3.	235 nos equipments with cost TK 2928.09 lakh \r\n4.	886 nos furnitures with cost TK 101.98 lakh \r\n5.	3 nos vehicles with cost TK 75.00 lakh', '1.	IMED monthly and quarterly report\r\n2.	Ministry monthly and quarterly report\r\n3.	Project Director\\''s records', '1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time'),
(11, 47, 'proper service to the stake holders', 'nfgfd', 'gdgfdgf', '', 'training centre established', 'jhbhgjfh', 'bvcxc', 'jhggffhg', 'developed land', 'developed land for construction', 'field visit', '', 'labour \r\nland acquisition', '6000 cft earth filled', 'records, field visit', 'land acquisition would be done in time\r\ndpp approved in time\r\nnatural disaster'),
(12, 44, 'To improve socio-economic status of the farmers in the project area.', '20% reduced marketing cost\r\n-100% of linkage establishment between production system & marketing system', 'Project evaluation\r\n-Compare other benchmark survey', '', 'To increase income of the people by developing efficient agricultural marketing system', '100% reduced intermediary stages in the marketing channel.\r\n* 100% ensured better prices of the farmers products.\r\n1.	*100% Linkage developed between financial institutions and business people', 'PCR\r\n*Project evaluation report.\r\n*Impact study.\r\n*Implementation report.\r\n*Field survey\r\n*IMED report', 'Most suitable resource personal will be selected.\r\n*Suitable farmers will be selected and trained.\r\n*More avenue (Market) will be opened.\r\n*No political unrest will occurred.\r\n* Govt. policies & laws', 'Establishment of PD office and Regional office\r\n\r\n\r\n\r\n* Renovation of 10 new LGED godowns.\r\n\r\n\r\n* Land Development (Assembling Center &Training cum processing  Center)\r\n\r\n*Skilled personnel developed.\r\n\r\n*Transport available\r\n\r\n*Land procured ensured for 08 assemble center including building of 7200 sft each\r\n\r\n*Machinery & equipments procured for project execution\r\n\r\n*    Formation of farmers groups ensured', '1 no of PD office established by 2013.\r\n* 2 no. of Regional office established by 2014\r\n\r\n* 10 no. of LGED godowns renovation by 2018 and make them suitable for storage.\r\n*08 no Assembling Center & 01no processing  Center cum Office will be constructed by2018. \r\n\r\n* 6000 no. of farmers, 450 no. of traders, 50 no. of DAM personnel will be trained up by 2018.\r\n\r\n* 1 no. of double cabin pickup and 8 no. of motor cycle procured by 2014.\r\n\r\n\r\n* 8 no. of Land procured completed for assemble center including building of 7200 sft each by 2018.\r\n\r\n* 9no. of computers with necessary accessories & softwares, 3 no. of multimedia with laptop, 1 no. of photocopier, 5 set of telephone, internet & Fax, 4 nos of white & black board, 3 no. of IPS/Generator, 3 no. of Air conditioner, 2no of sound system,3 nos. of digital camera, some of weighing machines, and other necessary equipments procurement completed by 2018.\r\n\r\n1.	* 330 nos. of farmers groups completed by 2018.', 'Consultation with stakeholder.\r\n*Field Visit.\r\n* Event progress report\r\n*Project Office & Regional office\r\n1.	*Monitoring & evaluation report', 'Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities', 'Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.', '1.	7 manpower  including PD appointment \r\n2.	1120 sqm building construction with cost TK 2691.56 lakh \r\n3.	235 nos equipments with cost TK 2928.09 lakh \r\n4.	886 nos furnitures with cost TK 101.98 lakh \r\n5.	3 nos vehicles with cost TK 75.00 lakh', '1.	IMED monthly and quarterly report\r\n2.	Ministry monthly and quarterly report\r\n3.	Project Director\\''s records', '1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time'),
(13, 45, 'To improve socio-economic status of the farmers in the project area.', '-20% reduced marketing cost\r\n-100% of linkage establishment between production system & marketing system', 'Project evaluation\r\n-Compare other benchmark survey', '', 'To increase income of the people by developing efficient agricultural marketing system', '100% reduced intermediary stages in the marketing channel.\r\n* 100% ensured better prices of the farmers products.\r\n1.	*100% Linkage developed between financial institutions and business people', '*PCR\r\n*Project evaluation report.\r\n*Impact study.\r\n*Implementation report.\r\n*Field survey\r\n*IMED report', 'Most suitable resource personal will be selected.\r\n*Suitable farmers will be selected and trained.\r\n*More avenue (Market) will be opened.\r\n*No political unrest will occurred.\r\n* Govt. policies & laws', '*Establishment of PD office and Regional office\r\n* Renovation of 10 new LGED godowns.\r\n* Land Development (Assembling Center &Training cum processing  Center)\r\n*Skilled personnel developed.\r\n*Transport available\r\n*Land procured ensured for 08 assemble center including building of 7200 sft each\r\n*Machinery & equipments procured for project execution\r\n* Formation of farmers groups ensured', '* 1 no of PD office established by 2013.\r\n* 2 no. of Regional office established by 2014\r\n* 10 no. of LGED godowns renovation by 2018 and make them suitable for storage.\r\n*08 no Assembling Center & 01no processing  Center cum Office will be constructed by2018. \r\n* 6000 no. of farmers, 450 no. of traders, 50 no. of DAM personnel will be trained up by 2018.\r\n* 1 no. of double cabin pickup and 8 no. of motor cycle procured by 2014\r\n* 8 no. of Land procured completed for assemble center including building of 7200 sft each by 2018.\r\n* 9no. of computers with necessary accessories & softwares, 3 no. of multimedia with laptop, 1 no. of photocopier, 5 set of telephone, internet & Fax, 4 nos of white & black board, 3 no. of IPS/Generator, 3 no. of Air conditioner, 2no of sound system,3 nos. of digital camera, some of weighing machines, and other necessary equipments procurement completed by 2018.\r\n* 330 nos. of farmers groups completed by 2018.', '*Consultation with stakeholder.\r\n*Field Visit.\r\n* Event progress report\r\n*Project Office & Regional office\r\n*Monitoring & evaluation report', '* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.', '*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns', '1.	7 manpower  including PD appointment \r\n2.	1120 sqm building construction with cost TK 2691.56 lakh \r\n3.	235 nos equipments with cost TK 2928.09 lakh \r\n4.	886 nos furnitures with cost TK 101.98 lakh \r\n5.	3 nos vehicles with cost TK 75.00 lakh', '1.	IMED monthly and quarterly report\r\n2.	Ministry monthly and quarterly report\r\n3.	Project Director\\''s records', '1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time'),
(14, 50, 'To improve socio-economic status of the farmers in the project area.', '-20% reduced marketing cost\r\n-100% of linkage establishment between production system & marketing system', '-Project evaluation\r\n-Compare other benchmark survey', '', 'To increase income of the people by developing efficient agricultural marketing system', '* 100% reduced intermediary stages in the marketing channel.\r\n* 100% ensured better prices of the farmers products.\r\n1.	*100% Linkage developed between financial institutions and business people', '*PCR\r\n*Project evaluation report.\r\n*Impact study.\r\n*Implementation report.\r\n*Field survey\r\n*IMED report', '*Most suitable resource personal will be selected.\r\n*Suitable farmers will be selected and trained.\r\n*More avenue (Market) will be opened.\r\n*No political unrest will occurred.\r\n* Govt. policies & laws', '*Establishment of PD office and Regional office\r\n\r\n\r\n                    v\r\n* Renovation of 10 new LGED godowns.\r\n\r\n\r\n* Land Development (Assembling Center &Training cum processing  Center)\r\n\r\n*Skilled personnel developed.\r\n\r\n*Transport available\r\n\r\n*Land procured ensured for 08 assemble center including building of 7200 sft each\r\n\r\n*Machinery & equipments procured for project execution\r\n\r\n*    Formation of farmers groups ensured', '* 1 no of PD office established by 2013.\r\n* 2 no. of Regional office established by 2014\r\n\r\n* 10 no. of LGED godowns renovation by 2018 and make them suitable for storage.\r\n*08 no Assembling Center & 01no processing  Center cum Office will be constructed by2018. \r\n\r\n* 6000 no. of farmers, 450 no. of traders, 50 no. of DAM personnel will be trained up by 2018.\r\n\r\n* 1 no. of double cabin pickup and 8 no. of motor cycle procured by 2014.\r\n\r\n\r\n* 8 no. of Land procured completed for assemble center including building of 7200 sft each by 2018.\r\n\r\n* 9no. of computers with necessary accessories & softwares, 3 no. of multimedia with laptop, 1 no. of photocopier, 5 set of telephone, internet & Fax, 4 nos of white & black board, 3 no. of IPS/Generator, 3 no. of Air conditioner, 2no of sound system,3 nos. of digital camera, some of weighing machines, and other necessary equipments procurement completed by 2018.\r\n\r\n1.	* 330 nos. of farmers groups completed by 2018.', '*Consultation with stakeholder.\r\n*Field Visit.\r\n* Event progress report\r\n*Project Office & Regional office\r\n1.	*Monitoring & evaluation report', '* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.', '*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.', '1.	7 manpower  including PD appointment \r\n2.	1120 sqm building construction with cost TK 2691.56 lakh \r\n3.	235 nos equipments with cost TK 2928.09 lakh \r\n4.	886 nos furnitures with cost TK 101.98 lakh \r\n5.	3 nos vehicles with cost TK 75.00 lakh', '1.	IMED monthly and quarterly report\r\n2.	Ministry monthly and quarterly report\r\n3.	Project Director\\''s records', '1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time'),
(15, 55, 'To improve socio-economic status of the farmers in the project ares.', '', '', '', 'To increase income of the peopleby developing efficient agricultural marketing system', '', '', '', '*Establishment of PD office and Regional office', '*1 no of PD office established by 2013.', '*Consultation with stakeshlder', '*Willingness Potential Benificial', 'Manpower recruited/', '1. 7 manpower including PD appointment', '1.Ministry monthly and quartly report', '1.DPP is approved on time'),
(16, 46, 'Program goal :\r\nTo improve socio-economic status of the farmers in the project area.', '20% reduced marketing cost\r\n-100% of linkage establishment between production system & marketing system', 'Project evaluation\r\n-Compare other benchmark survey', '', 'Project purpose :\r\nTo increase income of the people by developing efficient agricultural marketing system', '* 100% reduced intermediary stages in the marketing channel.\r\n* 100% ensured better prices of the farmers products.\r\n1.	*100% Linkage developed between financial institutions and business people', 'PCR\r\n*Project evaluation report.\r\n*Impact study.\r\n*Implementation report.\r\n*Field survey\r\n*IMED report', 'Most suitable resource personal will be selected.\r\n*Suitable farmers will be selected and trained.\r\n*More avenue (Market) will be opened.\r\n*No political unrest will occurred.\r\n* Govt. policies & laws', 'Outputs :\r\n*Establishment of PD office and Regional office\r\n\r\n\r\n\r\n* Renovation of 10 new LGED godowns.\r\n\r\n\r\n* Land Development (Assembling Center &Training cum processing  Center)\r\n\r\n*Skilled personnel developed.\r\n\r\n*Transport available\r\n\r\n*Land procured ensured for 08 assemble center including building of 7200 sft each\r\n\r\n*Machinery & equipments procured for project execution\r\n\r\n*    Formation of farmers groups ensured', '* 1 no of PD office established by 2013.\r\n* 2 no. of Regional office established by 2014\r\n\r\n* 10 no. of LGED godowns renovation by 2018 and make them suitable for storage.\r\n*08 no Assembling Center & 01no processing  Center cum Office will be constructed by2018. \r\n\r\n* 6000 no. of farmers, 450 no. of traders, 50 no. of DAM personnel will be trained up by 2018.\r\n\r\n* 1 no. of double cabin pickup and 8 no. of motor cycle procured by 2014.\r\n\r\n\r\n* 8 no. of Land procured completed for assemble center including building of 7200 sft each by 2018.\r\n\r\n* 9no. of computers with necessary accessories & softwares, 3 no. of multimedia with laptop, 1 no. of photocopier, 5 set of telephone, internet & Fax, 4 nos of white & black board, 3 no. of IPS/Generator, 3 no. of Air conditioner, 2no of sound system,3 nos. of digital camera, some of weighing machines, and other necessary equipments procurement completed by 2018.\r\n\r\n1.	* 330 nos. of farmers groups completed by 2018.', '*Consultation with stakeholder.\r\n*Field Visit.\r\n* Event progress report\r\n*Project Office & Regional office\r\n1.	*Monitoring & evaluation report', '* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.', 'Inputs :\r\n*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.', '1.	7 manpower  including PD appointment \r\n2.	1120 sqm building construction with cost TK 2691.56 lakh \r\n3.	235 nos equipments with cost TK 2928.09 lakh \r\n4.	886 nos furnitures with cost TK 101.98 lakh \r\n5.	3 nos vehicles with cost TK 75.00 lakh', '1.	IMED monthly and quarterly report\r\n2.	Ministry monthly and quarterly report\r\n3.	Project Director\\''s records', '1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and 1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time'),
(17, 53, 'fgfd', 'fg', 'hjh', '', 'fddf', 'fgfgh', 'trt', 'dfdsf', 'dffd', 'jhj', 'gg', 'dsdsf', 'ghhg', 'jj', 'ggfh', 'hjgghj');
INSERT INTO `project_log_frame` (`id`, `pid`, `goal_summary`, `goal_ovi`, `goal_mov`, `goal_ai`, `objective_summary`, `objective_ovi`, `objective_mov`, `objective_ai`, `output_summary`, `output_ovi`, `output_mov`, `output_ai`, `input_summary`, `input_ovi`, `input_mov`, `input_ai`) VALUES
(18, 51, '', '', '', '', 'Project purpose :\r\nTo increase income of the people by developing efficient agricultural marketing system', '* 100% reduced intermediary stages in the marketing channel.\r\n* 100% ensured better prices of the farmerâ€™s products.\r\n1.	*100% Linkage developed between financial institutions and business people', '*PCR\r\n*Project evaluation report.\r\n*Impact study.\r\n*Implementation report.\r\n*Field survey\r\n*IMED report', '*Most suitable resource personal will be selected.\r\n*Suitable farmers will be selected and trained.\r\n*More avenue (Market) will be opened.\r\n*No political unrest will occurred.\r\n* Govt. policies & laws', 'Outputs :\r\n*Establishment of PD office and Regional office\r\n\r\n\r\n\r\n* Renovation of 10 new LGED godowns.\r\n\r\n\r\n* Land Development (Assembling Center &Training cum processing  Center)\r\n\r\n*Skilled personnel developed.\r\n\r\n*Transport available\r\n\r\n*Land procured ensured for 08 assemble center including building of 7200 sft each\r\n\r\n*Machinery & equipments procured for project execution\r\n\r\n*    Formation of farmers groups ensured                     \r\nInputs :\r\n*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.', '* 1 no of PD office established by 2013.\r\n* 2 no. of Regional office established by 2014\r\n\r\n* 10 no. of LGED godowns renovation by 2018 and make them suitable for storage.\r\n*08 no Assembling Center & 01no processing  Center cum Office will be constructed by2018. \r\n\r\n* 6000 no. of farmers, 450 no. of traders, 50 no. of DAM personnel will be trained up by 2018.\r\n\r\n* 1 no. of double cabin pickup and 8 no. of motor cycle procured by 2014.\r\n\r\n\r\n* 8 no. of Land procured completed for assemble center including building of 7200 sft each by 2018.\r\n\r\n* 9no. of computers with necessary accessories & softwares, 3 no. of multimedia with laptop, 1 no. of photocopier, 5 set of telephone, internet & Fax, 4 nos of white & black board, 3 no. of IPS/Generator, 3 no. of Air conditioner, 2no of sound system,3 nos. of digital camera, some of weighing machines, and other necessary equipments procurement completed by 2018.', '*Consultation with stakeholder.\r\n*Field Visit.\r\n* Event progress report\r\n*Project Office & Regional office', '* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.\r\n\r\n1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time\r\n\r\n\r\n\r\n\r\n* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.\r\n\r\n1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time\r\n\r\n\r\n\r\n\r\n* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.\r\n\r\n1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time\r\n\r\n\r\n\r\n\r\n* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.\r\n\r\n1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time\r\n\r\n\r\n\r\n\r\n\r\n\r\n* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.\r\n\r\n1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time\r\n\r\n\r\n\r\n\r\n\r\n\r\n* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.\r\n\r\n1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time\r\n\r\n\r\n\r\n\r\n\r\n\r\n* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.\r\n\r\n1.	DPP is approved on time \r\n2.	Fund is available on time \r\n3.	Cost increase remains within 8% of estimated project costs\r\n4.	Land procurement and development on time\r\n\r\n* Willingness potential beneficiaries.\r\n*Project staff\r\n* Climate remain unchanged\r\n*ADP allocation will be available\r\n*Proper training facilities.', 'Inputs :\r\n*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.', 'Inputs :\r\n*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.', 'Inputs :\r\n*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.', 'Inputs :\r\n*Manpower recruited/deputed \r\n*Provide training\r\n*Vehicle procured\r\n\r\n*Land procurement ensured for assemble center including building of 7200 sft each\r\n*Land Development (Assembling Center & processing  Center cum office)\r\n* Machinery & equipments procured for project execution\r\n8. Other supply & services ensured.\r\n9. IEC materials publications\r\n10. Arranged Workshop/seminar\r\n11. Formation of farmers groups ensured\r\n12. Arranged Midterm evaluation\r\n13. Arranged motivational tour\r\n14. Repair, maintenance and rehabilitation ensured\r\n15. Renovation of LGED godowns.'),
(20, 32, 'asds', 'asd', 'asdsa', '', 'asd', 'sdf', 'asd', 'asd', 'sdf', 'asdasd', 'dfasdf', 'fdsf', 'asdas', 'asdsad', 'asdfasd', 'fdsf');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `project_major_items`
--

INSERT INTO `project_major_items` (`id`, `pid`, `annex_id`, `basis`, `basis_date`) VALUES
(5, 25, 130, 'Harun', '2014-07-14'),
(6, 25, 131, 'Junayeed', '2014-07-26'),
(7, 28, 151, 'harun3', '2014-07-21'),
(8, 47, 460, '', '0000-00-00'),
(9, 47, 470, '', '0000-00-00'),
(10, 44, 441, '', '0000-00-00'),
(11, 44, 450, '', '0000-00-00'),
(12, 44, 452, '', '0000-00-00'),
(13, 45, 384, '', '0000-00-00'),
(14, 45, 404, '', '0000-00-00'),
(15, 45, 418, '', '0000-00-00'),
(16, 45, 444, '', '0000-00-00'),
(17, 45, 458, '', '0000-00-00'),
(18, 45, 480, '', '0000-00-00'),
(19, 43, 447, '', '0000-00-00'),
(20, 43, 462, '', '0000-00-00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `project_major_items_comparative_cost`
--

INSERT INTO `project_major_items_comparative_cost` (`id`, `pid`, `annex_id`, `unit_cost_ongoing`, `unit_cost_completed`, `remarks`) VALUES
(1, 28, 151, '344444444444444', '5555555555555555555', 'dfssdfsdsdfrrrrrrrrrrrrrrrrrrrrr'),
(2, 47, 460, '', '', ''),
(3, 47, 470, '', '', ''),
(4, 44, 441, '', '', ''),
(5, 44, 450, '', '', ''),
(6, 44, 452, '', '', ''),
(7, 45, 384, '', '', ''),
(8, 45, 404, '', '', ''),
(9, 45, 418, '', '', ''),
(10, 45, 444, '', '', ''),
(11, 45, 458, '', '', ''),
(12, 45, 480, '', '', ''),
(13, 43, 447, '', '', ''),
(14, 43, 462, '', '', '');

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
  `type` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `project_management`
--

INSERT INTO `project_management` (`id`, `name_of_the_post`, `qty`, `qualification`, `amount`, `responsibility`, `type`, `pid`) VALUES
(35, 'Software Engineer', 23, 'sdsaf', 3000, 'sdafas sad fasd', 1, 24),
(36, 'Harun', 4, '5551', 55, 'sdfklgjsdklfjg', 2, 24),
(37, 'Tesdddd', 4, '343434', 555, 'jsdfklgsdklfgklsdfjg', 1, 24),
(41, 'bbbbbbbbbbbbbbbbbb', 5, 'sdfsd gsdfgsd', 345, 'dfsg sdfg sdfg sd', 3, 24),
(42, 'Software Engineer', 23, 'sdafasd', 34, '343', 1, 32),
(43, 'Harun', 34, 'N/A', 4000, 'none', 1, 22),
(44, 'asdasd', 23, 'asd sdf', 34, '234234234 asdad', 1, 23),
(45, 'Recruite 1', 12, 'as#%asd#%asd#%asd#%asd', 12333, 'ldkasd#%sdfsdf#%sdf#%sdfsdf#%', 2, 23),
(46, 'Project Director', 1, 'B.Sc. in Engineering', 33750, 'a) He is responsible and accountable to Additional Chief Engineer and Chief Engineer (MI) for smooth implementation of administrative and financial activities of minor irrigation program at field level.#%b) He will prepare and submit all reports and returns to the higher authority and also ensure the allotment of irrigation equipment and collection of irrigation equipment and collection of irrigation charge.#%c) He inspects his sub ordinate office time to time.', 1, 37),
(47, 'Superintending Engineer', 3, '-Do-', 33750, '-Do-', 1, 37),
(48, 'Executive Engineer', 5, '-Do-', 31250, 'a) He is responsible and accountable to Superintending Engineer for smooth implementation of all administrative and financial activities of his Region.#%b) He must inspect his sub ordinate office to ensure the maximum utilization of irrigation equipment.#%c) He will attend district co-ordination committee meeting.', 1, 37),
(49, 'Assistant Engineer', 10, '-Do-', 20370, 'a) He is responsible and accountable to Executive Engineer and Assistant Chief Engineer for all administrative and financial activities of his Zone.#%b) He must ensure the collection of irrigatin charge and prepare and submit all reports to his higher authority.#%c) He will assist farmer to constitute irrigation society and he also supervise the activities of his subordinate officers. He will atteend Upazilla co-coordinating committee meeting.', 1, 37),
(50, 'Sr. Sub Assist Engr./Sub Assist Engr.', 12, 'Diploma in Engineering', 16540, 'a) He is responsible and accountable to Assistant Engineer for all administrative and financial activities of his Unit.#%b) He will collect scheme and irrigation charge, supervise irrigation equipment operation activities and transfer irrigation equipment utilization up-date technology to the farmers.', 1, 37),
(51, 'Administrative Officer', 4, 'B.A. / B.Com. / B.Sc.', 16540, 'a) He will maintain personal file of field staff and also keep records of leave, salary, LPR, transfer etc.#%b) He will assist the appointing authority of 3rd and 4th grade staffs and also discharge his duties as per direction of his controlling officer.', 2, 37),
(52, 'Account Officer', 4, 'B.Sc. in commerce', 16540, 'a) He will prepare the Broadsheet reply for all internal and commercial Audit objections.#%b) He will compile Revenue Budget and keep records of all accounts and check account register time to time.', 2, 37),
(53, 'OACT/CCT', 18, 'H.S.C', 13125, 'a) He will compose all reports / returns as per direction of the superior officer', 3, 37),
(54, 'Mechanic / Asst. Mechanic', 12, 'Class eight Two year trade course', 13125, 'a) He will responsible for repair and maintenance of irrigation equipment.#%b) He will assist Sr. SAE/SAE to prepare scheme and collection and irrigation charge.#%c) He will be trained up pump operator.', 3, 37),
(55, 'Electrician', 9, 'S.S.C', 11235, 'a) He will responsible for repair and maintenance of irrigation equipment.#%b) He will assist Sr. SAE/SAE to prepare scheme and collection of irrigation charge.#%c) He will train up pump operation.', 3, 37),
(56, 'Assist. Cashier', 11, 'H.S.C', 10450, 'a) He will maintain cash Book, cheque receive register and other related records of cash.', 3, 37),
(57, 'Driver', 19, 'Class eight', 9745, 'a) He will maintain Log Book regularly.#%b) He will maintain drought.', 3, 37),
(58, 'Peon/Guard', 31, 'Class eight', 7740, 'a) He will oblige all order by respective office Head', 3, 37);

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
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msg_from` varchar(100) NOT NULL,
  `msg_from_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `project_messages`
--

INSERT INTO `project_messages` (`id`, `pid`, `title`, `msg`, `doc_id`, `create_date`, `msg_from`, `msg_from_id`) VALUES
(5, 25, 'hdd', 'sdsdsd', 7, '2014-08-02 13:51:58', 'Ministry', 17),
(6, 25, 'xxxx', 'assss', 8, '2014-08-02 14:07:27', 'Ministry', 17),
(7, 25, 'fff', 'dddd', 9, '2014-08-02 15:41:31', 'Ministry', 17),
(8, 24, 'Harun', 'Harun asdfadas', 23, '2014-08-08 00:31:35', 'Agency', 26),
(9, 24, 'Test Again', 'Valo lage na\r\n\r\n\r\nValo lage na', 24, '2014-08-08 00:38:32', 'Agency', 26),
(10, 24, 'Test', '', 25, '2014-08-17 11:39:55', 'Agency', 26),
(11, 23, 'Done', 'DDDD', 30, '2014-08-23 14:24:13', 'Agency', 26),
(12, 22, 'Harun', 'sdjfklas', 0, '2014-10-01 17:59:07', 'Agency', 26),
(13, 22, 'ddd', 'sdfsdfs', 0, '2014-10-01 18:28:47', 'Agency', 26),
(14, 27, 'Feedback 1', 'Feedback 1', 53, '2014-10-28 06:43:23', 'Commission', 32),
(15, 37, 'This project is design for development in electricity sector', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 55, '2014-11-01 19:25:41', 'Agency', 26);

-- --------------------------------------------------------

--
-- Table structure for table `project_ministries`
--

CREATE TABLE IF NOT EXISTS `project_ministries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `ministry_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=175 ;

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
(109, 32, 2),
(110, 22, 2),
(116, 35, 2),
(134, 23, 2),
(135, 23, 9),
(150, 38, 2),
(155, 46, 37),
(158, 41, 40),
(160, 42, 49),
(168, 44, 16),
(169, 43, 7),
(170, 45, 28),
(171, 53, 36),
(172, 47, 10),
(173, 33, 2),
(174, 37, 2);

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
  `loan_pa_source` text,
  `grant_gob` double NOT NULL,
  `grant_gob_fe` double NOT NULL,
  `grant_pa` double NOT NULL,
  `grant_rpa` double NOT NULL,
  `grant_own_fund` double NOT NULL,
  `grant_own_fund_fe` double NOT NULL,
  `grant_others` double NOT NULL,
  `grant_others_fe` double NOT NULL,
  `grant_pa_source` text,
  `equity_gob` double NOT NULL,
  `equity_gob_fe` double NOT NULL,
  `equity_pa` double NOT NULL,
  `equity_pa_rpa` double NOT NULL,
  `equity_own_fund` double NOT NULL,
  `equity_own_fund_fe` double NOT NULL,
  `equity_others` double NOT NULL,
  `equity_others_fe` double NOT NULL,
  `equity_pa_sources` text,
  `others_gob` double NOT NULL,
  `others_gob_fe` double NOT NULL,
  `others_pa` double NOT NULL,
  `others_pa_rpa` double NOT NULL,
  `others_own_fund` double NOT NULL,
  `others_own_fund_fe` double NOT NULL,
  `others_others` double NOT NULL,
  `others_others_fe` double NOT NULL,
  `others_pa_sources` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `project_mode_financing`
--

INSERT INTO `project_mode_financing` (`id`, `pid`, `loan_gob`, `loan_gob_fe`, `loan_pa`, `loan_rpa`, `loan_own_fund`, `loan_own_fund_fe`, `loan_others`, `loan_others_fe`, `loan_pa_source`, `grant_gob`, `grant_gob_fe`, `grant_pa`, `grant_rpa`, `grant_own_fund`, `grant_own_fund_fe`, `grant_others`, `grant_others_fe`, `grant_pa_source`, `equity_gob`, `equity_gob_fe`, `equity_pa`, `equity_pa_rpa`, `equity_own_fund`, `equity_own_fund_fe`, `equity_others`, `equity_others_fe`, `equity_pa_sources`, `others_gob`, `others_gob_fe`, `others_pa`, `others_pa_rpa`, `others_own_fund`, `others_own_fund_fe`, `others_others`, `others_others_fe`, `others_pa_sources`) VALUES
(7, 20, 1, 4, 2, 12, 45, 43, 5, 3, 'undp', 2, 65, 7, 23, 6, 12, 4, 54, 'dds asd', 5, 5, 5, 5, 6, 6, 5, 465, '65', 67, 57, 578, 6786, 78, 6786, 786, 78, '678'),
(8, 23, 369, 1, 33, 0, 10, 10, 12, 10, 'UNDP', 17.03, 19.43, 37, 29, 12.87, 15.78, 11.77, 11.75, 'GoB', 10, 10, 10, 10, 10, 0, 10, 10, 'ADB', 10, 10, 10, 10, 10, 10, 10, 10, 'Programming Division'),
(9, 26, 0, 0, 0, 0, 0, 0, 0, 0, '', 243, 0, 20, 20, 8, 0, 9, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(10, 24, 438, 438, 1304, 866, 438, 438, 438, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(11, 28, 0, 1, 3, 2, 1, 1, 1, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '0', 1, 0, 0, 0, 0, 0, 0, 0, '0'),
(12, 30, 300, 0, 0, 0, 0, 0, 0, 0, '', 48, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(13, 27, 14, 0, 121, 121, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(14, 25, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(15, 32, 3, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(16, 22, 22, 0, 0, 0, 0, 0, 0, 0, '', 3, 0, 0, 0, 0, 0, 0, 0, '', 34, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 33, 0, 555, 0, 0, 0, '0'),
(17, 35, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(18, 35, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(19, 37, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 2352.37, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(20, 38, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 3204.56, 0, 0, 0, 208.5, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(21, 43, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 229, 5, 40, 0, 0, 0, 0, 0, 'Asian Development Bank', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(22, 44, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 295, 120, 910, 600, 0, 0, 0, 0, 'Japan', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(23, 45, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 555, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(24, 46, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(25, 42, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(26, 41, 60, 0, 0, 0, 40, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(27, 47, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 5112, 0, 900, 900, 0, 0, 0, 0, 'bangladesh government 5112, world bank 900.00', 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(28, 53, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(29, 33, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

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
  `prequal_invitation` date NOT NULL,
  `eoi_invitation` date NOT NULL,
  `rfp_issue` date NOT NULL,
  `procurement_category` enum('Goods','Works','Services') NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `project_procurement_plans`
--

INSERT INTO `project_procurement_plans` (`id`, `pid`, `package_no`, `procurement_desc`, `procurement_unit`, `procurement_qty`, `procurement_method`, `procurement_type`, `approv_auth`, `fund_src`, `estd_cost`, `tender_invitation`, `contract_sign`, `contract_completion`, `prequal_invitation`, `eoi_invitation`, `rfp_issue`, `procurement_category`, `create_date`) VALUES
(4, 23, '22', 'sdf asdfjkaklsd fklasjd flasj dfkla', 'LS', 3, 'DPM', 'NCT', '', '', 46, '2014-10-06', '2014-10-01', '2014-10-07', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-10-21'),
(5, 23, '34', '342\r\nddd\r\n\r\n\r\nsadasd', 'ff', 4, 'RTM', 'INT', '', '', 5, '2014-10-07', '2014-10-02', '2014-10-14', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-10-21'),
(6, 23, '43', 'asdf sd fsdf asd', 'ggg', 5, 'OTM', 'INT', '', '', 4, '2014-10-08', '2014-10-03', '2014-10-21', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-10-21'),
(11, 23, 'xxxx', 'sdfas', '44', 1, 'TSTM', 'INT', '', '', 55, '2014-10-21', '2014-10-21', '2014-10-21', '2014-10-08', '0000-00-00', '0000-00-00', 'Works', '2014-10-21'),
(12, 23, '4', 'asdfa', '4', 1, 'RFQM', 'NCT', '', '', 5, '2014-10-21', '2014-10-21', '2014-10-21', '2014-10-15', '0000-00-00', '0000-00-00', 'Works', '2014-10-21'),
(13, 23, 'zzz', 'sfas', '4', 3, 'QCBS', 'NCT', 'GoB', '6', 48, '2014-09-03', '2014-10-14', '2014-10-15', '2014-10-12', '2014-10-12', '2014-10-13', 'Services', '2014-10-21'),
(14, 23, '999', 'sdfasd', '3', 5, 'LCS', 'INT', 'HOPE', 'UNDP', 5, '2014-10-21', '2014-10-21', '2014-10-22', '2014-10-19', '2014-10-19', '2014-10-20', 'Services', '2014-10-21'),
(19, 24, '1', 'sadjfhas\r\nsdafhasdfj\r\nasdfasdfjh\r\nasdfhasdfj\r\nasdfashdj', '3', 4, 'DPM', 'NCT', '4', '5', 6, '0000-00-00', '2014-08-05', '2014-08-11', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-08-04'),
(20, 30, '2', 'sdfasdf sdfsdf', '44s', 4, 'DPM', 'NCT', 'fasdfsdfasd  dd', 'sdfds', 34, '0000-00-00', '2014-08-13', '2014-08-11', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-08-04'),
(21, 30, '22', '2\r\n3   \r\n\r\n\r\nddddd', '35', 3, 'DPM', 'NCT', '345', '5', 55, '0000-00-00', '2014-08-11', '2014-08-11', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-08-04'),
(22, 22, '2', 'asdfasd', '3', 4, 'RFQM', 'NCT', 'd', '3', 33, '0000-00-00', '2014-10-13', '2014-10-14', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-10-12'),
(23, 35, '2', '344', '5', 5, 'RFQM', 'NCT', '55', '3', 34, '0000-00-00', '2014-10-21', '2014-10-20', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-10-21'),
(24, 23, '43', 'adsadf', 'sdf', 12, 'DPM', 'NCT', 'GoB', 'UNDP', 12, '2014-10-21', '2014-10-21', '2014-10-21', '2014-10-22', '0000-00-00', '0000-00-00', 'Works', '2014-10-21'),
(25, 23, 'jj56', 'srsrt', 'sertert', 43, 'RFQM', 'INT', 'GoB', 'UNDP', 12, '2014-10-09', '2014-10-04', '2014-10-28', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-10-21'),
(26, 37, 'GD1', 'Pick-up (1 nos )', 'no.', 1, 'OTM', 'NCT', 'PD', 'GOB', 25, '0000-00-00', '2010-06-13', '2010-08-13', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-09-17'),
(27, 37, 'GD2', 'Computer with UPS. printer accessories^ nos.)', 'no.', 5, 'OTM', 'NCT', 'PD', 'GOB', 4, '0000-00-00', '2010-06-13', '2010-08-13', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-09-17'),
(28, 37, 'GD3', 'Photocopier (1 nos.)', 'NO', 1, 'DPM', 'NCT', 'PD', 'GOB', 1.5, '0000-00-00', '2010-06-13', '2010-08-13', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-09-17'),
(29, 37, 'GD4', 'Furniture-', 'NO', 1, 'OTM', 'NCT', 'PD', 'GOB', 4, '0000-00-00', '2010-06-13', '2010-06-13', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-09-17'),
(30, 37, 'GD5', 'Sinking & commissioning materials of Force Mode Tube Well of becusec capacity', 'LOT', 30, 'OTM', 'NCT', 'PD', 'GOB', 111, '0000-00-00', '2010-11-08', '2011-01-06', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-09-17'),
(31, 37, 'GD6', 'Sinking & commissioning materials of Force Mode Tube Well of 2-cusec capacity', 'LOT', 50, 'OTM', 'NCT', 'PD', 'GOB', 425, '0000-00-00', '2010-11-08', '2011-01-06', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-09-17'),
(32, 37, 'GD7', 'Sinking commissioning materials of Force Mode Tube Well of l-cusec capacity', 'LOT', 10, 'OTM', 'NCT', 'PD', 'GOB', 37, '0000-00-00', '2011-11-08', '2012-01-08', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-09-17'),
(33, 37, 'GD8', 'Sinking &. commissioning materials of Force Mode Tube Well of 2-cuscc capacity', 'LOT', 35, 'OTM', 'NCT', 'PD', 'GOB', 297.5, '0000-00-00', '2011-11-08', '2012-01-08', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-09-17'),
(34, 37, 'WD1', 'Installation of new force mode lube well of l-cusec capacity', 'LS', 10, 'OTM', 'NCT', 'PD', 'GOB', 22, '2010-06-15', '2010-11-08', '2011-01-23', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(35, 37, 'WD2', 'Installation of new force mode tube well of 2-cusec capacity', 'LS', 25, 'OTM', 'NCT', 'PD', 'GOB', 55, '2010-08-15', '2010-11-08', '2011-01-23', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(36, 37, 'WD3', 'Installation of no\\\\ force mode tube well of 1 -cusec capacity', 'LS', 10, 'OTM', 'NCT', 'PD', 'GOB', 22, '2011-08-15', '2011-11-08', '2012-01-23', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(37, 37, 'WD4', 'Installation of new force Mode tube well of I- cusec capacity', 'RKM', 35, 'OTM', 'NCT', 'PD', 'GOB', 77, '2011-08-15', '2011-11-08', '2012-01-23', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(38, 37, 'WD5', 'Installation of ness force mode tube well of 1 -cusec capacity', 'RKM', 20, 'OTM', 'NCT', 'PD', 'GOB', 44, '2012-08-15', '2012-11-08', '2013-01-23', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(39, 37, 'WD6', 'Installation of new force mode tube well of 2-cusec capacity', 'RKM', 25, 'OTM', 'NCT', 'PD', 'GOB', 55, '2012-08-15', '2012-11-08', '2013-01-23', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(40, 37, 'WD7', 'Pump IKHJSC construction (l - cusec)', 'NOS.', 10, 'RFQM', 'NCT', 'PD', 'GOB', 5.5, '2011-01-01', '2011-03-28', '2011-06-28', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(41, 37, 'WD8', 'Pump house construction (2- cusec)', 'NOS.', 25, 'OTM', 'NCT', 'PD', 'GOB', 20, '2011-01-01', '2011-03-28', '2011-06-28', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(42, 37, 'WD9', 'Pump house construction (1 - cusec)', 'NOS.', 10, 'OTM', 'NCT', 'PD', 'GOB', 5.5, '2012-01-01', '2012-03-28', '2012-06-28', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(43, 37, 'WD10', 'Pump house construction (2- cusec)', 'NOS.', 35, 'OTM', 'NCT', 'PD', 'GOB', 28, '2012-01-01', '2012-03-28', '2012-06-28', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(44, 37, 'WD11', 'Pump house construction (1 - cusec)', 'NOS', 20, 'OTM', 'NCT', 'PD', 'GOB', 11, '2013-01-01', '2013-03-28', '2013-06-28', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(45, 37, 'WD12', 'â€™ump house construction ( 2- cusec)', 'NOS.', 25, 'OTM', 'NCT', 'PD', 'GOB', 20, '2013-01-01', '2013-03-28', '2013-06-28', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(46, 37, 'WD13', 'Construction of water distribution system with supply of materials for new force mode tube well (pic buried pipe line X l-cusec) (each 300 meter)', 'NOS.', 10, 'OTM', 'NCT', 'PD', 'GOB', 28.83, '2011-01-01', '2011-03-28', '2011-06-25', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(47, 37, 'WD14', 'Construction of water distribution system with supply of materials for new force mode tube wet! (pvc buried pipe line) (2cusec. 500 meters)', 'NOS.', 25, 'OTM', 'NCT', 'PD', 'GOB', 136, '2011-01-01', '2011-03-28', '2011-06-25', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(48, 37, 'WD15', 'Construction of water distribution system with supple of materials for new force mode tube well (pic buried pipe lineKlcusec) (each 300 meter)', 'NOS.', 10, 'OTM', 'NCT', 'PD', 'GOB', 28.82, '2012-01-01', '2012-03-26', '2012-06-25', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(49, 37, 'WD16', 'Construction of water distribution system with supply of materials for new force mode tube well (pic buned pipe line) <2cuscc. 500 meters)', 'NOS.', 35, 'OTM', 'NCT', 'PD', 'GOB', 190.4, '2012-01-01', '2012-03-28', '2012-06-25', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(50, 37, 'WD17', 'Construction of water distribution system with supply of materials for new force mode tube well (pvc buned pipe ItncXlcuscc) (each 300 meter)', 'NOS.', 20, 'OTM', 'NCT', 'PD', 'GOB', 57.65, '2013-01-01', '2013-03-28', '2013-06-25', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(51, 37, 'WD18', 'Construction of water distribution system with supply of materials for new force mode tube well (pic buned pipe line) (2cuscc. 500 meters!', 'NOS', 25, 'OTM', 'NCT', 'PD', 'GOB', 136, '2013-01-01', '2013-03-28', '2013-06-25', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(52, 37, 'WD19', 'Establishment of demonstration farm (1 nos )', 'NOS', 1, 'OTM', 'NCT', 'PD', 'GOB', 4, '2010-08-15', '2010-11-08', '2010-01-23', '0000-00-00', '0000-00-00', '0000-00-00', 'Works', '2014-09-17'),
(53, 38, 'S-1', 'asdf', 'sadf', 1, 'LCS', 'NCT', 'PD', 'GOB', 12, '0000-00-00', '2014-10-07', '2014-10-30', '0000-00-00', '2014-10-01', '2014-10-03', 'Services', '2014-10-28'),
(54, 38, 'WD-1', 'asdf', 'Nos', 12, 'DPM', 'NCT', 'PD', 'GOB', 12, '2014-10-02', '2014-10-08', '2014-10-30', '0000-00-00', '2014-10-01', '0000-00-00', 'Works', '2014-10-28'),
(55, 38, 'GD-1', 'asdf', 'Nos', 13, 'DPM', 'NCT', 'PD', 'GOB', 12, '2014-10-01', '2014-10-09', '2014-10-30', '0000-00-00', '0000-00-00', '0000-00-00', 'Goods', '2014-10-28');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

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
(21, 25, 'Forwarded to Ministry', '2014-08-02 13:45:07'),
(22, 22, 'Forwarded to Ministry', '2014-08-26 00:31:42'),
(23, 22, 'Returned from Ministry', '2014-10-01 17:36:47'),
(24, 22, 'Forwarded to Ministry', '2014-10-01 17:42:22'),
(25, 22, 'Returned from Ministry', '2014-10-01 17:43:30'),
(26, 25, 'Forwarded to Commission', '2014-10-28 12:28:34'),
(27, 44, 'Forwarded to Ministry', '2014-10-30 16:47:44'),
(28, 27, 'Returned from Commission', '2014-11-01 22:59:11'),
(29, 27, 'Forwarded to Commission', '2014-11-01 23:00:23'),
(30, 27, 'Forwarded to ECNEC', '2014-11-02 11:33:45'),
(31, 33, 'Forwarded to Ministry', '2014-11-02 11:48:58'),
(32, 33, 'Forwarded to Commission', '2014-11-02 11:49:53'),
(33, 33, 'Approved', '2014-11-02 11:50:26'),
(34, 20, 'Approved', '2014-11-02 23:04:21'),
(35, 37, 'Forwarded to Ministry', '2014-11-02 23:05:11'),
(36, 37, 'Forwarded to Commission', '2014-11-02 23:05:34'),
(37, 37, 'Returned from Commission', '2014-11-13 09:33:09'),
(38, 37, 'Returned from Ministry', '2014-11-13 09:33:27'),
(39, 23, 'Forwarded to Ministry', '2014-11-13 09:46:33'),
(40, 23, 'Forwarded to Commission', '2014-11-13 09:47:28');

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
-- Table structure for table `tpp_concultant_details`
--

CREATE TABLE IF NOT EXISTS `tpp_concultant_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `concultant_name` varchar(256) NOT NULL,
  `education` text NOT NULL,
  `experience` text NOT NULL,
  `responsibility` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tpp_concultant_details`
--

INSERT INTO `tpp_concultant_details` (`id`, `pid`, `concultant_name`, `education`, `experience`, `responsibility`) VALUES
(1, 35, '33', 'dfasdf', 'sadf', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `tpp_cost_financing`
--

CREATE TABLE IF NOT EXISTS `tpp_cost_financing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `gob_inkind` double NOT NULL,
  `gob_incash_local` double NOT NULL,
  `gob_incash_fe` double NOT NULL,
  `gob_total` double NOT NULL,
  `gob_mode` text NOT NULL,
  `partner_inkind` double NOT NULL,
  `partner_incash_local` double NOT NULL,
  `partner_incash_fe` double NOT NULL,
  `partner_total` double NOT NULL,
  `partner_mode` text NOT NULL,
  `ownfund_inkind` double NOT NULL,
  `ownfund_incash_local` double NOT NULL,
  `ownfund_incash_fe` double NOT NULL,
  `ownfund_total` double NOT NULL,
  `ownfund_mode` text NOT NULL,
  `other_inkind` double NOT NULL,
  `other_incash_local` double NOT NULL,
  `other_incash_fe` double NOT NULL,
  `other_total` double NOT NULL,
  `other_mode` text NOT NULL,
  `grant_total_inkind` double NOT NULL,
  `grant_total_incash_local` double NOT NULL,
  `grant_total_incash_fe` double NOT NULL,
  `grant_total_total` double NOT NULL,
  `grant_total_mode` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tpp_cost_financing`
--

INSERT INTO `tpp_cost_financing` (`id`, `pid`, `gob_inkind`, `gob_incash_local`, `gob_incash_fe`, `gob_total`, `gob_mode`, `partner_inkind`, `partner_incash_local`, `partner_incash_fe`, `partner_total`, `partner_mode`, `ownfund_inkind`, `ownfund_incash_local`, `ownfund_incash_fe`, `ownfund_total`, `ownfund_mode`, `other_inkind`, `other_incash_local`, `other_incash_fe`, `other_total`, `other_mode`, `grant_total_inkind`, `grant_total_incash_local`, `grant_total_incash_fe`, `grant_total_total`, `grant_total_mode`) VALUES
(2, 35, 2, 3, 34, 39, 'rrr', 2, 4, 4, 10, 'tttt', 5, 5.8, 544, 554.8, 'sdfsdfsdttertr', 0, 4, 5.98, 9.98, 'dfgdf', 9, 16.8, 587.98, 613.78, 'dfgdf');

-- --------------------------------------------------------

--
-- Table structure for table `tpp_counter_person_details`
--

CREATE TABLE IF NOT EXISTS `tpp_counter_person_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `designation` text NOT NULL,
  `education` text NOT NULL,
  `experience` text NOT NULL,
  `task_to_performed` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tpp_counter_person_details`
--

INSERT INTO `tpp_counter_person_details` (`id`, `pid`, `designation`, `education`, `experience`, `task_to_performed`) VALUES
(2, 35, 'dfasdfsdfdsffsd', 'sdfsdfsdfsdff\r\nsdfsdfsdfsdf\r\nasdfdfdf', 'fsdfsdfsdf\r\nsdfsdfsf', 'sdfsdfasdfsd\r\nsdf\r\nsdfsdfsd\r\nsdfsdfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `tpp_part_a`
--

CREATE TABLE IF NOT EXISTS `tpp_part_a` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `terms_of_reference` text NOT NULL,
  `issue_make_successful` text NOT NULL,
  `issues_not_work_well` text NOT NULL,
  `amount_after_completion` double NOT NULL,
  `source_of_finance_after` text NOT NULL,
  `mode_of_financing` text NOT NULL,
  `expectation_after_completion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tpp_part_a`
--

INSERT INTO `tpp_part_a` (`id`, `pid`, `terms_of_reference`, `issue_make_successful`, `issues_not_work_well`, `amount_after_completion`, `source_of_finance_after`, `mode_of_financing`, `expectation_after_completion`) VALUES
(3, 35, '<p>dfas sdf asd</p>', '<p>asdf aasd f</p>', '<p>dfgdfg dfg g</p>', 333, '4545', '<p>asdfa asdfasdf</p>', '<p>sadf asdfasfd</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tpp_part_b`
--

CREATE TABLE IF NOT EXISTS `tpp_part_b` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `situation_analysis` text NOT NULL,
  `objectives_overall` text NOT NULL,
  `objectives_specfic` text NOT NULL,
  `mission_vision` text NOT NULL,
  `achieving_mission` text NOT NULL,
  `roles_of_project` text NOT NULL,
  `output_outcome` text NOT NULL,
  `monitoring_evalution` text NOT NULL,
  `legal_context` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tpp_part_b`
--

INSERT INTO `tpp_part_b` (`id`, `pid`, `situation_analysis`, `objectives_overall`, `objectives_specfic`, `mission_vision`, `achieving_mission`, `roles_of_project`, `output_outcome`, `monitoring_evalution`, `legal_context`) VALUES
(1, 35, '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', '<p>7</p>', '<p>8</p>', '<p>9</p>');

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
  `user_type` enum('Super Admin','Commission','Ministry','Agency','ECNEC') NOT NULL,
  `ministry_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `sector_division` int(11) NOT NULL,
  `user_permission` enum('Admin','User') NOT NULL DEFAULT 'User',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `designation`, `username`, `password`, `email`, `status`, `create_date`, `user_type`, `ministry_id`, `agency_id`, `company_id`, `sector_division`, `user_permission`) VALUES
(1, 'Sr. Software Engineer', 'admin', '3858f62230ac3c915f300c664312c63f', 'admin@evoknow.com', 'Active', '2006-01-23', 'Super Admin', 1, 2, 0, 0, 'Admin'),
(17, 'Sr. Engineer', 'agri', '02054b032812a9731d4385eebc9a39a9', 's@agri.com', 'Active', '2014-06-05', 'Ministry', 2, 0, 0, 0, 'Admin'),
(25, 'ddddd', 'bina1', 'bae323386189695c31e3e96cd7ea2020', 'samharun@gmail.com', 'Active', '2014-06-05', 'Agency', 2, 26, 0, 0, 'User'),
(26, 'Managing Director', 'bina', 'af7c14172fd3062c434bc56cb99fa703', 'bina@bina.com', 'Active', '2014-07-16', 'Agency', 2, 26, 0, 0, 'Admin'),
(27, 'Chief Executive Engineer', 'rhd', 'e7d8abbab93fe3a1b5b83f4358f8055f', 'rhd@rhd.com', 'Active', '2014-07-16', 'Agency', 6, 53, 0, 0, 'Admin'),
(28, 'ddddd', 'dae', '39c0b36f38aed3bd87307bb554c74d74', 'dae@gmail.com', 'Active', '2014-06-05', 'Agency', 2, 21, 0, 0, 'Admin'),
(30, 'Assistant Chief', 'comuser1', 'edcd266c143797743d7b767d56c3d902', 's@comuser.com', 'Active', '2014-06-05', 'Commission', 0, 0, 0, 3, 'Admin'),
(31, 'Division Chief', 'comuser2', '520a22d02467dfc33c049f80cd7ca490', 's1@comuser.com', 'Active', '0000-00-00', 'Commission', 0, 0, 0, 4, 'Admin'),
(32, 'Senior Asst Chief', 'deskofficer1', '66e29397377b159ccbd27ef73cf61942', 'deskOffice@gmail.com', 'Active', '0000-00-00', 'Commission', 0, 0, 0, 4, 'User'),
(33, 'Senior Asst Chief', 'badc', '7c00db9d0f083065f849ee883e2082af', 'badc@badc.gov.bd', 'Active', '0000-00-00', 'Agency', 2, 20, 0, 0, 'Admin'),
(34, 'Senior Assistant Chief', 'a_shipping', 'b7e39ce171bf57221ffd0513d05cc312', NULL, 'Active', '0000-00-00', 'Agency', 49, 326, 0, 0, 'User'),
(35, 'Secretary', 'm_shipping', '7d965f3d86f0dc0d1ac5a6c3c3e402f9', 'm@shipping.com', 'Active', '0000-00-00', 'Ministry', 49, 0, 0, 0, 'Admin'),
(36, 'Secretary', 'moeaf', '212282a6423e8f373191e3247197d583', NULL, 'Active', '0000-00-00', 'Ministry', 26, 0, 0, 0, 'Admin'),
(37, 'Senior Assistant Chief', 'doe', '2829fc16ad8ca5a79da932f910afad1c', 'doe@gmail.com', 'Active', '0000-00-00', 'Agency', 26, 197, 0, 0, 'User'),
(38, 'Secretary', 'rdcd', '4a78691031eed0608ad5578e66ed7723', 'rdcd@gmail.com', 'Active', '0000-00-00', 'Ministry', 46, 0, 0, 0, 'Admin'),
(39, 'Senior Assistant Chief', 'a_rdcd', '969dbd527c39618f0550b51aeef4317a', 'a_rdcd@gmail.com', 'Active', '0000-00-00', 'Agency', 46, 356, 0, 0, 'User'),
(40, 'Secretary', 'molae', 'd1690960a2ff17bf2193997b1f55ec20', 'molae@gmail.com', 'Active', '0000-00-00', 'Ministry', 28, 0, 0, 0, 'Admin'),
(41, 'Senior Assistant Chief', 'a_molae', '3f11b30e61ccab574bb7ae0cfecc6d4a', 'a_molae@gmail.com', 'Active', '0000-00-00', 'Agency', 28, 212, 0, 0, 'User'),
(42, 'Senior Assistant Chief', 'dof', '53ba48f431fe964bb656a05ed16d8e87', 'dof@gmail.com', 'Active', '0000-00-00', 'Agency', 37, 257, 0, 0, 'User'),
(43, 'Secretary', 'mofal', '71abff632dd791da19b195b6a86c41e6', 'mofal@gmail.com', 'Active', '0000-00-00', 'Ministry', 37, 0, 0, 0, 'Admin'),
(44, 'Secretary', 'mwca', 'd317eae3c5ab67e73ebe85fc4daee854', 'mwca@gmail.com', 'Active', '0000-00-00', 'Ministry', 36, 0, 0, 0, 'Admin'),
(45, 'Senior Assistant Chief', 'a_mwca', '12d7d0012a8a5a5a408b32dddd272bd2', 'a_mwca@gmail.com', 'Active', '0000-00-00', 'Agency', 36, 256, 0, 0, 'User'),
(46, 'Senior Assistant Chief', 'jms', '62e337a10fb349c1bfc3151c7ac12670', 'jms@gmail.com', 'Active', '0000-00-00', 'Agency', 36, 357, 0, 0, 'User'),
(47, 'Secretary', 'm_edu', 'c900dc48dd382b0bf88f928bc0315f35', 'm_edu@gmai.com', 'Active', '0000-00-00', 'Ministry', 7, 0, 0, 0, 'Admin'),
(48, 'Senior Assistant Chief', 'a_edu', '348cd2f528d3fe17479822614f6c7514', 'a_edu@gmail.com', 'Active', '0000-00-00', 'Agency', 7, 57, 0, 0, 'User'),
(49, 'Senior Assistant Chief', 'tec_edu', 'b810d191ac1d5515961d91f9bc79bd36', 'tec_edu@gmail.com', 'Active', '0000-00-00', 'Agency', 7, 63, 0, 0, 'User'),
(50, 'Senior Assistant Chief', 'shse_dhaka', '9d7ffc5bb6ed24bc15b0a8abf8946fb7', 'shse_dhaka@gmail.com', 'Active', '0000-00-00', 'Agency', 7, 68, 0, 0, 'User'),
(51, 'Secretary', 'm_indus', 'e50ac42867e4fc7799ce13dc5c9e85b4', 'm_indus@gmail.com', 'Active', '0000-00-00', 'Ministry', 40, 0, 0, 0, 'Admin'),
(52, 'Senior Assistant Chief', 'a_indus', '381e3168586b7cc86013987fa3a16651', 'a_indus@gmail.com', 'Active', '0000-00-00', 'Agency', 40, 266, 0, 0, 'User'),
(53, 'Senior Assistant Chief', 'bsfic', 'f862fd061e2c521caf6f06feb9b27a9d', 'bsfic@gmai.com', 'Active', '0000-00-00', 'Agency', 40, 360, 0, 0, 'User'),
(54, 'Senior Assistant Chief', 'npo', '49e7ae3a47bced4684acaeb5fd22d241', 'npo@gmail.com', 'Active', '0000-00-00', 'Agency', 40, 277, 0, 0, 'User'),
(55, 'Secretary', 'm_land', '05b9eb91702e85132c912ee6fdc81488', 'm_land@gmail.com', 'Active', '0000-00-00', 'Ministry', 35, 0, 0, 0, 'Admin'),
(56, 'Senior Assistant Chief', 'a_land', '47b1d511716509d1b137d8b64cf734a8', 'a_land@gmail.com', 'Active', '0000-00-00', 'Agency', 35, 254, 0, 0, 'User'),
(57, 'Senior Assistant Chief', 'm_program', 'cc9cbab763cbc799e7caab250ebf04da', 'm_program@gmail.com', 'Active', '0000-00-00', 'Ministry', 10, 0, 0, 0, 'User'),
(58, 'Senior Assistant Chief', 'a_program', '57a48009531d12cdfcd2d7735afc157b', 'a_program@gmail.com', 'Active', '0000-00-00', 'Agency', 10, 101, 0, 0, 'User'),
(59, 'Secretary', 'm_home', '0c3509c5396ff1aad9cb8a8c3ffe0ece', 'm_home@gmail.com', 'Active', '0000-00-00', 'Ministry', 44, 0, 0, 0, 'Admin'),
(60, 'Senior Assistant Chief', 'ansarvdp_bd', 'bd815adab3deed91e2e6e4c54b62077a', 'ansarvdp_bd@gmail.com', 'Active', '0000-00-00', 'Agency', 44, 306, 0, 0, 'User'),
(61, 'Senior Assistant Chief', 'a_home', '244954f0b96775dadae65d4ee53ff732', 'a_home@gmail.com', 'Active', '0000-00-00', 'Agency', 44, 298, 0, 0, 'User'),
(62, 'Secretary', 'm_planning', '542bee1c8986fdd5491d6f0a9103e462', 'm_planning@gmail.com', 'Active', '0000-00-00', 'Ministry', 10, 0, 0, 0, 'Admin'),
(63, 'Senior Assistant Chief', 'a_erd', '18e86d92578cf2a432a9569525ba6838', 'a_erd@gmail.com', 'Active', '0000-00-00', 'Agency', 16, 135, 0, 0, 'User'),
(64, 'Secretary', 'm_erd', '803ddf77cf6e65bd5e0c18c8253b9ac8', 'm_erd@gamil.com', 'Active', '0000-00-00', 'Ministry', 16, 0, 0, 0, 'Admin');

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
,`rpa_through_gob_total` double
,`rpa_special_account_total` double
,`dpa_total` double
,`year_total` double
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `year_wise_gob_ownfund` AS select sum(`ax`.`gob`) AS `gob_total`,sum(`ax`.`gob_fe`) AS `gob_fe_total`,sum(`ax`.`own_fund`) AS `own_fund_total`,sum(`ax`.`own_fund_fe`) AS `own_fund_fe_total`,sum(`ax`.`rpa_through_gob`) AS `rpa_through_gob_total`,sum(`ax`.`rpa_special_account`) AS `rpa_special_account_total`,sum(`ax`.`dpa`) AS `dpa_total`,sum(`ax`.`total`) AS `year_total`,`ax`.`pid` AS `pid`,`ax`.`year_serial` AS `year_serial`,`ax`.`financial_year` AS `financial_year` from `annexure_v_details` `ax` group by `ax`.`pid`,`ax`.`year_serial` order by `ax`.`year_serial`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
