<?php /* Smarty version Smarty-3.1.17, created on 2014-07-16 09:00:48
         compiled from "E:\xampp\htdocs\pps2\app_contents\standard\user_home\default_home.html" */ ?>
<?php /*%%SmartyHeaderCode:2283053c62320392b20-47959557%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f622b8c69f4eb6908af35b14f5744d80585bade5' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\standard\\user_home\\default_home.html',
      1 => 1298522686,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2283053c62320392b20-47959557',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'USER_FIRST' => 0,
    'SYSTEM_COMMON_JAVASCRIPT_DIR' => 0,
    'REL_TEMPLATE_DIR' => 0,
    'SYSTEM_APP_PREFIX' => 0,
    'USER_HEADER' => 0,
    'USER_NAVIGATION' => 0,
    'contents' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53c623203f2a11_08688925',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53c623203f2a11_08688925')) {function content_53c623203f2a11_08688925($_smarty_tpl) {?><html>

     <head>
        <title><?php echo $_smarty_tpl->tpl_vars['USER_FIRST']->value;?>
:</title>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <!-- stylesheets -->
        <link rel="stylesheet" type="text/css" href="/app_contents/local/theme/admin/css/reset.css" />
        <link rel="stylesheet" type="text/css" href="/app_contents/local/theme/admin/css/style.css" media="screen" />
        <link id="color" rel="stylesheet" type="text/css" href="/app_contents/local/theme/admin/css/colors/blue.css" />

        <!-- scripts (jquery) -->
        <script src="/app_contents/local/theme/admin/scripts/jquery-1.4.2.min.js" type="text/javascript"></script>
        <!--[if IE]><script language="javascript" type="text/javascript" src="/app_contents/local/theme/admin/scripts/excanvas.min.js"></script><![endif]-->
        <script src="/app_contents/local/theme/admin/scripts/jquery-ui-1.8.custom.min.js" type="text/javascript"></script>
        <script src="/app_contents/local/theme/admin/scripts/jquery.ui.selectmenu.js" type="text/javascript"></script>
        
        <script src="/app_contents/local/theme/admin/scripts/tiny_mce/tiny_mce.js" type="text/javascript"></script>
        <script src="/app_contents/local/theme/admin/scripts/tiny_mce/jquery.tinymce.js" type="text/javascript"></script>

        <!-- scripts (custom) -->
        <script src="/app_contents/local/theme/admin/scripts/smooth.js" type="text/javascript"></script>
        <script src="/app_contents/local/theme/admin/scripts/smooth.menu.js" type="text/javascript"></script>
        
        <script src="/app_contents/local/theme/admin/scripts/smooth.table.js" type="text/javascript"></script>
        <script src="/app_contents/local/theme/admin/scripts/smooth.form.js" type="text/javascript"></script>
        <script src="/app_contents/local/theme/admin/scripts/smooth.dialog.js" type="text/javascript"></script>

        <script src="/app_contents/local/theme/admin/scripts/smooth.autocomplete.js" type="text/javascript"></script>
        <script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['SYSTEM_COMMON_JAVASCRIPT_DIR']->value;?>
/messages.js"></script>
				<script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['SYSTEM_COMMON_JAVASCRIPT_DIR']->value;?>
/common.js"></script>
				<script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['SYSTEM_COMMON_JAVASCRIPT_DIR']->value;?>
/sorttable.js"></script>
				<script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['SYSTEM_COMMON_JAVASCRIPT_DIR']->value;?>
/CalendarPopup.js"></script>
				<script language="JavaScript" src="<?php echo $_smarty_tpl->tpl_vars['REL_TEMPLATE_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['SYSTEM_APP_PREFIX']->value;?>
.js"></script>
        
    </head>
       
        
        <?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['USER_HEADER']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        
         <div id="content">
         	
         	   <div id="left"> 
         	      <?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['USER_NAVIGATION']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

         	   </div>
         	   <div id="right">
         	      <?php echo $_smarty_tpl->tpl_vars['contents']->value;?>

         	   </div>   
         	   <!-- footer -->
         </div>
         
        <div id="footer">
            <p>Copyright &copy; 2011 ASICT. All Rights Reserved.</p>
        </div>
        <!-- end footert -->
<body>
<?php }} ?>
