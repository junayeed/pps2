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
   define('PROJECT_BASIC_TEMPLATE',                       TEMPLATE_DIR . '/project_manager_home.html');
   define('PROJECT_CREATE_TEMPLATE',                      TEMPLATE_DIR . '/project_manager.html');
   define('PROJECT_PART_A_TEMPLATE',                      TEMPLATE_DIR . '/project_manager_partA.html');
   define('PROJECT_PART_B_TEMPLATE',                      TEMPLATE_DIR . '/project_manager_partB.html');
   define('PROJECT_LIST_TEMPLATE',                        TEMPLATE_DIR . '/project_manager_list.html');
   define('PROJECT_ANNEX_I_LOCATION_TEMPLATE',            TEMPLATE_DIR . '/location_manager.html');
   define('PROJECT_PROCUREMENT_PLAN_GOODS_TEMPLATE',      TEMPLATE_DIR . '/procurement_plan_goods.html');

    define('ERROR',            'Error');
    define('SUCCESS',          'Success');

   /**#@+
   * Application Constant
   */
   define('REL_DOCUMENT_DIR',              '/documents');
   define('IMG_WIDTH',                     125);
   define('IMG_HEIGHT',                    150);

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