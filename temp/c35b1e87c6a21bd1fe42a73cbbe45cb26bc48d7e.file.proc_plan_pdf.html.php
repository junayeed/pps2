<?php /* Smarty version Smarty-3.1.17, created on 2014-08-22 19:13:20
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\proc_plan_pdf.html" */ ?>
<?php /*%%SmartyHeaderCode:3028253f6be06e29257-67904798%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c35b1e87c6a21bd1fe42a73cbbe45cb26bc48d7e' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\proc_plan_pdf.html',
      1 => 1408727594,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3028253f6be06e29257-67904798',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53f6be06f40aa9_00095824',
  'variables' => 
  array (
    'procurement_category' => 0,
    'basicInfo' => 0,
    'item' => 0,
    'totalPA' => 0,
    'totalRPA' => 0,
    'proc_plan_list' => 0,
    'total_estd_cost' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53f6be06f40aa9_00095824')) {function content_53f6be06f40aa9_00095824($_smarty_tpl) {?><table cellspacing="0" width="100%" style='font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; font-size: 12px;'>
    <tr>
        <td align="right" colspan="4">
        <?php if ($_smarty_tpl->tpl_vars['procurement_category']->value=='GOODS') {?>Annex - III (a)
        <?php } elseif ($_smarty_tpl->tpl_vars['procurement_category']->value=='WORKS') {?>Annex - III (b)
        <?php } elseif ($_smarty_tpl->tpl_vars['procurement_category']->value=='SERVICES') {?>Annex - III (c)
        <?php }?>
        </td>
    </tr>
    <tr>
        <td align="right" colspan="4"><font size="1">Ref: PPR, 2008</font></td>
    </tr>
    <tr>
        <td width="20%">Project Name: </td>
        <td style="padding-bottom: 5px;" colspan="3"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->project_title_en;?>
</td>
    </tr>
    <tr>
        <td>Ministry/Division: </td>
        <td style="padding-bottom: 5px;" colspan="3">
            <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['basicInfo']->value->ministries; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                <?php echo $_smarty_tpl->tpl_vars['item']->value->name;?>
<br />
            <?php } ?>
        </td>
    </tr>
    <tr>
        <td style="padding-bottom: 5px;">Agency: </td>
        <td style="padding-bottom: 5px;" width="55%" >
            <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['basicInfo']->value->agencies; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                <?php echo $_smarty_tpl->tpl_vars['item']->value->name;?>
<br />
            <?php } ?>
        </td>
        <td style="padding-bottom: 5px;">Total GoB (FE): </td>
        <td style="padding-bottom: 5px;"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->gob_cost;?>
 (<?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->gob_fe_cost,2,".",",");?>
)</td>
    </tr>
    <tr>
        <td style="padding-bottom: 5px;">Procuring Entity Name and Code: </td>
        <td style="padding-bottom: 5px;">Procuring Entity Name and Code: </td>
        <td style="padding-bottom: 5px;">Total PA (RPA): </td>
        <td style="padding-bottom: 5px;">
            <?php $_smarty_tpl->tpl_vars['totalPA'] = new Smarty_variable($_smarty_tpl->tpl_vars['basicInfo']->value->pa_through_gob_cost+$_smarty_tpl->tpl_vars['basicInfo']->value->pa_spc_acnt_cost+$_smarty_tpl->tpl_vars['basicInfo']->value->pa_dpa_cost, null, 0);?>
            <?php $_smarty_tpl->tpl_vars['totalRPA'] = new Smarty_variable($_smarty_tpl->tpl_vars['basicInfo']->value->pa_through_gob_cost+$_smarty_tpl->tpl_vars['basicInfo']->value->pa_spc_acnt_cost, null, 0);?>
            <?php echo number_format($_smarty_tpl->tpl_vars['totalPA']->value,2,".",",");?>
 (<?php echo number_format($_smarty_tpl->tpl_vars['totalRPA']->value,2,".",",");?>
)
        </td>
    </tr>
    <tr>
        <td style="padding-bottom: 5px;">Project/Programme Code: </td>
        <td style="padding-bottom: 5px;">Project/Programme Code: </td>
        <td style="padding-bottom: 5px;">Others (FE): </td>
        <td style="padding-bottom: 5px;">
            <?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->other_cost;?>
 (<?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->other_fe_cost;?>
)
        </td>
    </tr>
</table>
<table cellspacing="0" style='font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; font-size: 12px;'>
    <tr>
        <td align="center" colspan="12" style="padding-bottom: 10px;">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="12" style="padding-bottom: 10px; font-size: 14px;">Total procurement plan for development project/programme</td>
    </tr>
    <tr>
        <td align="center" style="border: 1px solid black;">Package No.</td>
        <td align="center" style="border: 1px solid black;">Description of Procurement Package as per DPP/TPP<br><?php echo $_smarty_tpl->tpl_vars['procurement_category']->value;?>
</td>
        <td align="center" style="border: 1px solid black;">Unit</td>
        <td align="center" style="border: 1px solid black;">Quantity</td>
        <td align="center" style="border: 1px solid black;">Procurement Method & Type</td>
        <td align="center" style="border: 1px solid black;">Contract Approving Authority</td>
        <td align="center" style="border: 1px solid black;">Source of Fund</td>
        <td align="center" style="border: 1px solid black;">Estd. Cost (In lakh tk)</td>
        <?php if ($_smarty_tpl->tpl_vars['procurement_category']->value=='GOODS') {?>
        <td align="center" style="border: 1px solid black;">Not Used in GOODS</td>
        <?php } elseif ($_smarty_tpl->tpl_vars['procurement_category']->value=='WORKS') {?>
        <td align="center" style="border: 1px solid black;">Invitation for Prequal (if applicable)</td>
        <?php } elseif ($_smarty_tpl->tpl_vars['procurement_category']->value=='SERVICES') {?>
        <td align="center" style="border: 1px solid black;">EOI Invitation</td>
        <?php }?>
        <td align="center" style="border: 1px solid black;">Invitation for Tender</td>
        <td align="center" style="border: 1px solid black;">Signing of Contract</td>
        <td align="center" style="border: 1px solid black;">Completion of Contract</td>
    </tr>
    <?php $_smarty_tpl->tpl_vars["total_estd_cost"] = new Smarty_variable("0", null, 0);?>
    <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['proc_plan_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
    <tr>
        <td style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->package_no;?>
</td>
        <td style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_desc;?>
</td>
        <td style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_unit;?>
</td>
        <td style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_qty;?>
</td>
        <td style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_method;?>
 (<?php echo $_smarty_tpl->tpl_vars['item']->value->procurement_type;?>
)</td>
        <td style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->approv_auth;?>
</td>
        <td style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->fund_src;?>
</td>
        <td style="border: 1px solid black;"><?php echo number_format($_smarty_tpl->tpl_vars['item']->value->estd_cost,2,".",",");?>
</td>
        <?php if ($_smarty_tpl->tpl_vars['procurement_category']->value=='GOODS') {?>
        <td style="border: 1px solid black;">Not Req.</td>
        <?php } elseif ($_smarty_tpl->tpl_vars['procurement_category']->value=='WORKS') {?>
        <td align="center" style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->prequal_invitation;?>
</td>
        <?php } elseif ($_smarty_tpl->tpl_vars['procurement_category']->value=='SERVICES') {?>
        <td align="center" style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->eoi_invitation;?>
</td>
        <?php }?>
        <td style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->tender_invitation;?>
</td>
        <td style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->contract_sign;?>
</td>
        <td style="border: 1px solid black;"><?php echo $_smarty_tpl->tpl_vars['item']->value->contract_completion;?>
</td>
        <?php $_smarty_tpl->tpl_vars["total_estd_cost"] = new Smarty_variable($_smarty_tpl->tpl_vars['total_estd_cost']->value+$_smarty_tpl->tpl_vars['item']->value->estd_cost, null, 0);?>
    </tr>
    <?php } ?>
    <tr>
        <td style="border: 1px solid black;" align="right" colspan="7"><b>Grand Total</b></td>
        <td style="border: 1px solid black;" align="left" colspan="5"><b><?php echo number_format($_smarty_tpl->tpl_vars['total_estd_cost']->value,2,".",",");?>
</b></td>
    </tr>
</table><?php }} ?>
