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

function checkEmptyOrZero(elem)
{
    if ( ! $('#'+elem.id).val() || $('#'+elem.id).val() == 0)
    {
        $('#'+elem.id).val('0.00');
    }    
}

function calculateModeOfFinanceGrandTotal()
{
    var total_gob         = $('#loan_gob').val()*1+$('#grant_gob').val()*1+$('#equity_gob').val()*1+$('#others_gob').val()*1; 
    var total_gob_fe      = $('#loan_gob_fe').val()*1+$('#grant_gob_fe').val()*1+$('#equity_gob_fe').val()*1+$('#others_gob_fe').val()*1; 
    var total_pa          = $('#loan_pa').val()*1+$('#grant_pa').val()*1+$('#equity_pa').val()*1+$('#others_pa').val()*1; 
    var total_rpa         = $('#loan_pa_rpa').val()*1+$('#grant_pa_rpa').val()*1+$('#equity_pa_rpa').val()*1+$('#others_pa_rpa').val()*1;  
    var total_own_fund    = $('#loan_own_fund').val()*1+$('#grant_own_fund').val()*1+$('#equity_own_fund').val()*1+$('#others_own_fund').val()*1;  
    var total_own_fund_fe = $('#loan_own_fund_fe').val()*1+$('#grant_own_fund_fe').val()*1+$('#equity_own_fund_fe').val()*1+$('#others_own_fund_fe').val()*1; 
    var total_other       = $('#loan_others').val()*1+$('#grant_others').val()*1+$('#equity_others').val()*1+$('#others_others').val()*1; 
    var total_other_fe    = $('#loan_others_fe').val()*1+$('#grant_others_fe').val()*1+$('#equity_others_fe').val()*1+$('#others_others_fe').val()*1; 
    
    $('#total_gob').val(total_gob.toMoney(2));
    $('#total_gob_fe').val(total_gob_fe.toMoney(2));
    $('#total_pa').val(total_pa.toMoney(2));
    $('#total_rpa').val(total_rpa.toMoney(2));
    $('#total_own_fund').val(total_own_fund.toMoney(2));
    $('#total_own_fund_fe').val(total_own_fund_fe.toMoney(2));
    $('#total_other').val(total_other.toMoney(2));
    $('#total_other_fe').val(total_other_fe.toMoney(2));
    
    validateModeOfFinanceCostWithProjectCost();
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