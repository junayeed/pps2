<?php

/**
 * File: user_manager.class.php
 *
 * @copyright {@link www.evoknow.com EVOKNOW Inc}
 * @author  php@evoknow.com
 */

/**
 * The userManager application class
 */

class reportManagerApp extends DefaultApplication
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
           case 'edit'              : $screen = $this->showEditor($msg);  break;
           case 'add'               : $screen = $this->saveRecord();      break;
           case 'delete'            : $screen = $this->deleteRecord();    break;
           case 'list'              : $screen = $this->showList();        break;
           case 'officerlist'       : $screen = $this->officerList();        break;
           default                  : $screen = $this->showEditor($msg);
      }

      // Set the current navigation item
      $this->setNavigation('user');

      //if ($cmd == 'list')
      //{
      //   echo $screen;
      //}
      //else
      {
         echo $this->displayScreen($screen);
      }

      return true;

   }

   /**
   * Shows User Editor
   * @param message
   * @return user editor template
   */
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

      return createPage(REPORT_EDITOR_TEMPLATE, $data);
   }

  
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

      return createPage(REPORT_LIST_TEMPLATE, $data);
   }
  
}
?>