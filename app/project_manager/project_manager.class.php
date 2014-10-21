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
           case 'saveProjectInfo'    : $screen = $this->saveProjectInfo();             break;
           case 'save'               : $screen = $this->saveRecord();                  break;
           case 'saveObjectiveCost'  : $screen = $this->saveObjectiveCost();           break;
           case 'saveLocations'      : $screen = $this->saveLocations();               break;
           case 'saveLogFrame'       : $screen = $this->saveLogFrame();                break;
           case 'delete'             : $screen = $this->deleteRecord();                break;
           case 'list'               : $screen = $this->showList();                    break;
           case 'partA'              : $screen = $this->showProjectPartA();            break;
           case 'partB'              : $screen = $this->showProjectPartB();            break;
           case 'savePartB'          : $screen = $this->saveProjectPartB();            break;
           case 'anaexI'             : $screen = $this->showProjectLocation();         break;
           case 'annexII'            : $screen = $this->showAnnexII();                 break;
           case 'saveAnnexII'        : $screen = $this->saveProjectManagement();       break;
           case 'saveAnnexI'         : $screen = $this->saveProjectLocationWithCost(); break;
           case 'annexIIIa'          : $screen = $this->showProcurementPlanGOODS();    break;
           case 'saveAnnexIIIa'      : $screen = $this->saveProcurementPlan($cmd);     break;
           case 'annexIIIb'          : $screen = $this->showProcurementPlanWORKS();    break;
           case 'saveAnnexIIIb'      : $screen = $this->saveProcurementPlan($cmd);     break;
           case 'annexIIIc'          : $screen = $this->showProcurementPlanSERVICES(); break;
           case 'saveAnnexIIIc'      : $screen = $this->saveProcurementPlan($cmd);     break;
           case 'deleteprocplan'     : $screen = $this->deleteProcurementPlan();       break;
           case 'annexV'             : $screen = $this->showAnnexV();                  break;
           case 'annexIV'            : $screen = $this->showAnnexIV();                 break;
           case 'saveAnnexV'         : $screen = $this->saveAnnexV();                  break;
           case 'deletecomponent'    : $screen = $this->deleteComponent();             break;
           case 'deleteyear'         : $screen = $this->deleteYear();                  break;
           case 'ProjectHome'        : $screen = $this->showProjectHomePage();         break;
           case 'forwardProject'     : $screen = $this->forwardProject();              break;
           case 'commentPage'        : $screen = $this->commentPage();                 break;
           case 'attachment'         : $screen = $this->attachment();                 break;
           case 'saveAttachment'     : $screen = $this->saveAttachments();                 break;
           case 'saveComment'        : $screen = $this->saveComment();                 break;
           default                   : $screen = $this->showEditor($msg);
      }

     
     if($cmd == 'deleteprocplan' || $cmd == 'excel' || $cmd == 'deletecomponent' || $cmd == 'deleteyear')
      {
         return;
      }
      
      if($cmd== 'commentPage' || $cmd == 'attachment')
      {
          echo  $screen;
      }   
      else
      {
         echo $this->displayScreen($screen);
      }

      return true;

   }
   
    function saveComment()
    {
       $pid            = base64_decode(getUserField('PI')); 
       //$data['PI']     = getUserField('PI');
       $message        = new Message();
       $message->save();
       return createPage(SICCESS_MSG_TEMPLATE,$data);
      //header ('Location: project_manager.php?cmd=success&PI='.  base64_encode($pid));
       
    }
    function saveAttachments()
    {
       $pid            = base64_decode(getUserField('PI')); 
       //$data['PI']     = getUserField('PI');
       $message        = new Message();
       $message->saveAttachment();
       return createPage(SICCESS_MSG_TEMPLATE,$data);
      //header ('Location: project_manager.php?cmd=success&PI='.  base64_encode($pid));
       
    }
    
    function commentPage()
    {
       $pid        = base64_decode(getUserField('PI')); 
       $data['PI'] = getUserField('PI');
        
       return  createPage(PROJECT_COMMENT_TEMPLATE, $data); 
       
    }
    function attachment()
    {
       $pid        = base64_decode(getUserField('PI')); 
       $data['PI'] = getUserField('PI');
        
       return  createPage(PROJECT_ATTACHMENT_TEMPLATE, $data); 
       
    }
   
    function forwardProject()
    {
        $pid    = base64_decode(getUserField('PI'));
        $status = getUserField('status');
        //dumpVar($_REQUEST);
        //die;
               
        $info['table']  = PROJECT_TBL;
        $info['debug']  = false;
        $info['where']  = 'id = ' . $pid;
        
        $info['data']['status'] = $status;
        
        $result = update($info);
        
        if($result)
        {
            
        }    
        header ('Location: project_manager.php?cmd=ProjectHome&PI='.  base64_encode($pid));
        
       
    }
    function deleteComponent()
    {
        $annex_id = getUserField('annex_id');
        
        $info['table']  = PROJECT_ANNEX_V_DETAILS_TBL;
        $info['debug']  = false;
        $info['where']  = 'annex_id = ' . $annex_id;
        
        $infop['table']  = PROJECT_ANNEX_V_TBL;
        $infop['debug']  = false;
        $infop['where']  = 'id = ' . $annex_id;
        
        delete($info);
        
        if (delete($infop) )
        {
            echo json_encode('1');
            die;    
        }
        else
        {
            echo json_encode('');
            die;
        }
    }
    
    function deleteYear()
    {
        $pid         = base64_decode(getUserField('pid'));
        $year_serial = getUserField('year_serial');
        
        // delete from Annex V details table
        $info['table']  = PROJECT_ANNEX_V_DETAILS_TBL;
        $info['debug']  = false;
        $info['where']  = 'pid = ' . $pid . ' AND year_serial = ' . $year_serial;
        
        // delete from Annex V contingency details table
        $infoC['table']  = PROJECT_ANNEX_V_CON_DETAILS_TBL;
        $infoC['debug']  = false;
        $infoC['where']  = 'pid = ' . $pid . ' AND year_serial = ' . $year_serial;
                
        if ( delete($info) && delete($infoC))
        {
            $this->updateAnexVTotalyear($pid, $year_serial-1);
        
            echo json_encode('1');
            die;
        }
        else
        {
            echo json_encode('');
            die;
        }
    }
    
    function updateAnexVTotalyear($pid, $year)
    {
        $data['total_year'] = $year;
        
        $info['table']  = PROJECT_ANNEX_V_TBL;
        $info['debug']  = false;
        $info['where']  = 'pid = ' . $pid;
        $info['data']   = $data;
                
        update($info);
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
       
       $project->saveBasicInfo();
       $project->saveMinistries(getUserField('ministries'));
       $project->saveAgencies(getUserField('agencies'));
       $project->saveDevPartners(getUserField('partners'));
       $project->saveModeOfFinancing();
       
       header ('Location: project_manager.php?cmd=partA&PI='.  base64_encode($pid));
   }
   function saveProjectPartB()
   {
       $pid     = base64_decode(getUserField('PI'));
       $project = new Project($pid);
       
       $project->savePartB();
       $project->savePartBMajorItems();
       
       
       header ('Location: project_manager.php?cmd=partB&PI='.  base64_encode($pid));
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
   
   function saveLogFrame()
   {
       $pid     = base64_decode(getUserField('PI'));
       //dumpVar($_REQUEST);
       //die;
       $project = new Project($pid);
       
       $project->saveBasicInfo();
       $project->saveLogFrame();
       
       header ('Location: project_manager.php?cmd=partA&PI='.  base64_encode($pid));
   }
           
    function showProjectPartA()
    {
        $pid     = base64_decode(getUserField('PI'));
        $project = new Project($pid);

        $data                         = $project;
        $data->ministryList           = getMinistryList();
        $data->partnerList            = getDevelopmentPartnerList();
        $data->agencyList             = getAgencyList();
        $data->adpSectorList          = getADPSectorList();
        $data->adpSubSectorList       = getADPSubSectorList();
        $data->sectorDivisionList     = getSectorDivisionList();
        $data->divisionList           = getDivisionList();
        $data->districtList           = getDistrictList();
        $data->upazilaList            = getUpzilaList();
        $data->modefinancing          = $project->loadModeOfFinancing();
        $data->logframe               = $project->loadLogFrame();
        $data->year_wise_gob_ownfund  = $project->loadYearWiseGobOwnfundTotal();
        
        $data->year_wise_gob_ownfundCon  = $project->loadYearWiseGobOwnfundTotalFromContigency();
       
        $result = getProjectWiseEconomicCodeList($pid);
        
        if($result)
        foreach($result as $value)
        {
            $economicCodeList[$value->component_type][] = $value;
        }
        
        $data->component_list = $economicCodeList;
        
        $result = getProjectWiseContingencyList($pid);
        
        if($result)
        {    
            foreach($result as $value)
            {
                $contingencyeList[$value->economic_subcode_name] = $value;
            }
        }
        
        $data->contingency_list    = $contingencyeList;
        $data->comp_sub_total_list = getProjectWiseComponentSubTotal($pid);
        $data->PI                  = getUserField('PI'); 
        
        //dumpVar($data->basicInfo);
        //dumpVar($_SESSION);
        
        return createPage(PROJECT_PART_A_TEMPLATE, $data);
   }
   
    function showProjectPartB()
    {
        $pid          = base64_decode(getUserField('PI'));
        $project      = new Project($pid);  
        $data         = $project;
        $data->PI     = getUserField('PI'); 
        $data->partB  = $project->loadPartB();
        
        $data->major_items  = $project->loadMajorItems();
        //dumpVar($data->major_items);
        
        return createPage(PROJECT_PART_B_TEMPLATE, $data);
    }
   
    function showProjectLocation()
    {
        $PI              = getUserField('PI');    
        $pid             = base64_decode($PI);
        $project         = new Project($pid);
        
        $data->basicInfo   = $project->basicInfo;
        $data->location    = $project->basicInfo->locations;
        $data->PI          =  $PI;
        //dumpVar($data);
        
        $data->location_body = makeLocationView($data->location); 
       
        return createPage(PROJECT_ANNEX_I_LOCATION_TEMPLATE, $data);
    }
    
    function showProcurementPlanGOODS()
    {
        $PI                    = getUserField('PI');    
        $pid                   = base64_decode($PI);
        $report_type           = getUserField('report_type');
        $procurement_category  = getUserField('procurement_category');
        
        
        $project               = new Project($pid);
        $data->basicInfo     = $project->basicInfo;
        
        $data->PI                       = $PI;
        $data->procurement_list         = getProcurementPlanList($pid, 'Goods');
        $data->procurement_method_list  = getProcurementMethodList();
        $data->procurement_type_list    = getProcurementTypeList();
        $data->error                    = getUserField('error');
           
        $this->exportTo($procurement_category, $report_type);
        
        return createPage(PROJECT_PROCUREMENT_PLAN_GOODS_TEMPLATE, $data);
    }
    function showAnnexII()
    {
        $PI                    = getUserField('PI');    
        $pid                   = base64_decode($PI);
        
        $project               = new Project($pid);
        $data->basicInfo       = $project->basicInfo;
        
        $data->PI              =  $PI;
        $data->management_list = getManagementList($pid);
        
        //dumpVar($data->management_list);
           
        return createPage(PROJECT_MANAGEMENT_TEMPLATE, $data);
    }
    
    
    function showProcurementPlanWORKS()
    {
        $PI                    = getUserField('PI');    
        $pid                   = base64_decode($PI);
        $report_type           = getUserField('report_type');
        $procurement_category  = getUserField('procurement_category');
        
        $project               = new Project($pid);
        $data->basicInfo       = $project->basicInfo;
        
        $data->PI                       =  $PI;
        $data->procurement_list         = getProcurementPlanList($pid, 'Works');
        $data->procurement_method_list  = getProcurementMethodList();
        $data->procurement_type_list    = getProcurementTypeList();
           
        $this->exportTo($procurement_category, $report_type);
        
        return createPage(PROJECT_PROCUREMENT_PLAN_WORKS_TEMPLATE, $data);
    }
    
    function showProcurementPlanSERVICES()
    {
        $PI                    = getUserField('PI');    
        $pid                   = base64_decode($PI);
        $report_type           = getUserField('report_type');
        $procurement_category  = getUserField('procurement_category');
        
        $project               = new Project($pid);
        $data->basicInfo       = $project->basicInfo;
        
        $data->PI                       =  $PI;
        $data->procurement_list         = getProcurementPlanList($pid, 'Services');
        $data->procurement_method_list  = getProcurementMethodList();
        $data->procurement_type_list    = getProcurementTypeList();
           
        $this->exportTo($procurement_category, $report_type);
        
        return createPage(PROJECT_PROCUREMENT_PLAN_SERVICES_TEMPLATE, $data);
    }
    
    function saveProcurementPlan($cmd)
    {
        $pid       = base64_decode(getUserField('PI'));
        
        $error = updateProcurementPlan();
        
        if ($cmd == 'saveAnnexIIIa')
        {
            header ('Location: project_manager.php?cmd=annexIIIa&PI='.  base64_encode($pid) . '&error=' . $error);
        }
        else if ($cmd == 'saveAnnexIIIb')
        {
            header ('Location: project_manager.php?cmd=annexIIIb&PI='.  base64_encode($pid) . '&error=' . $error);
        }
        else if ($cmd == 'saveAnnexIIIc')
        {
            header ('Location: project_manager.php?cmd=annexIIIc&PI='.  base64_encode($pid) . '&error=' . $error);
        }
    }
    
    function saveProjectLocationWithCost()
    {
        $pid       = base64_decode(getUserField('PI'));
        
        updateLocationWithCost();
        header ('Location: project_manager.php?cmd=anaexI&PI='.  base64_encode($pid));
    }
    
    function saveProjectManagement()
    {
        $pid       = base64_decode(getUserField('PI'));
        
        updateProjectManagement();
        header ('Location: project_manager.php?cmd=annexII&PI='.  base64_encode($pid));
    }
            
    function saveAnnexV()
    {
        $pid       = base64_decode(getUserField('PI'));
        
        updateAnnexV();
        updateAnnexVContingency();
        //updateProjectTotalCost($pid);

        header ('Location: project_manager.php?cmd=annexV&PI='.  base64_encode($pid));
        //return $this->showAnnexV();
    }
    
    function showAnnexV()
    {
        $PI                    = getUserField('PI');    
        $pid                   = base64_decode($PI);
        $report_type           = getUserField('report_type');
        
        $project               = new Project($pid);
        $data['basicInfo']     = $project->basicInfo;
                
        $data['PI']                                    = $PI;
        $data['econimonic_code_list']                  = getEconomicCodeList();
        $data['econimonic_subcode_list']               = getEconomicSubCodeList();
        $data['component_list']                        = getComponentList($pid);
        $data['annx_v_component_details']              = getAnnexVComponentDetails($pid); //ajaj
        $data['annex_v_contingency_list']              = getContingencyList($pid);
        $data['annex_v_contingency_details']           = getAnnexVContingencyDetails($pid);
        $data['annex_v_category_sub_total']            = getProjectWiseComponentSubTotal($pid);
        $data['annex_v_category_year_wise_sub_total']  = getProjectCategoryYearWiseComponentSubTotal($pid);
        
        //dumpvar($data['annx_v_component_details']);
        if($report_type)
        $this->annexVExportTo($pid, $report_type);
        
        return createPage(PROJECT_ANNEX_V_TEMPLATE, $data);
    }
    
    function showAnnexIV()
    {
        $PI                                  = getUserField('PI');    
        $pid                                 = base64_decode($PI);
        $data['PI']                          = $PI;
        $project                             = new Project($pid);
        
        $data['project_info']                = $project->basicInfo;
        //dumpVar($data);
        $data['econimonic_code_list']        = getEconomicCodeList();
        $data['econimonic_subcode_list']     = getEconomicSubCodeList();
        $data['component_list']              = getComponentList($pid);
        $data['annex_v_component_details']   = getAnnexVComponentDetails($pid);
        $data['annex_v_contingency_list']    = getContingencyList($pid);
        $data['annex_v_contingency_details'] = getAnnexVContingencyDetails($pid);
        
        //dumpvar($data['annx_v_component_details']);
        
        return createPage(PROJECT_ANNEX_IV_TEMPLATE, $data);
    }
   
    function showProjectHomePage()
    {
        $pid     = base64_decode(getUserField('PI'));
        $project = new Project($pid);

        $data                 = $project;
        $data->PI             = getUserField('PI');
        $data->project_status = $project->getAllStatus();
        
        $message                   = new Message(null,$pid);
        $data->project_msg         = $message->loadMessageByProject();
        $data->project_attachments = $message->loadAttachmentsByProject();
        
        //dumpVar($data);
        //dumpVar($_SESSION);

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
           if($_REQUEST['project_type'] =='TPP')
           {
               header ('Location: /app/tpp_manager/tpp_manager.php?cmd=ProjectHome&PI='.  base64_encode($newid));
           }
           else
           {
               header ('Location: project_manager.php?cmd=ProjectHome&PI='.  base64_encode($newid));
           }   
       }
       else
       {
           $data['error']='yes';
           return createPage(PROJECT_CREATE_TEMPLATE, $data);
       }
   }
   function saveProjectInfo()
   {
       $pid     = base64_decode(getUserField('PI'));
       $project = new Project($pid);
       $project->saveBasicInfo();
       
       
       header ('Location: project_manager.php?cmd=partA&PI='.  base64_encode($pid));
       
   }

   /**
   * Shows user list
   * @return user list template
   */
    function showList()
    {
        $project_title  = getUserField('project_title');
        $project_type   = getUserField('project_type');
        
        $user_type      = $_SESSION['user_type'];
        
        $filterClause = '1';
        
        if($user_type =='Ministry')
        {
            $filterClause.=' AND P.ministry_id='.$_SESSION['ministry_id'];
        }
        elseif($user_type =='Agency')
        {
            $filterClause.=' AND P.agency_id='.$_SESSION['agency_id'];
        }    

        if ($project_title)
        {
            $filterClause .= " and project_title_en LIKE '%$project_title%' ";
        }
        if ($project_type)
        {
            $filterClause .= " and project_type = '$project_type' ";
        }

        $info['table']  = PROJECT_TBL.' AS P LEFT JOIN '.VIEW_PROJECT_GRAND_TOTAL.' AS VP ON(P.id=VP.pid)'.
                         ' LEFT JOIN '.AGENCY_LOOKUP_TBL.' AS ALT ON(P.agency_id=ALT.id)';
        $info['debug']  = false;
        $info['fields'] = array('P.*','VP.*','ALT.name as agency_name');
        $info['where']  = $filterClause .' Order By P.project_title_en ASC';

        $data['list'] = select($info);

        $data['project_title']    = $project_title;
        $data['project_type']     = $project_type;
      
        //dumpVar($data);
      
        return createPage(PROJECT_LIST_TEMPLATE, $data);
   }
   
    function exportTo($procurement_category, $report_type)
    {
        $pid     = base64_decode(getUserField('PI'));
        $project = new Project($pid);
        
        $data['basicInfo']   = $project->basicInfo;

        $info['table']  = PROJECT_PROCUREMENT_PLAN_TBL;
        $info['debug']  = false;
        $info['where']  = 'pid = ' . $pid . ' AND procurement_category = ' . q($procurement_category);

        $result = select($info);
//dumpVar($data);
        if ($report_type == 'excel')
        {    
            //dumpVar($data);
            $data['proc_plan_list']        = $result;
            MakeExcel($data, strtoupper($procurement_category));
        }
        else if ($report_type == 'word')
        {
            $data['proc_plan_list']        = $result;
            MakeWordDoc($data, strtoupper($procurement_category));
        }
        else if ($report_type == 'pdf')
        {
            $data['proc_plan_list']        = $result;
            $data['procurement_category']  = strtoupper($procurement_category);
            
            $screen = createPage(PROC_PLAN_PDF_TEMPLATE, $data);

            MakePDFDoc($screen, $procurement_category);
        }
    }
    //ajaj
    function annexVExportTo($pid, $report_type)
    {
        $economic_code_list          = getProjectWiseEconomicCodeList($pid);
        $contingency_list            = getContingencyList($pid);
        $economic_code_details_list  = getAnnexVComponentDetails($pid);
        $contingency_details_list    = getAnnexVContingencyDetails($pid);

        // arrange the economic code list according to the component type
        // NOTE: economic code and contingency list are under same name that is "component_list"
        foreach($economic_code_list as $value)
        {
            $retData['component_list'][$value->component_type][] = $value;
        }
        
        // arranging the contingency list according tp the sub code code name
        foreach($contingency_list as $value)
        {
            $retData['component_list'][$value->economic_subcode_name][] = $value;
        }
        
        // arranging the economic code details phasing cost according to the year serial or year wise
        foreach($economic_code_details_list as $value)
        {
            $retData['component_details'][$value->financial_year][] = $value;
        }
        // arranging the contingency details phasing cost according to the year serial or year wise
        foreach($contingency_details_list as $value)
        {
            $retData['contingency_details'][$value->year_serial][] = $value;
        }
        
        //dumpVar($retData['contingency_details']);

        if ($report_type == 'excel')
        {    
            makeAnnexVExcel($retData);
        }
    }
   
   function getAgencyListByMinistry()
    {
        $ministries     = getUserField('ministries[]');
        
        $info['table']  = AGENCY_LOOKUP_TBL;
        $info['fields'] = array('id','name');
        $info['where']  = " ministry_id IN ($ministries) AND status='Active' ORDER By name ASC";
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
}
?>
