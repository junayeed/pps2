<?php /* Smarty version Smarty-3.1.17, created on 2014-07-03 11:05:28
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\project_manager_partA.html" */ ?>
<?php /*%%SmartyHeaderCode:51539e7626de38b5-52101686%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8a8b9ea253aac412170507c719cc76c5eceb0c21' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager_partA.html',
      1 => 1404378324,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '51539e7626de38b5-52101686',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_539e76270ac406_44559884',
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'PI' => 0,
    'basicInfo' => 0,
    'ministryList' => 0,
    'agencyList' => 0,
    'adpSectorList' => 0,
    'adpSubSectorList' => 0,
    'sectorDivisionList' => 0,
    'partnerList' => 0,
    'modefinancing' => 0,
    'year_wise_gob_ownfund' => 0,
    'item' => 0,
    'divisionList' => 0,
    'districtList' => 0,
    'upazilaList' => 0,
    'component_list' => 0,
    'key' => 0,
    'vItem' => 0,
    'percentage_of_project' => 0,
    'contingency_list' => 0,
    'conItem' => 0,
    'con_percentage_of_project' => 0,
    'SYSTEM_COMMON_JAVASCRIPT_DIR' => 0,
    'REL_TEMPLATE_DIR' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_539e76270ac406_44559884')) {function content_539e76270ac406_44559884($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'E:/xampp/htdocs/pps2/ext/smarty3/libs/plugins\\function.html_options.php';
?><div id="main-content" class="clearfix">
    	<head>
		
		
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/jquery-ui-1.10.2.custom.min.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/chosen.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/datepicker.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/bootstrap-timepicker.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/daterangepicker.css" />
                <script type="text/javascript" src="/ext/ckeditor/ckeditor.js"></script>
	</head>

					
					<div id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">Home</a><span class="divider"><i class="icon-angle-right"></i></span></li>
							<li><a href="#">Project</a> <span class="divider"><i class="icon-angle-right"></i></span></li>
							<li class="active">Part-A</li>
						</ul><!--.breadcrumb-->

						<div id="nav-search">
							
						</div><!--#nav-search-->
					</div><!--#breadcrumbs-->



<div id="page-content" class="clearfix">
					
    <div class="page-header position-relative">
	<h1>Part-A <small><i class="icon-double-angle-right"></i> (Project Summary)</small></h1>
        <div id="nav-search">
          <a class="btn btn-small btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=ProjectHome&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Project Main Page</a>
          <button class="btn btn-small btn-primary">Forward To Ministry</button>
        </div>  
    </div><!--/page-header-->


<div class="row-fluid">
<!-- PAGE CONTENT BEGINS HERE -->

<div class="alert alert-success">
     <button type="button" class="close" data-dismiss="alert"><i class="icon-remove"></i></button>
	<strong><i class="icon-ok"></i> Successfully Saved!</strong>
        Your have to save all the data <br>
</div>




<form class="form-horizontal"> 

    
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
</form>    
    <div class="tabbable">
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a data-toggle="tab" href="#basicinfo"><i class="green icon-home bigger-110"></i> Objectives & Cost</a></li>
            <li><a data-toggle="tab" href="#location"><i class="green icon-home bigger-110"></i> Locations</a></li>
            <li><a data-toggle="tab" href="#costsummary"><i class="green icon-home bigger-110"></i> Component wise cost summary</a></li>
            <li><a data-toggle="tab" href="#logframe"><i class="green icon-home bigger-110"></i> Log frame</a></li>
            <li><a data-toggle="tab" href="#annexures"><i class="green icon-home bigger-110"></i> Annexures</a></li>
            
        </ul>
        <div class="tab-content">
            <!-- #basicinfo strats here-->  
            <div id="basicinfo" class="tab-pane in active">
            <form class="form-horizontal" id="validation-form"  method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
"> 
                <input type="hidden" name="PI" value="<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
"/>
                <div class="control-group">
                    <label class="control-label" for="ministries[]">Ministry/Division</label>
                    <div class="controls">
                        <select multiple class="chzn-select span6 ministries" id="ministries[]"  name="ministries[]" data-placeholder="Choose a Ministry/Division...">
                            <option value=""></option>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['ministryList']->value),$_smarty_tpl);?>

                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
            
                <div class="control-group">
                    <label class="control-label" for="agencies[]">Implementing Agency</label>
                    <div class="controls">
                        <select multiple class="chzn-select span6 agencies" id="agencies[]"  name="agencies[]" data-placeholder="Choose a Agencies...">
                            <option value=""></option>
                           <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['agencyList']->value),$_smarty_tpl);?>

                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
            
                <div class="control-group">
                    <label class="control-label" for="adp_sector">Concerned Sector of ADP</label>
                    <div class="controls">
                        <select id="adp_sector" name="adp_sector">
                            <option value="">Select Sector</option>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['adpSectorList']->value,'selected'=>$_smarty_tpl->tpl_vars['basicInfo']->value->adp_sector),$_smarty_tpl);?>

                        </select>    
                    </div>
		</div>
                
                <div class="control-group">
                    <label class="control-label" for="adp_sub_sector">Concerned Sub-sector of ADP</label>
                    <div class="controls">
                        <select id="adp_sub_sector" name="adp_sub_sector">
                            <option value="">Select Sector</option>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['adpSubSectorList']->value,'selected'=>$_smarty_tpl->tpl_vars['basicInfo']->value->adp_sub_sector),$_smarty_tpl);?>

                        </select>    
                    </div>
		</div>
            
                <div class="control-group">
                    <label class="control-label" for="sector_division">Concerned Division of Planning Commission</label>
                    <div class="controls">
                        <select id="sector_division" name="sector_division">
                            <option value="">Select Sector</option>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['sectorDivisionList']->value,'selected'=>$_smarty_tpl->tpl_vars['basicInfo']->value->sector_division),$_smarty_tpl);?>

                        </select>    
                    </div>
		</div>
                
                <div class="control-group">
                    <label class="control-label" for="partners[]">Development Partners</label>
                    <div class="controls">
                        <select multiple class="chzn-select span6 partners" id="partners[]" name="partners[]" data-placeholder="Choose a Development Partners...">
                        
                        <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['partnerList']->value),$_smarty_tpl);?>

                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
                </div>
                
                 <div class="control-group">
                    <label class="control-label" for="objectives">Objectives</label>
                    <div class="controls" style="margin-left: 289px !important">
                        <textarea rows="5" class="ckeditor" name="objectives" id="objectives"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->objectives;?>
</textarea>
                    </div>
                </div>
                
                 <div class="control-group">
                    <label class="control-label" for="project_cost">Estimated Cost of the project(in Lakh Taka)</label>
                    <div class="controls"><br><br>
                        <label for="project_cost">Total:<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->total_cost;?>
</label>
                        <label  for="project_cost">GOB (FE):<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->gob_cost;?>
 (<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->gob_fe_cost;?>
)</label>
                        <label for="project_cost">PA (RPA):<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->pa_through_gob_cost;?>
 (<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->pa_dpa_cost;?>
)</label>
                        <label  for="project_cost">Own Fund (FE):<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->own_fund_cost;?>
 (<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->own_fund_fe_cost;?>
)</label>
                        <label  for="project_cost">Others (FE):<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->other_cost;?>
 (<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->other_fe_cost;?>
)</label>
                    </div>
                </div>
                
                <div class="control-group">
			<label class="control-label" for="exchange_rate">Exchange rate(s) with date</label>
			<div class="controls">
                            <textarea rows="2" style="width:545px" name="exchange_rate" id="exchange_rate"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->exchange_rate;?>
</textarea>
			</div>
		</div>
                
                <div class="control-group">
			<label class="control-label" for="mode_of_financing">Mode of financing</label>
			<div class="span11">
                            <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                <thead>
                                        <tr>
                                               
                                                <th>Mode\Source</th>
                                                <th>GOB<br>(FE)</th>
                                                <th>PA<br>(RPA)</th>
                                                <th> Own Fund<br>(FE)</th>
                                                <th>Others<br>(Specify)</th>
                                                <th>PA sources</th>
                                        </tr>
                                </thead>

                                <tbody>
                                        <tr> 
                                                <td>1</td>
                                                <td>2</td>
                                                <td>3</td>
                                                <td>4</td>
                                                <td>5</td>
                                                <td>6</td>
                                        </tr>
                                        <tr> 
                                                <td>Loan/credit</td>
                                                <td>
                                                    <input class="span8" type="text" id="loan_gob" name="loan_gob" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_gob,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="loan_gob_fe" name="loan_gob_fe" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_gob_fe,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="loan_pa" name="loan_pa" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_pa,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="PA">
                                                    <br><input class="span8" type="text" id="loan_pa_rpa" name="loan_rpa" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_rpa,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="loan_own_fund" name="loan_own_fund" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_own_fund,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="loan_own_fund_fe" name="loan_own_fund_fe" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_own_fund_fe,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="loan_others" name="loan_others" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_others,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="Others">
                                                    <br><input class="span8" type="text" id="loan_specify" name="loan_specify" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_specify,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="loan_pa_source" name="loan_pa_source" value="<?php echo $_smarty_tpl->tpl_vars['modefinancing']->value->loan_pa_source;?>
" placeholder="Source of the Amount">
                                                </td>
                                        </tr>
                                        
                                        <tr> 
                                                <td>Grant</td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_gob" name="grant_gob" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_gob,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="grant_gob_fe" name="grant_gob_fe" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_gob_fe,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_pa" name="grant_pa" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_pa,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="PA">
                                                    <br><input class="span8" type="text" id="grant_pa_rpa" name="grant_rpa" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_rpa,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_own_fund" name="grant_own_fund" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_own_fund,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="grant_own_fund_fe" name="grant_own_fund_fe" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_own_fund_fe,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_others" name="grant_others" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_others,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="Others">
                                                    <br><input class="span8" type="text" id="grant_specify" name="grant_specify" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_specify,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="grant_pa_source" name="grant_pa_source" value="<?php echo $_smarty_tpl->tpl_vars['modefinancing']->value->grant_pa_source;?>
" placeholder="Source of the Amount">
                                                </td>
                                        </tr>
                                        <tr> 
                                                <td>Equity</td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_gob" name="equity_gob" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_gob,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="equity_gob_fe" name="equity_gob_fe" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_gob_fe,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_pa" name="equity_pa" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_pa,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="PA">
                                                    <br><input class="span8" type="text" id="equity_pa_rpa" name="equity_pa_rpa" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_pa_rpa,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_own_fund" name="equity_own_fund" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_own_fund,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="equity_own_fund_fe" name="equity_own_fund_fe" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_own_fund_fe,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_others" name="equity_others" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_others,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="Others">
                                                    <br><input class="span8" type="text" id="equity_others_s" name="equity_others_s" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_others_s,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="equity_pa_sources" name="equity_pa_sources" value="<?php echo $_smarty_tpl->tpl_vars['modefinancing']->value->equity_pa_sources;?>
" placeholder="Source of the Amount">
                                                </td>
                                        </tr>
                                        
                                        <tr> 
                                                <td>Others(Specify)</td>
                                                <td>
                                                    <input class="span8" type="text" id="others_gob" name="others_gob" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_gob,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="others_gob_fe" name="others_gob_fe" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_gob_fe,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="others_pa" name="others_pa" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_pa,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="PA">
                                                    <br><input class="span8" type="text" id="others_pa_rpa" name="others_pa_rpa" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_pa_rpa,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="others_own_fund" name="others_own_fund" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_own_fund,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="others_own_fund_fe" name="others_own_fund_fe" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_own_fund_fe,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="others_others" name="others_others" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_others,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="Others">
                                                    <br><input class="span8" type="text" id="others_others_s" name="others_others_s" value="<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_others_s,2,'.','');?>
" onkeypress="return isNumberKey(event);" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="others_pa_sources" name="others_pa_sources" value="<?php echo $_smarty_tpl->tpl_vars['modefinancing']->value->others_pa_sources;?>
" placeholder="Source of the Amount">
                                                    <input type="hidden" id="mode_of_finance_id" name="mode_of_finance_id" value="<?php echo $_smarty_tpl->tpl_vars['modefinancing']->value->id;?>
" />
                                                </td>
                                                
                                        </tr>
                                        
                                </tbody>
                            </table>
			</div>
		</div>
                
                <div class="control-group">
			<label class="" for="year_wise_allocation">Year wise allocation of GOB Fund and Own Fund</label>
			<div class="span11">
                            <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                <thead>
                                        <tr>
                                                <th>Financial Year</th>
                                                <th>GOB(FE)</th>
                                                <th> Own Fund(FE)</th>
                                        </tr>
                                </thead>

                                <tbody>
                                        
                                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['year_wise_gob_ownfund']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
                                        <tr> 
                                                <td><?php echo $_smarty_tpl->tpl_vars['item']->value->financial_year;?>
</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['item']->value->gob_total;?>
 (<?php echo $_smarty_tpl->tpl_vars['item']->value->gob_fe_total;?>
)</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['item']->value->own_fund_total;?>
 (<?php echo $_smarty_tpl->tpl_vars['item']->value->own_fund_fe_total;?>
)</td>
                                        </tr>
                                        <?php } ?>
                                </tbody>
                            </table>
			</div>
		</div>
                
               <div class="form-actions2">
		 <button class="btn btn-small btn-primary"><i class="icon-save"></i> Save</button>
                 <input type="hidden" value="saveObjectiveCost" name="cmd"/>
	       </div>
            </form>   
            </div> 
            <!-- #basicinfo Ends here -->
            
            <!-- #location starts here-->
            <div id="location" class="tab-pane">
            <form class="form-horizontal" id="validation-form-location"  method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
"> 
                <input type="hidden" name="PI" value="<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
"/>    
                <div class="control-group">
                    <label class="control-label" for="location_divisions[]">Divisions</label>
                    <div class="controls">
                        <select multiple class="chzn-select divisions" id="location_divisions[]"  name="location_divisions[]" onchange="loadDistrict()" data-placeholder="Choose a Division...">
                            <option value=""></option>
                             <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['divisionList']->value),$_smarty_tpl);?>

                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
                
                <div class="control-group">
                    <label class="control-label" for="location_districts[]">Districts</label>
                    <div class="controls">
                        <select multiple class="chzn-select districts" id="location_districts[]"  name="location_districts[]"  data-placeholder="Choose a District...">
                            <option value=""></option>
                           <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['districtList']->value),$_smarty_tpl);?>

                       </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
                <div class="control-group">
                    <label class="control-label" for="location_upzilas[]">Upzila/City Corporations</label>
                    <div class="controls">
                        <select multiple class="chzn-select upzilas" id="location_upzilas[]"  name="location_upzilas[]" data-placeholder="Choose a Upzilla/City Corporations...">
                            <option value=""></option>
                           <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['upazilaList']->value),$_smarty_tpl);?>
 
                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
                
                <div class="form-actions2">
		 <button class="btn btn-primary"><i class="icon-save"></i> Save</button>
                 <input type="hidden" value="saveLocations" name="cmd"/>
	        </div>
            </form>   
            </div>
            <!-- #location ends here-->
            
            <!-- #costsummary starts here-->
            <div id="costsummary" class="tab-pane">
                <div class="control-group">
                   <div class="span12"> 
                        <div id="annex-iv-container">
                            <div>
                                <i class="icon-blank">9.0 Component Wise Estimated Cost Summary: </i>
                                <table id="economic_code_tbl11" class="annex-iv-table table table-striped table-bordered table-hover table_bug_report">
                                    <thead>
                                        <tr>
                                            <th class="span1" rowspan="2">Economic Code</th>
                                            <th class="span1" rowspan="2">Economic Sub-code</th>
                                            <th class="span12" rowspan="2">Component description</th>
                                            <th class="span3" rowspan="2">Unit</th>
                                            <th class="span2" rowspan="2">Qty</th>
                                            <th class="span4" rowspan="2">Total Cost</th>
                                            <th class="span4" rowspan="2">GoB (FE)</th>
                                            <th class="span4" colspan="3">Project Aid</th>
                                            <th class="span4">Own Fund (FE)</th>
                                            <th class="span4">Other (FE)</th>
                                            <th class="span4">% of Total Project Cost</th>
                                        </tr>
                                        <tr>
                                            <th class="span1" colspan="2">RPA</th> <!--Project Aid-->
                                            <th class="span12">DPA</th>  <!--DPA-->
                                            <th class="span12">&nbsp;</th>
                                            <th class="span12">&nbsp;</th>
                                            <th class="span12">&nbsp;</th>
                                        </tr>
                                        <tr>
                                            <th class="span1">&nbsp;</th>  <!--Economic Code-->
                                            <th class="span1">&nbsp;</th>  <!--Economic Sub-code-->
                                            <th class="span12">&nbsp;</th> <!--Component description-->
                                            <th class="span1">&nbsp;</th>  <!--Unit-->
                                            <th class="span1">&nbsp;</th>  <!--Qty-->
                                            <th class="span12">&nbsp;</th> <!--Total Cost-->
                                            <th class="span12">&nbsp;</th> <!--Gob (FE)-->
                                            <th class="span1">Through GoB</th>
                                            <th class="span1">Special Account **</th>
                                            <th class="span12">&nbsp;</th>
                                            <th class="span12">&nbsp;</th>
                                            <th class="span12">&nbsp;</th>
                                            <th class="span12">&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody id="economic_code_content">
                                        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['component_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                            <tr>
                                                <td colspan="13"><?php if ($_smarty_tpl->tpl_vars['key']->value=="Revenue Component") {?>(a)<?php } elseif ($_smarty_tpl->tpl_vars['key']->value=="Capital Component") {?>(b)<?php }?> <?php echo $_smarty_tpl->tpl_vars['key']->value;?>
<td>
                                            </tr>
                                            <?php  $_smarty_tpl->tpl_vars['vItem'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['vItem']->_loop = false;
 $_smarty_tpl->tpl_vars['iKey'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['item']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['vItem']->key => $_smarty_tpl->tpl_vars['vItem']->value) {
$_smarty_tpl->tpl_vars['vItem']->_loop = true;
 $_smarty_tpl->tpl_vars['iKey']->value = $_smarty_tpl->tpl_vars['vItem']->key;
?>
                                            <tr>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->economic_code;?>
</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->economic_subcode;?>
</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->economic_subcode_name;?>
</td>
                                                <td><?php if ($_smarty_tpl->tpl_vars['vItem']->value->unit) {?><?php echo $_smarty_tpl->tpl_vars['vItem']->value->unit;?>
<?php } else { ?>-<?php }?></td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->qty;?>
</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->total_cost;?>
</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->gob;?>
<br>(<?php echo $_smarty_tpl->tpl_vars['vItem']->value->gob_fe;?>
)</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->rpa_through_gob;?>
</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->rpa_special_account;?>
</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->dpa;?>
</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->own_fund;?>
<br>(<?php echo $_smarty_tpl->tpl_vars['vItem']->value->own_fund_fe;?>
)</td>
                                                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->other;?>
<br>(<?php echo $_smarty_tpl->tpl_vars['vItem']->value->other_fe;?>
)</td>
                                                <td><?php $_smarty_tpl->tpl_vars["percentage_of_project"] = new Smarty_variable($_smarty_tpl->tpl_vars['vItem']->value->total_cost/$_smarty_tpl->tpl_vars['basicInfo']->value->total_cost*100, null, 0);?><?php echo number_format($_smarty_tpl->tpl_vars['percentage_of_project']->value,2,'.','');?>
%</td>
                                            </tr>
                                            <?php } ?>
                                            <tr>
                                                <td colspan="3">Sub Total (<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
)<td>
                                                <td colspan="10">Sub Total (<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
)<td>
                                            </tr>
                                        <?php } ?>
                                    </tbody>
                                    <tfoot>
                                        <?php  $_smarty_tpl->tpl_vars['conItem'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['conItem']->_loop = false;
 $_smarty_tpl->tpl_vars['conKey'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['contingency_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['conItem']->key => $_smarty_tpl->tpl_vars['conItem']->value) {
$_smarty_tpl->tpl_vars['conItem']->_loop = true;
 $_smarty_tpl->tpl_vars['conKey']->value = $_smarty_tpl->tpl_vars['conItem']->key;
?>
                                        <tr>
                                            <td colspan="3"><?php echo $_smarty_tpl->tpl_vars['conItem']->value->economic_subcode_name;?>
</td>
                                            <td>&nbsp;</td>
                                            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->qty;?>
</td>
                                            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->total_cost;?>
</td>
                                            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->gob;?>
<br>(<?php echo $_smarty_tpl->tpl_vars['conItem']->value->gob_fe;?>
)</td>
                                            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->rpa_through_gob;?>
</td>
                                            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->rpa_special_account;?>
</td>
                                            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->dpa;?>
</td>
                                            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->own_fund;?>
<br>(<?php echo $_smarty_tpl->tpl_vars['conItem']->value->own_fund_fe;?>
)</td>
                                            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->other;?>
<br>(<?php echo $_smarty_tpl->tpl_vars['conItem']->value->other_fe;?>
)</td>
                                            <td><?php $_smarty_tpl->tpl_vars["con_percentage_of_project"] = new Smarty_variable($_smarty_tpl->tpl_vars['conItem']->value->total_cost/$_smarty_tpl->tpl_vars['basicInfo']->value->total_cost*100, null, 0);?><?php echo number_format($_smarty_tpl->tpl_vars['con_percentage_of_project']->value,2,'.','');?>
%</td>
                                        </tr>
                                        <?php } ?>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <input type="hidden" value="saveAnnexV" name="cmd"/>
                        <input type="hidden" id="PI" name="PI" value="<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
"/>
                        <input type="hidden" id="total_year_in_annexv" name="total_year_in_annexv" value=""/>
                    </div>      
                </div>
                
            </div>
            <!-- #costsummary ends here-->
            
            <!-- #logframe starts here-->
            <div id="logframe" class="tab-pane">
                <div class="control-group">
			<label class="" for="locframe"></label>
			<div class="">
                            <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                <thead>
                                        <tr>
                                                <th></th>
                                                <th>Narrative Summary</th>
                                                <th>Objectively Verifiable Indecators(OVI))</th>
                                                <th>Means of Verifications(MOV)</th>
                                                <th>Important Assumptions(IA)</th>
                                        </tr>
                                </thead>

                                <tbody>
                                        <tr> 
                                                <td>Goal</td>
                                                <td><textarea name="goal_summary"></textarea></td>
                                                <td><textarea name="goal_ovi"></textarea></td>
                                                <td><textarea name="goal_mov"></textarea></td>
                                                <td><textarea name="goal_ia"></textarea></td>
                                        </tr>
                                        <tr> 
                                                <td>Objective/Purpose</td>
                                                <td><textarea name="objective_summary"></textarea></td>
                                                <td><textarea name="objective_ovi"></textarea></td>
                                                <td><textarea name="objective_mov"></textarea></td>
                                                <td><textarea name="objective_ia"></textarea></td>
                                        </tr>
                                        <tr> 
                                                <td>Output</td>
                                                <td><textarea name="output_summary"></textarea></td>
                                                <td><textarea name="output_ovi"></textarea></td>
                                                <td><textarea name="output_mov"></textarea></td>
                                                <td><textarea name="output_ia"></textarea></td>
                                        </tr>
                                        <tr> 
                                                <td>Input</td>
                                                <td><textarea name="input_summary"></textarea></td>
                                                <td><textarea name="input_ovi"></textarea></td>
                                                <td><textarea name="input_mov"></textarea></td>
                                                <td><textarea name="input_ia"></textarea></td>
                                        </tr>
                                </tbody>
                            </table>
			</div>
		</div>
            </div>
            <!-- #logframe ends here-->
            
            <!-- #annexures starts here-->
            <div id="annexures" class="tab-pane">
                 <div class="control-group">
                    <label class="control-label" for="project_management">Project Management</label>
                    <div class="controls"><br><br>
                        <label for="project_setup">Project Management Setup : Annexure-II</label>
                        <label  for="implementation_arrangement">Implementation Arrangement :</label>
                        <label for="procurement_plan">Procurement Plan :Annexure-III(A) , Annexure III(B), Annexure III(C)</label>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="year_wise_financial_physical_target_plan">Year wise financial and physical target plan</label>
                    <div class="controls"><br><br>
                        <label for="annexure_4">Annexure-IV</label>
                    </div> 
                </div>
                <div class="control-group">
                    <label class="" for="completion">After completion, whether the project needs to be transferred to revenue budget.</label>
                    <div class="">
                        <textarea class="ckeditor" name="completion" id="completion"> </textarea>
                    </div> 
                </div>
            </div>
            <!-- #annexures ends here-->
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
/part_a.js"></script>           
                
                <script>
                   
                    //var ministry ="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->ministries;?>
";
                    var ministries = [];
                    var agencies   = []; 
                    var partners   = []; 
                    
                    var divisions = [];
                    var districts   = []; 
                    var upzilas   = []; 
                    
                    ministries.push(<?php echo $_SESSION['ministry_id'];?>
)
                    agencies.push(<?php echo $_SESSION['agency_id'];?>
)
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
                    $(".alert-success").fadeOut(4000);
                    //$(".ministries").chosen().trigger("chosen:updated");
                    
                    
                    
                       
                        $(function() {
			$('#id-disable-check').on('click', function() {
				var inp = $('#form-input-readonly').get(0);
				if(inp.hasAttribute('disabled')) {
					inp.setAttribute('readonly' , 'true');
					inp.removeAttribute('disabled');
					inp.value="This text field is readonly!";
				}
				else {
					inp.setAttribute('disabled' , 'disabled');
					inp.removeAttribute('readonly');
					inp.value="This text field is disabled!";
				}
			});
		
		
			$(".chzn-select").chosen(); 
                        
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			
			
			$('textarea[class*=autosize]').autosize({append: "\n"});
			$('textarea[class*=limited]').each(function() {
				var limit = parseInt($(this).attr('data-maxlength')) || 100;
				$(this).inputlimiter({
					"limit": limit,
					remText: '%n character%s remaining...',
					limitText: 'max allowed : %n.'
				});
			});
			
			
			
			var $tooltip = $("<div class='tooltip right in' style='display:none;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>").appendTo('body');
			$( "#slider-range" ).css('height','200px').slider({
				orientation: "vertical",
				range: true,
				min: 0,
				max: 100,
				values: [ 17, 67 ],
				slide: function( event, ui ) {
					var val = ui.values[$(ui.handle).index()-1]+"";
					
					var pos = $(ui.handle).offset();
					$tooltip.show().children().eq(1).text(val);		
					$tooltip.css({top:pos.top - 10 , left:pos.left + 18});
					
					//$(this).find('a').eq(which).attr('data-original-title' , val).tooltip('show');
				}
			});
			$('#slider-range a').tooltip({placement:'right', trigger:'manual', animation:false}).blur(function(){
				$tooltip.hide();
				//$(this).tooltip('hide');
			});
			//$('#slider-range a').tooltip({placement:'right', animation:false});
			
			
			
			$( "#eq > span" ).css({width:'90%', float:'left', margin:'15px'}).each(function() {
				// read initial values from markup and remove that
				var value = parseInt( $( this ).text(), 10 );
				$( this ).empty().slider({
					value: value,
					range: "min",
					animate: true
					
				});
			});

			
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
			
			
			$('.date-picker').datepicker();
			

		});


		$(function() {

	$('[data-rel=tooltip]').tooltip();

	$(".chzn-select").css('width','150px').chosen({allow_single_deselect:true , no_results_text: "No such state!"})
	.on('change', function(){
		$(this).closest('form').validate().element($(this));
	}); 


	var $validation = false;
	$('#fuelux-wizard').ace_wizard().on('change' , function(e, info){
		if(info.step == 1 && $validation) {
			if(!$('#validation-form').valid()) return false;
		}
	}).on('finished', function(e) {
		bootbox.dialog("Thank you! Your information was successfully saved!", [{
			"label" : "OK",
			"class" : "btn-small btn-primary",
			}]
		);
	});
	
	
	
	
	//documentation : http://docs.jquery.com/Plugins/Validation/validate
	

	$.mask.definitions['~']='[+-]';
	$('#phone').mask('(999) 999-9999');

	jQuery.validator.addMethod("phone", function (value, element) {
		return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
	}, "Enter a valid phone number.");
	
	$('#validation-form').validate({
		errorElement: 'span',
		errorClass: 'help-inline',
		focusInvalid: true  ,
		rules: {
			
                        adp_sector: {
				required: true
			},
                        adp_sub_sector: {
				required: true
			},
                        sector_division: {
				required: true
			},
                        'ministries[]': {
				required: true
			},
                        'agencies[]': {
				required: true
			},
                        'location_divisions[]': {
				required: true
			},
                       
                        
			project_type: {
				required: true
			}
                        
			
		},

		messages: {
			email: {
				required: "Please provide a valid email.",
				email: "Please provide a valid email."
			},
			password: {
				required: "Please specify a password.",
				minlength: "Please specify a secure password."
			},
			subscription: "Please choose at least one option",
			gender: "Please choose gender",
			agree: "Please accept our policy"
		},

		invalidHandler: function (event, validator) { //display error alert on form submit   
			$('.alert-error', $('.login-form')).show();
		},

		highlight: function (e) {
			$(e).closest('.control-group').removeClass('info').addClass('error');
		},

		success: function (e) {
			$(e).closest('.control-group').removeClass('error').addClass('info');
			$(e).remove();
		},

		errorPlacement: function (error, element) {
			if(element.is(':checkbox') || element.is(':radio')) {
				var controls = element.closest('.controls');
				if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
				else error.insertAfter(element.nextAll('.lbl').eq(0));
			} 
			else if(element.is('.chzn-select')) {
				error.insertAfter(element.nextAll('[class*="chzn-container"]').eq(0));
			}
			else error.insertAfter(element);
		},

		submitHandler: function (form) {
                    form.submit();
		},
		invalidHandler: function (form) {
		}
	});
        
        
        $('#validation-form-location').validate({
		errorElement: 'span',
		errorClass: 'help-inline',
		focusInvalid: true  ,
		rules: {
			
                        'location_divisions[]': {
				required: true
			}
			
		},

		invalidHandler: function (event, validator) { //display error alert on form submit   
			$('.alert-error', $('.login-form')).show();
		},

		highlight: function (e) {
			$(e).closest('.control-group').removeClass('info').addClass('error');
		},

		success: function (e) {
			$(e).closest('.control-group').removeClass('error').addClass('info');
			$(e).remove();
		},

		errorPlacement: function (error, element) {
			if(element.is(':checkbox') || element.is(':radio')) {
				var controls = element.closest('.controls');
				if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
				else error.insertAfter(element.nextAll('.lbl').eq(0));
			} 
			else if(element.is('.chzn-select')) {
				error.insertAfter(element.nextAll('[class*="chzn-container"]').eq(0));
			}
			else error.insertAfter(element);
		},

		submitHandler: function (form) {
                    form.submit();
		},
		invalidHandler: function (form) {
		}
	});


	
})

function loadDistrict()
{
    
    var username = $('.divisions').val();
    alert(username);
    $.ajax
    (
        {                                      
            url: 'user_manager.php?cmd=checkuser',                    //the script to call to get data          
            data: "username="+username,                               //you can insert url argumnets here to pass to api.php   //for example "id=5&parent=6"
            dataType: 'json',                                         //data format      
            success: function(responseText)                           //on recieve of reply
            {
                if ( responseText != '')
                {
                    highlightTableColumn('username');
                    alert(DUPLICATE_USERNAME);
                    duplicate_user = true;
                    return false;
                }
                else
                {
                    resetTableColumn('username');
                    duplicate_user = false;
                }
            }
        } 
    );  
}

</script> 

<script>
    
    $(function() {
    var table = $("#economic_code_tbl1");

    $(window).scroll(function() {
        var windowTop = $(window).scrollTop();
        if (windowTop > table.offset().top) {
            $("thead", table).addClass("Fixed").css("top", windowTop-10);
        }
        else {
            $("thead", table).removeClass("Fixed");
        }
    });
});
</script>
<?php }} ?>
