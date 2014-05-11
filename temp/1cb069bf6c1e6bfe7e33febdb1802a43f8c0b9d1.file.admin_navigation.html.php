<?php /* Smarty version Smarty-3.1.17, created on 2014-05-10 07:42:08
         compiled from "D:\xampp\htdocs\pps2\app_contents\standard\user_home\admin_navigation.html" */ ?>
<?php /*%%SmartyHeaderCode:27179535bceb56d1169-54594012%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1cb069bf6c1e6bfe7e33febdb1802a43f8c0b9d1' => 
    array (
      0 => 'D:\\xampp\\htdocs\\pps2\\app_contents\\standard\\user_home\\admin_navigation.html',
      1 => 1399700522,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '27179535bceb56d1169-54594012',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_535bceb571b0a0_20342079',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535bceb571b0a0_20342079')) {function content_535bceb571b0a0_20342079($_smarty_tpl) {?><ul class="nav nav-list">
					
					<li>
					  <a href="/app/standard/user_home/user_home.php">
						<i class="icon-dashboard"></i>
						<span>Dashboard</span>
					  </a>
					</li>

					
					<li>
					  <a  class="dropdown-toggle active" href="#">
						<i class="icon-edit"></i>
						<span>Projects Information</span>
                                                <b class="arrow icon-angle-down"></b>
                                           </a>      
                                                <ul class="submenu">
                                                    <li><a href="/app/project_manager/project_manager.php"><i class="icon-double-angle-right"></i> Create Project</a></li>
                                                    <li><a href="/app/project_manager/project_manager.php?cmd=list"><i class="icon-double-angle-right"></i> Project List</a></li>
					        </ul>
						
					 
					</li>
                                        
                                        <li>
					  <a  class="dropdown-toggle active" href="#">
						<i class="icon-edit"></i>
						<span>User Information</span>
                                                <b class="arrow icon-angle-down"></b>
                                           </a>      
                                                <ul class="submenu">
                                                    <li><a href="/app/user_manager/user_manager.php"><i class="icon-double-angle-right"></i> Create User</a></li>
                                                    <li><a href="/app/user_manager/user_manager.php?cmd=list"><i class="icon-double-angle-right"></i> User List</a></li>
					        </ul>
						
					 
					</li>
					
				</ul><!--/.nav-list--><?php }} ?>
