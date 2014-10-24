<?php /* Smarty version Smarty-3.1.17, created on 2014-10-24 16:32:40
         compiled from "D:\xampp2\htdocs\pps2\app_contents\chart\chart.html" */ ?>
<?php /*%%SmartyHeaderCode:24714544a630887a047-45121783%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '056ee548f1ad2dc35aae4261ed89924434e3a5cc' => 
    array (
      0 => 'D:\\xampp2\\htdocs\\pps2\\app_contents\\chart\\chart.html',
      1 => 1414051561,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '24714544a630887a047-45121783',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'SCRIPT_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_544a63088a90d8_33612883',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_544a63088a90d8_33612883')) {function content_544a63088a90d8_33612883($_smarty_tpl) {?><div id="main-content" class="clearfix">
    
					
					<div id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="icon-home"></i> <a href="#">Home</a><span class="divider"><i class="icon-angle-right"></i></span></li>
							<li><a href="#">Chart</a> <span class="divider"><i class="icon-angle-right"></i></span></li>
							<li class="active">Year wise project</li>
						</ul><!--.breadcrumb-->

						
					</div><!--#breadcrumbs-->



<div id="page-content" class="clearfix">
					
    <div class="page-header position-relative">
	<h1>Chart <small><i class="icon-double-angle-right"></i></small></h1>
    </div><!--/page-header-->

						

<div class="row-fluid">
<!-- PAGE CONTENT BEGINS HERE -->


<form class="form-horizontal" id="validation-form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['SCRIPT_NAME']->value;?>
">
	
    <div class="well">
            
            <div class="controls">
                Fiscal Year -To
                <select id="year" name="ministry_id" required>
                     <option value="">--Select--</option>
                     <option value="2014">2014</option>
                     <option value="2013">2013</option>
                </select>    
                From 
                <select id="year" name="ministry_id" required>
                     <option value="">--Select--</option>
                     <option value="2014">2014</option>
                     <option value="2013">2013</option>
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
                                        text: 'Fund Allocation'
                                    },
                                    subtitle: {
                                        text: 'Funding of Approved project'
                                    },
                                    plotOptions: {
                                        column: {
                                            depth: 25
                                        }
                                    },
                                    series: [{
                                        data: [29.9, 71.5, 106.4, 129.2, 144.0]
                                    }],
                                credits: {
                                        enabled: false
                                    }
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
      

                    
                </script>    
<?php }} ?>
