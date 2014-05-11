-- phpMyAdmin SQL Dump
-- version 2.7.0-pl2
-- http://www.phpmyadmin.net
-- 
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2006 at 10:21 AM
-- Server version: 4.1.10
-- PHP Version: 4.4.0
-- 
-- Database: `default_project`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `app_info`
-- 

CREATE TABLE `app_info` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(128) NOT NULL default '',
  `description` text,
  `version` varchar(10) NOT NULL default '0.0.0',
  `app_msg_start` int(11) NOT NULL default '0',
  `app_msg_end` int(11) NOT NULL default '0',
  `fqpn` varchar(254) NOT NULL default '',
  `app_type` enum('Editor','Reporter','Wizard','Undefined') NOT NULL default 'Undefined',
  `author` varchar(128) NOT NULL default '',
  `license` enum('GPL','LGPL','Proprietary','Artistic License','Other Open Source License') NOT NULL default 'Proprietary',
  `status` enum('Assigned','In Progress','Alpha','Beta','Released','Maint Cycle','Unassigned') NOT NULL default 'Assigned',
  `doc_id` int(11) default NULL,
  `create_date` date NOT NULL default '0000-00-00',
  `last_updated` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Application Information Table' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `app_info`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `app_language`
-- 

CREATE TABLE `app_language` (
  `msg_lang` varchar(5) NOT NULL default '',
  `language` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`msg_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Available Application Message Languages';

-- 
-- Dumping data for table `app_language`
-- 

INSERT INTO `app_language` VALUES ('en-es', 'Spanish');
INSERT INTO `app_language` VALUES ('en-uk', 'UK English');
INSERT INTO `app_language` VALUES ('en-us', 'American English');

-- --------------------------------------------------------

-- 
-- Table structure for table `app_message`
-- 

CREATE TABLE `app_message` (
  `msg_code` int(11) NOT NULL default '0',
  `msg_lang` varchar(5) NOT NULL default '',
  `msg_type` enum('Error','Success','Informative') NOT NULL default 'Error',
  `msg_text` text NOT NULL,
  `msg_dev_hints` varchar(254) NOT NULL default '',
  `app_name` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`msg_code`,`msg_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Application Message Table';

-- 
-- Dumping data for table `app_message`
-- 

INSERT INTO `app_message` VALUES (130, 'en-us', 'Error', 'The email you provided does not match an existing user account.', 'ERROR_NO_EMAIL_FOUND', 'any');
INSERT INTO `app_message` VALUES (140, 'en-us', 'Error', 'Attempt to send an email to your account has failed. Please retry later or contact site administrator.', 'ERROR_EMAIL_NOT_SENT', 'any');
INSERT INTO `app_message` VALUES (150, 'en-us', 'Success', 'An email with password reset instructions has been sent to you. Please check your email and take appropriate actions.', 'SUCCESS_EMAIL_SENT', 'any');
INSERT INTO `app_message` VALUES (100, 'en-us', 'Error', 'The error message itself could not be found. The developer needs to address this issue.', 'ERR_APP_MESSAGE_NOT_FOUND', 'any');
INSERT INTO `app_message` VALUES (160, 'en-us', 'Success', 'Your password has been successfully reset.', 'SUCCESS_PASSWORD_CHANGED', 'any');
INSERT INTO `app_message` VALUES (170, 'en-us', 'Error', 'For security reasons, the password reset link is valid for only one attempt. The link you clicked on has already been used once. Please request another password reset email by clicking on the forgotten password link in the login form.', 'ERROR_INVALID_RESET_REQUEST', 'any');
INSERT INTO `app_message` VALUES (666, 'en-us', 'Error', 'You are not authorized to run this application. Please consult with the site administrator.', 'ERROR_UNAUTHORIZED_ACCESS', 'any');
INSERT INTO `app_message` VALUES (701, 'en-us', 'Error', 'Please enter a different name. A directory with the same FQPN already exists.', 'ERR_FQPN_EXISTS', 'any');
INSERT INTO `app_message` VALUES (702, 'en-us', 'Success', 'The application has been created successfully.', 'APP_ADDITION_SUCCESSFUL', 'any');
INSERT INTO `app_message` VALUES (703, 'en-us', 'Error', 'The application could not be created.', 'APP_ADDITION_FAILED', 'any');
INSERT INTO `app_message` VALUES (1011, 'en-us', 'Success', 'New User Information has been saved successfully. Thank You.', 'USER_SAVE_MSG', 'user_manager');
INSERT INTO `app_message` VALUES (1012, 'en-us', 'Success', 'User Information has been updated successfully. Thank you.', 'USER_UPDATE_MSG', 'user_manager');
INSERT INTO `app_message` VALUES (1013, 'en-us', 'Success', 'The selected User Information has been deleted successfully. Thank You.', 'USER_DELETE_MSG', 'user_manager');
INSERT INTO `app_message` VALUES (1021, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The User Information can not be saved. Please try again later.</font>', 'USER_SAVE_ERROR_MSG', 'user_manager');
INSERT INTO `app_message` VALUES (1031, 'en-us', 'Informative', 'The username you provided already exists in the database. Please try another username.', 'DUPLICATE_USERNAME', 'user_manager');
INSERT INTO `app_message` VALUES (1022, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The User Information can not be updated. Please try again later.</font>', 'USER_UPDATE_ERROR_MSG', 'user_manager');
INSERT INTO `app_message` VALUES (1023, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The User Information can not be deleted. Please try again later.</font>', 'USER_DELETE_ERROR_MSG', 'user_manager');
INSERT INTO `app_message` VALUES (1131, 'en-us', 'Informative', 'The group name you provided already exists in the database. Please try another group name.', 'DUPLICATE_GROUPNAME', 'group_manager');
INSERT INTO `app_message` VALUES (1123, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The Group Information can not be deleted. Please try again later.</font>', 'GROUP_DELETE_ERROR_MSG', 'group_manager');
INSERT INTO `app_message` VALUES (1122, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The Group Information can not be updated. Please try again later.</font>', 'GROUP_UPDATE_ERROR_MSG', 'group_manager');
INSERT INTO `app_message` VALUES (1121, 'en-us', 'Error', '<font color=\\"#cc0000\\">Sorry! The Group Information can not be saved. Please try again later.</font>', 'GROUP_SAVE_ERROR_MSG', 'group_manager');
INSERT INTO `app_message` VALUES (1113, 'en-us', 'Success', 'The selected Group Information has been deleted successfully. Thank You.', 'GROUP_DELETE_SUCCESS_MSG', 'group_manager');
INSERT INTO `app_message` VALUES (1112, 'en-us', 'Success', 'Group Information has been updated successfully. Thank you.', 'GROUP_UPDATE_SUCCESS_MSG', 'group_manager');
INSERT INTO `app_message` VALUES (1111, 'en-us', 'Success', 'New Group Information has been saved successfully. Thank You.', 'GROUP_SAVE_SUCCESS_MSG', 'group_manager');

-- --------------------------------------------------------

-- 
-- Table structure for table `app_meta`
-- 

CREATE TABLE `app_meta` (
  `app_id` int(11) NOT NULL default '0',
  `meta_key` varchar(128) NOT NULL default '',
  `meta_value` varchar(254) NOT NULL default '',
  PRIMARY KEY  (`app_id`,`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Application Meta Data Table';

-- 
-- Dumping data for table `app_meta`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `app_profile`
-- 

CREATE TABLE `app_profile` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `start` bigint(20) NOT NULL default '0',
  `end` bigint(20) NOT NULL default '0',
  `total` bigint(20) NOT NULL default '0',
  `code` text NOT NULL,
  `remote_ip` varchar(14) NOT NULL default '',
  `call` varchar(128) NOT NULL default '',
  `notes` tinytext,
  `run_date` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Application profile data' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `app_profile`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `country_lookup`
-- 

CREATE TABLE `country_lookup` (
  `name` varchar(64) NOT NULL default '',
  `id` char(2) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `country_lookup`
-- 

INSERT INTO `country_lookup` VALUES ('Andorra', 'AD');
INSERT INTO `country_lookup` VALUES ('United Arab Emirates', 'AE');
INSERT INTO `country_lookup` VALUES ('Afghanistan', 'AF');
INSERT INTO `country_lookup` VALUES ('Antigua and Barbuda', 'AG');
INSERT INTO `country_lookup` VALUES ('Anguilla', 'AI');
INSERT INTO `country_lookup` VALUES ('Albania', 'AL');
INSERT INTO `country_lookup` VALUES ('Armenia', 'AM');
INSERT INTO `country_lookup` VALUES ('Netherlands Antilles', 'AN');
INSERT INTO `country_lookup` VALUES ('Angola', 'AO');
INSERT INTO `country_lookup` VALUES ('Argentina', 'AR');
INSERT INTO `country_lookup` VALUES ('American Samoa', 'AS');
INSERT INTO `country_lookup` VALUES ('Austria', 'AT');
INSERT INTO `country_lookup` VALUES ('Australia', 'AU');
INSERT INTO `country_lookup` VALUES ('Aruba', 'AW');
INSERT INTO `country_lookup` VALUES ('Azerbaijan', 'AZ');
INSERT INTO `country_lookup` VALUES ('Bosnia and Herzegowina', 'BA');
INSERT INTO `country_lookup` VALUES ('Barbados', 'BB');
INSERT INTO `country_lookup` VALUES ('Bangladesh', 'BD');
INSERT INTO `country_lookup` VALUES ('Belgium', 'BE');
INSERT INTO `country_lookup` VALUES ('Burkina Faso', 'BF');
INSERT INTO `country_lookup` VALUES ('Bulgaria', 'BG');
INSERT INTO `country_lookup` VALUES ('Bahrain', 'BH');
INSERT INTO `country_lookup` VALUES ('Burundi', 'BI');
INSERT INTO `country_lookup` VALUES ('Benin', 'BJ');
INSERT INTO `country_lookup` VALUES ('Bermuda', 'BM');
INSERT INTO `country_lookup` VALUES ('Brunei Darussalam', 'BN');
INSERT INTO `country_lookup` VALUES ('Bolivia', 'BO');
INSERT INTO `country_lookup` VALUES ('Brazil', 'BR');
INSERT INTO `country_lookup` VALUES ('Bahamas', 'BS');
INSERT INTO `country_lookup` VALUES ('Bhutan', 'BT');
INSERT INTO `country_lookup` VALUES ('Bouvet Island', 'BV');
INSERT INTO `country_lookup` VALUES ('Botswana', 'BW');
INSERT INTO `country_lookup` VALUES ('Belarus', 'BY');
INSERT INTO `country_lookup` VALUES ('Belize', 'BZ');
INSERT INTO `country_lookup` VALUES ('Canada', 'CA');
INSERT INTO `country_lookup` VALUES ('Cocos (Keeling) Islands', 'CC');
INSERT INTO `country_lookup` VALUES ('Central African Republic', 'CF');
INSERT INTO `country_lookup` VALUES ('Congo', 'CG');
INSERT INTO `country_lookup` VALUES ('Switzerland', 'CH');
INSERT INTO `country_lookup` VALUES ('Cote D''Ivoire', 'CI');
INSERT INTO `country_lookup` VALUES ('Cook Islands', 'CK');
INSERT INTO `country_lookup` VALUES ('Chile', 'CL');
INSERT INTO `country_lookup` VALUES ('Cameroon', 'CM');
INSERT INTO `country_lookup` VALUES ('China', 'CN');
INSERT INTO `country_lookup` VALUES ('Colombia', 'CO');
INSERT INTO `country_lookup` VALUES ('Costa Rica', 'CR');
INSERT INTO `country_lookup` VALUES ('Cuba', 'CU');
INSERT INTO `country_lookup` VALUES ('Cape Verde', 'CV');
INSERT INTO `country_lookup` VALUES ('Christmas Island', 'CX');
INSERT INTO `country_lookup` VALUES ('Cyprus', 'CY');
INSERT INTO `country_lookup` VALUES ('Czech Republic', 'CZ');
INSERT INTO `country_lookup` VALUES ('Germany', 'DE');
INSERT INTO `country_lookup` VALUES ('Djibouti', 'DJ');
INSERT INTO `country_lookup` VALUES ('Denmark', 'DK');
INSERT INTO `country_lookup` VALUES ('Dominica', 'DM');
INSERT INTO `country_lookup` VALUES ('Dominican Republic', 'DO');
INSERT INTO `country_lookup` VALUES ('Algeria', 'DZ');
INSERT INTO `country_lookup` VALUES ('Ecuador', 'EC');
INSERT INTO `country_lookup` VALUES ('Estonia', 'EE');
INSERT INTO `country_lookup` VALUES ('Egypt', 'EG');
INSERT INTO `country_lookup` VALUES ('Western Sahara', 'EH');
INSERT INTO `country_lookup` VALUES ('Eritrea', 'ER');
INSERT INTO `country_lookup` VALUES ('Spain', 'ES');
INSERT INTO `country_lookup` VALUES ('Ethiopia', 'ET');
INSERT INTO `country_lookup` VALUES ('Finland', 'FI');
INSERT INTO `country_lookup` VALUES ('Fiji', 'FJ');
INSERT INTO `country_lookup` VALUES ('Falkland Islands (Malvinas)', 'FK');
INSERT INTO `country_lookup` VALUES ('Micronesia, Federated States of', 'FM');
INSERT INTO `country_lookup` VALUES ('Faroe Islands', 'FO');
INSERT INTO `country_lookup` VALUES ('France', 'FR');
INSERT INTO `country_lookup` VALUES ('France, Metropolitan', 'FX');
INSERT INTO `country_lookup` VALUES ('Gabon', 'GA');
INSERT INTO `country_lookup` VALUES ('Grenada', 'GD');
INSERT INTO `country_lookup` VALUES ('Georgia', 'GE');
INSERT INTO `country_lookup` VALUES ('French Guiana', 'GF');
INSERT INTO `country_lookup` VALUES ('Ghana', 'GH');
INSERT INTO `country_lookup` VALUES ('Gibraltar', 'GI');
INSERT INTO `country_lookup` VALUES ('Greenland', 'GL');
INSERT INTO `country_lookup` VALUES ('Gambia', 'GM');
INSERT INTO `country_lookup` VALUES ('Guinea', 'GN');
INSERT INTO `country_lookup` VALUES ('Guadeloupe', 'GP');
INSERT INTO `country_lookup` VALUES ('Equatorial Guinea', 'GQ');
INSERT INTO `country_lookup` VALUES ('Greece', 'GR');
INSERT INTO `country_lookup` VALUES ('South Georgia and the South Sandwich Islands', 'GS');
INSERT INTO `country_lookup` VALUES ('Guatemala', 'GT');
INSERT INTO `country_lookup` VALUES ('Guam', 'GU');
INSERT INTO `country_lookup` VALUES ('Guinea-bissau', 'GW');
INSERT INTO `country_lookup` VALUES ('Guyana', 'GY');
INSERT INTO `country_lookup` VALUES ('Hong Kong', 'HK');
INSERT INTO `country_lookup` VALUES ('Heard and Mc Donald Islands', 'HM');
INSERT INTO `country_lookup` VALUES ('Honduras', 'HN');
INSERT INTO `country_lookup` VALUES ('Croatia', 'HR');
INSERT INTO `country_lookup` VALUES ('Haiti', 'HT');
INSERT INTO `country_lookup` VALUES ('Hungary', 'HU');
INSERT INTO `country_lookup` VALUES ('Indonesia', 'ID');
INSERT INTO `country_lookup` VALUES ('Ireland', 'IE');
INSERT INTO `country_lookup` VALUES ('Israel', 'IL');
INSERT INTO `country_lookup` VALUES ('India', 'IN');
INSERT INTO `country_lookup` VALUES ('British Indian Ocean Territory', 'IO');
INSERT INTO `country_lookup` VALUES ('Iraq', 'IQ');
INSERT INTO `country_lookup` VALUES ('Iran (Islamic Republic of)', 'IR');
INSERT INTO `country_lookup` VALUES ('Iceland', 'IS');
INSERT INTO `country_lookup` VALUES ('Italy', 'IT');
INSERT INTO `country_lookup` VALUES ('Jamaica', 'JM');
INSERT INTO `country_lookup` VALUES ('Jordan', 'JO');
INSERT INTO `country_lookup` VALUES ('Japan', 'JP');
INSERT INTO `country_lookup` VALUES ('Kenya', 'KE');
INSERT INTO `country_lookup` VALUES ('Kyrgyzstan', 'KG');
INSERT INTO `country_lookup` VALUES ('Cambodia', 'KH');
INSERT INTO `country_lookup` VALUES ('Kiribati', 'KI');
INSERT INTO `country_lookup` VALUES ('Comoros', 'KM');
INSERT INTO `country_lookup` VALUES ('Saint Kitts and Nevis', 'KN');
INSERT INTO `country_lookup` VALUES ('Korea, Democratic People''s Republic of', 'KP');
INSERT INTO `country_lookup` VALUES ('Korea, Republic of', 'KR');
INSERT INTO `country_lookup` VALUES ('Kuwait', 'KW');
INSERT INTO `country_lookup` VALUES ('Cayman Islands', 'KY');
INSERT INTO `country_lookup` VALUES ('Kazakhstan', 'KZ');
INSERT INTO `country_lookup` VALUES ('Lao People''s Democratic Republic', 'LA');
INSERT INTO `country_lookup` VALUES ('Lebanon', 'LB');
INSERT INTO `country_lookup` VALUES ('Saint Lucia', 'LC');
INSERT INTO `country_lookup` VALUES ('Liechtenstein', 'LI');
INSERT INTO `country_lookup` VALUES ('Sri Lanka', 'LK');
INSERT INTO `country_lookup` VALUES ('Liberia', 'LR');
INSERT INTO `country_lookup` VALUES ('Lesotho', 'LS');
INSERT INTO `country_lookup` VALUES ('Lithuania', 'LT');
INSERT INTO `country_lookup` VALUES ('Luxembourg', 'LU');
INSERT INTO `country_lookup` VALUES ('Latvia', 'LV');
INSERT INTO `country_lookup` VALUES ('Libyan Arab Jamahiriya', 'LY');
INSERT INTO `country_lookup` VALUES ('Morocco', 'MA');
INSERT INTO `country_lookup` VALUES ('Monaco', 'MC');
INSERT INTO `country_lookup` VALUES ('Moldova, Republic of', 'MD');
INSERT INTO `country_lookup` VALUES ('Madagascar', 'MG');
INSERT INTO `country_lookup` VALUES ('Marshall Islands', 'MH');
INSERT INTO `country_lookup` VALUES ('Macedonia, The Former Yugoslav Republic of', 'MK');
INSERT INTO `country_lookup` VALUES ('Mali', 'ML');
INSERT INTO `country_lookup` VALUES ('Myanmar', 'MM');
INSERT INTO `country_lookup` VALUES ('Mongolia', 'MN');
INSERT INTO `country_lookup` VALUES ('Macau', 'MO');
INSERT INTO `country_lookup` VALUES ('Northern Mariana Islands', 'MP');
INSERT INTO `country_lookup` VALUES ('Martinique', 'MQ');
INSERT INTO `country_lookup` VALUES ('Mauritania', 'MR');
INSERT INTO `country_lookup` VALUES ('Montserrat', 'MS');
INSERT INTO `country_lookup` VALUES ('Malta', 'MT');
INSERT INTO `country_lookup` VALUES ('Mauritius', 'MU');
INSERT INTO `country_lookup` VALUES ('Maldives', 'MV');
INSERT INTO `country_lookup` VALUES ('Malawi', 'MW');
INSERT INTO `country_lookup` VALUES ('Mexico', 'MX');
INSERT INTO `country_lookup` VALUES ('Malaysia', 'MY');
INSERT INTO `country_lookup` VALUES ('Mozambique', 'MZ');
INSERT INTO `country_lookup` VALUES ('Namibia', 'NA');
INSERT INTO `country_lookup` VALUES ('New Caledonia', 'NC');
INSERT INTO `country_lookup` VALUES ('Niger', 'NE');
INSERT INTO `country_lookup` VALUES ('Norfolk Island', 'NF');
INSERT INTO `country_lookup` VALUES ('Nigeria', 'NG');
INSERT INTO `country_lookup` VALUES ('Nicaragua', 'NI');
INSERT INTO `country_lookup` VALUES ('Netherlands', 'NL');
INSERT INTO `country_lookup` VALUES ('Norway', 'NO');
INSERT INTO `country_lookup` VALUES ('Nepal', 'NP');
INSERT INTO `country_lookup` VALUES ('Nauru', 'NR');
INSERT INTO `country_lookup` VALUES ('Niue', 'NU');
INSERT INTO `country_lookup` VALUES ('New Zealand', 'NZ');
INSERT INTO `country_lookup` VALUES ('Oman', 'OM');
INSERT INTO `country_lookup` VALUES ('Panama', 'PA');
INSERT INTO `country_lookup` VALUES ('Peru', 'PE');
INSERT INTO `country_lookup` VALUES ('French Polynesia', 'PF');
INSERT INTO `country_lookup` VALUES ('Papua New Guinea', 'PG');
INSERT INTO `country_lookup` VALUES ('Philippines', 'PH');
INSERT INTO `country_lookup` VALUES ('Pakistan', 'PK');
INSERT INTO `country_lookup` VALUES ('Poland', 'PL');
INSERT INTO `country_lookup` VALUES ('St. Pierre and Miquelon', 'PM');
INSERT INTO `country_lookup` VALUES ('Pitcairn', 'PN');
INSERT INTO `country_lookup` VALUES ('Puerto Rico', 'PR');
INSERT INTO `country_lookup` VALUES ('Portugal', 'PT');
INSERT INTO `country_lookup` VALUES ('Palau', 'PW');
INSERT INTO `country_lookup` VALUES ('Paraguay', 'PY');
INSERT INTO `country_lookup` VALUES ('Qatar', 'QA');
INSERT INTO `country_lookup` VALUES ('Reunion', 'RE');
INSERT INTO `country_lookup` VALUES ('Romania', 'RO');
INSERT INTO `country_lookup` VALUES ('Russian Federation', 'RU');
INSERT INTO `country_lookup` VALUES ('Rwanda', 'RW');
INSERT INTO `country_lookup` VALUES ('Saudi Arabia', 'SA');
INSERT INTO `country_lookup` VALUES ('Solomon Islands', 'SB');
INSERT INTO `country_lookup` VALUES ('Seychelles', 'SC');
INSERT INTO `country_lookup` VALUES ('Sudan', 'SD');
INSERT INTO `country_lookup` VALUES ('Sweden', 'SE');
INSERT INTO `country_lookup` VALUES ('Singapore', 'SG');
INSERT INTO `country_lookup` VALUES ('St. Helena', 'SH');
INSERT INTO `country_lookup` VALUES ('Slovenia', 'SI');
INSERT INTO `country_lookup` VALUES ('Svalbard and Jan Mayen Islands', 'SJ');
INSERT INTO `country_lookup` VALUES ('Slovakia (Slovak Republic)', 'SK');
INSERT INTO `country_lookup` VALUES ('Sierra Leone', 'SL');
INSERT INTO `country_lookup` VALUES ('San Marino', 'SM');
INSERT INTO `country_lookup` VALUES ('Senegal', 'SN');
INSERT INTO `country_lookup` VALUES ('Somalia', 'SO');
INSERT INTO `country_lookup` VALUES ('Suriname', 'SR');
INSERT INTO `country_lookup` VALUES ('Sao Tome and Principe', 'ST');
INSERT INTO `country_lookup` VALUES ('El Salvador', 'SV');
INSERT INTO `country_lookup` VALUES ('Syrian Arab Republic', 'SY');
INSERT INTO `country_lookup` VALUES ('Swaziland', 'SZ');
INSERT INTO `country_lookup` VALUES ('Turks and Caicos Islands', 'TC');
INSERT INTO `country_lookup` VALUES ('Chad', 'TD');
INSERT INTO `country_lookup` VALUES ('French Southern Territories', 'TF');
INSERT INTO `country_lookup` VALUES ('Togo', 'TG');
INSERT INTO `country_lookup` VALUES ('Thailand', 'TH');
INSERT INTO `country_lookup` VALUES ('Tajikistan', 'TJ');
INSERT INTO `country_lookup` VALUES ('Tokelau', 'TK');
INSERT INTO `country_lookup` VALUES ('Turkmenistan', 'TM');
INSERT INTO `country_lookup` VALUES ('Tunisia', 'TN');
INSERT INTO `country_lookup` VALUES ('Tonga', 'TO');
INSERT INTO `country_lookup` VALUES ('East Timor', 'TP');
INSERT INTO `country_lookup` VALUES ('Turkey', 'TR');
INSERT INTO `country_lookup` VALUES ('Trinidad and Tobago', 'TT');
INSERT INTO `country_lookup` VALUES ('Tuvalu', 'TV');
INSERT INTO `country_lookup` VALUES ('Taiwan', 'TW');
INSERT INTO `country_lookup` VALUES ('Tanzania, United Republic of', 'TZ');
INSERT INTO `country_lookup` VALUES ('Ukraine', 'UA');
INSERT INTO `country_lookup` VALUES ('Uganda', 'UG');
INSERT INTO `country_lookup` VALUES ('United Kingdom', 'UK');
INSERT INTO `country_lookup` VALUES ('United States Minor Outlying Islands', 'UM');
INSERT INTO `country_lookup` VALUES ('United States', 'US');
INSERT INTO `country_lookup` VALUES ('Uruguay', 'UY');
INSERT INTO `country_lookup` VALUES ('Uzbekistan', 'UZ');
INSERT INTO `country_lookup` VALUES ('Vatican City State (Holy See)', 'VA');
INSERT INTO `country_lookup` VALUES ('Saint Vincent and the Grenadines', 'VC');
INSERT INTO `country_lookup` VALUES ('Venezuela', 'VE');
INSERT INTO `country_lookup` VALUES ('Virgin Islands (British)', 'VG');
INSERT INTO `country_lookup` VALUES ('Virgin Islands (U.S.)', 'VI');
INSERT INTO `country_lookup` VALUES ('Viet Nam', 'VN');
INSERT INTO `country_lookup` VALUES ('Vanuatu', 'VU');
INSERT INTO `country_lookup` VALUES ('Wallis and Futuna Islands', 'WF');
INSERT INTO `country_lookup` VALUES ('Samoa', 'WS');
INSERT INTO `country_lookup` VALUES ('Yemen', 'YE');
INSERT INTO `country_lookup` VALUES ('Mayotte', 'YT');
INSERT INTO `country_lookup` VALUES ('Yugoslavia', 'YU');
INSERT INTO `country_lookup` VALUES ('South Africa', 'ZA');
INSERT INTO `country_lookup` VALUES ('Zambia', 'ZM');
INSERT INTO `country_lookup` VALUES ('Zaire', 'ZR');
INSERT INTO `country_lookup` VALUES ('Zimbabwe', 'ZW');

-- --------------------------------------------------------

-- 
-- Table structure for table `document`
-- 

CREATE TABLE `document` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(254) NOT NULL default '',
  `mime_type` varchar(128) NOT NULL default '',
  `local_filename` varchar(254) NOT NULL default '',
  `remote_filename` varchar(254) NOT NULL default '',
  `doc_dir` text NOT NULL,
  `keywords` text NOT NULL,
  `size` bigint(20) NOT NULL default '0',
  `access_type` enum('Public','Private','Group') NOT NULL default 'Public',
  `owner_id` int(11) NOT NULL default '0',
  `permission_group_id` int(11) NOT NULL default '0',
  `group_access_rights` enum('None','Read Only','Read-Write') default 'None',
  `world_access_rights` enum('None','Read Only','Read-Write') default 'None',
  `status` enum('Normal','Deleted','Archive') NOT NULL default 'Normal',
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Document table' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `document`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `group`
-- 

CREATE TABLE `group` (
  `group_id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `group_type` enum('Customer','Customer Service','Engineering','Management','Marketing','Operations','Production','Quality Assurance','Quality Control','Representative','Sales','Support','Technicans','Others') NOT NULL default 'Customer',
  `created_by` bigint(20) NOT NULL default '0',
  `group_email` varchar(128) NOT NULL default '',
  `group_leader` bigint(20) NOT NULL default '0',
  `description` varchar(255) default NULL,
  `status` enum('Active','Planned','Inactive') NOT NULL default 'Active',
  `create_date` date NOT NULL default '0000-00-00',
  `last_updated` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`group_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `group_email` (`group_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `group`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `us_states`
-- 

CREATE TABLE `us_states` (
  `id` char(2) NOT NULL default '',
  `name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `us_states`
-- 

INSERT INTO `us_states` VALUES ('AK', 'Alaska');
INSERT INTO `us_states` VALUES ('AL', 'Alabama');
INSERT INTO `us_states` VALUES ('AR', 'Arkansas');
INSERT INTO `us_states` VALUES ('AZ', 'Arizona');
INSERT INTO `us_states` VALUES ('CA', 'California');
INSERT INTO `us_states` VALUES ('CO', 'Colorado');
INSERT INTO `us_states` VALUES ('CT', 'Connecticut');
INSERT INTO `us_states` VALUES ('DC', 'Dist of Columbia');
INSERT INTO `us_states` VALUES ('DE', 'Delaware');
INSERT INTO `us_states` VALUES ('FL', 'Florida');
INSERT INTO `us_states` VALUES ('GA', 'Georgia');
INSERT INTO `us_states` VALUES ('HI', 'Hawaii');
INSERT INTO `us_states` VALUES ('IA', 'Iowa');
INSERT INTO `us_states` VALUES ('ID', 'Idaho');
INSERT INTO `us_states` VALUES ('IL', 'Illinois');
INSERT INTO `us_states` VALUES ('IN', 'Indiana');
INSERT INTO `us_states` VALUES ('KS', 'Kansas');
INSERT INTO `us_states` VALUES ('KY', 'Kentucky');
INSERT INTO `us_states` VALUES ('LA', 'Louisiana');
INSERT INTO `us_states` VALUES ('MA', 'Massachusetts');
INSERT INTO `us_states` VALUES ('MD', 'Maryland');
INSERT INTO `us_states` VALUES ('ME', 'Maine');
INSERT INTO `us_states` VALUES ('MI', 'Michigan');
INSERT INTO `us_states` VALUES ('MN', 'Minnesota');
INSERT INTO `us_states` VALUES ('MO', 'Missouri');
INSERT INTO `us_states` VALUES ('MS', 'Mississippi');
INSERT INTO `us_states` VALUES ('MT', 'Montana');
INSERT INTO `us_states` VALUES ('NC', 'North Carolina');
INSERT INTO `us_states` VALUES ('ND', 'North Dakota');
INSERT INTO `us_states` VALUES ('NE', 'Nebraska');
INSERT INTO `us_states` VALUES ('NH', 'New Hampshire');
INSERT INTO `us_states` VALUES ('NJ', 'New Jersey');
INSERT INTO `us_states` VALUES ('NM', 'New Mexico');
INSERT INTO `us_states` VALUES ('NV', 'Nevada');
INSERT INTO `us_states` VALUES ('NY', 'New York');
INSERT INTO `us_states` VALUES ('OH', 'Ohio');
INSERT INTO `us_states` VALUES ('OK', 'Oklahoma');
INSERT INTO `us_states` VALUES ('OR', 'Oregon');
INSERT INTO `us_states` VALUES ('PA', 'Pennsylvania');
INSERT INTO `us_states` VALUES ('RI', 'Rhode Island');
INSERT INTO `us_states` VALUES ('SC', 'South Carolina');
INSERT INTO `us_states` VALUES ('SD', 'South Dakota');
INSERT INTO `us_states` VALUES ('TN', 'Tennessee');
INSERT INTO `us_states` VALUES ('TX', 'Texas');
INSERT INTO `us_states` VALUES ('UT', 'Utah');
INSERT INTO `us_states` VALUES ('VA', 'Virginia');
INSERT INTO `us_states` VALUES ('VT', 'Vermont');
INSERT INTO `us_states` VALUES ('WA', 'Washington');
INSERT INTO `us_states` VALUES ('WI', 'Wisconsin');
INSERT INTO `us_states` VALUES ('WV', 'West Virginia');
INSERT INTO `us_states` VALUES ('WY', 'Wyoming');

-- --------------------------------------------------------

-- 
-- Table structure for table `user`
-- 

CREATE TABLE `user` (
  `uid` bigint(20) NOT NULL auto_increment,
  `first_name` varchar(50) default NULL,
  `middle_initial` char(1) default NULL,
  `last_name` varchar(50) default NULL,
  `username` varchar(50) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `email` varchar(50) default NULL,
  `secondary_email` varchar(50) default NULL,
  `status` enum('Active','Inactive','Archived') NOT NULL default 'Active',
  `photo_id` int(11) default NULL,
  `create_date` date NOT NULL default '0000-00-00',
  `last_updated` date NOT NULL default '0000-00-00',
  `user_type` enum('Admin','Employee','Customer','Guest') NOT NULL default 'Employee',
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` VALUES (1, 'Admin', 'I', 'Blaster', 'admin', '3858f62230ac3c915f300c664312c63f', 'admin@evoknow.com', NULL, 'Active', NULL, '2006-01-23', '0000-00-00', 'Admin');

-- --------------------------------------------------------

-- 
-- Table structure for table `user_address`
-- 

CREATE TABLE `user_address` (
  `user_id` bigint(20) NOT NULL default '0',
  `address1` varchar(128) NOT NULL default '',
  `address2` varchar(128) default NULL,
  `city` varchar(32) NOT NULL default '',
  `state` varchar(50) NOT NULL default '',
  `zipcode` varchar(20) NOT NULL default '',
  `country` char(2) NOT NULL default '',
  `home_phone` varchar(20) NOT NULL default '',
  `work_phone` varchar(20) NOT NULL default '',
  `cell_phone` varchar(20) NOT NULL default '',
  `create_date` date NOT NULL default '0000-00-00',
  `last_updated` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `user_address`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `user_group`
-- 

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL default '0',
  `user_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`group_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `user_group`
-- 


-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `user_group`
-- 
ALTER TABLE `user_group`
  ADD CONSTRAINT `user_group_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_group_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;
