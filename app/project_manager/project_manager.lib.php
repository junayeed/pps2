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
                $data['procurement_category']   = $_REQUEST['procument_category_' .$id];
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
        
        $info['table'] = PROJECT_ANNEX_V_TBL;
        $info['debug'] = false;
        $data['pid']   = base64_decode(getUserField('PI'));
        $cnt = 1;
        $componentArray = explode(",", $_REQUEST['component_list']);
        
        //dumpvar($componentArray);
        //dumpVar($_REQUEST);
        //dumpVar($data['pid']);
        //die;
        foreach( $componentArray as $key => $value)
	{
            {
                //$id = $matches[1];
                $id = $value;
                
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
        //echo_br('Dying...........');
        //die;
    }
    
    function updateAnnexVDetails($annex_id,$total_year,$row_id)
    {
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
            $data['rpa_through_gob']           = $_REQUESTcd [$contingency[$i].'_contigency_pa_through_gob']  ? $_REQUEST[$contingency[$i].'_contigency_pa_through_gob']  : 0.0;
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
        $headerArray_1 = array('A'=>'Economic Code', 'B'=>"Economic Sub Code", 'C'=>'Economic Sub Code Description (in detail)', 'D'=>'Total Project');
        $headerArray_2 = array('D'=>'Unit', 'E' => 'Unit Cost', 'F' => 'Qty', 'G' => 'Total Cost', 'H' => "GoB\n(FE)", 
                               'I' => 'Project Aid', 'L' => "Own Fund\n(FE)", 'M' => "Other\n(FE)");
        $headerArray_3 = array('I' => 'RPA', 'K' => 'DPA');
        $headerArray_4 = array('I' => "Through\nGoB", 'J' => "Special\nAccount");
        
        $header   = 'Annex - V';
        $header2  = 'Detailed annual phasing of cost';
        
        // create new PHPExcel object
        $objPHPExcel = new PHPExcel;

        // set default font
        $objPHPExcel->getDefaultStyle()->getFont()->setName('Calibri');

        // set default font size
        $objPHPExcel->getDefaultStyle()->getFont()->setSize(8);
        
        // set default alignment
        $objPHPExcel->getDefaultStyle()->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objPHPExcel->getDefaultStyle()->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
        
        // set default wrap text
        $objPHPExcel->getDefaultStyle()->getAlignment()->setWrapText(true);
        
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
        $objSheet->setTitle($header);
        
        $objSheet->getColumnDimension('A')->setWidth('8');
        $objSheet->getColumnDimension('B')->setWidth('8');
        $objSheet->getColumnDimension('C')->setWidth('18');
        $objSheet->getColumnDimension('D')->setWidth('8');
        $objSheet->getColumnDimension('E')->setWidth('8');
        $objSheet->getColumnDimension('F')->setWidth('8');
        $objSheet->getColumnDimension('G')->setWidth('12');
        $objSheet->getColumnDimension('H')->setWidth('10');
        $objSheet->getColumnDimension('I')->setWidth('10');
        $objSheet->getColumnDimension('J')->setWidth('10');
        $objSheet->getColumnDimension('K')->setWidth('10');
        $objSheet->getColumnDimension('L')->setWidth('10');
        $objSheet->getColumnDimension('M')->setWidth('10');
        
        $row = 1;
        // print $header
        $row++;
        $objSheet->mergeCells('A'.$row.':M'.$row);
        $objSheet->getStyle('A'.$row.':M'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
        $objSheet->getStyle('A'.$row.':M'.$row)->getFont()->setBold(true)->setSize(12);
        $objSheet->getCell('A'.$row)->setValue($header);
        
        // print $header2
        $row++;
        $objSheet->mergeCells('A'.$row.':M'.$row);
        $objSheet->getStyle('A'.$row.':M'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objSheet->getStyle('A'.$row.':M'.$row)->getFont()->setBold(true)->setSize(10);
        $objSheet->getCell('A'.$row)->setValue($header2);
        
        $row++;
        
        // print Report Hearder and Sub Headers --  END
        
        // print the table headers -- START
        $row+=2;
        $header_start_cell = $row;
        $objSheet->getStyle('A'.$row.':M'.($row+3))->getFont()->setBold(true);
        $objSheet->getStyle('A'.$row.':M'.($row+3))->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
        $objSheet->getStyle('A'.$row.':M'.($row+3))->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objSheet->getStyle('A'.$row.':M'.($row+3))->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
        $table_header_row_start = $row;
        
        foreach($headerArray_1 as $key => $value)
        {
            $objSheet->getCell($key.$row)->setValue($value);
            
            if ($key == 'A' || $key == 'B' || $key == 'C')
            {
                $objSheet->mergeCells($key.$row.':'.$key.($row+3)); 
                $objSheet->getStyle($key.$row.':'.$key.($row+3))->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
            }
            if ($key == 'D')
            {
                end($headerArray_1);                       
                $last_key_header_1 = key($headerArray_1); // get the last key of Header_1
                end($headerArray_2);
                $last_key_header_2 = key($headerArray_2); // get the last key of header_2
        
                $objSheet->mergeCells($last_key_header_1.$row.':'.$last_key_header_2.$row);  // now merge the first header
            }
        }
        
        $row++;
        
        foreach($headerArray_2 as $key => $value)
        {
            $objSheet->getCell($key.$row)->setValue($value);
            
            if ($key == 'I')
            {
                $objSheet->mergeCells($key.$row.':K'.$row);
                continue;
            }
            $objSheet->mergeCells($key.$row.':'.$key.($row+2)); 
            $objSheet->getStyle($key.$row.':'.$key.($row+2))->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
            
        }
        $row++;
        
        foreach($headerArray_3 as $key => $value)
        {
            $objSheet->getCell($key.$row)->setValue($value);
            
            if ($key == 'I')
            {
                $objSheet->mergeCells($key.$row.':J'.$row);
            }
            
            if ($key == 'K')
            {
                $objSheet->mergeCells($key.$row.':'.$key.($row+1));
            }
        }
        $row++;
        
        foreach($headerArray_4 as $key => $value)
        {
            $objSheet->getCell($key.$row)->setValue($value);
        }
        // print the headers -- END
        
        $row++;
        $data_row = $row;
        // print the data
        foreach($data['component_list'] as $oKey => $oValue)    
        {
            $objSheet->getStyle('A'.$row.':M'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
            $objSheet->getStyle('A'.$row.':M'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
            $objSheet->getCell('A'.$row)->setValue($oKey);
            $objSheet->mergeCells('A'.$row.':M'.$row);
            $row++;
            
            foreach($oValue AS $key => $value)
            {
                $objSheet->getStyle('A'.$row.':M'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                $objSheet->getCell('A'.$row)->setValue($value->economic_code);
                $objSheet->getCell('B'.$row)->setValue($value->economic_subcode);
                $objSheet->getStyle('A'.$row.':M'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
                $objSheet->getCell('C'.$row)->setValue($value->economic_subcode_name);
                $objSheet->getCell('D'.$row)->setValue($value->unit);
                $objSheet->getCell('E'.$row)->setValue($value->unit_cost);
                $objSheet->getCell('F'.$row)->setValue($value->qty);
                $objSheet->getCell('G'.$row)->setValue($value->total_cost);
                $objSheet->getCell('H'.$row)->setValue($value->gob . "\n(" . $value->gob_fe . ")");
                $objSheet->getCell('I'.$row)->setValue($value->rpa_through_gob);
                $objSheet->getCell('J'.$row)->setValue($value->rpa_special_account);
                $objSheet->getCell('K'.$row)->setValue($value->dpa);
                $objSheet->getCell('L'.$row)->setValue($value->own_fund . "\n(" . $value->own_fund_fe . ")");
                $objSheet->getCell('M'.$row)->setValue($value->other . "\n(" . $value->other_fe . ")");
                
                $row++;
            }
            
            if ($oKey == 'Revenue Component' || $oKey == 'Capital  Component')
            {
                $objSheet->getStyle('A'.$row.':M'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                $objSheet->mergeCells('A'.$row.':C'.$row);
                $objSheet->getStyle('A'.$row.':C'.$row)->getFont()->setBold(true);
                $objSheet->getCell('A'.$row)->setValue('Sub Total (' . $oKey . ')');
                $row++;
            }
        }
        
        
        $details_colum_start_cell_no = 13;
        $details_colum_start_cell = PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no);  // N = 13as A = 0 as column number
        
        $content_header_1 = array('A' => "GoB\n(FE)", 'B' => 'Project Aid', 'C' => "Own Fund\n(FE)", 'D' => "Other\n(FE)");
        $content_header_2 = array('A' => "RPA", 'B' => 'DPA');
        $content_header_3 = array('A' => "Through\nGoB", 'B' => "Special\nAccount");
        
        foreach($data['component_details'] as $comKey => $comValue)
        {
            $row = $table_header_row_start;
            $objSheet->mergeCells($details_colum_start_cell.$row.':' . PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no+5).$row);
            $objSheet->getStyle($details_colum_start_cell.$row.':' . PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no+5).$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
            $objSheet->getCell($details_colum_start_cell.$row)->setValue($comKey);
            $row++;
            
            $kk = $details_colum_start_cell; // this is for second header after printing the financial_year at the top of table

            //print the header_1 after the <financial_year> -- START 
            foreach($content_header_1 as $content_header_key => $content_header_value)
            {
                //echo_br('Key = ' . $content_header_key . ' = '.$kk . '-' . PHPExcel_Cell::columnIndexFromString($kk));
                if ($content_header_key == "B")
                {
                    $objSheet->mergeCells($kk.$row.':'.PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($kk)+1).$row);
                    $objSheet->getStyle($kk.$row.':'.PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($kk)+1).$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                    $objSheet->getStyle($kk.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                    $objSheet->getCell($kk.$row)->setValue($content_header_value);
                    $kk = PHPExcel_Cell::stringFromColumnIndex( PHPExcel_Cell::columnIndexFromString($kk)+2 );
                    continue;
                }
                
                $objSheet->mergeCells($kk.$row.':'.PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($kk)-1).($row+2));
                $objSheet->getStyle($kk.$row.':'.PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($kk)-1).($row+2))->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                $objSheet->getCell($kk.$row)->setValue($content_header_value);
                
                $kk = PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($kk));
            }
            //print the header_1 after the <financial_year> -- END 
            $row++;
            //print the header_2 after the <financial_year> -- START
            $cell_position = PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no+1);
            foreach($content_header_2 as $content_header_key_2 => $content_header_value_2)
            {
                //
                if ($content_header_key_2 == 'A')
                {
                    $objSheet->mergeCells($cell_position.$row.':'.PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($cell_position)).$row);
                    $objSheet->getStyle($cell_position.$row.':'.PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($cell_position)).$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                    $objSheet->getCell($cell_position.$row)->setValue($content_header_value_2);
                    $cell_position = PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($cell_position)+1);
                    continue;
                }
                
                $objSheet->getStyle($cell_position.$row.':'.PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($cell_position)-1).($row+1))->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                $objSheet->mergeCells($cell_position.$row.':'.PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($cell_position)-1).($row+1));
                $objSheet->getCell($cell_position.$row)->setValue($content_header_value_2);
                $cell_position = PHPExcel_Cell::stringFromColumnIndex(++$cell_position);
            }
            //print the header_2 after the <financial_year> -- END 
            $row++;
            //print the header_3 after the <financial_year> -- START 
            $cell_position = PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no+1);
            foreach($content_header_3 as $content_header_value_3)
            {
                //echo_br('Key = ' . $content_header_key_3 . ' Cell Pos = '. $cell_position.$row);
                $objSheet->getCell($cell_position.$row)->setValue($content_header_value_3);
                $objSheet->getStyle($cell_position.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                $cell_position = PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($cell_position));
            }
            //print the header_3 after the <financial_year> -- END 
            
            $objSheet->getStyle($details_colum_start_cell.$header_start_cell.':'.PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no+5).$row)->getFont()->setBold(true);
            
            
            
            $row+=2;
            //NOW PRINT THE COMPONENT DETAILS DATA
            $data_column = $details_colum_start_cell;
            foreach($comValue as $component_details_val)
            {
                //ajaj
                $objSheet->getCell($data_column.$row)->setValue($component_details_val->gob . "\n(" . $component_details_val->gob_fe . ")");
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($data_column)).$row)->setValue($component_details_val->rpa_through_gob);
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($data_column)+1).$row)->setValue($component_details_val->rpa_special_account);
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($data_column)+2).$row)->setValue($component_details_val->dpa);
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($data_column)+3).$row)->setValue($component_details_val->own_fund . "\n(" . $component_details_val->own_fund_fe . ")");
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($data_column)+4).$row)->setValue($component_details_val->other . "\n(" . $component_details_val->other_fe . ")");
                $row++;
            }
            
            $details_colum_start_cell_no +=6;
            $details_colum_start_cell = PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no);
        }
        $row++;
        /*
        $objPHPExcel->getActiveSheet()->getStyle('H7:H'.$row)->getNumberFormat()->setFormatCode($currencyFormat);
        
        // print the grand total
        $objSheet->mergeCells('A'.$row.':G'.$row);
        $objSheet->getStyle('A'.$row)->getFont()->setBold(true)->setSize(11);
        $objSheet->getCell('A'.$row)->setValue('Grand Total'); 
        $objSheet->getStyle('H'.$row)->getFont()->setBold(true)->setSize(11);
        $objSheet->getCell('H'.$row)->setValue('=SUM(H7:H'.($row-1).')' ); 
        $objSheet->getStyle('A'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_RIGHT); 
        $objSheet->getStyle('A'.$row.':K'.$row)->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
        */
        $filename  = 'Annex-V' . '.xlsx';
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        //header('Content-Type: application/pdf');
        header('Content-Type: text/plain; charset=utf-8');
        $objWriter->save($_SERVER['DOCUMENT_ROOT'].'/files/'.$filename);
        header ('Location: /files/'.$filename);
    }
?>  