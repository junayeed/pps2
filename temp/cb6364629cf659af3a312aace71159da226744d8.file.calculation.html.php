<?php /* Smarty version Smarty-3.1.17, created on 2014-08-06 11:56:15
         compiled from "E:\xampp\htdocs\pps2\app_contents\irr_calculator\calculation.html" */ ?>
<?php /*%%SmartyHeaderCode:779653e1fbbf735983-36879831%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cb6364629cf659af3a312aace71159da226744d8' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\irr_calculator\\calculation.html',
      1 => 1407318463,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '779653e1fbbf735983-36879831',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53e1fbbf773d66_75397336',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53e1fbbf773d66_75397336')) {function content_53e1fbbf773d66_75397336($_smarty_tpl) {?><link href="/app_contents/irr_calculator/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css" />


<script language="JavaScript" src="/app_contents/irr_calculator/calculation.js"></script>
<script language="JavaScript" src="/app_contents/irr_calculator/jquery.js"></script>
<script language="JavaScript" src="/app_contents/irr_calculator/ui/jquery.ui.widget.js"></script>
<script language="JavaScript" src="/app_contents/irr_calculator/ui/jquery.ui.position.js"></script>
<script language="JavaScript" src="/app_contents/irr_calculator/ui/jquery.ui.core.js"></script>
<script language="JavaScript" src="/app_contents/irr_calculator/ui/jquery.ui.dialog.js"></script>
<script language="JavaScript" src="/app_contents/irr_calculator/ui/jquery.ui.accordion.js"></script>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type" />





<style>

.table_account  td, th
{
border:1px solid green;
padding: 2px;
background-color:#A4BCE7;
}

.table_account th
{
background-color:green;
color:white;
}

body {
	/*background: #f0f4f6 url(./images/bg_blue.gif) repeat-x;*/
	background-color: #fff;
	color: #3085b3;
  font-family: Arial, Helvetica, sans-serif; /*Georgia, Times New Roman, Times, serif;*/
	font-size: 12px;
  margin-top: 10px;
	text-align: center; /* for IE */
}

table {
	font-size:11px;
	text-align:left;
	margin:0;
	padding:0;
	font-weight:bold;
}

