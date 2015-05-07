var COMPONENT_ROW_ID       = 1;
var componentRowIDArray    = [];
var componentRowTypeArray  = [];
var YEAR_COUNT             = 1;
var PROMPT_DELETE_CONFIRM   = "Are you sure you want to delete?";
var distributionArray      = ['gob_', 'rpa_through_gob_', 'rpa_special_account_', 'dpa_', 'own_fund_', 'other_']; 

function createPartBReport()
{
    var PI          = $('#PI').val();
    var report_type = $('#report_type').val();
    if (report_type)
    {
        location.href = 'http://'+document.domain+'/app/project_manager/project_manager.php?cmd=partB&PI='+PI+
                        '&report_type='+report_type;
    }
}

function getEconomicCode(elemName, comp_id, com_type)
{
    var str_options = '<option value=""></option>';
    
    for(var i=0; i<economicCodeArr.length; i++)
    {
        if (com_type == economicCodeArr[i].component_type)
        {
            str_options += '<option value="'+economicCodeArr[i].id+'">'+economicCodeArr[i].code+' ['+economicCodeArr[i].code_name+']</option>';
        }
    }
    
    return '<select name='+elemName+' id='+elemName+' class="span12" onchange=populateEconomicSubCodeList('+comp_id+',this.value)  required>' + str_options + '</select>';
}

function populateSubCodeDescription(elemID, thisField)
{
    var ttt = economicSubCodeArray.filter(function (thisArray) { return thisArray.id == thisField.value });
    
    $('#code_desc_'+elemID).val(ttt[0].economic_subcode_name);
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
    
    return '<select name="sub_code_'+elemID+'" id="sub_code_'+elemID+'" class="span3" onChange="populateSubCodeDescription('+elemID+', this);" required>' +  + '</select>';
}



function populateComponentDetails(economic_code_id, economic_subcode_id, economic_subcode_name, unit, unit_cost, qty, total_cost, gob, gob_fe, 
                                  rpa_through_gob, rpa_special_account, dpa, own_fund, own_fund_fe, other, other_fe,annex_id)
{
    var elemID = COMPONENT_ROW_ID - 1;
    
    $('#economic_code_'+elemID).val(economic_code_id);
    
    populateEconomicSubCodeList(elemID, economic_code_id);
    
    $('#sub_code_'+elemID).val(economic_subcode_id);
    $('#code_desc_'+elemID).val(economic_subcode_name);
    $('#unit_'+elemID).val(unit);
    $('#unit_cost_'+elemID).val((unit_cost*1).toMoney(2));
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
    
}


function addNewComponent(buttonClick)
{
    //var component_type = com_type.replace(' ', '_');
    ///alert('ID = ' + COMPONENT_ROW_ID + ' Type = ' + component_type);
    var td_delete_code     = '<td><img src="/app_contents/common/images/cross.png" onClick="deleteComponent('+COMPONENT_ROW_ID+');" class=" delete_year_icon" "></td>';
    //var td_economic_code   = '<td>' + getEconomicCode("economic_code_"+COMPONENT_ROW_ID, COMPONENT_ROW_ID, com_type) + '</td>';
    //var td_sub_code        = '<td class="span3">' + createEconomicSubCodeDropdown(COMPONENT_ROW_ID, 0) + '</td>';
    var td_code_desc       = '<td><textarea name="code_desc_'+COMPONENT_ROW_ID+'" id="code_desc_'+COMPONENT_ROW_ID+'" class="span1" style="height: 60px;" /></textarea></td>';
    
    //$('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_delete_code+ td_economic_code+td_sub_code+td_code_desc+'</tr>').appendTo("#economic_code_tbl > #" + component_type + "_economic_code_content");
    
    var td_unit        = '<td><input type="text" name="unit_'+COMPONENT_ROW_ID+'"       id="unit_'+COMPONENT_ROW_ID+'" value="" class="" /></td>';
    var td_unit_cost   = '<td><input type="text" name="unit_cost_'+COMPONENT_ROW_ID+'"  id="unit_cost_'+COMPONENT_ROW_ID+'" value="" class="" readonly /></td>';
    var td_basis         = '<td><input type="text" name="qty_'+COMPONENT_ROW_ID+'"        id="qty_'+COMPONENT_ROW_ID+'" value="" class="" onkeypress="return isNumberKey(event);" onChange="calculateUnitCost('+COMPONENT_ROW_ID+');" /></td>';
    var td_date  = '<td><input type="text" name="total_cost_'+COMPONENT_ROW_ID+'" id="total_cost_'+COMPONENT_ROW_ID+'" value="" class="" readonly /></td>';
    
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_delete_code+ td_code_desc+ td_unit + td_unit_cost + td_basis + td_date + '</tr>').appendTo("#component_total_cost_content");
    
     
    $(".chzn-select").chosen();
    componentRowIDArray.push(COMPONENT_ROW_ID);
    $('#component_list').val(componentRowIDArray);
    COMPONENT_ROW_ID++;
    
}

function deleteProjectCostAnalysisAttachment(fieldName, elemID)
{
    if ( confirm('The attachment will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
    {
        $.ajax
        (
            {
                url: 'project_manager.php?cmd=deletecostanalysisattachment',
                data: "field_name="+fieldName+"&id="+elemID,
                dataType: 'json',
                success: function(responseText)
                {
                    if (responseText == '1')
                    {    
                        alert('here')
                        //removeComponentRow(elemID);
                    }
                }    
            }
        );
    }
}

function deleteComponent(elemID)
{
    var annexID = $('#annex_id_'+elemID).val();
    
    if (annexID)
    {
        if ( confirm('The component will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
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
                            removeComponentRow(elemID);
                        }
                    }    
                }
            );
        }
    }
    else
    {
        if ( confirm('The component will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
        {
            removeComponentRow(elemID);
        }
    }
    
}

function removeComponentRow(elemID)
{
   
    $('#total_cost_tbl > #component_total_cost_content').find('#tr_' + elemID).fadeOut(50,function() 
    {
        $('#total_cost_tbl > #component_total_cost_content > #tr_' + elemID).remove();
    });

   

    var index = componentRowIDArray.indexOf(elemID);
    if(index!=-1)
    {
        componentRowIDArray.splice(index, 1);

        $('#component_list').val(componentRowIDArray);
    }

}
