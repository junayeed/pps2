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
    
    return '<select name='+elemName+' id='+elemName+' class="span12" onchange=populateEconomicSubCodeList('+comp_id+',this.value) >' + str_options + '</select>';
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
    
    return '<select name="sub_code_'+elemID+'" id="sub_code_'+elemID+'" class="span12" onChange="populateSubCodeDescription('+elemID+', this);">' +  + '</select>';
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
    $('#unit_cost_'+elemID).val(unit_cost);
    $('#qty_'+elemID).val(qty);
    $('#total_cost_'+elemID).val(total_cost);
    $('#total_gob_'+elemID).val(gob);
    $('#total_gob_fe_'+elemID).val(gob_fe);
    $('#pa_gob_'+elemID).val(rpa_through_gob);
    $('#pa_spc_acnt_'+elemID).val(rpa_special_account);
    $('#pa_dpa_'+elemID).val(dpa);
    $('#own_fund_'+elemID).val(own_fund);
    $('#own_fund_fe_'+elemID).val(own_fund_fe);
    $('#other_'+elemID).val(other);
    $('#other_fe_'+elemID).val(other_fe);
    $('#annex_id_'+elemID).val(annex_id);
    
}

function populateAnnexComponentDetails(gob, gob_fe,rpa_through_gob, rpa_special_account, dpa, own_fund, own_fund_fe, other, other_fe,year,annex_id,i)
{
    var totalElement = COMPONENT_ROW_ID - 1;
    alert(i)
    //for(var i=1;i<=totalElement;i++)
    {    
        $('#gob_'+year+'_'+i).val(gob);
        $('#gob__fe_'+year+'_'+i).val(gob_fe);
        $('#rpa_through_gob_'+year+'_'+i).val(rpa_through_gob);
        $('#rpa_special_account_'+year+'_'+i).val(rpa_special_account);
        $('#dpa_'+year+'_'+i).val(dpa);
        $('#own_fund_'+year+'_'+i).val(own_fund);
        $('#own_fund_fe_'+year+'_'+i).val(own_fund_fe);
        $('#other_'+year+'_'+i).val(other);
        $('#other_fe_'+year+'_'+i).val(other_fe);
        $('#annex_id_'+year+'_'+i).val(annex_id);
    }
}

function addNewComponent()
{
    var td_economic_code   = '<td>' + getEconomicCode("economic_code_"+COMPONENT_ROW_ID, COMPONENT_ROW_ID) + '</td>';
    var td_sub_code        = '<td>' + createEconomicSubCodeDropdown(COMPONENT_ROW_ID, 0) + '</td>';
    var td_code_desc       = '<td><textarea name="code_desc_'+COMPONENT_ROW_ID+'" id="code_desc_'+COMPONENT_ROW_ID+'" class="span12" style="height: 60px;" /></textarea></td>';
    
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_economic_code+td_sub_code+td_code_desc+'</tr>').appendTo("#economic_code_tbl > tbody");
    
    var td_unit        = '<td><input type="text" name="unit_'+COMPONENT_ROW_ID+'"       id="unit_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    var td_unit_cost   = '<td><input type="text" name="unit_cost_'+COMPONENT_ROW_ID+'"  id="unit_cost_'+COMPONENT_ROW_ID+'" value="" class="span12" readonly /></td>';
    var td_qty         = '<td><input type="text" name="qty_'+COMPONENT_ROW_ID+'"        id="qty_'+COMPONENT_ROW_ID+'" value="" class="span12" onChange="calculateUnitCost('+COMPONENT_ROW_ID+');" /></td>';
    var td_total_cost  = '<td><input type="text" name="total_cost_'+COMPONENT_ROW_ID+'" id="total_cost_'+COMPONENT_ROW_ID+'" value="" class="span12" readonly /></td>';
    
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_unit + td_unit_cost + td_qty + td_total_cost + '</tr>').appendTo("#total_cost_tbl > tbody");
    
    var td_total_gob    = '<td><input type="text" name="total_gob_'+COMPONENT_ROW_ID+'"    id="total_gob_'+COMPONENT_ROW_ID+'" value="" class="span12" /><br>\n\
                               <input type="text" name="total_gob_fe_'+COMPONENT_ROW_ID+'" id="total_gob_fe_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    var td_pa_gob       = '<td><input type="text" name="pa_gob_'+COMPONENT_ROW_ID+'"       id="pa_gob_'+COMPONENT_ROW_ID+'" value="" class="span9" /></td>';
    var td_pa_spc_acnt  = '<td><input type="text" name="pa_spc_acnt_'+COMPONENT_ROW_ID+'"  id="pa_spc_acnt_'+COMPONENT_ROW_ID+'" value="" class="span9" /></td>';
    var td_pa_dpa       = '<td><input type="text" name="pa_dpa_'+COMPONENT_ROW_ID+'"       id="pa_dpa_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    var td_own_fund     = '<td><input type="text" name="own_fund_'+COMPONENT_ROW_ID+'"     id="own_fund_'+COMPONENT_ROW_ID+'" value="" class="span12" /><br>\n\
                               <input type="text" name="own_fund_fe_'+COMPONENT_ROW_ID+'"  id="own_fund_fe_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    var td_other        = '<td><input type="text" name="other_'+COMPONENT_ROW_ID+'"        id="other_'+COMPONENT_ROW_ID+'" value="" class="span12" /><br>\n\
                               <input type="text" name="other_fe_'+COMPONENT_ROW_ID+'"     id="other_fe_'+COMPONENT_ROW_ID+'" value="" class="span12" /></td>';
    
    var td_hidden      = '<input type="hidden" name="annex_id_'+COMPONENT_ROW_ID+'" id="annex_id_'+COMPONENT_ROW_ID+'" value="" >'
    $('<tr id="tr_'+COMPONENT_ROW_ID+'">'+ td_total_gob + td_pa_gob + td_pa_spc_acnt + td_pa_dpa + td_own_fund + td_other +td_hidden + '</tr>').appendTo("#total_cost_breakdown_tbl > tbody");
    
    $(".chzn-select").chosen();
    componentRowIDArray.push(COMPONENT_ROW_ID);
    COMPONENT_ROW_ID++;
    
    adjustComponentRowPerYear(1,COMPONENT_ROW_ID-1);
}

