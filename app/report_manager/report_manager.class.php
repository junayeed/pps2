<?php

/**
 * File: report_manager.class.php
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
        $user_type                  = getFromSession('user_type');
        $agency_id                  = getFromSession('agency_id');
        $ministry_id                = getFromSession('ministry_id');
        $sector_division            = getFromSession('sector_division');
        $data['project_title']      = getUserField('project_title');
        $data['project_type']       = getUserField('project_type');
        $data['project_status']     = getUserField('project_status');
        $data['total_cost_to']      = getUserField('total_cost_to');
        $data['total_cost_from']    = getUserField('total_cost_from');
        $data['adp_sector']         = getUserField('adp_sector');
        $data['adp_sub_sector']     = getUserField('adp_sub_sector');
        $data['start_date_to']      = getUserField('start_date_to');
        $data['start_date_from']    = getUserField('start_date_from');
        $data['end_date_to']        = getUserField('end_date_to');
        $data['end_date_from']      = getUserField('end_date_from');
        $data['divisions']          = getUserField('divisions');
        $data['districts']          = getUserField('districts');
        $data['upzilas']            = getUserField('upzilas');
        $data['ministryList']       = getMinistryList();
        $data['agencyList']         = getAgencyList($ministry_id);
        $data['donorList']          = getDevelopmentPartnerList();
        $data['divisionList']       = getDivisionList();
        $data['districtList']       = getDistrictList();
        $data['upazilaList']        = getUpzilaList();
        $data['adpSectorList']      = getADPSectorList();
        $data['adpSubSectorList']   = getADPSubSectorList();
        $data['statusList']         = getEnumFieldValues(PROJECT_TBL, 'status');
        $data['projectTypeList']    = getEnumFieldValues(PROJECT_TBL, 'project_type');
        $data['partners']           = getUserField('partners');
        $devPartners                = implode(',', $data['partners']);
        $data['agency']             = getUserField('agency');
        $data['ministry']           = getUserField('ministry');
        $agencies                   = implode(',', $data['agency']);
        $ministries                 = implode(',', $data['ministry']);
        $division                   = implode(',', $data['divisions']);
        $district                   = implode(',', $data['districts']);
        $upzila                     = implode(',', $data['upzilas']);
        $report_type                = getUserField('report_type');
        
        // dumpvar($data);
        // SET UP THE GLOBAL CLAUSE 
        if ($user_type == 'Agency')
        {    
            $globalClause = ' AND PT.agency_id = ' . $agency_id . ' AND PT.ministry_id = ' . $ministry_id;
        }
        else if ($user_type == 'Ministry')
        {
            $globalClause = ' AND PT.ministry_id = ' . $ministry_id;
        }
        else if ($user_type == 'Commission')
        {
            $globalClause = ' AND PT.sector_division = ' . $sector_division;
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
        $agencyClause                  = $data['agency']          ? ' AND PT.agency_id IN (' . $agencies . ')' : ' AND 1';
        $ministryClause                = $data['ministry']        ? ' AND PT.ministry_id IN (' . $ministries . ')' : ' AND 1';
        $startDateFromClause           = $data['start_date_from'] ? ' AND PT.date_of_commencement >= ' . q($data['start_date_from']) : ' AND 1';
        $startDatetoClause             = $data['start_date_to']   ? ' AND PT.date_of_commencement <= ' . q($data['start_date_to'])  : ' AND 1';
        $endDateFromClause             = $data['end_date_from']   ? ' AND PT.date_of_completion >= ' . q($data['end_date_from']) : ' AND 1';
        $endDateToClause               = $data['end_date_to']     ? ' AND PT.date_of_completion <= ' . q($data['end_date_to'])  : ' AND 1';
        $divisionClause                = $data['divisions']       ? ' AND PLT.location_id IN (' . $division . ') AND PLT.location_type = ' . q('Division') : ' AND 1';
        $districtClause                = $data['districts']       ? ' AND PLT.location_id IN (' . $district . ') AND PLT.location_type = ' . q('District') : ' AND 1';
        $upzilaClause                  = $data['upzilas']         ? ' AND PLT.location_id IN (' . $upzila . ') AND PLT.location_type = ' . q('Upzila') : ' AND 1';
        
        $info['table']  = PROJECT_TBL . ' AS PT LEFT JOIN ' . VIEW_PROJECT_GRAND_TOTAL . ' AS VPGT ON ( PT.id = VPGT.pid ) LEFT JOIN ' . 
                          PROJECT_DEV_PARTNER_TBL . ' AS PDPT ON (PT.id = PDPT.pid) LEFT JOIN ' . 
                          DEV_PARTNER_LOOKUP_TBL . ' AS DPLT ON (DPLT.id=PDPT.dev_partner_id) LEFT JOIN ' . 
                          MINISTRY_LOOKUP_TBL . ' AS MLT ON (MLT.id = PT.ministry_id) LEFT JOIN ' . 
                          AGENCY_LOOKUP_TBL . ' AS ALT ON (ALT.id=PT.agency_id) LEFT JOIN ' . 
                          ADP_SECTOR_LOOKUP_TBL . ' AS ASLT ON (PT.adp_sector = ASLT.id) LEFT JOIN ' . 
                          ADP_SUBSECTOR_LOOKUP_TBL . ' AS ASUBLT ON (PT.adp_sub_sector = ASUBLT.id) LEFT JOIN ' . 
                          SECTOR_DIVISION_LOOKUP_TBL . ' AS SDLT ON (PT.sector_division=SDLT.id) LEFT JOIN ' . 
                          PROJECT_LOCATIONS_TBL . ' AS PLT ON (PT.id = PLT.pid)';
        $info['debug']  = false;
        $info['where']  = '1 ' . $globalClause . $projectTitleClause . $projectTypeClause . $projectStatusClause . $projectToCostClause . 
                                 $projectFromCostClause . $developemntPartnersClause . $adpSectorClause . $adpSubSectorClause . $agencyClause . 
                                 $ministryClause . $startDateFromClause . $startDatetoClause . $endDateFromClause . $endDateToClause . 
                                 $divisionClause . $districtClause . $upzilaClause . ' ORDER BY PT.agency_id';
        $info['fields'] = array('DISTINCT(PT.id)', 'PT.project_title_en', 'PT.status', 'PT.project_type', 'VPGT.total_cost', 'MLT.name AS ministry', 
                                'ALT.name as agency', 'VPGT.gob_cost', 'VPGT.gob_fe_cost', 'VPGT.pa_through_gob_cost', 'PT.sector_division',
                                'VPGT.pa_spc_acnt_cost', 'VPGT.pa_dpa_cost', 'VPGT.own_fund_cost', 'VPGT.own_fund_fe_cost', 'VPGT.other_cost', 
                                'VPGT.other_fe_cost', 'ASLT.name AS adp_sector', 'ASUBLT.name AS adp_sub_sector', 'PT.date_of_commencement', 
                                'PT.date_of_completion', 'SDLT.name AS sector_division');
        
        $data['project_list'] = select($info);
        
        foreach($data['project_list'] as $value)
        {
            $value->development_partners = getProjectWiseDevelopmentPartners($value->id);
        }
        
        if ($user_type == 'Ministry')
        {
            $data['project_list'] = getAgencyWiseProjectList($data['project_list']);
        }
        else if ($user_type == 'Commission')
        {
            $data['project_list'] = getMinistryAgencyWiseProjectList($data['project_list']);
        }
        
        $pageTemplate    = sprintf("%s/%s%s", TEMPLATE_DIR, strtolower($user_type), REPORT_EDITOR_TEMPLATE);
        $pdfTemplate     = sprintf("%s/%s%s", TEMPLATE_DIR, strtolower($user_type), PDF_REPORT_TEMPLATE);
        
        if (!file_exists($pageTemplate))
        {
            echo "Template file not exists. Please check it.";
        } 
        
        if ($report_type == 'pdf')
        {
            if (!file_exists($pdfTemplate))
            {
                echo "PDF Template file not exists. Please check it.";
                die;
            } 
            
            $screen = createPage($pdfTemplate, $data);
            
            makePDF($screen);
            
            return;
        }
        
        return createPage($pageTemplate, $data);
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