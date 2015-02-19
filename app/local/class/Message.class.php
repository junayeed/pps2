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
        $info['where']  = "pid = $this->pid ORDER BY create_date DESC";
        
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
    
    
    public function loadCommissionStatusOfProject()
    {
        $info['table']  = PROJECT_COMMISSION_STATUS_TBL;
        $info['debug']  = false;
        $info['where']  = "pid = $this->pid ORDER BY create_date DESC";
        
        $result = select($info);
        
        return $result;
    }        
    
    
    public function loadAttachmentsByProject()
    {
        $info['table']  = PROJECT_ATTACHMENT_TBL;
        $info['debug']  = false;
        $info['where']  = "pid = $this->pid ORDER BY create_date DESC";
        
        $result = select($info);
        
        if($result)
        {
            foreach ($result AS $key=>$item)
            {
                if($item->doc_id)
                {
                    $result[$key]->file_location = getFileLocation($item->doc_id,$this->pid);
                    $result[$key]->doc_id        = $item->doc_id;
                }    
            }    
        }    
        return $result;
    }  
    
    public function saveAttachment()
    {
        $info['table']  = PROJECT_ATTACHMENT_TBL;
        $info['debug']  = false;
        //$info['where']  = "pid = $this->pid";
        
        $data['pid']         = base64_decode(getUserField('PI')); 
        $data['title']       = getUserField('title');
        $data['doc_id']      = saveAttachment($_FILES['document'],$data['pid']);
        
        $info['data']   = $data;
        $result = insert($info);
        
        return $result;
    }
    
    
}//End of Class
?>
