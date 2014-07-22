var COMPONENT_ROW_ID       = 1;
var componentRowIDArray    = [];
var componentRowTypeArray  = [];
var YEAR_COUNT             = 1;
var distributionArray      = ['gob_', 'rpa_through_gob_', 'rpa_special_account_', 'dpa_', 'own_fund_', 'other_']; 

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
    
    return '<select name="sub_code_'+elemID+'" id="sub_code_'+elemID+'" class="span12" onChange="populateSubCodeDescription('+elemID+', this);" required>' +  + '</select>';
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
    $('#'+contingency_type+'_contigency_con_id_'+year).val((con_details_id*1).toMoney(2));
}


function populateAnnexComponentDetails(gob, gob_fe, rpa_through_gob, rpa_special_account, dpa, own_fund, own_fund_fe, other, other_fe, year, annex_details_id, financial_year, i, total)
{
    $('#gob_'+year+'_'+i).val((gob*1).toMoney(2));
    $('#gob_fe_'+year+'_'+i).val((gob_fe*1).toMoney(2));
    $('#rpa_through_gob_'+year+'_'+i).val((rpa_through_gob*1).toMoney(2));
    $('#rpa_special_account_'+year+'_'+i).val((rpa_special_account*1).toMoney(2));
    $('#dpa_'+year+'_'+i).val((dpa*1).toMoney(2));
    $('#own_fund_'+year+'_'+i).val((own_fund*1).toMoney(2));
    $('#own_fund_fe_'+year+'_'+i).val((own_fund_fe*1).toMoney(2));
    $('#other_'+year+'_'+i).val((other*1).toMoney(2));
    $('#other_fe_'+year+'_'+i).val((other_fe*1).toMoney(2));
    $('#annex_details_id_'+year+'_'+i).val((annex_details_id*1).toMoney(2));
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
    var td_economic_code   = '<td>' + getEconomicCode("economic_code_"+COMPONENT_ROW_ID, COMPONENT_ROW_ID, com_type) + '</td>';
    var td_sub_code        = '<td>' + createEconomicSubCodeDropdown(COMPONENT_ROW_ID, 0) + '</td>';
    var td_code_desc       = '<td><textarea name="code_desc_'+COMPONENT_ROW_ID+'" id="code_desc_'+COMPONENT_ROW_ID+'" class="span12" style="height: 60px;" /></textarea></td>';
    
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_delete_code+ td_economic_code+td_sub_code+td_code_desc+'</tr>').appendTo("#economic_code_tbl > #" + component_type + "_economic_code_content");
    
    var td_unit        = '<td><input type="text" name="unit_'+COMPONENT_ROW_ID+'"       id="unit_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    var td_unit_cost   = '<td><input type="text" name="unit_cost_'+COMPONENT_ROW_ID+'"  id="unit_cost_'+COMPONENT_ROW_ID+'" value="" class="span12" readonly /></td>';
    var td_qty         = '<td><input type="text" name="qty_'+COMPONENT_ROW_ID+'"        id="qty_'+COMPONENT_ROW_ID+'" value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateUnitCost('+COMPONENT_ROW_ID+');" /></td>';
    var td_total_cost  = '<td><input type="text" name="total_cost_'+COMPONENT_ROW_ID+'" id="total_cost_'+COMPONENT_ROW_ID+'" value="" class="span12" readonly /></td>';
    
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_unit + td_unit_cost + td_qty + td_total_cost + '</tr>').appendTo("#total_cost_tbl > #" + component_type + "_total_cost_content");
    
    var td_total_gob    = '<td><input type="text" name="total_gob_'+COMPONENT_ROW_ID+'"    id="total_gob_'+COMPONENT_ROW_ID+'"    value="" class="span12" readonly /><br>\n\
                               <input type="text" name="total_gob_fe_'+COMPONENT_ROW_ID+'" id="total_gob_fe_'+COMPONENT_ROW_ID+'" value="" class="span12" readonly /></td>';
    var td_pa_gob       = '<td><input type="text" name="pa_gob_'+COMPONENT_ROW_ID+'"       id="pa_gob_'+COMPONENT_ROW_ID+'"       value="" class="span9"  readonly /></td>';
    var td_pa_spc_acnt  = '<td><input type="text" name="pa_spc_acnt_'+COMPONENT_ROW_ID+'"  id="pa_spc_acnt_'+COMPONENT_ROW_ID+'"  value="" class="span9"  readonly /></td>';
    var td_pa_dpa       = '<td><input type="text" name="pa_dpa_'+COMPONENT_ROW_ID+'"       id="pa_dpa_'+COMPONENT_ROW_ID+'"       value="" class="span12" readonly /></td>';
    var td_own_fund     = '<td><input type="text" name="own_fund_'+COMPONENT_ROW_ID+'"     id="own_fund_'+COMPONENT_ROW_ID+'"     value="" class="span12" readonly /><br>\n\
                               <input type="text" name="own_fund_fe_'+COMPONENT_ROW_ID+'"  id="own_fund_fe_'+COMPONENT_ROW_ID+'"  value="" class="span12" readonly /></td>';
    var td_other        = '<td><input type="text" name="other_'+COMPONENT_ROW_ID+'"        id="other_'+COMPONENT_ROW_ID+'"        value="" class="span12" readonly /><br>\n\
                               <input type="text" name="other_fe_'+COMPONENT_ROW_ID+'"     id="other_fe_'+COMPONENT_ROW_ID+'"     value="" class="span12" readonly /></td>';
    
    var td_hidden      = '<input type="hidden" name="annex_id_'+COMPONENT_ROW_ID+'" id="annex_id_'+COMPONENT_ROW_ID+'" value="" >'
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_total_gob + td_pa_gob + td_pa_spc_acnt + td_pa_dpa + td_own_fund + td_other +td_hidden + '</tr>').appendTo("#total_cost_breakdown_tbl > #" + component_type + "_total_cost_breakdown_content");
    
    $(".chzn-select").chosen();
    componentRowIDArray.push(COMPONENT_ROW_ID);
    componentRowTypeArray.push(com_type)
    $('#component_list').val(componentRowIDArray);
    COMPONENT_ROW_ID++;
    
    //adjustComponentRowPerYear(1,COMPONENT_ROW_ID-1, component_type);
    
    //alert(COMPONENT_ROW_ID)
    
    if(buttonClick)   //buttonClick = 1 mean click from the button
    for(var year=1; year<YEAR_COUNT; year++ )
    {
        addYearWiseNewComponentDetailsRow(com_type, year, COMPONENT_ROW_ID-1)
    }
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
                                               <table id="total_cost_breakdown_tbl_'+YEAR_COUNT+'" class="table table-striped table-bordered table-hover table_bug_report">\n\
                                                   <thead>\n\
                                                       <tr>\n\
                                                           <th colspan="7">Fiscal Year '+YEAR_COUNT+': <input type="text" name="financial_year_'+YEAR_COUNT+'" id="financial_year_'+YEAR_COUNT+'" required>\n\
                                                           <img src="/app_contents/common/images/cross.png" onClick="deleteYear();" class="delete_year_icon" id="year_delete_'+YEAR_COUNT+'" style="display: none;"></th>\n\
                                                       </tr>\n\
                                                       <tr>\n\
                                                           <th class="span3" rowspan="3">GoB (FE)</th>\n\
                                                           <th class="span3" colspan="3">Project Aid</th>\n\
                                                           <th class="span3" rowspan="3">Own Fund (FE)</th>\n\
                                                           <th class="span3" rowspan="3">Other (FE)</th>\n\
                                                           <th class="span3" rowspan="3">Total</th>\n\
                                                       </tr>\n\
                                                       <tr>\n\
                                                           <th class="span3" colspan="2">RPA</th>\n\
                                                           <th class="span3" rowspan="2">DPA</th>\n\
                                                       </tr>\n\
                                                       <tr>\n\
                                                           <th class="span3">Through GoB</th>\n\
                                                           <th class="span3">Special Account*</th>\n\
                                                       </tr>\n\
                                                   </thead>\n\
                                                   <tbody id="Revenue_Component_total_cost_breakdown_content_'+YEAR_COUNT+'">\n\
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
                                                       <tr>\n\
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
    
    YEAR_COUNT++;
    if(fromAddButton)
    adjustComponentRowPerYear(YEAR_COUNT-1);
    deleteYearIconAdjustment();
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
        $('#total_cost_breakdown_tbl_'+elemID).hide("slow", function() {$('#total_cost_breakdown_container_'+elemID).css('width', '15px');});
    }
    else
    {
        $('#total_cost_breakdown_tbl_'+elemID).show("slow", function() {$('#total_cost_breakdown_container_'+elemID).css('width', '500px');});
    }
}

