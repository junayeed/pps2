<?php

/**
 * File: user_manager.class.php
 
 */

/**
 * The chartApp application class
 */

class chartApp extends DefaultApplication
{
   /**
   * Constructor
   * @return true
   */

   function run()
   {
      $cmd = getUserField('cmd');

      switch ($cmd)
      {
           case 'edit'              : $screen = $this->showEditor($msg);         break;
           case 'list'              : $screen = $this->showList();               break;
           case 'approvedProject'   : $screen = $this->approvedProject();        break;
           default                  : $screen = $this->showEditor($msg);
      }

      // Set the current navigation item
      $this->setNavigation('user');

      
      {
         echo $this->displayScreen($screen);
      }

      return true;

   }

   function approvedProject()
   {
       
       return createPage(CHART_APPROVED_PROJECT_TEMPLATE, $data);
   }
           
   
   function showEditor($msg)
   {
      $uid = getUserField('id');

      if (!empty($uid))
      {
         $thisUser = new User(array('uid' => $uid));
         
         if( empty($thisUser))
         {
            $thisUser = array();
         }
         
         foreach($thisUser as $key => $value)
         {
            $userData[$key] = $value;	
         }
         
         $data = array_merge(array(), $userData);
      }


      $data['message']                   = $msg;
      $data['ministryList']              = getMinistryList();
      $data['agencyList']                = getAgencyList();
      
      
      
      //dumpvar($data);

      return createPage(CHART_EDITOR_TEMPLATE, $data);
   }

   /**
   * Saves User information
   * @return message
   */
   

   /**
   * Shows user list
   * @return user list template
   */
   function showList()
   {
      $status = getUserField('status');
      $type   = getUserField('user_type');

      $filterClause = '1';

      if ($status)
         $filterClause .= " and status = '$status' ";
      if ($type)
         $filterClause .= " and user_type = '$type' ";

      $info['table'] = USER_TBL;
      $info['debug'] = false;
      $info['where'] = $filterClause . ' Order By username ASC';

      $data['list'] = select($info);

      $data['status_list']    = getEnumFieldValues(USER_TBL, 'status');
      $data['user_type_list'] = getEnumFieldValues(USER_TBL, 'user_type');

      $data['status']    = $status;
      $data['user_type'] = $type;

      return createPage(CHART_LIST_TEMPLATE, $data);
   }
   
   
}
?>