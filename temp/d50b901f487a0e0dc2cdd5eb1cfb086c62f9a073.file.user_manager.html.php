<?php /* Smarty version Smarty-3.1.17, created on 2014-06-16 10:08:46
         compiled from "E:\xampp\htdocs\pps2\app_contents\user_manager\user_manager.html" */ ?>
<?php /*%%SmartyHeaderCode:20124539ea60e8f7ea2-25793937%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd50b901f487a0e0dc2cdd5eb1cfb086c62f9a073' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\user_manager\\user_manager.html',
      1 => 1401948009,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20124539ea60e8f7ea2-25793937',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'ministryList' => 0,
    'agencyList' => 0,
    'adpSectorList' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_539ea60e9b4343_51053227',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_539ea60e9b4343_51053227')) {function content_539ea60e9b4343_51053227($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'E:/xampp/htdocs/pps2/ext/smarty3/libs/plugins\\function.html_options.php';
?><div id="main-content" class="clearfix">
    	<head>
	    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/jquery-ui-1.10.2.custom.min.css" />
	</head>

					
					<div id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">Home</a><span class="divider"><i class="icon-angle-right"></i></span></li>
							<li><a href="#">User</a> <span class="divider"><i class="icon-angle-right"></i></span></li>
							<li class="active">Create User</li>
						</ul><!--.breadcrumb-->

						
					</div><!--#breadcrumbs-->



<div id="page-content" class="clearfix">
					
    <div class="page-header position-relative">
	<h1>Create User <small><i class="icon-double-angle-right"></i></small></h1>
    </div><!--/page-header-->

						

<div class="row-fluid">
<!-- PAGE CONTENT BEGINS HERE -->


<form class="form-horizontal" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">
	
		 <div class="control-group">
			<label class="control-label" for="username">Username</label>
			<div class="controls">
				<input class="span4" type="text" id="username" name="username" placeholder="Enter Username">
			</div>
		</div>
            
                <div class="control-group">
			<label class="control-label" for="designation">Designation</label>
			<div class="controls">
				<input class="span4" type="text" id="designation" name="designation" placeholder="Designation">
			</div>
		</div>
                <div class="control-group">
			<label class="control-label" for="email">Email</label>
			<div class="controls">
				<input class="span4" type="text" id="email" name="email" placeholder="Email">
			</div>
		</div>   
    
                <div class="control-group">
                    <label class="control-label" for="ministry_id">Ministry/Division</label>
                    <div class="controls">
                        <select id="ministry_id" name="ministry_id">
                            <option value="">Select Ministry</option>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['ministryList']->value),$_smarty_tpl);?>

                        </select>    
                    </div>
		</div>
    
                <div class="control-group">
                    <label class="control-label" for="agency_id">Agency</label>
                    <div class="controls">
                        <select id="agency_id" name="agency_id">
                            <option value="">Select Agency</option>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['agencyList']->value),$_smarty_tpl);?>

                        </select>    
                    </div>
		</div>
    
                <div class="control-group">
                    <label class="control-label" for="company_id">Sub Agency/Company</label>
                    <div class="controls">
                        <select id="company_id" name="company_id">
                            <option value="">Select Sub Agency/Company</option>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['adpSectorList']->value),$_smarty_tpl);?>

                        </select>    
                    </div>
		</div>
               
    	
		<div class="form-actions2">
			<button class="btn btn-small btn-primary" type="submit"><i class="icon-save"></i> Create User</button>
			&nbsp; &nbsp; &nbsp;
			<button class="btn btn-small" type="reset"><i class="icon-undo"></i> Reset</button>
		</div>
                <input type="hidden" name="cmd" value="add">
		
	
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

		
		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.validate.min.js"></script>

		
		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.autosize-min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>

		<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.maskedinput.min.js"></script>

               <!-- ace scripts -->
		<script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
		<script src="/app_contents/standard/template/assets/js/ace.min.js"></script>
                <script>
                    
                    


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
			username: {
				required: true
			},
                        
			designation: {
				required: true
			},
                        email: {
				required: true
			}
		},

		messages: {
                        default:{
                                required: "Hi"
                        },
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


                    
                </script>    
<?php }} ?>
