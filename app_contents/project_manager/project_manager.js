function createReport(procurement_category)
{
    var PI          = $('#PI').val();
    var report_type = $('#report_type').val();
    
    if (report_type)
    {
        location.href = 'http://'+document.domain+'/app/project_manager/project_manager.php?cmd=annexIIIa&PI='+PI+
                    '&report_type='+report_type+'&procurement_category='+procurement_category;
    }
}
		
            $(function() {
                    $('#id-disable-check').on('click', function() {
                            var inp = $('#form-input-readonly').get(0);
                            if(inp.hasAttribute('disabled')) {
                                    inp.setAttribute('readonly' , 'true');
                                    inp.removeAttribute('disabled');
                                    inp.value="This text field is readonly!";
                            }
                            else {
                                    inp.setAttribute('disabled' , 'disabled');
                                    inp.removeAttribute('readonly');
                                    inp.value="This text field is disabled!";
                            }
                    });


                    $(".chzn-select").chosen(); 

                    $(".chzn-select-deselect").chosen({allow_single_deselect:true}); 



                    $('textarea[class*=autosize]').autosize({append: "\n"});
                    $('textarea[class*=limited]').each(function() {
                            var limit = parseInt($(this).attr('data-maxlength')) || 100;
                            $(this).inputlimiter({
                                    "limit": limit,
                                    remText: '%n character%s remaining...',
                                    limitText: 'max allowed : %n.'
                            });
                    });

                    $.mask.definitions['~']='[+-]';
                    $('.input-mask-date').mask('99/99/9999');
                    $('.input-mask-phone').mask('(999) 999-9999');
                    $('.input-mask-eyescript').mask('~9.99 ~9.99 999');
                    $(".input-mask-product").mask("a*-999-a999",{placeholder:" ",completed:function(){alert("You typed the following: "+this.val());}});



                    $( "#input-size-slider" ).css('width','200px').slider({
                            value:1,
                            range: "min",
                            min: 1,
                            max: 6,
                            step: 1,
                            slide: function( event, ui ) {
                                    var sizing = ['', 'input-mini', 'input-small', 'input-medium', 'input-large', 'input-xlarge', 'input-xxlarge'];
                                    var val = parseInt(ui.value);
                                    $('#form-field-4').attr('class', sizing[val]).val('.'+sizing[val]);
                            }
                    });

                    $( "#input-span-slider" ).slider({
                            value:1,
                            range: "min",
                            min: 1,
                            max: 11,
                            step: 1,
                            slide: function( event, ui ) {
                                    var val = parseInt(ui.value);
                                    $('#form-field-5').attr('class', 'span'+val).val('.span'+val).next().attr('class', 'span'+(12-val)).val('.span'+(12-val));
                            }
                    });


                    var $tooltip = $("<div class='tooltip right in' style='display:none;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>").appendTo('body');
                    $( "#slider-range" ).css('height','200px').slider({
                            orientation: "vertical",
                            range: true,
                            min: 0,
                            max: 100,
                            values: [ 17, 67 ],
                            slide: function( event, ui ) {
                                    var val = ui.values[$(ui.handle).index()-1]+"";

                                    var pos = $(ui.handle).offset();
                                    $tooltip.show().children().eq(1).text(val);		
                                    $tooltip.css({top:pos.top - 10 , left:pos.left + 18});

                                    //$(this).find('a').eq(which).attr('data-original-title' , val).tooltip('show');
                            }
                    });
                    $('#slider-range a').tooltip({placement:'right', trigger:'manual', animation:false}).blur(function(){
                            $tooltip.hide();
                            //$(this).tooltip('hide');
                    });
                    //$('#slider-range a').tooltip({placement:'right', animation:false});

                    $( "#slider-range-max" ).slider({
                            range: "max",
                            min: 1,
                            max: 10,
                            value: 2,
                            //slide: function( event, ui ) {
                            //	$( "#amount" ).val( ui.value );
                            //}
                    });
                    //$( "#amount" ).val( $( "#slider-range-max" ).slider( "value" ) );

                    $( "#eq > span" ).css({width:'90%', float:'left', margin:'15px'}).each(function() {
                            // read initial values from markup and remove that
                            var value = parseInt( $( this ).text(), 10 );
                            $( this ).empty().slider({
                                    value: value,
                                    range: "min",
                                    animate: true

                            });
                    });


                    $('#id-input-file-1 , #id-input-file-2').ace_file_input({
                            no_file:'No File ...',
                            btn_choose:'Choose',
                            btn_change:'Change',
                            droppable:false,
                            onchange:null,
                            thumbnail:false //| true | large
                            //whitelist:'gif|png|jpg|jpeg'
                            //blacklist:'exe|php'
                            //onchange:''
                            //
                    });

                    $('#id-input-file-3').ace_file_input({
                            style:'well',
                            btn_choose:'Drop files here or click to choose',
                            btn_change:null,
                            no_icon:'icon-cloud-upload',
                            droppable:true,
                            onchange:null,
                            thumbnail:'small',
                            before_change:function(files, dropped) {
                                    /**
                                    if(files instanceof Array || (!!window.FileList && files instanceof FileList)) {
                                            //check each file and see if it is valid, if not return false or make a new array, add the valid files to it and return the array
                                            //note: if files have not been dropped, this does not change the internal value of the file input element, as it is set by the browser, and further file uploading and handling should be done via ajax, etc, otherwise all selected files will be sent to server
                                            //example:
                                            var result = []
                                            for(var i = 0; i < files.length; i++) {
                                                    var file = files[i];
                                                    if((/^image\//i).test(file.type) && file.size < 102400)
                                                            result.push(file);
                                            }
                                            return result;
                                    }
                                    */
                                    return true;
                            }
                            /*,
                            before_remove : function() {
                                    return true;
                            }*/

                    }).on('change', function(){
                            //console.log($(this).data('ace_input_files'));
                            //console.log($(this).data('ace_input_method'));
                    });


                    $('#spinner1').ace_spinner({value:0,min:0,max:200,step:10, btn_up_class:'btn-info' , btn_down_class:'btn-info'})
                    .on('change', function(){
                            //alert(this.value)
                    });
                    $('#spinner2').ace_spinner({value:0,min:0,max:10000,step:100, icon_up:'icon-caret-up', icon_down:'icon-caret-down'});
                    $('#spinner3').ace_spinner({value:0,min:-100,max:100,step:10, icon_up:'icon-plus', icon_down:'icon-minus', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});


                    /**
                    var stubDataSource = {
                    data: function (options, callback) {

                            setTimeout(function () {
                                    callback({
                                            data: [
                                                    { name: 'Test Folder 1', type: 'folder', additionalParameters: { id: 'F1' } },
                                                    { name: 'Test Folder 1', type: 'folder', additionalParameters: { id: 'F2' } },
                                                    { name: 'Test Item 1', type: 'item', additionalParameters: { id: 'I1' } },
                                                    { name: 'Test Item 2', type: 'item', additionalParameters: { id: 'I2' } }
                                            ]
                                    });
                            }, 0);

                    }
                    };
                    $('#MyTree').tree({ dataSource: stubDataSource , multiSelect:true })
                    */

                    $('.date-picker').datepicker();


            });


            $(function() {

    $('[data-rel=tooltip]').tooltip();

    $(".chzn-select").css('width','150px').chosen({allow_single_deselect:true , no_results_text: "No such state!"})
    .on('change', function(){
            $(this).closest('form').validate().element($(this));
    }); 


    var $validation = false;
    $('#fuelux-wizard').ace_wizard().on('change' , function(e, info){
            if(info.step == 1 && $validation) {
                    if(!$('#validation-form').valid()) return false;
            }
    }).on('finished', function(e) {
            bootbox.dialog("Thank you! Your information was successfully saved!", [{
                    "label" : "OK",
                    "class" : "btn-small btn-primary",
                    }]
            );
    });




    //documentation : http://docs.jquery.com/Plugins/Validation/validate


    $.mask.definitions['~']='[+-]';
    $('#phone').mask('(999) 999-9999');

    jQuery.validator.addMethod("phone", function (value, element) {
            return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
    }, "Enter a valid phone number.");

    $('#validation-form').validate({
            errorElement: 'span',
            errorClass: 'help-inline',
            focusInvalid: true  ,
            rules: {
                    project_title_en: {
                            required: true
                    },
                    project_title_bn: {
                            required: true
                    },
                    date_of_commencement: {
                            required: true
                    },
                    date_of_completion: {
                            required: true
                    },
                    adp_sector: {
                            required: true
                    },
                    adp_sub_sector: {
                            required: true
                    },
                    sector_division: {
                            required: true
                    },
                    'ministries[]': {
                            required: true
                    },
                    'agencies[]': {
                            required: true
                    },
                    'location_divisions[]': {
                            required: true
                    },


                    project_type: {
                            required: true
                    }
                    /*
                    ministry: {
                            required: true
                    },
                    implementing_agency: {
                            required: true
                    },
                    location_mulite: {
                            required: true
                    },
                    partner_mulite: {
                            required: true
                    },
                    implementing_period: {
                            required: true
                    }*/

            },

            messages: {
                    email: {
                            required: "Please provide a valid email.",
                            email: "Please provide a valid email."
                    },
                    password: {
                            required: "Please specify a password.",
                            minlength: "Please specify a secure password."
                    },
                    subscription: "Please choose at least one option",
                    gender: "Please choose gender",
                    agree: "Please accept our policy"
            },

            invalidHandler: function (event, validator) { //display error alert on form submit   
                    $('.alert-error', $('.login-form')).show();
            },

            highlight: function (e) {
                    $(e).closest('.control-group').removeClass('info').addClass('error');
            },

            success: function (e) {
                    $(e).closest('.control-group').removeClass('error').addClass('info');
                    $(e).remove();
            },

            errorPlacement: function (error, element) {
                    if(element.is(':checkbox') || element.is(':radio')) {
                            var controls = element.closest('.controls');
                            if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
                            else error.insertAfter(element.nextAll('.lbl').eq(0));
                    } 
                    else if(element.is('.chzn-select')) {
                            error.insertAfter(element.nextAll('[class*="chzn-container"]').eq(0));
                    }
                    else error.insertAfter(element);
            },

            submitHandler: function (form) {
                form.submit();
            },
            invalidHandler: function (form) {
            }
    });


    $('#validation-form-location').validate({
            errorElement: 'span',
            errorClass: 'help-inline',
            focusInvalid: true  ,
            rules: {

                    'location_divisions[]': {
                            required: true
                    }

            },

            invalidHandler: function (event, validator) { //display error alert on form submit   
                    $('.alert-error', $('.login-form')).show();
            },

            highlight: function (e) {
                    $(e).closest('.control-group').removeClass('info').addClass('error');
            },

            success: function (e) {
                    $(e).closest('.control-group').removeClass('error').addClass('info');
                    $(e).remove();
            },

            errorPlacement: function (error, element) {
                    if(element.is(':checkbox') || element.is(':radio')) {
                            var controls = element.closest('.controls');
                            if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
                            else error.insertAfter(element.nextAll('.lbl').eq(0));
                    } 
                    else if(element.is('.chzn-select')) {
                            error.insertAfter(element.nextAll('[class*="chzn-container"]').eq(0));
                    }
                    else error.insertAfter(element);
            },

            submitHandler: function (form) {
                form.submit();
            },
            invalidHandler: function (form) {
            }
    });


	
})

