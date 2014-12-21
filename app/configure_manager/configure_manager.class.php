<?php

/**
 * Configure Manager Class
 */

class configureManagerApp extends DefaultApplication
{
    /**
     * Constructor
     * @return true
     */

    function run()
    {
        $cmd = getUserField('cmd');

        switch ($cmd)
        {
            case 'edit'               : $screen = $this->showEditor($msg);              break;
            case 'save'               : $screen = $this->saveRecord();                  break;
            default                   : $screen = $this->showEditor($msg);
        }
     
        if($cmd == 'deleteprocplan' || $cmd == 'excel' || $cmd == 'deletecomponent' || $cmd == 'deleteyear')
        {
            return;
        }
        
        echo $this->displayScreen($screen);

        return true;
   }
   
    function showEditor($msg)
    {
        $pid          = base64_decode(getUserField('PI'));
        $data         = new Project($pid);
        $data->PI     = getUserField('PI');
        $data->error  = getUserField('error');
        $report_type  = getUserField('report_type');

        $data->annex_info       = $this->getAnnexVIInfo($pid);
        $data->annex_vi_details = $this->getAnnexVIDetails($pid);
        
        if( $report_type == 'excel')
        {
            $this->makeAnnexVIExcel($data);
        }

        return createPage(AMORTIZATION_TEMPLATE, $data);
    }
    
