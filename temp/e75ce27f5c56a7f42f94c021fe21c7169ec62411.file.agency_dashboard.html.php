<?php /* Smarty version Smarty-3.1.17, created on 2014-07-16 11:22:44
         compiled from "E:\xampp\htdocs\pps2\app_contents\standard\user_home\agency_dashboard.html" */ ?>
<?php /*%%SmartyHeaderCode:257453c631b32c3a87-52421170%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e75ce27f5c56a7f42f94c021fe21c7169ec62411' => 
    array (
      0 => 'E:\\xampp\\htdocs\\pps2\\app_contents\\standard\\user_home\\agency_dashboard.html',
      1 => 1405502562,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '257453c631b32c3a87-52421170',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_53c631b32f85b2_44550853',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53c631b32f85b2_44550853')) {function content_53c631b32f85b2_44550853($_smarty_tpl) {?><div id="main-content" class="clearfix">
					
    <div id="breadcrumbs">
        <ul class="breadcrumb">
            <li><i class="icon-home"></i> <a href="#">Home</a><span class="divider"><i class="icon-angle-right"></i></span></li>
            <li class="active">Dashboard</li>
        </ul><!--.breadcrumb-->

        <div id="nav-search">
            <form class="form-search">
                <span class="input-icon">
                    <input autocomplete="off" id="nav-search-input" type="text" class="input-small search-query" placeholder="Search ..." />
                    <i id="nav-search-icon" class="icon-search"></i>
                </span>
            </form>
        </div><!--#nav-search-->
    </div><!--#breadcrumbs-->
    <div id="page-content" class="clearfix">
        <div class="page-header position-relative">
            <h1>Dashboard <small><i class="icon-double-angle-right"></i> overview & stats</small></h1>
        </div><!--/page-header-->
        
   <div class="row-fluid">
	<h3 class="header smaller lighter green">Application Buttons</h3>
	<p>
		<a href="#" class="btn btn-app radius-4">
		<i class="icon-cog"></i>
		Default
		<span class="badge badge-pink">+3</span>
		</a>
		
		<a href="#" class="btn btn-app btn-primary no-radius">
		<i class="icon-edit"></i>
		Edit
		<span class="badge badge-warning badge-right">11</span>
		</a>
		
		<a href="#"  class="btn btn-app btn-success">
		<i class="icon-refresh"></i>
		Reload
		</a>
		
		<button class="btn btn-app btn-warning">
		<i class="icon-undo"></i>
		Undo
		</button>

		<a href="#" class="btn btn-app btn-info btn-small no-radius">
		<i class="icon-envelope"></i>
		Mailbox
		<span class="label label-inverse arrowed-in">6+</span>
		</a>
		
		<button class="btn btn-app btn-danger btn-small">
		<i class="icon-trash"></i>
		Delete
		</button>
		
		<button class="btn btn-app btn-purple btn-small">
		<i class="icon-cloud-upload"></i>
		Upload
		</button>
		
	</p>
    </div>     
        
    <div class="row-fluid">      
        <div class="span6">
            <div class="widget-box transparent">
                <div class="widget-header">
                    <h4 class="lighter">Projects</h4>
                    <div class="widget-toolbar no-border">
                        <ul class="nav nav-tabs" id="myTab2">
                            <li class="active"><a data-toggle="tab" href="#myproject">My Projects</a></li>
                            <li><a data-toggle="tab" href="#agency_project">BINA's Projects</a></li>
                            <li><a data-toggle="tab" href="#draft_project1">Draft Projects</a></li>
                        </ul>
                    </div>
                </div>
                <div class="widget-body">
                    <div class="widget-main">
                        <div class="tab-content padding-4">
                            <div id="myproject" class="tab-pane in active">
                                <div class="slim-scroll" data-height="100">
                                    <b>Projects created by me</b>
                                    <div class="widget-main no-padding">
                                        <table id="table_bug_report" class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Sl</th>
                                                    <th><i></i>Project Title</th>
                                                    <th class="hidden-480">Date</th>
                                                    <th class="hidden-480">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="">Alex</td>
                                                    <td><a href="#">alex@email.com</a></td>
                                                    <td class="hidden-480"><span class="label label-warning">Pending</span></td>
                                                    <td class="hidden-480"><span class="label label-warning">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="">Alex</td>
                                                    <td><a href="#">alex@email.com</a></td>
                                                    <td class="hidden-480"><span class="label label-success arrowed-in arrowed-in-right">Approved</span></td>
                                                    <td class="hidden-480"><span class="label label-success arrowed-in arrowed-in-right">Approved</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="">Alex</td>
                                                    <td><a href="#">alex@email.com</a></td>
                                                    <td class="hidden-480"><span class="label label-important arrowed">Pending</span></td>
                                                    <td class="hidden-480"><span class="label label-important arrowed">Pending</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
				  
                            <div id="agency_project" class="tab-pane">
                                <div class="slim-scroll" data-height="100">
                                    <b>TAB # 2</b>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
                                </div>
                            </div>
				  
				  <div id="draft_project1" class="tab-pane">
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
        
        <div class="span6">
		<div class="widget-box transparent">
			<div class="widget-header">
				<h4 class="lighter">Source of Fund</h4>
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
					<div class="slim-scroll" data-height="100">
						<b>TAB # 1</b>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque commodo massa sed ipsum porttitor facilisis. Nullam interdum massa vel nisl fringilla sed viverra erat tincidunt. Phasellus in ipsum velit. Maecenas id erat vel sem convallis blandit. Nunc aliquam enim ut arcu aliquet adipiscing. Fusce dignissim volutpat justo non consectetur.
					</div>
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
<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.flot.min.js"></script>
<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.flot.pie.min.js"></script>
<script type="text/javascript" src="/app_contents/standard/template/assets/js/jquery.flot.resize.min.js"></script>

<!-- ace scripts -->
<script src="/app_contents/standard/template/assets/js/ace-elements.min.js"></script>
<script src="/app_contents/standard/template/assets/js/ace.min.js"></script>
<script src="/app_contents/standard/template/assets/js/footer.js"></script>

<script>

    $('.slim-scroll').each(function () 
    {
		var $this = $(this);
		$this.slimScroll({
			height: 200,
			railVisible:true
		});
      });


</script><?php }} ?>
