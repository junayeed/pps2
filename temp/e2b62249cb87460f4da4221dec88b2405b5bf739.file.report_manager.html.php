<?php /* Smarty version Smarty-3.1.17, created on 2014-10-24 16:32:21
         compiled from "D:\xampp2\htdocs\pps2\app_contents\report_manager\report_manager.html" */ ?>
<?php /*%%SmartyHeaderCode:27381544a62f54234d1-94756027%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e2b62249cb87460f4da4221dec88b2405b5bf739' => 
    array (
      0 => 'D:\\xampp2\\htdocs\\pps2\\app_contents\\report_manager\\report_manager.html',
      1 => 1414124862,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '27381544a62f54234d1-94756027',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_544a62f545e467_08952296',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_544a62f545e467_08952296')) {function content_544a62f545e467_08952296($_smarty_tpl) {?><head>
    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/jquery-ui-1.10.2.custom.min.css" />
    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/datepicker.css" />
</head>
<div id="main-content" class="clearfix">
    
					
					<div id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">Home</a><span class="divider"><i class="icon-angle-right"></i></span></li>
							<li><a href="#">Rrports</a> <span class="divider"><i class="icon-angle-right"></i></span></li>
							<li class="active">Year wise project</li>
						</ul><!--.breadcrumb-->

						
					</div><!--#breadcrumbs-->



<div id="page-content" class="clearfix">
					
    <div class="page-header position-relative">
	<h1>Dynamic Reports <small><i class="icon-double-angle-right"></i>criteria based</small></h1>
    </div><!--/page-header-->

						

<div class="row-fluid">
<!-- PAGE CONTENT BEGINS HERE -->


<form class="form-horizontal" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">
	
    <div class="well">
        
        <table style="width: 100%;" cellpadding="5" >
            <tr>
                <td colspan="2">
                    <label class="label label-info">Project Name (English/Bangla)</label>
                    <input type="text" class="span12" placeholder="Project name…">
                </td>
                <td>
                    <label class="label label-info">Project Type</label>
                    <input type="text" class="span12" placeholder="Project Type …">
                </td>
                <td>
                    <label class="label label-info">Status</label>
                    <input type="text" class="span12" placeholder="Project Status …">
                </td>
            </tr>    
            <tr>
                <td>
                    <label class="label label-info">Project Starting Date (To)</label>
                    <input type="text" class="date-picker span10" placeholder="Project Status …">
                    <span class="add-on"><i class="icon-calendar"></i></span>
                </td>
                <td>
                    <label class="label label-info">Project Starting Date (From)</label>
                    <input type="text" class="date-picker span10" placeholder="Project Status …">
                    <span class="add-on"><i class="icon-calendar"></i></span>
                </td>
                <td>
                    <label class="label label-info">Project Ending Date (To)</label>
                    <input type="text" class="date-picker span10" placeholder="Project Status …">
                    <span class="add-on"><i class="icon-calendar"></i></span>
                </td>
                <td>
                    <label class="label label-info">Project Ending Date (From)</label>
                    <input type="text" class="date-picker span10" placeholder="Project Status …">
                    <span class="add-on"><i class="icon-calendar"></i></span>
                </td>
            </tr> 
            <tr>
                <td>
                    <label class="label label-info">Total Cost (To)</label>
                    <input type="text" class="span12" placeholder="Project Status …">
                </td>
                <td>
                    <label class="label label-info">Total Cost (From)</label>
                    <input type="text" class="span12" placeholder="Project Status …">
                </td>
                <td colspan="2">
                    <label class="label label-info">Donor Agencies</label>
                    <input type="text" class="span12" placeholder="Project Status …">
                </td>
            </tr>    
        </table>    
            
            <fieldset>
                <label class="pull-left" style="padding-top: 10px;">
                   <button onclick="return false;" class="btn btn-small btn-success">Submit <i class="icon-arrow-right icon-on-right"></i></button>
                </label>
                
            </fieldset>
            
           
    </div>
    <div class="row-fluid">
        <div id="container" style="height: 400px"></div>  
      
    </div>    
</form>
	   
<!-- PAGE CONTENT ENDS HERE -->
</div><!--/row-->
	
</div><!--/#page-content-->

</div><!-- #main-content -->

		<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse">
			<i class="icon-double-angle-up icon-only"></i>
		</a>
                        
                        
                <!-- basic scripts -->
		<script src="/app_contents/standard/template/assets/js/jquery.min.js"></script>
		<script type="text/javascript">
		window.jQuery || document.write("<script src='/app_contents/standard/template/assets/js/jquery-1.9.1.min.js'>\x3C/script>");
		</script>
		
		<script src="/app_contents/standard/template/assets/js/bootstrap.min.js"></script>        


                <script src="/ext/highcharts/js/highcharts.js"></script>
                <script src="/ext/highcharts/js/highcharts-3d.js"></script>
                <script src="/ext/highcharts/js/modules/exporting.js"></script>

		<!-- page specific plugin scripts -->
		
		<!--[if lt IE 9]>
		<script type="text/javascript" src="/app_contents/standard/template/assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery-ui-1.10.2.custom.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.ui.touch-punch.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/chosen.jquery.min.js"></script>
              
		<script type="text/javascript" src="/app_contents/standard/template/assets/js/bootstrap-datepicker.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/date.js"></script>
		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.validate.min.js"></script>

               <!-- ace scripts -->
		<script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
		<script src="/app_contents/standard/template/assets/js/ace.min.js"></script>
                <script>
                    $('.date-picker').datepicker();
                </script>    
<?php }} ?>
