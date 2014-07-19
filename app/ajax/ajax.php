<?php

/**
 * Ajax Manager Class
 */
// include the main configuration file
   require_once($_SERVER['DOCUMENT_ROOT'] .'/app/common/conf/main.conf.php');
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
          
           case 'getAgencyList'         : $screen = $this->getAgencyListByMinistry();                  break;
           case 'getSubSector'         : $screen = $this->getSubSectorByAdp();                  break;
           case 'getDistrict'         : $screen = $this->getDistrictListByDivision();                  break;
           case 'getUpzilla'         : $screen = $this->getUpzillaListByDistrict();                  break;
           case 'ProjectHome'        : $screen = $this->showProjectHomePage();         break;
           default                   : $screen = $this->showEditor($msg);
      }

      // Set the current navigation item
      $this->setNavigation('project_manager');

      if ($cmd == 'deleteprocplan' || $cmd == 'excel' || $cmd == 'deletecomponent' || $cmd == 'deleteyear')
      {
         return;
      }
      //else
      {
         echo $this->displayScreen($screen);
      }

      return true;

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
}


   $thisApp  = new ajaxApp();
   $thisApp->run();        
   // Instanciate the user class
  
?>
