<?php

/**
 * File: user_manager.class.php
 */

/**
 * The userManager application class
 */

class locationManagerApp extends DefaultApplication
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
            case 'edit'    : $screen = $this->showEditor($msg);  break;
            case 'add'     : $screen = $this->saveRecord();      break;
            case 'list'    : $screen = $this->showList();        break;
            case 'delete'  : $screen = $this->deleteRecord();    break;
            default        : $screen = $this->showEditor($msg);
        }

        echo $this->displayScreen($screen);

        return true;
    }
    
    function saveRecord()
    {
        $step = getUserField('step');
        $id   = getUserField('id');
        
        if ($step == 'division')      saveDivisionInfo($id);
        else if ($step == 'district') saveDistrictInfo($id);
        else if ($step == 'upzilla')  saveUpzillaInfo($id);
        
        header ('Location: location_manager.php?step=' . $step);
    }

    /**
    * Shows User Editor
    * @param message
    * @return user editor template
    */
    function showEditor($msg)
    { 
        $user_type                  = getFromSession('user_type');
        $step                       = getUserField('step');
        
        $id = getUserField('id');

        if (!empty($id))
        {
            if ($step == 'division')      $thisLocation = getDivisionInfo($id);
            else if ($step == 'district') $thisLocation = getDistrictInfo($id);
            else if ($step == 'upzilla')  $thisLocation = getUpzillaInfo($id);

            if( empty($thisLocation))
            {
                $thisLocation = array();
            }

            foreach($thisLocation as $key => $value)
            {
                $locData[$key] = $value;	
            }

            $data = array_merge(array(), $locData);
        }
        
        $data['divisionList']       = getDivisionList(1);
        $data['districtList']       = getDivisionWiseDistrictList();
        
        $pageTemplate    = sprintf("%s/%s%s", TEMPLATE_DIR, $step, LOCATION_EDITOR_TEMPLATE);
        
        if (!file_exists($pageTemplate))
        {
            echo "Template file not exists. Please check it.";
        }   
        
        return createPage($pageTemplate, $data);
    }
}
?>