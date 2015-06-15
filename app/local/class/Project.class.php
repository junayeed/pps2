<?php
    /**
     * File: Project.class.php
     */

class Project
{
    public $id;
    public $basicInfo; 
    
    /**
     * Constructor
     * @return
     */
    function Project($pid = null)
    {
        $this->id  = $pid;
       
        if($this->id)
        {    
            $this->loadBasicInfo();
            //$this->loadProjectSummary();
            //$this->loadProjectDetails();
            //$this->loadProjectLocations();
            //$this->loadProjectManagement();
            //$this->loadProjectProcurementPlanGoods();
            //$this->loadProjectProcurementPlanWorks();
            //$this->loadProjectProcurementPlanServices();
            //$this->loadProjectFinancialPhysicalTargetPlan();
            //$this->loadProjectDetailsPhasingCost();
            //$this->loadProjectAmortizationSchedule();
        }
    }
    
    public function removeEmptyRowOfComponent()
    {
        $info['table']  = PROJECT_ANNEX_V_TBL;
        $info['debug']  = false;
        $info['where']  = "pid = $this->id AND economic_code_id=0";
        
        $result = delete($info);
    }        
    
    public function loadYearWiseGobOwnfundTotal()
    {
        $info['table']  = PROJECT_YEAR_WISE_GOB_OWNFUND;
        $info['debug']  = false;
        $info['where']  = "pid = $this->id ORDER BY year_serial";
        
        $result = select($info);
        return $result;
    }    
    
    public function loadYearWiseGobOwnfundTotalFromContigency()
    {
        $info['table']  = PROJECT_ANNEX_V_CON_DETAILS_TBL;
         $info['debug']  = false;
        $info['fields']  = array('sum(gob) AS gob_total, sum(gob_fe) AS gob_fe_total,sum(own_fund) AS own_fund_total,sum(own_fund_fe) AS own_fund_fe_total');
        $info['where']   = "pid = $this->id  GROUP BY year_serial ORDER BY year_serial";
        $result = select($info);
        return $result;
       
    }        
    
    public function loadBasicInfo()
    {
        $info['table'] = PROJECT_TBL.' AS P LEFT JOIN '.VIEW_PROJECT_GRAND_TOTAL.' AS VP ON(P.id=VP.pid)';
        $info['where'] = "P.id = $this->id";
        $info['debug'] = false;

        $row = select($info);
        
               
        $this->basicInfo                  = $row[0];        
        $this->basicInfo->ministries      = $this->loadMinistries();        
        $this->basicInfo->agencies        = $this->loadAgencies();        
        $this->basicInfo->partners        = $this->loadDevPartners();        
        $this->basicInfo->modefinancing   = $this->loadModeOfFinancing();        
        $this->basicInfo->locations       = $this->loadLocations();        
    }
    
    public function getAllStatus()
    {
        $info['table'] = PROJECT_STATUE_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id ORDER BY date DESC";
        
        $result =   select($info);    
        
        return $result;
    }
    
    function getDeskOfficerName($desk_officer_id)
    {
        $info['table']  = USER_TBL . ' AS UT LEFT JOIN ' . USER_PROFILE_TBL . ' AS UPT ON (UT.uid=UPT.uid)';
        $info['debug']  = false;
        $info['where']  = 'UT.uid = ' . $desk_officer_id;
        $info['fields'] = array('CONCAT(UPT.name, " (", UT.designation, ")") AS desk_officer_name');
         
        $result = select($info);
        
        if ( $result )
        {
            return $result[0]->desk_officer_name;
        }
    }
    
    public function loadMinistries()
    {
        $info['table'] = PROJECT_MINISTRY_TBL . ' AS PMT LEFT JOIN ' . MINISTRY_LOOKUP_TBL . ' AS MLT ON (PMT.ministry_id = MLT.id)';
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result =   select($info);    
        
        return $result;
    }        
    
    public function loadPartB()
    {
        $info['table'] = PROJECT_PART_B_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result =   select($info);    
        
        return $result[0];
    }
    
