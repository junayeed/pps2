<?php /* Smarty version Smarty-3.1.17, created on 2014-08-20 06:00:55
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\attachment.html" */ ?>
<?php /*%%SmartyHeaderCode:2934353f41d776ce789-57450463%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7838bae0b1244bf54cd65ae8301a3e977938c330' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\attachment.html',
      1 => 1408445798,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2934353f41d776ce789-57450463',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'PI' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53f41d77711892_93491326',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53f41d77711892_93491326')) {function content_53f41d77711892_93491326($_smarty_tpl) {?><div id="main-content" class="clearfix">
<head>
    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/jquery-ui-1.10.2.custom.min.css" />
    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/chosen.css" />
    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/datepicker.css" />
    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/bootstrap-timepicker.css" />
    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/daterangepicker.css" />
    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/colorpicker.css" />
</head>


<div id="page-content" class="clearfix">
					
    <div class="page-header position-relative">
	<h1>Attachment(s)<small><i class="icon-double-angle-right"></i> (DPP/TPP)</small></h1>
    </div><!--/page-header-->
<div class="row-fluid">


<form class="form-horizontal" name="commentsForm" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
" enctype="multipart/form-data">
	
    <div class="control-group">
        <label class="control-label" for="title">Title</label>
        <div class="controls">
            <input class="span5" type="text" id="title"  name="title" placeholder="Title" required>
        </div>
    </div>
   
            
    <div class="control-group">
        <label class="control-label" for="project_type">Attachment</label>
        <div class="controls span4">
            <input  type="file" name="document" id="id-input-file-1" />
        </div>
    </div>

    <div class="form-actions">
        <button class="btn btn-info" type="submit"><i class="icon-ok"></i> Save</button>
        &nbsp; &nbsp; &nbsp;
        <button class="btn" type="reset"><i class="icon-undo"></i> Reset</button>
    </div>
    <input type="hidden" name="cmd" value="saveAttachment">
    <input type="hidden" name="PI" value="<?php echo $_smarty_tpl->tpl_vars['PI']->value;?>
">
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
                 <script src="/app_contents/standard/template/assets/js/jquery-migrate-1.0.0.js"></script>
		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery-ui-1.10.2.custom.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.ui.touch-punch.min.js"></script>
		
              
		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.validate.min.js"></script>

		
                
               <!-- ace scripts -->
		<script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
		<script src="/app_contents/standard/template/assets/js/ace.min.js"></script>

                <script>
                   
                   
                    
                       
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


		$(function() {

	
	

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
	
	$('#validation-form').validate({
		errorElement: 'span',
		errorClass: 'help-inline',
		focusInvalid: true  ,
		rules: {
			
                        
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
        
	
})


   
</script>    <?php }} ?>
