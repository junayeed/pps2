

function showProjectSummary(elemID)
{
  alert(elemID);
    if( $('#project_summary_'+elemID).is(":visible") )
    {
        $('#project_summary_'+elemID).hide("slow");
    }
    else
    {
        $('#project_summary_'+elemID).show("slow");
    }
}