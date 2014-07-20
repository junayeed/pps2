<?php /* Smarty version Smarty-3.1.17, created on 2014-07-20 06:41:03
         compiled from "E:\xampp\htdocs\pps2\app_contents\standard\user_home\agency_navigation.html" */ ?>
<?php /*%%SmartyHeaderCode:3127053cb485f1560f1-35849594%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f67dd7f848ef14cf7431dfb8376254a3c0a5ebfc' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\standard\\user_home\\agency_navigation.html',
      1 => 1405494568,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3127053cb485f1560f1-35849594',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53cb485f160be5_19655095',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53cb485f160be5_19655095')) {function content_53cb485f160be5_19655095($_smarty_tpl) {?><ul class="nav nav-list">
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
                                        
</ul><!--/.nav-list--><?php }} ?>
