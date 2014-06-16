<?php /* Smarty version Smarty-3.1.17, created on 2014-06-16 10:08:49
         compiled from "E:\xampp\htdocs\pps2\app_contents\user_manager\user_list.html" */ ?>
<?php /*%%SmartyHeaderCode:12453539ea611ca9c66-67178983%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '359a5521b28dcf4a9c6a3f9bf45fa97de30e7358' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\user_manager\\user_list.html',
      1 => 1401954797,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12453539ea611ca9c66-67178983',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'ministryList' => 0,
    'agencyList' => 0,
    'adpSectorList' => 0,
    'list' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_539ea611d5e988_74209625',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_539ea611d5e988_74209625')) {function content_539ea611d5e988_74209625($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'E:/xampp/htdocs/pps2/ext/smarty3/libs/plugins\\function.html_options.php';
?><div id="main-content" class="clearfix">
    	<head>
		
		
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/jquery-ui-1.10.2.custom.min.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/chosen.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/datepicker.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/bootstrap-timepicker.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/daterangepicker.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/colorpicker.css" />

	</head>

					
					<div id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">Home</a><span class="divider"><i class="icon-angle-right"></i></span></li>
							<li><a href="#">Project</a> <span class="divider"><i class="icon-angle-right"></i></span></li>
							<li class="active">List</li>
						</ul><!--.breadcrumb-->

						
					</div><!--#breadcrumbs-->



<div id="page-content" class="clearfix">
					
    <div class="page-header position-relative">
	<h1>User List<small><i class="icon-double-angle-right"></i> (All)</small></h1>
    </div><!--/page-header-->

						

<div class="row-fluid">
<!-- PAGE CONTENT BEGINS HERE -->

<form class="form-horizontal" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">
	
		<div class="control-group">
			<label class="control-label" for="username">Username</label>
			<div class="controls">
				<input class="span4" type="text" id="username" name="username" placeholder="Enter Username">
			</div>
		</div>
            
                <div class="control-group">
			<label class="control-label" for="designation">Designation</label>
			<div class="controls">
				<input class="span4" type="text" id="designation" name="designation" placeholder="Designation">
			</div>
		</div>
                <div class="control-group">
			<label class="control-label" for="email">Email</label>
			<div class="controls">
				<input class="span4" type="text" id="email" name="email" placeholder="Email">
			</div>
		</div>   
    
                <div class="control-group">
                    <label class="control-label" for="ministry_id">Ministry/Division</label>
                    <div class="controls">
                        <select id="ministry_id" name="ministry_id">
                            <option value="">Select Ministry</option>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['ministryList']->value),$_smarty_tpl);?>

                        </select>    
                    </div>
		</div>
    
                <div class="control-group">
                    <label class="control-label" for="agency_id">Agency</label>
                    <div class="controls">
                        <select id="agency_id" name="agency_id">
                            <option value="">Select Agency</option>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['agencyList']->value),$_smarty_tpl);?>

                        </select>    
                    </div>
		</div>
    
                <div class="control-group">
                    <label class="control-label" for="company_id">Sub Agency/Company</label>
                    <div class="controls">
                        <select id="company_id" name="company_id">
                            <option value="">Select Sub Agency/Company</option>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['adpSectorList']->value),$_smarty_tpl);?>

                        </select>    
                    </div>
		</div>
                
    	
		<div class="form-actions2">
			<button class="btn btn-small btn-primary" type="submit"><i class="icon-ok"></i> Search</button>
			&nbsp; &nbsp; &nbsp;
			<button class="btn btn-small btn-primary" type="reset"><i class="icon-undo"></i> Reset</button>
		</div>
    
                <div class="control-group">
			<div class="table-header">
                                User List(s)
                        </div>
			<div class="">
                            <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                <thead>
                                        <tr>
                                                <th>Username</th>
                                                <th>Designation</th>
                                                <th>Status</th>
                                        </tr>
                                </thead>

                                <tbody>
                                    <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                        <tr> 
                                            
                                                <td><?php echo $_smarty_tpl->tpl_vars['item']->value->username;?>
</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['item']->value->designation;?>
</td>
                                                <td>Active</td>
                                        </tr>
                                    <?php } ?>    
                                </tbody>
                            </table>
			</div>
		</div>
    
    
                <input type="hidden" name="cmd" value="list">
		
	
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

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/bootstrap-colorpicker.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.knob.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.autosize-min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.maskedinput.min.js"></script>

               <!-- ace scripts -->
		<script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
		<script src="/app_contents/standard/template/assets/js/ace.min.js"></script>
<?php }} ?>
