<?php /* Smarty version Smarty-3.1.17, created on 2014-06-24 06:25:41
         compiled from "E:\xampp\htdocs\pps2\app_contents\standard\login\login.html" */ ?>
<?php /*%%SmartyHeaderCode:216825393e70b2fa836-59747995%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4fd5602bc7389a943f44f93ca709afdaed82a203' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\standard\\login\\login.html',
      1 => 1403583918,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '216825393e70b2fa836-59747995',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5393e70b4c4300_67379878',
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5393e70b4c4300_67379878')) {function content_5393e70b4c4300_67379878($_smarty_tpl) {?><!DOCTYPE html><html lang="en"><head>    <meta charset="utf-8"/>    <title>Login Page - Project Planning System</title>    <meta name="description" content="User login page"/>    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>    <!-- basic styles -->    <link href="/app_contents/standard/template/assets/css/bootstrap.min.css" rel="stylesheet"/>    <link href="/app_contents/standard/template/assets/css/bootstrap-responsive.min.css" rel="stylesheet"/>    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/font-awesome.min.css"/>    <!--[if IE 7]>    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/font-awesome-ie7.min.css"/>    <![endif]-->    <!-- page specific plugin styles -->    <!-- ace styles -->    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/ace.min.css"/>    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/ace-responsive.min.css"/>    <!--[if lt IE 9]>    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/ace-ie.min.css"/>    <![endif]--></head><body class="login-layout"><div class="container-fluid" id="main-container">    <div id="main-content">        <div class="row-fluid">            <div class="span12">                <div id="header">                    <div class="header-top">                        <img class="govt-logo" src="/app_contents/common/images/govt-logo.png">                    <div class="center-text">                        <span class="center-text-en">Project Planning System(PPS) </span>                    </div>                                           </div>                </div>                                <div class="container">                <div class="body-left">                                            <label class="lblTextHead1">Digital ECNEC</label>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                        <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>                </div>                                  <div class="login-container right">                    <div class="space-6"></div>                    <form class="form-horizontal" id="login-form"  method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">                     <div class="row-fluid">                        <div class="position-relative">                            <div id="login-box" class="visible widget-box no-border">                                <div class="widget-body">                                    <div class="widget-main">                                        <h4 class="header lighter bigger"><i class="icon-laptop black"></i>Login Information</h4>                                        <div class="space-6"></div>                                        <form>                                            <fieldset>                                                <label>						<span class="block input-icon input-icon-right">							<input type="text" class="span12" name="loginid" placeholder="Username"/>							<i class="icon-user"></i>						</span>                                                </label>                                                <label>						<span class="block input-icon input-icon-right">							<input type="password" class="span12" name="password" placeholder="Password"/>							<i class="icon-lock"></i>						</span>                                                </label>                                                <div class="space"></div>                                                <div class="row-fluid">                                                    <label class="span8">                                                        <input type="checkbox"><span class="lbl"> Remember Me</span>                                                    </label>                                                    <button onclick="return true;"                                                            class="span4 btn btn-small btn-primary"><i                                                            class="icon-key"></i> Login                                                    </button>                                                </div>                                            </fieldset>                                        </form>                                                                            </div>                                    <!--/widget-main-->                                    <div class="toolbar clearfix">                                        <div>                                            <a href="#" onclick="show_box('forgot-box'); return false;"                                               class="forgot-password-link"><i class="icon-arrow-left"></i> I forgot my                                                password</a>                                        </div>                                                                            </div>                                </div>                                <!--/widget-body-->                            </div>                            <!--/login-box-->                                                        <div id="forgot-box" class="widget-box no-border">                                <div class="widget-body">                                    <div class="widget-main">                                        <h4 class="header red lighter bigger"><i class="icon-key"></i> Retrieve Password                                        </h4>                                        <div class="space-6"></div>                                        <p>                                            Enter your email and to receive instructions                                        </p>                                        <form>                                            <fieldset>                                                <label>						<span class="block input-icon input-icon-right">							<input type="email" class="span12" placeholder="Email"/>							<i class="icon-envelope"></i>						</span>                                                </label>                                                <div class="row-fluid">                                                    <button onclick="return false;"                                                            class="span5 offset7 btn btn-small btn-danger"><i                                                            class="icon-lightbulb"></i> Send Me!                                                    </button>                                                </div>                                            </fieldset>                                        </form>                                    </div>                                    <!--/widget-main-->                                    <div class="toolbar center">                                        <a href="#" onclick="show_box('login-box'); return false;"                                           class="back-to-login-link">Back to login <i class="icon-arrow-right"></i></a>                                    </div>                                </div>                                <!--/widget-body-->                            </div>                            <!--/forgot-box-->                        </div>                        <!--/position-relative-->                    </div>                    </form>                </div>                </div>            </div>            <!--/span-->        </div>        <!--/row-->    </div></div><!--/.fluid-container--><!-- basic scripts --><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script><script type="text/javascript">    window.jQuery || document.write("<script src='assets/js/jquery-1.9.1.min.js'>\x3C/script>");</script><!-- page specific plugin scripts --><!-- inline scripts related to this page --><script type="text/javascript">    function show_box(id) {        $('.widget-box.visible').removeClass('visible');        $('#' + id).addClass('visible');    }</script></body></html><?php }} ?>