var YEAR_COUNT = 1;

function addNewYear()
{
    var component_details_breakdown_div = '<div class="total_cost_breakdown_container" id="total_cost_breakdown_container_'+YEAR_COUNT+'">\n\
                                               <i class="icon-exchange" id="toggle_total_cost_breakdown"></i> \n\
                                               Fiscal Year: <input type="text" name="fiscal_year" id="fiscal_year">\n\
                                               <table id="total_cost_breakdown_tbl_'+YEAR_COUNT+'" class="table table-striped table-bordered table-hover table_bug_report">\n\
                                                   <thead>\n\
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
                                                   <tbody id="total_cost_breakdown_content_'+YEAR_COUNT+'"></tbody>\n\
                                               </table>\n\
                                           </div>';
    
    var main_div_width = 94;
    var width_increment = 45*YEAR_COUNT;
    $('#annex-container').css('width', main_div_width+width_increment+'%');
    
    $('#annex-container').append(component_details_breakdown_div);
    $('#total_year_in_annexv').val(YEAR_COUNT);
    
    YEAR_COUNT++;
    
    adjustComponentRowPerYear(YEAR_COUNT-1,1);
}

function adjustComponentRowPerYear(thisyear,compnents)
{
    for(var year=thisyear; year<=YEAR_COUNT-1; year++)
    {
        for(var i=compnents; i<=COMPONENT_ROW_ID-1; i++)
        {
            var td_total_gob    = '<td><input type="text" name="gob_'+year+'_'+i+'"                  id="gob_'+year+'_'+i+'"                 value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+i+');" /><br>\n\
                                       <input type="text" name="gob_fe_'+year+'_'+i+'"               id="gob_fe_'+year+'_'+i+'"              value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+i+');" /></td>';
            var td_pa_gob       = '<td><input type="text" name="rpa_through_gob_'+year+'_'+i+'"      id="rpa_through_gob_'+year+'_'+i+'"     value="" class="span9"  onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+i+');" /></td>';
            var td_pa_spc_acnt  = '<td><input type="text" name="rpa_special_account_'+year+'_'+i+'"  id="rpa_special_account_'+year+'_'+i+'" value="" class="span9"  onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+i+');" /></td>';
            var td_pa_dpa       = '<td><input type="text" name="dpa_'+year+'_'+i+'"                  id="dpa_'+year+'_'+i+'"                 value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+i+');" /></td>';
            var td_own_fund     = '<td><input type="text" name="own_fund_'+year+'_'+i+'"             id="own_fund_'+year+'_'+i+'"            value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+i+');" /><br>\n\
                                       <input type="text" name="own_fund_fe_'+year+'_'+i+'"          id="own_fund_fe_'+year+'_'+i+'"         value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+i+');" /></td>';
            var td_other        = '<td><input type="text" name="other_'+year+'_'+i+'"                id="other_'+year+'_'+i+'"               value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+i+');" /><br>\n\
                                       <input type="text" name="other_fe_'+year+'_'+i+'"             id="other_fe_'+year+'_'+i+'"            value="" class="span12" onkeypress="return isNumberKey(event);" onChange="calculateComponentYearTotal('+year+', '+i+');" /></td>';
            var td_comp_total   = '<td><input type="text" name="total_'+year+'_'+i+'"                id="total_'+year+'_'+i+'"               value="" class="span12" readonly /></td>';
            var td_hidden       = '<input type="hidden"   name="annex_details_id_'+year+'_'+i+'"     id="annex_details_id_'+year+'_'+i+'" />';
        
            $('<tr id="tr_'+year+'_'+i+'">'+ td_total_gob + td_pa_gob + td_pa_spc_acnt + td_pa_dpa + td_own_fund + td_other + td_comp_total + td_hidden +'</tr>').appendTo("#total_cost_breakdown_tbl_"+year+" > tbody");
        }
    }
}

