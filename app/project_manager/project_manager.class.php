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
            case 'edit'               : $screen = $this->showEditor($msg);    break;
            case 'save'               : $screen = $this->saveRecord();        break;
            case 'saveObjectiveCost'  : $screen = $this->saveObjectiveCost();  break;
            case 'saveLocations'      : $screen = $this->saveLocations();  break;
            case 'delete'             : $screen = $this->deleteRecord();    break;
            case 'list'               : $screen = $this->showList();        break;
            case 'partA'              : $screen = $this->showProjectPartA(); break;
            case 'partB'              : $screen = $this->showProjectPartB(); break;
            case 'anaexI'             : $screen = $this->showProjectLocation(); break;
            case 'ProjectHome'        : $screen = $this->showProjectHomePage(); break;
            //case 'list'   : $screen = $this->showList();        break;
            default             : $screen = $this->showEditor($msg);
        }

        // Set the current navigation item
        $this->setNavigation('project_manager');

         echo $this->displayScreen($screen);

        return true;
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
      dumpVar($project);
        $data                     = $project;
        $data->ministryList       = getMinistryList();
        $data->agencyList         = getAgencyList();
        $data->adpSectorList      = getADPSectorList();
        $data->adpSubSectorList   = getADPSubSectorList();
        $data->sectorDivisionList = getSectorDivisionList();
        $data->divisionList       = getDivisionList();
        $data->PI                 = getUserField('PI'); 
       
        return createPage(PROJECT_PART_A_TEMPLATE, $data);
    }
   
    function showProjectPartB()
    {
        return createPage(PROJECT_PART_B_TEMPLATE, $data);
    }

    function showProjectLocation()
    {
        $PI             = getUserField('PI');    
        $pid            = base64_decode($PI);
        $project        = new Project($pid);
        $data->location = $project->basicInfo->locations;
        $data->PI       =  $PI;
        //dumpVar($data);

        return createPage(PROJECT_ANNEX_I_LOCATION_TEMPLATE, $data);
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

        return createPage(PROJECT_LIST_TEMPLATE, $data);
    }
}
?>