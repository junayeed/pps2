<?php
   /*******************************************************
    *  File name: database.conf.php
    *
    *  Purpose: this file is used to store database
    *           table name constants and it also starts
    *           the database connection
    *
    *  CVS ID: $Id$
    *
    ********************************************************/

   // If main configuration file which defines VERSION constant
   // is not loaded, die!
   if (! defined('VERSION'))
   {
      echo "You cannot access this file directly!";
      die();
   }

  // Please note:
  // in production mode, the database authentication information
  // may vary.
  if (PRODUCTION_MODE)
  {
     define('DB_USER', 'username');
     define('DB_PASS', 'password');
     define('DB_NAME', 'database');
     define('DB_HOST', 'localhost');
  }
  else
  {
    define('DB_USER', 'root');
    define('DB_PASS', '');

    define('DB_NAME', 'pps2');
    define('DB_HOST', '127.0.0.1');
  }

  /**
  * Common Table Constant
  */
  // Common Tables
  define('APP_INFO_TBL',                 DB_NAME . '.app_info');
  define('APP_LANGUAGE_TBL',             DB_NAME . '.app_language');
  define('APP_MESSAGE_TBL',              DB_NAME . '.app_message');
  define('APP_META_TBL',                 DB_NAME . '.app_meta');
  define('APP_PROFILE_TBL',              DB_NAME . '.app_profile');

  define('COUNTRY_LOOKUP_TBL',           DB_NAME . '.country_lookup');
  define('MINISTRY_LOOKUP_TBL',          DB_NAME . '.ministry_lookup');
  define('AGENCY_LOOKUP_TBL',            DB_NAME . '.agency_lookup');
  define('ADP_SECTOR_LOOKUP_TBL',        DB_NAME . '.adp_sector_lookup');
  define('ADP_SUBSECTOR_LOOKUP_TBL',     DB_NAME . '.adp_subsector_lookup');
  define('SECTOR_DIVISION_LOOKUP_TBL',   DB_NAME . '.sector_division_lookup');
  define('DIVISION_LOOKUP_TBL',          DB_NAME . '.division_lookup');
  define('DISTRICT_LOOKUP_TBL',          DB_NAME . '.district_lookup');
  define('UPZILA_LOOKUP_TBL',            DB_NAME . '.upzila_lookup');
  define('PROC_METHOD_LOOKUP_TBL',       DB_NAME . '.procurement_method_lookup');
  define('PROC_TYPE_LOOKUP_TBL',         DB_NAME . '.procurement_type_lookup');
  define('ECONOMIC_CODE_LOOKUP_TBL',     DB_NAME . '.economic_code_lookup');
  define('ECONOMIC_SUBCODE_LOOKUP_TBL',  DB_NAME . '.economic_subcode_lookup');
  
  
  define('US_STATE_TBL',                 DB_NAME . '.us_states');

  define('DOCUMENT_TBL',                 DB_NAME . '.document');

  define('GROUP_TBL',                    DB_NAME . '.group');
  define('USER_TBL',                     DB_NAME . '.user');
  define('ADDRESS_TBL',                  DB_NAME . '.user_address');
  define('USER_GROUP_TBL',               DB_NAME . '.user_group');
  define('PROJECT_TBL',                  DB_NAME . '.projects');
  define('PROJECT_MINISTRY_TBL',         DB_NAME . '.project_ministries');
  define('PROJECT_AGENCY_TBL',           DB_NAME . '.project_agencies');
  define('PROJECT_DEV_PARTNER_TBL',      DB_NAME . '.project_dev_partners');
  define('PROJECT_MODE_FINANCING_TBL',   DB_NAME . '.project_mode_financing');
  define('PROJECT_LOCATIONS_TBL',        DB_NAME . '.project_locations');
  define('PROJECT_PROCUREMENT_PLAN_TBL', DB_NAME . '.project_procurement_plans');
  define('PROJECT_ANNEX_V_TBL',          DB_NAME . '.annexure_v');
  define('PROJECT_ANNEX_V_DETAILS_TBL',  DB_NAME . '.annexure_v_details');
  
  if (AUTO_CONNECT_TO_DATABASE)
  {
      $dbcon = mysql_connect(DB_HOST, DB_USER, DB_PASS) or die("Could not connect: " . mysql_error());
      mysql_select_db(DB_NAME, $dbcon) or die("Could not find: " . mysql_error());
  }

?>
