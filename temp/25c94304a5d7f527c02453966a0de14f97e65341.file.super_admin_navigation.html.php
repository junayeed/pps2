<?php /* Smarty version Smarty-3.1.17, created on 2014-07-16 09:06:15
         compiled from "E:\xampp\htdocs\pps2\app_contents\standard\user_home\super_admin_navigation.html" */ ?>
<?php /*%%SmartyHeaderCode:1815553c624671193e8-42148848%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '25c94304a5d7f527c02453966a0de14f97e65341' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\standard\\user_home\\super_admin_navigation.html',
      1 => 1399700522,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1815553c624671193e8-42148848',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53c6246711bb79_00842607',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53c6246711bb79_00842607')) {function content_53c6246711bb79_00842607($_smarty_tpl) {?><ul class="nav nav-list">
					
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
