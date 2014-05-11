<?php

/**
 * File: group_manager.class.php
 *
 * @copyright {@link www.evoknow.com EVOKNOW Inc}
 * @author  php@evoknow.com
 */

/**
 * The groupManager application class
 */

class groupManagerApp extends DefaultApplication
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
           case 'edit'   : $screen = $this->showEditor($msg);  break;
           case 'add'    : $screen = $this->saveRecord();      break;
           case 'delete' : $screen = $this->deleteRecord();    break;
           case 'list'   : $screen = $this->showList();        break;
           default       : $screen = $this->showEditor($msg);
      }

      // Set the current navigation item
      $this->setNavigation('group');

      if ($cmd == 'list')
      {
         echo $screen;
      }
      else
      {
         echo $this->displayScreen($screen);
      }

      return true;

   }

   /**
   * Shows GROUP Editor
   * @return GROUP editor template
   */
   function showEditor($msg)
   {
      $groupID = getUserField('id');
      

      if (!empty($groupID))
      {
         $thisGroup = new Group($groupID);
         $data = array_merge(array(), $thisGroup);

         
         $data['string']           = $string;
      }

      $data['message']          = $msg;
      $data['user_type_list']   = array('0' => 'All');
      //$data['user_type_list']   = array_merge($data['user_type_list'], GetEnumFieldValues(USER_TBL, 'user_type'));
      //$data['group_type_list']  = getEnumFieldValues(GROUP_TBL, 'group_type');
      //$data['user_list']        = getUserList($groupID);
      $data['team_member_list'] = getTeamMemberList($groupID);
      
      $data['user_list_filter'] = getUserList($groupID);
      //dumpVar($data);

      return createPage(GROUP_EDITOR_TEMPLATE, $data);
   }

   /**
   * Saves GROUP information
   * @return message
   */
   function saveRecord()
   {
      $groupID = getUserField('id');
      
      //dumpVar($_REQUEST);
      

      if($groupID)
      {
         $thisGroup = new Group();

         if($thisGroup->modifyGroup($groupID))
         {
            $msg = $this->getMessage(GROUP_UPDATE_SUCCESS_MSG);
         }
         else
         {
            $msg = $this->getMessage(GROUP_UPDATE_ERROR_MSG);
         }
      }
      else
      {
         $thisGroup = new Group;

         if($thisGroup->addGroup())
         {
            $msg = $this->getMessage(GROUP_SAVE_SUCCESS_MSG);
         }
         else
         {
            $msg = $this->getMessage(GROUP_SAVE_ERROR_MSG);
         }

         setUserField('cmd', '');
      }

      return $this->showEditor($msg);
   }

   /**
   * deletes GROUP info
   * @return message
   */
   function deleteRecord()
   {
      $GROUPID   = getUserField('id');
      $thisGROUP = new GROUP();

      $rows  = $thisGROUP->deleteGROUP($GROUPID);

      if($rows)
      {
         $msg = $this->getMessage(GROUP_DELETE_SUCCESS_MSG);
      }
      else
      {
         $msg = $this->getMessage(GROUP_DELETE_ERROR_MSG);
      }

      setUserField('id',  '');
      setUserField('cmd', '');

      return $this->showEditor($msg);
   }

   /**
   * Shows GROUP list
   * @return GROUP list template
   */
   function showList()
   {
    //  $status = getUserField('status');
     // $type   = getUserField('group_type');

      $filterClause = '1';
/*
      if ($status)
         $filterClause .= " and status = '$status' ";
      if ($type)
         $filterClause .= " and group_type = '$type' ";
*/
      $info['table'] = GROUP_TBL;
     // $info['debug'] = true;
      $info['where'] = ' 1 Order By name ASC';

      $records = select($info);

      if (!empty($records))
      {
         foreach ($records as $key => $value)
         {
           
            $list[] = $value;
         }
      }

      $data['list'] = $list;

      $data['status_list']    = getEnumFieldValues(GROUP_TBL, 'status');
      $data['group_type_list'] = getEnumFieldValues(GROUP_TBL, 'group_type');

     ;
      
      //dumpVar($data);

      echo createPage(GROUP_LIST_TEMPLATE, $data);
   }
}