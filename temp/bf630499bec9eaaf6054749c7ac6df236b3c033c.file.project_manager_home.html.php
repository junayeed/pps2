<?php /* Smarty version Smarty-3.1.17, created on 2014-05-09 21:48:43
         compiled from "D:\xampp\htdocs\pps2\app_contents\project_manager\project_manager_home.html" */ ?>
<?php /*%%SmartyHeaderCode:212265368b7b50f7333-45768813%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bf630499bec9eaaf6054749c7ac6df236b3c033c' => 
    array (
      0 => 'D:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager_home.html',
      1 => 1399664920,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '212265368b7b50f7333-45768813',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5368b7b5136376_11918195',
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'basicInfo' => 0,
    'PI' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5368b7b5136376_11918195')) {function content_5368b7b5136376_11918195($_smarty_tpl) {?>

		
<div id="main-content" class="clearfix">
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
							<li class="active">Project</li>
						</ul><!--.breadcrumb-->

						<div id="nav-search">
							<form class="form-search">
									<span class="input-icon">
										<input autocomplete="off" id="nav-search-input" type="text" class="input-small search-query" placeholder="Search ..." />
										<i id="nav-search-icon" class="icon-search"></i>
									</span>
							</form>
						</div><!--#nav-search-->
					</div><!--#breadcrumbs-->



<div id="page-content" class="clearfix">
					
    <div class="page-header position-relative">
	<h1>Project <small><i class="icon-double-angle-right"></i> (DPP/TPP)</small></h1>
    </div><!--/page-header-->

						

<div class="row-fluid">
<!-- PAGE CONTENT BEGINS HERE -->

<div class="alert alert-success">
    <button type="button" class="close" data-dismiss="alert"><i class="icon-remove"></i></button>
    <strong><i class="icon-info-sign"></i> Project Created Successfully</strong>,
    Now you can fillup Part-A, Part-B and other Annexures <br />
</div>

<form class="form-horizontal" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">
	
		<div class="control-group">
			<label class="control-label" for="project_title_en">Project Title (English)</label>
			<div class="controls">  
                            <label class="control-label">: <b><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->project_title_en;?>
</b></label>
			</div>
		</div>
            
                <div class="control-group">
			<label class="control-label" for="project_title_bn">Project Title (Bangla)</label>
			<div class="controls">
				<label class="control-label">: <?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->project_title_bn;?>
</label>
			</div>
		</div>
            
                 <div class="control-group">
			<label class="control-label" for="project_type">Project Type</label>
			<div class="controls">
                               <label class="control-label">: <?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->project_type;?>
</label>   
                        </div>
		</div>
            
                                                
                <div class="control-group">
			<label class="control-label" for="implementing_period">Date of commencement</label>
                        <div class="controls">
                             <label class="control-label">: <?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->date_of_commencement;?>
</label>   
                        </div>    
                </div>  
    
                <div class="control-group">
			<label class="control-label" for="implementing_period">Date of completion</label>
		         <div class="controls">
                             <label class="control-label">: <?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->date_of_completion;?>
</label>   
                        </div>    
                </div>  
	 </form>
	    <div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
				  <div class="table-header">
                                            Project Related Informations
                                  </div>
				  <div class="widget-body">
				   <div class="widget-main no-padding">
					<ul class="unstyled spaced">
                                              <li><i class="icon-share-alt blue"></i><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=partA&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Part-A(Project Summary)</a></li>
                                              <li><i class="icon-share-alt blue"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=partB&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
"> Part-B(Project Details)</a> </li>
					</ul>
				   </div>
				  </div>
				</div>
			</div>
		</div>	
		
		


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
