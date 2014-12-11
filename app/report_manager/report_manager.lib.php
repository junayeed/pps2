<?php

    function getProjectWiseDevelopmentPartners($project_id)
    {
        $info['table']  = PROJECT_DEV_PARTNER_TBL . ' AS PDPT LEFT JOIN ' . DEV_PARTNER_LOOKUP_TBL . ' AS DPLT ON (PDPT.dev_partner_id=DPLT.id)';
        $info['debug']  = false;
        $info['where']  = 'PDPT.pid = ' . $project_id;
        $info['fields'] = array('DPLT.name');

        $record = select($info);

        if(empty($record))
        {
            return null;
        }

        foreach($record AS $value)
        {
            $retData[] = $value->name;
        }
        
        return implode(', ', $retData);
    }

?>