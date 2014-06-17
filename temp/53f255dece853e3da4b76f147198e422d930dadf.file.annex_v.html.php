<?php /* Smarty version Smarty-3.1.17, created on 2014-06-17 10:40:29
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\annex_v.html" */ ?>
<?php /*%%SmartyHeaderCode:20084539d5fd5383d83-37837918%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '53f255dece853e3da4b76f147198e422d930dadf' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\annex_v.html',
      1 => 1402994423,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20084539d5fd5383d83-37837918',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_539d5fd5493c97_04951843',
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'PI' => 0,
    'SYSTEM_COMMON_JAVASCRIPT_DIR' => 0,
    'REL_TEMPLATE_DIR' => 0,
    'SYSTEM_APP_PREFIX' => 0,
    'econimonic_code_list' => 0,
    'item' => 0,
    'econimonic_subcode_list' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_539d5fd5493c97_04951843')) {function content_539d5fd5493c97_04951843($_smarty_tpl) {?><div id="main-content" class="clearfix">
    <head>
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/jquery-ui-1.10.2.custom.min.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/chosen.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/datepicker.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/bootstrap-timepicker.css" />
        <link rel="stylesheet" href="/app_contents/standard/template/assets/css/daterangepicker.css" />
        
        <script type="text/javascript" src="/app_contents/local/js/pps2.js"></script>
        <script type="text/javascript" src="/app_contents/common/js/messages.js"></script>
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
            <li class="active">Annexure - V: Detailed annual phasing cost</li>
        </ul><!--.breadcrumb-->
        <div id="nav-search">    
        </div><!--#nav-search-->
    </div><!--#breadcrumbs-->

    <div id="page-content" class="clearfix">
        <div class="page-header position-relative">
            <h1>Annexure - V<small><i class="icon-double-angle-right"></i>Detailed annual phasing cost</small></h1>
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
            <form class="form-horizontal" id="procure_plan_services_form"  method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
" name="procure_plan_services_form"> 
                <div class="control-group">
                   <div class="span12"> 
                        <div id="annex-container">
                            <div id="economic_code_container">
                                <i class="icon-blank"></i>
                                <table id="economic_code_tbl" class="table table-striped table-bordered table-hover table_bug_report">
                                    <thead>
                                        <tr>
                                            <th class="span1">Economic Code</th>
                                            <th class="span1">Economic Sub-code</th>
                                            <th class="span12">Code description</th>
                                        </tr>
                                    </thead>
                                    <tbody id="economic_code_content">
                                    </tbody>
                                </table>
                            </div>
                            <div id="total_cost_container">
                                <i class="icon-blank"></i>
                                <table id="total_cost_tbl" class="table table-striped table-bordered table-hover table_bug_report">
                                    <thead>
                                        <tr>
                                            <th class="span3">Unit</th>
                                            <th class="span2">Unit Cost</th>
                                            <th class="span2">Qty</th>
                                            <th class="span4">Total Cost</th>
                                        </tr>
                                    </thead>
                                    <tbody id="total_cost_content">
                                    </tbody>
                                </table>
                            </div>
                            <div id="total_cost_breakdown_container">
                                <i class="icon-exchange" id="toggle_total_cost_breakdown"></i>
                                <table id="total_cost_breakdown_tbl" class="table table-striped table-bordered table-hover table_bug_report">
                                    <thead>
                                        <tr>
                                            <th class="span3" rowspan="3">GoB (FE)</th>
                                            <th class="span3" colspan="3">Project Aid</th>
                                            <th class="span3" rowspan="3">Own Fund (FE)</th>
                                            <th class="span3" rowspan="3">Other (FE)</th>
                                        </tr>
                                        <tr>
                                            <th class="span3" colspan="2">RPA</th>
                                            <th class="span3" rowspan="2">DPA</th>
                                        </tr>
                                        <tr>
                                            <th class="span3">Through GoB</th>
                                            <th class="span3">Special Account*</th>
                                        </tr>
                                    </thead>
                                    <tbody id="total_cost_breakdown_content">
                                    </tbody>
                                </table>
                            </div>
                            <div id="total_cost_breakdown_container1">
                                <i class="icon-exchange" id="toggle_total_cost_breakdown"></i>
                                <table id="total_cost_breakdown_tbl" class="table table-striped table-bordered table-hover table_bug_report">
                                    <thead>
                                        <tr>
                                            <th class="span3" rowspan="3">GoB (FE)</th>
                                            <th class="span3" colspan="3">Project Aid</th>
                                            <th class="span3" rowspan="3">Own Fund (FE)</th>
                                            <th class="span3" rowspan="3">Other (FE)</th>
                                            <th class="span3" rowspan="3">Total</th>
                                        </tr>
                                        <tr>
                                            <th class="span3" colspan="2">RPA</th>
                                            <th class="span3" rowspan="2">DPA</th>
                                        </tr>
                                        <tr>
                                            <th class="span3">Through GoB</th>
                                            <th class="span3">Special Account*</th>
                                        </tr>
                                    </thead>
                                    <tbody id="total_cost_breakdown_content">
                                    </tbody>
                                </table>
                            </div>
                            <div id="total_cost_breakdown_container1">
                                <i class="icon-exchange" id="toggle_total_cost_breakdown"></i>
                                <table id="total_cost_breakdown_tbl" class="table table-striped table-bordered table-hover table_bug_report">
                                    <thead>
                                        <tr>
                                            <th class="span3" rowspan="3">GoB (FE)</th>
                                            <th class="span3" colspan="3">Project Aid</th>
                                            <th class="span3" rowspan="3">Own Fund (FE)</th>
                                            <th class="span3" rowspan="3">Other (FE)</th>
                                            <th class="span3" rowspan="3">Total</th>
                                        </tr>
                                        <tr>
                                            <th class="span3" colspan="2">RPA</th>
                                            <th class="span3" rowspan="2">DPA</th>
                                        </tr>
                                        <tr>
                                            <th class="span3">Through GoB</th>
                                            <th class="span3">Special Account*</th>
                                        </tr>
                                    </thead>
                                    <tbody id="total_cost_breakdown_content">
                                    </tbody>
                                </table>
                            </div>
                            <div id="total_cost_breakdown_container1">
                                <table id="total_cost_breakdown_tbl" class="table table-striped table-bordered table-hover table_bug_report">
                                    <thead>
                                        <tr>
                                            <th class="span3" rowspan="3">GoB (FE)</th>
                                            <th class="span3" colspan="3">Project Aid</th>
                                            <th class="span3" rowspan="3">Own Fund (FE)</th>
                                            <th class="span3" rowspan="3">Other (FE)</th>
                                            <th class="span3" rowspan="3">Total</th>
                                        </tr>
                                        <tr>
                                            <th class="span3" colspan="2">RPA</th>
                                            <th class="span3" rowspan="2">DPA</th>
                                        </tr>
                                        <tr>
                                            <th class="span3">Through GoB</th>
                                            <th class="span3">Special Account*</th>
                                        </tr>
                                    </thead>
                                    <tbody id="total_cost_breakdown_content">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <a href="#" onClick="addNewComponent();">Add Component</a>
                        <div class="form-actions2">
                            <button class="btn btn-small btn-primary"><i class="icon-save"></i> Save</button>
                            <input type="hidden" value="saveAnnexIIIc" name="cmd"/>
                            <input type="hidden" id="PI" name="PI" value="<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
"/>
                        </div>
                    </div>      
                </div>
            </form>   
            
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
    
    <script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['SYSTEM_COMMON_JAVASCRIPT_DIR']->value;?>
/common.js"></script>
    <script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['REL_TEMPLATE_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['SYSTEM_APP_PREFIX']->value;?>
.js"></script>                 
    <script>
        
        

        $('#toggle_total_cost_breakdown').click(function() 
        {
            if( $('#total_cost_breakdown_tbl').is(":visible") )
            {
                $('#total_cost_breakdown_tbl').hide("slow", function() {$('#total_cost_breakdown_container').css('width', '15px');});
                
            }
            else
            {
                $('#total_cost_breakdown_tbl').show("slow", function() {$('#total_cost_breakdown_container').css('width', '500px');});
                
            }
            
        });
       
        
        var economicCodeArr = [];
        var i = 1;
        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['econimonic_code_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
           
           economicCodeArr.push({'code':"<?php echo $_smarty_tpl->tpl_vars['item']->value->economic_code;?>
" , 
                                        'component_type':"<?php echo $_smarty_tpl->tpl_vars['item']->value->component_type;?>
",
                                        'code_name':"<?php echo $_smarty_tpl->tpl_vars['item']->value->economic_code_name;?>
", 
                                        'id':"<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
" 
                                }
                                );
           
        <?php } ?>
        
        var economicSubCodeArray = [];
        var i = 1;
        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['econimonic_subcode_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
           
           economicSubCodeArray.push({'id':"<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
" , 
                                        'sub_code':"<?php echo $_smarty_tpl->tpl_vars['item']->value->economic_subcode;?>
",
                                        'economic_subcode_name':"<?php echo $_smarty_tpl->tpl_vars['item']->value->economic_subcode_name;?>
", 
                                        'economic_code_id':"<?php echo $_smarty_tpl->tpl_vars['item']->value->economic_code_id;?>
" 
                                }
                                );
           
        <?php } ?>
        /*
        
         ;(function($) {
   $.fn.fixMe = function() {
      return this.each(function() {
         var $this = $(this),
            $t_fixed;
         function init() {
            $this.wrap('<div class="container" />');
            $t_fixed = $this.clone();
            $t_fixed.find("tbody").remove().end().addClass("fixed").insertBefore($this);
            resizeFixed();
         }
         function resizeFixed() {
            $t_fixed.find("th").each(function(index) {
               $(this).css("width",$this.find("th").eq(index).outerWidth()+"px");
            });
         }
         function scrollFixed() {
            var offset = $(this).scrollTop(),
            tableOffsetTop = $this.offset().top,
            tableOffsetBottom = tableOffsetTop + $this.height() - $this.find("thead").height();
            if(offset < tableOffsetTop || offset > tableOffsetBottom)
               $t_fixed.hide();
            else if(offset >= tableOffsetTop && offset <= tableOffsetBottom && $t_fixed.is(":hidden"))
               $t_fixed.show();
         }
         $(window).resize(resizeFixed);
         $(window).scroll(scrollFixed);
         init();
      });
   };
})(jQuery);

$(document).ready(function(){
   $("table").fixMe();
   $(".up").click(function() {
      $('html, body').animate({
      scrollTop: 0
   }, 2000);
 });
});*/
    
    addNewComponent();
    </script>    
<?php }} ?>
