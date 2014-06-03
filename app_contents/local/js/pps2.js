// global variables procurement plan dynamic rows
var ROW_ID               = 1;

function isNumberKey(evt) 
{
   var charCode = (evt.which) ? evt.which : evt.keyCode;
   
   if(charCode == 46 || charCode == 8)
      return true;
      
   if (charCode < 48 || charCode > 57)
      return false;
   
   return true;
} 

function addNewProcuremtPlanRow(targetID, procurementCategory)
{
    var td_package_no           = '<td><input type="text" name="package_no_'+ROW_ID+'" id="package_no_'+ROW_ID+'" value="" class="span10" /></td>';
    var td_procurement_desc     = '<td><textarea name="procurement_desc_'+ROW_ID+'" id="procurement_desc_'+ROW_ID+'" class="span12" style="resize: vertical;"></textarea></td>';  
    var td_procurement_unit     = '<td><input type="text" name="procurement_unit_'+ROW_ID+'" id="procurement_unit_'+ROW_ID+'" value="" class="span12" maxlength="12" /></td>';
    var td_procurement_qty      = '<td><input type="text" name="procurement_qty_'+ROW_ID+'" id="procurement_qty_'+ROW_ID+'" value="" class="span10" onkeypress="return isNumberKey(event);" /></td>';
    var td_procurement_method   = '<td>'+getProcurementMethod('procurement_method_'+ROW_ID);+'</td>';
    var td_procurement_type     = '<td>'+getProcurementType('procurement_type_'+ROW_ID);+'</td>';
    var td_approv_auth          = '<td><input type="text" name="approv_auth_'+ROW_ID+'" id="approv_auth_'+ROW_ID+'" value="" class="span11" /></td>';
    var td_fund_src             = '<td><input type="text" name="fund_src_'+ROW_ID+'" id="fund_src_'+ROW_ID+'" value="" class="span12" /></td>';
    var td_estd_cost            = '<td><input type="text" name="estd_cost_'+ROW_ID+'" id="estd_cost_'+ROW_ID+'" value="" class="span12" onChange="calculateProcurementTotal(\''+procurementCategory+'\');" /></td>';
    var td_tender_invitation    = '<td><input class="span12 date-picker" id="tender_invitation_'+ROW_ID+'" name="tender_invitation_'+ROW_ID+'" type="text" data-date-format="yyyy-mm-dd" /></td>';
    var td_contract_sign        = '<td><input class="span12 date-picker" id="contract_sign_'+ROW_ID+'" name="contract_sign_'+ROW_ID+'" type="text" data-date-format="yyyy-mm-dd" /></td>';
    var td_contract_completion  = '<td><input class="span12 date-picker" id="contract_completion_'+ROW_ID+'" name="contract_completion_'+ROW_ID+'" type="text" data-date-format="yyyy-mm-dd" /></td>';
    var td_action               = '<td id="td_action_'+ROW_ID+'">\n\
                                       <a href="javascript: void(0);" onClick="deleteProcurementPlanRow('+ROW_ID+', \''+targetID+'\', \''+procurementCategory+'\');">\n\
                                           <img src="/app_contents/common/images/cross2.png">\n\
                                       </a>\n\
                                   </td>';
    var hidden_field    = '<input type="hidden" id="proc_plan_id_'+ROW_ID+'" name="proc_plan_id_'+ROW_ID+'" value="" >\n\
                           <input type="hidden" id="order_details_id_'+ROW_ID+'" name="order_details_id_'+ROW_ID+'" value="">\n\
                           <input type="hidden" id="product_option_'+ROW_ID+'" name="product_option_'+ROW_ID+'" value="">\n\
                           <input type="hidden" id="procument_category_'+ROW_ID+'" name="procument_category_'+ROW_ID+'" value="'+procurementCategory+'">';
     
    $('<tr id="tr_'+ROW_ID+'">'+ td_package_no+td_procurement_desc+td_procurement_unit+td_procurement_qty+td_procurement_method+td_procurement_type+
                                 td_approv_auth+td_fund_src+td_estd_cost+td_tender_invitation+td_contract_sign+td_contract_completion+
                                 td_action+'</tr>').appendTo("#"+targetID+" > tbody");
    
    ROW_ID++;
}