    public function loadMajorItems()
    {
        $info['table'] = PROJECT_ANNEX_V_TBL.' AS PAVT LEFT JOIN '. PROJECT_MAJOR_ITEM_TBL.' AS PMIT ON (PAVT.id=PMIT.annex_id) LEFT JOIN ' . 
                         PROJECT_MAJOR_ITEM_COM_COST_TBL. ' AS PMICT ON (PAVT.id=PMICT.annex_id) LEFT JOIN '.
                         ECONOMIC_SUBCODE_LOOKUP_TBL . ' AS ESLT ON (PAVT.economic_subcode_id = ESLT.id)';
        $info['debug'] = false;
        $info['fields'] = array('ESLT.economic_subcode', 'PMIT.basis','PMIT.basis_date','PAVT.pid','PAVT.economic_subcode_id','PAVT.economic_subcode_name',
                                'PAVT.unit','PAVT.unit_cost','PAVT.major_item', 'PAVT.id AS annex_id','PMIT.id','PMICT.id AS major_cost_com_id','PMICT.unit_cost_ongoing','PMICT.unit_cost_completed','PMICT.remarks');
        $info['where'] = "PAVT.pid = $this->id AND PAVT.major_item='Yes' ORDER BY PAVT.id";
        
        $result =   select($info);    
        
        return $result;
    }
    
    public function loadProjectCostAnalysis()
    {
        $info['table']  = PROJECT_ANALYSIS_TBL;
        $info['debug']  = false;
        $info['where']  = "pid = $this->id";
        
        $result =   select($info);   
        $result[0]->financial_attachment_file = getFileLocation($result[0]->financial_attachment, $this->id);
        $result[0]->economic_attachment_file = getFileLocation($result[0]->economic_attachment, $this->id);
        
        return $result[0];
    }
    
    public function loadAgencies()
    {
        $info['table'] = PROJECT_AGENCY_TBL . ' AS PAT LEFT JOIN ' . AGENCY_LOOKUP_TBL . ' AS ALT ON (PAT.agency_id = ALT.id)';
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result =   select($info);    
        
        return $result;
    }
    
    public function loadAttachments()
    {
        $info['table'] = PROJECT_ATTACHMENT_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result =   select($info);    
        
        return $result;
    }
    
    public function saveAttachments()
    {
        $info['table'] = PROJECT_ATTACHMENT_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result =   select($info);    
        
        return $result;
    }
    
    public function loadDevPartners()
    {
        $info['table'] = PROJECT_DEV_PARTNER_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result =   select($info);    
        
        return $result;
    }
    
    public function loadLocations()
    {
        $info['table'] = PROJECT_LOCATIONS_TBL.' AS Loc LEFT JOIN '.DIVISION_LOOKUP_TBL.' AS Div1 ON (Loc.location_id=Div1.divid)'.
                         ' LEFT JOIN '.DISTRICT_LOOKUP_TBL.' AS Dis ON (Loc.location_id=Dis.district_id)'.
                         ' LEFT JOIN '.UPZILA_LOOKUP_TBL.' AS Upz ON (Loc.location_id=Upz.upzila_id)';
        $info['debug'] = false;
        $info['fields'] = array('Loc.*','Div1.division_name','Dis.district_name','Dis.div_id','Upz.upzila_name','Upz.district_id');
        $info['where'] = "Loc.pid = $this->id";
        
        $result =   select($info);    
        
        return $result;
    }
    
    
    public function loadModeOfFinancing()
    {
        $info['table'] = PROJECT_MODE_FINANCING_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result =   select($info);    
        
        return $result[0];
    }
    
    public function loadLogFrame()
    {
        $info['table'] = PROJECT_LOG_FRAME_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result =   select($info);    
        
        return $result[0];
    }
    
    
    public function saveRDPPInfo($data)
    {
        $info['table'] = RDPP_INFO_TBL;
        $info['data']  = $data;
        $info['debug'] = false;
        
        $result = insert($info);
         
    }        

    public function saveBasicInfo()
    {
        $data                         = getUserDataSet(PROJECT_TBL);
        $data['ministry_id']          = $_SESSION['ministry_id'];
        $data['agency_id']            = $_SESSION['agency_id'];
        $data['created_by']           = $_SESSION['uid'];
        $data['current_holder']       = $_SESSION['uid'];
        
        $info['table'] = PROJECT_TBL;
        $info['data']  = $data;
        $info['debug'] = false;
        
        
        if($this->id)
        {
            $info['where'] = "id = $this->id";
            return update($info);
        }
        else 
        {
            $result = insert($info);
            
            if($result['newid'])
            {
                //$this->id = $result['newid'];
                //$this->loadBasicInfo();
                return $result['newid'];;
            }    
            return  0;
        }
            
    }
    
    public function savePartB()
    {
        $info['table'] = PROJECT_PART_B_TBL;
        $info['data']  = getUserDataSet(PROJECT_PART_B_TBL);
        
        //dumpVar($info['data']);
        //die;
        $info['data']['pid'] = $this->id;
        $info['debug'] = false;
        
        $partBId   = getUserField('part_b_id');        
        if($partBId)
        {
            $info['where'] = "id = $partBId";
            return update($info);
        }
        else 
        {
            $result = insert($info);
            
            if($result['newid'])
            {
                //$this->id = $result['newid'];
                //$this->loadBasicInfo();
                return $result['newid'];;
            }    
            return  0;
        }
    }
    
