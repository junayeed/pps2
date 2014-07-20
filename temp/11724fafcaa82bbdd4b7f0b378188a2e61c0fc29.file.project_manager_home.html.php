<?php /* Smarty version Smarty-3.1.17, created on 2014-07-20 10:36:59
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\project_manager_home.html" */ ?>
<?php /*%%SmartyHeaderCode:1802353cb48724c4375-96332476%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '11724fafcaa82bbdd4b7f0b378188a2e61c0fc29' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager_home.html',
      1 => 1405843278,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1802353cb48724c4375-96332476',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53cb487258d1e6_20150827',
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'basicInfo' => 0,
    'gob_percentage' => 0,
    'total_project_aid' => 0,
    'pa_percentage' => 0,
    'own_fund_percentage' => 0,
    'other_percentage' => 0,
    'PI' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53cb487258d1e6_20150827')) {function content_53cb487258d1e6_20150827($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'E:/xampp/htdocs/pps2/ext/smarty3/libs/plugins\\modifier.date_format.php';
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
        <li class="active">Project</li>
    </ul><!--.breadcrumb-->

    
</div><!--#breadcrumbs-->



<div id="page-content" class="clearfix">
    <div class="page-header position-relative">
	<h1>Project <small><i class="icon-double-angle-right"></i> (DPP/TPP)</small></h1>
        <div id="nav-search">
            <a class="btn btn-small btn-primary" href="/app/standard/user_home/user_home.php">Dashboard</a>
               <button class="btn btn-small btn-primary">Forward To Ministry</button>
        </div><!--#nav-search-->
    </div><!--/page-header-->
<div class="row-fluid">
<!-- PAGE CONTENT BEGINS HERE -->

<!--div class="alert alert-success">
    <button type="button" class="close" data-dismiss="alert"><i class="icon-remove"></i></button>
    <strong><i class="icon-info-sign"></i> Project Created Successfully</strong>,
    Now you can fillup Part-A, Part-B and other Annexures <br />
</div -->
<div class="span9">
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
                     <label class="control-label">: <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['basicInfo']->value->date_of_commencement);?>
</label>   
                </div>    
            </div>  

            <div class="control-group">
                <label class="control-label" for="implementing_period">Date of completion</label>
                 <div class="controls">
                     <label class="control-label">: <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['basicInfo']->value->date_of_completion);?>
</label>   
                </div>    
            </div>  
        </form>
    </div>

    <div class="span3">
	
	<div class="infobox infobox-green">
		<div class="infobox-icon"><i class="icon-comments"></i></div>
		<div class="infobox-data">
                    <span class="infobox-data-number"><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->gob_cost,2,".",",");?>
</span>
                    <span class="infobox-content">GOB</span>
		</div>
		<div class="badge badge-success">
                    <?php if ($_smarty_tpl->tpl_vars['basicInfo']->value->total_cost) {?>
                        <?php $_smarty_tpl->tpl_vars["gob_percentage"] = new Smarty_variable($_smarty_tpl->tpl_vars['basicInfo']->value->gob_cost/$_smarty_tpl->tpl_vars['basicInfo']->value->total_cost*100, null, 0);?>
                        <?php echo number_format($_smarty_tpl->tpl_vars['gob_percentage']->value,2,".",",");?>
%
                    <?php } else { ?>
                        0.00%
                    <?php }?>
                </div>
	</div>


	<div class="infobox infobox-blue">
		<div class="infobox-icon"><i class="icon-twitter"></i></div>
		<div class="infobox-data">
                    <span class="infobox-data-number">
                        <?php $_smarty_tpl->tpl_vars["total_project_aid"] = new Smarty_variable($_smarty_tpl->tpl_vars['basicInfo']->value->pa_through_gob_cost+$_smarty_tpl->tpl_vars['basicInfo']->value->pa_spc_acnt_cost+$_smarty_tpl->tpl_vars['basicInfo']->value->pa_dpa_cost, null, 0);?>
                        <?php echo number_format($_smarty_tpl->tpl_vars['total_project_aid']->value,2,".",",");?>

                    </span>
                    <span class="infobox-content">Project Aid</span>
		</div>
		<div class="badge badge-success">
                    <?php if ($_smarty_tpl->tpl_vars['basicInfo']->value->total_cost) {?>
                        <?php $_smarty_tpl->tpl_vars["pa_percentage"] = new Smarty_variable($_smarty_tpl->tpl_vars['total_project_aid']->value/$_smarty_tpl->tpl_vars['basicInfo']->value->total_cost*100, null, 0);?>
                        <?php echo number_format($_smarty_tpl->tpl_vars['pa_percentage']->value,2,".",",");?>
%
                    <?php } else { ?>
                        0.00%
                    <?php }?>
                </div>
	</div>
	<div class="infobox infobox-pink">
		<div class="infobox-icon"><i class="icon-shopping-cart"></i></div>
		<div class="infobox-data">
                    <span class="infobox-data-number"><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->own_fund_cost,2,".",",");?>
</span>
                    <span class="infobox-content">Own Fund</span>
		</div>
		<div class="badge badge-success">
                    <?php if ($_smarty_tpl->tpl_vars['basicInfo']->value->total_cost) {?>
                        <?php $_smarty_tpl->tpl_vars["own_fund_percentage"] = new Smarty_variable($_smarty_tpl->tpl_vars['basicInfo']->value->own_fund_cost/$_smarty_tpl->tpl_vars['basicInfo']->value->total_cost*100, null, 0);?>
                        <?php echo number_format($_smarty_tpl->tpl_vars['own_fund_percentage']->value,2,".",",");?>
%
                    <?php } else { ?>
                        0.00%
                    <?php }?>
                </div>
	</div>
	<div class="infobox infobox-red">
		<div class="infobox-icon"><i class="icon-beaker"></i></div>
		<div class="infobox-data">
                    <span class="infobox-data-number"><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->other_cost,2,".",",");?>
</span>
                    <span class="infobox-content">Other</span>
		</div>
                <div class="badge badge-success">
                    <?php if ($_smarty_tpl->tpl_vars['basicInfo']->value->total_cost) {?>
                        <?php $_smarty_tpl->tpl_vars["other_percentage"] = new Smarty_variable($_smarty_tpl->tpl_vars['basicInfo']->value->other_cost/$_smarty_tpl->tpl_vars['basicInfo']->value->total_cost*100, null, 0);?>
                        <?php echo number_format($_smarty_tpl->tpl_vars['other_percentage']->value,2,".",",");?>
%
                    <?php } else { ?>
                        0.00%
                    <?php }?>
                </div>
	</div>
        <div class="infobox infobox-red">
		<div class="infobox-icon"><i class="icon-beaker"></i></div>
		<div class="infobox-data">
                    <span class="infobox-data-number"><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->total_cost,2,".",",");?>
</span>
                    <span class="infobox-content">Total Cost</span>
		</div>
	</div>
    </div>    

</div>
    
    
<div class="hr hr-double hr-dotted hr18"></div>

    <div class="">
        <h4 class="header smaller lighter blue">Project Information</h4>
        <div class="dropdown dropdown-preview">
                <ul class="dropdown-menu">
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=partA&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Part-A (Project Summary)</a></li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=partB&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Part-B (Project Details)</a> </li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=partB&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">&nbsp;</a> </li>
                </ul>
        </div>
        
        <div class="dropdown dropdown-preview">
                <ul class="dropdown-menu">
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=anaexI&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - I: Location wise cost breakdown</a> </li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexII&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - II: Project Management Setup</a> </li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexII&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">&nbsp;</a> </li>
                </ul>
        </div>
        
        <div class="dropdown dropdown-preview">
                <ul class="dropdown-menu">
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexIIIa&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - III (a): GOODS</a> </li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexIIIb&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - III (b): WORKS</a> </li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexIIIc&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - III (c): SERVICES</a> </li>
                </ul>
        </div>
        <div class="dropdown dropdown-preview">
                <ul class="dropdown-menu">
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexIV&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - IV: Year wise Financial and Physical Target plan</a> </li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexV&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - V: Detailed annual phasing of cost</a> </li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexV&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure - VI: Amortization Schedule</a> </li>
                </ul>
        </div>
    </div>    

<div class="hr hr-double hr-dotted hr18"></div>

        <div class="">
		<div class="widget-box transparent">
			<div class="widget-header">
				<h4 class="lighter">Project Status</h4>
				<div class="widget-toolbar no-border">
					<ul class="nav nav-tabs" id="myTab2">
						<li class="active"><a data-toggle="tab" href="#home2">Agency</a></li>
						<li><a data-toggle="tab" href="#profile2">Ministry</a></li>
						<li><a data-toggle="tab" href="#info2">Planning Commission</a></li>
					</ul>
				</div>
			</div>
			<div class="widget-body">
			 <div class="widget-main">
				<div class="tab-content padding-4">
				  <div id="home2" class="tab-pane in active">
					<div class="slim-scroll" data-height="100">
						<b>TAB # 1</b>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
					</div>
				  </div>
				  
				  <div id="profile2" class="tab-pane">
					<div class="slim-scroll" data-height="100">
						<b>TAB # 2</b>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
					</div>
				  </div>
				  
				  <div id="info2" class="tab-pane">
					<div class="slim-scroll" data-height="100">
						<b>TAB # 3</b>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
					</div>
				  </div>
			   </div>

			 </div>
			</div>
		</div>
	</div>

<!-- PAGE CONTENT ENDS HERE -->

	
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