var distributionArray = ['gob_', 'rpa_through_gob_', 'rpa_special_account_', 'dpa_', 'own_fund_', 'other_']; 

function calculateComponentYearTotal(yearID, elemID)
{
    var year_total = 0;
    
    for(var i=0; i<distributionArray.length; i++)
    {
        if ($('#'+distributionArray[i]+yearID+'_'+elemID).val() )
        {
            year_total += $('#'+distributionArray[i]+yearID+'_'+elemID).val()*1
        }
    }
             
    $('#total_'+yearID+'_'+elemID).val(year_total.toMoney(2));   

    //Total Cost Count
    calculateComponentTotalCost(elemID);  
    calculateUnitCost(elemID);
    calculateComponentTotalGoB_FE(elemID);
    calculateComponentTotalProjectAid(elemID);
    calculateComponentTotalOwnFundFE(elemID);
    calculateComponentTotalOtherFE(elemID);
}

function calculateComponentTotalCost(elemID)
{
     var total_cost = 0;
     
     for(var i=1;i<YEAR_COUNT;i++)
     {
         total_cost += $('#total_'+i+'_'+elemID).val()*1;
         
     }
     
     $('#total_cost_'+elemID).val(total_cost.toMoney(2))
}

function calculateUnitCost(elemID)
{
    var qty = $('#qty_'+elemID).val()*1;
    
    if (qty)
    {
        $('#unit_cost_'+elemID).val( ($('#total_cost_'+elemID).val()*1/qty).toMoney(2) ); 
    }
    else
    {
        $('#unit_cost_'+elemID).val('0.00');
    }
}

function calculateComponentTotalGoB_FE(elemID)
{
     var total_gob = 0;
     var total_fe  = 0;
     
     for(var i=1;i<YEAR_COUNT;i++)
     {
         total_gob += $('#gob_'+i+'_'+elemID).val()*1;
         total_fe  += $('#gob_fe_'+i+'_'+elemID).val()*1;
         
     }
     $('#total_gob_'+elemID).val(total_gob.toMoney(2))
     $('#total_gob_fe_'+elemID).val(total_fe.toMoney(2))
    
}

function calculateComponentTotalProjectAid(elemID)
{
     var total_thourgh_gob      = 0;
     var total_special_account  = 0;
     var total_dpa              = 0;
     
     for(var i=1;i<YEAR_COUNT;i++)
     {
         total_thourgh_gob      += $('#rpa_through_gob_'+i+'_'+elemID).val()*1;
         total_special_account  += $('#rpa_special_account_'+i+'_'+elemID).val()*1;
         total_dpa              += $('#dpa_'+i+'_'+elemID).val()*1;
         
     }
     $('#pa_gob_'+elemID).val(total_thourgh_gob.toMoney(2))
     $('#pa_spc_acnt_'+elemID).val(total_special_account.toMoney(2))
     $('#pa_dpa_'+elemID).val(total_dpa.toMoney(2))
    
}

function calculateComponentTotalOwnFundFE(elemID)
{
     var total_own_fund    = 0;
     var total_own_fund_fe = 0;
     
     for(var i=1;i<YEAR_COUNT;i++)
     {
         total_own_fund     += $('#own_fund_'+i+'_'+elemID).val()*1;
         total_own_fund_fe  += $('#own_fund_fe_'+i+'_'+elemID).val()*1;
     }

     $('#own_fund_'+elemID).val(total_own_fund.toMoney(2))
     $('#own_fund_fe_'+elemID).val(total_own_fund_fe.toMoney(2))
    
}

function calculateComponentTotalOtherFE(elemID)
{
     var total_other    = 0;
     var total_other_fe = 0;
     
     for(var i=1;i<YEAR_COUNT;i++)
     {
         total_other     += $('#other_'+i+'_'+elemID).val()*1;
         total_other_fe  += $('#other_fe_'+i+'_'+elemID).val()*1;
     }
     
     $('#other_'+elemID).val(total_other.toMoney(2))
     $('#other_fe_'+elemID).val(total_other_fe.toMoney(2))
    
}