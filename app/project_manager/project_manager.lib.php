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
   
   function changeCompanyStatus($company_code, $status)
   {
      $data['status'] = $status;
      
      $info['table']  = SHARE_MARKET_TBL;
      //$info['debug']  = true;
      $info['where']  = 'company_code = ' . q($company_code);
      $info['data']   = $data;
      
      $result = update($info);
      
      if(empty($result))
         return 0;
         
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
   
   function getCompanyInfo($company_name)
   {
      $info['table']  = SHARE_MARKET_TBL;
      //$info['debug']  = true;	
      $info['where']  = " company_name = '$company_name'";
      
      $result = select($info);
      
      if ($result)
      {
         foreach($result as $key => $value)
         {
            $companyInfo[$value->buy_sell][] = $value;
            $totalPrice[$value->buy_sell]   += $value->unit_price * $value->no_of_share;
         }
         
         
         $companyInfo['totalSell']  = $totalPrice['Sell'];
         $companyInfo['totalBuy']   = $totalPrice['Buy'];

         return $companyInfo;
      }
   }
   
   function getCompanyList()
   {
      $info['table']  = SHARE_MARKET_TBL;
      $info['fields'] = array('company_name', 'company_code');
      //$info['debug']  = true;
      $info['where']  = "1 GROUP BY company_code";
      
      $result = select($info);
      
      
      if( !empty($result) )
      {
         foreach ( $result as $key => $value)
         {
            $retData[$value->company_code] = $value->company_code;	
         }
      }
      
      return $retData;
   }
?>