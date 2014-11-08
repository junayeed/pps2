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
       $data['analysis_type'] = getUserField('a');
      return createPage(IRR_CALCULATOR_TEMPLATE, $data);
   }
}

?>
