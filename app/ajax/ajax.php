<?php

/**
 * Ajax Manager Class
 */
// include the main configuration file
   require_once($_SERVER['DOCUMENT_ROOT'] .'/app/common/conf/main.conf.php');
   require_once($_SERVER['DOCUMENT_ROOT'] .'/app/common/class/Document.class.php');
   require_once(LOCAL_CONFIG_DIR          .'/dp.conf.php');
   require_once(LOCAL_LIB_DIR             .'/dp.lib.php');
  

   
class ajaxApp extends DefaultApplication
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
          
           case 'deleteManagement'         : $screen = $this->deleteManagementItem();                  break;
           case 'deleteConcultant'         : $screen = $this->deleteConcultantItem();                  break;
           case 'deleteCounterPerson'      : $screen = $this->deleteCounterPerson();                   break;
           case 'updateMajorItems'         : $screen = $this->updateMajorItems();                      break;
           case 'getAgencyList'            : $screen = $this->getAgencyListByMinistry();               break;
           case 'getSubSector'             : $screen = $this->getSubSectorByAdp();                     break;
           case 'getDistrict'              : $screen = $this->getDistrictListByDivision();             break;
           case 'getUpzilla'               : $screen = $this->getUpzillaListByDistrict();              break;
           case 'ProjectHome'              : $screen = $this->showProjectHomePage();                   break;
           case 'createAnnexVRow'          : $screen = $this->createAnnexVRow();                       break;
           case 'updateYearInAnnexVRow'    : $screen = $this->updateYearInAnnexVRow();                 break;
           case 'saveAnnexVAttachment'     : $screen = $this->saveAnnexVAttachment();                  break;
           case 'saveStatusOfCommission'   : $screen = $this->saveStatusOfCommission();                break;
           case 'deleteattachment'         : $screen = $this->deleteAttachment();                      break;
           case 'delEconCodeattachment'    : $screen = $this->deleteEconomicCodeAttachment();          break;
           case 'updateAnnexV'             : $screen = $this->updateAnnexVRowItem();                   break;
           default                         : $screen = $this->showEditor($msg);
      }

      return true;
    }
    
    
    function updateAnnexVRowItem()
    {
        //$pid       = base64_decode(getUserField('PI'));
        $annex_id  = getUserField('annex_id');
        $thisField = getUserField('thisField');
        $thisValue = getUserField('thisValue');
        
        $info['table']                 = PROJECT_ANNEX_V_TBL;
        $info['debug']                 = false;
        $info['where']                 = 'id = ' . $annex_id;
        $info['data'][$thisField]      = $thisValue;
        
        echo json_encode(update($info));
        die;
    }
    
    function deleteEconomicCodeAttachment()
    {
        $pid      = base64_decode(getUserField('PI'));
        $annex_id = getUserField('annex_id');
        
        $info['table']                 = PROJECT_ANNEX_V_TBL;
        $info['debug']                 = false;
        $info['where']                 = 'id = ' . $annex_id . ' AND pid = ' . $pid;
        $info['data']['attachment_id'] = 0;
        
        echo json_encode(update($info));
        die;
    }
    
    function deleteAttachment()
    {
        $pid    = base64_decode(getUserField('PI'));
        $doc_id = getUserField('doc_id');
        
        $info['table']  = PROJECT_ATTACHMENT_TBL;
        $info['debug']  = false;
        $info['where']  = 'pid = ' . $pid . ' AND doc_id = ' . $doc_id;
        
        echo json_encode(delete($info));
        die;
    }
    
    function saveStatusOfCommission()
    {
        $data['pid']       = base64_decode(getUserField('PI'));
        $data['status']    = getUserField('status');
        
        $info['table']  = PROJECT_COMMISSION_STATUS_TBL;
        $info['debug']  = false;
        $info['data']   = $data;
        
        $result = insert($info);
        die;
    }
    
    function saveAnnexVAttachment()
    {
        $data['pid']       = base64_decode(getUserField('PI'));
        $annex_id          = getUserField('annex_id');
        
        $file = $_FILES['file'];
        
        if($file['size'] > 0)
        {
            $_FILES['document'] = $file;
            
            $thisDoc                = new DocumentEntity();
            $data['attachment_id']  = $thisDoc->addDocument(null,$data['pid']);
            
        }
        
        $info['table']  = PROJECT_ANNEX_V_TBL;
        $info['debug']  = true;
        $info['data']   = $data;
        $info['where']  = 'id = ' . $annex_id;
        
        update($info);
        die;
    }
    
    
    function saveAgencyFrowardingletter()
    {
        $data['pid']       = base64_decode(getUserField('PI'));
        
        $file = $_FILES['file'];
        
        if($file['size'] > 0)
        {
            $_FILES['document'] = $file;
            
            $thisDoc                           = new DocumentEntity();
            $data['agency_forward_letter_id']  = $thisDoc->addDocument(null,$data['pid']);
            
        }
        
        $info['table']  = PROJECT_TBL;
        $info['debug']  = true;
        $info['data']   = $data;
        $info['where']  = 'id = ' . $data['pid'];
        
        update($info);
        die;
    }
    
    
    function saveMinistryFrowardingletter()
    {
        $data['pid']       = base64_decode(getUserField('PI'));
        
        $file = $_FILES['file'];
        
        if($file['size'] > 0)
        {
            $_FILES['document'] = $file;
            
            $thisDoc                             = new DocumentEntity();
            $data['ministry_forward_letter_id']  = $thisDoc->addDocument(null,$data['pid']);
            
        }
        
        $info['table']  = PROJECT_TBL;
        $info['debug']  = true;
        $info['data']   = $data;
        $info['where']  = 'id = ' . $data['pid'];
        
        update($info);
        die;
    }
    
    function updateYearInAnnexVRow()
    {
        $pid                = base64_decode(getUserField('PI')); 
        $data['total_year'] = (int) getUserField('totalyear'); 
        
        $info['table']      = PROJECT_ANNEX_V_TBL;
        $info['debug']      = false;
        $info['data']       = $data; 
        $info['where']      = "pid = $pid";
        
        $result = update($info);
        
        if($result)
        {
            echo json_encode("1");
            die;
        }   
        else
        {
            echo json_encode("");
            die;
        } 
        
    }
    
    function createAnnexVRow()
    {
        $returnStr = "";
        $data['pid']        = base64_decode(getUserField('PI')); 
        $total_year         = (int) getUserField('totalyear'); 
        $data['total_year'] = $total_year;
        
        $info['table']      = PROJECT_ANNEX_V_TBL;
        $info['debug']      = false;
        $info['data']       = $data;
        
        $result = insert($info);
        
        $returnStr = $result['newid'];
        
        echo json_encode($returnStr);
        die;
        
//        if($result['newid'])
//        {
//            for($i=1;$i<=$total_year;$i++)
//            {
//                $dataDetail['pid']         = $data['pid'];
//                $dataDetail['annex_id']    = $result['newid'];
//                $dataDetail['year_serial'] = $i;
//                
//                $info1['table']    = PROJECT_ANNEX_V_DETAILS_TBL;
//                $info1['debug']    = false;
//                $info1['data']     = $dataDetail;
//                
//                $resultDetail = insert($info1);
//                
//                $returnStr.= "###".$resultDetail['newid'];
//                
//            }
//            echo json_encode($returnStr);
//            die;
//        }
//        else
//        {
//            echo json_encode("");
//            die;
//        } 
    }
   
    
    function getDistrictListByDivision()
    {
        $divisions     = getUserField('divisions');
        
       
        // delete from Annex V contingency details table
        $info['table']  = DISTRICT_LOOKUP_TBL;
        $info['debug']  = false;
        $info['where']  = "div_id IN ($divisions) AND status='Active' ORDER By district_name ASC";
        
         if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $data[$value->district_id] =  $value->district_name; 
                $option.="<option value='$value->district_id'>$value->district_name</option>";
            }
        }
                
        echo json_encode($option);
        die;
    }
    function getUpzillaListByDistrict()
    {
        $districts     = getUserField('districts');
        
       
        // delete from Annex V contingency details table
        $info['table']  = UPZILA_LOOKUP_TBL;
        $info['debug']  = false;
        $info['where']  = "district_id IN ($districts) AND status='Active' ORDER By upzila_name ASC";
        
        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $option.="<option value='$value->upzila_id'>$value->upzila_name</option>";
            }
        }
                
        echo json_encode($option);
        die;
    }
    
   function getAgencyListByMinistry()
    {
        $ministries     = getUserField('ministries');
        
        if ( $ministries == 'null' )
        {
            $ministryClause = ' 1 ';
        }
        else
        {
            $ministryClause = "ministry_id IN ($ministries)"; 
        }
        
        $info['table']  = AGENCY_LOOKUP_TBL;
        $info['fields'] = array('id','name');
        $info['where']  = "$ministryClause  AND status='Active' ORDER By name ASC";
        $info['debug']  = false;

        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $option.="<option value='$value->id'>$value->name</option>";
            }
        }
                
        echo json_encode($option);
        die;
    } 
    
   function getSubSectorByAdp()
    {
        $adp_sector     = getUserField('adp_sector');
        
        $info['table']  = ADP_SUBSECTOR_LOOKUP_TBL;
        $info['fields'] = array('id','name');
        $info['where']  = " adp_sector_id IN ($adp_sector) AND status='Active' ORDER By name ASC";
        $info['debug']  = false;

        if ($result = select($info))
        {
            foreach($result as $key => $value)
            {
                $option.="<option value='$value->id'>$value->name</option>";
            }
        }
                
        echo json_encode($option);
        die;
    } 
    
    
   function deleteConcultantItem()
    {
        $consultant_id  = getUserField('concultant_id');
        
        $info['table']  = TPP_CONCULTANT_DETAILS_TBL;
        $info['where']  = " id =$consultant_id";
        $info['debug']  = false;

        $result = delete($info);
                
        if($result) echo json_encode('1');
        else        json_encode('');
        die;
    } 
    
   function deleteCounterPerson()
    {
        $counter_person_id  = getUserField('counter_person_id');
        
        $info['table']  = TPP_COUNTER_PERSON_DETAILS_TBL;
        $info['where']  = " id =$counter_person_id";
        $info['debug']  = false;

        $result = delete($info);
                
        if($result) echo json_encode('1');
        else        json_encode('');
        die;
    } 
    
    
   function deleteManagementItem()
    {
        $management_id     = getUserField('management_id');
        
        $info['table']  = PROJECT_MANAGEMENT_TBL;
        $info['where']  = " id =$management_id";
        $info['debug']  = false;

        $result = delete($info);
                
        if($result) echo json_encode('1');
        else        json_encode('');
        die;
    } 
    
    function updateMajorItems()
    {
        $annex_id      = getUserField('id');
        $major_item    = getUserField('major_item');
        
        $info['table']  = PROJECT_ANNEX_V_TBL;
        $info['where']  = " id =$annex_id";
        $info['debug']  = false;
        
        $info['data']['major_item']   = $major_item;

        $result = update($info);
                
        if($result) echo json_encode('1');
        else        json_encode('');
        die;
    } 
}


   $thisApp  = new ajaxApp();
   $thisApp->run();        
   // Instanciate the user class
  
?>