    function makeAnnexVIExcel($data)
    {
        $headerArray = array('A'=>'Year', 'B'=>"Beginning Principal\nAmount", 'C'=>"Yearly fixed Amount\nto be paid (Principal)", 
                             'D'=>"Yearly Interest\nto be paid", 'E'=>"Total Payment\n(Capital + Interest)", 'F'=>'Ending Balance');
    
        $header = 'Annex - VI';
        $subHeader = 'AmortizationSchedule';
        
        // create new PHPExcel object
        $objPHPExcel = new PHPExcel;

        // set default font
        $objPHPExcel->getDefaultStyle()->getFont()->setName('Calibri');

        // set default font size
        $objPHPExcel->getDefaultStyle()->getFont()->setSize(11);
        
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
        $objSheet->setTitle('Annex - VI');
        
        $objSheet->getColumnDimension('A')->setWidth('5');
        $objSheet->getColumnDimension('B')->setWidth('20');
        $objSheet->getColumnDimension('C')->setWidth('20');
        $objSheet->getColumnDimension('D')->setWidth('18');
        $objSheet->getColumnDimension('E')->setWidth('20');
        $objSheet->getColumnDimension('F')->setWidth('18');
        
        $row = 1;
        
        // print Report Hearder and Sub Headers --  START
        $objSheet->mergeCells('A'.$row.':F'.$row);
        $objSheet->getStyle('A'.$row.':F'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
        $objSheet->getStyle('A'.$row)->getFont()->setBold(true)->setSize(12);
        $objSheet->getCell('A'.$row)->setValue($header);
        $row++;
        $objSheet->mergeCells('A'.$row.':F'.$row);
        $objSheet->getStyle('A'.$row.':F'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objSheet->getStyle('A'.$row.':F'.$row)->getFont()->setBold(true)->setSize(13);
        $objSheet->getStyle('A'.$row)->getAlignment()->setWrapText(true);
        $objSheet->getRowDimension($row)->getRowHeight(-1);
        $objSheet->getCell('A'.$row)->setValue($subHeader);
        
        $row++;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getCell('A'.$row)->setValue('Name of Project: ');
        $objSheet->mergeCells('C'.$row.':F'.$row);
        $objSheet->getCell('C'.$row)->setValue($data->basicInfo->project_title_en);
        $row++;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getCell('A'.$row)->setValue('Total Investment: ');
        $objSheet->getCell('C'.$row)->setValue($data->basicInfo->total_cost);
        $row++;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getCell('A'.$row)->setValue('Loan Portion: ');
        $objSheet->getCell('C'.$row)->setValue($data->basicInfo->modefinancing->loan_gob);
        $row++;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getCell('A'.$row)->setValue('Loan Period: ');
        $objSheet->getCell('C'.$row)->setValue($data->annex_info->loan_period);
        $row++;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getCell('A'.$row)->setValue('Rate of Interest: ');
        $objSheet->getCell('C'.$row)->setValue($data->annex_info->interest_rate);
        $row++;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getCell('A'.$row)->setValue('Grace Period: ');
        $objSheet->getCell('C'.$row)->setValue($data->annex_info->grace_period);
        
        $row+=2;
        
        foreach($headerArray as $key => $value)
        {
            $objSheet->getCell($key.$row)->setValue($value);
            $objSheet->getStyle($key.$row)->getAlignment()->setWrapText(true);
            $objSheet->getStyle($key.$row)->getFont()->setSize(12);
            $objSheet->getStyle($key.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $objSheet->getStyle('A'.$row.':F'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
        }
        $row++;
        foreach($data->annex_vi_details as $key => $value)
        {
            $objSheet->getCell('A'.$row)->setValue($value->year);
            $objSheet->getCell('B'.$row)->setValue($value->principal_amnt);
            $objSheet->getCell('C'.$row)->setValue($value->yearly_fixed_amnt);
            $objSheet->getCell('D'.$row)->setValue($value->yearly_interest);
            $objSheet->getCell('E'.$row)->setValue($value->total_payment);
            $objSheet->getCell('F'.$row)->setValue($value->end_balance);
            $objSheet->getStyle('A'.$row.':F'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
            $row++;
        }
        
        $filename  = 'annex_vi.xlsx';
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        header('Content-Type: text/plain; charset=utf-8');
        $objWriter->save($_SERVER['DOCUMENT_ROOT'].'/files/'.$filename);
        header ('Location: /files/'.$filename);
    }
    
    function getAnnexVIInfo($pid)
    {
        $info['table']  = PROJECT_ANNEX_VI_TBL;
        $info['debug']  = false;
        $info['where']  = 'pid = ' . $pid;
        
        $result = select($info);
        
        if ($result)
        {
            return $result[0];
        }
    }
    
    function getAnnexVIDetails($pid)
    {
        $info['table']  = PROJECT_ANNEX_VI_DETAILS_TBL;
        $info['debug']  = false;
        $info['where']  = 'pid = ' . $pid;
        
        $result = select($info);
        
        if ($result)
        {
            return $result;
        }
    }
    
    function saveRecord()
    {
        $years       = getUserField('years');
        $pid         = base64_decode(getUserField('PI'));
        $data        = getUserDataSet(PROJECT_ANNEX_VI_TBL);
        $data['pid'] = $pid;

        $this->deleteAnnexVI($pid);

        $info['table']  = PROJECT_ANNEX_VI_TBL;
        $info['debug']  = false;
        $info['data']   = $data;

        insert($info);

        $this->deleteAnnexVIDetails($pid);
        $this->saveAnnexVIDetails($pid, $years);
        header ('Location: amortization.php?PI='.  base64_encode($pid).'&error=' . 0);
    }
   
    function deleteAnnexVI($pid)
    {
        $info['table']  = PROJECT_ANNEX_VI_TBL;
        $info['debug']  = false;
        $info['where']  = 'pid = ' . $pid;

        delete($info);
    }
   
    function saveAnnexVIDetails($pid, $years)
    {
        $data['pid'] = $pid;
        $info['table']  = PROJECT_ANNEX_VI_DETAILS_TBL;
        $info['debug']  = false;

        for($year=1; $year<=$years; $year++)
        {
            $data['year']               = $_REQUEST['year_'.$year];
            $data['principal_amnt']     = $_REQUEST['principal_amnt_'.$year];
            $data['yearly_fixed_amnt']  = $_REQUEST['yearly_fixed_amnt_'.$year];
            $data['yearly_interest']    = $_REQUEST['yearly_interest_'.$year];
            $data['total_payment']      = $_REQUEST['total_payment_'.$year];
            $data['end_balance']        = $_REQUEST['end_balance_'.$year];
            $info['data'] = $data;

            insert($info);
        }
    }
   
    function deleteAnnexVIDetails($pid)
    {
        $info['table']  = PROJECT_ANNEX_VI_DETAILS_TBL;
        $info['debug']  = false;
        $info['where']  = 'pid = ' . $pid;

        delete($info);
    }
}
?>