function calculateProcurementTotal(procurementCategory)
{
    var i;
    var procurement_total = 0;

    for (i=1; i<=ROW_ID; i++)
    {
        if( $('#estd_cost_'+i).length )
        {
            alert('Val = '+ $('#estd_cost_'+i).val());
            procurement_total += $('#estd_cost_'+i).val()*1;
        }
    }
    
    $('#'+procurementCategory+'_total').val(procurement_total.toMoney(2));
}

function deleteProcurementPlanRow(elemID, targetID, procurementCategory)
{
    $('#'+targetID+' > tbody').find('#tr_' + elemID).fadeOut(700,function() 
    {
        $('#'+targetID+' > tbody > #tr_' + elemID).remove();
    });
    calculateProcurementTotal(procurementCategory);
//    if ( doConfirm('The will be deleted.\n' + PROMPT_DELETE_CONFIRM ) )
//    {
//        $.ajax
//        (
//            {
//                url: 'project_manager.php?cmd=deleteprocplan',
//                data: "order_details_id="+order_details_id+"&customer_id="+customer_id+"&product_id="+product_id,
//                dataType: 'json',
//                success: function(responseText)
//                {
//                    var content = responseText.split(OUTER_DELIM);
//                    
//                    if ( content[1] == 'Success')
//                    {
//                        $('#'+targetID+' > tbody').find('#tr_' + elemID).fadeOut(700,function() 
//                        {
//                            $('#'+targetID+' > tbody > #tr_' + elemID).remove();
//                        });
//                        // show the success message and then fade out the message box
//                        $('#message_content').removeClass('error');
//                        $('#message_content').addClass('success');
//                        $('#message_content').show();
//                        $('#message_content').text(content[0]);
//                        $('#message_content').delay(2000).fadeOut(500);
//                    }
//                    else
//                    {
//                        // show the error message
//                        $('#message_content').removeClass('success');
//                        $('#message_content').addClass('error');
//                        $('#message_content').text(content[0]);
//                        $('#message_content').show();
//                        $('#message_content').delay(2000).fadeOut(500);
//                    }
//                }    
//            }
//        );
//    }
    
    
}

function getProcurementMethod(elemName)
{
    return '<select name='+elemName+' id='+elemName+' class="span12">\n\
                <option value="DPM">DPM</option>\n\
                <option value="RFQM">RFQM</option>\n\
                <option value="TSTM">TSTM</option>\n\
                <option value="RTM">RTM</option>\n\
                <option value="OTM">OTM</option>\n\
            </select>'
}

function getProcurementType(elemName)
{
    return '<select name='+elemName+' id='+elemName+' class="span12">\n\
                <option value="NCT">NCT</option>\n\
                <option value="INT">INT</option>\n\
            </select>';
}

Number.prototype.toMoney = function(decimals, decimal_sep, thousands_sep)                                                                                             
{                                                                                                                                                                     
   var n = this,                                                                                                                                                      
   c = isNaN(decimals) ? 2 : Math.abs(decimals), //if decimal is zero we must take it, it means user does not want to show any decimal                                
   d = decimal_sep || '.', //if no decimal separetor is passed we use the comma as default decimal separator (we MUST use a decimal separator)                        
                                                                                                                                                                      
   /*                                                                                                                                                                 
   according to [http://stackoverflow.com/questions/411352/how-best-to-determine-if-an-argument-is-not-sent-to-the-javascript-function]                               
   the fastest way to check for not defined parameter is to use typeof value === 'undefined'                                                                          
   rather than doing value === undefined.                                                                                                                             
   */                                                                                                                                                                 
   t = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep, //if you don't want ot use a thousands separator you can pass empty string as thousands_sep value
                                                                                                                                                                      
   sign = (n < 0) ? '-' : '',                                                                                                                                         
                                                                                                                                                                      
   //extracting the absolute value of the integer part of the number and converting to string                                                                         
   i = parseInt(n = Math.abs(n).toFixed(c)) + '',                                                                                                                     
                                                                                                                                                                      
   j = ((j = i.length) > 3) ? j % 3 : 0;                                                                                                                              
   return sign + (j ? i.substr(0, j) + t : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : '');                
}