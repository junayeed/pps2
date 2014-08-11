<?php
    /**
     * File: Message.class.php
     */

class Message
{
    public $id,$pid;
    
    /**
     * Constructor
     * @return
     */
    function Message($id= null,$pid = null)
    {
        $this->id   = $id;
        $this->pid  = $pid;
       
    }
    
    public function loadMessageByProject()
    {
        $info['table']  = PROJECT_MESSAGE_TBL;
        $info['debug']  = false;
        $info['where']  = "pid = $this->pid";
        
        $result = select($info);
        
        if($result)
        {
            foreach ($result AS $key=>$item)
            {
                if($item->doc_id)
                {
                    $result[$key]->file_location = getFileLocation($item->doc_id,$this->pid);
                }    
            }    
        }    
        return $result;
    }  
    
    public function save()
    {
        $info['table']  = PROJECT_MESSAGE_TBL;
        $info['debug']  = false;
        //$info['where']  = "pid = $this->pid";
        
        $data['pid']         = base64_decode(getUserField('PI')); 
        $data['title']       = getUserField('title');
        $data['msg']         = getUserField('msg');
        $data['doc_id']      = saveAttachment($_FILES['document'],$data['pid']);
        $data['msg_from']    = $_SESSION['user_type'];
        $data['msg_from_id'] = $_SESSION['uid'];
        
        $info['data']   = $data;
        $result = insert($info);
        return $result;
    }
    
}//End of Class
?>
