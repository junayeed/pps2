<?php
  /**
   * File: dp.lib.php
   * Library File
   */

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
   
    function getAgencyList()
    {
        $info['table']  = AGENCY_LOOKUP_TBL;
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
   
    function getDivisionList()
    {
        $info['table']  = DIVISION_LOOKUP_TBL;
        $info['fields'] = array('divid', 'division_name');
        $info['where']  = "status='Active' ORDER BY division_name ASC";
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
   
   function getComponentList($pid)
   {
       $info['table']  = PROJECT_ANNEX_V_TBL . ' AS PAVT LEFT JOIN ' . ECONOMIC_CODE_LOOKUP_TBL . ' AS ECLT ON (PAVT.economic_code_id = ECLT.id)';
       $info['debug']  = false;
       $info['where']  = 'pid = ' . $pid;
       $info['fields'] = array('PAVT.*', 'ECLT.component_type');
       
       $result = select($info);
       
       if ( !empty ($result) )
       {
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
                         ' LEFT JOIN ' . ECONOMIC_CODE_LOOKUP_TBL . ' AS ECLT ON (PAVT.economic_code_id=ECLT.id)';
       $info['debug']  = false;
       $info['where']  = 'PAVDT.pid = ' . $pid.' order by year_serial';
       $info['fields'] = array('PAVDT.*', 'ECLT.component_type', 'PAVT.id AS annex_id');
       
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
        $info['fields'] = array('ECLT.economic_code', 'ESLT.economic_subcode', 'ECLT.component_type', 'PAVT.economic_subcode_name', 
                                'PAVT.unit', 'PAVT.unit_cost', 'PAVT.qty', 'PAVT.total_cost', 'PAVT.gob', 'PAVT.gob_fe', 'PAVT.rpa_through_gob', 
                                'PAVT.rpa_special_account', 'PAVT.dpa', 'PAVT.own_fund', 'PAVT.own_fund_fe', 'PAVT.other', 'PAVT.other_fe');

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
       $info['debug']  = true;
       $info['where']  = 'pid = ' . $pid;
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
   
   
?>
