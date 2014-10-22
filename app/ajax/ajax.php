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
           case 'saveAnnexVAttachment'     : $screen = $this->saveAnnexVAttachment();                  break;
           default                         : $screen = $this->showEditor($msg);
      }

      return true;
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
    
    function createAnnexVRow()
    {
        $data['pid']    = base64_decode(getUserField('PI')); 
        $info['table']  = PROJECT_ANNEX_V_TBL;
        $info['debug']  = false;
        $info['data']   = $data;
        
        $result = insert($info);
        
        echo json_encode($result['newid']);
        die;
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
        
        $info['table']  = AGENCY_LOOKUP_TBL;
        $info['fields'] = array('id','name');
        $info['where']  = " ministry_id IN ($ministries) AND status='Active' ORDER By name ASC";
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
