<?php
  /**
   * File: dp.lib.php
   * Library File
   *
   * Developed by EVOKNOW, Inc.
   * Copyright (c) 2005 EVOKNOW, Inc.
   * Version ID: $Id$
   */

   /**
   * Gets username
   * @param userid
   * @return username
   */
   
   

   function getMinistryList()
   {
        $info['table']  = MINISTRY_LOOKUP_TBL;
        $info['fields'] = array('id','name');
        $info['where']  = " status='Active' ORDER By name ASC";
      //$info['debug']  = true;

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
      //$info['debug']  = true;

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
      //$info['debug']  = true;

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
      //$info['debug']  = true;

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
      //$info['debug']  = true;

      if ($result = select($info))
      {
         foreach($result as $key => $value)
         {
            $data[$value->id] =  $value->name; 
         }
      }
      return $data;
   } 
   
   
   
 

   /**
   * Gets teamname
   * @param groupID
   * @return teamname
   */
   function getTeamName($groupID = null)
   {
      $info['table']  = GROUP_TBL;
      $info['fields'] = array('name');
      $info['where']  = "group_id = '$groupID'";
      $info['debug']  = false;

      if ($result = select($info))
      {
         foreach($result as $key => $value)
         {
            $teamName = $value->name;
         }
      }

      return $teamName;
   }

   /**
   * Gets Application List
   * @return array application list
   */
   function getApplicationList()
   {
      $info['table']  = APP_INFO_TBL;
      $info['fields'] = array('id', 'name');
      $info['where']  = '1 Order By name';
      $info['debug']  = false;

      if ($result = select($info))
      {
         foreach($result as $key => $value)
         {
            $list[$value->id] = $value->name;
         }
      }

      return $list;
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