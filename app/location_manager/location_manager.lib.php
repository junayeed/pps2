<?php

    function getDivisionInfo($id)
    {
        $info['table']  = DIVISION_LOOKUP_TBL;
        $info['debug']  = false;
        $info['where']  = 'divid = ' . $id;
        
        $result = select($info);
        
        if ( !$result )
        {
            return ;
        }
        
        return $result[0];
    }
    
    function saveDivisionInfo($id)
    {
        $info['table']  = DIVISION_LOOKUP_TBL;
        $info['debug']  = false;
        $info['data']   = getUserDataSet(DIVISION_LOOKUP_TBL);
        
        if ($info['data']['status'])
        
        if ($id)
        {
            $info['where']  = 'divid = ' . $id;
            
            update($info);
        }
        else
        {
            insert($info);
        }
    }
    
    function saveDistrictInfo($id)
    {
        $info['table']  = DIVISION_LOOKUP_TBL;
        $info['debug']  = false;
        $info['data']   = getUserDataSet(DIVISION_LOOKUP_TBL);
        
        if ($info['data']['status'])
        
        if ($id)
        {
            $info['where']  = 'divid = ' . $id;
            
            update($info);
        }
        else
        {
            insert($info);
        }
    }
    
    function saveUpzillaInfo($id)
    {
        $info['table']  = DIVISION_LOOKUP_TBL;
        $info['debug']  = false;
        $info['data']   = getUserDataSet(DIVISION_LOOKUP_TBL);
        
        if ($info['data']['status'])
        
        if ($id)
        {
            $info['where']  = 'divid = ' . $id;
            
            update($info);
        }
        else
        {
            insert($info);
        }
    }
    
    function getDivisionWiseDistrictList()
    {
        $info['table']  = DIVISION_LOOKUP_TBL . ' AS DLT LEFT JOIN ' . DISTRICT_LOOKUP_TBL . ' AS DISLT ON (DLT.divid = DISLT.div_id)'; 
        $info['debug']  = false;
        $info['where']  = '1 ORDER BY DLT.division_name, DISLT.district_name';
        $info['fields'] = array('DLT.division_name', 'DISLT.district_name', 'DISLT.district_id', 'DLT.divid');
        
        $result = select($info);
        
        if ( $result)
        {
            foreach($result AS $key => $value)
            {
                $retData[$value->division_name][] = $value;
            }
        }
        
        return $retData;
    }
?>