function submittForm()
{
    //alert(1);
    //$(".chzn-select").chosen(); 
    //$(".chzn-select").trigger("chosen:updated");
    return true;
}

var COMPONENT_ROW_ID     = 1;
var componentRowIDArray  = [];

function addNewComponent()
{
    var td_economic_code   = '<td><input type="text" name="economic_code_'+COMPONENT_ROW_ID+'" id="economic_code_'+COMPONENT_ROW_ID+'" value="" class="span10" /></td>';
    var td_sub_code        = '<td><input type="text" name="sub_code_'+COMPONENT_ROW_ID+'"      id="sub_code_'+COMPONENT_ROW_ID+'" value="" class="span10" /></td>';
    var td_code_desc       = '<td><input type="text" name="code_desc_'+COMPONENT_ROW_ID+'"     id="code_desc_'+COMPONENT_ROW_ID+'" value="" class="span10" /></td>';
    
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_economic_code+td_sub_code+td_code_desc+'</tr>').appendTo("#economic_code_tbl > tbody");
    
    var td_unit        = '<td><input type="text" name="unit_'+COMPONENT_ROW_ID+'"       id="unit_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    var td_unit_cost   = '<td><input type="text" name="unit_cost_'+COMPONENT_ROW_ID+'"  id="unit_cost_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    var td_qty         = '<td><input type="text" name="qty_'+COMPONENT_ROW_ID+'"        id="qty_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    var td_total_cost  = '<td><input type="text" name="total_cost_'+COMPONENT_ROW_ID+'" id="total_cost_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_unit + td_unit_cost + td_qty + td_total_cost + '</tr>').appendTo("#total_cost_tbl > tbody");
    
    var td_total_gob    = '<td><input type="text" name="total_gob_'+COMPONENT_ROW_ID+'"    id="total_gob_'+COMPONENT_ROW_ID+'" value="" class="span10" /><br>\n\
                               <input type="text" name="total_gob_fe_'+COMPONENT_ROW_ID+'" id="total_gob_fe_'+COMPONENT_ROW_ID+'" value="" class="span10" /></td>';
    var td_pa_gob       = '<td><input type="text" name="pa_gob_'+COMPONENT_ROW_ID+'"       id="pa_gob_'+COMPONENT_ROW_ID+'" value="" class="span10" /></td>';
    var td_pa_spc_acnt  = '<td><input type="text" name="qpa_spc_acnt_'+COMPONENT_ROW_ID+'" id="pa_spc_acnt_'+COMPONENT_ROW_ID+'" value="" class="span10" /></td>';
    var td_pa_dpa       = '<td><input type="text" name="pa_dpa_'+COMPONENT_ROW_ID+'"       id="pa_dpa_'+COMPONENT_ROW_ID+'" value="" class="span10" /></td>';
    var td_own_fund     = '<td><input type="text" name="own_fund_'+COMPONENT_ROW_ID+'"     id="own_fund_'+COMPONENT_ROW_ID+'" value="" class="span10" /><br>\n\
                               <input type="text" name="own_fund_fe_'+COMPONENT_ROW_ID+'"  id="own_fund_fe_'+COMPONENT_ROW_ID+'" value="" class="span10" /></td>';
    var td_other        = '<td><input type="text" name="other_'+COMPONENT_ROW_ID+'"        id="other_'+COMPONENT_ROW_ID+'" value="" class="span10" /><br>\n\
                               <input type="text" name="other_fe_'+COMPONENT_ROW_ID+'"     id="other_fe_'+COMPONENT_ROW_ID+'" value="" class="span10" /></td>';
    
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_total_gob + td_pa_gob + td_pa_spc_acnt + td_pa_dpa + td_own_fund + td_other + '</tr>').appendTo("#total_cost_breakdown_tbl > tbody");
    
    
    componentRowIDArray.push(COMPONENT_ROW_ID);
    COMPONENT_ROW_ID++;
}