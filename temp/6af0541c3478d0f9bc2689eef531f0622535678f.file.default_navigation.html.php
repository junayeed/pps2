<?php /* Smarty version Smarty-3.1.17, created on 2014-04-30 05:32:20
         compiled from "D:\xampp\htdocs\pps2\app_contents\standard\user_home\default_navigation.html" */ ?>
<?php /*%%SmartyHeaderCode:2603253606ec4a1ec58-25777388%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6af0541c3478d0f9bc2689eef531f0622535678f' => 
    array (
      0 => 'D:\\xampp\\htdocs\\pps2\\app_contents\\standard\\user_home\\default_navigation.html',
      1 => 1298482294,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2603253606ec4a1ec58-25777388',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'nav_item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53606ec4e7c1f3_08492679',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53606ec4e7c1f3_08492679')) {function content_53606ec4e7c1f3_08492679($_smarty_tpl) {?>                <div id="menu">
                    <h6 id="h-menu-products" class="selected"><a href="#products"><span>Main Menu</span></a></h6>

                    <ul id="menu-products" class="opened">
                        <li>
											       <a href="/app/procurement_plan_manager/procurement_plan_manager.php">Procurement Plan</a>
                        </li>
                    </ul>
                    <h6 id="h-menu-pages" class="selected"><a href="#pages"><span>Procurement Request</span></a></h6>
                    <ul id="menu-pages" class="opened">
                        <li>
                        	   <a href="/app/srf_manager/srf_manager.php">SRF Manager</a>
                        </li>

                    </ul>
                    <h6 id="h-menu-events" class="selected"><a href="#events"><span>Administration</span></a></h6>
                    <ul id="menu-events" class="opened">
                    	   <li>
                    	   	   <a href="/app/user_manager/user_manager.php">User Manager</a>
												 </li>
												 <li>
											       <a href="/app/project_manager/project_manager.php">Project Manager</a>
                        </li>
                        <li>
                        	   <a href="/app/category_manager/category_manager.php">Category Manager</a>
                        </li>
                       
                    </ul>
                   
                </div>
                <div id="date-picker"></div>




<!--hide nevigation bar starts-->
<!--
<table border="0" width="100%">
<tr>
   <td align="right">
   <a href='javascript:void(0)' onclick="hideDiv('sidebar'); showDiv('nosidebar');" title="Hide Sidebar">
   <img id="hideSidebar" src="/app_contents/common/image/table/close.gif" border="0" alt="Hide Sidebar" onmouseover="showImg('hideSidebar', '/dp/app_contents/common/image/table/close_hvr.gif');" onmouseout="showImg('hideSidebar', '/dp/app_contents/common/image/table/close.gif');">
   </a>
   </td>
</tr>
</table>
<!--hide nevigation bar ends

<table border="0" width="100%">
<tr>
   <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="home") {?>
      <td class="navOn">Home</td>
   <?php } else { ?>
      <td class="nav"><a href="/home.php">Home</a></td>
   <?php }?>
</tr>
<tr>
   <td class="nav"><a href="/app/standard/logout/logout.php">Logout</a></td>
</tr>
</table>

<br />

<!--the nevigations for 'System Tools' starts
<table class="navHeader" border="0" width="100%">
<tr>
   <td width="10"><img src="/app_contents/common/image/table/mini_arrowright.gif" id="system_img"></td>
   <td>
   <a href='javascript:void(0)' onclick="toggle('system', 'system_img');">System Tools</a>
   </td>
</tr>
</table>

<div id="system"  style="display:block">
<table border="0" width="100%">
<tr>
   <td>&nbsp;</td>
   <td>
      <table width="100%">
         <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="user") {?>
            <td class="navOn">User Manager</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/user_manager/user_manager.php">User Manager</a></td>
         <?php }?>
         </tr>
         <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="group") {?>
            <td class="navOn">Group Manager</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/group_manager/group_manager.php">Group Manager</a></td>
         <?php }?>
         </tr>
         <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="project_manager") {?>
            <td class="navOn">Project Manager</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/project_manager/project_manager.php">Project Manager</a></td>
         <?php }?>
         </tr>
         <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="procurement_plan") {?>
            <td class="navOn">Procurement Plan</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/procurement_plan_manager/procurement_plan_manager.php">Procurement Plan</a></td>
         <?php }?>
         </tr>
         <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="srf_manager") {?>
            <td class="navOn">SRF Manager</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/srf_manager/srf_manager.php">SRF Manager</a></td>
         <?php }?>
         </tr>
         <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="category_manager") {?>
            <td class="navOn">Category Manager</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/category_manager/category_manager.php">Category Manager</a></td>
         <?php }?>
         </tr>
         <!-- <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="share_market") {?>
            <td class="navOn">Share Market</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/share_market_manager/share_market_manager.php">Share Market</a></td>
         <?php }?>
         </tr>
         <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="movie_manager") {?>
            <td class="navOn">Movie Manager</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/movie_manager/movie_manager.php">Movie Manager</a></td>
         <?php }?>
         </tr> 
      </table>
   </td>
</tr>
</table>
</div>
<!--the nevigations for 'System Tools' ends

<table class="navHeader" border="0" width="100%">
<tr>
   <td width="10"><img src="/app_contents/common/image/table/mini_arrowright.gif" id="report_img"></td>
   <td>
   <a href='javascript:void(0)' onclick="toggle('report_tool', 'report_img');">Report Tools</a>
   </td>
</tr>
</table>

<div id="report_tool" style="display:block">
<table border="0" width="100%">
<tr>
   <td>&nbsp;</td>
   <td>
      <table width="100%">
         <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="pdf_rpt") {?>
            <td class="navOn">PDF Report</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/report_manager/report_manager.php">PDF Report</a></td>
         <?php }?>
         </tr>
         <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="group") {?>
            <td class="navOn">Graph Report</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/report_manager/report_manager.php">Graph Report</a></td>
         <?php }?>
         </tr>
         <tr>
         <?php if ($_smarty_tpl->tpl_vars['nav_item']->value=="user") {?>
            <td class="navOn">CSV Report</td>
         <?php } else { ?>
            <td class="nav"><a href="/app/report_manager/report_manager.php">CSV Report</a></td>
         <?php }?>
         </tr>         
      </table>
   </td>
</tr>
</table>
</div>


<br />
--><?php }} ?>
