<?php

/**
 * Project Manager Class
 */

class projectManagerApp extends DefaultApplication
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
           case 'edit'               : $screen = $this->showEditor($msg);              break;
           case 'save'               : $screen = $this->saveRecord();                  break;
           case 'saveObjectiveCost'  : $screen = $this->saveObjectiveCost();           break;
           case 'saveLocations'      : $screen = $this->saveLocations();               break;
           case 'delete'             : $screen = $this->deleteRecord();                break;
           case 'list'               : $screen = $this->showList();                    break;
           case 'partA'              : $screen = $this->showProjectPartA();            break;
           case 'partB'              : $screen = $this->showProjectPartB();            break;
           case 'anaexI'             : $screen = $this->showProjectLocation();         break;
           case 'annexIIIa'          : $screen = $this->showProcurementPlanGOODS();    break;
           case 'saveAnnexIIIa'      : $screen = $this->saveProcurementPlan();         break;
           case 'deleteprocplan'     : $screen = $this->deleteProcurementPlan();       break;
           case 'ProjectHome'        : $screen = $this->showProjectHomePage();         break;
           case 'excel'              : $screen = $this->export();                    break;
           default                   : $screen = $this->showEditor($msg);
      }

      // Set the current navigation item
      $this->setNavigation('project_manager');

      if ($cmd == 'deleteprocplan' || $cmd == 'excel')
      {
         return;
      }
      //else
      {
         echo $this->displayScreen($screen);
      }

      return true;

   }
   
    function deleteProcurementPlan()
    {
        $proc_plan_id  = getUserField('proc_plan_id');
        $proc_category = getUserField('proc_category');
        
        $info['table']  = PROJECT_PROCUREMENT_PLAN_TBL;
        $info['where']  = 'id = ' . $proc_plan_id . ' AND procurement_category = ' . q($proc_category);
        $info['debug']  = false;
        
        if (delete($info))
        {
            //$msg  = $this->getMessage(ORDER_DELETE_SUCCESS_MSG);
            $msg = 'Success';
            $type = SUCCESS;
            echo json_encode($msg.'###'.$type);
            die;
        }
        else
        {
            //$msg  = $this->getMessage(ORDER_DELETE_ERROR_MSG);
            $msg = 'Error';
            $type = ERROR;
            echo json_encode($msg.'###'.$type);
        }
    }

   /**
   * Shows User Editor
   * @param message
   * @return user editor template
   */
   function showEditor($msg)
   {
      
      return createPage(PROJECT_CREATE_TEMPLATE, $data);
   }
   
   function saveObjectiveCost()
   {
       $pid     = base64_decode(getUserField('PI'));
       $project = new Project($pid);
       
       //dumpVar($_REQUEST);
       //die;
       
       $project->saveBasicInfo();
       $project->saveMinistries(getUserField('ministries'));
       $project->saveAgencies(getUserField('agencies'));
       $project->saveDevPartners(getUserField('partners'));
       $project->saveModeOfFinancing();
       
       header ('Location: project_manager.php?cmd=partA&PI='.  base64_encode($pid));
   }
   
   function saveLocations()
   {
       $pid     = base64_decode(getUserField('PI'));
       //dumpVar($_REQUEST);
       //die;
       $project = new Project($pid);
       $project->saveLocations(getUserField('location_divisions'),'Division');
       $project->saveLocations(getUserField('location_districts'),'District');
       $project->saveLocations(getUserField('location_upzilas'),'Upzila');
       
       header ('Location: project_manager.php?cmd=partA&PI='.  base64_encode($pid));
   }
           
   function showProjectPartA()
   {
       $pid     = base64_decode(getUserField('PI'));
       $project = new Project($pid);
      
       $data                     = $project;
       $data->ministryList       = getMinistryList();
       $data->agencyList         = getAgencyList();
       $data->adpSectorList      = getADPSectorList();
       $data->adpSubSectorList   = getADPSubSectorList();
       $data->sectorDivisionList = getSectorDivisionList();
       $data->divisionList       = getDivisionList();
       $data->districtList       = getDistrictList();
       $data->upazilaList        = getUpzilaList();
       //dumpVar($data);
       $data->PI              = getUserField('PI'); 
       
      return createPage(PROJECT_PART_A_TEMPLATE, $data);
   }
   
   function showProjectPartB()
   {
      return createPage(PROJECT_PART_B_TEMPLATE, $data);
   }
   
    function showProjectLocation()
    {
        $PI        = getUserField('PI');    
        $pid       = base64_decode($PI);
        $project   = new Project($pid);
        $data->location = $project->basicInfo->locations;
        $data->PI  =  $PI;
        //dumpVar($data);
       
        return createPage(PROJECT_ANNEX_I_LOCATION_TEMPLATE, $data);
    }
    
    function showProcurementPlanGOODS()
    {
        $PI           = getUserField('PI');    
        $pid          = base64_decode($PI);
        $report_type  = getUserField('report_type');
        $procurement_category = getUserField('procurement_category');
        
        $data->PI                       =  $PI;
        $data->procurement_list         = getProcurementPlanList($pid, 'Goods');
        $data->procurement_method_list  = getProcurementMethodList();
        $data->procurement_type_list    = getProcurementTypeList();
           
        $this->exportTo($procurement_category, $report_type);
        
        //dumpVar($data);
       
        return createPage(PROJECT_PROCUREMENT_PLAN_GOODS_TEMPLATE, $data);
    }
    
    function saveProcurementPlan()
    {
        $pid       = base64_decode(getUserField('PI'));
        updateProcurementPlan();
        
        return $this->showProcurementPlanGOODS();
        //header ('Location: project_manager.php?cmd=annexIIIa&PI='.  base64_encode($pid));
    }
   
    function showProjectHomePage()
    {
        $pid     = base64_decode(getUserField('PI'));
        $project = new Project($pid);

        $data      = $project;
        $data->PI  = getUserField('PI');

        return createPage(PROJECT_BASIC_TEMPLATE, $data);
    }

   /**
   * Saves User information
   * @return message
   */
   function saveRecord()
   {
       
       $project = new Project();
       $newid   = $project->saveBasicInfo();
       if($newid)
       { 
           header ('Location: project_manager.php?cmd=ProjectHome&PI='.  base64_encode($newid));
       }
       else
       {
           $data['error']='yes';
           return createPage(PROJECT_CREATE_TEMPLATE, $data);
       }
   }

   /**
   * Shows user list
   * @return user list template
   */
    function showList()
    {
        $project_title  = getUserField('project_title');
        $project_type   = getUserField('project_type');

        $filterClause = '1';

        if ($project_title)
            $filterClause .= " and project_title_en LIKE '%$project_title%' ";
        if ($project_type)
            $filterClause .= " and project_type = '$project_type' ";

        $info['table'] = PROJECT_TBL;
        $info['debug'] = false;
        $info['where'] = $filterClause . ' Order By project_title_en ASC';

        $data['list'] = select($info);

        $data['project_title']    = $project_title;
        $data['project_type']        = $project_type;
      
        //dumpVar($data);
      
        return createPage(PROJECT_LIST_TEMPLATE, $data);
   }
   
   function exportTo($procurement_category, $report_type)
   {
       $pid     = base64_decode(getUserField('PI'));
       
       $info['table']  = PROJECT_PROCUREMENT_PLAN_TBL;
       $info['debug']  = false;
       //$info['where']  = 'pid = ' . $pid . ' AND procurement_category = ' . q($procurement_category);
       $info['where']  = 'pid = ' . $pid . ' AND procurement_category = ' . q($procurement_category);
       
       $result = select($info);
       
       if ($report_type == 'excel')
       {    
           MakeExcel($result);
       }
       else if ($report_type == 'word')
       {
           MakeWordDoc($result);
       }
       
   }
}
?>