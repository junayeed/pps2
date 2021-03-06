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
     define('DB_USER', 'pps2_training');
     define('DB_PASS', 'CK37SBCf8VCB9Y3H');
     define('DB_NAME', 'pps2_training');
     define('DB_HOST', '192.168.6.104');
  }
//  else
//  {
//    define('DB_USER', 'pps2_training');
//    define('DB_PASS', 'CK37SBCf8VCB9Y3H');
//
//    define('DB_NAME', 'pps2_training');
//    define('DB_HOST', '192.168.6.104');
//  }
  else
  {
    define('DB_USER', 'root');
    define('DB_PASS', '');

    define('DB_NAME', 'pps2');
    define('DB_HOST', 'localhost');
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

  define('CONFIGURATION_TBL',            DB_NAME . '.configuration');
  define('COUNTRY_LOOKUP_TBL',           DB_NAME . '.country_lookup');
  define('MINISTRY_LOOKUP_TBL',          DB_NAME . '.ministry_lookup');
  define('DEV_PARTNER_LOOKUP_TBL',       DB_NAME . '.dev_partner_lookup');
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
  
  
  define('US_STATE_TBL',                     DB_NAME . '.us_states');
  define('DOCUMENT_TBL',                     DB_NAME . '.document');
  define('ECENC_MEETING_TBL',                DB_NAME . '.ecnec_meeting');

  define('GROUP_TBL',                        DB_NAME . '.group');
  define('USER_TBL',                         DB_NAME . '.user');
  define('ADDRESS_TBL',                      DB_NAME . '.user_address');
  define('USER_PROFILE_TBL',                 DB_NAME . '.user_profile');
  define('PROJECT_TBL',                      DB_NAME . '.projects');
  define('PROJECT_STATUE_TBL',               DB_NAME . '.project_status');
  define('PROJECT_MESSAGE_TBL',              DB_NAME . '.project_messages');
  define('PROJECT_ATTACHMENT_TBL',           DB_NAME . '.project_attachments');
  define('PROJECT_PART_B_TBL',               DB_NAME . '.projects_part_b');
  define('PROJECT_MINISTRY_TBL',             DB_NAME . '.project_ministries');
  define('PROJECT_AGENCY_TBL',               DB_NAME . '.project_agencies');
  define('PROJECT_DEV_PARTNER_TBL',          DB_NAME . '.project_dev_partners');
  define('PROJECT_MODE_FINANCING_TBL',       DB_NAME . '.project_mode_financing');
  define('PROJECT_LOG_FRAME_TBL',            DB_NAME . '.project_log_frame');
  define('PROJECT_LOCATIONS_TBL',            DB_NAME . '.project_locations');
  define('PROJECT_PROCUREMENT_PLAN_TBL',     DB_NAME . '.project_procurement_plans');
  define('PROJECT_MANAGEMENT_TBL',           DB_NAME . '.project_management');
  define('PROJECT_ANNEX_V_TBL',              DB_NAME . '.annexure_v');
  define('PROJECT_ANNEX_V_DETAILS_TBL',      DB_NAME . '.annexure_v_details');
  define('PROJECT_ANNEX_V_CON_TBL',          DB_NAME . '.annexure_v_contingency');
  define('PROJECT_ANNEX_V_CON_DETAILS_TBL',  DB_NAME . '.annexure_v_contingency_details');
  define('PROJECT_MAJOR_ITEM_TBL',           DB_NAME . '.project_major_items');
  define('PROJECT_ANALYSIS_TBL',             DB_NAME . '.project_analysis');
  define('PROJECT_ANALYSIS_DETAILS_TBL',     DB_NAME . '.project_analysis_details');
  define('PROJECT_MAJOR_ITEM_COM_COST_TBL',  DB_NAME . '.project_major_items_comparative_cost');
  define('PROJECT_ANNEX_VI_TBL',             DB_NAME . '.annexure_vi');
  define('PROJECT_ANNEX_VI_DETAILS_TBL',     DB_NAME . '.annexure_vi_details');
  define('PROJECT_COMMISSION_STATUS_TBL',    DB_NAME . '.project_commission_status');
 
  //TPP
  define('TPP_COST_FINANCING_TBL',           DB_NAME . '.tpp_cost_financing');
  define('TPP_PART_A_TBL',                   DB_NAME . '.tpp_part_a');
  define('TPP_PART_B_TBL',                   DB_NAME . '.tpp_part_b');
  define('TPP_CONCULTANT_DETAILS_TBL',       DB_NAME . '.tpp_concultant_details');
  define('TPP_COUNTER_PERSON_DETAILS_TBL',   DB_NAME . '.tpp_counter_person_details');
  
  
  
  
  // VIEWS
  define('PROJECT_YEAR_WISE_GOB_OWNFUND',                   DB_NAME . '.year_wise_gob_ownfund');
  define('PROJECT_SUB_TOTAL_VIEW',                          DB_NAME . '.view_project_wise_component_sub_total');
  define('PROJECT_COMP_YEAR_WSIE_SUB_TOTAL_VIEW',           DB_NAME . '.view_component_type_year_wise_subtotal');
  define('VIEW_PROJECT_GRAND_TOTAL',                        DB_NAME . '.view_project_grand_total');
  
  if (AUTO_CONNECT_TO_DATABASE)
  {
      $dbcon = mysql_connect(DB_HOST, DB_USER, DB_PASS) or die("Could not connect: " . mysql_error());
      mysql_select_db(DB_NAME, $dbcon) or die("Could not find: " . mysql_error());
  }

?>
