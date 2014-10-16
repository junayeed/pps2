var COMPONENT_ROW_ID     = 1;
var componentRowIDArray  = [];
var YEAR_COUNT           = 1;
var distributionArray    = ['gob_', 'rpa_through_gob_', 'rpa_special_account_', 'dpa_', 'own_fund_', 'other_']; 


function updateMajorItems(id,thisField)
{
    
    
    var domainname = window.location.hostname;
    var major_item = thisField.checked ? 'Yes':'No' ;
   
    $.ajax
    (
        {                                      
            url: 'http://'+domainname+'/app/ajax/ajax.php?cmd=updateMajorItems',                    //the script to call to get data          
            data: "id="+id+"&major_item="+major_item,                               //you can insert url argumnets here to pass to api.php   //for example "id=5&parent=6"
            dataType: 'json',                                         //data format      
            success: function(responseText)                           //on recieve of reply
            {
               
            }
        } 
    );  
}

function submittForm()
{
    //alert(1);
    //$(".chzn-select").chosen(); 
    //$(".chzn-select").trigger("chosen:updated");
    return true;
}

function calculateModeOfFinanceGrandTotal()
{
    var total_gob             = $('#gob_inkind').val()*1+$('#gob_incash_local').val()*1+$('#gob_incash_fe').val()*1; 
    
    var total_partner         = $('#partner_inkind').val()*1+$('#partner_incash_local').val()*1+$('#partner_incash_fe').val()*1;
    
    var total_ownfund         = $('#ownfund_inkind').val()*1+$('#ownfund_incash_local').val()*1+$('#ownfund_incash_fe').val()*1;
    
    var total_other           = $('#other_inkind').val()*1+$('#other_incash_local').val()*1+$('#other_incash_fe').val()*1;
    
    var grand_total_total     = $('#grant_total_inkind').val()*1+$('#grant_total_incash_local').val()*1+$('#grant_total_incash_fe').val()*1;
    
    var total_inkind          = $('#gob_inkind').val()*1+$('#partner_inkind').val()*1+$('#ownfund_inkind').val()*1+$('#other_inkind').val()*1;
    
    var total_incash_local    = $('#gob_incash_local').val()*1+$('#partner_incash_local').val()*1+$('#ownfund_incash_local').val()*1+$('#other_incash_local').val()*1;
    
    var total_incash_fe       = $('#gob_incash_fe').val()*1+$('#partner_incash_fe').val()*1+$('#ownfund_incash_fe').val()*1+$('#other_incash_fe').val()*1;
    
    var grant_total_total     = total_inkind + total_incash_local + total_incash_fe;
    
//    alert(grant_total_total)
    $('#gob_total').val(total_gob.toMoney(2));
    $('#partner_total').val(total_partner.toMoney(2));
    $('#ownfund_total').val(total_ownfund.toMoney(2));
    $('#other_total').val(total_other.toMoney(2));
    $('#grant_total_total').val(grand_total_total.toMoney(2));
    $('#grant_total_inkind').val(total_inkind.toMoney(2));
    $('#grant_total_incash_local').val(total_incash_local.toMoney(2));
    $('#grant_total_incash_fe').val(total_incash_fe.toMoney(2));
    $('#grant_total_total').val(grant_total_total.toMoney(2));
    
    //validateModeOfFinanceCostWithProjectCost();
}

function validateModeOfFinanceCostWithProjectCost()
{
    // Check the GoB
    if($('#total_gob').val() != project_total_gob) { highlightColumn('total_gob'); highlightTableColumn('total_gob');highlightTableColumn('lbl_project_gob_cost');}
    else { resetColumn('total_gob'); resetTableColumn('total_gob'); resetTableColumn('lbl_project_gob_cost');}
    
    // Check GoB FE
    if($('#total_gob_fe').val() != project_total_gob_fe) { highlightColumn('total_gob_fe'); highlightTableColumn('total_gob_fe'); highlightTableColumn('lbl_project_gob_fe_cost');}
    else { resetColumn('total_gob_fe'); resetTableColumn('total_gob_fe'); resetTableColumn('lbl_project_gob_fe_cost');}
    
    // Check PA
    if($('#total_pa').val() != project_total_pa) { highlightColumn('total_pa', '#FCB000'); highlightTableColumn('total_pa', '#FCB000'); highlightTableColumn('lbl_pa', '#FCB000');}
    else { resetColumn('total_pa'); resetTableColumn('total_pa'); resetTableColumn('lbl_pa');}
    
    // Check RPA
    if($('#total_rpa').val() != project_total_rpa) { highlightColumn('total_rpa', '#FCB000'); highlightTableColumn('total_rpa', '#FCB000'); highlightTableColumn('lbl_rpa', '#FCB000');}
    else { resetColumn('total_rpa'); resetTableColumn('total_rpa'); resetTableColumn('lbl_rpa');}
    
    // Check Own Fund
    if($('#total_own_fund').val() != project_total_own_fund) { highlightColumn('total_own_fund', '#FF006A'); highlightTableColumn('total_own_fund', '#FF006A'); highlightTableColumn('lbl_project_own_fund', '#FF006A');}
    else {  resetColumn('total_own_fund'); resetTableColumn('total_own_fund'); resetTableColumn('lbl_project_own_fund'); }
    
    // Check Own Fund FE
    if($('#total_own_fund_fe').val() != project_total_own_fund_fe) { highlightColumn('total_own_fund_fe', '#FF006A'); highlightTableColumn('total_own_fund_fe', '#FF006A'); highlightTableColumn('lbl_project_own_fund_fe', '#FF006A');}
    else { resetColumn('total_own_fund_fe'); resetTableColumn('total_own_fund_fe'); resetTableColumn('lbl_project_own_fund_fe');}
    
    // Check Other
    if($('#total_other').val() != project_total_other) { highlightColumn('total_other', '#FF6600');  highlightTableColumn('total_other', '#FF6600'); highlightTableColumn('lbl_other_cost', '#FF6600');}
    else { resetColumn('total_other'); resetTableColumn('total_other'); resetTableColumn('lbl_other_cost');}
    
    // Check Other FE
    if($('#total_other_fe').val() != project_total_other_fe) { highlightColumn('total_other_fe', '#FF6600'); highlightTableColumn('total_other_fe', '#FF6600'); highlightTableColumn('lbl_other_fe_cost', '#FF6600');}
    else { resetColumn('total_other_fe'); resetTableColumn('total_other_fe'); resetTableColumn('lbl_other_fe_cost');}
}