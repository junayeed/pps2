var COMPONENT_ROW_ID       = 1;
var componentRowIDArray    = [];
var componentRowTypeArray  = [];
var YEAR_COUNT             = 1;
var distributionArray      = ['gob_', 'rpa_through_gob_', 'rpa_special_account_', 'dpa_', 'own_fund_', 'other_']; 
var FE_VALUE_ERROR         = false;
var COL_NUMBER             = 14;


function createAnnexIIReport(el)
{
    var PI          = $('#PI').val();
    var report_type = el.value;
    
    if (report_type)
    {
        location.href = 'http://'+document.domain+'/app/project_manager/project_manager.php?cmd=annexII&PI='+PI+
                    '&report_type='+report_type;
    }
}

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

function deleteProjectAttachment(doc_id)
{
    var PI = $('#PI').val();
    
    if ( doConfirm('The attachment will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
    {
        $.ajax
        (
            {                                      
                url: 'http://'+document.domain+'/app/ajax/ajax.php?cmd=deleteattachment',
                data: "doc_id="+doc_id+"&PI="+PI,
                dataType: 'json',
                success: function(responseText)
                {
                    if(responseText)
                    {    
                        $('#table_attachments').find('#tr_attachments_' + doc_id).fadeOut(50,function() 
                        {
                            $('#table_attachments > #tr_attachments_' + doc_id).remove();
                        });

                    }        
                }
            } 
        );
    }
}

function createAnnexVReport()
{
    var PI          = $('#PI').val();
    var report_type = $('#report_type').val();
    
    if (report_type)
    {
        location.href = 'http://'+document.domain+'/app/project_manager/project_manager.php?cmd=annexV&PI='+PI+
                        '&report_type='+report_type;
    }
}

function submittForm()
{
    //alert(1);
    //$(".chzn-select").chosen(); 
    //$(".chzn-select").trigger("chosen:updated");
    return true;
}


function getEconomicCode(elemName, comp_id, com_type)
{
    var str_options = '<option value=""></option>';
    var fieldName   = 'economic_code_id';
    
    for(var i=0; i<economicCodeArr.length; i++)
    {
        if (com_type == economicCodeArr[i].component_type)
        {
            str_options += '<option value="'+economicCodeArr[i].id+'">'+economicCodeArr[i].code+' ['+economicCodeArr[i].code_name+']</option>';
        }
    }
    
    return '<select name='+elemName+' id='+elemName+' class="span12" onchange=\'update_annexure_v('+comp_id+',"'+fieldName+'",this.value); populateEconomicSubCodeList('+comp_id+',this.value)\'  required>' + str_options + '</select>';
}

function update_annexure_v(comp_id,thisField,thisValue)
{
    //alert(comp_id+ '  '+thisField+thisValue)
    var annexID = $('#annex_id_'+comp_id).val();
    //alert(annexID);
    //return;
    $.ajax
    (
        {                                      
            url: 'http://'+document.domain+'/app/ajax/ajax.php?cmd=updateAnnexV',
            data: "annex_id="+annexID+"&thisField="+thisField+'&thisValue='+thisValue,
            dataType: 'json',
            success: function(responseText)
            {
                if(responseText)
                {    
                    //$('#view_attachment_'+elemID).hide();
                    //$('#delete_attachment_'+elemID).hide();
                }        
            }
        } 
    );
    
}

function populateSubCodeDescription(elemID, thisField)
{
    var ttt = economicSubCodeArray.filter(function (thisArray) { return thisArray.id == thisField.value });
    
    $('#code_desc_'+elemID).val(ttt[0].economic_subcode_name);
    
    update_annexure_v(elemID,"economic_subcode_name",ttt[0].economic_subcode_name);
    
}


function populateEconomicSubCodeList(elemID, thisField)
{
    //alert(thisField)
    $('#sub_code_'+elemID).children().remove().end().append('<option value=""></option>');
    for(var i=0; i<economicSubCodeArray.length; i++)
    {
        if (thisField == economicSubCodeArray[i].economic_code_id)
        {
            $('#sub_code_'+elemID).append('<option value="'+economicSubCodeArray[i].id+'">'+economicSubCodeArray[i].sub_code + ' [' + economicSubCodeArray[i].economic_subcode_name + ']</option>');
        }
    }
    
    $('#code_desc_'+elemID).val('');
}

function createEconomicSubCodeDropdown(elemID,thisField)
{
    var fieldName = 'economic_subcode_id';
    
    return '<select name="sub_code_'+elemID+'" id="sub_code_'+elemID+'" class="span12" onChange=\'update_annexure_v('+elemID+',"'+fieldName+'",this.value);populateSubCodeDescription('+elemID+', this);\' required>' +  + '</select>';
}

function populateCategoryWiseComponentSubTotal(comp_type, sub_total_total_cost, sub_total_gob, sub_total_gob_fe, sub_total_rpa_through_gob,
                                               sub_total_rpa_special_account, sub_total_dpa, sub_total_own_fund, sub_total_own_fund_fe, 
                                               sub_total_other, sub_total_other_fe)
{
    var component_type = comp_type.replace(" ", "_");
    
    //alert('Type = ' + component_type + 'Total = ' + sub_total_total_cost);

    $('#'+component_type+'_sub_total_total_cost').val((sub_total_total_cost*1).toMoney(2));
    $('#'+component_type+'_sub_total_gob').val((sub_total_gob*1).toMoney(2));
    $('#'+component_type+'_sub_total_gob_fe').val((sub_total_gob_fe*1).toMoney(2));
    $('#'+component_type+'_sub_total_rpa_through_gob').val((sub_total_rpa_through_gob*1).toMoney(2));
    $('#'+component_type+'_sub_total_rpa_special_account').val((sub_total_rpa_special_account*1).toMoney(2));
    $('#'+component_type+'_sub_total_dpa').val((sub_total_dpa*1).toMoney(2));
    $('#'+component_type+'_sub_total_own_fund').val((sub_total_own_fund*1).toMoney(2));
    $('#'+component_type+'_sub_total_own_fund_fe').val((sub_total_own_fund_fe*1).toMoney(2));
    $('#'+component_type+'_sub_total_other').val((sub_total_other*1).toMoney(2));
    $('#'+component_type+'_sub_total_other_fe').val((sub_total_other_fe*1).toMoney(2));
}

function populateContingency(economic_code_id, economic_subcode_id, economic_subcode_name, qty, total_cost, gob, gob_fe, 
                             rpa_through_gob, rpa_special_account, dpa, own_fund, own_fund_fe, other, other_fe, contingency_id, type)
{
    var contingency_type = type.toLowerCase();
    
    $('#'+contingency_type+'_contigency_qty').val(qty+'%');
    $('#'+contingency_type+'_contigency_total').val( (total_cost*1).toMoney(2) );
    $('#'+contingency_type+'_contigency_gob').val( (gob*1).toMoney(2));
    $('#'+contingency_type+'_contigency_gob_fe').val( (gob_fe*1).toMoney(2));
    $('#'+contingency_type+'_contigency_pa_through_gob').val( (rpa_through_gob*1).toMoney(2));
    $('#'+contingency_type+'_contigency_pa_sp_acnt').val( (rpa_special_account*1).toMoney(2));
    $('#'+contingency_type+'_contigency_pa_dpa').val( (dpa*1).toMoney(2));
    $('#'+contingency_type+'_contigency_own_fund').val( (own_fund*1).toMoney(2));
    $('#'+contingency_type+'_contigency_own_fund_fe').val( (own_fund_fe*1).toMoney(2));
    $('#'+contingency_type+'_contigency_other').val( (other*1).toMoney(2));
    $('#'+contingency_type+'_contigency_other_fe').val( (other_fe*1).toMoney(2));
    $('#'+contingency_type+'_con_id').val(contingency_id);
}

function populateComponentDetails(economic_code_id, economic_subcode_id, economic_subcode_name, unit, unit_cost, qty, total_cost, gob, gob_fe, 
                                  rpa_through_gob, rpa_special_account, dpa, own_fund, own_fund_fe, other, other_fe,annex_id, attachment_path, attachment_id)
{
    var elemID = COMPONENT_ROW_ID - 1;
    
    $('#economic_code_'+elemID).val(economic_code_id);
    
    populateEconomicSubCodeList(elemID, economic_code_id);
    
    $('#sub_code_'+elemID).val(economic_subcode_id);
    $('#code_desc_'+elemID).val(economic_subcode_name.replace(/#%/g,'\n'));
    $('#unit_'+elemID).val(unit);
    $('#unit_cost_'+elemID).val(((total_cost*1)/(qty*1)).toMoney(2));
    $('#qty_'+elemID).val(qty);
    $('#total_cost_'+elemID).val((total_cost*1).toMoney(2));
    $('#total_gob_'+elemID).val((gob*1).toMoney(2));
    $('#total_gob_fe_'+elemID).val((gob_fe*1).toMoney(2));
    $('#pa_gob_'+elemID).val((rpa_through_gob*1).toMoney(2));
    $('#pa_spc_acnt_'+elemID).val((rpa_special_account*1).toMoney(2));
    $('#pa_dpa_'+elemID).val((dpa*1).toMoney(2));
    $('#own_fund_'+elemID).val((own_fund*1).toMoney(2));
    $('#own_fund_fe_'+elemID).val((own_fund_fe*1).toMoney(2));
    $('#other_'+elemID).val((other*1).toMoney(2));
    $('#other_fe_'+elemID).val((other_fe*1).toMoney(2));
    $('#annex_id_'+elemID).val(annex_id);
    $('#attachment_'+elemID).attr('href', $('#attachment_'+elemID).attr('href') + '&annex_id='+annex_id);
    
    if (attachment_path)
    {
        $('#view_attachment_'+elemID).attr('href', attachment_path);
        $('#delete_attachment_'+elemID).attr('onclick', 'deleteEconomicCodeAttachment('+elemID+', '+annex_id + ')');
    }
    else
    {
        $('#view_attachment_'+elemID).hide();
        $('#delete_attachment_'+elemID).hide();
    }    
}

function deleteEconomicCodeAttachment(elemID, annex_id)
{
    var pid  = $('#PI').val();
    
    if ( doConfirm('The attachment will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
    {
        $.ajax
        (
            {                                      
                url: 'http://'+document.domain+'/app/ajax/ajax.php?cmd=delEconCodeattachment',
                data: "annex_id="+annex_id+"&PI="+pid,
                dataType: 'json',
                success: function(responseText)
                {
                    if(responseText)
                    {    
                        $('#view_attachment_'+elemID).hide();
                        $('#delete_attachment_'+elemID).hide();
                    }        
                }
            } 
        );
    }
}


function populateAnnexContingencyDetails(gob, gob_fe, rpa_through_gob, rpa_special_account, dpa, own_fund, own_fund_fe, other, 
                                         other_fe, year, con_details_id, financial_year, i, total,type)
{
    var contingency_type = type.toLowerCase();
    $('#'+contingency_type+'_contigency_gob_'+year).val((gob*1).toMoney(2));
    $('#'+contingency_type+'_contigency_gob_fe_'+year).val((gob_fe*1).toMoney(2));
    $('#'+contingency_type+'_contigency_pa_through_gob_'+year).val((rpa_through_gob*1).toMoney(2));
    $('#'+contingency_type+'_contigency_pa_sp_acnt_'+year).val((rpa_special_account*1).toMoney(2));
    $('#'+contingency_type+'_contigency_pa_dpa_'+year).val((dpa*1).toMoney(2));
    $('#'+contingency_type+'_contigency_own_fund_'+year).val((own_fund*1).toMoney(2));
    $('#'+contingency_type+'_contigency_own_fund_fe_'+year).val((own_fund_fe*1).toMoney(2));
    $('#'+contingency_type+'_contigency_other_'+year).val((other*1).toMoney(2));
    $('#'+contingency_type+'_contigency_other_fe_'+year).val((other_fe*1).toMoney(2));
    $('#'+contingency_type+'_contigency_total_'+year).val((total*1).toMoney(2));
    $('#'+contingency_type+'_contigency_con_id_'+year).val(con_details_id);
}


function populateAnnexComponentDetails(gob, gob_fe, rpa_through_gob, rpa_special_account, dpa, own_fund, own_fund_fe, other, other_fe, year, annex_details_id, financial_year, i, total)
{
    //alert(annex_details_id)
    $('#gob_'+year+'_'+i).val((gob*1).toMoney(2));
    $('#gob_fe_'+year+'_'+i).val((gob_fe*1).toMoney(2));
    $('#rpa_through_gob_'+year+'_'+i).val((rpa_through_gob*1).toMoney(2));
    $('#rpa_special_account_'+year+'_'+i).val((rpa_special_account*1).toMoney(2));
    $('#dpa_'+year+'_'+i).val((dpa*1).toMoney(2));
    $('#own_fund_'+year+'_'+i).val((own_fund*1).toMoney(2));
    $('#own_fund_fe_'+year+'_'+i).val((own_fund_fe*1).toMoney(2));
    $('#other_'+year+'_'+i).val((other*1).toMoney(2));
    $('#other_fe_'+year+'_'+i).val((other_fe*1).toMoney(2));
    $('#annex_details_id_'+year+'_'+i).val(annex_details_id);
    $('#financial_year_'+year).val(financial_year);
    $('#total_'+year+'_'+i).val((total*1).toMoney(2));
}

function populateComponentYearWiseSubtotal(cmp_type,sub_total,gob, gob_fe, rpa_through_gob, rpa_special_account, dpa, own_fund, own_fund_fe, other, other_fe,year)
{
    
    var component_type = cmp_type.replace(' ', '_');
    
    $('#'+component_type+'_sub_total_gob_'+year).val((gob*1).toMoney(2));
    $('#'+component_type+'_sub_total_gob_fe_'+year).val((gob_fe*1).toMoney(2));
    $('#'+component_type+'_sub_total_rpa_through_gob_'+year).val((rpa_through_gob*1).toMoney(2));
    $('#'+component_type+'_sub_total_rpa_special_account_'+year).val((rpa_special_account*1).toMoney(2));
    $('#'+component_type+'_sub_total_dpa_'+year).val((dpa*1).toMoney(2));
    $('#'+component_type+'_sub_total_own_fund_'+year).val((own_fund*1).toMoney(2));
    $('#'+component_type+'_sub_total_own_fund_fe_'+year).val((own_fund_fe*1).toMoney(2));
    $('#'+component_type+'_sub_total_other_'+year).val((other*1).toMoney(2));
    $('#'+component_type+'_sub_total_other_fe_'+year).val((other_fe*1).toMoney(2));
    $('#'+component_type+'_sub_total_total_'+year).val((sub_total*1).toMoney(2));
    
}

function addNewComponent(com_type,buttonClick)
{
    var component_type = com_type.replace(' ', '_');
    ///alert('ID = ' + COMPONENT_ROW_ID + ' Type = ' + component_type);
    var td_delete_code     = '<td><img src="/app_contents/common/images/cross.png" onClick="deleteComponent('+COMPONENT_ROW_ID+',\''+component_type+'\');" class="delete_year_icon" "></td>';
    var td_economic_code   = '<td>' + getEconomicCode("economic_code_"+COMPONENT_ROW_ID, COMPONENT_ROW_ID, com_type) + 
                             '<a id="attachment_'+COMPONENT_ROW_ID+'" class="annexV_attachment" href="/app/project_manager/project_manager.php?cmd=annexV_attachment&PI='+$('#PI').val()+'">\n\
                              <img src="/app_contents/common/images/attachment_add-16.png">\n\
                              </a>\n\
                              <a id="view_attachment_'+COMPONENT_ROW_ID+'" href="javascript:void(0);">\n\
                              <img src="/app_contents/common/images/document_text_accept-16.png" />\n\
                              </a>\n\
                              <a id="delete_attachment_'+COMPONENT_ROW_ID+'" href="javascript:void(0);">\n\
                              <img src="/app_contents/common/images/delete.png" onClick="deleteComponentAttachment();">\n\
                              </a>\n\
                              </td>'; 
    var td_sub_code        = '<td>' + createEconomicSubCodeDropdown(COMPONENT_ROW_ID, 0) + '</td>';
    var td_code_desc       = '<td><textarea name="code_desc_'+COMPONENT_ROW_ID+'" onChange=\'update_annexure_v('+COMPONENT_ROW_ID+',"economic_subcode_name",this.value)\' id="code_desc_'+COMPONENT_ROW_ID+'" class="span12" style="height: 60px;" /></textarea></td>';
    
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_delete_code+ td_economic_code+td_sub_code+td_code_desc+'</tr>').appendTo("#economic_code_tbl > #" + component_type + "_economic_code_content");
    
    var td_unit        = '<td><input type="text" name="unit_'+COMPONENT_ROW_ID+'"   onChange=\'update_annexure_v('+COMPONENT_ROW_ID+',"unit",this.value)\'    id="unit_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    var td_unit_cost   = '<td><input type="text" name="unit_cost_'+COMPONENT_ROW_ID+'"  onChange=\'update_annexure_v('+COMPONENT_ROW_ID+',"unit_cost",this.value);\'  id="unit_cost_'+COMPONENT_ROW_ID+'" value="" class="span12" readonly /></td>';
    var td_qty         = '<td><input type="text" name="qty_'+COMPONENT_ROW_ID+'"      onChange=\'update_annexure_v('+COMPONENT_ROW_ID+',"qty",this.value); calculateUnitCost();\'  id="qty_'+COMPONENT_ROW_ID+'" value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateUnitCost('+COMPONENT_ROW_ID+');" /></td>';
    var td_total_cost  = '<td><input type="text" name="total_cost_'+COMPONENT_ROW_ID+'" id="total_cost_'+COMPONENT_ROW_ID+'" value="" class="span12" readonly /></td>';
    
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_unit + td_unit_cost + td_qty + td_total_cost + '</tr>').appendTo("#total_cost_tbl > #" + component_type + "_total_cost_content");
    
    var td_total_gob    = '<td><input type="text" name="total_gob_'+COMPONENT_ROW_ID+'"    id="total_gob_'+COMPONENT_ROW_ID+'"    value="" class="span12" readonly /><br>\n\
                               <input type="text" name="total_gob_fe_'+COMPONENT_ROW_ID+'" id="total_gob_fe_'+COMPONENT_ROW_ID+'" value="" class="span12" readonly /></td>';
    var td_pa_gob       = '<td><input type="text" name="pa_gob_'+COMPONENT_ROW_ID+'"       id="pa_gob_'+COMPONENT_ROW_ID+'"       value="" class="span12" readonly /></td>';
    var td_pa_spc_acnt  = '<td><input type="text" name="pa_spc_acnt_'+COMPONENT_ROW_ID+'"  id="pa_spc_acnt_'+COMPONENT_ROW_ID+'"  value="" class="span12" readonly /></td>';
    var td_pa_dpa       = '<td><input type="text" name="pa_dpa_'+COMPONENT_ROW_ID+'"       id="pa_dpa_'+COMPONENT_ROW_ID+'"       value="" class="span12" readonly /></td>';
    var td_own_fund     = '<td><input type="text" name="own_fund_'+COMPONENT_ROW_ID+'"     id="own_fund_'+COMPONENT_ROW_ID+'"     value="" class="span12" readonly /><br>\n\
                               <input type="text" name="own_fund_fe_'+COMPONENT_ROW_ID+'"  id="own_fund_fe_'+COMPONENT_ROW_ID+'"  value="" class="span12" readonly /></td>';
    var td_other        = '<td><input type="text" name="other_'+COMPONENT_ROW_ID+'"        id="other_'+COMPONENT_ROW_ID+'"        value="" class="span12" readonly /><br>\n\
                               <input type="text" name="other_fe_'+COMPONENT_ROW_ID+'"     id="other_fe_'+COMPONENT_ROW_ID+'"     value="" class="span12" readonly /></td>';
    
    var td_hidden      = '<input type="hidden" name="annex_id_'+COMPONENT_ROW_ID+'" id="annex_id_'+COMPONENT_ROW_ID+'" value="" >'
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_total_gob + td_pa_gob + td_pa_spc_acnt + td_pa_dpa + td_own_fund + td_other +td_hidden + '</tr>').appendTo("#total_cost_breakdown_tbl > #" + component_type + "_total_cost_breakdown_content");
    
    //$(".chzn-select").chosen();
    componentRowIDArray.push(COMPONENT_ROW_ID);
    componentRowTypeArray.push(com_type);
    $('#component_list').val(componentRowIDArray);
    COMPONENT_ROW_ID++;
    
    var tot_year   = $('#total_year_in_annexv').val();
    
    
    if(buttonClick)   //buttonClick = 1 mean click from the button
    {
        $('#view_attachment_' + COMPONENT_ROW_ID-1).hide();
        $('#delete_attachment_' + COMPONENT_ROW_ID-1).hide();
        
        for(var year=1; year<=tot_year; year++ )
        {
            addYearWiseNewComponentDetailsRow(com_type, year, COMPONENT_ROW_ID-1);
        }
        createComponentRow(COMPONENT_ROW_ID-1,com_type);
    }
    
    
}

function createComponentRow(row_id,com_type)
{
    var pid        = $('#PI').val();
    var domainname = window.location.hostname;
    var tot_year   = $('#total_year_in_annexv').val();
   
    
    $.ajax
    (
        {                                      
            url: 'http://'+domainname+'/app/ajax/ajax.php?cmd=createAnnexVRow',
            data: "totalyear="+tot_year+"&PI="+pid+'&component_type='+com_type,
            dataType: 'json',
            success: function(responseText)
            {
                //alert(responseText)
                if(responseText)
                {    
                    //var tmp  = responseText.split('###');
                    
                   
                    
                    $('#annex_id_'+row_id).val(responseText);
                    $('#attachment_'+row_id).attr("href", $('#attachment_'+row_id).attr("href") + '&annex_id='+responseText);
                    
                     //alert(YEAR_COUNT);
                    
//                    for(var year=1; year<YEAR_COUNT; year++ )
//                    {
//                        $('#annex_details_id_'+year+'_'+row_id).val(tmp[year]);
//                        //alert('#annex_details_id_'+year+'_'+row_id)
//                    }
                    
                    $(".annexV_attachment").fancybox(
                        {
                            'width'          : '75%',
                            'height'	 : '20%',
                            'autoScale'	 : true,
                            'transitionIn'   : 'none',
                            'transitionOut'  : 'none',
                            'topRation'      : 0,
                            'top'            : '20px',
                            'type'   	 : 'iframe'
                        });
                }        
            }
        } 
    );
}

function saveAttachment()
{
    var pid        = $('#PI').val();
    var annex_id   = $('#annex_id').val();
    
    var domainname = window.location.hostname;
    
    var file_data = $('#id-input-file-1').prop('files')[0];   
    var form_data = new FormData();                  
    form_data.append('file', file_data)
    //alert(form_data);   
    
    $.ajax({
                url: 'http://'+domainname+'/app/ajax/ajax.php?cmd=saveAnnexVAttachment&PI=' + pid+'&annex_id='+annex_id,
                dataType: 'text',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,                         
                type: 'post',
                success: function(data){
                    //alert(data); 
                    parent.jQuery.fancybox.close();
                }
     });
   
}

function deleteComponent(elemID,component_type)
{
    var annexID = $('#annex_id_'+elemID).val();
    
    if (annexID)
    {
        if ( doConfirm('The component will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
        {
            $.ajax
            (
                {
                    url: 'project_manager.php?cmd=deletecomponent',
                    data: "annex_id="+annexID,
                    dataType: 'json',
                    success: function(responseText)
                    {
                        if (responseText == '1')
                        {    
                            //alert('here')
                            //COMPONENT_ROW_ID--;
                            
                            removeComponentRow(component_type, elemID);
                        }
                    }    
                }
            );
        }
    }
    else
    {
        if ( doConfirm('The component will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
        {
            removeComponentRow(component_type, elemID);
        }
    }
    
}

function removeComponentRow(component_type, elemID)
{
    $('#economic_code_tbl >  #'+component_type+'_economic_code_content').find('#tr_' + elemID).fadeOut(50,function() 
    {
        $('#economic_code_tbl > #'+component_type+'_economic_code_content > #tr_' + elemID).remove();
    });

    $('#total_cost_tbl > #'+component_type+'_total_cost_content').find('#tr_' + elemID).fadeOut(50,function() 
    {
        $('#total_cost_tbl > #'+component_type+'_total_cost_content > #tr_' + elemID).remove();
    });

    $('#total_cost_breakdown_tbl #'+component_type+'_total_cost_breakdown_content').find('#tr_' + elemID).fadeOut(50,function() 
    {
        $('#total_cost_breakdown_tbl > #'+component_type+'_total_cost_breakdown_content > #tr_' + elemID).remove();
    });

    for(var y=1;y<YEAR_COUNT;y++)   
    {   

        $('#total_cost_breakdown_tbl_'+y+' > #'+component_type+'_total_cost_breakdown_content_'+y).find('#tr_'+y+'_' + elemID).fadeOut(50,function() 
        {

            $('#total_cost_breakdown_tbl_'+y+' > #'+component_type+'_total_cost_breakdown_content_'+y+' > #tr_'+y+'_'+ elemID).remove();
        });
    }

    var index = componentRowIDArray.indexOf(elemID);
    if(index!=-1)
    {
        componentRowIDArray.splice(index, 1);
        componentRowTypeArray.splice(index, 1);

        $('#component_list').val(componentRowIDArray);
    }

    calculateAll();
}


function addNewYear(fromAddButton)
{
    var component_details_breakdown_div = '<div class="total_cost_breakdown_container" id="total_cost_breakdown_container_'+YEAR_COUNT+'">\n\
                                               <i class="icon-exchange" id="toggle_total_cost_breakdown" onClick="toggleFiscalYear('+YEAR_COUNT+');"></i> \n\
                                               <i class="right font10" id="price_unit_'+YEAR_COUNT+'">(in lakh Taka)</i> \n\
                                               <table id="total_cost_breakdown_tbl_'+YEAR_COUNT+'" class="table table-striped table-bordered table-hover table_bug_report">\n\
                                                   <thead>\n\
                                                       <tr>\n\
                                                           <th colspan="7" class="center">Fiscal Year ' + YEAR_COUNT + ': <input type="text" name="financial_year_'+YEAR_COUNT+'" id="financial_year_'+YEAR_COUNT+'" onchange="saveFiscalYear('+YEAR_COUNT+',this.value)" required>\n\
                                                           <img src="/app_contents/common/images/cross.png" onClick="deleteYear();" class="delete_year_icon" id="year_delete_'+YEAR_COUNT+'" style="display: none;"></th>\n\
                                                       </tr>\n\
                                                       <tr>\n\
                                                           <th class="span3 center" rowspan="3">GoB<br />(FE)</th>\n\
                                                           <th class="span1 center" colspan="3">Project Aid</th>\n\
                                                           <th class="span3 center" rowspan="3">Own Fund <br />(FE)</th>\n\
                                                           <th class="span3 center" rowspan="3">Other <br />(FE)</th>\n\
                                                           <th class="span3 center" rowspan="3">Total</th>\n\
                                                       </tr>\n\
                                                       <tr>\n\
                                                           <th class="span1 center" colspan="2">RPA</th>\n\
                                                           <th class="span3 center" rowspan="2">DPA</th>\n\
                                                       </tr>\n\
                                                       <tr>\n\
                                                           <th class="span2 center">Through<br />GoB</th>\n\
                                                           <th class="span2 center">Special<br />Account*</th>\n\
                                                       </tr>\n\
                                                   </thead>\n\
                                                   <tbody id="Revenue_Component_total_cost_breakdown_content_'+YEAR_COUNT+'">\n\
                                                   <tr>\n\
                                                       <td class="H29 CENTER">'+ COL_NUMBER++ +'</td>\n\
                                                       <td class="H29 CENTER">'+ COL_NUMBER++ +'</td>\n\
                                                       <td class="H29 CENTER">'+ COL_NUMBER++ +'</td>\n\
                                                       <td class="H29 CENTER">'+ COL_NUMBER++ +'</td>\n\
                                                       <td class="H29 CENTER">'+ COL_NUMBER++ +'</td>\n\
                                                       <td class="H29 CENTER">'+ COL_NUMBER++ +'</td>\n\
                                                       <td class="H29 CENTER">'+ COL_NUMBER++ +'</td>\n\
                                                   </tr>\n\
                                                   <tr><td colspan="7">Reveue Component&nbsp;</td></tr>\n\
                                                   </tbody>\n\
                                                   <tbody id="Capital_Component_total_cost_breakdown_content_'+YEAR_COUNT+'">\n\
                                                       <tr>\n\
                                                           <td>\n\
                                                               <input type="text" id="Revenue_Component_sub_total_gob_'+YEAR_COUNT+'" name="Revenue_Component_sub_total_gob_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                               <input type="text" id="Revenue_Component_sub_total_gob_fe_'+YEAR_COUNT+'" name="Revenue_Component_sub_total_gob_fe_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                           </td>\n\
                                                           <td><input type="text" id="Revenue_Component_sub_total_rpa_through_gob_'+YEAR_COUNT+'" name="Revenue_Component_sub_total_rpa_through_gob_'+YEAR_COUNT+'" class="span12" readonly ></td>\n\
                                                           <td><input type="text" id="Revenue_Component_sub_total_rpa_special_account_'+YEAR_COUNT+'" name="Revenue_Component_sub_total_rpa_special_account_'+YEAR_COUNT+'" class="span12" readonly ></td>\n\
                                                           <td><input type="text" id="Revenue_Component_sub_total_dpa_'+YEAR_COUNT+'" name="Revenue_Component_sub_total_dpa_'+YEAR_COUNT+'" class="span12" readonly ></td>\n\
                                                           <td>\n\
                                                               <input type="text" id="Revenue_Component_sub_total_own_fund_'+YEAR_COUNT+'" name="Revenue_Component_sub_total_own_fund_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                               <input type="text" id="Revenue_Component_sub_total_own_fund_fe_'+YEAR_COUNT+'" name="Revenue_Component_sub_total_own_fund_fe_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                           </td>\n\
                                                           <td>\n\
                                                               <input type="text" id="Revenue_Component_sub_total_other_'+YEAR_COUNT+'" name="Revenue_Component_sub_total_other_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                               <input type="text" id="Revenue_Component_sub_total_other_fe_'+YEAR_COUNT+'" name="Revenue_Component_sub_total_other_fe_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                           </td>\n\
                                                           <td><input type="text" id="Revenue_Component_sub_total_total_'+YEAR_COUNT+'" name="Revenue_Component_sub_total_total_'+YEAR_COUNT+'" class="span12" readonly ></td>\n\
                                                       </tr>\n\
                                                       <tr><td colspan="7">Capital Component&nbsp;</td></tr>\n\
                                                   </tbody>\n\
                                                   <tfoot>\n\
                                                       <tr  style="background-color: #FFFFFF;">\n\
                                                           <td>\n\
                                                               <input type="text" id="Capital_Component_sub_total_gob_'+YEAR_COUNT+'" name="Capital_Component_sub_total_gob_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                               <input type="text" id="Capital_Component_sub_total_gob_fe_'+YEAR_COUNT+'" name="Capital_Component_sub_total_gob_fe_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                           </td>\n\
                                                           <td><input type="text" id="Capital_Component_sub_total_rpa_through_gob_'+YEAR_COUNT+'" name="Capital_Component_sub_total_rpa_through_gob_'+YEAR_COUNT+'" class="span12" readonly ></td>\n\
                                                           <td><input type="text" id="Capital_Component_sub_total_rpa_special_account_'+YEAR_COUNT+'" name="Capital_Component_sub_total_rpa_special_account_'+YEAR_COUNT+'" class="span12" readonly ></td>\n\
                                                           <td><input type="text" id="Capital_Component_sub_total_dpa_'+YEAR_COUNT+'" name="Capital_Component_sub_total_dpa_'+YEAR_COUNT+'" class="span12" readonly ></td>\n\
                                                           <td>\n\
                                                               <input type="text" id="Capital_Component_sub_total_own_fund_'+YEAR_COUNT+'" name="Capital_Component_sub_total_own_fund_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                               <input type="text" id="Capital_Component_sub_total_own_fund_fe_'+YEAR_COUNT+'" name="Capital_Component_sub_total_own_fund_fe_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                           </td>\n\
                                                           <td>\n\
                                                               <input type="text" id="Capital_Component_sub_total_other_'+YEAR_COUNT+'" name="Capital_Component_sub_total_other_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                               <input type="text" id="Capital_Component_sub_total_other_fe_'+YEAR_COUNT+'" name="Capital_Component_sub_total_other_fe_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                           </td>\n\
                                                           <td>\n\
                                                               <input type="text" id="Capital_Component_sub_total_total_'+YEAR_COUNT+'" name="Capital_Component_sub_total_total_'+YEAR_COUNT+'" class="span12" readonly >\n\
                                                           </td>\n\
                                                       </tr>\n\
                                                         <tr>\n\
                                                            <td>\n\
                                                                <input type="text" class="span12" name="physical_contigency_gob_'+YEAR_COUNT+'" id="physical_contigency_gob_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePhysicalContingency();" />\n\
                                                                <input type="text" class="span12" name="physical_contigency_gob_fe_'+YEAR_COUNT+'" id="physical_contigency_gob_fe_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePhysicalContingency();" />\n\
                                                            </td>\n\
                                                            <td><input type="text" class="span12" name="physical_contigency_pa_through_gob_'+YEAR_COUNT+'" id="physical_contigency_pa_through_gob_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePhysicalContingency();" ></td>\n\
                                                            <td><input type="text" class="span12" name="physical_contigency_pa_sp_acnt_'+YEAR_COUNT+'" id="physical_contigency_pa_sp_acnt_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePhysicalContingency();" ></td>\n\
                                                            <td><input type="text" class="span12" name="physical_contigency_pa_dpa_'+YEAR_COUNT+'" id="physical_contigency_pa_dpa_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePhysicalContingency();" ></td>\n\
                                                            <td>\n\
                                                                <input type="text" class="span12" name="physical_contigency_own_fund_'+YEAR_COUNT+'" id="physical_contigency_own_fund_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePhysicalContingency();" >\n\
                                                                <input type="text" class="span12" name="physical_contigency_own_fund_fe_'+YEAR_COUNT+'" id="physical_contigency_own_fund_fe_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePhysicalContingency();" >\n\
                                                            </td>\n\
                                                            <td>\n\
                                                                <input type="text" class="span12" name="physical_contigency_other_'+YEAR_COUNT+'" id="physical_contigency_other_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePhysicalContingency();" >\n\
                                                                <input type="text" class="span12" name="physical_contigency_other_fe_'+YEAR_COUNT+'" id="physical_contigency_other_fe_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePhysicalContingency();" >\n\
                                                            </td>\n\
                                                            <td><input type="text" class="span12" name="physical_contigency_total_'+YEAR_COUNT+'" id="physical_contigency_total_'+YEAR_COUNT+'" readonly ></td>\n\
                                                        </tr><input type="hidden" id="physical_contigency_con_id_'+YEAR_COUNT+'" name="physical_contigency_con_id_'+YEAR_COUNT+'" value="" >\n\
                                                        <tr>\n\
                                                            <td>\n\
                                                                <input type="text" class="span12" name="price_contigency_gob_'+YEAR_COUNT+'" id="price_contigency_gob_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePriceContingency();" >\n\
                                                                <input type="text" class="span12" name="price_contigency_gob_fe_'+YEAR_COUNT+'" id="price_contigency_gob_fe_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePriceContingency();" >\n\
                                                            </td>\n\
                                                            <td><input type="text" class="span12" name="price_contigency_pa_through_gob_'+YEAR_COUNT+'" id="price_contigency_pa_through_gob_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePriceContingency();" ></td>\n\
                                                            <td><input type="text" class="span12" name="price_contigency_pa_sp_acnt_'+YEAR_COUNT+'" id="price_contigency_pa_sp_acnt_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePriceContingency();" ></td>\n\
                                                            <td><input type="text" class="span12" name="price_contigency_pa_dpa_'+YEAR_COUNT+'" id="price_contigency_pa_dpa_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePriceContingency();" ></td>\n\
                                                            <td>\n\
                                                                <input type="text" class="span12" name="price_contigency_own_fund_'+YEAR_COUNT+'" id="price_contigency_own_fund_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePriceContingency();" >\n\
                                                                <input type="text" class="span12" name="price_contigency_own_fund_fe_'+YEAR_COUNT+'" id="price_contigency_own_fund_fe_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePriceContingency();" >\n\
                                                            </td>\n\
                                                            <td>\n\
                                                                <input type="text" class="span12" name="price_contigency_other_'+YEAR_COUNT+'" id="price_contigency_other_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePriceContingency();" >\n\
                                                                <input type="text" class="span12" name="price_contigency_other_fe_'+YEAR_COUNT+'" id="price_contigency_other_fe_'+YEAR_COUNT+'" onkeypress="return isNumberKey(event);" onChange="calculatePriceContingency();" >\n\
                                                            </td>\n\
                                                            <td><input type="text" class="span12" name="price_contigency_total_'+YEAR_COUNT+'" id="price_contigency_total_'+YEAR_COUNT+'" readonly ></td>\n\
                                                        </tr><input type="hidden" id="price_contigency_con_id_'+YEAR_COUNT+'" name="price_contigency_con_id_'+YEAR_COUNT+'" value="" >\n\
                                                        <tr>\n\
                                                            <td>\n\
                                                                <input type="text" class="span12 bold" name="grand_total_gob_'+YEAR_COUNT+'" id="grand_total_gob_'+YEAR_COUNT+'" readonly>\n\
                                                                <input type="text" class="span12 bold" name="grand_total_gob_fe_'+YEAR_COUNT+'" id="grand_total_gob_fe_'+YEAR_COUNT+'" readonly>\n\
                                                            </td>\n\
                                                            <td>\n\
                                                                <input type="text" class="span12 bold" name="grand_total_through_gob_'+YEAR_COUNT+'" id="grand_total_through_gob_'+YEAR_COUNT+'" readonly>\n\
                                                            </td>\n\
                                                            <td><input type="text" class="span12 bold" name="grand_total_spc_acnt_'+YEAR_COUNT+'" id="grand_total_spc_acnt_'+YEAR_COUNT+'" readonly></td>\n\
                                                            <td><input type="text" class="span12 bold" name="grand_total_dpa_'+YEAR_COUNT+'" id="grand_total_dpa_'+YEAR_COUNT+'" readonly></td>\n\
                                                            <td>\n\
                                                                <input type="text" class="span12 bold" name="grand_total_own_fund_'+YEAR_COUNT+'" id="grand_total_own_fund_'+YEAR_COUNT+'" readonly>\n\
                                                                <input type="text" class="span12 bold" name="grand_total_own_fund_fe_'+YEAR_COUNT+'" id="grand_total_own_fund_fe_'+YEAR_COUNT+'" readonly>\n\
                                                            </td>\n\
                                                            <td>\n\
                                                                <input type="text" class="span12 bold" name="grand_total_other_'+YEAR_COUNT+'" id="grand_total_other_'+YEAR_COUNT+'" readonly>\n\
                                                                <input type="text" class="span12 bold" name="grand_total_other_fe_'+YEAR_COUNT+'" id="grand_total_other_fe_'+YEAR_COUNT+'" readonly>\n\
                                                            </td>\n\
                                                            <td><input type="text" class="span12 bold" name="grand_total_'+YEAR_COUNT+'" id="grand_total_'+YEAR_COUNT+'" readonly></td>\n\
                                                        </tr>\n\
                                                    </tfoot>\n\
                                                </table>\n\
                                           </div>';
    
    var main_div_width = 94;
    var width_increment = 45*YEAR_COUNT;
    $('#annex-container').css('width', main_div_width+width_increment+'%');
    
    $('#annex-container').append(component_details_breakdown_div);
    $('#total_year_in_annexv').val(YEAR_COUNT);
    
     
    
    if(fromAddButton)
    {
        adjustComponentRowPerYear(YEAR_COUNT);
        
        var domainname = window.location.hostname;
        var pid        = $('#PI').val();
        
        var ComLen     = componentRowIDArray.length;
        var annexIDs = '';
        var i;
        for (i = 0; i<ComLen; i++)
        {
            if(i) annexIDs+=',';
            annexIDs+= $('#annex_id_'+componentRowIDArray[i]).val();
        }    
       // alert(annexIDs); 
        
        $.gritter.add
        (
            {
                title: '  A new year has been added successfully.',  // (string | mandatory) the heading of the notification
                text: 'Please scroll to the right to view the new year.',  // (string | mandatory) the text inside the notification
                time: 3000, // hang on the screen for...
                fade_in_speed: 'medium', // how fast notifications fade in (string or int)
                fade_out_speed: 1000, // how fast the notices fade out
                class_name: 'gritter-success'
            }
        );

      

        $.ajax
            (
                {                                      
                    url: 'http://'+domainname+'/app/ajax/ajax.php?cmd=updateYearInAnnexVRow',
                    data: "totalyear="+YEAR_COUNT+"&PI="+pid+"&annexIDS="+annexIDs,
                    dataType: 'json',
                    success: function(responseText)
                    {
                        //alert(responseText)
                        if(responseText)
                        {    
                            //alert(responseText);

                        }        
                    }
                } 
            );
            
        $("#gritter-notice-wrapper").css('left',"35%");
        $("#gritter-notice-wrapper").css('top',"35%");
    }
    YEAR_COUNT++;
    deleteYearIconAdjustment();
}


function saveFiscalYear(year,thisValue)
{
     var domainname = window.location.hostname;
     var pid        = $('#PI').val();
     
     
    $.ajax
            (
                {                                      
                    url: 'http://'+domainname+'/app/ajax/ajax.php?cmd=saveFiscalYear',
                    data: "year="+year+"&PI="+pid+"&financial_year="+thisValue,
                    dataType: 'json',
                    success: function(responseText)
                    {
                        //alert(responseText)
                        if(responseText)
                        {    
                            //alert(responseText);

                        }        
                    }
                } 
            );
}

function calculatePhysicalContingency()
{
    var gob_total=0;
    var gob_fe_total = 0;
    var pa_gob_total = 0;
    var pa_sp_account_total = 0;
    var pa_dpa_total = 0;
    var own_fund_total = 0;
    var own_fund_fe_total = 0;
    var other_total = 0;
    var other_fe_total = 0;
    var contingency_total = 0;
    
    for(var year=1; year<YEAR_COUNT; year++)
    {
        gob_total           += $('#physical_contigency_gob_'+year).val()*1;
        gob_fe_total        += $('#physical_contigency_gob_fe_'+year).val()*1;
        pa_gob_total        += $('#physical_contigency_pa_through_gob_'+year).val()*1;
        pa_sp_account_total += $('#physical_contigency_pa_sp_acnt_'+year).val()*1;
        pa_dpa_total        += $('#physical_contigency_pa_dpa_'+year).val()*1;
        own_fund_total      += $('#physical_contigency_own_fund_'+year).val()*1;
        own_fund_fe_total   += $('#physical_contigency_own_fund_fe_'+year).val()*1;
        other_total         += $('#physical_contigency_other_'+year).val()*1;
        other_fe_total      += $('#physical_contigency_other_fe_'+year).val()*1;
        
        $('#physical_contigency_total_'+year).val( ($('#physical_contigency_gob_'+year).val()*1+
                                                    $('#physical_contigency_pa_through_gob_'+year).val()*1+
                                                    $('#physical_contigency_pa_sp_acnt_'+year).val()*1+
                                                    $('#physical_contigency_pa_dpa_'+year).val()*1+
                                                    $('#physical_contigency_own_fund_'+year).val()*1 + 
                                                    $('#physical_contigency_other_'+year).val()*1).toMoney(2) );
                                                
        contingency_total += $('#physical_contigency_total_'+year).val()*1;
    }    
    
    $('#physical_contigency_gob').val(gob_total.toMoney(2));
    $('#physical_contigency_gob_fe').val(gob_fe_total.toMoney(2));
    $('#physical_contigency_pa_through_gob').val(pa_gob_total.toMoney(2));
    $('#physical_contigency_pa_sp_acnt').val(pa_sp_account_total.toMoney(2));
    $('#physical_contigency_pa_dpa').val(pa_dpa_total.toMoney(2));
    $('#physical_contigency_own_fund').val(own_fund_total.toMoney(2));
    $('#physical_contigency_own_fund_fe').val(own_fund_fe_total.toMoney(2));
    $('#physical_contigency_other').val(other_total.toMoney(2));
    $('#physical_contigency_other_fe').val(other_fe_total.toMoney(2));
    
    $('#physical_contigency_total').val(contingency_total.toMoney(2));
    
    calculateAnnexVGrandTotal(); 
    calculateYearWiseGrandTotal();
}

function calculatePriceContingency()
{
    var gob_total=0;
    var gob_fe_total = 0;
    var pa_gob_total = 0;
    var pa_sp_account_total = 0;
    var pa_dpa_total = 0;
    var own_fund_total = 0;
    var own_fund_fe_total = 0;
    var other_total = 0;
    var other_fe_total = 0;
    var contingency_total = 0;
    
    for(var year=1; year<YEAR_COUNT; year++)
    {
        gob_total           += $('#price_contigency_gob_'+year).val()*1;
        gob_fe_total        += $('#price_contigency_gob_fe_'+year).val()*1;
        pa_gob_total        += $('#price_contigency_pa_through_gob_'+year).val()*1;
        pa_sp_account_total += $('#price_contigency_pa_sp_acnt_'+year).val()*1;
        pa_dpa_total        += $('#price_contigency_pa_dpa_'+year).val()*1;
        own_fund_total      += $('#price_contigency_own_fund_'+year).val()*1;
        own_fund_fe_total   += $('#price_contigency_own_fund_fe_'+year).val()*1;
        other_total         += $('#price_contigency_other_'+year).val()*1;
        other_fe_total      += $('#price_contigency_other_fe_'+year).val()*1;
        
        $('#price_contigency_total_'+year).val( ($('#price_contigency_gob_'+year).val()*1+
                                                 $('#price_contigency_pa_through_gob_'+year).val()*1+
                                                 $('#price_contigency_pa_sp_acnt_'+year).val()*1+
                                                 $('#price_contigency_pa_dpa_'+year).val()*1+
                                                 $('#price_contigency_own_fund_'+year).val()*1 + 
                                                 $('#price_contigency_other_'+year).val()*1).toMoney(2) );
        
        contingency_total += $('#price_contigency_total_'+year).val()*1;
    }    
    
    $('#price_contigency_gob').val(gob_total.toMoney(2));
    $('#price_contigency_gob_fe').val(gob_fe_total.toMoney(2));
    $('#price_contigency_pa_through_gob').val(pa_gob_total.toMoney(2));
    $('#price_contigency_pa_sp_acnt').val(pa_sp_account_total.toMoney(2));
    $('#price_contigency_pa_dpa').val(pa_dpa_total.toMoney(2));
    $('#price_contigency_own_fund').val(own_fund_total.toMoney(2));
    $('#price_contigency_own_fund_fe').val(own_fund_fe_total.toMoney(2));
    $('#price_contigency_other').val(other_total.toMoney(2));
    $('#price_contigency_other_fe').val(other_fe_total.toMoney(2));
    $('#price_contigency_total').val(contingency_total.toMoney(2));
    
    calculateAnnexVGrandTotal();
    calculateYearWiseGrandTotal();
}

function toggleFiscalYear(elemID)
{
    if( $('#total_cost_breakdown_tbl_'+elemID).is(":visible") )
    {
        $('#total_cost_breakdown_tbl_'+elemID).hide("100", function() {$('#total_cost_breakdown_container_'+elemID).css('width', '20px');});
        $('#price_unit_'+elemID).hide();
        //$('#total_cost_breakdown_container_'+elemID).html('Fiscal Year');
        //$('#total_cost_breakdown_container_'+elemID).css('background-color', 'red');
    }
    else
    {
        $('#total_cost_breakdown_tbl_'+elemID).show("100", function() {$('#total_cost_breakdown_container_'+elemID).css('width', '500px');});
        $('#price_unit_'+elemID).show();
        //$('#total_cost_breakdown_container_'+elemID).css('background-color', '');
    }
}

function adjustComponentRowPerYear(year)
{
    
    //alert(componentRowTypeArray)
    //var component_type = com_type.replace(' ', '_');
    
        for(var i=0; i<componentRowIDArray.length; i++)
        {
                
            var td_total_gob    = '<td><input type="text" name="gob_'+year+'_'+componentRowIDArray[i]+'"                  id="gob_'+year+'_'+componentRowIDArray[i]+'"                 value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');updateComDetail(this.value,\'gob\','+year+','+componentRowIDArray[i]+');" /><br>\n\
                                       <input type="text" name="gob_fe_'+year+'_'+componentRowIDArray[i]+'"               id="gob_fe_'+year+'_'+componentRowIDArray[i]+'"              value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');updateComDetail(this.value,\'gob_fe\','+year+','+componentRowIDArray[i]+');" /></td>';
            var td_pa_gob       = '<td><input type="text" name="rpa_through_gob_'+year+'_'+componentRowIDArray[i]+'"      id="rpa_through_gob_'+year+'_'+componentRowIDArray[i]+'"     value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');updateComDetail(this.value,\'rpa_through_gob\','+year+','+componentRowIDArray[i]+');" /></td>';
            var td_pa_spc_acnt  = '<td><input type="text" name="rpa_special_account_'+year+'_'+componentRowIDArray[i]+'"  id="rpa_special_account_'+year+'_'+componentRowIDArray[i]+'" value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');updateComDetail(this.value,\'rpa_special_account\','+year+','+componentRowIDArray[i]+');" /></td>';
            var td_pa_dpa       = '<td><input type="text" name="dpa_'+year+'_'+componentRowIDArray[i]+'"                  id="dpa_'+year+'_'+componentRowIDArray[i]+'"                 value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');updateComDetail(this.value,\'dpa\','+year+','+componentRowIDArray[i]+');" /></td>';
            var td_own_fund     = '<td><input type="text" name="own_fund_'+year+'_'+componentRowIDArray[i]+'"             id="own_fund_'+year+'_'+componentRowIDArray[i]+'"            value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');updateComDetail(this.value,\'own_fund\','+year+','+componentRowIDArray[i]+');" /><br>\n\
                                       <input type="text" name="own_fund_fe_'+year+'_'+componentRowIDArray[i]+'"          id="own_fund_fe_'+year+'_'+componentRowIDArray[i]+'"         value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');updateComDetail(this.value,\'own_fund_fe\','+year+','+componentRowIDArray[i]+');" /></td>';
            var td_other        = '<td><input type="text" name="other_'+year+'_'+componentRowIDArray[i]+'"                id="other_'+year+'_'+componentRowIDArray[i]+'"               value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');updateComDetail(this.value,\'other\','+year+','+componentRowIDArray[i]+');" /><br>\n\
                                       <input type="text" name="other_fe_'+year+'_'+componentRowIDArray[i]+'"             id="other_fe_'+year+'_'+componentRowIDArray[i]+'"            value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');updateComDetail(this.value,\'other_fe\','+year+','+componentRowIDArray[i]+');" /></td>';
            var td_comp_total   = '<td><input type="text" name="total_'+year+'_'+componentRowIDArray[i]+'"                id="total_'+year+'_'+componentRowIDArray[i]+'"               value="" class="span12" readonly /></td>';
            var td_hidden       = '<input type="hidden"   name="annex_details_id_'+year+'_'+componentRowIDArray[i]+'"     id="annex_details_id_'+year+'_'+componentRowIDArray[i]+'" />';
            
            var component_type = componentRowTypeArray[i].replace(' ', '_');
            
            $('<tr id="tr_'+year+'_'+componentRowIDArray[i]+'">'+ td_total_gob + td_pa_gob + td_pa_spc_acnt + td_pa_dpa 
                                                                + td_own_fund + td_other + td_comp_total + td_hidden 
                                                                +'</tr>').appendTo("#total_cost_breakdown_tbl_"+year+" > #" + component_type+"_total_cost_breakdown_content_"+year);
        }
    
    
    deleteYearIconAdjustment();
}


function addYearWiseNewComponentDetailsRow(com_type, year, elemID)
{
    var component_type = com_type.replace(' ', '_');
    var GOB      = 'gob_';
    var OWNFUND  = 'own_fund_';
    var OTHER    = 'other_';
    
    var td_total_gob    = '<td><input type="text" name="gob_'+year+'_'+elemID+'"                  id="gob_'+year+'_'+elemID+'"                 value="" class="span12" onkeypress="return isNumberKey(event);" onChange="checkFEValue('+year+', '+elemID+',\''+GOB+'\'); updateComDetail(this.value,\'gob\','+year+','+elemID+');" /><br>\n\
                               <input type="text" name="gob_fe_'+year+'_'+elemID+'"               id="gob_fe_'+year+'_'+elemID+'"              value="" class="span12" onkeypress="return isNumberKey(event);" onChange="checkFEValue('+year+', '+elemID+',\''+GOB+'\');updateComDetail(this.value,\'gob_fe\','+year+','+elemID+');" /></td>';
    var td_pa_gob       = '<td><input type="text" name="rpa_through_gob_'+year+'_'+elemID+'"      id="rpa_through_gob_'+year+'_'+elemID+'"     value="" class="span12"  onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');updateComDetail(this.value,\'rpa_through_gob\','+year+','+elemID+');" /></td>';
    var td_pa_spc_acnt  = '<td><input type="text" name="rpa_special_account_'+year+'_'+elemID+'"  id="rpa_special_account_'+year+'_'+elemID+'" value="" class="span12"  onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');updateComDetail(this.value,\'rpa_special_account\','+year+','+elemID+');" /></td>';
    var td_pa_dpa       = '<td><input type="text" name="dpa_'+year+'_'+elemID+'"                  id="dpa_'+year+'_'+elemID+'"                 value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');updateComDetail(this.value,\'dpa\','+year+','+elemID+');" /></td>';
    var td_own_fund     = '<td><input type="text" name="own_fund_'+year+'_'+elemID+'"             id="own_fund_'+year+'_'+elemID+'"            value="" class="span12" onkeypress="return isNumberKey(event);" onChange="checkFEValue('+year+', '+elemID+',\''+OWNFUND+'\');updateComDetail(this.value,\'own_fund\','+year+','+elemID+');" /><br>\n\
                               <input type="text" name="own_fund_fe_'+year+'_'+elemID+'"          id="own_fund_fe_'+year+'_'+elemID+'"         value="" class="span12" onkeypress="return isNumberKey(event);" onChange="checkFEValue('+year+', '+elemID+',\''+OWNFUND+'\');updateComDetail(this.value,\'own_fund_fe\','+year+','+elemID+');" /></td>';
    var td_other        = '<td><input type="text" name="other_'+year+'_'+elemID+'"                id="other_'+year+'_'+elemID+'"               value="" class="span12" onkeypress="return isNumberKey(event);" onChange="checkFEValue('+year+', '+elemID+',\''+OTHER+'\');updateComDetail(this.value,\'other\','+year+','+elemID+');" /><br>\n\
                               <input type="text" name="other_fe_'+year+'_'+elemID+'"             id="other_fe_'+year+'_'+elemID+'"            value="" class="span12" onkeypress="return isNumberKey(event);" onChange="checkFEValue('+year+', '+elemID+',\''+OTHER+'\');updateComDetail(this.value,\'other_fe\','+year+','+elemID+');" /></td>';
    var td_comp_total   = '<td><input type="text" name="total_'+year+'_'+elemID+'"                id="total_'+year+'_'+elemID+'"               value="" class="span12" readonly /></td>';
    var td_hidden       = '<input type="hidden"   name="annex_details_id_'+year+'_'+elemID+'"     id="annex_details_id_'+year+'_'+elemID+'" />';

    $('<tr id="tr_'+year+'_'+elemID+'">'+ td_total_gob + td_pa_gob + td_pa_spc_acnt + td_pa_dpa 
                                                       + td_own_fund + td_other + td_comp_total + td_hidden 
                                                       +'</tr>').appendTo("#total_cost_breakdown_tbl_"+year+" > #" 
                                                       + component_type+"_total_cost_breakdown_content_"+year);
    
}

function updateComDetail(thisValue,thisField,year,elemID)
{
   
    var annexID        = $('#annex_id_'+elemID).val();
    var financial_year = $('#financial_year_'+year).val();
    
    thisValue   = thisValue ? thisValue : 0;
    var PI      = $('#PI').val();
    //alert(thisValue);
    //return;
    $.ajax
    (
        {                                      
            url: 'http://'+document.domain+'/app/ajax/ajax.php?cmd=updateComDetail',
            data: "annex_id="+annexID+"&thisField="+thisField+'&thisValue='+thisValue+'&PI='+PI+'&year_serial='+year+'&financial_year='+financial_year,
            dataType: 'json',
            success: function(responseText)
            {
                if(responseText)
                {    
                    //$('#view_attachment_'+elemID).hide();
                    //$('#delete_attachment_'+elemID).hide();
                }        
            }
        } 
    );
    
    
}

function checkFEValue(yearID, elemID, elemName)
{
    var val_fe = $('#'+elemName+'fe_'+yearID+'_'+elemID).val()*1;
    var val    = $('#'+elemName+yearID+'_'+elemID).val()*1;
    
    if ( val_fe > val )
    {
        highlightColumn(elemName+yearID+'_'+elemID);
        highlightColumn(elemName+'fe_'+yearID+'_'+elemID);
        alert('FE value is greater than original value.');
        setTimeout(function(){ $('#'+elemName+'fe_'+yearID+'_'+elemID).focus(); $('#'+elemName+'fe_'+yearID+'_'+elemID).select();}, 0);
        FE_VALUE_ERROR = true;
    }
    else
    {
        resetColumn(elemName+yearID+'_'+elemID);
        resetColumn(elemName+'fe_'+yearID+'_'+elemID);
    }
     
    calculateComponentYearTotal(yearID, elemID);
}
function deleteYearIconAdjustment()
{
    for (var y=1; y<YEAR_COUNT; y++)
    {   
        // define the last year to put the delete sign for year
        
        if (y == YEAR_COUNT-1)
        {
            // show the delete sign
            $('#year_delete_'+y).show();
            if(y==1)
            {
                $('#year_delete_'+y).hide();
            }    
        }
        else 
        {
            $('#year_delete_'+y).hide();
        }
    } 
}

function deleteYear()
{
    var year    = YEAR_COUNT-1;
    var pid     = $('#PI').val();
    var loc_href = location.href;
    //alert(location.href)
    if ( doConfirm('The component and year details will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
    {
        $.ajax
        (
            {
                url: 'project_manager.php?cmd=deleteyear',
                data: "pid="+pid+"&year_serial="+year,
                dataType: 'json',
                success: function(responseText)
                {
                    // remove the div
                    $('#total_cost_breakdown_container_'+year).remove();
    
                    // decrease the year count value 
                    YEAR_COUNT--;

                    // decrease col counter value
                    COL_NUMBER -= 7;

                    $('#total_year_in_annexv').val(year-1);
                    calculateAll();

                    // adjust the delete sign
                    deleteYearIconAdjustment(); 
                    //return ;
                    location.href = loc_href;
                   
                }    
            }
        );
    }
}

function calculateAll()
{
    calculateComponentTotalGoB_FE();        // calculate year wise total of GoB and FE in the summary table
    calculateComponentTotalProjectAid();    // calculate year wise project aid total  in the summary table
    calculateComponentTotalOwnFundFE();     // calculate year wise total of Own fund and FE in the summary table
    calculateComponentTotalOtherFE(); // calcuate year wise total of Other and FE in the summary table
    
    calculateComponentTotalCost();  // calculate COMPONENT WISE TOTAL COST 
    calculateUnitCost();      // calculate COMPONENT WISE UNIT COST
    
    calculatePhysicalContingency();
    calculatePriceContingency();
    
    calculateYearWiseGrandTotal();
    
    calculateAnnexVGrandTotal();
    
    calculateComponentDetailsSubTotal();
    
    calculateSubTotal();
}

function calculateSubTotal()
{
    var Revenue_Component_sub_total_total_cost = 0, Revenue_Component_sub_total_gob = 0, Revenue_Component_sub_total_gob_fe = 0,
        Revenue_Component_sub_total_rpa_through_gob = 0, Revenue_Component_sub_total_rpa_special_account = 0, Revenue_Component_sub_total_dpa = 0,
        Revenue_Component_sub_total_own_fund = 0, Revenue_Component_sub_total_own_fund_fe = 0, Revenue_Component_sub_total_other = 0,
        Revenue_Component_sub_total_other_fe = 0;

    var Capital_Component_sub_total_total_cost = 0, Capital_Component_sub_total_gob = 0, Capital_Component_sub_total_gob_fe = 0,
        Capital_Component_sub_total_rpa_through_gob = 0, Capital_Component_sub_total_rpa_special_account = 0, Capital_Component_sub_total_dpa = 0,
        Capital_Component_sub_total_own_fund = 0, Capital_Component_sub_total_own_fund_fe = 0, Capital_Component_sub_total_other = 0,
        Capital_Component_sub_total_other_fe = 0;

    for(var i=0; i<componentRowIDArray.length; i++)
    {
        
        if (componentRowTypeArray[i] == 'Revenue Component')
        {
            Revenue_Component_sub_total_total_cost           += $('#total_cost_'+componentRowIDArray[i]).val()*1;
            Revenue_Component_sub_total_gob                  += $('#total_gob_'+componentRowIDArray[i]).val()*1;
            Revenue_Component_sub_total_gob_fe               += $('#total_gob_fe_'+componentRowIDArray[i]).val()*1;
            Revenue_Component_sub_total_rpa_through_gob      += $('#pa_gob_'+componentRowIDArray[i]).val()*1;
            Revenue_Component_sub_total_rpa_special_account  += $('#pa_spc_acnt_'+componentRowIDArray[i]).val()*1;
            Revenue_Component_sub_total_dpa                  += $('#pa_dpa_'+componentRowIDArray[i]).val()*1;
            Revenue_Component_sub_total_own_fund             += $('#own_fund_'+componentRowIDArray[i]).val()*1;
            Revenue_Component_sub_total_own_fund_fe          += $('#own_fund_fe_'+componentRowIDArray[i]).val()*1;
            Revenue_Component_sub_total_other                += $('#other_'+componentRowIDArray[i]).val()*1;
            Revenue_Component_sub_total_other_fe             += $('#other_fe_'+componentRowIDArray[i]).val()*1;
        }
        else
        {
            Capital_Component_sub_total_total_cost           += $('#total_cost_'+componentRowIDArray[i]).val()*1;
            Capital_Component_sub_total_gob                  += $('#total_gob_'+componentRowIDArray[i]).val()*1;
            Capital_Component_sub_total_gob_fe               += $('#total_gob_fe_'+componentRowIDArray[i]).val()*1;
            Capital_Component_sub_total_rpa_through_gob      += $('#pa_gob_'+componentRowIDArray[i]).val()*1;
            Capital_Component_sub_total_rpa_special_account  += $('#pa_spc_acnt_'+componentRowIDArray[i]).val()*1;
            Capital_Component_sub_total_dpa                  += $('#pa_dpa_'+componentRowIDArray[i]).val()*1;
            Capital_Component_sub_total_own_fund             += $('#own_fund_'+componentRowIDArray[i]).val()*1;
            Capital_Component_sub_total_own_fund_fe          += $('#own_fund_fe_'+componentRowIDArray[i]).val()*1;
            Capital_Component_sub_total_other                += $('#other_'+componentRowIDArray[i]).val()*1;
            Capital_Component_sub_total_other_fe             += $('#other_fe_'+componentRowIDArray[i]).val()*1;
        }
    }
    
    $('#Revenue_Component_sub_total_total_cost').val(Revenue_Component_sub_total_total_cost.toMoney(2));
    $('#Revenue_Component_sub_total_gob').val(Revenue_Component_sub_total_gob.toMoney(2));
    $('#Revenue_Component_sub_total_gob_fe').val(Revenue_Component_sub_total_gob_fe.toMoney(2));
    $('#Revenue_Component_sub_total_rpa_through_gob').val(Revenue_Component_sub_total_rpa_through_gob.toMoney(2));
    $('#Revenue_Component_sub_total_rpa_special_account').val(Revenue_Component_sub_total_rpa_special_account.toMoney(2));
    $('#Revenue_Component_sub_total_dpa').val(Revenue_Component_sub_total_dpa.toMoney(2));
    $('#Revenue_Component_sub_total_own_fund').val(Revenue_Component_sub_total_own_fund.toMoney(2));
    $('#Revenue_Component_sub_total_own_fund_fe').val(Revenue_Component_sub_total_own_fund_fe.toMoney(2));
    $('#Revenue_Component_sub_total_other').val(Revenue_Component_sub_total_other.toMoney(2));
    $('#Revenue_Component_sub_total_other_fe').val(Revenue_Component_sub_total_other_fe.toMoney(2));
    
    $('#Capital_Component_sub_total_total_cost').val(Capital_Component_sub_total_total_cost.toMoney(2));
    $('#Capital_Component_sub_total_gob').val(Capital_Component_sub_total_gob.toMoney(2));
    $('#Capital_Component_sub_total_gob_fe').val(Capital_Component_sub_total_gob_fe.toMoney(2));
    $('#Capital_Component_sub_total_rpa_through_gob').val(Capital_Component_sub_total_rpa_through_gob.toMoney(2));
    $('#Capital_Component_sub_total_rpa_special_account').val(Capital_Component_sub_total_rpa_special_account.toMoney(2));
    $('#Capital_Component_sub_total_dpa').val(Capital_Component_sub_total_dpa.toMoney(2));
    $('#Capital_Component_sub_total_own_fund').val(Capital_Component_sub_total_own_fund.toMoney(2));
    $('#Capital_Component_sub_total_own_fund_fe').val(Capital_Component_sub_total_own_fund_fe.toMoney(2));
    $('#Capital_Component_sub_total_other').val(Capital_Component_sub_total_other.toMoney(2));
    $('#Capital_Component_sub_total_other_fe').val(Capital_Component_sub_total_other_fe.toMoney(2));
}

function calculateComponentDetailsSubTotal()
{
    for(var year=1; year<YEAR_COUNT; year++)
    {
        var Rev_Comp_sub_total_total_cost = 0, Rev_Comp_sub_total_gob = 0, Rev_Comp_sub_total_gob_fe = 0, Rev_Comp_sub_total_rpa_through_gob = 0,
            Rev_Comp_sub_total_dpa = 0, Rev_Comp_sub_total_own_fund = 0, Rev_Comp_sub_total_own_fund_fe = 0,  Rev_Comp_sub_total_other = 0,
            Rev_Comp_sub_total_other_fe = 0, Rev_Comp_sub_total_rpa_special_account = 0;
        
        var Cap_Comp_sub_total_total_cost = 0, Cap_Comp_sub_total_gob = 0, Cap_Comp_sub_total_gob_fe = 0, Cap_Comp_sub_total_rpa_through_gob = 0,
            Cap_Comp_sub_total_dpa = 0, Cap_Comp_sub_total_own_fund = 0, Cap_Comp_sub_total_own_fund_fe = 0,  Cap_Comp_sub_total_other = 0,
            Cap_Comp_sub_total_other_fe = 0, Cap_Comp_sub_total_rpa_special_account = 0;
    
        for(var i=0; i<componentRowIDArray.length; i++)
        {
            if (componentRowTypeArray[i] == 'Revenue Component')
            {
                Rev_Comp_sub_total_total_cost += $('#total_'+year+'_'+componentRowIDArray[i]).val()*1;
                Rev_Comp_sub_total_gob += $('#gob_'+year+'_'+componentRowIDArray[i]).val()*1;
                Rev_Comp_sub_total_gob_fe += $('#gob_fe_'+year+'_'+componentRowIDArray[i]).val()*1;
                Rev_Comp_sub_total_rpa_through_gob += $('#rpa_through_gob_'+year+'_'+componentRowIDArray[i]).val()*1;
                Rev_Comp_sub_total_rpa_special_account += $('#rpa_special_account_'+year+'_'+componentRowIDArray[i]).val()*1;
                Rev_Comp_sub_total_dpa += $('#dpa_'+year+'_'+componentRowIDArray[i]).val()*1;
                Rev_Comp_sub_total_own_fund += $('#own_fund_'+year+'_'+componentRowIDArray[i]).val()*1;
                Rev_Comp_sub_total_own_fund_fe += $('#own_fund_fe_'+year+'_'+componentRowIDArray[i]).val()*1;
                Rev_Comp_sub_total_other += $('#other_'+year+'_'+componentRowIDArray[i]).val()*1;
                Rev_Comp_sub_total_other_fe += $('#other_fe_'+year+'_'+componentRowIDArray[i]).val()*1;
                
            }
            else 
            {
                Cap_Comp_sub_total_total_cost += $('#total_'+year+'_'+componentRowIDArray[i]).val()*1;
                Cap_Comp_sub_total_gob += $('#gob_'+year+'_'+componentRowIDArray[i]).val()*1;
                Cap_Comp_sub_total_gob_fe += $('#gob_fe_'+year+'_'+componentRowIDArray[i]).val()*1;
                Cap_Comp_sub_total_rpa_through_gob += $('#rpa_through_gob_'+year+'_'+componentRowIDArray[i]).val()*1;
                Cap_Comp_sub_total_rpa_special_account += $('#rpa_special_account_'+year+'_'+componentRowIDArray[i]).val()*1;
                Cap_Comp_sub_total_dpa += $('#dpa_'+year+'_'+componentRowIDArray[i]).val()*1;
                Cap_Comp_sub_total_own_fund += $('#own_fund_'+year+'_'+componentRowIDArray[i]).val()*1;
                Cap_Comp_sub_total_own_fund_fe += $('#own_fund_fe_'+year+'_'+componentRowIDArray[i]).val()*1;
                Cap_Comp_sub_total_other += $('#other_'+year+'_'+componentRowIDArray[i]).val()*1;
                Cap_Comp_sub_total_other_fe += $('#other_fe_'+year+'_'+componentRowIDArray[i]).val()*1;
            }
        }
        
        $('#Revenue_Component_sub_total_total_'+year).val(Rev_Comp_sub_total_total_cost.toMoney(2));
        $('#Revenue_Component_sub_total_gob_'+year).val(Rev_Comp_sub_total_gob.toMoney(2));
        $('#Revenue_Component_sub_total_gob_fe_'+year).val(Rev_Comp_sub_total_gob_fe.toMoney(2));
        $('#Revenue_Component_sub_total_rpa_through_gob_'+year).val(Rev_Comp_sub_total_rpa_through_gob.toMoney(2));
        $('#Revenue_Component_sub_total_rpa_special_account_'+year).val(Rev_Comp_sub_total_rpa_special_account.toMoney(2));
        $('#Revenue_Component_sub_total_dpa_'+year).val(Rev_Comp_sub_total_dpa.toMoney(2));
        $('#Revenue_Component_sub_total_own_fund_'+year).val(Rev_Comp_sub_total_own_fund.toMoney(2));
        $('#Revenue_Component_sub_total_own_fund_fe_'+year).val(Rev_Comp_sub_total_own_fund_fe.toMoney(2));
        $('#Revenue_Component_sub_total_other_'+year).val(Rev_Comp_sub_total_other.toMoney(2));
        $('#Revenue_Component_sub_total_other_fe_'+year).val(Rev_Comp_sub_total_other_fe.toMoney(2));
        
        $('#Capital_Component_sub_total_total_'+year).val(Cap_Comp_sub_total_total_cost.toMoney(2));
        $('#Capital_Component_sub_total_gob_'+year).val(Cap_Comp_sub_total_gob.toMoney(2));
        $('#Capital_Component_sub_total_gob_fe_'+year).val(Cap_Comp_sub_total_gob_fe.toMoney(2));
        $('#Capital_Component_sub_total_rpa_through_gob_'+year).val(Cap_Comp_sub_total_rpa_through_gob.toMoney(2));
        $('#Capital_Component_sub_total_rpa_special_account_'+year).val(Cap_Comp_sub_total_rpa_special_account.toMoney(2));
        $('#Capital_Component_sub_total_dpa_'+year).val(Cap_Comp_sub_total_dpa.toMoney(2));
        $('#Capital_Component_sub_total_own_fund_'+year).val(Cap_Comp_sub_total_own_fund.toMoney(2));
        $('#Capital_Component_sub_total_own_fund_fe_'+year).val(Cap_Comp_sub_total_own_fund_fe.toMoney(2));
        $('#Capital_Component_sub_total_other_'+year).val(Cap_Comp_sub_total_other.toMoney(2));
        $('#Capital_Component_sub_total_other_fe_'+year).val(Cap_Comp_sub_total_other_fe.toMoney(2));
    }
}

function calculateYearWiseGrandTotal()
{
    
    for(var year=1; year < YEAR_COUNT; year++)
    {
        var grand_total_gob          = 0;
        var grand_total_gob_fe       = 0;
        var grand_total_through_gob  = 0;
        var grand_total_spc_acnt     = 0;
        var grand_total_dpa          = 0;
        var grand_total_own_fund     = 0;
        var grand_total_own_fund_fe  = 0;
        var grand_total_other        = 0;
        var grand_total_other_fe     = 0;
        var grand_total              = 0;
        
        for(var i=0; i<componentRowIDArray.length; i++)
        {
            grand_total              += $('#total_'+year+'_'+componentRowIDArray[i]).val()*1;
            grand_total_gob          += $('#gob_'+year+'_'+componentRowIDArray[i]).val()*1;
            grand_total_gob_fe       += $('#gob_fe_'+year+'_'+componentRowIDArray[i]).val()*1;
            grand_total_through_gob  += $('#rpa_through_gob_'+year+'_'+componentRowIDArray[i]).val()*1;
            grand_total_spc_acnt     += $('#rpa_special_account_'+year+'_'+componentRowIDArray[i]).val()*1;
            grand_total_dpa          += $('#dpa_'+year+'_'+componentRowIDArray[i]).val()*1;
            grand_total_own_fund     += $('#own_fund_'+year+'_'+componentRowIDArray[i]).val()*1;
            grand_total_own_fund_fe  += $('#own_fund_fe_'+year+'_'+componentRowIDArray[i]).val()*1;
            grand_total_other        += $('#other_'+year+'_'+componentRowIDArray[i]).val()*1;
            grand_total_other_fe     += $('#other_fe_'+year+'_'+componentRowIDArray[i]).val()*1;
            
        }
        
        grand_total              += $('#physical_contigency_total_'+year).val()*1           + $('#price_contigency_total_'+year).val()*1;
        grand_total_gob          += $('#physical_contigency_gob_'+year).val()*1             + $('#price_contigency_gob_'+year).val()*1;
        grand_total_gob_fe       += $('#physical_contigency_gob_fe_'+year).val()*1          + $('#price_contigency_gob_fe_'+year).val()*1;
        grand_total_through_gob  += $('#physical_contigency_pa_through_gob_'+year).val()*1  + $('#price_contigency_pa_through_gob_'+year).val()*1;
        grand_total_spc_acnt     += $('#physical_contigency_pa_sp_acnt_'+year).val()*1      + $('#price_contigency_pa_sp_acnt_'+year).val()*1;
        grand_total_dpa          += $('#physical_contigency_pa_dpa_'+year).val()*1          + $('#price_contigency_pa_dpa_'+year).val()*1;
        grand_total_own_fund     += $('#physical_contigency_own_fund_'+year).val()*1        + $('#price_contigency_own_fund_'+year).val()*1;
        grand_total_own_fund_fe  += $('#physical_contigency_own_fund_fe_'+year).val()*1     + $('#price_contigency_own_fund_fe_'+year).val()*1;
        grand_total_other        += $('#physical_contigency_other_'+year).val()*1           + $('#price_contigency_other_'+year).val()*1;
        grand_total_other_fe     += $('#physical_contigency_other_fe_'+year).val()*1        + $('#price_contigency_other_fe_'+year).val()*1;
        
        $('#grand_total_'+year).val(grand_total.toMoney(2));
        $('#grand_total_gob_'+year).val(grand_total_gob.toMoney(2));
        $('#grand_total_gob_fe_'+year).val(grand_total_gob_fe.toMoney(2));
        $('#grand_total_through_gob_'+year).val(grand_total_through_gob.toMoney(2));
        $('#grand_total_spc_acnt_'+year).val(grand_total_spc_acnt.toMoney(2));
        $('#grand_total_dpa_'+year).val(grand_total_dpa.toMoney(2));
        $('#grand_total_own_fund_'+year).val(grand_total_own_fund.toMoney(2));
        $('#grand_total_own_fund_fe_'+year).val(grand_total_own_fund_fe.toMoney(2));
        $('#grand_total_other_'+year).val(grand_total_other.toMoney(2));
        $('#grand_total_other_fe_'+year).val(grand_total_other_fe.toMoney(2));
    }
}

function calculateComponentYearTotal(yearID, elemID)
{
    var year_total = 0;
    
    // calculate year wise total component cost
    for(var i=0; i<distributionArray.length; i++)
    {
        if ($('#'+distributionArray[i]+yearID+'_'+elemID).val() )
        {
            year_total += $('#'+distributionArray[i]+yearID+'_'+elemID).val()*1
        }
    }
    
    // set the year wise total component cost
    $('#total_'+yearID+'_'+elemID).val(year_total.toMoney(2));   
    
    updateComDetail(year_total,'total',yearID,+elemID);
    
    calculateAll();
}

function calculateAnnexVGrandTotal()
{
    var grand_total              = 0;
    var grand_total_gob          = 0;
    var grand_total_gob_fe       = 0;
    var grand_total_through_gob  = 0;
    var grand_total_spc_acnt     = 0;
    var grand_total_dpa          = 0;
    var grand_total_own_fund     = 0;
    var grand_total_own_fund_fe  = 0;
    var grand_total_other        = 0;
    var grand_total_other_fe     = 0;
    
    var phy_total   = $('#physical_contigency_total').val()*1;
    var pr_total    = $('#price_contigency_total').val()*1;
    
    
    var phy_con_total_gob              = $('#physical_contigency_gob').val()*1;
    var phy_con_total_gob_fe           = $('#physical_contigency_gob_fe').val()*1;
    var phy_con_total_pa_through_gob   = $('#physical_contigency_pa_through_gob').val()*1;
    var phy_con_total_pa_sp_acnt       = $('#physical_contigency_pa_sp_acnt').val()*1;
    var phy_con_total_pa_dpa           = $('#physical_contigency_pa_dpa').val()*1;
    var phy_con_total_own_fund         = $('#physical_contigency_own_fund').val()*1;
    var phy_con_total_own_fund_fe      = $('#physical_contigency_own_fund_fe').val()*1;
    var phy_con_total_other            = $('#physical_contigency_other').val()*1;
    var phy_con_total_other_fe         = $('#physical_contigency_other_fe').val()*1;
    
    
    var pr_con_total_gob              = $('#price_contigency_gob').val()*1;
    var pr_con_total_gob_fe           = $('#price_contigency_gob_fe').val()*1;
    var pr_con_total_pa_through_gob   = $('#price_contigency_pa_through_gob').val()*1;
    var pr_con_total_pa_sp_acnt       = $('#price_contigency_pa_sp_acnt').val()*1;
    var pr_con_total_pa_dpa           = $('#price_contigency_pa_dpa').val()*1;
    var pr_con_total_own_fund         = $('#price_contigency_own_fund').val()*1;
    var pr_con_total_own_fund_fe      = $('#price_contigency_own_fund_fe').val()*1;
    var pr_con_total_other            = $('#price_contigency_other').val()*1;
    var pr_con_total_other_fe         = $('#price_contigency_other_fe').val()*1;
    
    
    for(var i=0; i<componentRowIDArray.length; i++)
    {
        if ($('#total_cost_'+componentRowIDArray[i]).val() )
        {
            grand_total              += $('#total_cost_'+componentRowIDArray[i]).val()*1;
            grand_total_gob          += $('#total_gob_'+componentRowIDArray[i]).val()*1;
            grand_total_gob_fe       += $('#total_gob_fe_'+componentRowIDArray[i]).val()*1;
            grand_total_through_gob  += $('#pa_gob_'+componentRowIDArray[i]).val()*1;
            grand_total_spc_acnt     += $('#pa_spc_acnt_'+componentRowIDArray[i]).val()*1;
            grand_total_dpa          += $('#pa_dpa_'+componentRowIDArray[i]).val()*1;
            grand_total_own_fund     += $('#own_fund_'+componentRowIDArray[i]).val()*1;
            grand_total_own_fund_fe  += $('#own_fund_fe_'+componentRowIDArray[i]).val()*1;
            grand_total_other        += $('#other_'+componentRowIDArray[i]).val()*1;
            grand_total_other_fe     += $('#other_fe_'+componentRowIDArray[i]).val()*1;
        }
    }
    
    $('#grand_total').val( (grand_total+phy_total+pr_total).toMoney(2) );
    $('#grand_total_gob').val( (grand_total_gob+phy_con_total_gob+pr_con_total_gob).toMoney(2) );
    $('#grand_total_gob_fe').val( (grand_total_gob_fe+phy_con_total_gob_fe+pr_con_total_gob_fe).toMoney(2) );
    $('#grand_total_through_gob').val( (grand_total_through_gob+phy_con_total_pa_through_gob+pr_con_total_pa_through_gob).toMoney(2) );
    $('#grand_total_spc_acnt').val( (grand_total_spc_acnt+phy_con_total_pa_sp_acnt+pr_con_total_pa_sp_acnt).toMoney(2) );
    $('#grand_total_dpa').val( (grand_total_dpa+phy_con_total_pa_dpa+pr_con_total_pa_dpa).toMoney(2) );
    $('#grand_total_own_fund').val( (grand_total_own_fund+phy_con_total_own_fund+pr_con_total_own_fund).toMoney(2) );
    $('#grand_total_own_fund_fe').val( (grand_total_own_fund_fe+phy_con_total_own_fund_fe+pr_con_total_own_fund_fe).toMoney(2) );
    $('#grand_total_other').val( (grand_total_other+phy_con_total_other+pr_con_total_other).toMoney(2) );
    $('#grand_total_other_fe').val( (grand_total_other_fe+phy_con_total_other_fe+pr_con_total_other_fe).toMoney(2) );
}

function calculateComponentTotalCost(yearID)
{
    for(var elem=0; elem<componentRowIDArray.length; elem++)
    {
        var total_cost = 0;
        
        for(var year=1; year<YEAR_COUNT; year++)
        {
            total_cost += $('#total_'+year+'_'+componentRowIDArray[elem]).val()*1;
            //alert('#total_'+year+'_'+componentRowIDArray[i] + '\nVal = ' + $('#total_'+yearID+'_'+componentRowIDArray[i]).val());
        }
     
        $('#total_cost_'+componentRowIDArray[elem]).val(total_cost.toMoney(2))
    }
}

function calculateUnitCost()
{
    for(var elem=0; elem<componentRowIDArray.length; elem++)
    {
    
        var qty = $('#qty_'+componentRowIDArray[elem]).val()*1;
    
        if (qty)
        {
            $('#unit_cost_'+componentRowIDArray[elem]).val( ($('#total_cost_'+componentRowIDArray[elem]).val()*1/qty).toMoney(2) ); 
        }
        else
        {
            $('#unit_cost_'+componentRowIDArray[elem]).val('0.00');
        }
    }
}

function calculateComponentTotalGoB_FE(yearID, elemID)
{
     for(var elem=0; elem<componentRowIDArray.length; elem++)
     {
         var total_gob = 0;
         var total_fe  = 0;
     
         for(var year=1; year<YEAR_COUNT; year++)
         {
             total_gob += $('#gob_'+year+'_'+componentRowIDArray[elem]).val()*1;
             total_fe  += $('#gob_fe_'+year+'_'+componentRowIDArray[elem]).val()*1;
             //alert('#gob_'+year+'_'+componentRowIDArray[elem] + '\nVal = ' + $('#gob_'+year+'_'+componentRowIDArray[elem]).val());
         }
         
         $('#total_gob_'+componentRowIDArray[elem]).val(total_gob.toMoney(2))
         $('#total_gob_fe_'+componentRowIDArray[elem]).val(total_fe.toMoney(2))
     }
}

function calculateComponentTotalProjectAid()
{
     for(var elem=0; elem<componentRowIDArray.length; elem++)
     {
         var total_thourgh_gob      = 0;
         var total_special_account  = 0;
         var total_dpa              = 0;
         
         for(var year=1; year<YEAR_COUNT; year++)
         {
             total_thourgh_gob      += $('#rpa_through_gob_'+year+'_'+componentRowIDArray[elem]).val()*1;
             total_special_account  += $('#rpa_special_account_'+year+'_'+componentRowIDArray[elem]).val()*1;
             total_dpa              += $('#dpa_'+year+'_'+componentRowIDArray[elem]).val()*1;
         }
         
         $('#pa_gob_'+componentRowIDArray[elem]).val(total_thourgh_gob.toMoney(2))
         $('#pa_spc_acnt_'+componentRowIDArray[elem]).val(total_special_account.toMoney(2))
         $('#pa_dpa_'+componentRowIDArray[elem]).val(total_dpa.toMoney(2))
     }
}

function calculateComponentTotalOwnFundFE()
{
     for(var elem=0; elem<componentRowIDArray.length; elem++)
     {
         var total_own_fund    = 0;
         var total_own_fund_fe = 0;
     
         for(var year=1; year<YEAR_COUNT; year++)
         {
             total_own_fund     += $('#own_fund_'+year+'_'+componentRowIDArray[elem]).val()*1;
             total_own_fund_fe  += $('#own_fund_fe_'+year+'_'+componentRowIDArray[elem]).val()*1;
         }
         
         $('#own_fund_'+componentRowIDArray[elem]).val(total_own_fund.toMoney(2));
         $('#own_fund_fe_'+componentRowIDArray[elem]).val(total_own_fund_fe.toMoney(2));
     }
}

function calculateComponentTotalOtherFE(elemID)
{
     for(var elem=0; elem<componentRowIDArray.length; elem++)
     {
         var total_other    = 0;
         var total_other_fe = 0;
     
         for(var year=1; year<YEAR_COUNT; year++)
         {
             total_other     += $('#other_'+year+'_'+componentRowIDArray[elem]).val()*1;
             total_other_fe  += $('#other_fe_'+year+'_'+componentRowIDArray[elem]).val()*1;
         }
         
         $('#other_'+componentRowIDArray[elem]).val(total_other.toMoney(2))
         $('#other_fe_'+componentRowIDArray[elem]).val(total_other_fe.toMoney(2))
     }
}