<?php /* Smarty version Smarty-3.1.17, created on 2014-05-11 07:07:34
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\project_manager_partB.html" */ ?>
<?php /*%%SmartyHeaderCode:11587536f0596bef4d4-69194661%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0842ad379a0fc68b9f55710c09407912618538cc' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager_partB.html',
      1 => 1399368160,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11587536f0596bef4d4-69194661',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_536f0596c4a7c3_95736519',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_536f0596c4a7c3_95736519')) {function content_536f0596c4a7c3_95736519($_smarty_tpl) {?><div id="main-content" class="clearfix">
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
							<li class="active">Project Part-B</li>
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
	<h1>Part-B <small><i class="icon-double-angle-right"></i> (Project Details)</small></h1>
    </div><!--/page-header-->

		

<form class="form-horizontal" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">
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
            
                <div class="control-group">
                    <label class="control-label" for="ministries">Ministry/Division</label>
                    <div class="controls">
                        <select multiple class="chzn-select span3" id="ministries"  name="ministries" data-placeholder="Choose a Country...">
                            <option value=""></option>
                            <option value='AL'>Alabama</option><option value='AK'>Alaska</option><option value='AZ'>Arizona</option><option value='AR'>Arkansas</option><option value='CA'>California</option><option value='CO'>Colorado</option><option value='CT'>Connecticut</option><option value='DE'>Delaware</option><option value='DC'>District Of Columbia</option><option value='FL'>Florida</option><option value='GA'>Georgia</option><option value='HI'>Hawaii</option><option value='ID'>Idaho</option><option value='IL'>Illinois</option><option value='IN'>Indiana</option><option value='IA'>Iowa</option><option value='KS'>Kansas</option><option value='KY'>Kentucky</option><option value='LA'>Louisiana</option><option value='ME'>Maine</option><option value='MD'>Maryland</option><option value='MA'>Massachusetts</option><option value='MI'>Michigan</option><option value='MN'>Minnesota</option><option value='MS'>Mississippi</option><option value='MO'>Missouri</option><option value='MT'>Montana</option><option value='NE'>Nebraska</option><option value='NV'>Nevada</option><option value='NH'>New Hampshire</option><option value='NJ'>New Jersey</option><option value='NM'>New Mexico</option><option value='NY'>New York</option><option value='NC'>North Carolina</option><option value='ND'>North Dakota</option><option value='OH'>Ohio</option><option value='OK'>Oklahoma</option><option value='OR'>Oregon</option><option value='PA'>Pennsylvania</option><option value='RI'>Rhode Island</option><option value='SC'>South Carolina</option><option value='SD'>South Dakota</option><option value='TN'>Tennessee</option><option value='TX'>Texas</option><option value='UT'>Utah</option><option value='VT'>Vermont</option><option value='VA'>Virginia</option><option value='WA'>Washington</option><option value='WV'>West Virginia</option><option value='WI'>Wisconsin</option><option value='WY'>Wyoming</option>						
                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
            
                <div class="control-group">
                    <label class="control-label" for="implementing_agencies">Implementing Agency</label>
                    <div class="controls">
                        <select multiple class="chzn-select span3" id="implementing_agencies"  name="implementing_agencies" data-placeholder="Choose a Country...">
                            <option value=""></option>
                            <option value='AL'>Alabama</option><option value='AK'>Alaska</option><option value='AZ'>Arizona</option><option value='AR'>Arkansas</option><option value='CA'>California</option><option value='CO'>Colorado</option><option value='CT'>Connecticut</option><option value='DE'>Delaware</option><option value='DC'>District Of Columbia</option><option value='FL'>Florida</option><option value='GA'>Georgia</option><option value='HI'>Hawaii</option><option value='ID'>Idaho</option><option value='IL'>Illinois</option><option value='IN'>Indiana</option><option value='IA'>Iowa</option><option value='KS'>Kansas</option><option value='KY'>Kentucky</option><option value='LA'>Louisiana</option><option value='ME'>Maine</option><option value='MD'>Maryland</option><option value='MA'>Massachusetts</option><option value='MI'>Michigan</option><option value='MN'>Minnesota</option><option value='MS'>Mississippi</option><option value='MO'>Missouri</option><option value='MT'>Montana</option><option value='NE'>Nebraska</option><option value='NV'>Nevada</option><option value='NH'>New Hampshire</option><option value='NJ'>New Jersey</option><option value='NM'>New Mexico</option><option value='NY'>New York</option><option value='NC'>North Carolina</option><option value='ND'>North Dakota</option><option value='OH'>Ohio</option><option value='OK'>Oklahoma</option><option value='OR'>Oregon</option><option value='PA'>Pennsylvania</option><option value='RI'>Rhode Island</option><option value='SC'>South Carolina</option><option value='SD'>South Dakota</option><option value='TN'>Tennessee</option><option value='TX'>Texas</option><option value='UT'>Utah</option><option value='VT'>Vermont</option><option value='VA'>Virginia</option><option value='WA'>Washington</option><option value='WV'>West Virginia</option><option value='WI'>Wisconsin</option><option value='WY'>Wyoming</option>						
                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
            
                <div class="control-group">
                    <label class="control-label" for="concerned_sector">Concerned Sector/Sub-sector of ADP</label>
                    <div class="controls">
                        <select id="project_type" name="concerned_sector">
                            <option value="">Select Sector</option>
                            <option value='AL'>TPTTF</option><option value='AK'>Agriculture</option><option value='AZ'>Power</option><option value='AR'>SEO</option>
                        </select>    
                    </div>
		</div>
            
                <div class="control-group">
                    <label class="control-label" for="concerned_division">Concerned Division of Planning Commission</label>
                    <div class="controls">
                        <select id="project_type" name="concerned_division">
                            <option value="">Select Sector</option>
                            <option value='AL'>TPTTF</option><option value='AK'>Agriculture</option><option value='AZ'>Power</option><option value='AR'>SEO</option>
                        </select>    
                    </div>
		</div>
                <a href="../standard/template/form-elements.html"></a>
                <div class="control-group">
                    <label class="control-label" for="development_partners">Development Partners</label>
                    <div class="controls">
                        <select multiple class="chzn-select span3" id="development_partners" name="development_partners" data-placeholder="Choose a Country...">
                            <option value=""></option>
                            <option value='AL'>Alabama</option><option value='AK'>Alaska</option><option value='AZ'>Arizona</option><option value='AR'>Arkansas</option><option value='CA'>California</option><option value='CO'>Colorado</option><option value='CT'>Connecticut</option><option value='DE'>Delaware</option><option value='DC'>District Of Columbia</option><option value='FL'>Florida</option><option value='GA'>Georgia</option><option value='HI'>Hawaii</option><option value='ID'>Idaho</option><option value='IL'>Illinois</option><option value='IN'>Indiana</option><option value='IA'>Iowa</option><option value='KS'>Kansas</option><option value='KY'>Kentucky</option><option value='LA'>Louisiana</option><option value='ME'>Maine</option><option value='MD'>Maryland</option><option value='MA'>Massachusetts</option><option value='MI'>Michigan</option><option value='MN'>Minnesota</option><option value='MS'>Mississippi</option><option value='MO'>Missouri</option><option value='MT'>Montana</option><option value='NE'>Nebraska</option><option value='NV'>Nevada</option><option value='NH'>New Hampshire</option><option value='NJ'>New Jersey</option><option value='NM'>New Mexico</option><option value='NY'>New York</option><option value='NC'>North Carolina</option><option value='ND'>North Dakota</option><option value='OH'>Ohio</option><option value='OK'>Oklahoma</option><option value='OR'>Oregon</option><option value='PA'>Pennsylvania</option><option value='RI'>Rhode Island</option><option value='SC'>South Carolina</option><option value='SD'>South Dakota</option><option value='TN'>Tennessee</option><option value='TX'>Texas</option><option value='UT'>Utah</option><option value='VT'>Vermont</option><option value='VA'>Virginia</option><option value='WA'>Washington</option><option value='WV'>West Virginia</option><option value='WI'>Wisconsin</option><option value='WY'>Wyoming</option>						
                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
                </div>
                
                 <div class="control-group">
                    <label class="control-label" for="objectives">Objectives</label>
                    <div class="controls">
                        <textarea rows="5" name="objectives" id="objectives"></textarea>
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
                            <textarea rows="5" name="exchange_rate" id="exchange_rate"></textarea>
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
                                                    <input class="span8" type="text" id="loan_gob" name="loan_gob" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="loan_gob_fe" name="loan_gob_fe" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="loan_pa" name="loan_pa" placeholder="PA">
                                                    <br><input class="span8" type="text" id="loan_pa_rpa" name="loan_pa_rpa" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="loan_own_fund" name="loan_own_fund" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="loan_own_fund_fe" name="loan_own_fund_fe" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="loan_others" name="loan_others" placeholder="Others">
                                                    <br><input class="span8" type="text" id="loan_others_s" name="loan_others_s" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="loan_pa_sources" name="loan_pa_sources" placeholder="Source of the Amount">
                                                </td>
                                        </tr>
                                        
                                        <tr> 
                                                <td>Grant</td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_gob" name="grant_gob" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="grant_gob_fe" name="grant_gob_fe" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_pa" name="grant_pa" placeholder="PA">
                                                    <br><input class="span8" type="text" id="grant_pa_rpa" name="grant_pa_rpa" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_own_fund" name="grant_own_fund" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="grant_own_fund_fe" name="grant_own_fund_fe" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="grant_others" name="grant_others" placeholder="Others">
                                                    <br><input class="span8" type="text" id="grant_others_s" name="grant_others_s" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="grant_pa_sources" name="grant_pa_sources" placeholder="Source of the Amount">
                                                </td>
                                        </tr>
                                        <tr> 
                                                <td>Equity</td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_gob" name="equity_gob" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="equity_gob_fe" name="equity_gob_fe" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_pa" name="equity_pa" placeholder="PA">
                                                    <br><input class="span8" type="text" id="equity_pa_rpa" name="equity_pa_rpa" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_own_fund" name="equity_own_fund" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="equity_own_fund_fe" name="equity_own_fund_fe" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="equity_others" name="equity_others" placeholder="Others">
                                                    <br><input class="span8" type="text" id="equity_others_s" name="equity_others_s" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="equity_pa_sources" name="equity_pa_sources" placeholder="Source of the Amount">
                                                </td>
                                        </tr>
                                        
                                        <tr> 
                                                <td>Others(Specify)</td>
                                                <td>
                                                    <input class="span8" type="text" id="others_gob" name="others_gob" placeholder="GOB">
                                                    <br><input class="span8" type="text" id="others_gob_fe" name="others_gob_fe" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="others_pa" name="others_pa" placeholder="PA">
                                                    <br><input class="span8" type="text" id="others_pa_rpa" name="others_pa_rpa" placeholder="RPA">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="others_own_fund" name="others_own_fund" placeholder="Own Fund">
                                                    <br><input class="span8" type="text" id="others_own_fund_fe" name="others_own_fund_fe" placeholder="FE">
                                                </td>
                                                <td>
                                                    <input class="span8" type="text" id="others_others" name="others_others" placeholder="Others">
                                                    <br><input class="span8" type="text" id="others_others_s" name="others_others_s" placeholder="FE">
                                                </td>
                                               
                                                <td>
                                                    <input class="span15" type="text" id="others_pa_sources" name="others_pa_sources" placeholder="Source of the Amount">
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
            </div> 
            <!-- #basicinfo Ends here -->
            
            <!-- #location starts here-->
            <div id="location" class="tab-pane">
                <div class="control-group">
                    <label class="control-label" for="divisions">Divisions Of Bangladesh</label>
                    <div class="controls">
                        <select multiple class="chzn-select" id="divisions"  name="divisions" data-placeholder="Choose a District...">
                            <option value=""></option>
                            <option value='AL'>Alabama</option><option value='AK'>Alaska</option><option value='AZ'>Arizona</option><option value='AR'>Arkansas</option><option value='CA'>California</option><option value='CO'>Colorado</option><option value='CT'>Connecticut</option><option value='DE'>Delaware</option><option value='DC'>District Of Columbia</option><option value='FL'>Florida</option><option value='GA'>Georgia</option><option value='HI'>Hawaii</option><option value='ID'>Idaho</option><option value='IL'>Illinois</option><option value='IN'>Indiana</option><option value='IA'>Iowa</option><option value='KS'>Kansas</option><option value='KY'>Kentucky</option><option value='LA'>Louisiana</option><option value='ME'>Maine</option><option value='MD'>Maryland</option><option value='MA'>Massachusetts</option><option value='MI'>Michigan</option><option value='MN'>Minnesota</option><option value='MS'>Mississippi</option><option value='MO'>Missouri</option><option value='MT'>Montana</option><option value='NE'>Nebraska</option><option value='NV'>Nevada</option><option value='NH'>New Hampshire</option><option value='NJ'>New Jersey</option><option value='NM'>New Mexico</option><option value='NY'>New York</option><option value='NC'>North Carolina</option><option value='ND'>North Dakota</option><option value='OH'>Ohio</option><option value='OK'>Oklahoma</option><option value='OR'>Oregon</option><option value='PA'>Pennsylvania</option><option value='RI'>Rhode Island</option><option value='SC'>South Carolina</option><option value='SD'>South Dakota</option><option value='TN'>Tennessee</option><option value='TX'>Texas</option><option value='UT'>Utah</option><option value='VT'>Vermont</option><option value='VA'>Virginia</option><option value='WA'>Washington</option><option value='WV'>West Virginia</option><option value='WI'>Wisconsin</option><option value='WY'>Wyoming</option>						
                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
                
                <div class="control-group">
                    <label class="control-label" for="districts">Districts</label>
                    <div class="controls">
                        <select multiple class="chzn-select" id="districts"  name="districts" data-placeholder="Choose a District...">
                            <option value=""></option>
                            <option value='AL'>Alabama</option><option value='AK'>Alaska</option><option value='AZ'>Arizona</option><option value='AR'>Arkansas</option><option value='CA'>California</option><option value='CO'>Colorado</option><option value='CT'>Connecticut</option><option value='DE'>Delaware</option><option value='DC'>District Of Columbia</option><option value='FL'>Florida</option><option value='GA'>Georgia</option><option value='HI'>Hawaii</option><option value='ID'>Idaho</option><option value='IL'>Illinois</option><option value='IN'>Indiana</option><option value='IA'>Iowa</option><option value='KS'>Kansas</option><option value='KY'>Kentucky</option><option value='LA'>Louisiana</option><option value='ME'>Maine</option><option value='MD'>Maryland</option><option value='MA'>Massachusetts</option><option value='MI'>Michigan</option><option value='MN'>Minnesota</option><option value='MS'>Mississippi</option><option value='MO'>Missouri</option><option value='MT'>Montana</option><option value='NE'>Nebraska</option><option value='NV'>Nevada</option><option value='NH'>New Hampshire</option><option value='NJ'>New Jersey</option><option value='NM'>New Mexico</option><option value='NY'>New York</option><option value='NC'>North Carolina</option><option value='ND'>North Dakota</option><option value='OH'>Ohio</option><option value='OK'>Oklahoma</option><option value='OR'>Oregon</option><option value='PA'>Pennsylvania</option><option value='RI'>Rhode Island</option><option value='SC'>South Carolina</option><option value='SD'>South Dakota</option><option value='TN'>Tennessee</option><option value='TX'>Texas</option><option value='UT'>Utah</option><option value='VT'>Vermont</option><option value='VA'>Virginia</option><option value='WA'>Washington</option><option value='WV'>West Virginia</option><option value='WI'>Wisconsin</option><option value='WY'>Wyoming</option>						
                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
                <div class="control-group">
                    <label class="control-label" for="upzila">Upzila/City Corporations</label>
                    <div class="controls">
                        <select multiple class="chzn-select" id="upzila"  name="upzila" data-placeholder="Choose a District...">
                            <option value=""></option>
                            <option value='AL'>Alabama</option><option value='AK'>Alaska</option><option value='AZ'>Arizona</option><option value='AR'>Arkansas</option><option value='CA'>California</option><option value='CO'>Colorado</option><option value='CT'>Connecticut</option><option value='DE'>Delaware</option><option value='DC'>District Of Columbia</option><option value='FL'>Florida</option><option value='GA'>Georgia</option><option value='HI'>Hawaii</option><option value='ID'>Idaho</option><option value='IL'>Illinois</option><option value='IN'>Indiana</option><option value='IA'>Iowa</option><option value='KS'>Kansas</option><option value='KY'>Kentucky</option><option value='LA'>Louisiana</option><option value='ME'>Maine</option><option value='MD'>Maryland</option><option value='MA'>Massachusetts</option><option value='MI'>Michigan</option><option value='MN'>Minnesota</option><option value='MS'>Mississippi</option><option value='MO'>Missouri</option><option value='MT'>Montana</option><option value='NE'>Nebraska</option><option value='NV'>Nevada</option><option value='NH'>New Hampshire</option><option value='NJ'>New Jersey</option><option value='NM'>New Mexico</option><option value='NY'>New York</option><option value='NC'>North Carolina</option><option value='ND'>North Dakota</option><option value='OH'>Ohio</option><option value='OK'>Oklahoma</option><option value='OR'>Oregon</option><option value='PA'>Pennsylvania</option><option value='RI'>Rhode Island</option><option value='SC'>South Carolina</option><option value='SD'>South Dakota</option><option value='TN'>Tennessee</option><option value='TX'>Texas</option><option value='UT'>Utah</option><option value='VT'>Vermont</option><option value='VA'>Virginia</option><option value='WA'>Washington</option><option value='WV'>West Virginia</option><option value='WI'>Wisconsin</option><option value='WY'>Wyoming</option>						
                        </select>  
                        <span class="help-button ace-popover" data-trigger="hover" data-placement="left" data-content="More details." title="Popover on hover">?</span>
                    </div>
		</div>
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

		
		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.knob.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.autosize-min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.maskedinput.min.js"></script>
                <script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.dataTables.min.js"></script>

               <!-- ace scripts -->
		<script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
		<script src="/app_contents/standard/template/assets/js/ace.min.js"></script>
<?php }} ?>
