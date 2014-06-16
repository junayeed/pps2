<?php /* Smarty version Smarty-3.1.17, created on 2014-06-16 06:44:42
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\project_manager_partB.html" */ ?>
<?php /*%%SmartyHeaderCode:4070539e763a159da0-97063784%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0842ad379a0fc68b9f55710c09407912618538cc' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager_partB.html',
      1 => 1402566778,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4070539e763a159da0-97063784',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_539e763a19cae4_41226495',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_539e763a19cae4_41226495')) {function content_539e763a19cae4_41226495($_smarty_tpl) {?><div id="main-content" class="clearfix">
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
            <li class="active"><a data-toggle="tab" href="#background"><i class="green icon-home bigger-110"></i> Background Information</a></li>
            <li><a data-toggle="tab" href="#study"><i class="green icon-home bigger-110"></i> Study & Financial Analysis</a></li>
            <li><a data-toggle="tab" href="#similar_project"><i class="green icon-home bigger-110"></i> Similar Project Study</a></li>
            <li><a data-toggle="tab" href="#efect"><i class="green icon-home bigger-110"></i> Efect/Impact</a></li>
            <li><a data-toggle="tab" href="#annexures"><i class="green icon-home bigger-110"></i> Annexures</a></li>
            
        </ul>
        <div class="tab-content">
            <!-- #basicinfo strats here-->  
            <div id="background" class="tab-pane in active">
            
                <div class="control-group">
                    <label class="" for="background_with_problem">14.1 Background with problem statement</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_with_problem" id="background_with_problem"> </textarea>
                    </div> 
                </div>
                
                 <div class="control-group">
                    <label class="" for="background_linkages">14.2 Linkages(to other projects, institutions )</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_linkages" id="background_linkages"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_objectaives">14.3 Objectives</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_objectaives" id="background_objectaives"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_outcomes">14.4 Outcomes</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_outcomes" id="background_outcomes"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_outputs">14.5 Outputs</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_outputs" id="background_outputs"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_activities">14.6 Activities</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_activities" id="background_activities"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_sex">14.7 Sex disaggregated data for target population and constraints faced by woman</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_sex" id="background_sex"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_proverty">14.8 Poverty Situation</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_proverty" id="background_proverty"> </textarea>
                    </div> 
                </div>
            </div> 
            <!-- #background Ends here -->
            
            <!-- #study starts here-->
            <div id="study" class="tab-pane">
                <div class="control-group">
                    <label class="" for="background_proverty">15.0 Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings & recommendations. If not mention the causes.</label>
                    <div class="">
                        <textarea class="ckeditor" name="study" id="study"> </textarea>
                    </div> 
                </div>
                
                 <div class="control-group">
                    <label class="control-label" for="net_present_value">16.0 Net Present Value(NPV)</label>
                        <div class="controls">
                            <label class="control-label">NPV</label>
                        </div>
                </div>
            </div>
            <!-- #study ends here-->
            
            <!-- #similar_project starts here-->
            <div id="similar_project" class="tab-pane">
                
                <div class="control-group">
                    <label class="" for="background_proverty">17.1 Indicate which issues lead to make project successful</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_proverty" id="background_proverty"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_proverty">17.2 Indicate which issues lead to make project successful</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_proverty" id="background_proverty"> </textarea>
                    </div> 
                </div>
                
            </div>
            <!-- #similar_project ends here-->
            
            <!-- #efect starts here-->
            
            <div id="efect" class="tab-pane">
            <form class="form-horizontal" id="validation-form"  method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">     
                <div class="control-group">
                    <label class="" for="effect_other_project">23.1 Other project/existing installations</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_other_project" id="effect_other_project"> </textarea>
                    </div> 
                </div>
                
                 <div class="control-group">
                    <label class="" for="effect_environmental">23.2 Environmental sustainability like land,water,air,bio-diversity,ecological service (If this project is 'Red Category' attache the EIA documents)</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_environmental" id="effect_environmental"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_climate_change">23.3 Climate change adaptation and mitigation</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_climate_change" id="effect_climate_change"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_gender">23.4 Gender, women, children, person with disability/excluded group's needs</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_gender" id="effect_gender"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_employment">23.5 Employment</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_employment" id="effect_employment"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_poverty">23.6 Poverty situation</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_poverty" id="effect_poverty"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_organizational_setup">23.7 Organizational arrangement/setup</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_organizational_setup" id="effect_organizational_setup"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_institutional_productivity">23.8 Institutional productivity</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_institutional_productivity" id="effect_institutional_productivity"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_rigonal_disparity">23.9 Regional Disparity</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_rigonal_disparity" id="effect_rigonal_disparity"> </textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_environment_clearance_causes">23.10 Whether environment clearance under the ECA 1995(revised 2010) has been obtained? if yes, attach the certificate, if not mention the causes(s)</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_environment_clearance_causes" id="effect_environment_clearance_causes"> </textarea>
                        
                    </div> 
                    
                    <label class="control-label" for="net_present_value">Environment clearance ECA</label>
                    <div class="controls">
			    <input type="file" id="id-input-file-1" />
		    </div>
                    
                </div>
            </form>    
            </div>
            <!-- #efect ends here-->
            
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