    public function saveProjectCostAnalysis()
    {
        $data                          = getUserDataSet(PROJECT_ANALYSIS_TBL);
        $data['pid']                   =  $this->id;
        $data['financial_attachment']  = saveAttachment($_FILES['financial_attachment'], $data['pid']);
        $data['economic_attachment']   = saveAttachment($_FILES['economic_attachment'], $data['pid']);
        
        $info['table']  = PROJECT_ANALYSIS_TBL;
        $info['debug']  = true;
        $info['data']   = $data;
        $info['where']  = 'pid = ' . $this->id;
        
        if ( update($info) )
        {
            // do nothing
        }
        else
        {
            insert($info);
        }
    }
    
    public function savePartBMajorItems()
    {
        $info['table']       = PROJECT_MAJOR_ITEM_TBL;
        $info['debug']       = false;
        
        $info1['table']       = PROJECT_MAJOR_ITEM_COM_COST_TBL;
        $info1['debug']       = false;
        
        $items = $this->loadMajorItems();
        //dumpVar($items);
        //die;
        
        foreach($items as $thisItem)
        {
            if($_REQUEST['basis_'.$thisItem->annex_id])      $data['basis']            = $_REQUEST['basis_'.$thisItem->annex_id];
            if($_REQUEST['basis_date_'.$thisItem->annex_id]) $data['basis_date']  = $_REQUEST['basis_date_'.$thisItem->annex_id];
            
            
            if($_REQUEST['unit_cost_ongoing_'.$thisItem->annex_id])   $data1['unit_cost_ongoing']    = $_REQUEST['unit_cost_ongoing_'.$thisItem->annex_id];
            if($_REQUEST['unit_cost_completed_'.$thisItem->annex_id]) $data1['unit_cost_completed']  = $_REQUEST['unit_cost_completed_'.$thisItem->annex_id];
            if($_REQUEST['remarks_'.$thisItem->annex_id])             $data1['remarks']              = $_REQUEST['remarks_'.$thisItem->annex_id];
             
            
            if($thisItem->id)
            {
                $info['data']  = $data;
                $info['where'] = 'id ='.$thisItem->id;
                update($info);
            }
            else 
            {
                $data['pid']      = $this->id;
                $data['annex_id'] = $thisItem->annex_id;
                $info['data']     = $data;
                insert($info);
            }
            
            if($thisItem->major_cost_com_id)
            {
                $info1['data']  = $data1;
                $info1['where'] = 'id ='.$thisItem->major_cost_com_id;
                update($info1);
            }
            else 
            {
                $data1['pid']      = $this->id;
                $data1['annex_id'] = $thisItem->annex_id;
                $info1['data']     = $data1;
                insert($info1);
            }
            
        }    
        
        
    }
    
    
    public function saveLogFrame()
    {
        $info['table']        = PROJECT_LOG_FRAME_TBL;
        $info['data']         = getUserDataSet(PROJECT_LOG_FRAME_TBL);
        $info['data']['pid']  = $this->id;
        $info['debug']        = false;
        
        
        $log_frame_id  = getUserField('log_frame_id');
        
        
        if($log_frame_id)
        {
            $info['where'] = "pid = $this->id";
            update($info);
        }
        else 
        {
            $result = insert($info);
        }
        
    }
    public function saveModeOfFinancing()
    {
        $info['table']        = PROJECT_MODE_FINANCING_TBL;
        $info['data']         = getUserDataSet(PROJECT_MODE_FINANCING_TBL);
        $info['data']['pid']  = $this->id;
        $info['debug']        = false;
        
        $mode_of_finance_id  = getUserField('mode_of_finance_id');
        
        if($mode_of_finance_id)
        {
            $info['where'] = "pid = $this->id";
            update($info);
        }
        else 
        {
            $result = insert($info);
            
            if($result['newid'])
            {
                //$this->id = $result['newid'];
                //$this->loadBasicInfo();
                return $result['newid'];;
            }    
            return  0;
        }
    }
    
    public function saveLocations($locations,$location_type)
    {
        $info['table'] = PROJECT_LOCATIONS_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id AND location_type='$location_type'";
        
        $result = delete($info);
        
        if(!empty($locations))
        {
            foreach($locations as $thisValue)
            {
                $info['debug'] = false;
                $info['data']  = array('pid' =>$this->id,'location_id' =>$thisValue,'location_type' => $location_type);
                insert($info);
            }    
        }    
        
    }
    
