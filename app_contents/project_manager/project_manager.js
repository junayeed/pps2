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

function submittForm()
{
    //alert(1);
    //$(".chzn-select").chosen(); 
    //$(".chzn-select").trigger("chosen:updated");
    return true;
}

var COMPONENT_ROW_ID     = 1;
var componentRowIDArray  = [];

function getEconomicCode(elemName, comp_id)
{
    var str_options = '';
    
    for(var i=0; i<economicCodeArr.length; i++)
    {
        str_options += '<option value="'+economicCodeArr[i].id+'">'+economicCodeArr[i].code+' ['+economicCodeArr[i].code_name+']</option>';
    }
    
    return '<select name='+elemName+' id='+elemName+' class="span12" onchange=populateEconomicSubCodeList('+comp_id+',this) >' + str_options + '</select>';
}

function populateSubCodeDescription(elemID, thisField)
{
    var ttt = economicSubCodeArray.filter(function (thisArray) { return thisArray.id == thisField.value });
    
    $('#code_desc_'+elemID).val(ttt[0].economic_subcode_name);
}


function populateEconomicSubCodeList(elemID, thisField)
{
    $('#sub_code_'+elemID).children().remove().end().append('<option value=""></option>');
    for(var i=0; i<economicSubCodeArray.length; i++)
    {
        if (thisField.value == economicSubCodeArray[i].economic_code_id)
        {
            $('#sub_code_'+elemID).append('<option value="'+economicSubCodeArray[i].id+'">'+economicSubCodeArray[i].sub_code + ' [' + economicSubCodeArray[i].economic_subcode_name + ']</option>');
        }
    }
    
    $('#code_desc_'+elemID).val('');
}

function getEconomicSubCodeList(elemID,thisField)
{
    var str_options = '';
    
    for(var i=0; i<economicSubCodeArray.length; i++)
    {
        if (thisField.value == economicSubCodeArray[i].economic_code_id)
        {
            str_options += '<option value="'+economicSubCodeArray[i].id+'">'+economicSubCodeArray[i].sub_code+' ['+economicSubCodeArray[i].economic_subcode_name+']</option>';
        }
    }
    return '<select name=sub_code_'+elemID+' id=sub_code_'+elemID+' class="span12" onChange="populateSubCodeDescription('+elemID+', this);">' + str_options + '</select>';
}

function addNewComponent()
{
    var td_economic_code   = '<td>' + getEconomicCode("economic_code_"+COMPONENT_ROW_ID, COMPONENT_ROW_ID) + '</td>';
    var td_sub_code        = '<td>' + getEconomicSubCodeList(COMPONENT_ROW_ID, 0) + '</td>';
    var td_code_desc       = '<td><input type="text" name="code_desc_'+COMPONENT_ROW_ID+'"     id="code_desc_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    
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
    
    $(".chzn-select").chosen();
    componentRowIDArray.push(COMPONENT_ROW_ID);
    COMPONENT_ROW_ID++;
}