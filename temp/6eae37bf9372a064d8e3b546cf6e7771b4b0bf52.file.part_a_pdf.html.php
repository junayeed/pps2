<?php /* Smarty version Smarty-3.1.17, created on 2014-10-24 16:38:41
         compiled from "D:\xampp2\htdocs\pps2\app_contents\project_manager\part_a_pdf.html" */ ?>
<?php /*%%SmartyHeaderCode:26820544a6471316dd4-52167235%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6eae37bf9372a064d8e3b546cf6e7771b4b0bf52' => 
    array (
      0 => 'D:\\xampp2\\htdocs\\pps2\\app_contents\\project_manager\\part_a_pdf.html',
      1 => 1414161426,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '26820544a6471316dd4-52167235',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'basicInfo' => 0,
    'item' => 0,
    'adpSectorList' => 0,
    'adpSubSectorList' => 0,
    'sectorDivisionList' => 0,
    'totalPA' => 0,
    'totalRPA' => 0,
    'modefinancing' => 0,
    'gob_total' => 0,
    'gob_fe_total' => 0,
    'rpa_total' => 0,
    'others_fe_total' => 0,
    'year_wise_gob_ownfund' => 0,
    'key' => 0,
    'year_wise_gob_ownfundCon' => 0,
    'component_list' => 0,
    'vItem' => 0,
    'percentage_of_project' => 0,
    'comp_sub_total_list' => 0,
    'contingency_list' => 0,
    'conKey' => 0,
    'conItem' => 0,
    'con_percentage_of_project' => 0,
    'logframe' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_544a647157f463_16962538',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_544a647157f463_16962538')) {function content_544a647157f463_16962538($_smarty_tpl) {?><table cellspacing="0" width="100%" style='font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; font-size: 12px;' border="0">
    <tr>
        <td align="center" colspan="4">PART - A</td>
    </tr>
    <tr>
        <td align="center" colspan="4"><u>Project Summary</u></td>
    </tr>
    <tr>
        <td align="center" colspan="4">&nbsp;</td>
    </tr>
    <tr>
        <td width="5%" valign="top">1.0 </td>
        <td width="40%" valign="top">Project Title </td>
        <td width="1%" valign="top">: </td>
        <td width="54%" valign="top"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->project_title_en;?>
</td>
    </tr>
    <tr>
        <td width="5%" valign="top">2.1 </td>
        <td width="40%" valign="top">Sponsoring Ministry/Division </td>
        <td width="1%" valign="top"> : </td>
        <td style="padding-bottom: 5px;"  width="54%">
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
        <td width="5%" valign="top">2.2 </td>
        <td width="40%" style="padding-bottom: 5px;" valign="top">Implementing Agency (ies) </td>
        <td width="1%" valign="top">: </td>
        <td style="padding-bottom: 5px;" width="54%" valign="top">
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
    </tr>
    <tr>
        <td width="5%">2.3 </td>
        <td width="40%" style="padding-bottom: 5px;">Concerned Sector/Sub-sector of ADP</td>
        <td width="1%"> : </td>
        <td width="54%"><?php echo $_smarty_tpl->tpl_vars['adpSectorList']->value[$_smarty_tpl->tpl_vars['basicInfo']->value->adp_sector];?>
/<?php echo $_smarty_tpl->tpl_vars['adpSubSectorList']->value[$_smarty_tpl->tpl_vars['basicInfo']->value->adp_sub_sector];?>
</td>
    </tr>
    <tr>
        <td width="5%">2.4 </td>
        <td width="40%" style="padding-bottom: 5px;">Concerned Division of Planning Commission</td>
        <td width="1%"> : </td>
        <td width="54%"><?php echo $_smarty_tpl->tpl_vars['sectorDivisionList']->value[$_smarty_tpl->tpl_vars['basicInfo']->value->sector_division];?>
</td>
        <!--<td style="padding-bottom: 5px;">Total GoB (FE): </td>-->
        <!--<td style="padding-bottom: 5px;"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->gob_cost;?>
 (<?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->gob_fe_cost,2,".",",");?>
)</td>-->
    </tr>
    <tr>
        <td width="5%" valign="top">3.0 </td>
        <td width="40%" style="padding-bottom: 5px;" valign="top">Objectives and targets of the project (Please specify in quantity and/or in percentage and write in bullet form)</td>
        <td width="1%" valign="top"> : </td>
        <td width="54%"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->objectives;?>
</td>
    </tr>
    <tr>
        <td width="5%" valign="top">4.0 </td>
        <td width="40%" style="padding-bottom: 5px;" valign="top">Project implementation period </td>
        <td width="1%"> : </td>
        <td width="54%">i) Date of commencement: <?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->date_of_commencement;?>
<br>ii) Date of completion: <?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->date_of_completion;?>
</td>
    </tr>
    <tr>
        <td width="5%" valign="top">5.1 </td>
        <td width="40%" style="padding-bottom: 5px;" valign="top">Estimated Cost of the project (in Lakh Taka):</td>
        <td width="1%" valign="top"> : </td>
        <td width="54%">
            <table border="0" width="100%" cellspacing="2" cellpadding="2">
                <tr>
                    <td width="30%">Total</td>
                    <td width="1%">: </td>
                    <td width="65%"><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->total_cost,2,'.',',');?>
</td>
                </tr>
                <tr>
                    <td width="30%">GoB (FE)</td>
                    <td width="1%">: </td>
                    <td width="65%" style="padding-bottom: 5px;">
                        <?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->gob_cost,2,".",",");?>

                        (<?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->gob_fe_cost,2,".",",");?>
)
                    </td>
                </tr>
                <tr>
                    <td width="30%">PA (RPA)</td>
                    <td width="1%">: </td>
                    <td width="65%" style="padding-bottom: 5px;">
                        <?php $_smarty_tpl->tpl_vars['totalPA'] = new Smarty_variable($_smarty_tpl->tpl_vars['basicInfo']->value->pa_through_gob_cost+$_smarty_tpl->tpl_vars['basicInfo']->value->pa_spc_acnt_cost+$_smarty_tpl->tpl_vars['basicInfo']->value->pa_dpa_cost, null, 0);?>
                        <?php $_smarty_tpl->tpl_vars['totalRPA'] = new Smarty_variable($_smarty_tpl->tpl_vars['basicInfo']->value->pa_through_gob_cost+$_smarty_tpl->tpl_vars['basicInfo']->value->pa_spc_acnt_cost, null, 0);?>
                        <?php echo number_format($_smarty_tpl->tpl_vars['totalPA']->value,2,".",",");?>
 (<?php echo number_format($_smarty_tpl->tpl_vars['totalRPA']->value,2,".",",");?>
)
                    </td>
                </tr>
                <tr>
                    <td width="30%">Own Fund (FE)</td>
                    <td width="1%">: </td>
                    <td width="65%" style="padding-bottom: 5px;">
                        <?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->own_fund_cost,2,'.',',');?>

                        (<?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->own_fund_fe_cost,2,'.',',');?>
)
                    </td>
                </tr>
                <tr>
                    <td width="30%">Others (FE)</td>
                    <td width="1%">: </td>
                    <td width="65%" style="padding-bottom: 5px;">
                        <?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->other_cost,2,'.',',');?>

                        (<?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->other_fe_cost,2,'.',',');?>
)
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="5%" valign="top">5.2 </td>
        <td width="40%" style="padding-bottom: 5px;" valign="top">Exchange rate(s) with date (Source Bangladesh Bank) </td>
        <td width="1%"> : </td>
        <td width="54%"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->exchange_rate;?>
</td>
    </tr>
    <tr>
        <td width="5%" valign="top">6.0 </td>
        <td width="40%" style="padding-bottom: 5px;" valign="top">Mode of financing </td>
        <td width="1%"> : </td>
        <td width="54%">&nbsp;</td>
    </tr>
    <tr>
        <td width="5%" valign="top">6.1 </td>
        <td colspan="3">Mode of financing with source <span class="right">(Amount in Lakh Tk.)</span></td>
    </tr>
    <tr>
        <td colspan="4">
            <table border="1" cellspacing="0" cellpadding="2" width="100%">
                <thead>
                    <tr>
                        <th>Mode\Source</th>
                        <th>GOB<br>(FE)</th>
                        <th>PA<br>(RPA)</th>
                        <th>Own Fund<br>(FE)</th>
                        <th>Others<br>(Specify)</th>
                        <th>PA sources</th>
                    </tr>
                </thead>
                <tbody>
                    <tr> 
                        <td align="center">1</td>
                        <td align="center">2</td>
                        <td align="center">3</td>
                        <td align="center">4</td>
                        <td align="center">5</td>
                        <td align="center">6</td>
                    </tr>
                    <tr> 
                        <td>Loan/credit</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_gob,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_gob_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_pa,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_rpa,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_own_fund,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_own_fund_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_others,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->loan_others_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo $_smarty_tpl->tpl_vars['modefinancing']->value->loan_pa_source;?>
</td>
                    </tr>
                    <tr> 
                        <td>Grant</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_gob,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_gob_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_pa,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_rpa,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_own_fund,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_own_fund_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_others,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->grant_others_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo $_smarty_tpl->tpl_vars['modefinancing']->value->grant_pa_source;?>
</td>
                    </tr>
                    <tr> 
                        <td>Equity</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_gob,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_gob_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_pa,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_pa_rpa,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_own_fund,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_own_fund_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_others,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->equity_others_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo $_smarty_tpl->tpl_vars['modefinancing']->value->equity_pa_sources;?>
</td>
                    </tr>
                    <tr> 
                        <td>Others(Specify)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_gob,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_gob_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_pa,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_pa_rpa,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_own_fund,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_own_fund_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_others,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['modefinancing']->value->others_others_fe,2,'.','');?>
)</td>
                        <td align="center"><?php echo $_smarty_tpl->tpl_vars['modefinancing']->value->others_pa_sources;?>
</td>
                    </tr>
                    <tr>
                        <td>Grand Total</td>
                        <td align="center">
                            <?php $_smarty_tpl->tpl_vars['gob_total'] = new Smarty_variable($_smarty_tpl->tpl_vars['modefinancing']->value->loan_gob+$_smarty_tpl->tpl_vars['modefinancing']->value->grant_gob+$_smarty_tpl->tpl_vars['modefinancing']->value->equity_gob+$_smarty_tpl->tpl_vars['modefinancing']->value->others_gob, null, 0);?>
                            <?php echo number_format($_smarty_tpl->tpl_vars['gob_total']->value,2,'.','');?>
<br>
                            <?php $_smarty_tpl->tpl_vars['gob_fe_total'] = new Smarty_variable($_smarty_tpl->tpl_vars['modefinancing']->value->loan_gob_fe+$_smarty_tpl->tpl_vars['modefinancing']->value->grant_gob_fe+$_smarty_tpl->tpl_vars['modefinancing']->value->equity_gob_fe+$_smarty_tpl->tpl_vars['modefinancing']->value->others_gob_fe, null, 0);?>
                            <?php echo number_format($_smarty_tpl->tpl_vars['gob_fe_total']->value,2,'.','');?>

                        </td>
                        <td align="center">
                            <?php $_smarty_tpl->tpl_vars['pa_total'] = new Smarty_variable($_smarty_tpl->tpl_vars['modefinancing']->value->loan_pa+$_smarty_tpl->tpl_vars['modefinancing']->value->grant_pa+$_smarty_tpl->tpl_vars['modefinancing']->value->equity_pa+$_smarty_tpl->tpl_vars['modefinancing']->value->others_pa, null, 0);?>
                            <?php echo number_format($_smarty_tpl->tpl_vars['gob_total']->value,2,'.','');?>
<br>
                            <?php $_smarty_tpl->tpl_vars['rpa_total'] = new Smarty_variable($_smarty_tpl->tpl_vars['modefinancing']->value->loan_pa_rpa+$_smarty_tpl->tpl_vars['modefinancing']->value->grant_pa_rpa+$_smarty_tpl->tpl_vars['modefinancing']->value->equity_pa_rpa+$_smarty_tpl->tpl_vars['modefinancing']->value->others_pa_rpa, null, 0);?>
                            <?php echo number_format($_smarty_tpl->tpl_vars['rpa_total']->value,2,'.','');?>

                        </td>
                        <td align="center">
                            <?php $_smarty_tpl->tpl_vars['own_fund_total'] = new Smarty_variable($_smarty_tpl->tpl_vars['modefinancing']->value->loan_own_fund+$_smarty_tpl->tpl_vars['modefinancing']->value->grant_own_fund+$_smarty_tpl->tpl_vars['modefinancing']->value->equity_own_fund+$_smarty_tpl->tpl_vars['modefinancing']->value->others_own_fund, null, 0);?>
                            <?php echo number_format($_smarty_tpl->tpl_vars['gob_total']->value,2,'.','');?>
<br>
                            <?php $_smarty_tpl->tpl_vars['own_fund_fe_total'] = new Smarty_variable($_smarty_tpl->tpl_vars['modefinancing']->value->loan_own_fund_fe+$_smarty_tpl->tpl_vars['modefinancing']->value->grant_own_fund_fe+$_smarty_tpl->tpl_vars['modefinancing']->value->equity_own_fund_fe+$_smarty_tpl->tpl_vars['modefinancing']->value->others_own_fund_fe, null, 0);?>
                            <?php echo number_format($_smarty_tpl->tpl_vars['gob_fe_total']->value,2,'.','');?>

                        <td align="center">
                            <?php $_smarty_tpl->tpl_vars['others_total'] = new Smarty_variable($_smarty_tpl->tpl_vars['modefinancing']->value->loan_others+$_smarty_tpl->tpl_vars['modefinancing']->value->grant_others+$_smarty_tpl->tpl_vars['modefinancing']->value->equity_others+$_smarty_tpl->tpl_vars['modefinancing']->value->others_others, null, 0);?>
                            <?php echo number_format($_smarty_tpl->tpl_vars['gob_total']->value,2,'.','');?>
<br>
                            <?php $_smarty_tpl->tpl_vars['others_fe_total'] = new Smarty_variable($_smarty_tpl->tpl_vars['modefinancing']->value->loan_others_fe+$_smarty_tpl->tpl_vars['modefinancing']->value->grant_others_fe+$_smarty_tpl->tpl_vars['modefinancing']->value->equity_others_fe+$_smarty_tpl->tpl_vars['modefinancing']->value->others_others_fe, null, 0);?>
                            <?php echo number_format($_smarty_tpl->tpl_vars['others_fe_total']->value,2,'.','');?>

                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </tbody>
            </table>
        </td>
    </tr>
    <tr>
        <td width="5%" valign="top">6.2 </td>
        <td style="padding-bottom: 5px;" valign="top" colspan="3">Year wise allocation of GOB, RPA and Own Fund according to DPP (Amount in Lakh Tk.)</td>
    </tr>
    <tr>
        <td colspan="4">
            <table width="100%" cellspacing="0" border="1">
                <thead>
                    <tr>
                        <th>Financial Year</th>
                        <th>GOB<br>(FE)</th>
                        <th>Own Fund<br>(FE)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr> 
                        <td align="center">1</td>
                        <td align="center">2</td>
                        <td align="center">3</td>
                    </tr>
                    <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['year_wise_gob_ownfund']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                    <tr> 
                            <td align="center"><?php echo $_smarty_tpl->tpl_vars['item']->value->financial_year;?>
</td>
                            <td align="center"><?php echo $_smarty_tpl->tpl_vars['item']->value->gob_total+number_format($_smarty_tpl->tpl_vars['year_wise_gob_ownfundCon']->value[$_smarty_tpl->tpl_vars['key']->value]->gob_total,2,'.','');?>
<br>(<?php echo $_smarty_tpl->tpl_vars['item']->value->gob_fe_total+number_format($_smarty_tpl->tpl_vars['year_wise_gob_ownfundCon']->value[$_smarty_tpl->tpl_vars['key']->value]->gob_fe_total,2,'.','');?>
)</td>
                            <td align="center"><?php echo $_smarty_tpl->tpl_vars['item']->value->own_fund_total+number_format($_smarty_tpl->tpl_vars['year_wise_gob_ownfundCon']->value[$_smarty_tpl->tpl_vars['key']->value]->own_fund_total,2,'.','');?>
<br>(<?php echo $_smarty_tpl->tpl_vars['item']->value->own_fund_fe_total+number_format($_smarty_tpl->tpl_vars['year_wise_gob_ownfundCon']->value[$_smarty_tpl->tpl_vars['key']->value]->own_fund_fe_total,2,'.','');?>
)</td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </td>
    </tr>
    <tr>
        <td width="5%" valign="top">7.0 </td>
        <td style="padding-bottom: 5px;" valign="top" colspan="3">Location of the project: </td>
    </tr>
    <tr>
        <td colspan="4">
            <table>
                <tr>
                    <td>Location of the project</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="5%" valign="top">8.0 </td>
        <td style="padding-bottom: 5px;" valign="top" colspan="3">Location wise cost break-down to be attached as per Annexure - I</td>
    </tr>
    <tr>
        <td width="5%" valign="top">9.0 </td>
        <td style="padding-bottom: 5px;" valign="top" colspan="3">Component wise Estimated Cost Summary:</td>
    </tr>
</table>

<table cellspacing="0" width="100%" style='font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; font-size: 12px;' border="1">
    <thead>
        <tr>
            <th rowspan="2">Economic Code</th>
            <th rowspan="2">Economic Sub-code</th>
            <th rowspan="2">Component description</th>
            <th rowspan="2">Unit</th>
            <th rowspan="2">Qty</th>
            <th rowspan="2">Total Cost<br>(7+8+9+<br>10+11+12)</th>
            <th rowspan="2">GoB<br>(FE)</th>
            <th colspan="3">Project Aid</th>
            <th>Own Fund<br>(FE)</th>
            <th>Other<br>(FE)</th>
            <th>% of Total Project Cost</th>
        </tr>
        <tr>
            <th colspan="2">RPA</th> 
            <th>DPA</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
        </tr>
        <tr>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>Through GoB</th>
            <th>Special Account **</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>
        </tr>
    </thead>
    <tbody>
        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['component_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
            <tr>
                <td colspan="12"><?php if ($_smarty_tpl->tpl_vars['key']->value=="Revenue Component") {?>(a)<?php } elseif ($_smarty_tpl->tpl_vars['key']->value=="Capital Component") {?>(b)<?php }?> <?php echo $_smarty_tpl->tpl_vars['key']->value;?>
<td>
            </tr>
            <?php  $_smarty_tpl->tpl_vars['vItem'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['vItem']->_loop = false;
 $_smarty_tpl->tpl_vars['iKey'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['item']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['vItem']->key => $_smarty_tpl->tpl_vars['vItem']->value) {
$_smarty_tpl->tpl_vars['vItem']->_loop = true;
 $_smarty_tpl->tpl_vars['iKey']->value = $_smarty_tpl->tpl_vars['vItem']->key;
?>
            <tr>
                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->economic_code;?>
</td>
                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->economic_subcode;?>
</td>
                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->economic_subcode_name;?>
</td>
                <td><?php if ($_smarty_tpl->tpl_vars['vItem']->value->unit) {?><?php echo $_smarty_tpl->tpl_vars['vItem']->value->unit;?>
<?php } else { ?>-<?php }?></td>
                <td><?php echo $_smarty_tpl->tpl_vars['vItem']->value->qty;?>
</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['vItem']->value->total_cost,2,'.','');?>
</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['vItem']->value->gob,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['vItem']->value->gob_fe,2,'.','');?>
)</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['vItem']->value->rpa_through_gob,2,'.','');?>
</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['vItem']->value->rpa_special_account,2,'.','');?>
</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['vItem']->value->dpa,2,'.','');?>
</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['vItem']->value->own_fund,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['vItem']->value->own_fund_fe,2,'.','');?>
)</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['vItem']->value->other,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['vItem']->value->other_fe,2,'.','');?>
)</td>
                <td><?php $_smarty_tpl->tpl_vars["percentage_of_project"] = new Smarty_variable($_smarty_tpl->tpl_vars['vItem']->value->total_cost/$_smarty_tpl->tpl_vars['basicInfo']->value->total_cost*100, null, 0);?><?php echo number_format($_smarty_tpl->tpl_vars['percentage_of_project']->value,2,'.','');?>
%</td>
            </tr>
            <?php } ?>
            <tr>
                <td colspan="4">Sub Total (<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
)</td>
                <td>&nbsp;</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['comp_sub_total_list']->value[$_smarty_tpl->tpl_vars['key']->value]->sub_total_total_cost,2,'.','');?>
</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['comp_sub_total_list']->value[$_smarty_tpl->tpl_vars['key']->value]->sub_total_gob,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['comp_sub_total_list']->value[$_smarty_tpl->tpl_vars['key']->value]->sub_total_gob_fe,2,'.','');?>
)</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['comp_sub_total_list']->value[$_smarty_tpl->tpl_vars['key']->value]->sub_total_rpa_through_gob,2,'.','');?>
</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['comp_sub_total_list']->value[$_smarty_tpl->tpl_vars['key']->value]->sub_total_rpa_special_account,2,'.','');?>
</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['comp_sub_total_list']->value[$_smarty_tpl->tpl_vars['key']->value]->sub_total_dpa,2,'.','');?>
</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['comp_sub_total_list']->value[$_smarty_tpl->tpl_vars['key']->value]->sub_total_own_fund,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['comp_sub_total_list']->value[$_smarty_tpl->tpl_vars['key']->value]->sub_total_own_fund_fe,2,'.','');?>
)</td>
                <td><?php echo number_format($_smarty_tpl->tpl_vars['comp_sub_total_list']->value[$_smarty_tpl->tpl_vars['key']->value]->sub_total_other,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['comp_sub_total_list']->value[$_smarty_tpl->tpl_vars['key']->value]->sub_total_other_fe,2,'.','');?>
)</td>
                <td>&nbsp;</td>
            </tr>
        <?php } ?>
    </tbody>
    <tfoot>
        <?php  $_smarty_tpl->tpl_vars['conItem'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['conItem']->_loop = false;
 $_smarty_tpl->tpl_vars['conKey'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['contingency_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['conItem']->key => $_smarty_tpl->tpl_vars['conItem']->value) {
$_smarty_tpl->tpl_vars['conItem']->_loop = true;
 $_smarty_tpl->tpl_vars['conKey']->value = $_smarty_tpl->tpl_vars['conItem']->key;
?>
        <tr>
            <td colspan="3"><?php if ($_smarty_tpl->tpl_vars['conKey']->value=="Physical Contingency") {?>(c)<?php } elseif ($_smarty_tpl->tpl_vars['conKey']->value=="Price Contingency") {?>(d)<?php }?> <?php echo $_smarty_tpl->tpl_vars['conItem']->value->economic_subcode_name;?>
</td>
            <td>&nbsp;</td>
            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->qty;?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->total_cost;?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->gob;?>
<br>(<?php echo $_smarty_tpl->tpl_vars['conItem']->value->gob_fe;?>
)</td>
            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->rpa_through_gob;?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->rpa_special_account;?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->dpa;?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->own_fund;?>
<br>(<?php echo $_smarty_tpl->tpl_vars['conItem']->value->own_fund_fe;?>
)</td>
            <td><?php echo $_smarty_tpl->tpl_vars['conItem']->value->other;?>
<br>(<?php echo $_smarty_tpl->tpl_vars['conItem']->value->other_fe;?>
)</td>
            <td><?php $_smarty_tpl->tpl_vars["con_percentage_of_project"] = new Smarty_variable($_smarty_tpl->tpl_vars['conItem']->value->total_cost/$_smarty_tpl->tpl_vars['basicInfo']->value->total_cost*100, null, 0);?><?php echo number_format($_smarty_tpl->tpl_vars['con_percentage_of_project']->value,2,'.','');?>
%</td>
        </tr>
        <?php } ?>
        <tr>
            <td colspan="5">Grand Total (a+b+c+d)</td>
            <td><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->total_cost,2,'.','');?>
</td>
            <td><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->gob_cost,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->gob_fe_cost,2,'.','');?>
)</td>
            <td><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->pa_through_gob_cost,2,'.','');?>
</td>
            <td><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->pa_spc_acnt_cost,2,'.','');?>
</td>
            <td><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->pa_dpa_cost,2,'.','');?>
</td>
            <td><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->own_fund_cost,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->own_fund_fe_cost,2,'.','');?>
)</td>
            <td><?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->other_cost,2,'.','');?>
<br>(<?php echo number_format($_smarty_tpl->tpl_vars['basicInfo']->value->other_fe_cost,2,'.','');?>
)</td>
            <td>&nbsp;</td>
        </tr>
    </tfoot>
</table>

<table cellspacing="0" width="100%" style='font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; font-size: 12px;' border="0">
    <tr>
        <td width="5%">10.0 </td>
        <td colspan="3">Log Frame: </td>
    </tr>
    <tr>
        <td width="5%">&nbsp;</td>
        <td width="40%">Planned date for project completion </td>
        <td width="1%">: </td>
        <td width="54%"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->date_of_completion;?>
</td>
    </tr>
    <tr>
        <td width="5%">&nbsp;</td>
        <td width="40%">Date of this summary preparation: </td>
        <td width="1%">: </td>
        <td width="54%"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->date_of_logframe_summary_preparation;?>
</td>
    </tr>
</table>
<table  cellspacing="0" width="100%" style='font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; font-size: 12px;' border="1">
    <thead>
        <tr>
            <th width="8%"></th>
            <th width="23%">Narrative Summary</th>
            <th width="23%">Objectively Verifiable Indecators(OVI)</th>
            <th width="23%">Means of Verifications(MOV)</th>
            <th width="23%">Important Assumptions(IA)</th>
        </tr>
    </thead>

    <tbody>
        <tr> 
            <td width="8%" valign="top">Goal</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->goal_summary;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->goal_ovi;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->goal_mov;?>
</td>
            <td width="23%" valign="top">&nbsp;</td>
        </tr>
        <tr> 
            <td width="8%" valign="top">Objective/<br>Purpose</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->objective_summary;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->objective_ovi;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->objective_mov;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->objective_ai;?>
</td>
        </tr>
        <tr> 
            <td width="8%" valign="top">Output</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->output_summary;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->output_ovi;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->output_mov;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->output_ai;?>
</td>
        </tr>
        <tr> 
            <td width="8%" valign="top">Input</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->input_summary;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->input_ovi;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->input_mov;?>
</td>
            <td width="23%" valign="top"><?php echo $_smarty_tpl->tpl_vars['logframe']->value->input_ai;?>
</td>
        </tr>
    </tbody>
</table>

<table cellspacing="0" width="100%" style='font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; font-size: 12px;' border="0">
    <tr>
        <td width="5%">11.0 </td>
        <td colspan="3">Project Management</td>
    </tr>
    <tr>
        <td width="5%">&nbsp;</td>
        <td width="40%">11.1 Project Management Setup</td>
        <td width="1%">: </td>
        <td width="54%">Annexure-II</td>
    </tr>
    <tr>
        <td width="5%">&nbsp;</td>
        <td width="40%" valign="top">11.2 Implementation Arrangement </td>
        <td width="1%" valign="top">: </td>
        <td width="54%" valign="top"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->implementation_arrangement;?>
</td>
    </tr>
    <tr>
        <td width="5%">&nbsp;</td>
        <td width="40%">11.3 Attach Procurement Plan </td>
        <td width="1%">: </td>
        <td width="54%">Annexure-III(A) , Annexure III(B), Annexure III(C)</td>
    </tr>
    <tr>
        <td width="5%">12.0 </td>
        <td width="40%">Year wise financial and physical target plan</td>
        <td width="1%">: </td>
        <td width="54%">Annexure-IV</td>
    </tr>
    <tr>
        <td width="5%" valign="top">13.0 </td>
        <td width="40%" valign="top">After completion, whether the project needs to be transferred to revenue budget</td>
        <td width="1%" valign="top">: </td>
        <td width="54%" valign="top"><?php echo $_smarty_tpl->tpl_vars['basicInfo']->value->after_completion;?>
</td>
    </tr>
</table><?php }} ?>
