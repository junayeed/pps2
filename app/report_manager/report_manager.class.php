<?php

/**
 * File: user_manager.class.php
 */

/**
 * The userManager application class
 */

class reportManagerApp extends DefaultApplication
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
           case 'edit'              : $screen = $this->showEditor($msg);  break;
           case 'add'               : $screen = $this->saveRecord();      break;
           case 'delete'            : $screen = $this->deleteRecord();    break;
           case 'list'              : $screen = $this->showList();        break;
           case 'officerlist'       : $screen = $this->officerList();     break;
           default                  : $screen = $this->showEditor($msg);
      }

      // Set the current navigation item
      $this->setNavigation('user');

      //if ($cmd == 'list')
      //{
      //   echo $screen;
      //}
      //else
      {
         echo $this->displayScreen($screen);
      }

      return true;

   }

    /**
    * Shows User Editor
    * @param message
    * @return user editor template
    */
    function showEditor($msg)
    {
        $data['project_title']      = getUserField('project_title');
        $data['project_type']       = getUserField('project_type');
        $data['project_status']     = getUserField('project_status');
        $data['total_cost_to']      = getUserField('total_cost_to');
        $data['total_cost_from']    = getUserField('total_cost_from');
        $data['adp_sector']         = getUserField('adp_sector');
        $data['adp_sub_sector']     = getUserField('adp_sub_sector');
        $data['ministryList']       = getMinistryList();
        $data['agencyList']         = getAgencyList();
        $data['donorList']          = getDevelopmentPartnerList();
        $data['adpSectorList']      = getADPSectorList();
        $data['adpSubSectorList']   = getADPSubSectorList();
        $data['statusList']         = getEnumFieldValues(PROJECT_TBL, 'status');
        $data['projectTypeList']    = getEnumFieldValues(PROJECT_TBL, 'project_type');
        $user_type                  = getFromSession('user_type');
        $agency_id                  = getFromSession('agency_id');
        $ministry_id                = getFromSession('ministry_id');
        $devPartners                = implode(',', getUserField('partners'));
        
        //dumpvar(implode(',', $_REQUEST['partners']));
        // SET UP THE GLOBAL CLAUSE 
        if ($user_type == 'Agency')
        {    
            $globalClause = ' AND PT.agency_id = ' . $agency_id . ' AND PT.ministry_id = ' . $ministry_id;
        }
        else if ($user_type == 'Ministry')
        {
            $globalClause = ' AND PT.ministry_id = ' . $ministry_id;
        }
        else
        {
            $globalClause = ' AND 1';
        }
        
        $projectTitleClause            = $data['project_title']   ? ' AND ( PT.project_title_en ' . like($data['project_title']) . 
                                                                    ' OR PT.project_title_bn ' . like($data['project_title']) . ')' : ' AND 1';
        $projectTypeClause             = $data['project_type']    ? ' AND PT.project_type = ' . q($data['project_type']) : ' AND 1';
        $projectStatusClause           = $data['project_status']  ? ' AND PT.status = ' . q($data['project_status']) : ' AND 1';
        $projectToCostClause           = $data['total_cost_to']   ? ' AND VPGT.total_cost >= ' . $data['total_cost_to'] : ' AND 1';
        $projectFromCostClause         = $data['total_cost_from'] ? ' AND VPGT.total_cost <= ' . $data['total_cost_from'] : ' AND 1';
        $developemntPartnersClause     = $devPartners             ? ' AND PDPT.dev_partner_id IN (' . $devPartners . ')' : ' AND 1';
        $adpSectorClause               = $data['adp_sector']      ? ' AND PT.adp_sector = ' . $data['adp_sector'] : ' AND 1';
        $adpSubSectorClause            = $data['adp_sub_sector']  ? ' AND PT.adp_sub_sector = ' . $data['adp_sub_sector'] : ' AND 1';
        
        
        $info['table']  = PROJECT_TBL . ' AS PT LEFT JOIN ' . VIEW_PROJECT_GRAND_TOTAL . ' AS VPGT ON ( PT.id = VPGT.pid ) LEFT JOIN ' . 
                          PROJECT_DEV_PARTNER_TBL . ' AS PDPT ON (PT.id = PDPT.pid)';
        $info['debug']  = true;
        $info['where']  = '1 ' . $globalClause . $projectTitleClause . $projectTypeClause . $projectStatusClause . $projectToCostClause . 
                                 $projectFromCostClause . $developemntPartnersClause . $adpSectorClause . $adpSubSectorClause;
        $info['fields'] = array('PT.project_title_en');
        
        $result = select($info);
        
        dumpVar($result);
        
        return createPage(REPORT_EDITOR_TEMPLATE, $data);
    }

  
   /**
   * Shows user list
   * @return user list template
   */
   function showList()
   {
      $status = getUserField('status');
      $type   = getUserField('user_type');

      $filterClause = '1';

      if ($status)
         $filterClause .= " and status = '$status' ";
      if ($type)
         $filterClause .= " and user_type = '$type' ";

      $info['table'] = USER_TBL;
      $info['debug'] = false;
      $info['where'] = $filterClause . ' Order By username ASC';

      $data['list'] = select($info);

      $data['status_list']    = getEnumFieldValues(USER_TBL, 'status');
      $data['user_type_list'] = getEnumFieldValues(USER_TBL, 'user_type');

      $data['status']    = $status;
      $data['user_type'] = $type;

      return createPage(REPORT_LIST_TEMPLATE, $data);
   }
  
}
?>