<?php /* Smarty version Smarty-3.1.17, created on 2014-06-04 07:50:15
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\procurement_plan_goods.html" */ ?>
<?php /*%%SmartyHeaderCode:15477538ea524cdbc00-21643588%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f752d586250f1e333d446234663f32da9a37a48d' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\procurement_plan_goods.html',
      1 => 1401861012,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15477538ea524cdbc00-21643588',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_538ea524dfd4f3_42805546',
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'PI' => 0,
    'basicInfo' => 0,
    'item' => 0,
    'procurement_list' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_538ea524dfd4f3_42805546')) {function content_538ea524dfd4f3_42805546($_smarty_tpl) {?><script type="text/javascript" src="/app_contents/local/js/pps2.js"></script>
<script type="text/javascript" src="/app_contents/common/js/messages.js"></script>
<script type="text/javascript" src="/app_contents/common/js/CalendarPopup.js"></script>

<script language="JavaScript">
   function thisSelect(inputobj, linkname, format) 
   {
      var thisDate = new CalendarPopup();
      alert(inputobj + '\n' + linkname + '\n' + format);
      thisDate.showNavigationDropdowns();
      thisDate.select(inputobj,linkname, format);
   }
</script>

<div id="main-content" class="clearfix">
    <head>
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/jquery-ui-1.10.2.custom.min.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/chosen.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/datepicker.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/bootstrap-timepicker.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/daterangepicker.css" />
    </head>
					
    <div id="breadcrumbs">
        <ul class="breadcrumb">
            <li><i class="icon-home"></i> <a href="#">Home</a><span class="divider"><i class="icon-angle-right"></i></span></li>
            <li><a href="#">Project</a> <span class="divider"><i class="icon-angle-right"></i></span></li>
            <li class="active">Annexure - III (a): GOODS</li>
        </ul><!--.breadcrumb-->
        <div id="nav-search">    
        </div><!--#nav-search-->
    </div><!--#breadcrumbs-->

    <div id="page-content" class="clearfix">
        <div class="page-header position-relative">
            <h1>Annexure - III (a)<small><i class="icon-double-angle-right"></i>Total Procurement plan for development project/programme</small></h1>
            <div id="nav-search">
                <a class="btn btn-small btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=ProjectHome&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Project Main Page</a>
            </div>  
        </div><!--/page-header-->

        <div class="row-fluid">
        <!-- PAGE CONTENT BEGINS HERE -->
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert"><i class="icon-remove"></i></button>
                <strong><i class="icon-ok"></i> Successfully Saved!</strong>
                Your have to save all the data <br>
            </div>

            <!--<form class="form-horizontal" id="validation-form"  method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">--> 
            <form class="form-horizontal" id="procure_plan_goods_form"  method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
" name="procure_plan_goods_form"> 
                <div id="basicinfo" class="tab-pane in active">
                    <div class="control-group">
                        <div class="span12">
                            <table id="goods_tbl" class="table table-striped table-bordered table-hover table_bug_report">
                                <thead>
                                    <tr>
                                        <th>Package No.</th>
                                        <th class="span6">Description of Procurement<br>Package as per DPP/TPP</th>
                                        <th class="span3">Unit</th>
                                        <th class="span2">Quantity</th>
                                        <th class="span3">Procurement Method</th>
                                        <th class="span1">Procurement Type</th>
                                        <th class="span3">Contract Approving Authority</th>
                                        <th class="span3">Source of Fund</th>
                                        <th class="span5">Estd. Cost (In lakh tk)</th>
                                        <th class="span3">Invitation for Tender</th>
                                        <th class="span3">Signing of Contract</th>
                                        <th class="span3">Completion of Contract</th>
                                        <th class="span1">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody id="goods_content">
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="8" align="right">Grand Total</td>
                                        <td colspan="5"><input type="text" name="Goods_total" id="Goods_total" value="0.00" class="span4" /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="13"><a href="#" onClick="addNewProcuremtPlanRow('goods_tbl', 'goods');">Add New</a></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>

                    <div class="form-actions2">
                        <button class="btn btn-small btn-primary"><i class="icon-save"></i> Save</button>
                        <input type="hidden" value="saveAnnexIIIa" name="cmd"/>
                        <input type="hidden" name="PI" value="<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
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
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/fuelux.spinner.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/bootstrap-timepicker.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/date.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/fuelux.wizard.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/bootbox.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/daterangepicker.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.knob.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.autosize-min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.dataTables.min.js"></script>

    <!-- ace scripts -->
    <script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
    <script src="/app_contents/standard/template/assets/js/ace.min.js"></script>
                
    <script>
        //var ministry ="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->ministries;?>
";
        var ministries = [];
        var agencies   = []; 
        var partners   = []; 
        var divisions  = [];
        var districts  = []; 
        var upzilas    = []; 
                    
        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['basicInfo']->value->ministries; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
            ministries.push(<?php echo $_smarty_tpl->tpl_vars['item']->value->ministry_id;?>
)
        <?php } ?>
                        
        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['basicInfo']->value->agencies; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
            agencies.push(<?php echo $_smarty_tpl->tpl_vars['item']->value->agency_id;?>
)
        <?php } ?>   
                        
        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['basicInfo']->value->partners; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
            partners.push(<?php echo $_smarty_tpl->tpl_vars['item']->value->dev_partner_id;?>
)
        <?php } ?>   
                    
        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['basicInfo']->value->locations; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
            <?php if ($_smarty_tpl->tpl_vars['item']->value->location_type=='Division') {?>
                divisions.push(<?php echo $_smarty_tpl->tpl_vars['item']->value->location_id;?>
)
            <?php } elseif ($_smarty_tpl->tpl_vars['item']->value->location_type=='District') {?> 
                districts.push(<?php echo $_smarty_tpl->tpl_vars['item']->value->location_id;?>
)
            <?php } else { ?>
                upzilas.push(<?php echo $_smarty_tpl->tpl_vars['item']->value->location_id;?>
)
            <?php }?>
        <?php } ?>   
                    
                    
        $(".ministries").val(ministries);
        $(".agencies").val(agencies);
        $(".partners").val(partners);

        $(".divisions").val(divisions);
        $(".districts").val(districts);
        $(".upzilas").val(upzilas);
        $(".alert-success").fadeOut(1000);
        //$(".ministries").chosen().trigger("chosen:updated");
        
        //addNewProcuremtPlanRow('goods_tbl', 'goods');
        
        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['procurement_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
            addNewProcuremtPlanRow('goods_tbl', 'Goods');
            populateProcurementPlanDetails("<?php echo $_smarty_tpl->tpl_vars['item']->value->package_no;?>
", "<?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_desc;?>
", "<?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_unit;?>
", "<?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_qty;?>
", 
                                           "<?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_method;?>
", "<?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_type;?>
", "<?php echo $_smarty_tpl->tpl_vars['item']->value->approv_auth;?>
", "<?php echo $_smarty_tpl->tpl_vars['item']->value->fund_src;?>
", 
                                           "<?php echo $_smarty_tpl->tpl_vars['item']->value->estd_cost;?>
", "<?php echo $_smarty_tpl->tpl_vars['item']->value->tender_invitation;?>
", "<?php echo $_smarty_tpl->tpl_vars['item']->value->contract_sign;?>
", "<?php echo $_smarty_tpl->tpl_vars['item']->value->contract_completion;?>
",
                                           "<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
", "<?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_category;?>
");
        <?php } ?>
    </script>    
<?php }} ?>
