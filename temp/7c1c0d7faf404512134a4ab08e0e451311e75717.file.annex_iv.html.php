<?php /* Smarty version Smarty-3.1.17, created on 2014-10-21 11:25:51
         compiled from "D:\xampp2\htdocs\pps2\app_contents\tpp_manager\annex_iv.html" */ ?>
<?php /*%%SmartyHeaderCode:43954461dbcacf5b9-03336156%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7c1c0d7faf404512134a4ab08e0e451311e75717' => 
    array (
      0 => 'D:\\xampp2\\htdocs\\pps2\\app_contents\\tpp_manager\\annex_iv.html',
      1 => 1413883549,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '43954461dbcacf5b9-03336156',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_54461dbcb47933_18239195',
  'variables' => 
  array (
    'SYSTEM_COMMON_JAVASCRIPT_DIR' => 0,
    'REL_TEMPLATE_DIR' => 0,
    'SYSTEM_APP_PREFIX' => 0,
    'SCRIPT_NAME' => 0,
    'PI' => 0,
    'concultant_details' => 0,
    'key' => 0,
    'item' => 0,
    'basicInfo' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54461dbcb47933_18239195')) {function content_54461dbcb47933_18239195($_smarty_tpl) {?><div id="main-content" class="clearfix">
    <head>
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/jquery-ui-1.10.2.custom.min.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/chosen.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/datepicker.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/bootstrap-timepicker.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/daterangepicker.css" />
        <script type="text/javascript" src="/app_contents/local/js/pps2.js"></script>
        <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['SYSTEM_COMMON_JAVASCRIPT_DIR']->value;?>
/messages.js"></script>
        <script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['SYSTEM_COMMON_JAVASCRIPT_DIR']->value;?>
/common.js"></script>
        <script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['REL_TEMPLATE_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['SYSTEM_APP_PREFIX']->value;?>
.js"></script>

<script language="JavaScript">
   function thisSelect(inputobj, linkname, format) 
   {
      var thisDate = new CalendarPopup();
      alert(inputobj + '\n' + linkname + '\n' + format);
      thisDate.showNavigationDropdowns();
      thisDate.select(inputobj,linkname, format);
   }
   
   
  
</script>

<style>
    
        .fixed{
        top:0;
        position:fixed;
        width:auto;
        display:none;
        border:none;
  }
  
</style>
    </head>
					
    <div id="breadcrumbs">
        <ul class="breadcrumb">
            <li><i class="icon-home"></i> <a href="#">Home</a><span class="divider"><i class="icon-angle-right"></i></span></li>
            <li><a href="#">Project</a> <span class="divider"><i class="icon-angle-right"></i></span></li>
            <li class="active">Annexure - IV : Implementation/Work Schedule</li>
        </ul><!--.breadcrumb-->
        <div id="nav-search">    
        </div><!--#nav-search-->
    </div><!--#breadcrumbs-->

    <div id="page-content" class="clearfix">
        <div class="page-header position-relative">
            <h1>Annexure - IV <small><i class="icon-double-angle-right"></i> Implementation/Work Schedule</small></h1>
            <div id="nav-search">
                <a class="btn btn-small btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=ProjectHome&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Project Main Page</a>
            </div>  
        </div><!--/page-header-->

        <div class="row-fluid">
        <!-- PAGE CONTENT BEGINS HERE -->
           
            <!--<form class="form-horizontal" id="validation-form"  method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">--> 
            <form class="form-horizontal" id="project_consultants_form"  method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
" name="project_consultants_form"> 
                <div id="basicinfo" class="tab-pane in active">
                    <div id="export_to_container">
                        Export To: 
                        <select name="report_type" id="report_type" class="span6" onchange="createReport('Goods');">
                            <option value=""></option>
                            <option value="pdf">pdf</option>
                            <option value="excel">excel</option>
                            <option value="word">word</option>
                        </select>
                    </div>
                    <div class="control-group">
                        <div class="span12">
                            <table id="consultants_tbl" class="table table-striped table-bordered table-hover table_bug_report">
                                <thead>
                                    <tr>
                                        <th class="span1">Task ID</th>
                                        <th class="span4">Task breakdown</th>
                                        <th class="span4">Year-1<br>Q-1</th>
                                        <th class="span4">Year-1<br>Q-2</th>
                                        <th class="span4">Year-1<br>Q-3</th>
                                        <th class="span4">Year-1<br>Q-4</th>
                                        
                                    </tr>
                                    
                                </thead>
                                <tbody id="project_consultants">
                                    
                                    <!--<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['concultant_details']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?> -->
                                        
                                        <tr id="tr_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
">
                                            <td><input type="text" name="concultant_name_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
" id="concultant_name_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
" value="<?php echo $_smarty_tpl->tpl_vars['item']->value->concultant_name;?>
" class="span12" required /></td>
                                            <td><textarea name="education_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
" id="education_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
" class="span12" style="resize: vertical;" required><?php echo $_smarty_tpl->tpl_vars['item']->value->education;?>
</textarea></td>
                                            <td><textarea name="experience_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
" id="experience_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
" class="span12" style="resize: vertical;" required><?php echo $_smarty_tpl->tpl_vars['item']->value->experience;?>
</textarea></td>
                                            <td><textarea name="responsibility_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
" id="responsibility_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
" class="span12" style="resize: vertical;" required><?php echo $_smarty_tpl->tpl_vars['item']->value->responsibility;?>
</textarea></td>
                                            <td id="td_action_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
">
                                                <a href="javascript: void(0);" 
                                                   onClick="deleteConcultantRow(<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
);">
                                                    <img src="/app_contents/common/images/cross2.png">
                                                </a>
                                                <input type="hidden" name="concultant_id_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
" id="concultant_id_<?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
" value="<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
">
                                            </td>
                                            <td></td>
                                        </tr>
                                        <script>
                                            rowIDArray.push(ROW_ID);
                                            ROW_ID++;
                                        </script>    
                                    <!--<?php } ?> -->
                                </tbody>
                                <tfoot>
                                    
                                    <tr>
                                        <td colspan="5"><a href="javascript:addConcultant();">Add New Row</a></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                    
                    <div class="form-actions2">
                        <button class="btn btn-small btn-primary"><i class="icon-save"></i> Save</button>
                        <input type="hidden" value="saveAnnexIII" name="cmd"/>
                        <input type="hidden" id="PI" name="PI" value="<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
"/>
                    </div>
                </div>
            </form>   
            <!-- #basicinfo Ends here -->
        </div>
    </div>
<!-- PAGE CONTENT ENDS HERE -->
</div><!--/row-->
	
<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse">
    <i class="icon-double-angle-up icon-only"></i>
</a>

<!-- basic scripts -->
    <script src="/app_contents/standard/template/assets/js/jquery.min.js"></script>
    <script type="text/javascript">
        window.jQuery || document.write("<script src='/app_contents/standard/template/assets/js/jquery-1.9.1.min.js'>\x3C/script>");
    </script>
    <script src="/app_contents/standard/template/assets/js/bootstrap.min.js"></script>        

    <!-- page specific plugin scripts -->
		
    <!--[if lt IE 9]>
        <script type="text/javascript" src="/app_contents/standard/template/assets/js/excanvas.min.js"></script>
    <![endif]-->

    <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery-ui-1.10.2.custom.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.ui.touch-punch.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/fuelux.wizard.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.validate.min.js"></script>
   

    <!-- ace scripts -->
    <script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
    <script src="/app_contents/standard/template/assets/js/ace.min.js"></script>
    
                
    <script>
       
           
       <?php if ($_smarty_tpl->tpl_vars['basicInfo']->value->current_holder==$_SESSION['uid']) {?>
        <?php if ($_smarty_tpl->tpl_vars['basicInfo']->value->status!='Draff'&&$_smarty_tpl->tpl_vars['basicInfo']->value->status!='Returned from Ministry') {?>   
             lockProject();
        <?php }?>
        <?php } else { ?>
            lockProject();
        <?php }?> 

        
            function lockProject()
            {
                $("#page-content :input").attr("disabled", true);   
                $('.form-actions2').hide();
                $("td > a").hide();
               
            }
            
    </script>    
<?php }} ?>
