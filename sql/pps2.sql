-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2014 at 06:21 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `agency_lookup`
--

INSERT INTO `agency_lookup` (`id`, `ministry_id`, `name`, `status`) VALUES
(1, 1, 'Dhaka WASA', 'Active'),
(2, 1, 'Chittagong WASA', 'Active');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Document table' AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ministry_lookup`
--

INSERT INTO `ministry_lookup` (`id`, `name`, `status`) VALUES
(1, 'Local Government Division', 'Active'),
(2, 'Ministry of Agriculture', 'Active'),
(3, 'Power Division', 'Active'),
(4, 'Bridge Division', 'Active'),
(5, 'Ministry of Railways', 'Active'),
(6, 'Roads Division', 'Active'),
(7, 'Ministry of Education', 'Active'),
(8, 'Ministry of Water Resources', 'Active'),
(9, 'Ministry of Primary & Mass Education (MOPME)', 'Active'),
(10, 'Ministry of Planning', 'Active');

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
  `total_cost` double NOT NULL,
  `gob_cost` double NOT NULL,
  `pa_cost` double NOT NULL,
  `own_fand_cost` double NOT NULL,
  `others_cost` double NOT NULL,
  `exchange_rate` varchar(512) NOT NULL,
  `status` enum('Draff','Approved','Rejected') NOT NULL DEFAULT 'Draff',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Projects of all DPP, TPP' AUTO_INCREMENT=23 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_title_en`, `project_title_bn`, `project_type`, `create_date`, `date_of_commencement`, `date_of_completion`, `adp_sector`, `adp_sub_sector`, `sector_division`, `objectives`, `total_cost`, `gob_cost`, `pa_cost`, `own_fand_cost`, `others_cost`, `exchange_rate`, `status`) VALUES
(19, 'Implementation of Digital ECNEC', 'Implementation of Digital ECNEC', 'TPP', '2014-05-07 06:58:31', '2013-01-01', '2015-12-31', 8, 12, 2, 'dssssssssssssss', 0, 0, 0, 0, 0, 'asdf asdfasdf', 'Draff');

-- --------------------------------------------------------

--
-- Table structure for table `project_agencies`
--

CREATE TABLE IF NOT EXISTS `project_agencies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `agency_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `project_agencies`
--

INSERT INTO `project_agencies` (`id`, `pid`, `agency_id`) VALUES
(23, 19, 2),
(24, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_dev_partners`
--

CREATE TABLE IF NOT EXISTS `project_dev_partners` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `dev_partner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `project_dev_partners`
--

INSERT INTO `project_dev_partners` (`id`, `pid`, `dev_partner_id`) VALUES
(16, 19, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `project_locations`
--

INSERT INTO `project_locations` (`id`, `pid`, `location_id`, `location_type`, `location_cost`, `location_comments`) VALUES
(47, 19, 1, 'Division', 0, ''),
(48, 19, 2, 'Division', 0, ''),
(49, 19, 1, 'District', 0, ''),
(50, 19, 2, 'District', 0, ''),
(51, 19, 1, 'Upzila', 0, ''),
(52, 19, 2, 'Upzila', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `project_ministries`
--

CREATE TABLE IF NOT EXISTS `project_ministries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `ministry_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `project_ministries`
--

INSERT INTO `project_ministries` (`id`, `pid`, `ministry_id`) VALUES
(51, 19, 1),
(52, 19, 10),
(53, 19, 9),
(54, 19, 5),
(55, 19, 3),
(56, 19, 6);

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
  `loan_specify` double NOT NULL,
  `loan_pa_source` text NOT NULL,
  `grant_gob` double NOT NULL,
  `grant_gob_fe` double NOT NULL,
  `grant_pa` double NOT NULL,
  `grant_rpa` double NOT NULL,
  `grant_own_fund` double NOT NULL,
  `grant_own_fund_fe` double NOT NULL,
  `grant_others` double NOT NULL,
  `grant_specify` double NOT NULL,
  `grant_pa_source` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `project_mode_financing`
--

INSERT INTO `project_mode_financing` (`id`, `pid`, `loan_gob`, `loan_gob_fe`, `loan_pa`, `loan_rpa`, `loan_own_fund`, `loan_own_fund_fe`, `loan_others`, `loan_specify`, `loan_pa_source`, `grant_gob`, `grant_gob_fe`, `grant_pa`, `grant_rpa`, `grant_own_fund`, `grant_own_fund_fe`, `grant_others`, `grant_specify`, `grant_pa_source`) VALUES
(1, 19, 1111, 2, 3, 4, 5, 6, 7, 8, '9', 1, 2, 3, 4, 5, 6, 7, 8, '9'),
(3, 0, 1111, 2, 3, 4, 5, 6, 7, 8, '9', 1, 2, 3, 4, 5, 6, 7, 8, '9');

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
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `designation` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) DEFAULT NULL,
  `secondary_email` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive','Archived') NOT NULL DEFAULT 'Active',
  `photo_id` int(11) DEFAULT NULL,
  `create_date` date NOT NULL DEFAULT '0000-00-00',
  `last_updated` date NOT NULL DEFAULT '0000-00-00',
  `user_type` enum('Admin','Employee','Customer','Guest') NOT NULL DEFAULT 'Employee',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `designation`, `username`, `password`, `email`, `secondary_email`, `status`, `photo_id`, `create_date`, `last_updated`, `user_type`) VALUES
(1, 'Admin', 'I', 'admin', '3858f62230ac3c915f300c664312c63f', 'admin@evoknow.com', NULL, 'Active', NULL, '2006-01-23', '0000-00-00', 'Admin'),
(2, NULL, NULL, '', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, 'Active', NULL, '2014-05-10', '0000-00-00', 'Employee');

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
(2, '', NULL, '', '', '', '', '', '', '', '2014-05-10', '0000-00-00');

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_group`
--
ALTER TABLE `user_group`
  ADD CONSTRAINT `user_group_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_group_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
