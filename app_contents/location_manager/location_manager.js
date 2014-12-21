
function deleteLocation(id, step)
{
    if ( doConfirm('The information will be deleted.\n' + PROMPT_DELETE_CONFIRM) )
    {
        $.ajax
        (
            {                                      
                url: 'http://'+document.domain+'/app/ajax/ajax.php?cmd=deletelocation',
                data: "id="+id+"&step="+step,
                dataType: 'json',
                success: function(responseText)
                {
                    location.href = 'http://'+document.domain+'/app/location_manager/location_manager.php?step='+step;
                }
            } 
        );
    }
}