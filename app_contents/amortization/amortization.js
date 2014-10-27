var YEAR_COUNTER = 1;

function calculate()
{
    var loan_period           = $('#loan_period').val()*1;
    var interest_rate         = $('#interest_rate').val()*1;
    var grace_period          = $('#grace_period').val()*1;
    var principal_grand_total = 0;
    var interest_grand_total  = 0;
    var payment_grand_total   = 0;
    var end_bal_grand_total   = 0;
    
    if ( loan_period > 0)
    {
        $("#amortization_schedule").empty();
    }
    
    var loan_gob           = $('#loan_gob').text()*1;
    var principal_amnt     = loan_gob*1; // beginnng amount
    var yearly_fixed_amnt  = (loan_gob/loan_period);
    var yearly_interest    = 0;
    var total_payment      = 0;
    var end_balance        = 0;
    
    if ( loan_period > 0 && interest_rate > 0 )
    {
        for(YEAR_COUNTER = 1; YEAR_COUNTER<=loan_period+grace_period; YEAR_COUNTER++)
        {
            yearly_fixed_amnt  = (YEAR_COUNTER <= grace_period) ? 0.00 : (loan_gob/loan_period);
            yearly_interest    = principal_amnt*interest_rate/100;
            total_payment      = yearly_fixed_amnt+yearly_interest;
            end_balance        = principal_amnt-yearly_fixed_amnt;

            var td_year              = '<td><input type="text" name="year_'+YEAR_COUNTER+'"               id="year_'+YEAR_COUNTER+'"              value="'+YEAR_COUNTER+'" class="span12 center" readonly /></td>';
            var td_principal_amnt    = '<td><input type="text" name="principal_amnt_'+YEAR_COUNTER+'"     id="principal_amnt_'+YEAR_COUNTER+'"    value="'+principal_amnt.toFixed(2) +'" class="span12 right" readonly /></td>';
            var td_yearly_fixed_amnt = '<td><input type="text" name="yearly_fixed_amnt_'+YEAR_COUNTER+'"  id="yearly_fixed_amnt_'+YEAR_COUNTER+'" value="'+yearly_fixed_amnt.toFixed(2)+'" class="span12 right" readonly /></td>';
            var td_yearly_interest   = '<td><input type="text" name="yearly_interest_'+YEAR_COUNTER+'"    id="yearly_interest_'+YEAR_COUNTER+'"   value="'+yearly_interest.toFixed(2)+'" class="span12 right" readonly /></td>';
            var td_total_payment     = '<td><input type="text" name="total_payment_'+YEAR_COUNTER+'"      id="total_payment_'+YEAR_COUNTER+'"     value="'+total_payment.toFixed(2)+'" class="span12 right" readonly /></td>';
            var td_end_balance       = '<td><input type="text" name="end_balance_'+YEAR_COUNTER+'"        id="end_balance_'+YEAR_COUNTER+'"       value="'+end_balance.toFixed(2)+'" class="span12 right" readonly /></td>';

            $('<tr id="tr_'+YEAR_COUNTER+'">'+ td_year + td_principal_amnt + td_yearly_fixed_amnt + td_yearly_interest + td_total_payment + td_end_balance + '</tr>').appendTo("#amortization_schedule_tbl > #amortization_schedule");

            principal_amnt     = end_balance; // beginnng amount
        }
        
        $('#years').val(YEAR_COUNTER-1);
    }
}

function populateAnnexVIDetails(year, principal_amnt, yearly_fixed_amnt, yearly_interest, total_payment, end_balance)
{
    var td_year              = '<td><input type="text" name="year_'+year+'"               id="year_'+year+'"              value="'+year+'" class="span12 center" readonly /></td>';
    var td_principal_amnt    = '<td><input type="text" name="principal_amnt_'+year+'"     id="principal_amnt_'+year+'"    value="'+principal_amnt +'" class="span12 right" readonly /></td>';
    var td_yearly_fixed_amnt = '<td><input type="text" name="yearly_fixed_amnt_'+year+'"  id="yearly_fixed_amnt_'+year+'" value="'+yearly_fixed_amnt+'" class="span12 right" readonly /></td>';
    var td_yearly_interest   = '<td><input type="text" name="yearly_interest_'+year+'"    id="yearly_interest_'+year+'"   value="'+yearly_interest+'" class="span12 right" readonly /></td>';
    var td_total_payment     = '<td><input type="text" name="total_payment_'+year+'"      id="total_payment_'+year+'"     value="'+total_payment+'" class="span12 right" readonly /></td>';
    var td_end_balance       = '<td><input type="text" name="end_balance_'+year+'"        id="end_balance_'+year+'"       value="'+end_balance+'" class="span12 right" readonly /></td>';

    var td_hidden      = '<input type="hidden" name="annex_id_'+year+'" id="annex_id_'+year+'" value="" >'
    $('<tr id="tr_'+year+'">'+ td_year + td_principal_amnt + td_yearly_fixed_amnt + td_yearly_interest + td_total_payment + td_end_balance + '</tr>').appendTo("#amortization_schedule_tbl > #amortization_schedule");
}

function createAnnexVIReport()
{
    var PI          = $('#PI').val();
    var report_type = $('#report_type').val();
    
    if (report_type)
    {
        location.href = 'http://'+document.domain+'/app/amortization/amortization.php?PI='+PI+'&report_type='+report_type;
    }
}