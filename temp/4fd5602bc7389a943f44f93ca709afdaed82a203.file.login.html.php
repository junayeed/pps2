<?php /* Smarty version Smarty-3.1.17, created on 2014-06-08 06:31:07
         compiled from "E:\xampp\htdocs\pps2\app_contents\standard\login\login.html" */ ?>
<?php /*%%SmartyHeaderCode:216825393e70b2fa836-59747995%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4fd5602bc7389a943f44f93ca709afdaed82a203' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\standard\\login\\login.html',
      1 => 1399661950,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '216825393e70b2fa836-59747995',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5393e70b4c4300_67379878',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5393e70b4c4300_67379878')) {function content_5393e70b4c4300_67379878($_smarty_tpl) {?><!DOCTYPE html><html lang="en"><head>    <meta charset="utf-8"/>    <title>Login Page - Project Planning System</title>    <meta name="description" content="User login page"/>    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>    <!-- basic styles -->    <link href="/app_contents/standard/template/assets/css/bootstrap.min.css" rel="stylesheet"/>    <link href="/app_contents/standard/template/assets/css/bootstrap-responsive.min.css" rel="stylesheet"/>    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/font-awesome.min.css"/>    <!--[if IE 7]>    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/font-awesome-ie7.min.css"/>    <![endif]-->    <!-- page specific plugin styles -->    <!-- ace styles -->    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/ace.min.css"/>    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/ace-responsive.min.css"/>    <!--[if lt IE 9]>    <link rel="stylesheet" href="/app_contents/standard/template/assets/css/ace-ie.min.css"/>    <![endif]--></head><body class="login-layout"><div class="container-fluid" id="main-container">    <div id="main-content">        <div class="row-fluid">            <div class="span12">                <div class="row-fluid">                        <div class="center">                            <h1><i class="icon-globe white"></i> <span class="white">Project</span> <span class="white">Planning System(PPS)</span>                            </h1>                            <h4 class="white">&copy; Implementation of Digital ECNEC</h4>                        </div>                </div>                <div class="login-container">                    <div class="space-6"></div>                    <form class="form-horizontal" id="login-form"  method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">                     <div class="row-fluid">                        <div class="position-relative">                            <div id="login-box" class="visible widget-box no-border">                                <div class="widget-body">                                    <div class="widget-main">                                        <h4 class="header lighter bigger"><i class="icon-laptop black"></i> Please Enter                                            Login Information</h4>                                        <div class="space-6"></div>                                        <form>                                            <fieldset>                                                <label>						<span class="block input-icon input-icon-right">							<input type="text" class="span12" name="loginid" placeholder="Username"/>							<i class="icon-user"></i>						</span>                                                </label>                                                <label>						<span class="block input-icon input-icon-right">							<input type="password" class="span12" name="password" placeholder="Password"/>							<i class="icon-lock"></i>						</span>                                                </label>                                                <div class="space"></div>                                                <div class="row-fluid">                                                    <label class="span8">                                                        <input type="checkbox"><span class="lbl"> Remember Me</span>                                                    </label>                                                    <button onclick="return true;"                                                            class="span4 btn btn-small btn-primary"><i                                                            class="icon-key"></i> Login                                                    </button>                                                </div>                                            </fieldset>                                        </form>                                    </div>                                    <!--/widget-main-->                                </div>                                <!--/widget-body-->                            </div>                            <!--/login-box-->                        </div>                        <!--/position-relative-->                    </div>                    </form>                </div>            </div>            <!--/span-->        </div>        <!--/row-->    </div></div><!--/.fluid-container--><!-- page specific plugin scripts --><!-- inline scripts related to this page --></body></html><?php }} ?>
