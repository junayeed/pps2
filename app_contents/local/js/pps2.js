// global variables procurement plan dynamic rows
var ROW_ID               = 1;

function addNewProcuremtPlanRow(targetID, procurementType)
{
    var td_package_no           = '<td><input type="text" name="package_no_'+ROW_ID+'" id="package_no_'+ROW_ID+'" value="" class="span10" /></td>';
    var td_procurement_desc     = '<td><textarea name="procurement_desc_'+ROW_ID+'" id="procurement_desc_'+ROW_ID+'" class="span12" style="resize: vertical;"></textarea></td>';  
    var td_procurement_unit     = '<td><input type="text" name="procurement_unit_'+ROW_ID+'" id="procurement_unit_'+ROW_ID+'" value="" class="span10" /></td>';
    var td_procurement_qty      = '<td><input type="text" name="procurement_qty_'+ROW_ID+'" id="procurement_qty_'+ROW_ID+'" value="" class="span8" /></td>';
    var td_procurement_method   = '<td>'+getProcurementMethod('procurement_method_'+ROW_ID);+'</td>';
    var td_procurement_type     = '<td>'+getProcurementType('procurement_type_'+ROW_ID);+'</td>';
    var td_approv_auth          = '<td><input type="text" name="approv_auth_'+ROW_ID+'" id="approv_auth_'+ROW_ID+'" value="" class="span11" /></td>';
    var td_fund_src             = '<td><input type="text" name="approv_auth_'+ROW_ID+'" id="approv_auth_'+ROW_ID+'" value="" class="span12" /></td>';
    var td_estd_cost            = '<td><input type="text" name="fund_src_'+ROW_ID+'" id="fund_src_'+ROW_ID+'" value="" class="span8" /></td>';
    var td_tender_invitation    = '<td><input class="span12 date-picker" id="tender_invitation_'+ROW_ID+'" name="tender_invitation_'+ROW_ID+'" type="text" data-date-format="dd/mm/yyyy" /></td>';
    var td_contract_sign        = '<td><input class="span12 date-picker" id="contract_sign_'+ROW_ID+'" name="contract_sign_'+ROW_ID+'" type="text" data-date-format="dd/mm/yyyy" /></td>';
    var td_contract_completion  = '<td><input class="span12 date-picker" id="contract_completion_'+ROW_ID+'" name="contract_completion_'+ROW_ID+'" type="text" data-date-format="dd/mm/yyyy" /></td>';
    var td_action               = '<td id="td_action_'+ROW_ID+'"><a href="javascript: void(0);" onClick="deleteOrderDetailsRow('+ROW_ID+');"><img src="/app_contents/common/images/cross2.png"></a></td>';
    var hidden_field    = '<input type="hidden" id="pid_'+ROW_ID+'" name="pid_'+ROW_ID+'" value="" >\n\
                           <input type="hidden" id="order_details_id_'+ROW_ID+'" name="order_details_id_'+ROW_ID+'" value="">\n\
                           <input type="hidden" id="product_option_'+ROW_ID+'" name="product_option_'+ROW_ID+'" value="">';
     
    $('<tr id="tr_'+ROW_ID+'">'+ td_package_no+td_procurement_desc+td_procurement_unit+td_procurement_qty+td_procurement_method+td_procurement_type+
                                 td_approv_auth+td_fund_src+td_estd_cost+td_tender_invitation+td_contract_sign+td_contract_completion+
                                 td_action+'</tr>').appendTo("#"+targetID+" > tbody");
    
    ROW_ID++;
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
    return '<select name='+elemName+' id='+elemName+' class="span10">\n\
                <option value="NCT">NCT</option>\n\
                <option value="INT">INT</option>\n\
            </select>';
}

function deleteOrderDetailsRow(elemID)
{
    //alert($("#order_tbl > tbody").find("#tr_"+elemID).length);
    var order_details_id = $('#order_no_'+elemID).val();
    var customer_id      = $('#customer_id').val();
    var product_id       = $('#pid_'+elemID).val();
    
    if ( doConfirm("Order # " + order_details_id + " will be deleted.\nThis will also delete the schedule entries.\n" + PROMPT_DELETE_CONFIRM ) )
    {
        $.ajax
        (
            {
                url: 'order_manager.php?cmd=deleteorder',                //the script to call to get data          
                data: "order_details_id="+order_details_id+"&customer_id="+customer_id+"&product_id="+product_id,
                dataType: 'json',                                        //data format      
                success: function(responseText)                          //on recieve of reply
                {
                    var content = responseText.split(OUTER_DELIM);
                    
                    if ( content[1] == 'Success')
                    {
                        $("#order_tbl > tbody").find("#tr_" + elemID).fadeOut(1000,function() 
                        {
                            $('#order_tbl > tbody > #tr_' + elemID).remove();
                        });
                        // show the success message and then fade out the message box
                        $('#message_content').removeClass('error');
                        $('#message_content').addClass('success');
                        $('#message_content').show();
                        $('#message_content').text(content[0]);
                        $('#message_content').delay(2000).fadeOut(500);
                    }
                    else
                    {
                        // show the error message
                        $('#message_content').removeClass('success');
                        $('#message_content').addClass('error');
                        $('#message_content').text(content[0]);
                        $('#message_content').show();
                        $('#message_content').delay(2000).fadeOut(500);
                    }
                }    
            }
        );
    }
}