<?php /* Smarty version Smarty-3.1.17, created on 2014-08-13 07:15:32
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\project_manager_list.html" */ ?>
<?php /*%%SmartyHeaderCode:2033253cb489b2e1df7-68572670%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eadd5a3144c78ce9fd9e309bed6a26695ff74cb1' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager_list.html',
      1 => 1407318464,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2033253cb489b2e1df7-68572670',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53cb489b483f72_86950785',
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'project_title' => 0,
    'list' => 0,
    'key' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53cb489b483f72_86950785')) {function content_53cb489b483f72_86950785($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'E:/xampp/htdocs/pps2/ext/smarty3/libs/plugins\\modifier.date_format.php';
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
	<h1>Project List<small><i class="icon-double-angle-right"></i> (Search)</small></h1>
    </div><!--/page-header-->

						

<div class="row-fluid">
<!-- PAGE CONTENT BEGINS HERE -->

<form class="form-horizontal" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">
	
		<div class="control-group">
			<label class="control-label" for="project_title">Project Title</label>
			<div class="controls">
                            <input class="span8" type="text" id="project_title" value="<?php echo $_smarty_tpl->tpl_vars['project_title']->value;?>
"  name="project_title" placeholder="Project Title">
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
                
    	
		<div class="form-actions2">
			<button class="btn btn-small btn-primary" type="submit"><i class="icon-ok"></i> Search</button>
			&nbsp; &nbsp; &nbsp;
			<button class="btn btn-small btn-primary" type="reset"><i class="icon-undo"></i> Reset</button>
		</div>
    
                <div class="control-group">
			<div class="widget-main no-padding">
                            <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                <thead>                                               
                                    <tr>
                                        <th>Sl</th>
                                        <th class="span10">Project Title</th>
                                        <?php if ($_SESSION['user_type']!='Agency') {?>
                                        <th class="span10">Name of the Agency</th>
                                        <?php }?>
                                        <th class="hidden-480">Create Date</th>
                                        <th style="text-align: right;">Total Cost (In Lac)</th>
                                        <th style="text-align: center;" class="hidden-480">Status</th>
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
                                            <td><?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
</td>
                                            <td><a href="/app/project_manager/project_manager.php?cmd=ProjectHome&PI=<?php echo base64_encode($_smarty_tpl->tpl_vars['item']->value->id);?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value->project_title_en;?>
</a></td>
                                            <?php if ($_SESSION['user_type']!='Agency') {?>
                                            <td class="span10"><?php echo $_smarty_tpl->tpl_vars['item']->value->agency_name;?>
</td>
                                            <?php }?>
                                            <td  class="span3 hidden-480"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['item']->value->create_date,"%e %B, %Y");?>
</td>
                                            <td class="span3" style="text-align: right ;padding-right: 5px;">
                                                <b class="blue" ><?php echo number_format($_smarty_tpl->tpl_vars['item']->value->total_cost,2,'.',',');?>
</b>
				            </td>
                                            <td class="hidden-480" style="text-align: center;">
                                                <span class="label <?php if ($_smarty_tpl->tpl_vars['item']->value->status=='Draff') {?>label-info arrowed-right arrowed-in <?php } elseif ($_smarty_tpl->tpl_vars['item']->value->status=='Approved') {?> label-success arrowed-in arrowed-in-right <?php } else { ?> label-important arrowed<?php }?>"><?php echo $_smarty_tpl->tpl_vars['item']->value->status;?>
</span>
                                            </td>
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
