<?php /* Smarty version Smarty-3.1.17, created on 2014-06-10 07:39:16
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\project_manager.html" */ ?>
<?php /*%%SmartyHeaderCode:3268453969a043f51b8-99981777%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eee4749201c63e8b640c45cb6199e9622837ab3c' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager.html',
      1 => 1400737495,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3268453969a043f51b8-99981777',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53969a04431147_93792330',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53969a04431147_93792330')) {function content_53969a04431147_93792330($_smarty_tpl) {?><div id="main-content" class="clearfix">
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
            <li class="active">Create Project</li>
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
	<h1>Create Project <small><i class="icon-double-angle-right"></i> (DPP/TPP)</small></h1>
    </div><!--/page-header-->
<div class="row-fluid">

<!-- PAGE CONTENT BEGINS HERE -->
<div class="alert alert-info">
    <button type="button" class="close" data-dismiss="alert"><i class="icon-remove"></i></button>
    <strong><i class="icon-info-sign"></i> Create DPP or TPP,</strong>
    After creating the project, you will able to submit it to the Planning Commission <br />
</div>

<form class="form-horizontal" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">
	
    <div class="control-group">
        <label class="control-label" for="project_title_en">Project Title (English)</label>
        <div class="controls">
            <input class="span8" type="text" id="project_title_en"  name="project_title_en" placeholder="Project Title English">
        </div>
    </div>
            
    <div class="control-group">
        <label class="control-label" for="project_title_bn">Project Title (Bangla)</label>
        <div class="controls">
                <input class="span8" type="text" id="project_title_bn" name="project_title_bn" placeholder="Project Title Bangla">
        </div>
    </div>
            
    <div class="control-group">
        <label class="control-label" for="project_type">Project Type</label>
        <div class="controls">
            <select id="project_type" name="project_type">
                <option value="">Select Type</option>
                <option value='DPP'>DPP</option>
                <option value='TPP'>TPP</option>
            </select>    
        </div>
    </div>
                                                
    <div class="control-group">
        <label class="control-label" for="date_of_commencement">Date of commencement</label>
        <div class="controls">
            <div class="input-append date">
                <input class="span10 date-picker" id="date_of_commencement" name="date_of_commencement" type="text" data-date-format="dd-mm-yyyy" />
                <span class="add-on"><i class="icon-calendar"></i></span>
            </div>
        </div>    
    </div>  
    
    <div class="control-group">
        <label class="control-label" for="date_of_completion">Date of completion</label>
         <div class="controls">
            <div class="input-append date">
                <input class="span10 date-picker" id="date_of_completion" name="date_of_completion" type="text" data-date-format="dd-mm-yyyy" />
                <span class="add-on"><i class="icon-calendar"></i></span>
            </div>
        </div>    
    </div>  

    <div class="form-actions">
        <button class="btn btn-info" type="submit"><i class="icon-ok"></i> Create Project</button>
        &nbsp; &nbsp; &nbsp;
        <button class="btn" type="reset"><i class="icon-undo"></i> Reset</button>
    </div>
    <input type="hidden" name="cmd" value="save">
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