$('.assign_project').on('click', function () 
{
    var meetingID = $(this).attr('data-meetingID');
    var projectID = $(this).attr('data-projectID');
    var ID        = this.id;
    
    $.ajax
    (
        {                                      
            url: 'http://'+document.domain+'/app/ajax/ajax.php?cmd=assignECNECProject',
            data: "meetingID="+meetingID+"&projectID="+projectID,
            dataType: 'json',
            success: function(responseText)
            { 
                if (responseText == '1')
                {    
                    $('#'+ID).text("Assigned");
                    $('#'+ID).removeClass("btn-success");
                    $('#'+ID).addClass("btn-warning disabled");
                }        
                else if ( responseText == '2')
                {
                    alert('This project is already assigned to a meeting.');
                }
                    
            }
        } 
    );
});


$('.remove_project').on('click', function () 
{
    var meetingID = $(this).attr('data-meetingID');
    var projectID = $(this).attr('data-projectID');
    var ID        = this.id;
    
    $.ajax
    (
        {                                      
            url: 'http://'+document.domain+'/app/ajax/ajax.php?cmd=removeECNECProject',
            data: "meetingID="+meetingID+"&projectID="+projectID,
            dataType: 'json',
            success: function(responseText)
            { 
                {    
                    $('#'+ID).text("Assigned");
                    $('#'+ID).removeClass("btn-success");
                    $('#'+ID).addClass("btn-warning disabled");
                }        
            }
        } 
    );
});