<?php
  /**
   * File: dp.lib.php
   * Library File
   */


    function getDPPListofAgency($agency_id)
    {
        $info['table']  = PROJECT_TBL;
        $info['fields'] = array('id','project_title_en');
        $info['where']  = "agency_id=$agency_id AND project_type='DPP' ORDER By project_title_en ASC";
        $info['debug']  = false;
               
        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $data[$value->id] =  $value->project_title_en; 
             }
        }
        return $data;
       
    }

    function getMinistryList()
    {
        $info['table']  = MINISTRY_LOOKUP_TBL;
        $info['fields'] = array('id','name');
        $info['where']  = " status='Active' ORDER By name ASC";
        $info['debug']  = false;

        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $data[$value->id] =  $value->name; 
             }
        }
        return $data;
    } 
    
    function getDevelopmentPartnerList()
    {
        $info['table']  = DEV_PARTNER_LOOKUP_TBL;
        $info['fields'] = array('id','name');
        $info['where']  = " status='Active' ORDER By name ASC";
        $info['debug']  = false;

        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $data[$value->id] =  $value->name; 
             }
        }
        return $data;
    } 
    
    function saveAttachment($file,$pid)
    {
        
        if($file['size'] > 0)
        {
            $_FILES['document'] = $file;
            
            $thisDoc = new DocumentEntity();
            $doc_id  = $thisDoc->addDocument(null,$pid);
            
            return $doc_id;
        }
        
        return;
    }
    
    function getFileLocation($file_id = 0, $pid)
    {
        if ($file_id == 0)
        {
            return ;
        }
        
        //$uid = getFromSession('uid'); 
        
        $thisDoc  = new DocumentEntity($file_id);
        $fileName = $thisDoc->getRemoteFileName();

        $fileLocation = REL_DOCUMENT_DIR.'/'.$pid.'/'.$fileName;
        
        return $fileLocation;
    }
   
    function getAgencyList($ministry_id = null)
    {
        if ($ministry_id)
        {
            $ministryClause = ' AND ministry_id = ' . $ministry_id;
        }
        
        $info['table']  = AGENCY_LOOKUP_TBL;
        $info['fields'] = array('id', 'name');
        $info['where']  = 'status= ' . q('Active') . $ministryClause . ' ORDER By name ASC';
        $info['debug']  = false;

        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $data[$value->id] =  $value->name; 
            }
        }
        
        return $data;
    } 
    
    function getADPSectorList()
    {
        $info['table']  = ADP_SECTOR_LOOKUP_TBL;
        $info['fields'] = array('id','name');
        $info['where']  = " status='Active' ORDER By name ASC";
        $info['debug']  = false;

        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $data[$value->id] =  $value->name; 
            }
        }
        return $data;
    } 
   
    function getADPSubSectorList()
    {
        $info['table']  = ADP_SUBSECTOR_LOOKUP_TBL;
        $info['fields'] = array('id','name');
        $info['where']  = " status='Active' ORDER By name ASC";
        $info['debug']  = false;

        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $data[$value->id] =  $value->name; 
            }
        }
        
        return $data;
    } 
   
    function getSectorDivisionList()
    {
        $info['table']  = SECTOR_DIVISION_LOOKUP_TBL;
        $info['fields'] = array('id','name');
        $info['where']  = " status='Active' ORDER By name ASC";
        $info['debug']  = false;

        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $data[$value->id] =  $value->name; 
            }
        }
        
        return $data;
    } 
   
    function getDivisionList($includeStatus = '')
    {
        $statusClause = '1 ';
        
        if ( !$includeStatus )
        {
            $statusClause = 'status = ' . q('Active');
        }
        
        $info['table']  = DIVISION_LOOKUP_TBL;
        $info['fields'] = array('divid', 'division_name');
        $info['where']  = "$statusClause ORDER BY division_name ASC";
        $info['debug']  = false;

        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $data[$value->divid] =  $value->division_name; 
            }
        }
        
        return $data;
    } 
   
   function getDistrictList()
   {
        $info['table']  = DISTRICT_LOOKUP_TBL;
        $info['fields'] = array('district_id','district_name');
        $info['where']  = " status='Active' ORDER By district_name ASC";
      //$info['debug']  = true;

      if ($result = select($info))
      {
         foreach($result as $key => $value)
         {
            $data[$value->district_id] =  $value->district_name; 
         }
      }
      return $data;
   } 
   
   function getUpzilaList()
   {
        $info['table']  = UPZILA_LOOKUP_TBL;
        $info['fields'] = array('upzila_id','upzila_name');
        $info['where']  = " status='Active' ORDER By upzila_name ASC";
        //$info['debug']  = true;

      if ($result = select($info))
      {
         foreach($result as $key => $value)
         {
            $data[$value->upzila_id] =  $value->upzila_name; 
         }
      }
      return $data;
   } 
   
   
   function getUpzilaListWithDistrictName()
   {
        $info['table']  = UPZILA_LOOKUP_TBL.' AS UPL LEFT JOIN '.DISTRICT_LOOKUP_TBL.' AS DIL  ON(UPL.district_id = DIL.district_id)';
        $info['fields'] = array('UPL.upzila_id','UPL.upzila_name','DIL.district_name');
        $info['where']  = " UPL.status='Active' ORDER By UPL.upzila_name ASC";
        //$info['debug']  = true;

      if ($result = select($info))
      {
         foreach($result as $key => $value)
         {
            $data[$value->upzila_id] =  "$value->upzila_name ($value->district_name)"; 
         }
      }
      return $data;
   } 
   
   function getEconomicCodeList()
   {
       $info['table']  = ECONOMIC_CODE_LOOKUP_TBL;
       $info['debug']  = false;
       $info['where']  = 'status = ' . q('Active');
       $info['fields'] = array('id', 'economic_code', 'component_type', 'economic_code_name');
       
       $result = select($info);
       
       if ( $result )
       {
           return $result;
       }
   }
   
   function getEconomicSubCodeList()
   {
       $info['table']  = ECONOMIC_SUBCODE_LOOKUP_TBL;
       $info['debug']  = false;
       $info['where']  = 'status = ' . q('Active');
       $info['fields'] = array('id', 'economic_code_id', 'economic_subcode', 'economic_subcode_name');
       
       $result = select($info);
       
       if ( $result )
       {
           return $result;
       }
   }
   
   function getComponentListForDPP($pid)
   {
       $info['table']  = PROJECT_ANNEX_V_TBL . ' AS PAVT LEFT JOIN ' . ECONOMIC_CODE_LOOKUP_TBL . ' AS ECLT ON (PAVT.economic_code_id = ECLT.id)' . 
                         ' LEFT JOIN ' . ECONOMIC_SUBCODE_LOOKUP_TBL . ' AS ESLT ON (PAVT.economic_subcode_id = ESLT.id)';
       $info['debug']  = false;
       $info['where']  = 'pid = ' . $pid.' ORDER BY ESLT.economic_subcode, PAVT.id';
       $info['fields'] = array('PAVT.*', 'ECLT.component_type AS comp_type');
       
       $result = select($info);
       
       if ( !empty ($result) )
       {
           foreach($result as $key => $value)
           {
               $value->attachment_path = getFileLocation($value->attachment_id, $pid);
           }
           
           return $result;
       }
   }
   
   
   function getComponentList($pid)
   {
       $info['table']  = RDPP_CUMULATIVE_PROGRESS_TBL . ' AS PAVT LEFT JOIN ' . ECONOMIC_CODE_LOOKUP_TBL . ' AS ECLT ON (PAVT.economic_code_id = ECLT.id)' . 
                         ' LEFT JOIN ' . ECONOMIC_SUBCODE_LOOKUP_TBL . ' AS ESLT ON (PAVT.economic_subcode_id = ESLT.id)';
       $info['debug']  = false;
       $info['where']  = 'pid = ' . $pid.' ORDER BY ESLT.economic_subcode, PAVT.annex_id';
       $info['fields'] = array('PAVT.*', 'ECLT.component_type AS comp_type');
       
       $result = select($info);
       
       if ( !empty ($result) )
       {
           foreach($result as $key => $value)
           {
               $value->attachment_path = getFileLocation($value->attachment_id, $pid);
           }
           
           return $result;
       }
   }
   
   function getContingencyList($pid)
   {
       $info['table']  = PROJECT_ANNEX_V_CON_TBL;
       $info['debug']  = false;
       $info['where']  = 'pid = ' . $pid;
       
       $result = select($info);
       
       if ( !empty ($result) )
       {
           return $result;
       }
   }
   
   function getAnnexVContingencyDetails($pid)
   {
       $info['table']  = PROJECT_ANNEX_V_CON_DETAILS_TBL;
       $info['debug']  = false;
       $info['where']  = 'pid = ' . $pid.' order by year_serial';
       
       $result = select($info);
       
       if ( !empty ($result) )
       {
           return $result;
       }
   }
   
   function getAnnexVComponentDetails($pid)
   {
       $info['table']  = PROJECT_ANNEX_V_DETAILS_TBL . ' AS PAVDT LEFT JOIN ' . PROJECT_ANNEX_V_TBL . ' AS PAVT ON (PAVDT.annex_id = PAVT.id)' . 
                         ' LEFT JOIN ' . ECONOMIC_CODE_LOOKUP_TBL . ' AS ECLT ON (PAVT.economic_code_id = ECLT.id)' . 
                         ' LEFT JOIN ' . ECONOMIC_SUBCODE_LOOKUP_TBL . ' AS ESLT ON (PAVT.economic_subcode_id=ESLT.id)';
       $info['debug']  = false;
       $info['where']  = 'PAVDT.pid = ' . $pid.' ORDER BY ESLT.economic_subcode, PAVDT.annex_id, PAVDT.year_serial';
       $info['fields'] = array('PAVDT.*', 'ECLT.component_type AS comp_type', 'PAVT.id AS annex_id','PAVT.component_type');
       
       $result = select($info);
       
       if ( !empty ($result) )
       {
           return $result;
       }
   }
   
   function getProjectWiseEconomicCodeList($pid)
   {
        $info['table']  = PROJECT_ANNEX_V_TBL . ' AS PAVT LEFT JOIN ' . ECONOMIC_CODE_LOOKUP_TBL . ' AS ECLT ON (PAVT.economic_code_id = ECLT.id)' . 
                          ' LEFT JOIN ' . ECONOMIC_SUBCODE_LOOKUP_TBL . ' AS ESLT ON (PAVT.economic_subcode_id = ESLT.id)';
        $info['debug']  = false;
        $info['where']  = 'PAVT.pid = ' . $pid . ' ORDER BY ECLT.economic_code, ESLT.economic_subcode';
        $info['fields'] = array('PAVT.id','ECLT.economic_code', 'ESLT.economic_subcode', 'ECLT.component_type', 'PAVT.economic_subcode_name', 
                                'PAVT.unit', 'PAVT.unit_cost', 'PAVT.qty', 'PAVT.total_cost', 'PAVT.gob', 'PAVT.gob_fe', 'PAVT.rpa_through_gob', 
                                'PAVT.rpa_special_account', 'PAVT.dpa', 'PAVT.own_fund', 'PAVT.own_fund_fe', 'PAVT.other', 'PAVT.other_fe','PAVT.major_item');

        $result = select($info); 
        
        if ( !empty($result) )
        {
            return $result;
        }
        else
        {
            return;
        }
   }
   
   function getProjectWiseComponentSubTotal($pid)
   {
       $info['table']  = PROJECT_SUB_TOTAL_VIEW;
       $info['debug']  = false;
       $info['where']  = 'pid = ' . $pid;
       
       $result = select($info);
       
       foreach($result as $key => $value)
       {
           $retData[$value->component_type] = $value;
       }
       
       return $retData;
   }
   
   function getProjectCategoryYearWiseComponentSubTotal($pid)
   {
       $info['table']  = PROJECT_COMP_YEAR_WSIE_SUB_TOTAL_VIEW;
       $info['debug']  = false;
       $info['where']  = 'pid = ' . $pid . ' ORDER BY year_serial';
       
       $result = select($info);
       
       return $result;
   }
   
   function getProjectWiseContingencyList($pid)
   {
        $info['table']  = PROJECT_ANNEX_V_CON_TBL;
        $info['debug']  = false;
        $info['where']  = 'pid = ' . $pid . ' ORDER BY economic_code_id DESC';

        $result = select($info); 
        
        if ( !empty($result) )
        {
            return $result;
        }
        else
        {
            return;
        }
   }
   
   function getProjectWiseGrandTotal($pid)
   {
       $info['table']  = PROJECT_ANNEX_V_TBL;
       $info['debug']  = false;
       $info['where']  = 'pid = ' . $pid;
   }
   
   
   function countProjectByStatus()
   {
       //$dataArr        = array();
       $user_type       = $_SESSION['user_type'];
       $ministry_id     = $_SESSION['ministry_id'];
       $sector_division = $_SESSION['sector_division'];
       $commission_id   = $_SESSION['commission_id'];
       $agency_id       = $_SESSION['agency_id'];
       
       $filterClause = '1';

        if ($user_type=='Agency')
        {
            $filterClause .= " AND agency_id=$agency_id";
        }
        elseif ($user_type=='Ministry')
        {
            $filterClause .= " AND ministry_id =$ministry_id";
        }
        elseif ($user_type=='Commission')
        {
            $filterClause .= " AND sector_division =$sector_division";
        }
        
        $info['table']  = PROJECT_TBL;
        $info['debug']  = false;
        $info['fields'] = array('count(id) as total,status');
        $info['where']  = $filterClause.' GROUP BY status';

        $result = select($info); 
        
        if ( !empty($result) )
        {
            foreach ($result as $key=>$item)
            {
                
                if($item->status =='Draff' || strcmp($item->status,'Returned from Ministry')==0)
                {
                    $dataArr->agency_total+=$item->total;
                    
                }
                else if(strcmp($item->status,'Forwarded to Ministry')==0 || strcmp($item->status,'Returned from Commission')==0)
                {
                    $dataArr->ministry_total+=$item->total;
                }
                else if(strcmp($item->status,'Forwarded to Commission')==0)
                {
                    $dataArr->commission_total+=$item->total;
                }    
                else if($item->status =='Approved')
                {
                    $dataArr->approved_total+=$item->total;
                }    
                else if($item->status =='Rejected')
                {
                    $dataArr->rejected_total+=$item->total;
                }    
            }    
            return $dataArr;
        }
        else
        {
            return;
        }
   }
   
   function getProjectList()
   {
       $user_type        = $_SESSION['user_type'];
       $user_permission  = $_SESSION['user_permission'];
       $ministry_id      = $_SESSION['ministry_id'];
       $commission_id    = $_SESSION['sector_division'];
       $agency_id        = $_SESSION['agency_id'];
       $uid              = $_SESSION['uid'];
       
       $filterClause = '1';

        if ($user_type=='Agency')
        {
            $filterClause .= " AND P.agency_id=$agency_id";
        }
        elseif ($user_type=='Ministry')
        {
            $filterClause .= " AND P.ministry_id =$ministry_id";
        }
        elseif ($user_type=='Commission')
        {
            $filterClause .= " AND P.sector_division =$commission_id";
            
            if ($user_permission == 'User')
            {
                $filterClause .= " AND P.current_holder = " . $uid;
            }
        }
        elseif($user_type=='ECNEC')
        {
            $filterClause .= " AND P.status = 'Forwarded to ECNEC'";
        }    

        $info['table']  = PROJECT_TBL.' AS P LEFT JOIN ' . VIEW_PROJECT_GRAND_TOTAL . ' AS VP ON(P.id=VP.pid)'.
                         ' LEFT JOIN ' . AGENCY_LOOKUP_TBL . ' AS ALT ON(P.agency_id=ALT.id) LEFT JOIN ' . MINISTRY_LOOKUP_TBL. 
                         ' AS MLT ON(P.ministry_id=MLT.id) LEFT JOIN ' . USER_TBL . ' AS UT ON (UT.uid = P.desk_officer) LEFT JOIN ' . USER_PROFILE_TBL . 
                         ' AS UPT ON (UPT.uid = P.desk_officer)';
        $info['debug']  = false;
        $info['fields'] = array('P.*','VP.*','ALT.name as agency_name','MLT.name as ministy_name', 'CONCAT(UPT.name, " (", UT.designation, ")") AS desk_officer');
        $info['where']  = $filterClause .' Order By P.create_date DESC';

        $result = select($info);
        
        return $result;
   }
   
   function getECNECAssignedProjectList()
   {
       $info['table']  = ECENC_PROJECT_TBL . ' AS EPT LEFT JOIN ' . ECENC_MEETING_TBL . ' AS EMT ON (EPT.meeting_id = EMT.id)';
       $info['debug']  = false;
       
       $result = select($info);
       
       if ( !empty($result) )
       {
           foreach($result as $value)
           {
               $retData[$value->project_id] = $value;
           }
           return $retData;
       }
       
       return '';
   }
   
    function getDraftProjectTotal($current_fiscal_year)
    {
        $info['table']  = PROJECT_TBL.' AS PR LEFT JOIN '.VIEW_PROJECT_GRAND_TOTAL.' AS VPGT ON(PR.id = VPGT.pid)';
        $info['debug']  = false;
        $info['fields'] = array('PR.project_type', 'SUM(VPGT.gob_cost) AS gob_cost', 'SUM(VPGT.pa_through_gob_cost) AS pa_through_gob_cost', 
                                'SUM(VPGT.pa_spc_acnt_cost) AS pa_spc_acnt_cost',
                                'SUM(VPGT.pa_dpa_cost) AS pa_dpa_cost', 'SUM(VPGT.own_fund_cost) AS own_fund_cost', 'SUM(VPGT.other_cost) AS other_cost');
        $info['where']  = 'PR.status != ' . q('Approved') . ' AND PR.status != ' . q('Rejected') . 
                          ' AND PR.agency_id = ' . $_SESSION['agency_id'] . ' GROUP BY PR.project_type';

        $result = select($info);
        
        if ($result)
        {
            foreach($result AS $key => $value)
            {
                $value->pa = $value->pa_through_gob_cost+$value->pa_spc_acnt_cost+$value->pa_dpa_cost;
                $retData[$value->project_type] = $value;
            }
        }
        
        return $retData;
    }
    
    function getApproveProjectTotal($current_fiscal_year)
    {
        $fiscal_year_date    = getFiscalYearDats($current_fiscal_year);

        $info['table']  = PROJECT_TBL.' AS PR LEFT JOIN '.VIEW_PROJECT_GRAND_TOTAL.' AS VPGT ON(PR.id = VPGT.pid)';
        $info['debug']  = false;
        $info['fields'] = array('PR.project_type', 'SUM(VPGT.gob_cost) AS gob_cost', 'SUM(VPGT.pa_through_gob_cost) AS pa_through_gob_cost', 
                                'SUM(VPGT.pa_spc_acnt_cost) AS pa_spc_acnt_cost',
                                'SUM(VPGT.pa_dpa_cost) AS pa_dpa_cost', 'SUM(VPGT.own_fund_cost) AS own_fund_cost', 'SUM(VPGT.other_cost) AS other_cost');
        $info['where']  = 'PR.status = ' . q('Approved'). ' AND PR.agency_id = ' . $_SESSION['agency_id'] .
                          //' AND PR.date_of_commencement >= ' . q($fiscal_year_date['start_date']) . ' AND PR.date_of_commencement <= ' . q($fiscal_year_date['end_date']) .
                          ' GROUP BY PR.project_type';

        $result = select($info);
        
        if ($result)
        {
            foreach($result AS $key => $value)
            {
                $value->pa = $value->pa_through_gob_cost+$value->pa_spc_acnt_cost+$value->pa_dpa_cost;
                $retData[$value->project_type] = $value;
            }
        }
        
        return $retData;
    }
    
    /**
     * Commission wise project summary of Approved project in current fiscal year
     * @param int $sector_division
     * @return array 
     */
    function getCommissionWiseProjectSummary($sector_division)
    {
        $current_fiscal_year = getCurrentFiscalYear();
        $fiscal_year_date    = getFiscalYearDats($current_fiscal_year);
        
        //dumpVar($fiscal_year_date['end_date']);
        
        $info['table']  = PROJECT_TBL . ' AS PT LEFT JOIN ' . 
                          MINISTRY_LOOKUP_TBL . ' AS MLT ON (PT.ministry_id = MLT.id) LEFT JOIN ' . 
                          AGENCY_LOOKUP_TBL . ' AS ALT ON (ALT.id=PT.agency_id) LEFT JOIN ' . 
                          VIEW_PROJECT_GRAND_TOTAL . ' AS VPGT ON (PT.id = VPGT.pid)';
        $info['debug']  = false;
        $info['where']  = 'PT.status = ' . q('Approved') . 
                          ' AND PT.sector_division = ' . $sector_division . 
                          ' AND ' . q($fiscal_year_date['end_date']) . ' <= PT.date_of_completion' .
                          ' GROUP BY PT.ministry_id, PT.agency_id';
        $info['fields'] = array('COUNT(PT.id) AS project_count', 'MLT.name AS ministry_name', 'ALT.name AS agency_name', 'PT.date_of_completion', 
                                'PT.ministry_id', 'PT.agency_id', 'PT.status', 'SUM(VPGT.total_cost)', 'SUM(VPGT.gob_cost)', 'SUM(VPGT.pa_through_gob_cost)', 
                                'SUM(VPGT.pa_spc_acnt_cost)', 'SUM(VPGT.pa_dpa_cost)', 'SUM(VPGT.own_fund_cost)', 'SUM(VPGT.other_cost)');
        
        $result = select($info);
        //dumpvar($result);
        if ($result)
        {
            foreach($result AS $value)
            {
                $retData[$value->ministry_name][$value->agency_name] = $value;
            }
        }
        
        return $retData;
    }
    
    function getFiscalYearDats($current_fiscal_year)
    {
        $years = explode("-", $current_fiscal_year);
        
        $data['start_date'] = $years[0] . '-07-01';
        $data['end_date']   = $years[1] . '-06-30';
        
        return $data;
    }
    
    function getCurrentFiscalYear()
    {
        $curr_year  = date('Y');
        $curr_month = date('m');
        
        if ($curr_month >= 7 && $curr_month <= 12)
        {
            return $curr_year . '-' . ($curr_year+1);
        }
        
        if ($curr_month >= 1 && $curr_month <= 6)
        {
            return ($curr_year-1) . '-' . $curr_year;
        }
    }
   
  /**
   * This function calculate difference between two dates
   *
   * @param int -- $start (the start date)
   * @param int -- $end (the end date)
   * @return returns the difference between two date
   */
   function calcDayDiff($start, $end)
   {
      $starttime = gmmktime (0, 0, 0, substr ($start, 5, 2), substr ($start, 8, 2), substr ($start, 0, 4));
      $endtime   = gmmktime (0, 0, 0, substr ($end, 5, 2), substr ($end, 8, 2), substr ($end, 0, 4));
      $days      = (($endtime - $starttime) / 86400);
      $result    = floor ($days);

      return $result;
   }

   /**
   *
   * This function resizes the image file
   *
   * @return returns true if successful else false
   */
   function resampimage($forcedwidth, $forcedheight, $sourcefile, $destfile)
   {
      $g_srcfile=$sourcefile;
      $g_dstfile=$destfile;
      $g_fw=$forcedwidth;
      $g_fh=$forcedheight;

      $stats = getimagesize($sourcefile);
      if($stats === FALSE)
         return false;

      $mime = $stats['mime'];

      if (!preg_match("/jpeg/i", $mime) && !preg_match("/png/i", $mime) && !preg_match("/gif/i", $mime))
          return false;


      if(file_exists($g_srcfile))
      {
          $g_is=getimagesize($g_srcfile);
          if(($g_is[0]-$g_fw)>=($g_is[1]-$g_fh))
          {
              $g_iw=$g_fw;
              $g_ih=($g_fw/$g_is[0])*$g_is[1];
          }
          else
          {
              $g_ih=$g_fh;
              $g_iw=($g_ih/$g_is[1])*$g_is[0];
          }

          if(preg_match("/jpeg/i", $mime))
             $img_src = imagecreatefromjpeg($g_srcfile);
          else if(preg_match("/gif/i", $mime))
             $img_src = imagecreatefromgif($g_srcfile);
          else if(preg_match("/png/i", $mime))
             $img_src = imagecreatefrompng($g_srcfile);

          $img_dst=imagecreatetruecolor($g_iw,$g_ih);
          imagecopyresampled($img_dst, $img_src, 0, 0, 0, 0, $g_iw, $g_ih, $g_is[0], $g_is[1]);

          if (preg_match("/jpeg/i", $mime))
             imagejpeg($img_dst, $g_dstfile);
          else if(preg_match("/gif/i", $mime))
             imagegif($img_dst, $g_dstfile);
          else
             imagepng($img_dst, $g_dstfile);

          imagedestroy($img_dst);
          return true;
      }
      else
      {
         return false;
      }
   }

  /**
   * Purpose: export to pdf file from smarty parsed template
   *          when the subHeader1,2 and file name is given
   *
   * @param string $subHeader1-- contains the header information
   * @param string $subHeader2-- contains the header information
   * @param string $name      -- holds the pdf file name with .pdf extension
   * @return fasle
   */
   function exportToPDF($screen, $subHeader1, $subHeader2, $name, $oreintation, $fontSize = 8)
   {

      //create an instance of a PDF converter object
      $pdf=new HTML2FPDF('l','mm','letter');
      $pdf=new HTML2FPDF($oreintation,'mm','a4', $fontSize);
      //add an empty pdf page to the converter object
      $pdf->AddPage();

      //write the parsed template to the blank pdf page
      $pdf->WriteHTML($screen, $subHeader1, $subHeader2);
      //$pdf->WriteHTML($screen);

      // construct the resulting pdf file path
      $file         = PDF_DIR .'/'. $name.'.pdf';
      //echo "$file";
      $pdf->Output($file);

      header ('Location: /pdf/'.$name.'.pdf');

   }

   function getCategoryList2()
   {
   	
   	   $info['table']  = CATEGORY_TBL;
       //$info['debug']  = true;
      
      $result = select($info);
 
      if( !empty($result) )
      {
         foreach ( $result as $key => $value)
         {
            $retData[$value->id] = $value->category_name;
          
         }
      }
   	   //dumpVar($retData);
   	  return  $retData; 
   }
   
   
   function string_trip_header($string,$limit)
   {
       if (strlen($string) > $limit) {

            // truncate string
            $stringCut = substr($string, 0, $limit);

            // make sure it ends in a word so assassinate doesn't become ass...
            $string = substr($stringCut, 0, strrpos($stringCut, ' ')).'... '; 
        }
        return $string;
   }
   
   function isTPPPartBExist($pid)
   {
       $info['table'] = TPP_PART_B_TBL;
       $info['debug'] = false;
       $info['where'] = "pid = $pid";
       
       $result = select($info);
       
       if(!empty($result)) return 1;
       return 0;
   }
   
   function isECNECProjectAssign($projectID)
   {
       $info['table']  = ECENC_PROJECT_TBL;
       $info['debug']  = false;
       $info['where']  = 'project_id = ' . $projectID;
       
       $result = select($info);
       
       if ( !empty($result) )
       {
           return 1;  // means project already assigned to a meeting
       }
       else
       {
           return 0;  // means project is not assigned
       }
   }
   
?>
