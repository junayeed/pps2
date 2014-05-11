<?php
    /**
    * Filename: logout.class.php
    * Purpose : Defines a UserHomeApp class which extends DefaultApplication.
    *           The derived class (defined here) is used to display
    *           appropriate user home page.
    *
    *
    * Developed by EVOKNOW, Inc.
    * Copyright (c) 2005 EVOKNOW, Inc.
    * Version ID: $Id$
    */ 
   
   class UserHomeApp extends DefaultApplication 
   {

      /**
      * This is the "main" function which is called to run the application
      *
      * @param none
      * @return true if successful, else returns false
      */ 
      function run()
      {
      	 // Create a user object
      	 $thisUser = new User();
      	 
      	 // User must be authentiacted, else must
      	 // login (again)
      	 if (!$thisUser->isAuthenticated())
      	    $thisUser->goLogin();
      	 
      	 // Load user info from session
      	 $thisUser->loadFromSession();
      	 
      	 // Get user type
      	 $userType = $thisUser->getUserType();
      	 
      	 // Get user home template
      	 $template = getHomeTemplate($userType); 
      	 
      	 // Prepare smarty key=var
      	 $data = array();
      	 
      	 $contents = null;
      	 $screen = $this->showDashBoard();
      
      	 // Display home page
      	 //echo createPage($template, $data);


         // Set the current navigation item
         $this->setNavigation('home');
      	 
      	 echo $this->displayScreen($screen);
      	 
      	 return true;
      }
      
      function showDashBoard()
      {
      	$info['table'] = NOTICE_BOARD_TBL;
   	    //$info['debug'] = true;
   	    $info['where'] = " 1 order by notice_date DESC LIMIT 10";
   	    
   	  
   	    $result = select($info);
        
         
        if($result)
        {
        	  foreach($result as $key => $value)
        	  {
        	  	  $val['uid'] = $value->user_id;
        	  	  $user = new User($val);
        	  	  //dumpvar($user->first_name);
        	  	  $value->username = $user->first_name.' '.$user->last_name;
        	  }
        }
        
        $data['notice_list'] = $result;
        //dumpvar($result);
        
        return createPage(DASHBOARD_TEMPLATE, $data);
      	
      }
      

   }

?>