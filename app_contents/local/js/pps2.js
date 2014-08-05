// global variables procurement plan dynamic rows
var ROW_ID     = 1;
var rowIDArray = [];
var OUTER_DELIM = '###';

function isNumberKey(evt) 
{
   var charCode = (evt.which) ? evt.which : evt.keyCode;
   
   if(charCode == 46 || charCode == 8 || charCode == 9 || charCode == 37 || charCode == 39)
      return true;
      
   if (charCode < 48 || charCode > 57)
      return false;
   
   return true;
} 

function populateProcurementPlanDetails(package_no, procurement_desc, procurement_unit, procurement_qty, procurement_method, procurement_type,
                                        approv_auth, fund_src, estd_cost, tender_invitation, contract_sign, contract_completion, proc_plan_id, 
                                        procument_category)
{
    var elemID = ROW_ID-1; 

    $('#package_no_'+elemID).val(package_no);
    $('#procurement_desc_'+elemID).val(procurement_desc.replace(/#%/g,'\n')); 
    $('#procurement_unit_'+elemID).val(procurement_unit);
    $('#procurement_qty_'+elemID).val(procurement_qty);
    $('#procurement_method_'+elemID).val(procurement_method);
    $('#procurement_type_'+elemID).val(procurement_type);
    $('#approv_auth_'+elemID).val(approv_auth);
    $('#fund_src_'+elemID).val(fund_src);
    $('#estd_cost_'+elemID).val(estd_cost);
    $('#tender_invitation_'+elemID).val(tender_invitation);
    $('#contract_sign_'+elemID).val(contract_sign);
    $('#contract_completion_'+elemID).val(contract_completion);
    $('#proc_plan_id_'+elemID).val(proc_plan_id);
    $('#procument_category_'+elemID).val(procument_category);
    
    calculateProcurementTotal(procument_category);
}
function populateManagementDetails(name_of_the_post, qty,qualification, amount, responsibility, attachment,id)
{
    var elemID = ROW_ID-1; 

    $('#name_of_the_post_'+elemID).val(name_of_the_post);
    $('#qty_'+elemID).val(qty);
    $('#qualification_'+elemID).val(qualification);
    $('#amount_'+elemID).val(amount);
    $('#responsibility_'+elemID).val(responsibility);
    $('#attachment_'+elemID).val(attachment);
    $('#management_id_'+elemID).val(id);
    
     
}

function addNewProcuremtPlanRow(targetID, procurementCategory)
{
    var td_package_no           = '<td><input type="text" name="package_no_'+ROW_ID+'" id="package_no_'+ROW_ID+'" value="" class="span10" required /></td>';
    var td_procurement_desc     = '<td><textarea name="procurement_desc_'+ROW_ID+'" id="procurement_desc_'+ROW_ID+'" class="span12" style="resize: vertical;" required></textarea></td>';  
    var td_procurement_unit     = '<td><input type="text" name="procurement_unit_'+ROW_ID+'" id="procurement_unit_'+ROW_ID+'" value="" class="span12" maxlength="12" required /></td>';
    var td_procurement_qty      = '<td><input type="text" name="procurement_qty_'+ROW_ID+'" id="procurement_qty_'+ROW_ID+'" value="" class="span10" onkeypress="return isNumberKey(event);" required/></td>';
    var td_procurement_method   = '<td>'+getProcurementMethod('procurement_method_'+ROW_ID);+'</td>';
    var td_procurement_type     = '<td>'+getProcurementType('procurement_type_'+ROW_ID);+'</td>';
    var td_approv_auth          = '<td><input type="text" name="approv_auth_'+ROW_ID+'" id="approv_auth_'+ROW_ID+'" value="" class="span11" /></td>';
    var td_fund_src             = '<td><input type="text" name="fund_src_'+ROW_ID+'" id="fund_src_'+ROW_ID+'" value="" class="span12" /></td>';
    var td_estd_cost            = '<td><input type="text" name="estd_cost_'+ROW_ID+'" id="estd_cost_'+ROW_ID+'" value="" class="span12" onChange="calculateProcurementTotal(\''+procurementCategory+'\');" onkeypress="return isNumberKey(event);" required/></td>';
    var td_tender_invitation    = '<td><input class="span12 date-picker" id="tender_invitation_'+ROW_ID+'"  name="tender_invitation_'+ROW_ID+'" type="text" data-date-format="yyyy-mm-dd" /></td>';
    var td_contract_sign        = '<td><input class="span12 date-picker" id="contract_sign_'+ROW_ID+'" name="contract_sign_'+ROW_ID+'" type="text" data-date-format="yyyy-mm-dd" /></td>';
    var td_contract_completion  = '<td><input class="span12 date-picker" id="contract_completion_'+ROW_ID+'" name="contract_completion_'+ROW_ID+'" type="text" data-date-format="yyyy-mm-dd" /></td>';
    var td_prequal_invitation   = '<td><input class="span12 date-picker" id="prequal_invitation_'+ROW_ID+'" name="prequal_invitation_'+ROW_ID+'" type="text" data-date-format="yyyy-mm-dd" /></td>';
    var td_eoi_invitation       = '<td><input class="span12 date-picker" id="eoi_invitation_'+ROW_ID+'" name="eoi_invitation_'+ROW_ID+'" type="text" data-date-format="yyyy-mm-dd" /></td>';
    var td_action               = '<td id="td_action_'+ROW_ID+'">\n\
                                       <a href="javascript: void(0);" \n\
                                          onClick="deleteProcurementPlanRow('+ROW_ID+', \''+targetID+'\', \''+procurementCategory+'\');">\n\
                                           <img src="/app_contents/common/images/cross2.png">\n\
                                       </a>\n\
                                   </td>';
    var hidden_field    = '<input type="hidden" id="proc_plan_id_'+ROW_ID+'" name="proc_plan_id_'+ROW_ID+'" value="" >\n\
                           <input type="hidden" id="procument_category_'+ROW_ID+'" name="procument_category_'+ROW_ID+'" value="'+procurementCategory+'">';
    
    // if the procurement category is GOODS
   
    if ( procurementCategory == 'Goods' )
    {
        var $row = $('<tr id="tr_'+ROW_ID+'">'+ td_package_no+td_procurement_desc+td_procurement_unit+td_procurement_qty+td_procurement_method+td_procurement_type+
                                     td_approv_auth+td_fund_src+td_estd_cost+td_eoi_invitation+td_contract_sign+td_contract_completion+
                                     td_action+hidden_field+'</tr>').appendTo("#"+targetID+" > tbody");
         $row.find('.date-picker').datepicker();                     
    }
    else if ( procurementCategory == 'Works' )
    {
       var $row = $('<tr id="tr_'+ROW_ID+'">'+ td_package_no+td_procurement_desc+td_procurement_unit+td_procurement_qty+td_procurement_method+td_procurement_type+
                                     td_approv_auth+td_fund_src+td_estd_cost+td_prequal_invitation+td_tender_invitation+td_contract_sign+td_contract_completion+
                                     td_action+hidden_field+'</tr>').appendTo("#"+targetID+" > tbody");
         $row.find('.date-picker').datepicker();                     
    } 
    else if ( procurementCategory == 'Services' )
    {
       var $row = $('<tr id="tr_'+ROW_ID+'">'+ td_package_no+td_procurement_desc+td_procurement_unit+td_procurement_qty+td_procurement_method+td_procurement_type+
                                     td_approv_auth+td_fund_src+td_estd_cost+td_prequal_invitation+td_tender_invitation+td_contract_sign+td_contract_completion+
                                     td_action+hidden_field+'</tr>').appendTo("#"+targetID+" > tbody");
         $row.find('.date-picker').datepicker();                     
    } 
        
    rowIDArray.push(ROW_ID);
    ROW_ID++;
}

function addNewProjectManagementRow()
{
    
    var td_sr_no             = '<td>'+ROW_ID+'</td>';
    var td_name_of_post      = '<td><input type="text" name="name_of_the_post_'+ROW_ID+'" id="name_of_the_post_'+ROW_ID+'" value="" class="span10" required /></td>';
    var td_qty               = '<td><input type="text" name="qty_'+ROW_ID+'" id="qty_'+ROW_ID+'" class="span12" required /></td>';  
    var td_qualification     = '<td><textarea name="qualification_'+ROW_ID+'" id="qualification_'+ROW_ID+'" class="span12" style="resize: vertical;" required></textarea></td>';
    var td_amount            = '<td><input type="text" name="amount_'+ROW_ID+'" id="amount_'+ROW_ID+'" value="" class="span10" onkeypress="return isNumberKey(event);" required/></td>';
    var td_responsibility    = '<td><textarea name="responsibility_'+ROW_ID+'" id="responsibility_'+ROW_ID+'" class="span12" style="resize: vertical;" required></textarea></td>';
    var td_attachment        = '<td><input type="text" name="attachment_'+ROW_ID+'" id="attachment_'+ROW_ID+'" value="" class="span11" /></td>';
    var td_action            = '<td id="td_action_'+ROW_ID+'">\n\
                                       <a href="javascript: void(0);" \n\
                                          onClick="deleteManagementRow('+ROW_ID+');">\n\
                                           <img src="/app_contents/common/images/cross2.png">\n\
                                       </a>\n\
                                   </td>';
    var hidden_field    = '<input type="hidden" id="management_id_'+ROW_ID+'" name="management_id_'+ROW_ID+'" value="" >\n';
    
    // if the procurement category is GOODS
   $('<tr id="tr_'+ROW_ID+'">'+ td_sr_no+td_name_of_post+td_qty+td_qualification+td_amount+td_responsibility+
                             td_attachment+td_action+hidden_field+'</tr>').appendTo("#management_content");
  
        
    rowIDArray.push(ROW_ID);
    ROW_ID++;
}

function calculateProcurementTotal(procurementCategory)
{
    var i;
    var procurement_total = 0;
    //alert(rowIDArray);
    for (i=0; i<rowIDArray.length; i++)
    {
        //alert('i = '+i+'Row Id = ' + rowIDArray[i] + ' Val = ' + $('#estd_cost_'+rowIDArray[i]).val());
        procurement_total += $('#estd_cost_'+rowIDArray[i]).val()*1;
    }
    
    $('#'+procurementCategory+'_total').val(procurement_total.toMoney(2));
}

function deleteManagementRow(elemID)
{
     var domainname     = window.location.hostname;
     var management_id  = $('#management_id_'+elemID).val();
     if ( confirm('The record will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
    { 
        $.ajax
        (
            {                                      
                url: 'http://'+domainname+'/app/ajax/ajax.php?cmd=deleteManagement',                          
                data: "management_id="+management_id,                              
                dataType: 'json',                                         //data format      
                success: function(responseText)                           //on recieve of reply
                {
                    if(responseText=='1')
                    {
                       $('#management_content').find('#tr_' + elemID).fadeOut(50,function() 
                        {
                            $('#management_content > #tr_' + elemID).remove();
                        });

                        var index = rowIDArray.indexOf(elemID);
                        if(index!=-1)
                        {
                            rowIDArray.splice(index, 1);
                        }

                    } 
                }
            } 
        );  
    
        if(!management_id)
        {    
           $('#management_content').find('#tr_' + elemID).fadeOut(50,function() 
            {
                $('#management_content > #tr_' + elemID).remove();
            });

            var index = rowIDArray.indexOf(elemID);
            if(index!=-1)
            {
                rowIDArray.splice(index, 1);
            }
        }
    }
}

function deleteProcurementPlanRow(elemID, targetID, procurementCategory)
{
    var proc_plan_id        = $('#proc_plan_id_'+elemID).val();
    
    if ( confirm('The record will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
    {
        $.ajax
        (
            {
                url: 'project_manager.php?cmd=deleteprocplan',
                data: "proc_plan_id="+proc_plan_id+"&proc_category="+procurementCategory,
                dataType: 'json',
                success: function(responseText)
                {
                    var content = responseText.split(OUTER_DELIM);
                    
                    if ( content[1] == 'Success')
                    {
                        $('#'+targetID+' > tbody').find('#tr_' + elemID).fadeOut(50,function() 
                        {
                            $('#'+targetID+' > tbody > #tr_' + elemID).remove();
                        });

                        var index = rowIDArray.indexOf(elemID);
                        if(index!=-1)
                        {
                            rowIDArray.splice(index, 1);
                        }
                        
                        calculateProcurementTotal(procurementCategory);
                    }
                    else
                    {
                        $('#'+targetID+' > tbody').find('#tr_' + elemID).fadeOut(50,function() 
                        {
                            $('#'+targetID+' > tbody > #tr_' + elemID).remove();
                        });

                        var index = rowIDArray.indexOf(elemID);
                        if(index!=-1)
                        {
                            rowIDArray.splice(index, 1);
                        }
                        
                        calculateProcurementTotal(procurementCategory);
                    }
                }    
            }
        );
    }
    
    calculateProcurementTotal(procurementCategory);
}

function getProcurementMethod(elemName)
{
    var str_options = '';
    for(var i=0; i<procurement_method.length; i++)
    {
        str_options += '<option value="'+procurement_method[i]+'">'+procurement_method[i]+'</option>';
    }
    return '<select name='+elemName+' id='+elemName+' class="span10">' + str_options + '</select>';
}

function getProcurementType(elemName)
{
    var str_options = '';
    
    for(var i=0; i<procurement_type.length; i++)
    {
        str_options += '<option value="'+procurement_type[i]+'">'+procurement_type[i]+'</option>';
    }
    
    return '<select name='+elemName+' id='+elemName+' class="span12">' + str_options + '</select>';
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
   t = (typeof thousands_sep === 'undefined') ? '' : thousands_sep, //if you don't want ot use a thousands separator you can pass empty string as thousands_sep value
                                                                                                                                                                      
   sign = (n < 0) ? '-' : '',                                                                                                                                         
                                                                                                                                                                      
   //extracting the absolute value of the integer part of the number and converting to string                                                                         
   i = parseInt(n = Math.abs(n).toFixed(c)) + '',                                                                                                                     
                                                                                                                                                                      
   j = ((j = i.length) > 3) ? j % 3 : 0;                                                                                                                              
   return sign + (j ? i.substr(0, j) + t : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : '');                
}