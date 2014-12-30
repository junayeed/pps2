<?php

/**
 * Ajax Manager Class
 */
// include the main configuration file
   require_once($_SERVER['DOCUMENT_ROOT'] .'/app/common/conf/main.conf.php');
   require_once($_SERVER['DOCUMENT_ROOT'] .'/app/common/class/Document.class.php');
   require_once(LOCAL_CONFIG_DIR          .'/dp.conf.php');
   require_once(LOCAL_LIB_DIR             .'/dp.lib.php');
  

   
class ajaxApp extends DefaultApplication
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
          
           
           case 'updatePartB'              : $screen = $this->updatePartBItem();                   break;
           default                         : $screen = $this->showEditor($msg);
      }

      return true;
    }
    
    
    function updatePartBItem()
    {
        //$pid       = base64_decode(getUserField('PI'));
        $annex_id  = getUserField('annex_id');
        $thisField = getUserField('thisField');
        $thisValue = getUserField('thisValue');
        
        $info['table']                 = PROJECT_ANNEX_V_TBL;
        $info['debug']                 = false;
        $info['where']                 = 'id = ' . $annex_id;
        $info['data'][$thisField]      = $thisValue;
        
        echo json_encode(update($info));
        die;
    }
    
    
}


   $thisApp  = new ajaxApp();
   $thisApp->run();        
   // Instanciate the user class
  
?>
