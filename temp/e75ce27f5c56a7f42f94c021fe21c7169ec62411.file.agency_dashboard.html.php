<?php /* Smarty version Smarty-3.1.17, created on 2014-08-06 11:53:09
         compiled from "E:\xampp\htdocs\pps2\app_contents\standard\user_home\agency_dashboard.html" */ ?>
<?php /*%%SmartyHeaderCode:1576553cb4896c94707-62050962%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e75ce27f5c56a7f42f94c021fe21c7169ec62411' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\standard\\user_home\\agency_dashboard.html',
      1 => 1407318464,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1576553cb4896c94707-62050962',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53cb4896d53788_84111665',
  'variables' => 
  array (
    'total_project' => 0,
    'project_list' => 0,
    'key' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53cb4896d53788_84111665')) {function content_53cb4896d53788_84111665($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include 'E:/xampp/htdocs/pps2/ext/smarty3/libs/plugins\\modifier.date_format.php';
?><div id="main-content" class="clearfix">
					
    <div id="breadcrumbs">
        <ul class="breadcrumb">
            <li><i class="icon-home"></i> <a href="#">Home</a><span class="divider"><i class="icon-angle-right"></i></span></li>
            <li class="active">Dashboard</li>
        </ul><!--.breadcrumb-->

        <div id="nav-search">
            <form class="form-search">
               
            </form>
        </div><!--#nav-search-->
    </div><!--#breadcrumbs-->
    <div id="page-content" class="clearfix">
        <div class="page-header position-relative">
            <h1>Dashboard <small><i class="icon-double-angle-right"></i> overview & stats</small></h1>
        </div><!--/page-header-->
        
   <div class="row-fluid">
	
	<div class="infobox infobox-green">
		<div class="infobox-icon"><i class="icon-comments"></i></div>
		<div class="infobox-data">
			<span class="infobox-data-number"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['total_project']->value->agency_total)===null||$tmp==='' ? 0 : $tmp);?>
</span>
			<span class="infobox-content">Projects in Agency</span>
		</div>
		
	</div>


	<div class="infobox infobox-blue">
		<div class="infobox-icon"><i class="icon-twitter"></i></div>
		<div class="infobox-data">
			<span class="infobox-data-number"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['total_project']->value->ministry_total)===null||$tmp==='' ? 0 : $tmp);?>
</span>
			<span class="infobox-content">Projects in Ministry</span>
		</div>
	</div>

	<div class="infobox infobox-pink">
		<div class="infobox-icon"><i class="icon-shopping-cart"></i></div>
		<div class="infobox-data">
			<span class="infobox-data-number"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['total_project']->value->commission_total)===null||$tmp==='' ? 0 : $tmp);?>
</span>
			<span class="infobox-content">Project in Commission</span>
		</div>
	</div>

	<div class="infobox infobox-red">
		<div class="infobox-icon"><i class="icon-beaker"></i></div>
		<div class="infobox-data">
			<span class="infobox-data-number"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['total_project']->value->approved_total)===null||$tmp==='' ? 0 : $tmp);?>
</span>
			<span class="infobox-content">Approved Projects</span>
		</div>
	</div>
    </div>    
        
    <div class="hr hr32 hr-dotted"></div>
    
    <div class="row-fluid">      
        <div class="span6">
            <div class="widget-box transparent">
                <div class="widget-header">
                    <h4 class="smaller lighter blue">
                        <i class="icon-th-large"></i>
                        Projects
                    </h4>
                    <div class="widget-toolbar no-border">
                        <ul class="nav nav-tabs" id="myTab2">
                            <li class="active"><a data-toggle="tab" href="#agency_project">Agency Projects</a></li>
                            <li><a data-toggle="tab" href="#myproject">My Projects</a></li>
                            <li><a data-toggle="tab" href="#draft_project1">Draft Projects</a></li>
                        </ul>
                    </div>
                </div>
                <div class="widget-body">
                    <div class="widget-main">
                        <div class="tab-content padding-4">
                            <div id="agency_project" class="tab-pane in active">
                                <div class="slim-scroll" data-height="100">
                                    
                                    <div class="widget-main no-padding">
                                        <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                            <thead>                                               
                                                <tr>
                                                    <th>Sl</th>
                                                    <th><i></i>Project Title</th>
                                                    <th class="hidden-480">Create Date</th>
                                                    <th class="hidden-480">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['project_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                                    <tr>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
</td>
                                                        <td><a href="/app/project_manager/project_manager.php?cmd=ProjectHome&PI=<?php echo base64_encode($_smarty_tpl->tpl_vars['item']->value->id);?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value->project_title_en;?>
</a></td>
                                                        <td class="hidden-480"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['item']->value->create_date,"%e %B, %Y");?>
</td>
                                                        <td class="hidden-480">
                                                            <span class="label <?php if ($_smarty_tpl->tpl_vars['item']->value->status=='Draff') {?>label-info arrowed-right arrowed-in <?php } elseif ($_smarty_tpl->tpl_vars['item']->value->status=='Approved') {?> label-success arrowed-in arrowed-in-right <?php } else { ?> label-important arrowed<?php }?>"><?php echo $_smarty_tpl->tpl_vars['item']->value->status;?>
</span>
                                                        </td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
				  
                            <div id="myproject" class="tab-pane">
                                <div class="slim-scroll" data-height="100">
                                    
                                    <div class="widget-main no-padding">
                                        <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                            <thead>                                               
                                                <tr>
                                                    <th>Sl</th>
                                                    <th><i></i>Project Title</th>
                                                    <th class="hidden-480">Create Date</th>
                                                    <th class="hidden-480">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['project_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                                <?php if ($_smarty_tpl->tpl_vars['item']->value->current_holder==$_SESSION['uid']) {?>
                                                    <tr>
                                                        <td><?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
</td>
                                                        <td><a href="/app/project_manager/project_manager.php?cmd=ProjectHome&PI=<?php echo base64_encode($_smarty_tpl->tpl_vars['item']->value->id);?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value->project_title_en;?>
</a></td>
                                                        <td class="hidden-480"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['item']->value->create_date,"%e %B, %Y");?>
</td>
                                                        <td class="hidden-480">
                                                             <span class="label <?php if ($_smarty_tpl->tpl_vars['item']->value->status=='Draff') {?>label-info arrowed-right arrowed-in <?php } elseif ($_smarty_tpl->tpl_vars['item']->value->status=='Approved') {?> label-success arrowed-in arrowed-in-right <?php } else { ?> label-important arrowed<?php }?>"><?php echo $_smarty_tpl->tpl_vars['item']->value->status;?>
</span>
                                                        </td>
                                                    </tr>
                                                <?php }?>    
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
				  
				  <div id="draft_project1" class="tab-pane">
					<div class="slim-scroll" data-height="100">
						
						<div class="widget-main no-padding">
                                                    <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                                        <thead>                                               
                                                            <tr>
                                                                <th>Sl</th>
                                                                <th><i></i>Project Title</th>
                                                                <th class="hidden-480">Create Date</th>
                                                                <th class="hidden-480">Status</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['project_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
                                                            <?php if ($_smarty_tpl->tpl_vars['item']->value->status=='Draff') {?>
                                                                <tr>
                                                                    <td><?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
</td>
                                                                    <td><a href="/app/project_manager/project_manager.php?cmd=ProjectHome&PI=<?php echo base64_encode($_smarty_tpl->tpl_vars['item']->value->id);?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value->project_title_en;?>
</a></td>
                                                                    <td class="hidden-480"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['item']->value->create_date,"%e %B, %Y");?>
</td>
                                                                    <td class="hidden-480">
                                                                        <span class="label <?php if ($_smarty_tpl->tpl_vars['item']->value->status=='Draff') {?>label-info arrowed-right arrowed-in <?php } elseif ($_smarty_tpl->tpl_vars['item']->value->status=='Approved') {?> label-success arrowed-in arrowed-in-right <?php } else { ?> label-important arrowed<?php }?>"><?php echo $_smarty_tpl->tpl_vars['item']->value->status;?>
</span>
                                                                    </td>
                                                                </tr>
                                                            <?php }?>    
                                                            <?php } ?>
                                                        </tbody>
                                                    </table>
                                                </div>
					</div>
				  </div>
			   </div>

			 </div>
			</div>
		</div>
	</div>
        
        <div class="span6">
		<div class="widget-box transparent">
			<div class="widget-header">
				<h4 class="smaller lighter blue">
                                    <i class="icon-th-large"></i>
                                    Source of Fund
                                </h4>
				<div class="widget-toolbar no-border">
					<ul class="nav nav-tabs" id="myTab2">
						<li class="active"><a data-toggle="tab" href="#home2">Approved Project</a></li>
						<li><a data-toggle="tab" href="#profile2">Draft Project</a></li>
					</ul>
				</div>
			</div>
			<div class="widget-body">
			 <div class="widget-main">
				<div class="tab-content padding-4">
				  <div id="home2" class="tab-pane in active">
					
					<div id="container" style="height: 400px"></div>
					
				  </div>
				  
				  <div id="profile2" class="tab-pane">
					<div class="slim-scroll" data-height="100">
						<b>TAB # 2</b>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
					</div>
				  </div>
				  
				  <div id="info2" class="tab-pane">
					<div class="slim-scroll" data-height="100">
						<b>TAB # 3</b>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
					</div>
				  </div>
			   </div>

			 </div>
			</div>
		</div>
	</div>
        </div>
        
        <div class="span12">
            
        </div>
        
        
    </div><!--/#page-content-->
					  
</div><!-- #main-content -->
                        
<!-- basic scripts -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
window.jQuery || document.write("<script src='/app_contents/standard/template/assets/js/jquery-1.9.1.min.js'>\x3C/script>");
</script>

<script src="/app_contents/standard/template/assets/js/bootstrap.min.js"></script>   

<!-- page specific plugin scripts -->

<!--[if lt IE 9]>
<script type="text/javascript" src="/app_contents/standard/template/assets/js/excanvas.min.js"></script>
<![endif]-->

<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery-ui-1.10.2.custom.min.js"></script>
<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.easy-pie-chart.min.js"></script>


<!-- ace scripts -->
<script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
<script src="/app_contents/standard/template/assets/js/ace.min.js"></script>


<script src="/ext/highcharts/js/highcharts.js"></script>
<script src="/ext/highcharts/js/highcharts-3d.js"></script>
<script src="/ext/highcharts/js/modules/exporting.js"></script>

<script>

    $('.slim-scroll').each(function () 
    {
		var $this = $(this);
		$this.slimScroll({
			height: 400,
			railVisible:true
		});
      });
      
      
      
     $(function () {
    // Set up the chart
    var chart = new Highcharts.Chart({
        chart: {
            renderTo: 'container',
            type: 'column',
            margin: 75,
            options3d: {
                enabled: true,
                alpha: 10,
                beta: 10,
                depth: 50,
                viewDistance: 25
            }
        },
        title: {
            text: 'Total Cost Brackdown'
        },
        subtitle: {
            text: 'Cost brackdown of total approved project'
        },
        plotOptions: {
            column: {
                depth: 25
            }
        },
        series: [{
            data: [229.96, 714.52, 106.4, 229.2, 144.0]
        }]
    });
    

    // Activate the sliders
    $('#R0').on('change', function(){
        chart.options.chart.options3d.alpha = this.value;
        showValues();
        chart.redraw(false);
    });
    $('#R1').on('change', function(){
        chart.options.chart.options3d.beta = this.value;
        showValues();
        chart.redraw(false);
    });

    function showValues() {
        $('#R0-value').html(chart.options.chart.options3d.alpha);
        $('#R1-value').html(chart.options.chart.options3d.beta);
    }
    showValues();
});
      


</script><?php }} ?>
