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
                $data['pid']                    = base64_decode(getUserField('PI'));
                
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
    
    function updateAnnexV()
    {
        //dumpvar($_REQUEST);
        $info['table'] = PROJECT_ANNEX_V_TBL;
        $info['debug'] = false;
        $data['pid']   = base64_decode(getUserField('PI'));
        
        foreach( $_REQUEST as $key => $value)
	{
            if( preg_match('/economic_code_(\d+)/', $key, $matches))
            {
                $id = $matches[1];
                
                $data['economic_code_id']          = $_REQUEST['economic_code_' . $id];
                $data['economic_subcode_id']       = $_REQUEST['sub_code_' . $id];
	        $data['economic_subcode_name']     = $_REQUEST['code_desc_' . $id];
	        $data['unit']                      = $_REQUEST['unit_' . $id]         ? $_REQUEST['unit_' . $id]         : '';
	        $data['unit_cost']                 = $_REQUEST['unit_cost_' . $id]    ? $_REQUEST['unit_cost_' . $id]    : 0.0;
	        $data['qty']                       = $_REQUEST['qty_' . $id]          ? $_REQUEST['qty_' . $id]          : 0;
	        $data['total_cost']                = $_REQUEST['total_cost_' . $id]   ? $_REQUEST['total_cost_' . $id]   : 0.0;
	        $data['gob']                       = $_REQUEST['total_gob_' . $id]    ? $_REQUEST['total_gob_' . $id]    : 0.0;
	        $data['gob_fe']                    = $_REQUEST['total_gob_fe_' . $id] ? $_REQUEST['total_gob_fe_' . $id] : 0.0;
	        $data['rpa_through_gob']           = $_REQUEST['pa_gob_' . $id]       ? $_REQUEST['pa_gob_' . $id]       : 0.0;
	        $data['rpa_special_account']       = $_REQUEST['pa_spc_acnt_' . $id]  ? $_REQUEST['pa_spc_acnt_' . $id]  : 0.0;
	        $data['dpa']                       = $_REQUEST['pa_dpa_' . $id]       ? $_REQUEST['pa_dpa_' . $id]       : 0.0;
	        $data['own_fund']                  = $_REQUEST['own_fund_' . $id]     ? $_REQUEST['own_fund_' . $id]     : 0.0;
	        $data['own_fund_fe']               = $_REQUEST['own_fund_fe_' . $id]  ? $_REQUEST['own_fund_fe_' . $id]  : 0.0;
	        $data['other']                     = $_REQUEST['other_' . $id]        ? $_REQUEST['other_' . $id]        : 0.0;
	        $data['other_fe']                  = $_REQUEST['other_fe_' . $id]     ? $_REQUEST['other_fe_' . $id]     : 0.0;
	        $data['annex_id']                  = $_REQUEST['annex_id_' . $id];
	        
                $data['total_year']                = $_REQUEST['total_year_in_annexv'];
                
                $info['data'] = $data;                
                // if procurement_plan_id is there then update the record
                // else add a new record in procurement plan table
                if ( !$data['annex_id'] ) 
                {
                    $result = insert($info);
                    updateAnnexVDetails($result['newid'], $data['total_year'], $id);
                }
                else
                {
                    $info['where'] = 'id = ' . $data['annex_id'];
                    update($info);
                    updateAnnexVDetails($data['annex_id'], $data['total_year'], $id);
                }
 	    }
        }
    }
    
    function updateAnnexVDetails($annex_id,$total_year,$row_id)
    {
        //dumPVar($_REQUEST); die;
        $info['table'] = PROJECT_ANNEX_V_DETAILS_TBL;
        $info['debug'] = false;
        $data['pid']   = base64_decode(getUserField('PI'));
        
        for($year=1; $year<=$total_year;$year++) 
        {
            $data['gob']                   = $_REQUEST['gob_' . $year . '_'.$row_id]                  ? $_REQUEST['gob_' . $year . '_'.$row_id]                 : 0.0;
            $data['gob_fe']                = $_REQUEST['gob_fe_' . $year . '_'.$row_id]               ? $_REQUEST['gob_fe_' . $year . '_'.$row_id]              : 0.0;
            $data['rpa_through_gob']       = $_REQUEST['rpa_through_gob_' . $year . '_'.$row_id]      ? $_REQUEST['rpa_through_gob_' . $year . '_'.$row_id]     : 0.0;
            $data['rpa_special_account']   = $_REQUEST['rpa_special_account_' . $year . '_'.$row_id]  ? $_REQUEST['rpa_special_account_' . $year . '_'.$row_id] : 0.0;
            $data['dpa']                   = $_REQUEST['dpa_' . $year . '_'.$row_id]                  ? $_REQUEST['dpa_' . $year . '_'.$row_id]                 : 0.0;
            $data['own_fund']              = $_REQUEST['own_fund_' . $year . '_'.$row_id]             ? $_REQUEST['own_fund_' . $year . '_'.$row_id]            : 0.0;
            $data['own_fund_fe']           = $_REQUEST['own_fund_fe_' . $year . '_'.$row_id]          ? $_REQUEST['own_fund_fe_' . $year . '_'.$row_id]         : 0.0;
            $data['other']                 = $_REQUEST['other_' . $year . '_'.$row_id]                ? $_REQUEST['other_' . $year . '_'.$row_id]               : 0.0;
            $data['other_fe']              = $_REQUEST['other_fe_' . $year . '_'.$row_id]             ? $_REQUEST['other_fe_' . $year . '_'.$row_id]            : 0.0;
            $data['total']                 = $_REQUEST['total_' . $year . '_'.$row_id]                ? $_REQUEST['total_' . $year . '_'.$row_id]               : 0.0;
            $data['annex_details_id']      = $_REQUEST['annex_details_id_' . $year . '_'.$row_id];
            $data['financial_year']        = $_REQUEST['financial_year_' . $year];
            $data['annex_id']              = $annex_id;
            $data['year_serial']           = $year;

            $info['data'] = $data; 

            // if procurement_plan_id is there then update the record
            // else add a new record in procurement plan table
            if ( !$data['annex_details_id'] ) 
            {
                insert($info);
            }
            else
            {
                $info['where'] = 'id = ' . $data['annex_details_id'] . ' AND annex_id = ' . $annex_id;
                update($info);
            }
            //die;
        } 
    }
    
    function updateAnnexVContingency()
    {
        $contingency   = array('physical','price');
        $info['table'] = PROJECT_ANNEX_V_CON_TBL;
        $info['debug'] = false;
        $data['pid']   = base64_decode(getUserField('PI'));
       
        for($i = 0; $i <2; $i++)
        {
            $data['economic_code_id']          = $contingency[$i]=='physical'? PHY_CON_ECONOMIC_CODE      : PR_CON_ECONOMIC_CODE;
            $data['economic_subcode_id']       = $contingency[$i]=='physical'? PHY_CON_ECONOMIC_SUB_CODE  : PR_CON_ECONOMIC_SUB_CODE;
            $data['economic_subcode_name']     = $contingency[$i]=='physical'? PHY_CON_ECONOMIC_CODE_DESC : PR_CON_ECONOMIC_CODE_DESC;
            $data['unit']                      = '';
            $data['unit_cost']                 = 0.0;
            $data['qty']                       = 0;
            $data['total_cost']                = $_REQUEST[$contingency[$i].'_contigency_total']           ? $_REQUEST[$contingency[$i].'_contigency_total']           : 0.0;
            $data['gob']                       = $_REQUEST[$contingency[$i].'_contigency_gob']             ? $_REQUEST[$contingency[$i].'_contigency_gob']             : 0.0;
            $data['gob_fe']                    = $_REQUEST[$contingency[$i].'_contigency_gob_fe']          ? $_REQUEST[$contingency[$i].'_contigency_gob_fe']          : 0.0;
            $data['rpa_through_gob']           = $_REQUEST[$contingency[$i].'_contigency_pa_through_gob']  ? $_REQUEST[$contingency[$i].'_contigency_pa_through_gob']  : 0.0;
            $data['rpa_special_account']       = $_REQUEST[$contingency[$i].'_contigency_pa_sp_acnt']      ? $_REQUEST[$contingency[$i].'_contigency_pa_sp_acnt']      : 0.0;
            $data['dpa']                       = $_REQUEST[$contingency[$i].'_contigency_pa_dpa']          ? $_REQUEST[$contingency[$i].'_contigency_pa_dpa']          : 0.0;
            $data['own_fund']                  = $_REQUEST[$contingency[$i].'_contigency_own_fund']        ? $_REQUEST[$contingency[$i].'_contigency_own_fund']        : 0.0;
            $data['own_fund_fe']               = $_REQUEST[$contingency[$i].'_contigency_own_fund_fe']     ? $_REQUEST[$contingency[$i].'_contigency_own_fund_fe']     : 0.0;
            $data['other']                     = $_REQUEST[$contingency[$i].'_contigency_other']           ? $_REQUEST[$contingency[$i].'_contigency_other']           : 0.0;
            $data['other_fe']                  = $_REQUEST[$contingency[$i].'_contigency_other_fe']        ? $_REQUEST[$contingency[$i].'_contigency_other_fe']        : 0.0;
            $data['contingency_id']            = $_REQUEST[$contingency[$i].'_con_id'];
            $data['type']                      = ucfirst($contingency[$i]);
            
            $info['data']  = $data;
            if( !$data['contingency_id'] )
            {    
               insert($info);
            }
            else
            {
               $info['where'] = "id = ".$data['contingency_id'] .' AND pid='.$data['pid']; 
               update($info); 
            }    
        } 
        updateAnnexVContingencyDetails();
    }
    
    function updateAnnexVContingencyDetails()
    {
        $total_year    = $_REQUEST['total_year_in_annexv'];
        
        $contingency   = array('physical_contigency_','price_contigency_');
        $info['table'] = PROJECT_ANNEX_V_CON_DETAILS_TBL;
        $info['debug'] = false;
        $data['pid']   = base64_decode(getUserField('PI'));
        
        for($i=0; $i<2; $i++)
        {
        for($year=1; $year<=$total_year; $year++)
        {
            
            $data['gob']                   = $_REQUEST[$contingency[$i].'gob_' . $year]                  ? $_REQUEST[$contingency[$i].'gob_' . $year]                 : 0.0;
            $data['gob_fe']                = $_REQUEST[$contingency[$i].'gob_fe_' . $year]               ? $_REQUEST[$contingency[$i].'gob_fe_' . $year]              : 0.0;
            $data['rpa_through_gob']       = $_REQUEST[$contingency[$i].'pa_through_gob_' . $year]      ? $_REQUEST[$contingency[$i].'pa_through_gob_' . $year]     : 0.0;
            $data['rpa_special_account']   = $_REQUEST[$contingency[$i].'pa_sp_acnt_'. $year]   ? $_REQUEST[$contingency[$i].'pa_sp_acnt_'. $year] : 0.0;
            $data['dpa']                   = $_REQUEST[$contingency[$i].'pa_dpa_' . $year]                  ? $_REQUEST[$contingency[$i].'pa_dpa_' . $year]                 : 0.0;
            $data['own_fund']              = $_REQUEST[$contingency[$i].'own_fund_' . $year]             ? $_REQUEST[$contingency[$i].'own_fund_' . $year]            : 0.0;
            $data['own_fund_fe']           = $_REQUEST[$contingency[$i].'own_fund_fe_' . $year]          ? $_REQUEST[$contingency[$i].'own_fund_fe_' . $year]         : 0.0;
            $data['other']                 = $_REQUEST[$contingency[$i].'other_' . $year]                ? $_REQUEST[$contingency[$i].'other_' . $year]               : 0.0;
            $data['other_fe']              = $_REQUEST[$contingency[$i].'other_fe_' . $year]             ? $_REQUEST[$contingency[$i].'other_fe_' . $year]            : 0.0;
            $data['total']                 = $_REQUEST[$contingency[$i].'total_' . $year]                ? $_REQUEST[$contingency[$i].'total_' . $year]               : 0.0;
            $data['con_details_id']        = $_REQUEST[$contingency[$i].'details_id_' . $year];
            $data['financial_year']        = $_REQUEST[$contingency[$i].'financial_year_' . $year];
            $data['con_details_id']        = $_REQUEST[$contingency[$i].'con_id_' . $year];
            $data['year_serial']           = $year;
            $data['type']                  = $i==0 ? 'Physical' : 'Price';
            
            $info['data']  = $data; 
            
            if ( !$data['con_details_id'] )
            {
                insert($info);
            }
            else
            {
                $info['where']  = 'id = ' . $data['con_details_id'] . ' AND pid = ' . $data['pid'];
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
    
    function updateProjectTotalCost($pid)
    {
        $data['total_cost'] = getUserField('grand_total');
        $data['gob_cost'] = getUserField('grand_total_gob');
        $data['gob_fe_cost'] = getUserField('grand_total_gob_fe');
        $data['pa_through_gob_cost'] = getUserField('grand_total_through_gob');
        $data['pa_spc_acnt_cost'] = getUserField('grand_total_spc_acnt');
        $data['pa_dpa_cost'] = getUserField('grand_total_dpa');
        $data['own_fund_cost'] = getUserField('grand_total_own_fund');
        $data['own_fund_fe_cost'] = getUserField('grand_total_own_fund_fe');
        $data['other_cost'] = getUserField('grand_total_other');
        $data['other_fe_cost'] = getUserField('grand_total_other_fe');
        
        
        $info['table']  = PROJECT_TBL;
        $info['debug']  = false;
        $info['where']  = 'id = ' . $pid;
        $info['data']   = $data;
        
        update($info);
    }
    
    function makeAnnexVExcel($data)
    {
        $headerArray = array('A'=>'Economic Code', 'B'=>"Economic Sub Code", 'C'=>'Code Description', 'D'=>'Unit', 'E'=>'Unit Cost', 
                             'F'=>'Qty', 'G'=>'Total Cost', 'H'=>"GoB\n(FE)", 'I'=>'Project Aid', 'J'=>"Own Fund\n(FE)", 'K'=>"Other\n(FE)");
        
        $header = 'Annex - V';
        
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
        $objSheet->setTitle('Annex - V');
        
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
        
        $row = 1;
        
        $row++;
        $objSheet->mergeCells('A'.$row.':K'.$row);
        $objSheet->getStyle('A'.$row.':K'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objSheet->getStyle('A'.$row.':k'.$row)->getFont()->setBold(true)->setSize(8);
        $objSheet->getCell('A'.$row)->setValue('Detailed annual phasing cost');
        
        $row++;
        
        // print Report Hearder and Sub Headers --  END
        
        $row+=2;
        // print the table headers -- START
        $objSheet->getStyle('A'.$row.':K'.$row)->getFont()->setBold(true)->setSize(10);
        $objSheet->getStyle('A'.$row.':K'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
        
        
        foreach($headerArray as $key => $value)
        {
            $objSheet->getCell($key.$row)->setValue($value);
            $objSheet->getStyle($key.$row)->getAlignment()->setWrapText(true);
            $objSheet->getStyle('A'.$row.':K'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        }
        // print the headers -- END
        
        $row++;
        // print the data
        foreach($data as $oKey => $oValue)    
        {
            $objSheet->getStyle('A'.$row.':K'.$row)->getFont()->setSize(10);
            $objSheet->getStyle('A'.$row.':K'.$row)->getAlignment()->setWrapText(true);
            $objSheet->getCell('A'.$row)->setValue($oValue->economic_code);
            $objSheet->getCell('B'.$row)->setValue($oValue->economic_subcode);
            $objSheet->getCell('C'.$row)->setValue($oValue->economic_subcode_name);
            $objSheet->getCell('D'.$row)->setValue($oValue->unit);
            $objSheet->getCell('E'.$row)->setValue($oValue->unit_cost);
            $objSheet->getCell('F'.$row)->setValue($oValue->qty);
            $objSheet->getCell('G'.$row)->setValue($oValue->total_cost);
            $objSheet->getCell('H'.$row)->setValue($oValue->gob . "\n(" . $oValue->gob_fe . ")");
            $objSheet->getCell('I'.$row)->setValue($oValue->rpa_through_gob);
            $objSheet->getCell('J'.$row)->setValue($oValue->tender_invitation);
            $objSheet->getCell('K'.$row)->setValue($oValue->contract_sign);
            $objSheet->getStyle('A'.$row.':K'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
            
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
        $objSheet->getStyle('A'.$row.':K'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
  
        $filename  = 'Annex-V' . '.xls';
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        //header('Content-Type: application/pdf');
        header('Content-Type: text/plain; charset=utf-8');
        $objWriter->save($_SERVER['DOCUMENT_ROOT'].'/files/'.$filename);
        header ('Location: /files/'.$filename);
    }
?>