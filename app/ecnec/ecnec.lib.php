<?php

   /**
   * Gets country/state list
   * @param table name
   * @return dataset
   */
   function getList($tblName)
   {
      $info['table'] = $tblName;
      $info['debug'] = false;

      $record = select($info);

      if(empty($record))
         return null;

      foreach($record as $row)
      {
         $data[$row->id] = $row->name;
      }

      return $data;

   }

   /**
   * Checks Username
   * @param username, userid
   * @return boolean
   */
   function checkusername($userName, $userID)
   {
      if ($userID)
      {
         $filterClause = ' and uid <> ' . q($userID);
      }

      $info['table'] =  USER_TBL;
      $info['where'] = 'username =' . q($userName) . $filterClause;
      $info['debug'] = false;

      $result = select($info);
      
      //If result is not empty
      if(empty($result))
      {
         return 0;
      }

      return 1;
   }

   /**
   * Checks Email
   * @param primary email, userid
   * @return boolean
   */
   function checkUserEmail($primaryEmail, $userID)
   {
      if ($userID)
      {
         $filterClause = ' and uid <> ' . q($userID);
      }

      $info['table'] =  USER_TBL;
      $info['where'] = 'email = ' . q($primaryEmail) . $filterClause;
      $info['debug'] = false;

      $result = select($info);
      
      //If result is empty
      if(empty($result))
      {
         return 0;
      }

      return 1;
   }
   
   function getECNECProjectList()
   {
       $info['table'] =  PROJECT_TBL;
       $info['where'] = 'status = ' . q('Forwarded to ECNEC');
       $info['debug'] = false;

       $result = select($info);
       
       return $result;
   }
   
   function getFutureECNECMeetingList()
   {
       $info['table']  = ECENC_MEETING_TBL;
       $info['where']  = 'meeting_date >= ' . q(date('Y-m-d'));
       $info['debug']  = false;
       
       $result = select($info);
       
       return $result;
   }   
?>