<?php
    /**
    * Filename: user_home.conf.php
    * Purpose : configuration file for user_home application
    *
    *
    * Developed by EVOKNOW, Inc.
    * Copyright (c) 2005 EVOKNOW, Inc.
    * Version ID: $Id$
    */
   
   // Load user home application specific classes
   require_once(USER_CLASS);
   
   /**#@+
   * PATH Constant
   */   
   define('TEMPLATE_DIR',                 STANDARD_CONTENTS_DIR       . '/' . CURRENT_APP_PREFIX); 
   define('REL_TEMPLATE_DIR',             REL_STANDARD_CONTENTS_DIR   . '/' . CURRENT_APP_PREFIX); 
   
   /**#@+
   * Template Constant
   */   
   
   $userType =  preg_replace("/[^a-z]/", '_', strtolower($_SESSION['user_type']));
   
   define('DEFAULT_HOME_TEMPLATE',        TEMPLATE_DIR                . '/default_home.html');
   define('DEFAULT_HEADER_TEMPLATE',      TEMPLATE_DIR                . '/default_header.html');
   define('DEFAULT_NAVIGATION_TEMPLATE',  TEMPLATE_DIR                . '/default_navigation.html');
   define('DASHBOARD_TEMPLATE',           TEMPLATE_DIR                . '/'.$userType.'_dashboard.html');
?>