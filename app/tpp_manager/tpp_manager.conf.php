<?php

/**
 * File: user_manager.conf.php
 * This is the configuration file for the user manager application
 *
 */

   // include the user class
   require_once(USER_CLASS);
   require_once(DOCUMENT_CLASS);


   /**#@+
   * Template PATH Constant
   */
   define('TEMPLATE_DIR',                  APP_CONTENTS_DIR     . '/' . CURRENT_APP_PREFIX);
   define('REL_TEMPLATE_DIR',              REL_APP_CONTENTS_DIR . '/' . CURRENT_APP_PREFIX);

   /**#@+
   * Template Constant
   */
   define('PROJECT_BASIC_TEMPLATE',                       TEMPLATE_DIR . '/tpp_manager_home.html');
   define('PROJECT_CREATE_TEMPLATE',                      TEMPLATE_DIR . '/project_manager.html');
   define('TPP_PART_A_TEMPLATE',                          TEMPLATE_DIR . '/tpp_manager_partA.html');
   define('TPP_PART_B_TEMPLATE',                          TEMPLATE_DIR . '/tpp_manager_partB.html');
   define('PROJECT_LIST_TEMPLATE',                        TEMPLATE_DIR . '/project_manager_list.html');
   define('PROJECT_ANNEX_I_LOCATION_TEMPLATE',            TEMPLATE_DIR . '/location_manager.html');
   define('PROJECT_TOR_TEMPLATE',                         TEMPLATE_DIR . '/project_tor.html');
   define('PROJECT_CONCULTANT_DETAILS_TEMPLATE',          TEMPLATE_DIR . '/project_concultants_details.html');
   define('PROJECT_PROCUREMENT_PLAN_GOODS_TEMPLATE',      TEMPLATE_DIR . '/procurement_plan_goods.html');
   define('PROJECT_PROCUREMENT_PLAN_SERVICES_TEMPLATE',   TEMPLATE_DIR . '/procurement_plan_services.html');
   define('PROC_PLAN_PDF_TEMPLATE',                       TEMPLATE_DIR . '/proc_plan_pdf.html');
   define('TPP_ANNEX_I_TEMPLATE',                         TEMPLATE_DIR . '/annex_i.html');
   define('TPP_ANNEX_IV_TEMPLATE',                        TEMPLATE_DIR . '/annex_iv.html');
   define('PROJECT_ANNEX_V_TEMPLATE',                     TEMPLATE_DIR . '/annex_v.html');
   define('PROJECT_ANNEX_VI_TEMPLATE',                    TEMPLATE_DIR . '/annex_vi.html');
   define('PROJECT_ANNEX_VII_TEMPLATE',                   TEMPLATE_DIR . '/annex_vii.html');
   define('PROJECT_COMMENT_TEMPLATE',                     TEMPLATE_DIR . '/comment.html');
   define('PROJECT_ATTACHMENT_TEMPLATE',                  TEMPLATE_DIR . '/attachment.html');
   define('SICCESS_MSG_TEMPLATE',                         TEMPLATE_DIR . '/success_msg.html');
   define('ANNEX_I_ATTACHMENT_TEMPLATE',                  TEMPLATE_DIR . '/annexI_attachment.html');
   

    define('ERROR',            'Error');
    define('SUCCESS',          'Success');

   /**#@+
   * Application Constant
   */
   define('REL_DOCUMENT_DIR',              '/documents');
   define('IMG_WIDTH',                     125);
   define('IMG_HEIGHT',                    150);
   
   define('PHY_CON_ECONOMIC_CODE',         99999);
   define('PHY_CON_ECONOMIC_SUB_CODE',     9999901);
   define('PHY_CON_ECONOMIC_CODE_DESC',    'Physical Contingency');
   define('PR_CON_ECONOMIC_CODE',          88888);
   define('PR_CON_ECONOMIC_SUB_CODE',      8888801);
   define('PR_CON_ECONOMIC_CODE_DESC',     'Price Contingency');

   /**#@+
   * Message Constant
   */
   define('USER_SAVE_SUCCESS_MSG',         1011);
   define('USER_UPDATE_SUCCESS_MSG',       1012);
   define('USER_DELETE_SUCCESS_MSG',       1013);
   define('USER_SAVE_ERROR_MSG',           1021);
   define('USER_UPDATE_ERROR_MSG',         1022);
   define('USER_DELETE_ERROR_MSG',         1023);
   define('DUPLICATE_USERNAME',            1031);
?>