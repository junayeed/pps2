

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