    public function saveMinistries($ministries)
    {
        $info['table'] = PROJECT_MINISTRY_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result = delete($info);
        
        if(!empty($ministries))
        {
            foreach($ministries as $thisValue)
            {
                $info['debug'] = false;
                $info['data']  = array('pid' =>$this->id,'ministry_id' =>$thisValue);
                insert($info);
            }    
        }    
    }
    
    public function saveAgencies($agencies)
    {
        $info['table'] = PROJECT_AGENCY_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result = delete($info);
        
        if(!empty($agencies))
        {
            foreach($agencies as $thisValue)
            {
                $info['debug'] = false;
                $info['data']  = array('pid' =>$this->id,'agency_id' =>$thisValue);
                insert($info);
            }    
        }    
    }
    
    public function saveDevPartners($partners)
    {
        $info['table'] = PROJECT_DEV_PARTNER_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
        $result = delete($info);
        
        if(!empty($partners))
        {
            foreach($partners as $thisValue)
            {
                $info['debug'] = false;
                $info['data']  = array('pid' =>$this->id,'dev_partner_id' =>$thisValue);
                insert($info);
            }    
        }    
    }

    private function loadProjectSummary()
    {
        $info['table'] = PROJECT_SUMMARY_TBL;
        $info['where'] = "pid = $this->id";
        $info['debug'] = false;

        $row = select($info);

        $this->projectSummary = $row;        
    }
    
    private function loadProjectDetails()
    {
        $info['table'] = PROJECT_DETAILS_TBL;
        $info['where'] = "pid = $this->id";
        $info['debug'] = false;

        $row = select($info);

        $this->projectDetails = $row;        
    }
    
    public function loadProjectLocations()
    {
        $info['table']  = PROJECT_LOCATIONS_TBL;
        $info['where']  = 'pid = ' . $this->id;
        $info['fields'] = array('PLT.id', 'pid', 'location_id', 'location_type', 'location_cost', 'location_comments', 'division_name', 'district_name', 'upzila_name');
        $info['debug']  = false;

        $rows = select($info);
        
        //dumpVar($rows);

        $this->projectLocations = $rows;        
    }
    
    private function loadProjectManagement()
    {
        $info['table'] = PROJECT_MANAGEMENT_TBL;
        $info['where'] = "pid = $this->id";
        $info['debug'] = false;

        $row = select($info);

        $this->projectManagement = $row;        
    }
    
    private function loadProjectProcurementPlanGoods()
    {
        $info['table'] = PROJECT_GOODS_TBL;
        $info['where'] = "pid = $this->id";
        $info['debug'] = false;

        $rows = select($info);

        $this->projectGoods = $rows;        
    }
    
    
    private function loadProjectProcurementPlanWorks()
    {
        $info['table'] = PROJECT_WORKS_TBL;
        $info['where'] = "pid = $this->id";
        $info['debug'] = false;

        $rows = select($info);

        $this->projectWorks = $rows;        
    }
    
    private function loadProjectProcurementPlanServices()
    {
        $info['table'] = PROJECT_SERVICES_TBL;
        $info['where'] = "pid = $this->id";
        $info['debug'] = false;

        $rows = select($info);

        $this->projectServices = $rows;        
    }
    
    private function loadProjectFinancialPhysicalTargetPlan()
    {
        $info['table'] = PROJECT_TARGETPLAN_TBL;
        $info['where'] = "pid = $this->id";
        $info['debug'] = false;

        $rows = select($info);

        $this->projectTargetPlan = $rows;        
    }
    
    
    private function loadProjectDetailsPhasingCost()
    {
        $info['table'] = PROJECT_PHASING_COST_TBL;
        $info['where'] = "pid = $this->id";
        $info['debug'] = false;

        $rows = select($info);

        $this->projectPhasingCost = $rows;        
    }
    
    private function loadProjectAmortizationSchedule()
    {
        $info['table'] = PROJECT_AMORTIZATION_TBL;
        $info['where'] = "pid = $this->id";
        $info['debug'] = false;

        $rows = select($info);

        $this->projectAmortization = $rows;        
    }
    

    /**
   * Gets Group Information
   * @return Group Information
   */
   function getGroupInfo()
   {
      return $this->getAttributes();
   }

   /**
   * Loads group info
   * @param group id
   * @return Group Information
   */
   function loadGroupByID($groupID = null)
   {
      return $this->loadGroupByKeyValue('group_id', $groupID);
   }

