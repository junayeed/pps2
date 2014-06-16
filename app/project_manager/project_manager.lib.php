<?php

    function updateProcurementPlan()
    {
        $info['table'] = PROJECT_PROCUREMENT_PLAN_TBL;
        $info['debug'] = false;
        
        $data['pid']   = base64_decode(getUserField('PI'));
        
        foreach( $_REQUEST as $key => $value)
	{
            if( preg_match('/package_no_(\d+)/', $key, $matches))
            {
                $id = $matches[1];
                
                $data['package_no']             = $_REQUEST['package_no_' . $id];
                $data['procurement_desc']       = $_REQUEST['procurement_desc_' . $id];
	        $data['procurement_unit']       = $_REQUEST['procurement_unit_' . $id];
	        $data['procurement_qty']        = $_REQUEST['procurement_qty_' . $id];
	        $data['procurement_method']     = $_REQUEST['procurement_method_' . $id];
	        $data['procurement_type']       = $_REQUEST['procurement_type_' . $id];
	        $data['approv_auth']            = $_REQUEST['approv_auth_' . $id];
	        $data['fund_src']               = $_REQUEST['fund_src_' . $id];
	        $data['estd_cost']              = $_REQUEST['estd_cost_' . $id] ? $_REQUEST['estd_cost_' . $id] : 0.00;
	        $data['tender_invitation']      = $_REQUEST['tender_invitation_' . $id];
	        $data['contract_sign']          = $_REQUEST['contract_sign_' . $id];
	        $data['contract_completion']    = $_REQUEST['contract_completion_' . $id];
	        $data['prequal_invitation']     = $_REQUEST['prequal_invitation_' . $id];
	        $data['eoi_invitation']         = $_REQUEST['eoi_invitation_' . $id];
	        $data['create_date']            = date('Y-m-d');
	        $data['procurement_plan_id']    = $_REQUEST['proc_plan_id_' . $id];
                $data['procurement_category ']  = $_REQUEST['procurement_category_' .$id];
                
                $info['data'] = $data;                
                // if procurement_plan_id is there then update the record
                // else add a new record in procurement plan table
                if ( !$data['procurement_plan_id'] ) 
                {
                    insert($info);
                }
                else
                {
                    $info['where'] = 'id = ' . $data['procurement_plan_id'];
                    update($info);
                }
 	    }
        }
    }
    
    function getProcurementPlanList($pid, $procurement_category)
    {
        $info['table'] = PROJECT_PROCUREMENT_PLAN_TBL;
        $info['debug'] = false;
        $info['where'] = 'pid = ' . $pid . ' AND procurement_category = ' . q($procurement_category);
        
        $result = select($info);
        
        if ( !empty($result) )
        {
            return $result;
        }
    }
    
    function getProcurementMethodList()
    {
        $info['table']  = PROC_METHOD_LOOKUP_TBL;
        $info['debug']  = false;
        
        $result = select($info);
        
        if ( !empty($result) )
        {
            foreach($result as $value)
            {
                $retData[$value->id] = $value->procurement_method;
            }
            
            return $retData;
        }
    }
    
    function getProcurementTypeList()
    {
        $info['table']  = PROC_TYPE_LOOKUP_TBL;
        $info['debug']  = false;
        
        $result = select($info);
        
        if ( !empty($result) )
        {
            foreach($result as $value)
            {
                $retData[$value->id] = $value->procurement_type;
            }
            
            return $retData;
        }
    }
    
    function MakeExcel($data, $procurement_category)
    {
        $headerArray = array('A'=>'Package No.', 'B'=>"Description of Procurement Package as per DPP/TPP\n" . $procurement_category, 'C'=>'Unit', 
                             'D'=>'Quantity', 'E'=>'Procurement Method & Type', 'F'=>'Contract Approving Authority', 'G'=>'Source of Fund', 
                             'H'=>'Estd. Cost (In lakh tk)', 'I'=>'Not Used in GOODS', 'J'=>'Invitation for Tender', 'K'=>'Signing of Contract', 
                             'L'=>'Completion of Contract');
        
        $header = 'Annex - III (a)';
        
        if ($procurement_category == 'WORKS') 
        {
            $headerArray['I'] = "Invitation for Prequal\n(if applicable)";
            $header = 'Annex - III (b)';
        }
        else if ($procurement_category == 'SERVICES') 
        {
            $headerArray['I'] = "Invitation for EOI\n(if applicable)";
            $header = 'Annex - III (c)';
        }
        
        // create new PHPExcel object
        $objPHPExcel = new PHPExcel;

        // set default font
        $objPHPExcel->getDefaultStyle()->getFont()->setName('Calibri');

        // set default font size
        $objPHPExcel->getDefaultStyle()->getFont()->setSize(8);
        
        // set the page orientation
        $objPHPExcel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_LANDSCAPE);

        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, "Excel2007");
        
        //Define current and number format. currency format, &euro; with < 0 being in red color
        $currencyFormat = '#,#0.#00;[Red]-#,#0.#00';

        // number format, with thousands seperator and two decimal points.
        $numberFormat = '#,#0.##0;[Red]-#,#0.##0';

        // writer will create the first sheet for us, let's get it
        $objSheet = $objPHPExcel->getActiveSheet();

        // rename the sheet
        $objSheet->setTitle('Proc. Plan - ' . $procurement_category);
        
        $objSheet->getColumnDimension('A')->setWidth('10');
        $objSheet->getColumnDimension('B')->setWidth('20');
        $objSheet->getColumnDimension('C')->setWidth('8');
        $objSheet->getColumnDimension('D')->setWidth('10');
        $objSheet->getColumnDimension('E')->setWidth('15');
        $objSheet->getColumnDimension('F')->setWidth('12');
        $objSheet->getColumnDimension('G')->setWidth('10');
        $objSheet->getColumnDimension('H')->setWidth('10');
        $objSheet->getColumnDimension('I')->setWidth('15');
        $objSheet->getColumnDimension('J')->setWidth('15');
        $objSheet->getColumnDimension('K')->setWidth('15');
        $objSheet->getColumnDimension('L')->setWidth('15');
        
        $row = 1;
        
        // print Report Hearder and Sub Headers --  START
        $objSheet->mergeCells('A'.$row.':L'.$row);
        $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
        $objSheet->getStyle('A'.$row)->getFont()->setBold(true)->setSize(10);
        $objSheet->getCell('A'.$row)->setValue($header);
        $row++;
        $objSheet->mergeCells('A'.$row.':L'.$row);
        $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setBold(true)->setSize(8);
        $objSheet->getCell('A'.$row)->setValue('Ref: PPR, 2008');
        $row+=2;
        $objSheet->mergeCells('A'.$row.':L'.$row);
        $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setSize(8);
        $objSheet->getCell('A'.$row)->setValue('Project Name: ' . 'The project name will go here');
        $row++;
        $objSheet->mergeCells('A'.$row.':L'.$row);
        $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setSize(8);
        $objSheet->getCell('A'.$row)->setValue('Ministry/Division: ' . 'Ministry/Division name will go here');
        $row++;
        $objSheet->mergeCells('A'.$row.':F'.$row);
        $objSheet->mergeCells('G'.$row.':L'.$row);
        $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setSize(8);
        $objSheet->getCell('A'.$row)->setValue('Agency: ' . 'Agency name will go here');
        $objSheet->getCell('G'.$row)->setValue('Total GoB (FE): ');
        $row++;
        $objSheet->mergeCells('A'.$row.':F'.$row);
        $objSheet->mergeCells('G'.$row.':L'.$row);
        $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setSize(8);
        $objSheet->getCell('A'.$row)->setValue('Procuring Entity Name and Code: ');
        $objSheet->getCell('G'.$row)->setValue('Total PA (RPA): ');
        $row++;
        $objSheet->mergeCells('A'.$row.':F'.$row);
        $objSheet->mergeCells('G'.$row.':L'.$row);
        $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setSize(8);
        $objSheet->getCell('A'.$row)->setValue('Project/Programme Code: ');
        $objSheet->getCell('G'.$row)->setValue('Others (FE): ');
        $row++;
        $objSheet->mergeCells('A'.$row.':L'.$row);
        $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setBold(true)->setSize(13);
        $objSheet->getCell('A'.$row)->setValue('Total procurement plan for development project/programme');
        
        $row++;
        
        // print Report Hearder and Sub Headers --  END
        
        $row+=2;
        // print the headers -- START
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setBold(true)->setSize(10);
        $objSheet->getStyle('A'.$row.':L'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
        
        
        foreach($headerArray as $key => $value)
        {
            $objSheet->getCell($key.$row)->setValue($value);
            $objSheet->getStyle($key.$row)->getAlignment()->setWrapText(true);
            $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        }
        // print the headers -- END
        
        $row++;
        // print the data
        foreach($data as $oKey => $oValue)    
        {
            $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setSize(10);
            $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setWrapText(true);
            $objSheet->getCell('A'.$row)->setValue($oValue->package_no);
            $objSheet->getCell('B'.$row)->setValue($oValue->procurement_desc);
            $objSheet->getCell('C'.$row)->setValue($oValue->procurement_unit);
            $objSheet->getCell('D'.$row)->setValue($oValue->procurement_qty);
            $objSheet->getCell('E'.$row)->setValue($oValue->procurement_method . '('.$oValue->procurement_type.')');
            $objSheet->getCell('F'.$row)->setValue($oValue->approv_auth);
            $objSheet->getCell('G'.$row)->setValue($oValue->fund_src);
            $objSheet->getCell('H'.$row)->setValue($oValue->estd_cost);
            $objSheet->getCell('I'.$row)->setValue('Not Req.');
            if ($procurement_category == 'WORKS')
            {
                $objSheet->getCell('I'.$row)->setValue($oValue->prequal_invitation);
            }
            else if ($procurement_category == 'SERVICES')
            {
                $objSheet->getCell('I'.$row)->setValue($oValue->eoi_invitation);
            }
            $objSheet->getCell('J'.$row)->setValue($oValue->tender_invitation);
            $objSheet->getCell('K'.$row)->setValue($oValue->contract_sign);
            $objSheet->getCell('L'.$row)->setValue($oValue->contract_completion);
            $objSheet->getStyle('A'.$row.':L'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
            
            $row++;
        }
        
        $objPHPExcel->getActiveSheet()->getStyle('H7:H'.$row)->getNumberFormat()->setFormatCode($currencyFormat);
        
        // print the grand total
        $objSheet->mergeCells('A'.$row.':G'.$row);
        $objSheet->getStyle('A'.$row)->getFont()->setBold(true)->setSize(11);
        $objSheet->getCell('A'.$row)->setValue('Grand Total'); 
        $objSheet->getStyle('H'.$row)->getFont()->setBold(true)->setSize(11);
        $objSheet->getCell('H'.$row)->setValue('=SUM(H7:H'.($row-1).')' ); 
        $objSheet->getStyle('A'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_RIGHT); 
        $objSheet->getStyle('A'.$row.':L'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
  
        $filename  = 'procurement_plan_' . $procurement_category . '.xls';
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        //header('Content-Type: application/pdf');
        header('Content-Type: text/plain; charset=utf-8');
        $objWriter->save($_SERVER['DOCUMENT_ROOT'].'/files/'.$filename);
        header ('Location: /files/'.$filename);
    }
    
    function MakeWordDoc($data, $procurement_category)
    {
        $headerArray = array('1100'=>'Package No.', '2200'=>"Description of Procurement Package as per DPP/TPP\n".$procurement_category, 
                             '1000'=>'Unit', '1205'=>'Quantity', '1900'=>'Procurement Method & Type', '1500'=>'Contract Approving Authority', 
                             '1505'=>'Source of Fund', '1510'=>'Estd. Cost (In lakh tk)', '900'=>'Not Used in GOODS', '2000'=>'Invitation for Tender', 
                             '2005'=>'Signing of Contract', '2010'=>'Completion of Contract');
        
        $header = 'Annex - III (a)';
        
        if ($procurement_category == 'WORKS') 
        {
            $headerArray['I'] = "Invitation for Prequal\n(if applicable)";
            $header = 'Annex - III (b)';
        }
        else if ($procurement_category == 'SERVICES') 
        {
            $headerArray['I'] = "Invitation for EOI\n(if applicable)";
            $header = 'Annex - III (c)';
        }
        
        // New Word Document
        $PHPWord = new PHPWord();

        // New portrait section
        $section = $PHPWord->createSection(array('orientation'=>'landscape'));
        $section->getSettings()->setMarginLeft(600); 
        $section->getSettings()->setMarginRight(600); 

        // Define table style arrays
        $styleTable = array('borderSize'=>1, 'borderColor'=>'006699', 'cellMargin'=>80);
        $styleFirstRow = array('borderBottomSize'=>1, 'borderBottomColor'=>'FFFFFF', 'bgColor'=>'F5F5F5');

        // Define cell style arrays
        $styleCell = array('valign'=>'center');
        $styleCellBTLR = array('valign'=>'center', 'textDirection'=>PHPWord_Style_Cell::TEXT_DIR_BTLR);

        // Define font style for first row
        $fontStyle = array('bold'=>true, 'align'=>'center');

        // Add table style
        $PHPWord->addTableStyle('myOwnTableStyle', $styleTable, $styleFirstRow);

        // Add table
        $table = $section->addTable('myOwnTableStyle');

        // Add row
        $table->addRow(1500);

        // print the headers -- START
        foreach($headerArray as $key => $value)
        {
            $table->addCell($key, $styleCell)->addText($value, $fontStyle);
        }
        // print the headers -- END
        
        $total_estd_cost = 0;
        // Add more rows / cells
        foreach($data as $oKey => $oValue)
        {
            $table->addRow();
            $table->addCell(0)->addText($oValue->package_no);
            $table->addCell(0)->addText($oValue->procurement_desc);
            $table->addCell(0)->addText($oValue->procurement_unit);
            $table->addCell(0)->addText($oValue->procurement_qty);
            $table->addCell(0)->addText($oValue->procurement_method . ' ('. $oValue->procurement_type .')');
            $table->addCell(0)->addText($oValue->approv_auth);
            $table->addCell(0)->addText($oValue->fund_src);
            $table->addCell(0)->addText($oValue->estd_cost);
            $table->addCell(0)->addText(' ');
            $table->addCell(0)->addText($oValue->tender_invitation);
            $table->addCell(0)->addText($oValue->contract_sign);
            $table->addCell(0)->addText($oValue->contract_completion);
            
            $total_estd_cost += $oValue->estd_cost;
        }
        
        $table->addRow();
        $table->addCell(0)->addText(' ');
        $table->addCell(0)->addText(' ');
        $table->addCell(0)->addText(' ');
        $table->addCell(0)->addText(' ');
        $table->addCell(0)->addText(' ');
        $table->addCell(0)->addText(' ');
        $table->addCell(0)->addText('Grand Total');
        $table->addCell(0)->addText($total_estd_cost);
        $table->addCell(0)->addText(' ');
        $table->addCell(0)->addText(' ');
        $table->addCell(0)->addText(' ');
        $table->addCell(0)->addText(' ');

        // Save File
        $objWriter = PHPWord_IOFactory::createWriter($PHPWord, 'Word2007');
        
        $filename  = 'procurement_plan_' . $procurement_category . '.doc';
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        //header('Content-Type: application/pdf');
        header('Content-Type: text/plain; charset=utf-8');
        $objWriter->save($_SERVER['DOCUMENT_ROOT'].'/files/'.$filename);
        header ('Location: /files/'.$filename);
    }
    
    function MakePDFDoc($screen, $procurement_category)
    {
        ob_start();
        $dompdf = new DOMPDF();
        $dompdf->set_paper(DEFAULT_PDF_PAPER_SIZE, 'landscape');
        $dompdf->load_html($screen);
        $dompdf->render();
        //$dompdf->stream("dompdf_out.pdf", array("Attachment" => false));    
        $filename  = 'procurement_plan_' . $procurement_category . '.pdf';
        $output = $dompdf->output();
        $file_to_save = $_SERVER['DOCUMENT_ROOT'].'/files/'.$filename;
        file_put_contents($file_to_save, $output);
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        header('Content-Type: application/pdf');
        header('Content-Type: text/plain; charset=utf-8');
        header ('Location: /files/'.$filename);
    }
?>