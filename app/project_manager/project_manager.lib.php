<?php

    function updateProcurementPlan()
    {
        $info['table'] = PROJECT_PROCUREMENT_PLAN_TBL;
        $info['debug'] = true;
        
        $data['pid']   = base64_decode(getUserField('PI'));
        
        foreach( $_REQUEST as $key => $value)
	{
            if( preg_match('/package_no_(\d+)/', $key, $matches))
            {
                $id = $matches[1];
                
                $data['package_no']             = $_REQUEST['package_no_' . $id];
                $data['procurement_desc']       = $_REQUEST['procurement_desc_' . $id];
	        $data['procurement_unit']       = $_REQUEST['procurement_unit_' . $id];
	        $data['procurement_qty']        = $_REQUEST['procurement_qty_' . $id];
	        $data['procurement_method']     = $_REQUEST['procurement_method_' . $id];
	        $data['procurement_type']       = $_REQUEST['procurement_type_' . $id];
	        $data['approv_auth']            = $_REQUEST['approv_auth_' . $id];
	        $data['fund_src']               = $_REQUEST['fund_src_' . $id];
	        $data['estd_cost']              = $_REQUEST['estd_cost_' . $id] ? $_REQUEST['estd_cost_' . $id] : 0.00;
	        $data['tender_invitation']      = $_REQUEST['tender_invitation_' . $id];
	        $data['contract_sign']          = $_REQUEST['contract_sign_' . $id];
	        $data['contract_completion']    = $_REQUEST['contract_completion_' . $id];
	        $data['create_date']            = date('Y-m-d');
	        $data['procurement_plan_id']    = $_REQUEST['procurement_plan_id_' . $id];
                $data['procurement_category ']  = $_REQUEST['procurement_category_' .$id];
                
                $info['data'] = $data;                
                // if procurement_plan_id is there then update the record
                // else add a new record in procurement plan table
                if ( !$data['procurement_plan_id'] ) 
                {
                    insert($info);
                }
                else
                {
                    $info['where'] = 'id = ' . $data['procurement_plan_id'];
                    update($info);
                }
 	    }
        }
    }
?>