
function showProjectSummary(elemID)
{
//  alert('project_summary_'+elemID+'\nVis = '+$('#project_summary_'+elemID).is(":visible"));
  
  
    if( $('#project_summary_'+elemID).is(":visible") )
    {
        $('#project_summary_'+elemID).hide("slow");
    }
    else
    {
        $('#project_summary_'+elemID).show("slow");
    }
}

function showSearchResult()
{
    alert(1); return;
    //document.forms[0].submit();
}

function showPDFReport()
{
    $('#report_type').val('pdf');
    //alert($('#report_type').val()); return;
    document.forms[0].submit();
}