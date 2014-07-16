<?php /* Smarty version Smarty-3.1.17, created on 2014-07-16 09:09:30
         compiled from "E:\xampp\htdocs\pps2\app_contents\standard\user_home\agency_navigation.html" */ ?>
<?php /*%%SmartyHeaderCode:2474153c624a538b042-97358641%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
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
  'nocache_hash' => '2474153c624a538b042-97358641',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53c624a538d408_71097058',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53c624a538d408_71097058')) {function content_53c624a538d408_71097058($_smarty_tpl) {?><ul class="nav nav-list">
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