   /**
   * Loads group info
   * @param key => value
   * @return Group Information
   */
   function loadGroupByKeyValue($key = null, $value = null)
   {
      $info['table'] = $this->entity_table;
      $info['where'] = "$key = $value";
      $info['debug'] = false;
      $rows = select($info);

      if (count($rows))
      {
         foreach($rows[0] as $key => $value)
         {
            $this->$key = $value;
         }

         $this->loadGroupMember($value->group_id);

         $this->loaded = true;
      }
   }

   /**
   * Loads group member info
   * @param group id
   * @return Group Member Information
   */
   function loadGroupMember($groupID = null)
   {
      $info['table'] = USER_GROUP_TBL;
      $info['where'] = "group_id = $groupID";
      $info['debug'] = false;

      $rows = select($info);

      $this->member_list = $rows;
   }

   /**
   * Adds a group into
   * @param none
   * @return boolean
   */
   function addGroup()
   {
      $data = getUserDataSet(GROUP_TBL);

      $data['create_date'] = date('Y-m-d');

      $info['table'] = $this->entity_table;
      $info['debug'] = false;
      $info['data']  = $data;

      $add = insert($info);

      $groupID = $add['newid'];

      if ($groupID)
      {
         $userList = explode(',', getUserField('group_member'));

         return $this->addGroupMember($groupID, $userList);
      }

      return false;
   }

   /**
   * Adds group member
   * @param group_id, user_list
   * @return boolean
   */
   function addGroupMember($groupID = null, $userList = array())
   {
      $this->deleteGroupMember($groupID);

      $data['group_id'] = $groupID;

      $info['table'] = USER_GROUP_TBL;
      $info['debug'] = false;

      if (!empty($userList))
      {
         foreach ($userList as $key => $value)
         {
            $data['user_id'] = $value;
            $info['data']  = $data;

            $add = insert($info);
         }
      }

      return $add;
   }

   /**
   * Deletes group member
   * @param group id
   * @return boolean
   */
   function deleteGroupMember($groupID = null)
   {
      $info['table'] = USER_GROUP_TBL;
      $info['debug'] = false;
      $info['where'] = "group_id = '$groupID'";

      $del = delete($info);

      return $del;
   }

    /**
    * Modifies specfied group
    * @returns true in success, false otherwise
    */
   function modifyGroup($groupID = null)
   {
      $data = getUserDataSet(GROUP_TBL);

      $data['last_updated'] = date('Y-m-d');

      $info['table'] = $this->entity_table;
      $info['debug'] = false;
      $info['where'] = "group_id = '$groupID'";
      $info['data']  = $data;

      $update = update($info);

      $userList = explode(',', getUserField('group_member'));

      return $this->addGroupMember($groupID, $userList);
   }

    /**
    * Deletes specfied group from DB
    * @returns true in success, false otherwise
    */
    function deleteGroup($id)
    {
       $info=array();
       $info['entity_table']=$this->entity_table;
       $info['where']="group_id='$id'";
       $info['debug']=false;

      return delete($info);

    }

    /**
    * Loads all groups
    * @return array group list
    */
    function loadAllGroup()
    {
      $info=array();
      $info['entity_table']=$this->entity_table;
      $info['fields']=array('group_id','name','group_type','created_by','group_email','status','create_date');
      $info['where']="name!=''";
      $info['debug']=false;

      $res=select($info);

      $list=array();

      if(count($res))
      {
         $i=0;
         foreach($res as $v)
         {
            $list['group_id'][$v->group_id]=$v->group_id;
            $list['group_name'][$v->group_id]=$v->name;
            $list['group_type'][$v->group_id]=$v->group_type;
            $list['group_created_by'][$v->group_id]=(!$v->created_by)?'Predefined':$this->findUser($v->created_by);
            $list['group_email'][$v->group_id]=$v->group_email;
            $list['group_status'][$v->group_id]=$v->status;
            $list['group_create_date'][$v->group_id]=$v->create_date;

         }
      }//End of if count

      return $list;
    }//End of loadAllGroup()

   /**
   * Finds username given by uid
   * @return username
   */
   function findUser($uid)
   {

      $info=array();
      $info['entity_table'] = USER_TBL;
      $info['fields']= array('username');
      $info['where'] = "uid='$uid'";
      $info['debug'] = false;

      $res=select($info);

      if(count($res))
      {
       foreach($res as $v)
       {
         $name=$v->username;
         break;
       }
      } //if count
      return $name;
   }//End of findUser()

   /**
   * Gets all groups
   * @return array group list
   */
   function getAllGroupList()
   {
      $info['entity_table'] = $this->entity_table;
      $info['debug'] = false;

      // Select groups from DB
      $result = select($info);

      return $result;
   }
}//End of Class
?>
