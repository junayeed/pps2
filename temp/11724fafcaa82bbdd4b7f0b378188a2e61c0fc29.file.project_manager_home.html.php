<?php /* Smarty version Smarty-3.1.17, created on 2014-06-16 06:44:17
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\project_manager_home.html" */ ?>
<?php /*%%SmartyHeaderCode:4734538ecfe3eb88b8-53227364%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '11724fafcaa82bbdd4b7f0b378188a2e61c0fc29' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager_home.html',
      1 => 1402767647,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4734538ecfe3eb88b8-53227364',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_538ecfe40f17e4_57245711',
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'basicInfo' => 0,
    'PI' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_538ecfe40f17e4_57245711')) {function content_538ecfe40f17e4_57245711($_smarty_tpl) {?><div id="main-content" class="clearfix">
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


<div class="hr hr32 hr-dotted"></div>


<div class="row-fluid">
    <div class="span6">
        <div class="widget-box">
            <div class="widget-header">
		<h4 class="lighter smaller"><i class="icon-comment blue"></i>Project Information</h4>
            </div>
            <div class="widget-body">
                <div class="widget-main no-padding">
                    <ul class="unstyled spaced">
                        <li><i class="icon-share-alt blue"></i><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=partA&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Part-A (Project Summary)</a></li>
                        <li><i class="icon-share-alt blue"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=partB&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Part-B (Project Details)</a> </li>
                        <li><i class="icon-share-alt blue"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=anaexI&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - I: Location wise cost breakdown</a> </li>
                        <li><i class="icon-share-alt blue"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=anaexII&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - II: Project Management Setup</a> </li>
                        <li><i class="icon-share-alt blue"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexIIIa&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - III (a): GOODS</a> </li>
                        <li><i class="icon-share-alt blue"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexIIIb&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - III (b): WORKS</a> </li>
                        <li><i class="icon-share-alt blue"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexIIIc&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - III (c): SERVICES</a> </li>
                        <li><i class="icon-share-alt blue"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexIV&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - IV: Year wise Financial and Physical Target plan</a> </li>
                        <li><i class="icon-share-alt blue"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexV&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - V: Detailed annual phasing of cost</a> </li>
                        <li><i class="icon-share-alt blue"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexV&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - VI: Amortization Schedule</a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
    
 <div class="span6">
	<div class="widget-box">
		
		<div class="widget-header">
			<h4 class="lighter smaller"><i class="icon-rss orange"></i>Feedbacks</h4>
			<div class="widget-toolbar no-border">
				<ul class="nav nav-tabs" id="recent-tab">
					<li ><a data-toggle="tab" href="#task-tab">Planning Commission</a></li>
					<li><a data-toggle="tab" href="#member-tab">Ministry</a></li>
					<li class="active"><a data-toggle="tab" href="#comment-tab">Agency</a></li>
				</ul>
			</div>
		</div>
		
		<div class="widget-body">
		 <div class="widget-main padding-5">
			<div class="tab-content padding-8">
				<div id="comment-tab" class="tab-pane">
					<div class="comments">
						<div class="itemdiv commentdiv">
							
							
							<div class="body">
								<div class="name"><a href="#">Jennifer</a></div>
								<div class="time"><i class="icon-time"></i> <span class="blue">15 min</span></div>
								<div class="text">
									<i class="icon-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis &hellip; 
								</div>
							</div>
							
							<div class="tools">
								<a href="#" class="btn btn-minier btn-info"><i class="icon-only icon-pencil"></i></a>
								<a href="#" class="btn btn-minier btn-danger"><i class="icon-only icon-trash"></i></a>
							</div>
						</div>
						
						
						<div class="itemdiv commentdiv">
							
							
							<div class="body">
								<div class="name"><a href="#">Rita</a></div>
								<div class="time"><i class="icon-time"></i> <span class="red">50 min</span></div>
								<div class="text">
									<i class="icon-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis &hellip;
								</div>
							</div>
							
							<div class="tools">
								<a href="#" class="btn btn-minier btn-info"><i class="icon-only icon-pencil"></i></a>
								<a href="#" class="btn btn-minier btn-danger"><i class="icon-only icon-trash"></i></a>
							</div>
						</div>
						
					</div>
					
					<div class="hr hr8"></div>
					<div class="center">
							<i class="icon-comments-alt icon-2x green"></i> &nbsp; <a href="#">See all comments &nbsp; <i class="icon-arrow-right"></i></a>
					</div>
					<div class="hr hr-double hr8"></div>
					
				</div>
			</div>
		 </div><!--/widget-main-->
		</div><!--/widget-body-->
		
		
	</div><!--/widget-box-->
 </div><!--/span-->
 
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
