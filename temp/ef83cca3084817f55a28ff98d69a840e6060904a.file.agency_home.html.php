<?php /* Smarty version Smarty-3.1.17, created on 2014-08-06 11:53:09
         compiled from "E:\xampp\htdocs\pps2\app_contents\standard\user_home\agency_home.html" */ ?>
<?php /*%%SmartyHeaderCode:1674453cb485ee95388-43014692%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ef83cca3084817f55a28ff98d69a840e6060904a' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\standard\\user_home\\agency_home.html',
      1 => 1407318463,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1674453cb485ee95388-43014692',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53cb485f068235_64453088',
  'variables' => 
  array (
    'USER_HEADER' => 0,
    'USER_NAVIGATION' => 0,
    'contents' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53cb485f068235_64453088')) {function content_53cb485f068235_64453088($_smarty_tpl) {?><html>
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

                        
                        <div class="footer">
                                <div class="container">
                                        <p>Copyright &copy; 2014, IDE Project. All Rights Reserved.</p>
                                </div>
                        </div>
                        
         	   
        </div> 
        
        <!-- end footert -->
        <!-- basic scripts -->
</body><?php }} ?>
