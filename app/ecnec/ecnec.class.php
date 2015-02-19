<?php

/**
 * File: user_manager.class.php
 *
 * @author  php@evoknow.com
 */

/**
 * The userManager application class
 */

class ecnecApp extends DefaultApplication
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
           case 'edit'              : $screen = $this->showEditor($msg);     break;
           case 'create_meeting'    : $screen = $this->createECNECMeeting($msg);  break;
           case 'saveMeeting'       : $screen = $this->saveMeeting($msg);  break;
           case 'add'               : $screen = $this->saveRecord();      break;
           case 'delete'            : $screen = $this->deleteRecord();    break;
           case 'meeting_list'      : $screen = $this->showList();        break;
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
   
   
   function saveMeeting()
   {
       $info['table'] = ECENC_MEETING_TBL;
       $info['data']  = getUserDataSet(ECENC_MEETING_TBL);
       $info['debug'] = false;
       
       
       $result = insert($info);
       
       return createPage(MEETING_EDITOR_TEMPLATE, $data);
       
   }
   
   
   /**
   * Shows User Editor
   * @param message
   * @return user editor template
   */
   function createECNECMeeting($msg)
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

      return createPage(MEETING_EDITOR_TEMPLATE, $data);
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

      $info['table'] = ECENC_MEETING_TBL;
      $info['debug'] = false;
      $info['where'] = $filterClause . ' Order By meeting_date DESC';

      $data['list'] = select($info);

     

      return createPage(REPORT_LIST_TEMPLATE, $data);
   }
  
}
?>