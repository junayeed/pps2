<?php /* Smarty version Smarty-3.1.17, created on 2014-06-23 09:23:11
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\project_manager_partB.html" */ ?>
<?php /*%%SmartyHeaderCode:4070539e763a159da0-97063784%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0842ad379a0fc68b9f55710c09407912618538cc' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\project_manager_partB.html',
      1 => 1403507607,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4070539e763a159da0-97063784',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_539e763a19cae4_41226495',
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'PI' => 0,
    'partB' => 0,
  ),
  'has_nocache_code' => false,
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
								
							</form>
						</div><!--#nav-search-->
					</div><!--#breadcrumbs-->



<div id="page-content" class="clearfix">
					
    <div class="page-header position-relative">
	<h1>Part-B <small><i class="icon-double-angle-right"></i> (Project Details)</small></h1>
        <div id="nav-search">
          <a class="btn btn-small btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
?cmd=ProjectHome&PI=<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">Project Main Page</a>
          <button class="btn btn-small btn-primary">Forward To Ministry</button>
        </div>  
    </div><!--/page-header-->

		

<form class="form-horizontal" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">
    <input type="hidden" name="PI" value="<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
"/>
    <input type="hidden" name="part_b_id" value="<?php echo $_smarty_tpl->tpl_vars['partB']->value->id;?>
"/>
    <div class="tabbable">
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a data-toggle="tab" href="#background"><i class="green icon-home bigger-110"></i> Background Information</a></li>
            <li><a data-toggle="tab" href="#study"><i class="green icon-home bigger-110"></i> Study & Financial Analysis</a></li>
            <li><a data-toggle="tab" href="#similar_project"><i class="green icon-home bigger-110"></i> Similar Project Study</a></li>
            <li><a data-toggle="tab" href="#efect"><i class="green icon-home bigger-110"></i> Efect/Impact</a></li>
            <li><a data-toggle="tab" href="#other_details"><i class="green icon-home bigger-110"></i> Others Details</a></li>
            <li><a data-toggle="tab" href="#other_important"><i class="green icon-home bigger-110"></i> Others Importants</a></li>
            
        </ul>
        <div class="tab-content">
            <!-- #basicinfo strats here-->  
            <div id="background" class="tab-pane in active">
            
                <div class="control-group">
                    <label class="" for="background_with_problem">14.1 Background with problem statement</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_with_problem" id="background_with_problem"><?php echo $_smarty_tpl->tpl_vars['partB']->value->background_with_problem;?>
</textarea>
                    </div> 
                </div>
                
                 <div class="control-group">
                    <label class="" for="background_linkages">14.2 Linkages(to other projects, institutions )</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_linkages" id="background_linkages"><?php echo $_smarty_tpl->tpl_vars['partB']->value->background_linkages;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_objectaives">14.3 Objectives</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_objectaives" id="background_objectaives"><?php echo $_smarty_tpl->tpl_vars['partB']->value->background_objectaives;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_outcomes">14.4 Outcomes</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_outcomes" id="background_outcomes"><?php echo $_smarty_tpl->tpl_vars['partB']->value->background_outcomes;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_outputs">14.5 Outputs</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_outputs" id="background_outputs"><?php echo $_smarty_tpl->tpl_vars['partB']->value->background_outputs;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_activities">14.6 Activities</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_activities" id="background_activities"><?php echo $_smarty_tpl->tpl_vars['partB']->value->background_activities;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_sex">14.7 Sex disaggregated data for target population and constraints faced by woman</label>
                    <div class="">
                        <textarea class="ckeditor" name="background_sex" id="background_sex"><?php echo $_smarty_tpl->tpl_vars['partB']->value->background_sex;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="background_proverty">14.8 Poverty Situation</label>
                    <div class="">
                         <textarea class="ckeditor" name="background_proverty" id="background_proverty"><?php echo $_smarty_tpl->tpl_vars['partB']->value->background_proverty;?>
</textarea>
                    </div> 
                </div>
                
                <div class="form-actions2">
		 <button class="btn btn-small btn-primary"><i class="icon-save"></i> Save</button>
                 <input type="hidden" value="savePartB" name="cmd"/>
	       </div>
            </div> 
            <!-- #background Ends here -->
            
            <!-- #study starts here-->
            <div id="study" class="tab-pane">
                <div class="control-group">
                    <label class="" for="study">15.0 Whether any pre-appraisal/feasibility study/pre-investment study was done before formulation of this project? if so, attach summary of findings & recommendations. If not mention the causes.</label>
                    <div class="">
                        <textarea class="ckeditor" name="study" id="study"><?php echo $_smarty_tpl->tpl_vars['partB']->value->study;?>
</textarea>
                    </div> 
                </div>
                
                 <div class="control-group">
                    <label class="control-label" for="net_present_value">16.0 Net Present Value(NPV)</label>
                        <div class="controls">
                            <label class="control-label">NPV</label>
                        </div>
                </div>
                <div class="form-actions2">
		 <button class="btn btn-small btn-primary"><i class="icon-save"></i> Save</button>
                 <input type="hidden" value="savePartB" name="cmd"/>
	       </div>
            </div>
            <!-- #study ends here-->
            
            <!-- #similar_project starts here-->
            <div id="similar_project" class="tab-pane">
                
                <div class="control-group">
                    <label class="" for="lessons_learnt_successful_project">17.1 Indicate which issues lead to make project successful</label>
                    <div class="">
                        <textarea class="ckeditor" name="lessons_learnt_successful_project" id="lessons_learnt_successful_project"><?php echo $_smarty_tpl->tpl_vars['partB']->value->lessons_learnt_successful_project;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="lessons_learnt_not_work_well">17.2 Indicate which issues lead to make project successful</label>
                    <div class="">
                        <textarea class="ckeditor" name="lessons_learnt_not_work_well" id="lessons_learnt_not_work_well"><?php echo $_smarty_tpl->tpl_vars['partB']->value->lessons_learnt_not_work_well;?>
</textarea>
                    </div> 
                </div>
                
                <div class="form-actions2">
		 <button class="btn btn-small btn-primary"><i class="icon-save"></i> Save</button>
                 <input type="hidden" value="savePartB" name="cmd"/>
	       </div>
                
            </div>
            <!-- #similar_project ends here-->
            
            <!-- #efect starts here-->
            
            <div id="efect" class="tab-pane">
           
                <div class="control-group">
                    <label class="" for="effect_other_project">23.1 Other project/existing installations</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_other_project" id="effect_other_project"><?php echo $_smarty_tpl->tpl_vars['partB']->value->effect_other_project;?>
</textarea>
                    </div> 
                </div>
                
                 <div class="control-group">
                    <label class="" for="effect_environmental">23.2 Environmental sustainability like land,water,air,bio-diversity,ecological service (If this project is 'Red Category' attache the EIA documents)</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_environmental" id="effect_environmental"><?php echo $_smarty_tpl->tpl_vars['partB']->value->effect_environmental;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_climate_change">23.3 Climate change adaptation and mitigation</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_climate_change" id="effect_climate_change"><?php echo $_smarty_tpl->tpl_vars['partB']->value->effect_climate_change;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_gender">23.4 Gender, women, children, person with disability/excluded group's needs</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_gender" id="effect_gender"><?php echo $_smarty_tpl->tpl_vars['partB']->value->effect_gender;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_employment">23.5 Employment</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_employment" id="effect_employment"><?php echo $_smarty_tpl->tpl_vars['partB']->value->effect_employment;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_poverty">23.6 Poverty situation</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_poverty" id="effect_poverty"><?php echo $_smarty_tpl->tpl_vars['partB']->value->effect_poverty;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_organizational_setup">23.7 Organizational arrangement/setup</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_organizational_setup" id="effect_organizational_setup"><?php echo $_smarty_tpl->tpl_vars['partB']->value->effect_organizational_setup;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_institutional_productivity">23.8 Institutional productivity</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_institutional_productivity" id="effect_institutional_productivity"><?php echo $_smarty_tpl->tpl_vars['partB']->value->effect_institutional_productivity;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_regional_disparity">23.9 Regional Disparity</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_regional_disparity" id="effect_regional_disparity"><?php echo $_smarty_tpl->tpl_vars['partB']->value->effect_regional_disparity;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="effect_environment_clearance_causes">23.10 Whether environment clearance under the ECA 1995(revised 2010) has been obtained? if yes, attach the certificate, if not mention the causes(s)</label>
                    <div class="">
                        <textarea class="ckeditor" name="effect_environment_clearance_causes" id="effect_environment_clearance_causes"><?php echo $_smarty_tpl->tpl_vars['partB']->value->effect_environment_clearance_causes;?>
</textarea>
                        
                    </div> 
                    
                    <label class="control-label" for="clearance_eca">Environment clearance ECA</label>
                    <div class="controls">
			    <input type="file" id="id-input-file-1" />
		    </div>
                    
                </div>
                
                <div class="form-actions2">
		 <button class="btn btn-small btn-primary"><i class="icon-save"></i> Save</button>
                 <input type="hidden" value="savePartB" name="cmd"/>
	       </div>
            
            </div>
            <!-- #efect ends here-->
            
            <!-- #other_details starts here-->
            <div id="other_details" class="tab-pane">
                 <div class="control-group">
                    <label class="" for="linkage_perspective_plan">24.0 Specific Linkage with Perspective Plan/Five Years Plan/MDGs/SDGs/Ministry/Sector Priority</label>
                    <div class="">
                        <textarea class="ckeditor" name="linkage_perspective_plan" id="linkage_perspective_plan"><?php echo $_smarty_tpl->tpl_vars['partB']->value->linkage_perspective_plan;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="mission_vision">25.1 Mission/Vision of the Implementing Agency/Sponsoring Ministry</label>
                    <div class="">
                        <textarea class="ckeditor" name="mission_vision" id="mission_vision"><?php echo $_smarty_tpl->tpl_vars['partB']->value->mission_vision;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="achievement_of_mission">25.2 How does the project contribute in achieving the mission/vision of the Implementing Agency/Sponsoring Ministry</label>
                    <div class="">
                        <textarea class="ckeditor" name="achievement_of_mission" id="achievement_of_mission"><?php echo $_smarty_tpl->tpl_vars['partB']->value->achievement_of_mission;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="private_sector_participation">26.0 Whether private sector/local govt. or NGO's participation was considered? if yes, describe how will they be involved?</label>
                    <div class="">
                        <textarea class="ckeditor" name="private_sector_participation" id="private_sector_participation"><?php echo $_smarty_tpl->tpl_vars['partB']->value->private_sector_participation;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="foreign_aided_project_conditionality">27.0 In case of foreign aided project mention the major conditionality</label>
                    <div class="">
                        <textarea class="ckeditor" name="foreign_aided_project_conditionality" id="foreign_aided_project_conditionality"><?php echo $_smarty_tpl->tpl_vars['partB']->value->foreign_aided_project_conditionality;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="project_compensation">28.0 Does the project involve compensation, rehabilitation/resettlement? If so, indicate the magnitude and cost</label>
                    <div class="">
                        <textarea class="ckeditor" name="project_compensation" id="project_compensation"><?php echo $_smarty_tpl->tpl_vars['partB']->value->project_compensation;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="risk_analysis">29.0 Risk analysis and Mitigation measures</label>
                    <div class="">
                        <textarea class="ckeditor" name="risk_analysis" id="risk_analysis"><?php echo $_smarty_tpl->tpl_vars['partB']->value->risk_analysis;?>
</textarea>
                    </div> 
                </div>
                
                <div class="form-actions2">
		 <button class="btn btn-small btn-primary"><i class="icon-save"></i> Save</button>
                 <input type="hidden" value="savePartB" name="cmd"/>
	       </div>
                
            </div>
            <!-- #other_details ends here-->
            
            <!-- #other_important starts here-->
            <div id="other_important" class="tab-pane">
                 <div class="control-group">
                    <label class="" for="sustainability">30.1 Sustainability of the project benefit</label>
                    <div class="">
                        <textarea class="ckeditor" name="sustainability" id="sustainability"><?php echo $_smarty_tpl->tpl_vars['partB']->value->sustainability;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="governance">30.2 Governance of the operation of project</label>
                    <div class="">
                        <textarea class="ckeditor" name="governance" id="governance"><?php echo $_smarty_tpl->tpl_vars['partB']->value->governance;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="psc_tor">30.3 Project Steering Committee(PSC) formation and TOR</label>
                    <div class="">
                        <textarea class="ckeditor" name="psc_tor" id="psc_tor"><?php echo $_smarty_tpl->tpl_vars['partB']->value->psc_tor;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="pic_tor">30.4 Project Implementation Committee(PIC)formation and TOR </label>
                    <div class="">
                        <textarea class="ckeditor" name="pic_tor" id="pic_tor"><?php echo $_smarty_tpl->tpl_vars['partB']->value->pic_tor;?>
</textarea>
                    </div> 
                </div>
                
                <div class="control-group">
                    <label class="" for="others_any">30.5 Others(If any)</label>
                    <div class="">
                        <textarea class="ckeditor" name="others_any" id="others_any"><?php echo $_smarty_tpl->tpl_vars['partB']->value->others_any;?>
</textarea>
                    </div> 
                </div>
                
               <div class="form-actions2">
		 <button class="btn btn-small btn-primary"><i class="icon-save"></i> Save</button>
                 <input type="hidden" value="savePartB" name="cmd"/>
	       </div>
            </div>
            <!-- #other_important ends here-->
            
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
