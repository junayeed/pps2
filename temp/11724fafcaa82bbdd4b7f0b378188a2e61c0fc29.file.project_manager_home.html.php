<?php /* Smarty version Smarty-3.1.17, created on 2014-08-06 11:53:21
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\project_manager_home.html" */ ?>
<?php /*%%SmartyHeaderCode:1802353cb48724c4375-96332476%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '11724fafcaa82bbdd4b7f0b378188a2e61c0fc29' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager_home.html',
      1 => 1407318463,
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
    'PI' => 0,
    'gob_percentage' => 0,
    'total_project_aid' => 0,
    'pa_percentage' => 0,
    'own_fund_percentage' => 0,
    'other_percentage' => 0,
    'project_msg' => 0,
    'item' => 0,
    'key' => 0,
    'project_status' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53cb487258d1e6_20150827')) {function content_53cb487258d1e6_20150827($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'E:/xampp/htdocs/pps2/ext/smarty3/libs/plugins\\modifier.date_format.php';
?><div id="main-content" class="clearfix">
<head>
    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/jquery-ui-1.10.2.custom.min.css" />
    <!-- Add fancyBox main JS and CSS files -->
    
    <link rel="stylesheet" type="text/css" href="/ext/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
    

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
        <form class="form-horizontal" name="forwardForms" id="validation-form"  onsubmit="return forwardProject()" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
"> 
        <div id="nav-search">
            <a class="btn btn-small btn-primary" href="/app/standard/user_home/user_home.php">Dashboard</a>
            <?php if ($_SESSION['user_type']=='Agency'&&($_smarty_tpl->tpl_vars['basicInfo']->value->status=='Draff'||$_smarty_tpl->tpl_vars['basicInfo']->value->status=='Returned from Ministry')) {?><button id="bootbox-confirm" class="btn btn-small btn-primary" onclick="document.forwardForms.status.value='Forwarded to Ministry'" >Forward To Ministry</button><?php }?>
            <?php if ($_SESSION['user_type']=='Ministry'&&($_smarty_tpl->tpl_vars['basicInfo']->value->status=='Forwarded to Ministry'||$_smarty_tpl->tpl_vars['basicInfo']->value->status=='Returned from Commission')) {?><button id="bootbox-confirm" class="btn btn-small btn-primary" onclick="document.forwardForms.status.value='Returned from Ministry'">Returned to Agency</button><?php }?>
            <?php if ($_SESSION['user_type']=='Ministry'&&($_smarty_tpl->tpl_vars['basicInfo']->value->status=='Forwarded to Ministry'||$_smarty_tpl->tpl_vars['basicInfo']->value->status=='Returned from Commission')) {?><button id="bootbox-confirm" class="btn btn-small btn-primary" onclick="document.forwardForms.status.value='Forwarded to Commission'">Forward To Commission</button><?php }?>
            <?php if ($_SESSION['user_type']=='Commission'&&$_smarty_tpl->tpl_vars['basicInfo']->value->status=='Forwarded to Commission') {?><button id="bootbox-confirm" class="btn btn-small btn-primary" onclick="document.forwardForms.status.value='Returned from Commission'">Return to Ministry</button><?php }?>
            <input type="hidden" name="PI" value="<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
"/>    
            <input type="hidden" name="status" value=""/>    
            <input type="hidden" value="forwardProject" name="cmd"/>
        </div><!--#nav-search-->
         </form>
    </div><!--/page-header-->
   
<div class="row-fluid">
<!-- PAGE CONTENT BEGINS HERE -->

<!--div class="alert alert-success">
    <button type="button" class="close" data-dismiss="alert"><i class="icon-remove"></i></button>
    <strong><i class="icon-info-sign"></i> Project Created Successfully</strong>,
    Now you can fillup Part-A, Part-B and other Annexures <br />
</div -->
<div class="span9">
     
            <table class="table table-striped table-bordered table-hover">
              <tbody>  
                <tr>
                    <td class="span3"><label class="lbl">Project Name</label></td>
                    <td><label class="lbl"><b><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->project_title_en;?>
</b></label></td>
                </tr>
                <tr>
                    <td class="span3"><label class="lbl">Project Name(Bangla)</label></td>
                    <td><label class="lbl"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->project_title_bn;?>
</label></td>
                </tr>
                <tr>
                    <td class="span3"><label class=" label-default">Project Status</label></td>
                    <td>
                        <span class="label <?php if ($_smarty_tpl->tpl_vars['basicInfo']->value->status=='Draff') {?>label-info arrowed-right arrowed-in <?php } elseif ($_smarty_tpl->tpl_vars['basicInfo']->value->status=='Approved') {?> label-success arrowed-in arrowed-in-right <?php } else { ?> label-important arrowed<?php }?>"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->status;?>
</span>
                    </td>
                </tr>
                <tr>
                    <td><label class="lbl">Project Type</span></td>
                    <td><label class="lbl"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->project_type;?>
</label></td>
                </tr>
                <tr>
                    <td><label class="lbl">Date of commencement</label></td>
                    <td><label class="lbl"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->date_of_commencement;?>
</label></td>
                </tr>
                <tr>
                    <td><label class="lbl">Date of completion</label></td>
                    <td><label class="lbl"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->date_of_completion;?>
</label></td>
                </tr>
              </tbody>  
            </table>    
       
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
">Annexure- IV: Year wise Financial and Physical Target plan</a> </li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexV&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure- V: Detailed annual phasing of cost</a> </li>
                    <li><a href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=annexV&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Annexure- VI: Amortization Schedule</a> </li>
                </ul>
        </div>
    </div>    

<div class="hr hr-double hr-dotted hr12"></div>

<div class="row-fluid ">
         <h4 class="header smaller lighter blue">Project related other information</h4>
         <a id="various3" class="btn btn-small btn-primary right" href="/app/project_manager/project_manager.php?cmd=commentPage&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Add Comments</a>
	<div class="tabbable">
            <ul class="nav nav-tabs" id="myTab">
              <li class="active"><a data-toggle="tab" href="#home"><i class="green icon-home bigger-110"></i>Attachment(s)</a></li>
              <li><a data-toggle="tab" href="#agency_feedback">Agency Feedback <span class="badge badge-important">1</span></a></li>
              <li><a data-toggle="tab" href="#ministry_feedback">Ministry Feedback <span class="badge badge-important">1</span></a></li>
              <li><a data-toggle="tab" href="#commission_feedback">Commission Feedback <span class="badge badge-important">1</span></a></li>
              
            </ul>
            <div class="tab-content">
			  <div id="home" class="tab-pane in active">
				<div class="control-group">
                                    <label class="control-label" for="other-attachment">Other Attachments</label>
                                    <div class="controls span3">
                                        <input  type="file" id="id-input-file-1" />
                                    </div>
                                </div>
			  </div>
			  <div id="agency_feedback" class="tab-pane">
                                
				<div class="slim-scroll" data-height="100">
                        
                                    <div class="widget-main no-padding">
                                        <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                            <thead>                                               
                                                <tr>
                                                    <th>Sl</th>
                                                    <th>Title</th>
                                                    <th class="hidden-480">Message</th>
                                                    <th class="hidden-480">Attachment</th>
                                                    <th class="hidden-480">Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['project_msg']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                                    <?php if ($_smarty_tpl->tpl_vars['item']->value->msg_from=='Agency') {?>
                                                    <tr>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['item']->value->title;?>
</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['item']->value->msg;?>
</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['item']->value->doc_id;?>
</td>
                                                        <td>
                                                           <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['item']->value->create_date);?>

                                                        </td>
                                                    </tr>
                                                    <?php }?>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                
			  </div>
			  <div id="ministry_feedback" class="tab-pane">
				<div class="slim-scroll" data-height="100">
                        
                                    <div class="widget-main no-padding">
                                        <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                            <thead>                                               
                                                <tr>
                                                    <th>Sl</th>
                                                    <th>Title</th>
                                                    <th class="hidden-480">Message</th>
                                                    <th class="hidden-480">Attachment</th>
                                                    <th class="hidden-480">Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['project_msg']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                                    <?php if ($_smarty_tpl->tpl_vars['item']->value->msg_from=='Ministry') {?>
                                                    <tr>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['item']->value->title;?>
</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['item']->value->msg;?>
</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['item']->value->doc_id;?>
</td>
                                                        <td>
                                                           <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['item']->value->create_date);?>

                                                        </td>
                                                    </tr>
                                                    <?php }?>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
			  </div>
			  <div id="commission_feedback" class="tab-pane">
				<div class="slim-scroll" data-height="100">
                        
                                    <div class="widget-main no-padding">
                                        <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                            <thead>                                               
                                                <tr>
                                                    <th>Sl</th>
                                                    <th>Title</th>
                                                    <th class="hidden-480">Message</th>
                                                    <th class="hidden-480">Attachment</th>
                                                    <th class="hidden-480">Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['project_msg']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                                    <?php if ($_smarty_tpl->tpl_vars['item']->value->msg_from=='Commission') {?>
                                                    <tr>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['item']->value->title;?>
</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['item']->value->msg;?>
</td>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['item']->value->doc_id;?>
</td>
                                                        <td>
                                                           <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['item']->value->create_date);?>

                                                        </td>
                                                    </tr>
                                                    <?php }?>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
			  </div>
            </div>
	</div>

 </div><!--/span-->

        <div class="">
		   <h4 class="header smaller lighter blue">Project Status</h4>
			
                    <div class="slim-scroll" data-height="100">
                        
                        <div class="widget-main no-padding">
                            <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                <thead>                                               
                                    <tr>
                                        <th>Sl</th>
                                        <th><i></i>Status</th>
                                        <th class="hidden-480">Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['project_status']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                        <tr>
                                            <td><?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
</td>
                                            <td>
                                                Project has been <span class="label <?php if ($_smarty_tpl->tpl_vars['item']->value->status=='Draff') {?>label-info arrowed-right arrowed-in <?php } elseif ($_smarty_tpl->tpl_vars['item']->value->status=='Approved') {?> label-success arrowed-in arrowed-in-right <?php } else { ?> label-important arrowed<?php }?>"><?php echo $_smarty_tpl->tpl_vars['item']->value->status;?>
</span>
                                            </td>
                                            <td>
                                               <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['item']->value->date);?>

                                            </td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
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
                <script src="/app_contents/standard/template/assets/js/jquery-migrate-1.0.0.js"></script>
		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery-ui-1.10.2.custom.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.ui.touch-punch.min.js"></script>

		
		<script type="text/javascript" src="/app_contents/standard/template/assets/js/bootbox.min.js"></script>

		<script type="text/javascript" src="/ext/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
                <script type="text/javascript" src="/ext/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
                
               <!-- ace scripts -->
		<script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
		<script src="/app_contents/standard/template/assets/js/ace.min.js"></script>
		
                <script>
                    
                    var isPartA           = <?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->adp_sector;?>
;
                    //var isPartB           = <?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->locations[0]->location_cost;?>
;
                    var isAnnexI          = '<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->locations[0]->location_cost;?>
';
                    if(isAnnexI=='') isAnnexI = 0;
                    var isAnnexV          = <?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->total_cost;?>
;
                    
                    
                       
                      
                       //$('#forward-to-ministry').text('Harun');
                       //$('#forward-to-ministry').atr("disabled", 'disabled');
                       //$("#forward-to-ministry").button("option", "disabled", true);
                       $('#id-input-file-1 , #id-input-file-2').ace_file_input({
				no_file:'No File ...',
				btn_choose:'Choose',
				btn_change:'Change',
				droppable:false,
				onchange:null,
				thumbnail:false //| true | large
				//whitelist:'gif|png|jpg|jpeg'
				//blacklist:'exe|php'
				//onchange:''
				//
			});
                        
                        $("#various3").fancybox({
				'width'				: '75%',
				'height'			: '100%',
				'autoScale'			: false,
				'transitionIn'		        : 'none',
				'transitionOut'		        : 'none',
				'type'				: 'iframe'
			});
                        
                       
                        function lockProject()
                        {
                            //alert(2)
                           //$("#page-content :input").attr("disabled", true);   
                           //$("#id-input-file-1").hide();
                        }
                        
                        function forwardProject()
                        {
                              var MSG = '';
                              if(isPartA<=0) MSG +='Part-A is required<br>';
                              if(isAnnexI<=0) MSG +='Annexure-I is required<br>';
                              if(isAnnexV<=0) MSG +='Annexure-V is required<br>';
                              
                               if(MSG!='')
                               {    
                                    bootbox.dialog("Please Fillup the following:<br>"+MSG, [{
                                     "label" : "OK",
                                     "class" : "btn-small btn-success",
                                     "callback": function() {
                                             //Example.show("great success");
                                     }
                                     }]
                                     );
                                   return false;
                                }
                                else
                                {    
                                    bootbox.confirm("Are you sure?", function(result) {
                                            if(result) {
                                                   document.forwardForms.submit();
                                                    return true;
                                            }
                                            
                                    });
                                    return false;
                                }  
                            
                        }
                        
                       
                    
                        <?php if ($_smarty_tpl->tpl_vars['basicInfo']->value->current_holder==$_SESSION['uid']) {?>
                            <?php if ($_smarty_tpl->tpl_vars['basicInfo']->value->status!='Draff'&&$_smarty_tpl->tpl_vars['basicInfo']->value->status!='Returned from Ministry') {?>   
                                 lockProject();
                            <?php }?>
                        <?php } else { ?>
                            lockProject();
                        <?php }?>   
                            
                            
                </script>
<?php }} ?>