#mainarea {
	padding: 20px;
	background: -moz-linear-gradient(90deg, #fff, #fefefe);
	background: -webkit-gradient(linear, left bottom, left top, from(#fff), to(#fefefe));
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	border-radius: 10px;
/*	background: #fff;*/
	background-color:#ffffff;
	border:#d7d7d7 1px solid;
	width:720px;
}

.result {
	/*color:#3085b3;*/
	padding: 10px;
/*	background: -moz-linear-gradient(90deg, #dceff5, #e9f2f5);*/
	background: 
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	border-radius: 7px;
	background-color: #e9f2f5;
	border:#abd5ff 2px solid;
	width: 690px;
}

.W30 {width:30px;}
.W45 {width:45px;}
.W60 {width:60px;}
.W75 {width:75px;}
.W90 {width:90px;}
.W120 {width:120px;}
.W150 {width:150px;}
.W180 {width:180px;}
.W210 {width:210px;}

.disabled {background-color:#c4e9f5;}

.vis {
	letter-spacing:1px;
	color:#3085b3;
	border:#3085b3 1px solid;
	height:23px;
	padding:1px;
	padding-top:3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
}

.L {text-align:left;}
.C {text-align:center;}
.R {text-align:right;}

.input {
	font: 14px Arial,Helvetica,sans-serif;
}

hr.pop 	{height: 1px; border: solid #abd5ff; border-width: 1px 0 0; }

.notice {
	font: 9px Verdana,Arial,Helvetica,sans-serif;
	text-align:center;
	line-height:12px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	margin:0;
	padding:5px;
	background-color: #fcfdc1;
	border:#8ecfe5 1px solid;
	width:515px;
}

.recommendation {
	font: 9px Verdana,Arial,Helvetica,sans-serif;
	text-align:center;
	line-height:12px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	margin:0;
	padding:5px;
	background-color: #fcfdc1;
	border:#8ecfe5 1px solid;
	width:300px;
}

.textarea{
  color:#555;
  font-size: 2px;
	font: Arial,Helvetica,sans-serif;
	letter-spacing:1;
	border:#3085b3 1px solid;
}

.recommendation_textarea
{
  color:#555;
	font: 11px Arial,Helvetica,sans-serif;
	font-weight: bold;
	letter-spacing:1;
	border:#3085b3 1px solid;
	height:30px;
	width:300px;

}

.mainsubmit {background: url(/app_contents/irr_calculator/button_active.gif) repeat-x;
	font: 12px Arial,Helvetica,sans-serif;
	font-weight: bold;
	letter-spacing:0;
	background-color:#6eab50;
	color:#fff;
	border:#3c7122 1px solid;
	height:23px;
	padding-bottom:2px;
  cursor:pointer;
}
.submit {background: url(/app_contents/irr_calculator/button.gif) repeat-x;
	font: 12px Arial,Helvetica,sans-serif;
	letter-spacing:0;
	background-color:#a6a6a6;
	color:#fff;
	border:#606060 1px solid;
	height:23px;
	padding-bottom:2px;
  cursor:pointer;
}
.shortsubmit 
{
  background: url(/app_contents/irr_calculator/submit.gif);
	border:0px;
	width:20px;
	height:23px;
	padding-bottom:2px;
  cursor:pointer;
}

#demo-frame 
{
  border: 1px solid #DDDDDD;
  clear: right;
  height: 250px;
  overflow: auto;
  position: relative;
  width: 520px;
}

</style>

<center>
<div id="mainarea"> 
   <div class="result">
      <form name="calculationForm" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
" method="POST" onsubmit="return doFormSubmit();" enctype="multipart/form-data">
        
         <!-- <a href="#" onClick="saveData();">Save Data</a>
         <a href="#" onClick="parseData();">Load Data</a>
         <a href="#" onClick="loadDefaultData();">Load Dummy Data</a> -->
         
         <table width="55%" border="0">
            <tr>
               <td>Project Life Time: </td>	
               <td><input type="text" name="project_life_time" id="project_life_time" onchange="createRows();" class="vis input R W60">
               <td>Discounting Factor: </td>		
               <td><input type="text" name="discount_factor" id="discount_factor" class="vis input R W60" onChange="reCalculateDiscountValue();">
            </tr>
         </table>
         
         <hr class="pop">
         
         <table width="75%" border="0" cellspacing="2" cellpadding="0">
            <tbody id="in_attachments"></tbody>
         </table>
         <table width="75%" border="0">
            <tr>
               <td width="100%"><div id="add_new_row" style="display: none"><a href="javascript:void(0)" onCLick="addRow('in_attachments', 1);">Add New Row</a></div></td>
            </tr>
         </table>
         <br />
         <table width="75%" border="0" cellspacing="2" cellpadding="0">
            <tbody id="table_footer"></tbody>
         </table>
         
         <hr class="pop">
         <div class="notice">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
               <tr>
                  <td width="10%" align="center">NPV</td>
                  <td width="16%"><input type="text" name="npv" id="npv" class="disabled vis input R W75" readonly />
                  <td width="10%" align="center">BCR</td>
                  <td width="16%"><input type="text" name="bcr" id="bcr" class="disabled vis input R W75" readonly />	
                  <td width="10%" align="center">IRR</td>
                  <td width="18%"><input type="text" name="irr" id="irr" class="disabled vis input R W75" readonly /> 
                  <td width="26%" align="right"><input class="mainsubmit" name="btnCalculate" value="Calculate" onclick="calculateNPVBCR(); calculateIRR();" type="button"></td>
               </tr>
            </table> 
         </div>
         <br />
         <hr class="pop">
         <div id="recommendation"></div>
         
        

      </form>
   </div>
</div>

</center>
<script>
    
	$(function() {
		var icons = {
			header: "ui-icon-circle-arrow-e",
			headerSelected: "ui-icon-circle-arrow-s"
		};
		
		$( "#accordion" ).accordion({
			icons: icons
		}, {autoHeight: false});
		
	});
    
</script>
<?php }} ?>
