<?php

    function getProjectWiseDevelopmentPartners($project_id)
    {
        $info['table']  = PROJECT_DEV_PARTNER_TBL . ' AS PDPT LEFT JOIN ' . DEV_PARTNER_LOOKUP_TBL . ' AS DPLT ON (PDPT.dev_partner_id=DPLT.id)';
        $info['debug']  = false;
        $info['where']  = 'PDPT.pid = ' . $project_id;
        $info['fields'] = array('DPLT.name');

        $record = select($info);

        if(empty($record))
        {
            return null;
        }

        foreach($record AS $value)
        {
            $retData[] = $value->name;
        }
        
        return implode(', ', $retData);
    }
    
    function getAgencyWiseProjectList($projectlist)
    {
        foreach($projectlist as $value)
        {
//            $retData[$value->agency. '/' . $value->ministry][] = $value;
            $retData[$value->agency][] = $value;
        }
        
        return $retData;
    }
    
    function getMinistryAgencyWiseProjectList($projectList)
    {
        foreach($projectList as $value)
        {
            $retData[$value->agency . '  >>  ' . $value->ministry][] = $value;
        }

        return $retData;
    }
    
    function makePDF($screen)
    {
        ob_start();
        $dompdf = new DOMPDF();
        $dompdf->set_paper(DEFAULT_PDF_PAPER_SIZE, 'portrait');
        $dompdf->load_html($screen);
        $dompdf->render();
        
        //$dompdf->stream("dompdf_out.pdf", array("Attachment" => false));    
        $filename     = 'dynamic_report.pdf';
        $output       = $dompdf->output();
        $file_to_save = $_SERVER['DOCUMENT_ROOT'].'/files/'.$filename;
        file_put_contents($file_to_save, $output);
        
        /*header("HTTP/1.1 200 OK");
        header("Pragma: public");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: private", false);
        header('Content-Type: application/pdf');
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        header('Content-Type: text/plain; charset=utf-8');
        header("Content-Transfer-Encoding: binary");
        header('Content-Length: ' . filesize($filename));
        header ('Location: /files/'.$filename);

        readfile($filename);*/

        header('Content-Type: application/pdf');
        header("Content-Transfer-Encoding: Binary");
        header("Content-disposition: attachment; filename=" . $filename);
        readfile($file_to_save);
    }
?>