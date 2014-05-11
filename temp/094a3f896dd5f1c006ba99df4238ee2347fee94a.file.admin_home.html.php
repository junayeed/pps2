<?php /* Smarty version Smarty-3.1.17, created on 2014-05-09 08:16:30
         compiled from "D:\xampp\htdocs\pps2\app_contents\standard\user_home\admin_home.html" */ ?>
<?php /*%%SmartyHeaderCode:7845535bceb54a97e9-27388124%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '094a3f896dd5f1c006ba99df4238ee2347fee94a' => 
    array (
      0 => 'D:\\xampp\\htdocs\\pps2\\app_contents\\standard\\user_home\\admin_home.html',
      1 => 1399616187,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7845535bceb54a97e9-27388124',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_535bceb55236c3_73100381',
  'variables' => 
  array (
    'USER_HEADER' => 0,
    'USER_NAVIGATION' => 0,
    'contents' => 0,
    'SYSTEM_COMMON_JAVASCRIPT_DIR' => 0,
    'REL_TEMPLATE_DIR' => 0,
    'SYSTEM_APP_PREFIX' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535bceb55236c3_73100381')) {function content_535bceb55236c3_73100381($_smarty_tpl) {?><html>
<head>
		<meta charset="utf-8" />
		<title>Project Planning System (PPS)</title>
		<meta name="description" content="overview & stats" />

		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->
		<link href="/app_contents/standard/template/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="/app_contents/standard/template/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />

		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
		  <link rel="stylesheet" href="/app_contents/standard/template/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->


		<!-- page specific plugin styles -->
		

		<!-- ace styles -->
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/ace.min.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="/app_contents/standard/template/assets/css/ace-skins.min.css" />
		<!--[if lt IE 9]>
		  <link rel="stylesheet" href="/app_contents/standard/template/assets/css/ace-ie.min.css" />
		<![endif]-->
                
               

</head>
<body>
       
        
        <?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['USER_HEADER']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        
         <div class="container-fluid" id="main-container">
			<a href="#" id="menu-toggler"><span></span></a><!-- menu toggler -->

			<div id="sidebar">
				
				<div id="sidebar-shortcuts">
					<div id="sidebar-shortcuts-large">
						<button class="btn btn-small btn-success"><i class="icon-signal"></i></button>
						<button class="btn btn-small btn-info"><i class="icon-pencil"></i></button>
						<button class="btn btn-small btn-warning"><i class="icon-group"></i></button>
						<button class="btn btn-small btn-danger"><i class="icon-cogs"></i></button>
					</div>
					<div id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>
						<span class="btn btn-info"></span>
						<span class="btn btn-warning"></span>
						<span class="btn btn-danger"></span>
					</div>
				</div><!-- #sidebar-shortcuts -->
         	
         	   
         	                <?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['USER_NAVIGATION']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

                                <div id="sidebar-collapse"><i class="icon-double-angle-left"></i></div>


			</div><!--/#sidebar-->         	   
         	        
                        <?php echo $_smarty_tpl->tpl_vars['contents']->value;?>

                        
                        <div id="footer" style="text-align: right">
                            <p>Copyright &copy; 2014, IDE Project. All Rights Reserved.</p>
                        </div>
         	   
        </div> 
        
        <!-- end footert -->
        <!-- basic scripts -->
		

		
                <script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['SYSTEM_COMMON_JAVASCRIPT_DIR']->value;?>
/common.js"></script>
	        <script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['REL_TEMPLATE_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['SYSTEM_APP_PREFIX']->value;?>
.js"></script>
                
</body><?php }} ?>
