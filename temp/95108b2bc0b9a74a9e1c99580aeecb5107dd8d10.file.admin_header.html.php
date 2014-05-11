<?php /* Smarty version Smarty-3.1.17, created on 2014-05-09 21:22:00
         compiled from "D:\xampp\htdocs\pps2\app_contents\standard\user_home\admin_header.html" */ ?>
<?php /*%%SmartyHeaderCode:634535bceb55d7651-77734540%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '95108b2bc0b9a74a9e1c99580aeecb5107dd8d10' => 
    array (
      0 => 'D:\\xampp\\htdocs\\pps2\\app_contents\\standard\\user_home\\admin_header.html',
      1 => 1399663318,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '634535bceb55d7651-77734540',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_535bceb56579b4_14472342',
  'variables' => 
  array (
    'USER_FIRST' => 0,
    'USERNAME' => 0,
    'USER_TYPE' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535bceb56579b4_14472342')) {function content_535bceb56579b4_14472342($_smarty_tpl) {?>
            <div class="navbar navbar-inverse">
		  <div class="navbar-inner">
		   <div class="container-fluid">


			  <a class="brand" href="#"><small><i class="icon-globe"></i> Project Planning System (PPS)</small> </a>
			  <ul class="nav ace-nav pull-right">
					
					<li class="light-blue user-profile">
						<a class="user-menu dropdown-toggle" href="#" data-toggle="dropdown">
							<span id="user_info">
								<small>Welcome,</small> SAM Harun
							</span>
							<i class="icon-caret-down"></i>
						</a>
						<ul id="user_menu" class="pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
							<li><a href="#"><i class="icon-cog"></i> Settings</a></li>
							<li><a href="#"><i class="icon-user"></i> Profile</a></li>
							<li class="divider"></li>
							<li><a href="/app/standard/logout/logout.php"><i class="icon-off"></i> Logout</a></li>
						</ul>
					</li>




			  </ul><!--/.ace-nav-->

		   </div><!--/.container-fluid-->
		  </div><!--/.navbar-inner-->
		</div><!--/.navbar-->
<!--
<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="headerBackground">
  <tr>
    <td width="10%"><img src="/app_contents/common/image/000.gif" width="120" height="31"></td>
    <td width="0%"><img src="/app_contents/common/image/001divider.gif" width="3" height="31"></td>
    <td width="79%" background="/app_contents/common/image/001.gif" align="center"> Welcome <?php echo $_smarty_tpl->tpl_vars['USER_FIRST']->value;?>
. You are logged in as <?php echo $_smarty_tpl->tpl_vars['USERNAME']->value;?>
 (<?php echo $_smarty_tpl->tpl_vars['USER_TYPE']->value;?>
)  </td>

    <td width="0%"><img src="/app_contents/common/image/001divider.gif" width="3" height="31"></td>
    <td width="10%" align="center"><a href="/app/standard/logout/logout.php" class="logout"><img src="/app_contents/common/image/logout.gif" width="120" height="31" border="0"></a></td>
  </tr>
</table>

-->
<?php }} ?>
