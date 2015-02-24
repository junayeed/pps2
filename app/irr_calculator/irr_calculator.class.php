<?php

   
class irrCalculator extends DefaultApplication
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
            case 'ProjectHome'              : $screen = $this->showProjectHomePage();         break;
            default                         : $screen = $this->showEditor($msg);
        }
      
        if($cmd == 'deleteyear')
        {
            return;
        }
        //else
        {
            echo $screen;
        }
        return true;
    }
   
    function showEditor($msg)
    {
        //echo file_get_contents(IRR_CALCULATOR_TEMPLATE);
        $analysis_type = getUserField('a');
        $pid           = getUserField('pid');
        
        $data['info']          = $this->prjectanalysisInfo($pid);
        $data['analysis_type'] = $analysis_type;
        $data['pid']           = $pid;
        $data['list']          = $this->getProjectAnalysisDetails($analysis_type, $pid);
//dumpVar($data['list']);
        return createPage(IRR_CALCULATOR_TEMPLATE, $data);
    }
    
    function prjectanalysisInfo($pid)
    {
        $info['table']  = PROJECT_ANALYSIS_TBL;
        $info['debug']  = false;
        $info['fields'] = array('financial_discount_rate', 'financial_project_life_time', 'economic_discount_rate', 'economic_project_life_time', 
                                'financial_npv', 'financial_bcr', 'financial_irr', 'economic_npv', 'economic_bcr', 'economic_irr');
        $info['where']  = 'pid = ' . base64_decode($pid);
        
        $result = select($info);
        
        if ( !empty($result))
        {
            return $result[0];
        }
        else
        {
            return;
        }
    }
    
    function getProjectAnalysisDetails($analysis_type, $pid)
    {
        $info['table']  = PROJECT_ANALYSIS_DETAILS_TBL;
        $info['debug']  = false;
        $info['where']  = 'row_type = ' . q($analysis_type) . ' AND pid = ' . base64_decode($pid) . ' ORDER BY year';
        
        $result = select($info);
        
        if ( !empty($result))
        {
            return $result;
        }
        else
        {
            return;
        }
    }
}

?>
