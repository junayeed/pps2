<?php
    /**
    * Filename: logout.class.php
    * Purpose : Defines a UserHomeApp class which extends DefaultApplication.
    *           The derived class (defined here) is used to display
    *           appropriate user home page.
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
            $ministry_id                = getFromSession('ministry_id');
            $sector_division            = getFromSession('sector_division');
            $user_type                  = getFromSession('user_type');
            $data['total_project']      = countProjectByStatus();
            $data['project_list']       = getProjectList();
            $data['draft_project']      = getDraftProjectTotal();
            $data['approved_project']   = getApproveProjectTotal();
            $data['ecnec_assigned_project_list']  = getECNECAssignedProjectList();
            //dumpVar($data);
            
            if ($user_type == 'Commission')
            {
                $data['commission_summary']  = getCommissionWiseProjectSummary($sector_division);
                //dumpVar($data['commission_summary']);
                foreach($data['commission_summary'] AS $value)
                {
                    foreach($value as $ministry)
                    {
                        $data['project_count'][$ministry->ministry_name] += $ministry->project_count;
                        $data['total_count']                             += $ministry->project_count;
                    }
                }
            }
            
            return createPage(DASHBOARD_TEMPLATE, $data);
        }
      

   }

?>