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
    
    public function loadBasicInfo()
    {
        $info['table'] = PROJECT_TBL;
        $info['where'] = "id = $this->id";
        $info['debug'] = false;

        $row = select($info);

        $this->basicInfo                  = $row[0];        
        $this->basicInfo->ministries      = $this->loadMinistries();        
        $this->basicInfo->agencies        = $this->loadAgencies();        
        $this->basicInfo->partners        = $this->loadDevPartners();        
        $this->basicInfo->modefinancing   = $this->loadModeOfFinancing();        
        $this->basicInfo->locations       = $this->loadLocations();        
    }
    
    public function loadMinistries()
    {
        $info['table'] = PROJECT_MINISTRY_TBL;
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
    
    public function loadAgencies()
    {
        $info['table'] = PROJECT_AGENCY_TBL;
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
        $info['table'] = PROJECT_LOCATIONS_TBL;
        $info['debug'] = false;
        $info['where'] = "pid = $this->id";
        
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

    public function saveBasicInfo()
    {
        $info['table'] = PROJECT_TBL;
        $info['data']  = getUserDataSet(PROJECT_TBL);
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
    
    
    public function saveModeOfFinancing()
    {
        $info['table'] = PROJECT_MODE_FINANCING_TBL;
        $info['data']  = getUserDataSet(PROJECT_MODE_FINANCING_TBL);
        $info['debug'] = false;
        
        if($this->id && !empty($this->basicInfo->modefinancing))
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
