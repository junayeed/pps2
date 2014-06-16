<?php /* Smarty version Smarty-3.1.17, created on 2014-06-15 09:14:58
         compiled from "E:\xampp\htdocs\pps2\app_contents\project_manager\proc_plan_pdf.html" */ ?>
<?php /*%%SmartyHeaderCode:1371539a6ba93afd01-89845587%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c35b1e87c6a21bd1fe42a73cbbe45cb26bc48d7e' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\project_manager\\proc_plan_pdf.html',
      1 => 1402816473,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1371539a6ba93afd01-89845587',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_539a6ba94b89f2_11940681',
  'variables' => 
  array (
    'procurement_category' => 0,
    'proc_plan_list' => 0,
    'item' => 0,
    'total_estd_cost' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_539a6ba94b89f2_11940681')) {function content_539a6ba94b89f2_11940681($_smarty_tpl) {?><table cellspacing="0" style='font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; font-size: 12px;'>
    <tr>
        <td align="right" colspan="12">
        <?php if ($_smarty_tpl->tpl_vars['procurement_category']->value=='GOODS') {?>Annex - III (a)
        <?php } elseif ($_smarty_tpl->tpl_vars['procurement_category']->value=='WORKS') {?>Annex - III (b)
        <?php } elseif ($_smarty_tpl->tpl_vars['procurement_category']->value=='SERVICES') {?>Annex - III (c)
        <?php }?>
        </td>
    </tr>
    <tr>
        <td align="right" colspan="12"><font size="1">Ref: PPR, 2008</font></td>
    </tr>
    <tr>
        <td colspan="6">Project Name: </td>
        <td colspan="6" style="padding-bottom: 5px;">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="6">Ministry/Division: </td>
        <td colspan="6" style="padding-bottom: 5px;"></td>
    </tr>
    <tr>
        <td colspan="6">Agency: </td>
        <td colspan="6" style="padding-bottom: 5px;">Total GoB (FE): </td>
    </tr>
    <tr>
        <td colspan="6">Procuring Entity Name and Code: </td>
        <td colspan="6" style="padding-bottom: 5px;">Total PA (RPA): </td>
    </tr>
    <tr>
        <td colspan="6">Project/Programme Code: </td>
        <td colspan="6" style="padding-bottom: 5px;">Others (FE): </td>
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