function adjustComponentRowPerYear(year)
{
    
    //alert(componentRowTypeArray)
    //var component_type = com_type.replace(' ', '_');
    
        for(var i=0; i<componentRowIDArray.length; i++)
        {
           
                
            var td_total_gob    = '<td><input type="text" name="gob_'+year+'_'+componentRowIDArray[i]+'"                  id="gob_'+year+'_'+componentRowIDArray[i]+'"                 value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');" /><br>\n\
                                       <input type="text" name="gob_fe_'+year+'_'+componentRowIDArray[i]+'"               id="gob_fe_'+year+'_'+componentRowIDArray[i]+'"              value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');" /></td>';
            var td_pa_gob       = '<td><input type="text" name="rpa_through_gob_'+year+'_'+componentRowIDArray[i]+'"      id="rpa_through_gob_'+year+'_'+componentRowIDArray[i]+'"     value="" class="span9"  onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');" /></td>';
            var td_pa_spc_acnt  = '<td><input type="text" name="rpa_special_account_'+year+'_'+componentRowIDArray[i]+'"  id="rpa_special_account_'+year+'_'+componentRowIDArray[i]+'" value="" class="span9"  onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');" /></td>';
            var td_pa_dpa       = '<td><input type="text" name="dpa_'+year+'_'+componentRowIDArray[i]+'"                  id="dpa_'+year+'_'+componentRowIDArray[i]+'"                 value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');" /></td>';
            var td_own_fund     = '<td><input type="text" name="own_fund_'+year+'_'+componentRowIDArray[i]+'"             id="own_fund_'+year+'_'+componentRowIDArray[i]+'"            value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');" /><br>\n\
                                       <input type="text" name="own_fund_fe_'+year+'_'+componentRowIDArray[i]+'"          id="own_fund_fe_'+year+'_'+componentRowIDArray[i]+'"         value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');" /></td>';
            var td_other        = '<td><input type="text" name="other_'+year+'_'+componentRowIDArray[i]+'"                id="other_'+year+'_'+componentRowIDArray[i]+'"               value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');" /><br>\n\
                                       <input type="text" name="other_fe_'+year+'_'+componentRowIDArray[i]+'"             id="other_fe_'+year+'_'+componentRowIDArray[i]+'"            value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+componentRowIDArray[i]+');" /></td>';
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
    //alert('Year = ' + year + ' == Count = ' + elemID);
    var td_total_gob    = '<td><input type="text" name="gob_'+year+'_'+elemID+'"                  id="gob_'+year+'_'+elemID+'"                 value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');" /><br>\n\
                               <input type="text" name="gob_fe_'+year+'_'+elemID+'"               id="gob_fe_'+year+'_'+elemID+'"              value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');" /></td>';
    var td_pa_gob       = '<td><input type="text" name="rpa_through_gob_'+year+'_'+elemID+'"      id="rpa_through_gob_'+year+'_'+elemID+'"     value="" class="span9"  onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');" /></td>';
    var td_pa_spc_acnt  = '<td><input type="text" name="rpa_special_account_'+year+'_'+elemID+'"  id="rpa_special_account_'+year+'_'+elemID+'" value="" class="span9"  onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');" /></td>';
    var td_pa_dpa       = '<td><input type="text" name="dpa_'+year+'_'+elemID+'"                  id="dpa_'+year+'_'+elemID+'"                 value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');" /></td>';
    var td_own_fund     = '<td><input type="text" name="own_fund_'+year+'_'+elemID+'"             id="own_fund_'+year+'_'+elemID+'"            value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');" /><br>\n\
                               <input type="text" name="own_fund_fe_'+year+'_'+elemID+'"          id="own_fund_fe_'+year+'_'+elemID+'"         value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');" /></td>';
    var td_other        = '<td><input type="text" name="other_'+year+'_'+elemID+'"                id="other_'+year+'_'+elemID+'"               value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');" /><br>\n\
                               <input type="text" name="other_fe_'+year+'_'+elemID+'"             id="other_fe_'+year+'_'+elemID+'"            value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+elemID+');" /></td>';
    var td_comp_total   = '<td><input type="text" name="total_'+year+'_'+elemID+'"                id="total_'+year+'_'+elemID+'"               value="" class="span12" readonly /></td>';
    var td_hidden       = '<input type="hidden"   name="annex_details_id_'+year+'_'+elemID+'"     id="annex_details_id_'+year+'_'+elemID+'" />';

    $('<tr id="tr_'+year+'_'+elemID+'">'+ td_total_gob + td_pa_gob + td_pa_spc_acnt + td_pa_dpa 
                                                       + td_own_fund + td_other + td_comp_total + td_hidden 
                                                       +'</tr>').appendTo("#total_cost_breakdown_tbl_"+year+" > #" 
                                                       + component_type+"_total_cost_breakdown_content_"+year);
    
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
                }    
            }
        );
            
        // remove the div
        $('#total_cost_breakdown_container_'+year).remove();
    
        // decrease the year count value 
        
        YEAR_COUNT--;
        
        $('#total_year_in_annexv').val(year-1);
        calculateAll();
    
        // adjust the delete sign
        deleteYearIconAdjustment();    
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