<?php /* Smarty version Smarty-3.1.17, created on 2014-05-22 08:42:54
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\project_manager_partA.html" */ ?>
<?php /*%%SmartyHeaderCode:754536f057a0562b6-98861125%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8a8b9ea253aac412170507c719cc76c5eceb0c21' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager_partA.html',
      1 => 1400740954,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '754536f057a0562b6-98861125',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_536f057a257187_18389051',
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
    'divisionList' => 0,
    'districtList' => 0,
    'upazilaList' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_536f057a257187_18389051')) {function content_536f057a257187_18389051($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'E:/xampp/htdocs/pps2/ext/smarty3/libs/plugins\\function.html_options.php';
?><div id="main-content" class="clearfix">
    	<head>
		
		
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/jquery-ui-1.10.2.custom.min.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/chosen.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/datepicker.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/bootstrap-timepicker.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/daterangepicker.css" />
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
                            <option value=""></option>
                            <option value='1'>Alabama</option><option value='2'>Alaska</option><option value='3'>Arizona</option><option value='AR'>Arkansas</option><option value='CA'>California</option><option value='CO'>Colorado</option><option value='CT'>Connecticut</option><option value='DE'>Delaware</option><option value='DC'>District Of Columbia</option><option value='FL'>Florida</option><option value='GA'>Georgia</option><option value='HI'>Hawaii</option><option value='ID'>Idaho</option><option value='IL'>Illinois</option><option value='IN'>Indiana</option><option value='IA'>Iowa</option><option value='KS'>Kansas</option><option value='KY'>Kentucky</option><option value='LA'>Louisiana</option><option value='ME'>Maine</option><option value='MD'>Maryland</option><option value='MA'>Massachusetts</option><option value='MI'>Michigan</option><option value='MN'>Minnesota</option><option value='MS'>Mississippi</option><option value='MO'>Missouri</option><option value='MT'>Montana</option><option value='NE'>Nebraska</option><option value='NV'>Nevada</option><option value='NH'>New Hampshire</option><option value='NJ'>New Jersey</option><option value='NM'>New Mexico</option><option value='NY'>New York</option><option value='NC'>North Carolina</option><option value='ND'>North Dakota</option><option value='OH'>Ohio</option><option value='OK'>Oklahoma</option><option value='OR'>Oregon</option><option value='PA'>Pennsylvania</option><option value='RI'>Rhode Island</option><option value='SC'>South Carolina</option><option value='SD'>South Dakota</option><option value='TN'>Tennessee</option><option value='TX'>Texas</option><option value='UT'>Utah</option><option value='VT'>Vermont</option><option value='VA'>Virginia</option><option value='WA'>Washington</option><option value='WV'>West Virginia</option><option value='WI'>Wisconsin</option><option value='WY'>Wyoming</option>						
                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
                </div>
                
                 <div class="control-group">
                    <label class="control-label" for="objectives">Objectives</label>
                    <div class="controls">
                        <textarea rows="5" style="width:545px" name="objectives" id="objectives"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->objectives;?>
</textarea>
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
                </div>
                
                 <div class="control-group">
                    <label class="control-label" for="project_cost">Estimated Cost of the project(in Lakh Taka)</label>
                    <div class="controls"><br><br>
                        <label for="project_cost">Total :</label>
                        <label  for="project_cost">GOB :</label>
                        <label for="project_cost">PA :</label>
                        <label  for="project_cost">Own Fund :</label>
                        <label  for="project_cost">Others :</label>
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
                                                    <input class="span8" type="text" id="loan_gob" name="loan_gob" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->loan_gob;?>
" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="loan_gob_fe" name="loan_gob_fe" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->loan_gob_fe;?>
" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="loan_pa" name="loan_pa" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->loan_pa;?>
" placeholder="PA">
                                                    <br><input class="span8" type="text" id="loan_pa_rpa" name="loan_rpa" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->loan_rpa;?>
" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="loan_own_fund" name="loan_own_fund" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->loan_own_fund;?>
" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="loan_own_fund_fe" name="loan_own_fund_fe" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->loan_own_fund_fe;?>
" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="loan_others" name="loan_others" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->loan_others;?>
" placeholder="Others">
                                                    <br><input class="span8" type="text" id="loan_specify" name="loan_specify" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->loan_specify;?>
" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="loan_pa_source" name="loan_pa_source" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->loan_pa_source;?>
" placeholder="Source of the Amount">
                                                </td>
                                        </tr>
                                        
                                        <tr> 
                                                <td>Grant</td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_gob" name="grant_gob" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->grant_gob;?>
" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="grant_gob_fe" name="grant_gob_fe" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->grant_gob_fe;?>
" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_pa" name="grant_pa" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->grant_pa;?>
" placeholder="PA">
                                                    <br><input class="span8" type="text" id="grant_pa_rpa" name="grant_rpa" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->grant_rpa;?>
" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_own_fund" name="grant_own_fund" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->grant_own_fund;?>
" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="grant_own_fund_fe" name="grant_own_fund_fe" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->grant_own_fund_fe;?>
" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_others" name="grant_others" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->grant_others;?>
" placeholder="Others">
                                                    <br><input class="span8" type="text" id="grant_specify" name="grant_specify" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->grant_specify;?>
" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="grant_pa_source" name="grant_pa_source" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->grant_pa_source;?>
" placeholder="Source of the Amount">
                                                </td>
                                        </tr>
                                        <tr> 
                                                <td>Equity</td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_gob" name="equity_gob" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->equity_gob;?>
" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="equity_gob_fe" name="equity_gob_fe" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->equity_gob_fe;?>
" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_pa" name="equity_pa" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->equity_pa;?>
" placeholder="PA">
                                                    <br><input class="span8" type="text" id="equity_pa_rpa" name="equity_pa_rpa" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->equity_pa_rpa;?>
" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_own_fund" name="equity_own_fund" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->equity_own_fund;?>
" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="equity_own_fund_fe" name="equity_own_fund_fe" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->equity_own_fund_fe;?>
" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_others" name="equity_others" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->equity_others;?>
" placeholder="Others">
                                                    <br><input class="span8" type="text" id="equity_others_s" name="equity_others_s" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->equity_others_s;?>
" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="equity_pa_sources" name="equity_pa_sources" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->equity_pa_sources;?>
" placeholder="Source of the Amount">
                                                </td>
                                        </tr>
                                        
                                        <tr> 
                                                <td>Others(Specify)</td>
                                                <td>
                                                    <input class="span8" type="text" id="others_gob" name="others_gob" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->others_gob;?>
" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="others_gob_fe" name="others_gob_fe" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->others_gob_fe;?>
" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="others_pa" name="others_pa" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->others_pa;?>
" placeholder="PA">
                                                    <br><input class="span8" type="text" id="others_pa_rpa" name="others_pa_rpa" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->others_pa_rpa;?>
" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="others_own_fund" name="others_own_fund" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->others_own_fund;?>
" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="others_own_fund_fe" name="others_own_fund_fe" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->others_own_fund_fe;?>
" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="others_others" name="others_others" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->others_others;?>
" placeholder="Others">
                                                    <br><input class="span8" type="text" id="others_others_s" name="others_others_s" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->others_others_s;?>
" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="others_pa_sources" name="others_pa_sources" value="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->modefinancing->others_pa_sources;?>
" placeholder="Source of the Amount">
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
                                                <th> Own Fund(RE)</th>
                                        </tr>
                                </thead>

                                <tbody>
                                        <tr> 
                                                <td>1</td>
                                                <td>2</td>
                                                <td>3</td>
                                        </tr>
                                        <tr> 
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                        </tr>
                                        <tr> 
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                        </tr>
                                        <tr> 
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                        </tr>
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
                        <select multiple class="chzn-select divisions" id="location_divisions[]"  name="location_divisions[]" data-placeholder="Choose a Division...">
                            <option value=""></option>
                             <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['divisionList']->value),$_smarty_tpl);?>

                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
                
                <div class="control-group">
                    <label class="control-label" for="location_districts[]">Districts</label>
                    <div class="controls">
                        <select multiple class="chzn-select districts" id="location_districts[]"  name="location_districts[]" data-placeholder="Choose a District...">
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
                
                <p>
		 <button class="btn btn-primary"><i class="icon-save"></i> Save</button>
                 <input type="hidden" value="saveLocations" name="cmd"/>
	       </p>
            </form>   
            </div>
            <!-- #location ends here-->
            
            <!-- #costsummary starts here-->
            <div id="costsummary" class="tab-pane">
                <div class="control-group">
			<label class="" for="year_wise_allocation">Component Wise Estimated Cost Summary:</label>
			<div class="">
                            <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                <thead>
                                        <tr>
                                                <th>Economic Code</th>
                                                <th>Economic Sub-Code</th>
                                                <th>Economic Sub-Code Wise Component Description</th>
                                                <th>Unit</th>
                                                <th>Quantity</th>
                                                <th>Total Cost *</th>
                                                <th>GOB (FE)</th>
                                                <th colspan="3">
                                                   
                                                    <table>
                                                        <tr>
                                                            <td colspan="3"> Project Aid</td>
                                                        </tr>   
                                                        <tr>
                                                            <td> RPA</td>
                                                            <td colspan="2"> DPA</td>
                                                        </tr>  
                                                    </table>    
                                                
                                                </th>
                                                <th>Own Fund (FE)</th>
                                                <th>Others</th>
                                                <th>% of Total Project Cost</th>
                                                
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
                                                <td>7</td>
                                                <td>8</td>
                                                <td>9</td>
                                                <td>10</td>
                                                <td>11</td>
                                                <td>12</td>
                                                <td>13</td>
                                        </tr>
                                        
                                </tbody>
                            </table>
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
                        <textarea name="completion" id="completion"> </textarea>
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
                
                <script>
                   
                    //var ministry ="<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->ministries;?>
";
                    var ministries = [];
                    var agencies   = []; 
                    var partners   = []; 
                    
                    var divisions = [];
                    var districts   = []; 
                    var upzilas   = []; 
                    
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
                    
                    
                       
                        //alert(ministry)
                    
                </script>    
<?php }} ?>
