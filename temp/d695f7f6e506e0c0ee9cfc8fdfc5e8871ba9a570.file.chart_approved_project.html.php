<?php /* Smarty version Smarty-3.1.17, created on 2014-10-24 16:32:43
         compiled from "D:\xampp2\htdocs\pps2\app_contents\chart\chart_approved_project.html" */ ?>
<?php /*%%SmartyHeaderCode:22267544a630ba608f6-25684511%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd695f7f6e506e0c0ee9cfc8fdfc5e8871ba9a570' => 
    array (
      0 => 'D:\\xampp2\\htdocs\\pps2\\app_contents\\chart\\chart_approved_project.html',
      1 => 1414084777,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '22267544a630ba608f6-25684511',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
    'thisyear' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_544a630baa2c77_69858251',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_544a630baa2c77_69858251')) {function content_544a630baa2c77_69858251($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'D:/xampp2/htdocs/pps2/ext/smarty3/libs/plugins\\modifier.date_format.php';
?><div id="main-content" class="clearfix">
    
					
					<div id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">Home</a><span class="divider"><i class="icon-angle-right"></i></span></li>
							<li><a href="#">Chart</a> <span class="divider"><i class="icon-angle-right"></i></span></li>
							<li class="active">Approved Project Funding</li>
						</ul><!--.breadcrumb-->

						
					</div><!--#breadcrumbs-->



<div id="page-content" class="clearfix">
					
    <div class="page-header position-relative">
	<h1>Approved Project Funding <small><i class="icon-double-angle-right"></i>Chart</small></h1>
    </div><!--/page-header-->

						

<div class="row-fluid">
<!-- PAGE CONTENT BEGINS HERE -->


<form class="form-horizontal" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">
	
    <div class="well">
            
            <div class="controls">
                Year :- 
                    <?php $_smarty_tpl->tpl_vars['thisyear'] = new Smarty_variable(smarty_modifier_date_format(time(),"%Y"), null, 0);?>
                    <?php $_smarty_tpl->tpl_vars['endYear'] = new Smarty_variable($_smarty_tpl->tpl_vars['thisyear']->value-10, null, 0);?>
                    <select id="year" name="year">
                        <option value="all">All</option>
                        <?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['name'] = 'yearValue';
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['thisyear']->value+1) ? count($_loop) : max(0, (int) $_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['max'] = (int) 10;
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['step'] = ((int) -1) == 0 ? 1 : (int) -1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['show'] = true;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['max'] < 0)
    $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['total'] = min(ceil(($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['step'] > 0 ? $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['loop'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['start'] : $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['start']+1)/abs($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['step'])), $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['max']);
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['yearValue']['total']);
?>
                            <option value="<?php echo $_smarty_tpl->getVariable('smarty')->value['section']['yearValue']['index'];?>
">
                                <?php echo $_smarty_tpl->getVariable('smarty')->value['section']['yearValue']['index'];?>

                            </option>
                        <?php endfor; endif; ?>
                    </select>
                <button class="btn btn-small btn-info" onclick="javascript:void(0)">Search </button>
            </div>
    </div>
    <div class="row-fluid">
        <div id="container" style="height: 400px"></div>  
      
    </div>    
</form>
	   
<!-- PAGE CONTENT ENDS HERE -->
</div><!--/row-->
	
</div><!--/#page-content-->

</div><!-- #main-content -->

<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse">
        <i class="icon-double-angle-up icon-only"></i>
</a>


<!-- basic scripts -->
<script src="/app_contents/standard/template/assets/js/jquery.min.js"></script>
<script type="text/javascript">
window.jQuery || document.write("<script src='/app_contents/standard/template/assets/js/jquery-1.9.1.min.js'>\x3C/script>");
</script>

<script src="/app_contents/standard/template/assets/js/bootstrap.min.js"></script>        


<script src="/ext/highcharts/js/highcharts.js"></script>
<script src="/ext/highcharts/js/highcharts-3d.js"></script>
<script src="/ext/highcharts/js/modules/exporting.js"></script>

<!-- page specific plugin scripts -->

<!--[if lt IE 9]>
<script type="text/javascript" src="/app_contents/standard/template/assets/js/excanvas.min.js"></script>
<![endif]-->

<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery-ui-1.10.2.custom.min.js"></script>

<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.ui.touch-punch.min.js"></script>

<script type="text/javascript" src="/app_contents/standard/template/assets/js/chosen.jquery.min.js"></script>


<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.validate.min.js"></script>

<!-- ace scripts -->
<script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
<script src="/app_contents/standard/template/assets/js/ace.min.js"></script>
<script>

 $(function () {
    $('#container').highcharts({

        chart: {
            type: 'column',
            options3d: {
                enabled: true,
                alpha: 15,
                beta: 15,
                viewDistance: 25,
                depth: 40
            },
            marginTop: 80,
            marginRight: 40
        },

        title: {
            text: 'Project Funding'
        },

        xAxis: {
            categories: ['2014', '2013', '2012', '2011', '2010']
        },

        yAxis: {
            allowDecimals: false,
            min: 0,
            title: {
                text: 'in lak taka'
            }
        },

        tooltip: {
            headerFormat: '<b>{point.key}</b><br>',
            pointFormat: '<span style="color:{series.color}">\u25CF</span> {series.name}: {point.y}'
        },

        plotOptions: {
            column: {
                stacking: 'normal',
                depth: 40
            }
        },
        credits: {
                enabled: false
            },

        series: [{
            name: 'GOB',
            data: [554, 334, 434, 247, 200],
            stack: '1'
        }, {
            name: 'Project Aid',
            data: [345, 432, 234, 262, 550],
            stack: '2'
        }, {
            name: 'Own Fund',
            data: [234, 53, 456, 652, 150],
            stack: '3'
        }, {
            name: 'Other',
            data: [309, 120, 434, 44, 133],
            stack: '4'
        }]
    });
});


</script>    
<?php }} ?>
