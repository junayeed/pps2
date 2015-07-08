<?php

    function makeLocationView($data)
    {
       // dumpVar($data);
        foreach($data as $value)
        {
            if($value->location_type =='Division') $division[] = $value;
            if($value->location_type =='District') $district[] = $value;
            if($value->location_type =='Upzila')   $upzila[]   = $value;
        }  
        $count=1;
        foreach($division as $thisDivision)
        {
            $body.="<tr><td>$count</td><td>$thisDivision->division_name</td>";
            $count++;
            $isDistrict = 0;
            $isUpzilla  = 0;
            
            $dcount = 0;
            foreach($district as $thisDistrict)
            {
                
                if($thisDistrict->div_id == $thisDivision->location_id)
                {   
                    $isDistrict = 1;
                    $dcount++;
                    
                     if($dcount==1) $body.="<td>$thisDistrict->district_name</td>";
                     else           $body.="</tr><tr><td>".$count++."</td><td>&nbsp;</td><td>$thisDistrict->district_name</td>";
                   
                    $ucount=0;
                    $isUpzilla = 0;
                    foreach($upzila as $thisUzila)
                    {
                        
                        if($thisUzila->district_id == $thisDistrict->location_id)
                        {
                            $ucount++;
                            $isUpzilla  = 1;
                             
                            if($ucount==1) $body.="<td>$thisUzila->upzila_name</td><td><input type='text' name='cost_$thisUzila->id' value='$thisUzila->location_cost' class='span12' onkeypress='return isNumberKey(event);'></td><td><textarea class='span12' style='height:30px' name='comment_$thisUzila->id'>$thisUzila->location_comments</textarea></td></tr>";
                            else           $body.="<tr><td>".$count++."</td><td>&nbsp;</td> <td>&nbsp;</td><td>$thisUzila->upzila_name</td><td><input type='text' name='cost_$thisUzila->id' value='$thisUzila->location_cost' class='span12' onkeypress='return isNumberKey(event);'></td><td><textarea class='span12' style='height:30px' name='comment_$thisUzila->id'>$thisUzila->location_comments</textarea></td></tr>";
                             
                        }
                    }
                    if(!$isUpzilla)  $body.="<td>&nbsp;</td><td><input type='text' name='cost_$thisDistrict->id' value='$thisDistrict->location_cost' class='span12' onkeypress='return isNumberKey(event);'></td><td><textarea class='span12' style='height:30px' name='comment_$thisDistrict->id'>$thisDistrict->location_comments</textarea></td></tr>";
                
                }
                
            }   
            if(!$isDistrict)  $body.="<td>&nbsp;</td> <td>&nbsp;</td><td><input type='text' name='cost_$thisDivision->id' value='$thisDivision->location_cost' class='span12' onkeypress='return isNumberKey(event);'></td><td><textarea class='span12' style='height:30px' name='comment_$thisDivision->id'>$thisDivision->location_comments</textarea></td></tr>";
                           
        }
        
        return $body;
    }  
    
    function makeAnnexIDoc($data)
    {
        // New Word Document
        $PHPWord = new PHPWord();

        // New portrait section
        $section = $PHPWord->createSection(array('orientation'=>'portrait'));
        $section->getSettings()->setMarginLeft(1000); 
        $section->getSettings()->setMarginRight(600); 
        
        $styleTable    = array('borderSize' => 0, 'borderColor' => 'FFFFFF', 'cellMargin' => 80);
        $pCenterStyle  = array('align' => center, 'spaceBefore' => 0, 'spaceAfter' => 0, 'spacing' => 0);  // paragraph style with center alignment
        $contentTableStyle    = array('borderSize' => 1, 'borderColor' => '006699', 'cellMargin' => 80);
        // Define font style for first row
        $fontStyle = array('size' => 10);
        $pStyle    = array('spaceBefore' => 0, 'spaceAfter' => 0, 'spacing' => 0);
        
        $PHPWord->addTableStyle('headerTableStyle', $styleTable);
        
        $headerTable = $section->addTable('headerTableStyle');  // assign the table style 
        
        $headerTable->addRow(0); // 0 = row height
        $headerTable->addCell(16000, array('valign'=>'center'))->addText("Annexure - I", array('bold'=>true, 'size'=>13), array('align'=>'right'));
        $headerTable->addRow(0);
        $headerTable->addCell(16000, array('valign'=>'center'))->addText('Location wise cost breakdown', array('bold'=>true, 'size'=>11, 'underline'=>PHPWord_Style_Font::UNDERLINE_SINGLE), array('align'=>'center'));
        
        $section->addTextBreak(1);
        $PHPWord->addTableStyle('contentTableStyle', $contentTableStyle);
        $contentTable = $section->addTable('contentTableStyle');
        
        $contentTable->addRow();
        $contentTable->addCell(300)->addText('Sl', $fontStyle, $pCenterStyle); //ajaj
        $contentTable->addCell(3000)->addText('Division', $fontStyle, $pCenterStyle); //ajaj
        $contentTable->addCell(3000)->addText('District', $fontStyle, $pCenterStyle);
        $contentTable->addCell(3000)->addText('Upzila/City Coorporation', $fontStyle, $pCenterStyle);
        $contentTable->addCell(3000)->addText("Estimated Cost\n(In Lakh Taka)", $fontStyle, $pCenterStyle);
        $contentTable->addCell(3000)->addText("Comments", $fontStyle, $pCenterStyle);
        $contentTable->addRow();
        $contentTable->addCell(300)->addText('1', array('bold' => true), $pCenterStyle);
        $contentTable->addCell(3000)->addText('2', array('bold' => true), $pCenterStyle);
        $contentTable->addCell(3000)->addText('3', array('bold' => true), $pCenterStyle);
        $contentTable->addCell(3000)->addText("4", array('bold' => true), $pCenterStyle);
        $contentTable->addCell(3000)->addText("5", array('bold' => true), $pCenterStyle);
        $contentTable->addCell(3000)->addText("6", array('bold' => true), $pCenterStyle);
        
        foreach($data->basicInfo->locations as $value)
        {
            if($value->location_type =='Division') $division[] = $value;
            if($value->location_type =='District') $district[] = $value;
            if($value->location_type =='Upzila')   $upzila[]   = $value;
        }  

        $count=1;
        foreach($division as $thisDivision)
        {
            
            $contentTable->addRow();
            $contentTable->addCell(300)->addText($count, $fontStyle, $pCenterStyle);
            $contentTable->addCell(3000)->addText($thisDivision->division_name, $fontStyle, $pCenterStyle);
            $contentTable->addCell(3000)->addText('' , $fontStyle, $pCenterStyle);
            $contentTable->addCell(3000)->addText('' , $fontStyle, $pCenterStyle);
            $contentTable->addCell(3000)->addText($thisDivision->location_cost , $fontStyle, $pCenterStyle);
            $contentTable->addCell(3000)->addText($thisDivision->location_comments , $fontStyle, $pCenterStyle);
            //$body.="<tr><td>$count</td><td>$thisDivision->division_name</td><td>&nbsp;</td><td>&nbsp;</td><td><input type='text' name='cost_$thisDivision->id' value='$thisDivision->location_cost' class='span12' onkeypress='return isNumberKey(event);'></td><td><textarea name='comment_$thisDivision->id'>$thisDivision->location_comments</textarea></td></tr>";
            $count++;
            foreach($district as $thisDistrict)
            {
                if($thisDistrict->div_id == $thisDivision->location_id)
                {   
                    $contentTable->addRow();
                    $contentTable->addCell(300)->addText($count, $fontStyle, $pCenterStyle);
                    $contentTable->addCell(3000)->addText('', $fontStyle, $pCenterStyle);
                    $contentTable->addCell(3000)->addText($thisDistrict->district_name , $fontStyle, $pCenterStyle);
                    $contentTable->addCell(3000)->addText('' , $fontStyle, $pCenterStyle);
                    $contentTable->addCell(3000)->addText($thisDistrict->location_cost , $fontStyle, $pCenterStyle);
                    $contentTable->addCell(3000)->addText($thisDistrict->location_comments , $fontStyle, $pCenterStyle);
                    
                    //$body.="<tr><td>$count</td><td>&nbsp;</td><td>$thisDistrict->district_name</td><td>&nbsp;</td><td><input type='text' name='cost_$thisDistrict->id' value='$thisDivision->location_cost' class='span12' onkeypress='return isNumberKey(event);'></td><td><textarea name='comment_$thisDistrict->id'>$thisDistrict->location_comments</textarea></td></tr>";
                    $count++;
                    foreach($upzila as $thisUzila)
                    {
                        if($thisUzila->district_id == $thisDistrict->location_id)
                        {
                            $contentTable->addRow();
                            $contentTable->addCell(300)->addText($count, $fontStyle, $pCenterStyle);
                            $contentTable->addCell(3000)->addText('', $fontStyle, $pCenterStyle);
                            $contentTable->addCell(3000)->addText('' , $fontStyle, $pCenterStyle);
                            $contentTable->addCell(3000)->addText($thisUzila->upzila_name , $fontStyle, $pCenterStyle);
                            $contentTable->addCell(3000)->addText($thisUzila->location_cost , $fontStyle, $pCenterStyle);
                            $contentTable->addCell(3000)->addText($thisUzila->location_comments , $fontStyle, $pCenterStyle);
                           //$body.="<tr><td>$count</td><td>&nbsp;</td><td>&nbsp;</td><td>$thisUzila->upzila_name</td><td><input type='text' name='cost_$thisUzila->id' value='$thisUzila->location_cost' class='span12' onkeypress='return isNumberKey(event);'></td><td><textarea name='comment_$thisUzila->id'>$thisUzila->location_comments</textarea></td></tr>";
                           $count++;
                        }
                    }
                }
            }    
        }
        
        // Save File
        $objWriter = PHPWord_IOFactory::createWriter($PHPWord, 'Word2007');
        
        $filename  = 'annex_I.doc';
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        header('Content-Type: text/plain; charset=utf-8');
        $objWriter->save($_SERVER['DOCUMENT_ROOT'].'/files/'.$filename);
        header ('Location: /files/'.$filename);
    }
    
    function makeAnnexIIDoc($data, $organogram_file)
    {
        // New Word Document
        $PHPWord = new PHPWord();

        // New portrait section
        $section = $PHPWord->createSection(array('orientation'=>'landscape'));
        $section->getSettings()->setMarginLeft(1000); 
        $section->getSettings()->setMarginRight(600); 
        
        $styleTable           = array('borderSize' => 0, 'borderColor' => 'FFFFFF', 'cellMargin' => 80);
        $pCenterStyle         = array('align' => center, 'spaceBefore' => 0, 'spaceAfter' => 0, 'spacing' => 0);  // paragraph style with center alignment
        $contentTableStyle    = array('borderSize' => 1, 'borderColor' => '006699', 'cellMargin' => 80);
        $tableHeaderStyle     = array('borderSize' => 0, 'borderColor' => 'FFFFFF', 'cellMargin' => 20);
        // Define font style for first row
        $fontStyle = array('size' => 10);
        $pStyle    = array('spaceBefore' => 0, 'spaceAfter' => 0, 'spacing' => 0);
        
        $PHPWord->addTableStyle('headerTableStyle', $styleTable);
        
        $headerTable = $section->addTable('headerTableStyle');  // assign the table style 
        
        $headerTable->addRow(0); // 0 = row height
        $headerTable->addCell(16000, array('valign'=>'center'))->addText("Annexure - II", array('bold'=>true, 'size'=>13), array('align'=>'right'));
        $headerTable->addRow(0);
        $headerTable->addCell(16000, array('valign'=>'center'))->addText('Project Management Setup', array('bold'=>true, 'size'=>11, 'underline'=>PHPWord_Style_Font::UNDERLINE_SINGLE), array('align'=>'center'));
        
        //$section->addTextBreak(1);
//        $PHPWord->addTableStyle('tableHearderStyle', $tableHeaderStyle);
//        $tableHeader = $section->addTable('tableHearderStyle');
//        $tableHeader->addRow();
//        $tableHeader->addCell(9000)->addText('1) Personnels to be deputed to project from existing setup', $fontStyle);
        
        //$section->addTextBreak(1);
        $PHPWord->addTableStyle('contentTableStyle', $contentTableStyle);
        
        
        foreach($data as $key => $value)
        {
            $section = $PHPWord->createSection(array('orientation'=>'landscape'));
            $section->getSettings()->setMarginLeft(1000); 
            $section->getSettings()->setMarginRight(600);
            $mgmtTitleHeader = $section->addTable('tableHearderStyle');
            $mgmtTitleHeader->addRow();
            $mgmtTitleHeader->addCell(9000)->addText($key, $fontStyle);
            
            $contentTable = $section->addTable('contentTableStyle');
            // Print the table header
            $contentTable->addRow();
            $contentTable->addCell(2000)->addText('Name of the post', $fontStyle, $pCenterStyle);
            $contentTable->addCell(1000)->addText('Quantity', $fontStyle, $pCenterStyle);
            $contentTable->addCell(4000)->addText('Qualifications', $fontStyle, $pCenterStyle);
            $contentTable->addCell(1000)->addText("Scale/\nAmount", $fontStyle, $pCenterStyle);
            $contentTable->addCell(7000)->addText("Responsibilities/\nAccountabilities", $fontStyle, $pCenterStyle);
            $contentTable->addRow();
            $contentTable->addCell(2000)->addText('1', array('bold' => true), $pCenterStyle);
            $contentTable->addCell(1000)->addText('2', array('bold' => true), $pCenterStyle);
            $contentTable->addCell(4000)->addText('3', array('bold' => true), $pCenterStyle);
            $contentTable->addCell(1000)->addText("4", array('bold' => true), $pCenterStyle);
            $contentTable->addCell(7000)->addText("5", array('bold' => true), $pCenterStyle);
            
            foreach($value as $mgmtData)
            {
                $contentTable->addRow();
                $contentTable->addCell(2000)->addText($mgmtData->name_of_the_post, $fontStyle); 
                $contentTable->addCell(1000)->addText($mgmtData->qty, $fontStyle, $pCenterStyle);
                $contentTable->addCell(4000)->addText($mgmtData->qualification, $fontStyle);
                $contentTable->addCell(1000)->addText($mgmtData->amount, $fontStyle);
                //$contentTable->addCell(7000)->addText($mgmtData->responsibility, $fontStyle);
                $cell = $contentTable->addCell(7000);
                
                $mgmtResponsibiltyArray = explode("#%", $mgmtData->responsibility);
                
                foreach ($mgmtResponsibiltyArray as $resLine) 
                {
                    $cell->addText($resLine);
                }
            }
        } 
        
        $section->addTextBreak(1);
        $tableHeader = $section->addTable('tableHearderStyle');
        $tableHeader->addRow();
        $tableHeader->addCell(9000)->addText('Organogram', $fontStyle);
        $section->addImage($_SERVER['DOCUMENT_ROOT'] . '/' . $organogram_file);
        
        // Save File
        $objWriter = PHPWord_IOFactory::createWriter($PHPWord, 'Word2007');
        
        $filename  = 'annex_II.doc';
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        header('Content-Type: text/plain; charset=utf-8');
        $objWriter->save($_SERVER['DOCUMENT_ROOT'].'/files/'.$filename);
        header ('Location: /files/'.$filename);
    }
    
    function updateProjectManagement()
    {
        $info['table'] = PROJECT_MANAGEMENT_TBL;
        $info['debug'] = false;
        
        $data['pid']   = base64_decode(getUserField('PI'));
        
        foreach( $_REQUEST as $key => $value)
	{
            if( preg_match('/name_of_the_post_(\d+)/', $key, $matches))
            {
                $id = $matches[1];
                
                $data['name_of_the_post'] = $_REQUEST['name_of_the_post_'. $id]  ? $_REQUEST['name_of_the_post_'.$id]    : '' ;
                $data['qty']              = $_REQUEST['qty_' . $id]              ? $_REQUEST['qty_'.$id] : 0.0;
                $data['qualification']    = $_REQUEST['qualification_' . $id]    ? preg_replace( "/\r\n/", "#%", $_REQUEST['qualification_' . $id]) : '';
                $data['amount']           = $_REQUEST['amount_' . $id]           ? $_REQUEST['amount_'.$id] : 0.0;
                $data['responsibility']   = $_REQUEST['responsibility_' . $id]   ? preg_replace( "/\r\n/", "#%", $_REQUEST['responsibility_' . $id]) : '';
                $data['type']             = $_REQUEST['type_' . $id];
                
                $info['data'] = $data;
                
                $management_id       = $_REQUEST['management_id_' . $id];
                
                if($management_id)
                {  
                    $info['where']  = 'id = ' . $management_id; 
                    update($info);
                }
                else
                {
                    insert($info);
                }    
            }    
        }  
        
        // save/update organogram attachment...
        $dataP['organogram_doc_id'] = saveAttachment($_FILES['document'], $data['pid']);
        
        // now update the project table with new doc_id
        $info['table']  = PROJECT_TBL;
        $info['debug']  = true;
        $info['where']  = 'id = ' . $data['pid'];
        $info['data']   = $dataP;
        
        update($info);
        
        return 0; // 0 means no error
    }
    
    function updateLocationWithCost()
    {
        $info['table'] = PROJECT_LOCATIONS_TBL;
        $info['debug'] = false;
       
        foreach( $_REQUEST as $key => $value)
	{
            if( preg_match('/cost_(\d+)/', $key, $matches))
            {
                $id = $matches[1];
                $info['where'] = 'id = ' . $id;
                $data['location_cost']     = $_REQUEST['cost_' . $id]    ? $_REQUEST['cost_'.$id]    : 0.0 ;
                $data['location_comments'] = $_REQUEST['comment_' . $id] ? $_REQUEST['comment_'.$id] : '';
                
                $info['data'] = $data;             
                update($info);
            }    
        }   
        return 0;  // 0 means no error
    }
    
    function updateProcurementPlan()
    {
        $info['table'] = PROJECT_PROCUREMENT_PLAN_TBL;
        $info['debug'] = false;
        $data['pid']   = base64_decode(getUserField('PI'));
        $error         = 0;
        
        foreach( $_REQUEST as $key => $value)
	{
            if( preg_match('/package_no_(\d+)/', $key, $matches))
            {
                $id = $matches[1];
                
                $data['package_no']             = $_REQUEST['package_no_' . $id];
                $data['procurement_desc']       = addslashes($_REQUEST['procurement_desc_' . $id]);
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
	        $data['rfp_issue']              = $_REQUEST['rfp_issue_' . $id];
	        $data['create_date']            = date('Y-m-d');
	        $data['procurement_plan_id']    = $_REQUEST['proc_plan_id_' . $id];
                $data['procurement_category']   = $_REQUEST['procument_category_' .$id];
                $data['pid']                    = base64_decode(getUserField('PI'));
                
                
                $info['data'] = $data;                
                // if procurement_plan_id is there then update the record
                // else add a new record in procurement plan table
                if ( !$data['procurement_plan_id'] ) 
                {
                    $result = insert($info);
                    // if result is empty that means some error occurs 
                    if ( empty($result) )
                    {
                        $error = 1; 
                    }
                }
                else
                {
                    $info['where'] = 'id = ' . $data['procurement_plan_id'];
                    
                    update($info);
                }
 	    }
        }
        return $error;
    }
    
    function updateAnnexV()
    {
        
        $info['table']  = PROJECT_ANNEX_V_TBL;
        $info['debug']  = false;
        $data['pid']    = base64_decode(getUserField('PI'));
        $cnt            = 1;
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
                /*
                $data['economic_code_id']          = $_REQUEST['economic_code_' . $id];
                $data['economic_subcode_id']       = $_REQUEST['sub_code_' . $id];
	        $data['economic_subcode_name']     = preg_replace( "/\r\n/", "#%", $_REQUEST['code_desc_' . $id]);
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
	        */
                $data['annex_id']                  = $_REQUEST['annex_id_' . $id];
	        
                $data['total_year']                = $_REQUEST['total_year_in_annexv'];
                
                $info['data'] = $data;                
                // if procurement_plan_id is there then update the record
                // else add a new record in procurement plan table
                if ( !$data['annex_id'] ) 
                {
                    //$result = insert($info);
                    updateAnnexVDetails($result['newid'], $data['total_year'], $id);
                }
                else
                {
                    //$info['where'] = 'id = ' . $data['annex_id'];
                    //update($info);
                    updateAnnexVDetails($data['annex_id'], $data['total_year'], $id);
                }
 	    }
        }
        return 0; // 0 means no error
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
            $data['rpa_through_gob']           = $_REQUEST[$contingency[$i].'_contigency_pa_through_gob']  ? $_REQUEST[$contingency[$i].'_contigency_pa_through_gob']  : 0.0;
            $data['rpa_special_account']       = $_REQUEST[$contingency[$i].'_contigency_pa_sp_acnt']      ? $_REQUEST[$contingency[$i].'_contigency_pa_sp_acnt']      : 0.0;
            $data['dpa']                       = $_REQUEST[$contingency[$i].'_contigency_pa_dpa']          ? $_REQUEST[$contingency[$i].'_contigency_pa_dpa']          : 0.0;
            $data['own_fund']                  = $_REQUEST[$contingency[$i].'_contigency_own_fund']        ? $_REQUEST[$contingency[$i].'_contigency_own_fund']        : 0.0;
            $data['own_fund_fe']               = $_REQUEST[$contingency[$i].'_contigency_own_fund_fe']     ? $_REQUEST[$contingency[$i].'_contigency_own_fund_fe']     : 0.0;
            $data['other']                     = $_REQUEST[$contingency[$i].'_contigency_other']           ? $_REQUEST[$contingency[$i].'_contigency_other']           : 0.0;
            $data['other_fe']                  = $_REQUEST[$contingency[$i].'_contigency_other_fe']        ? $_REQUEST[$contingency[$i].'_contigency_other_fe']        : 0.0;
            $data['contingency_id']            = $_REQUEST[$contingency[$i].'_con_id'];
            $data['type']                      = ucfirst($contingency[$i]);
            $data['total_year']                = $_REQUEST['total_year_in_annexv'];
            $info['data']  = $data;
            if( !$data['contingency_id'] )
            {    
               $result = insert($info);
               
               for($year=1; $year<=$data['total_year']; $year++)
               {
                   updateAnnexVContingencyDetails($contingency[$i].'_contigency_', $result['newid'], $year);
               }
            }
            else
            {
               $info['where'] = "id = ".$data['contingency_id'] .' AND pid='.$data['pid']; 
               update($info); 
               
               for($year=1; $year<=$data['total_year']; $year++)
               {
                   updateAnnexVContingencyDetails($contingency[$i].'_contigency_', $data['contingency_id'], $year);
               }
            }    
        } 
        //updateAnnexVContingencyDetails();
    }
    
    function updateAnnexVContingencyDetails($con_type, $contingency_id, $year)
    {
        $total_year    = $_REQUEST['total_year_in_annexv'];
        
        $contingency   = array('physical_contigency_','price_contigency_');
        $info['table'] = PROJECT_ANNEX_V_CON_DETAILS_TBL;
        $info['debug'] = false;
        $data['pid']   = base64_decode(getUserField('PI'));
        
        //for($i=0; $i<2; $i++)
        //{
            //for($year=1; $year<=$total_year; $year++)
            //{
                $data['gob']                   = $_REQUEST[$con_type.'gob_' . $year]                  ? $_REQUEST[$con_type.'gob_' . $year]                 : 0.0;
                $data['gob_fe']                = $_REQUEST[$con_type.'gob_fe_' . $year]               ? $_REQUEST[$con_type.'gob_fe_' . $year]              : 0.0;
                $data['rpa_through_gob']       = $_REQUEST[$con_type.'pa_through_gob_' . $year]       ? $_REQUEST[$con_type.'pa_through_gob_' . $year]     : 0.0;
                $data['rpa_special_account']   = $_REQUEST[$con_type.'pa_sp_acnt_'. $year]            ? $_REQUEST[$con_type.'pa_sp_acnt_'. $year] : 0.0;
                $data['dpa']                   = $_REQUEST[$con_type.'pa_dpa_' . $year]               ? $_REQUEST[$con_type.'pa_dpa_' . $year]                 : 0.0;
                $data['own_fund']              = $_REQUEST[$con_type.'own_fund_' . $year]             ? $_REQUEST[$con_type.'own_fund_' . $year]            : 0.0;
                $data['own_fund_fe']           = $_REQUEST[$con_type.'own_fund_fe_' . $year]          ? $_REQUEST[$con_type.'own_fund_fe_' . $year]         : 0.0;
                $data['other']                 = $_REQUEST[$con_type.'other_' . $year]                ? $_REQUEST[$con_type.'other_' . $year]               : 0.0;
                $data['other_fe']              = $_REQUEST[$con_type.'other_fe_' . $year]             ? $_REQUEST[$con_type.'other_fe_' . $year]            : 0.0;
                $data['total']                 = $_REQUEST[$con_type.'total_' . $year]                ? $_REQUEST[$con_type.'total_' . $year]               : 0.0;
                $data['con_details_id']        = $_REQUEST[$con_type.'details_id_' . $year];
                $data['financial_year']        = $_REQUEST[$con_type.'financial_year_' . $year];
                $data['con_details_id']        = $_REQUEST[$con_type.'con_id_' . $year];
                $data['contingency_id']        = $contingency_id;
                $data['year_serial']           = $year;
                $data['type']                  = $con_type == 'physical_contigency_' ? 'Physical' : 'Price';

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
           // }
        //}
    }
    
    function getProcurementPlanList($pid, $procurement_category)
    {
        $info['table'] = PROJECT_PROCUREMENT_PLAN_TBL;
        $info['debug'] = false;
        $info['where'] = 'pid = ' . $pid . ' AND procurement_category = ' . q($procurement_category);
        
        $result = select($info);
        
        if ( !empty($result) )
        {
            foreach($result as $key=>$item)
            {
                $result[$key]->procurement_desc = preg_replace( "/\r\n/", "#%", $item->procurement_desc ); 
            }    
            return $result;
        }
    }
    
    function getManagementList($pid)
    {
        $info['table'] = PROJECT_MANAGEMENT_TBL;
        $info['debug'] = false;
        $info['where'] = 'pid = ' . $pid;
        
        $result = select($info);
        
        if ( !empty($result) )
        {
            foreach($result as $key=>$item)
            {
                if($item->attachment)
                {
                    $result[$key]->file_location = getFileLocation($item->attachment,$pid);
                }    
            }    
            return $result;
        }
    }
    
    function getProcurementMethodList($procurement_name)
    {
        $info['table']  = PROC_METHOD_LOOKUP_TBL;
        $info['debug']  = false;
        $info['where']  = 'procurement_name = ' . q($procurement_name);
        
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
            $headerArray['J'] = "Issue of\nRFP";
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
        $objSheet->getColumnDimension('B')->setWidth('22');
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
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setBold(true)->setSize(9);
        $objSheet->getCell('A'.$row)->setValue('Ref: PPR, 2008');
        
        $row+=2;
        $objSheet->mergeCells('A'.$row.':L'.$row);
        $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setBold(true)->setSize(13);
        $objSheet->getCell('A'.$row)->setValue('Total procurement plan for development project/programme');
        
        $row+=2;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getStyle('A'.$row.':B'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('A'.$row.':B'.$row)->getFont()->setSize(10);
        $objSheet->getCell('A'.$row)->setValue('Project Name: ');
        
        $objSheet->mergeCells('C'.$row.':L'.$row);
        $objSheet->getStyle('C'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('C'.$row.':L'.$row)->getFont()->setSize(10);
        $objSheet->getCell('C'.$row)->setValue($data['basicInfo']->project_title_en);
        $row++;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getStyle('A'.$row.':B'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setSize(10);
        $objSheet->getCell('A'.$row)->setValue('Ministry/Division: ');
        $objSheet->mergeCells('C'.$row.':L'.$row);
        $objSheet->getStyle('C'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        foreach($data['basicInfo']->ministries as $value)
        {    
            $ministries .= "$value->name\n";
        }
        $objSheet->getCell('C'.$row)->setValue($ministries);
        $row++;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getStyle('A'.$row.':B'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setSize(10);
        $objSheet->getCell('A'.$row)->setValue('Agency: ');
        $objSheet->mergeCells('C'.$row.':I'.$row);
        $objSheet->getStyle('C'.$row.':I'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        foreach($data['basicInfo']->agencies as $value)
        {
            $agencies .= "$value->name\n";
        }
        $objSheet->getCell('C'.$row)->setValue($agencies);
        $objSheet->getRowDimension($row)->setRowHeight(-1);
        $objSheet->getStyle('C'.$row)->getAlignment()->setWrapText(true);
        
        $objSheet->mergeCells('J'.$row.':L'.$row);
        $objSheet->getCell('J'.$row)->setValue('Total GoB (FE): ' . $data['basicInfo']->gob_cost . '(' . $data['basicInfo']->gob_fe_cost . ')');
        
        $row++;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getStyle('A'.$row.':B'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setSize(10);
        $objSheet->getCell('A'.$row)->setValue('Procuring Entity Name and Code: ');
        $objSheet->mergeCells('C'.$row.':I'.$row);
        $objSheet->getStyle('C'.$row.':I'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getCell('C'.$row)->setValue('Procuring Entity');
        $objSheet->mergeCells('J'.$row.':L'.$row);
        $objSheet->getCell('J'.$row)->setValue('Total PA (RPA): ' . ($data['basicInfo']->pa_through_gob_cost+$data['basicInfo']->pa_spc_acnt_cost+$data['basicInfo']->pa_dpa_cost) . '(' . ($data['basicInfo']->pa_through_gob_cost+$data['basicInfo']->pa_spc_acnt_cost) . ')');

        $row++;
        $objSheet->mergeCells('A'.$row.':B'.$row);
        $objSheet->getStyle('A'.$row.':L'.$row)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
        $objSheet->getStyle('A'.$row.':L'.$row)->getFont()->setSize(10);
        $objSheet->getCell('A'.$row)->setValue('Project/Programme Code: ');
        $objSheet->getCell('C'.$row)->setValue('Project/Programme Code');
        $objSheet->mergeCells('J'.$row.':L'.$row);
        $objSheet->getCell('J'.$row)->setValue('Others (FE): ' . $data['basicInfo']->other_cost . '(' . $data['basicInfo']->other_fe_cost . ')');
        
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
        foreach($data['proc_plan_list'] as $oKey => $oValue)    
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
            $objSheet->getCell('J'.$row)->setValue($oValue->tender_invitation);
            
            if ($procurement_category == 'WORKS')
            {
                $objSheet->getCell('I'.$row)->setValue($oValue->prequal_invitation);
            }
            else if ($procurement_category == 'SERVICES')
            {
                $objSheet->getCell('I'.$row)->setValue($oValue->eoi_invitation);
                $objSheet->getCell('J'.$row)->setValue($oValue->rfp_issue);
            }
            
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
  
        $filename  = 'procurement_plan_' . $procurement_category . '.xlsx';
        
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
        
        // PRINT PROJECT SUMMARY -- START
        $styleTable = array('borderSize'=>1, 'borderColor'=>'006699', 'cellMargin'=>80);
        $styleFirstRow = array('borderBottomSize'=>1, 'borderBottomColor'=>'FFFFFF', 'bgColor'=>'F5F5F5');
        
        $PHPWord->addTableStyle('headerTableStyle', $styleTable, $styleFirstRow);
        
        $headerTable = $section->addTable();
        
        $headerTable->addRow(0); // 0 = row height
        $headerTable->addCell(16000, array('valign'=>'center'))->addText($header, array('bold'=>true), array('align'=>'right'), array('size'=>12), array('spaceAfter' => 0));
        $headerTable->addRow(0);
        $headerTable->addCell(16000, array('valign'=>'center'))->addText('Ref: PPR, 2008', array('bold'=>true), array('align'=>'right'), array('size'=>10));
        $headerTable->addRow(0);
        $headerTable->addCell(16000, array('valign'=>'center'))->addText('Total procurement plan for development project/programme', array('bold'=>true), array('align'=>'center'), array('size'=>10));
        
        $section->addTextBreak(1);
        $PHPWord->addTableStyle('summaryTableStyle', $styleTable, $styleFirstRow);
        
        $summaryTable = $section->addTable();
        $summaryTable->addRow(0);
        $summaryTable->addCell(2000, array('valign'=>'center'))->addText('Project Name: ', array('size'=>10));
        $summaryTable->addCell(8000, array('valign'=>'center'))->addText($data['basicInfo']->project_title_en, array('size'=>10));
        $summaryTable->addRow(0);
        $summaryTable->addCell(2000, array('valign'=>'center'))->addText('Ministry/Division: ', array('size'=>10));
        $summaryTable->addCell(8000, array('valign'=>'center'))->addText($data['basicInfo']->ministries[0]->name, array('size'=>10));
        $summaryTable->addRow(0);
        $summaryTable->addCell(2000, array('gridSpan'=>2))->addText('Ministry/Division: ', array('size'=>10));
        // PRINT PROJECT SUMMARY -- END
        
        $section->addTextBreak(2);
        // Define table style arrays
        $styleTable = array('borderSize'=>1, 'borderColor'=>'006699', 'cellMargin'=>80);
        $styleFirstRow = array('borderBottomSize'=>1, 'borderBottomColor'=>'FFFFFF', 'bgColor'=>'F5F5F5');

        // Define cell style arrays
        $styleCell = array('valign'=>'center');
        $styleCellBTLR = array('valign'=>'center', 'textDirection'=>PHPWord_Style_Cell::TEXT_DIR_BTLR);

        // Define font style for first row
        $fontStyle = array('bold'=>true);

        // Add table style
        $PHPWord->addTableStyle('myOwnTableStyle', $styleTable, $styleFirstRow);

        // Add table
        $table = $section->addTable('myOwnTableStyle');

        // Add row
        $table->addRow(1500);

        // print the headers -- START
        foreach($headerArray as $key => $value)
        {
            $table->addCell($key, $styleCell)->addText($value, array('bold'=>true), array('align'=>'center'));
        }
        // print the headers -- END
        
        $total_estd_cost = 0;
        // Add more rows / cells
        foreach($data['proc_plan_list'] as $oKey => $oValue)
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
    
    function makePartAPDF($screen)
    {
        ob_start();
        $dompdf = new DOMPDF();
        $dompdf->set_paper(DEFAULT_PDF_PAPER_SIZE, 'portrait');
        $dompdf->load_html($screen);
        $dompdf->render();
        //$dompdf->stream("dompdf_out.pdf", array("Attachment" => false));    
        $filename     = 'part_A.pdf';
        $output       = $dompdf->output();
        $file_to_save = $_SERVER['DOCUMENT_ROOT'].'/files/'.$filename;
        file_put_contents($file_to_save, $output);
        
        header("HTTP/1.1 200 OK");
        header("Pragma: public");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: private", false);
        header('Content-Type: application/pdf');
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        header('Content-Type: text/plain; charset=utf-8');
        header("Content-Transfer-Encoding: binary");
        header ('Location: /files/'.$filename);
    }
    
    function makePartBPDF($screen)
    {
        ob_start();
        $dompdf = new DOMPDF();
        $dompdf->set_paper(DEFAULT_PDF_PAPER_SIZE, 'portrait');
        $dompdf->load_html($screen);
        $dompdf->render();
        //$dompdf->stream("dompdf_out.pdf", array("Attachment" => false));    
        $filename     = 'part_B.pdf';
        $output       = $dompdf->output();
        $file_to_save = $_SERVER['DOCUMENT_ROOT'].'/files/'.$filename;
        file_put_contents($file_to_save, $output);
        
        header("HTTP/1.1 200 OK");
        header("Pragma: public");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: private", false);
        header('Content-Type: application/pdf');
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        header('Content-Type: text/plain; charset=utf-8');
        header("Content-Transfer-Encoding: binary");
        header ('Location: /files/'.$filename);
    }
    
    function convertTags($text)
    {
        $text = str_replace('<strong>', '<w:b val="true"/>', $text);
        $text = str_replace('</strong>', '<w:b val="false"/>', $text);
        // and all the tags like that. You may use an array and loop through it.
        return $text;
    }
    
    function msword_conversion($str)
{
$str = str_replace(chr(130), ',', $str);    // baseline single quote
$str = str_replace(chr(131), 'NLG', $str);  // florin
$str = str_replace(chr(132), '"', $str);    // baseline double quote
$str = str_replace(chr(133), '...', $str);  // ellipsis
$str = str_replace(chr(134), '**', $str);   // dagger (a second footnote)
$str = str_replace(chr(135), '***', $str);  // double dagger (a third footnote)
$str = str_replace(chr(136), '^', $str);    // circumflex accent
$str = str_replace(chr(137), 'o/oo', $str); // permile
$str = str_replace(chr(138), 'Sh', $str);   // S Hacek
$str = str_replace(chr(139), '<', $str);    // left single guillemet
// $str = str_replace(chr(140), 'OE', $str);   // OE ligature
$str = str_replace(chr(145), "'", $str);    // left single quote
$str = str_replace(chr(146), "'", $str);    // right single quote
// $str = str_replace(chr(147), '"', $str);    // left double quote
// $str = str_replace(chr(148), '"', $str);    // right double quote
$str = str_replace(chr(149), '-', $str);    // bullet
$str = str_replace(chr(150), '-–', $str);    // endash
$str = str_replace(chr(151), '--', $str);   // emdash
// $str = str_replace(chr(152), '~', $str);    // tilde accent
// $str = str_replace(chr(153), '(TM)', $str); // trademark ligature
$str = str_replace(chr(154), 'sh', $str);   // s Hacek
$str = str_replace(chr(155), '>', $str);    // right single guillemet
// $str = str_replace(chr(156), 'oe', $str);   // oe ligature
$str = str_replace(chr(159), 'Y', $str);    // Y Dieresis
$str = str_replace('°C', '&deg;C', $str);    // Celcius is used quite a lot so it makes sense to add this in
$str = str_replace('£', '&pound;', $str);
$str = str_replace("'", "'", $str);
$str = str_replace('"', '"', $str);
$str = str_replace('–', '&ndash;', $str);

return $str;
}
    
    function makePartBDoc($data, $cost_analysis)
    {
        // New Word Document
        $PHPWord = new PHPWord();
        
        // New portrait section
        $section = $PHPWord->createSection(array('orientation'=>'portrait'));
        $section->getSettings()->setMarginLeft(1000); 
        $section->getSettings()->setMarginRight(600); 
        
        $styleTable    = array('borderSize' => 0, 'borderColor' => 'FFFFFF', 'cellMargin' => 80);
        $styleFirstRow = array('borderBottomSize' => 1, 'borderBottomColor' => 'FFFFFF', 'bgColor' => 'F5F5F5');
        
        $PHPWord->addTableStyle('headerTableStyle', $styleTable);
        
        $headerTable = $section->addTable('headerTableStyle');  // assign the table style
        
        $headerTable->addRow(0); // 0 = row height
        $headerTable->addCell(16000, array('valign'=>'center'))->addText("Part - B", array('bold'=>true, 'size'=>13, 'spaceAfter' => 0), array('align'=>'center'));
        $headerTable->addRow(0);
        $headerTable->addCell(16000, array('valign'=>'center'))->addText('Project Details', array('bold'=>true, 'size'=>11, 'underline'=>PHPWord_Style_Font::UNDERLINE_SINGLE), array('align'=>'center'));
        
        $contentTableStyle    = array('borderSize' => 0, 'borderColor' => 'FFFFFF', 'cellMargin' => 80, array('spaceAfter' => 0));
        $PHPWord->addTableStyle('contentTableStyle', $contentTableStyle);
        
        // Define font style for first row
        $fontStyle = array('size' => 10);
        $pStyle    = array('spaceBefore' => 0, 'spaceAfter' => 0, 'spacing' => 0);
        //14.0
        $contentTable = $section->addTable('contentTableStyle');  // assign the table style
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('14.0 ', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Background Information', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $contentTable->addCell(10000)->addText('', $fontStyle, $pStyle);
        //14.1
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('14.1 Background with problem statement', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        
        $background_with_problem = str_replace('<p>', '', $data->background_with_problem);
        $background_with_problem = str_replace('</p>', '', $background_with_problem);
        $background_with_problem = str_replace('&nbsp;', ' ', $background_with_problem);
        $background_with_problem = str_replace('<strong>', '<w:b>', $background_with_problem);
        $background_with_problem = str_replace('</strong>', '</w:b>', $background_with_problem);
        $contentTable->addCell(10000)->addText(msword_conversion($data->background_with_problem), $fontStyle, $pStyle);
        //14.2
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('14.2 Linkages (to other projects, institutions)', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $background_linkages = str_replace('<p>', '', $data->background_linkages);
        $background_linkages = str_replace('</p>', '', $background_linkages);
        $background_linkages = str_replace('&nbsp;', ' ', $background_linkages);
        $contentTable->addCell(10000)->addText($background_linkages, $fontStyle, $pStyle);
        //14.3
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('14.3 Objectives', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $background_objectaives = str_replace('<p>', '', $data->background_objectaives);
        $background_objectaives = str_replace('</p>', '', $background_objectaives);
        $background_objectaives = str_replace('&nbsp;', ' ', $background_objectaives);
        $contentTable->addCell(10000)->addText($background_objectaives, $fontStyle, $pStyle);
        //14.4
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('14.4 Outcomes', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $background_outcomes = str_replace('<p>', '', $data->background_outcomes);
        $background_outcomes = str_replace('</p>', '', $background_outcomes);
        $background_outcomes = str_replace('&nbsp;', ' ', $background_outcomes);
        $contentTable->addCell(10000)->addText($background_outcomes, $fontStyle, $pStyle);
        //14.5
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('14.5 Outputs', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $background_outputs = str_replace('<p>', '', $data->background_outputs);
        $background_outputs = str_replace('</p>', '', $background_outputs);
        $background_outputs = str_replace('&nbsp;', ' ', $background_outputs);
        $contentTable->addCell(10000)->addText($background_outputs, $fontStyle, $pStyle);
        //14.6
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('14.6 Activities', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $background_activities = str_replace('<p>', '', $data->background_activities);
        $background_activities = str_replace('</p>', '', $background_activities);
        $background_activities = str_replace('&nbsp;', ' ', $background_activities);
        $contentTable->addCell(10000)->addText($background_activities, $fontStyle, $pStyle);
        //14.7
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('14.7 Sex disaggreagated data for target population and constraints faced by women ', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $background_sex = str_replace('<p>', '', $data->background_sex);
        $background_sex = str_replace('</p>', '', $background_sex);
        $background_sex = str_replace('&nbsp;', ' ', $background_sex);
        $contentTable->addCell(10000)->addText($background_sex, $fontStyle, $pStyle);
        //14.8s
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('14.8 Poverty Situation', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $background_proverty = str_replace('<p>', '', $data->background_proverty);
        $background_proverty = str_replace('</p>', '', $background_proverty);
        $background_proverty = str_replace('&nbsp;', ' ', $background_proverty);
        $contentTable->addCell(10000)->addText($background_proverty, $fontStyle, $pStyle);
        //15.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('15.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Whether any pre-apprisal/feasibility study/pre-investment study was done before formulation of the project? If so attach summary of findings ans recommendations. If not mention the causes.', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $study = str_replace('<p>', '', $data->study);
        $study = str_replace('</p>', '', $study);
        $study = str_replace('&nbsp;', ' ', $study);
        $contentTable->addCell(10000)->addText($study, $fontStyle, $pStyle);
        
        //16.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('16.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Financial Analysis and Economic Analysis', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        
        $finAttach = $cost_analysis->financial_attachment ? "Financial Calculation Sheet Attached" : "Financial Calculation Sheet Not Attached";
        $ecoAttach = $cost_analysis->economic_attachment ? "Economic Calculation Sheet Attached" : "Economic Calculation Sheet Not Attached";
        
        $contentTable->addCell(10000)->addText($finAttach . "\n" . $ecoAttach, $fontStyle, $pStyle);
        
        //16.1
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText(' ', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(' ', $fontStyle, $pStyle);
        $contentTable->addCell(10000)->addText("16.1 Net Present Value (NPV) (considering ".$cost_analysis->discount_rate." discount rate.)\n     i) Financial: " . 
                                              $cost_analysis->financial_npv . "\n    ii) Economic: " . $cost_analysis->economic_npv, $fontStyle, $pStyle);
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText(' ', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(' ', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText("Benefit-Cost Ratio (BCR) (considering ".$cost_analysis->discount_rate." discount rate.)\n     i) Financial: " . 
                                              $cost_analysis->financial_bcr . "\n    ii) Economic : " . $cost_analysis->economic_bcr, $fontStyle, $pStyle);
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText(' ', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(' ', $fontStyle, $pStyle);
        $contentTable->addCell(10000)->addText("Internal Rate of return (IRR) \n     i) Financial: " . 
                                              $cost_analysis->financial_irr . "\n    ii) Economic : " . $cost_analysis->economic_irr, $fontStyle, $pStyle);
        
        //17.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('17.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Lessons learnt from similar nature of project(s): ', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        
        //17.1
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('17.1 Indicate which issues lead to make project successfully', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $lessons_learnt_successful_project = str_replace('<p>', '', $data->lessons_learnt_successful_project);
        $lessons_learnt_successful_project = str_replace('</p>', '', $lessons_learnt_successful_project);
        $lessons_learnt_successful_project = str_replace('&nbsp;', ' ', $lessons_learnt_successful_project);
        $contentTable->addCell(10000)->addText($lessons_learnt_successful_project, $fontStyle, $pStyle);
        //17.2
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('17.2 Indicate which issues did not work well', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $lessons_learnt_not_work_well = str_replace('<p>', '', $data->lessons_learnt_not_work_well);
        $lessons_learnt_not_work_well = str_replace('</p>', '', $lessons_learnt_not_work_well);
        $lessons_learnt_not_work_well = str_replace('&nbsp;', ' ', $lessons_learnt_not_work_well);
        $contentTable->addCell(10000)->addText($lessons_learnt_not_work_well, $fontStyle, $pStyle);
        
        //18.0
        // HAVE TO WORK FOR IT
        
        //19.0
        // HAVE TO WORK FOR IT
        
        //20.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('20.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(' ', $fontStyle, $pStyle);
        $contentTable->addCell(10000)->addText('Attach detailed annual phasing of cost (As per Annex-V)', $fontStyle, $pStyle);
        //21.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('21.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(' ', $fontStyle, $pStyle);
        $contentTable->addCell(10000)->addText('Specification/design of major components(Attach)', $fontStyle, $pStyle);
        //22.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('22.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(' ', $fontStyle, $pStyle);
        $contentTable->addCell(10000)->addText('Attach Amortization schedule for projects having involvement of loan from Government (As per Annex-VI)', $fontStyle, $pStyle);
        
        //23.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('23.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Describe the effect/impact and specific mitigation measures thereof if any on', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        
        //23.1
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('23.1 Other project/existing installations', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $effect_other_project = str_replace('<p>', '', $data->effect_other_project);
        $effect_other_project = str_replace('</p>', '', $effect_other_project);
        $effect_other_project = str_replace('&nbsp;', ' ', $effect_other_project);
        $contentTable->addCell(10000)->addText($effect_other_project, $fontStyle, $pStyle);
        //23.2
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('23.2 Environmental sustainability like land, water, air, bio-diversity, ecological service (If this project is "Red Category" attache the EIA documents)', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $effect_environmental = str_replace('<p>', '', $data->effect_environmental);
        $effect_environmental = str_replace('</p>', '', $effect_environmental);
        $effect_environmental = str_replace('&nbsp;', ' ', $effect_environmental);
        $contentTable->addCell(10000)->addText($effect_environmental, $fontStyle, $pStyle);
        //23.3
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('23.3 Climate change adaptation and mitigation', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $effect_climate_change = str_replace('<p>', '', $data->effect_climate_change);
        $effect_climate_change = str_replace('</p>', '', $effect_climate_change);
        $effect_climate_change = str_replace('&nbsp;', ' ', $effect_climate_change);
        $contentTable->addCell(10000)->addText($effect_climate_change, $fontStyle, $pStyle);
        //23.4
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('23.4 Gender, women, children, person with disability/excluded group\'s needs', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $effect_gender = str_replace('<p>', '', $data->effect_gender);
        $effect_gender = str_replace('</p>', '', $effect_gender);
        $effect_gender = str_replace('&nbsp;', ' ', $effect_gender);
        $contentTable->addCell(10000)->addText($effect_gender, $fontStyle, $pStyle);
        //23.5
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('23.5 Employment', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $effect_employment = str_replace('<p>', '', $data->effect_employment);
        $effect_employment = str_replace('</p>', '', $effect_employment);
        $effect_employment = str_replace('&nbsp;', ' ', $effect_employment);
        $contentTable->addCell(10000)->addText($effect_employment, $fontStyle, $pStyle);
        //23.6
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('23.6 Poverty situation', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $effect_poverty = str_replace('<p>', '', $data->effect_poverty);
        $effect_poverty = str_replace('</p>', '', $effect_poverty);
        $effect_poverty = str_replace('&nbsp;', ' ', $effect_poverty);
        $contentTable->addCell(10000)->addText($effect_poverty, $fontStyle, $pStyle);
        //23.7
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('23.7 Organizational arrangement/setup', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $effect_organizational_setup = str_replace('<p>', '', $data->effect_organizational_setup);
        $effect_organizational_setup = str_replace('</p>', '', $effect_organizational_setup);
        $effect_organizational_setup = str_replace('&nbsp;', ' ', $effect_organizational_setup);
        $contentTable->addCell(10000)->addText($effect_organizational_setup, $fontStyle, $pStyle);
        //23.8
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('23.8 Institutional productivity', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $effect_institutional_productivity = str_replace('<p>', '', $data->effect_institutional_productivity);
        $effect_institutional_productivity = str_replace('</p>', '', $effect_institutional_productivity);
        $effect_institutional_productivity = str_replace('&nbsp;', ' ', $effect_institutional_productivity);
        $contentTable->addCell(10000)->addText($effect_institutional_productivity, $fontStyle, $pStyle);
        //23.9
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('23.9 Regional Disparity', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $effect_regional_disparity = str_replace('<p>', '', $data->regional_disparity);
        $effect_regional_disparity = str_replace('</p>', '', $effect_regional_disparity);
        $effect_regional_disparity = str_replace('&nbsp;', ' ', $effect_regional_disparity);
        $contentTable->addCell(10000)->addText($effect_regional_disparity, $fontStyle, $pStyle);
        //23.10
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('23.10 Whether environment clearance under the ECA 1995(revised 2010) has been obtained? if yes, attach the certificate, if not mention the causes(s)', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $effect_environment_clearance_causes = str_replace('<p>', '', $data->effect_environment_clearance_causes);
        $effect_environment_clearance_causes = str_replace('</p>', '', $effect_environment_clearance_causes);
        $effect_environment_clearance_causes = str_replace('&nbsp;', ' ', $effect_environment_clearance_causes);
        $contentTable->addCell(10000)->addText($effect_environment_clearance_causes, $fontStyle, $pStyle);
        //24.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('24.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Specific Linkage with Perspective Plan/Five Years Plan/MDGs/SDGs/Ministry/Sector Priority', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $linkage_perspective_plan = str_replace('<p>', '', $data->linkage_perspective_plan);
        $linkage_perspective_plan = str_replace('</p>', '', $linkage_perspective_plan);
        $linkage_perspective_plan = str_replace('&nbsp;', ' ', $linkage_perspective_plan);
        $contentTable->addCell(10000)->addText($linkage_perspective_plan, $fontStyle, $pStyle);
        //25.1
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('25.1', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Mission/Vision of the Implementing Agency/Sponsoring Ministry', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $mission_vision = str_replace('<p>', '', $data->mission_vision);
        $mission_vision = str_replace('</p>', '', $mission_vision);
        $mission_vision = str_replace('&nbsp;', ' ', $mission_vision);
        $contentTable->addCell(10000)->addText($mission_vision, $fontStyle, $pStyle);
        //25.2
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('25.2', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('How does the project contribute in achieving the mission/vision of the Implementing Agency/Sponsoring Ministry', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $achievement_of_mission = str_replace('<p>', '', $data->achievement_of_mission);
        $achievement_of_mission = str_replace('</p>', '', $achievement_of_mission);
        $achievement_of_mission = str_replace('&nbsp;', ' ', $achievement_of_mission);
        $contentTable->addCell(10000)->addText($achievement_of_mission, $fontStyle, $pStyle);
        //26.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('26.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Whether private sector/local govt. or NGO\'s participation was considered? if yes, describe how will they be involved?', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $private_sector_participation = str_replace('<p>', '', $data->private_sector_participation);
        $private_sector_participation = str_replace('</p>', '', $private_sector_participation);
        $private_sector_participation = str_replace('&nbsp;', ' ', $private_sector_participation);
        $contentTable->addCell(10000)->addText($private_sector_participation, $fontStyle, $pStyle);
        //27.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('27.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('In case of foreign aided project mention the major conditionality', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $foreign_aided_project_conditionality = str_replace('<p>', '', $data->foreign_aided_project_conditionality);
        $foreign_aided_project_conditionality = str_replace('</p>', '', $foreign_aided_project_conditionality);
        $foreign_aided_project_conditionality = str_replace('&nbsp;', ' ', $foreign_aided_project_conditionality);
        $contentTable->addCell(10000)->addText($foreign_aided_project_conditionality, $fontStyle, $pStyle);
        //28.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('28.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Does the project involve compensation, rehabilitation/resettlement? If so, indicate the magnitude and cost', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $project_compensation = str_replace('<p>', '', $data->project_compensation);
        $project_compensation = str_replace('</p>', '', $project_compensation);
        $project_compensation = str_replace('&nbsp;', ' ', $project_compensation);
        $contentTable->addCell(10000)->addText($project_compensation, $fontStyle, $pStyle);
        //29.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('29.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Does the project involve compensation, rehabilitation/resettlement? If so, indicate the magnitude and cost', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $risk_analysis = str_replace('<p>', '', $data->risk_analysis);
        $risk_analysis = str_replace('</p>', '', $risk_analysis);
        $risk_analysis = str_replace('&nbsp;', ' ', $risk_analysis);
        $contentTable->addCell(10000)->addText($risk_analysis, $fontStyle, $pStyle);
        
        //30.0
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('30.0', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('Other important details, technical or otherwise such as', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        
        //30.1
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('30.1 Sustainability of the project benefit', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $sustainability = str_replace('<p>', '', $data->sustainability);
        $sustainability = str_replace('</p>', '', $sustainability);
        $sustainability = str_replace('&nbsp;', ' ', $sustainability);
        $contentTable->addCell(10000)->addText($sustainability, $fontStyle, $pStyle);
        //30.2
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('30.2 Governance of the operation of project', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $governance = str_replace('<p>', '', $data->governance);
        $governance = str_replace('</p>', '', $governance);
        $governance = str_replace('&nbsp;', ' ', $governance);
        $contentTable->addCell(10000)->addText($governance, $fontStyle, $pStyle);
        //30.3
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('30.3 Project Steering Committee (PSC) formation and TOR', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $psc_tor = str_replace('<p>', '', $data->psc_tor);
        $psc_tor = str_replace('</p>', '', $psc_tor);
        $psc_tor = str_replace('&nbsp;', ' ', $psc_tor);
        $contentTable->addCell(10000)->addText($psc_tor, $fontStyle, $pStyle);
        //30.4
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('30.4 Project Implementation Committee (PIC)formation and TOR', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $pic_tor = str_replace('<p>', '', $data->pic_tor);
        $pic_tor = str_replace('</p>', '', $pic_tor);
        $pic_tor = str_replace('&nbsp;', ' ', $pic_tor);
        $contentTable->addCell(10000)->addText($pic_tor, $fontStyle, $pStyle);
        //30.5
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('', $fontStyle, $pStyle);
        $contentTable->addCell(2000)->addText('30.5 Others (If any)', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $others_any = str_replace('<p>', '', $data->others_any);
        $others_any = str_replace('</p>', '', $others_any);
        $others_any = str_replace('&nbsp;', ' ', $others_any);
        $contentTable->addCell(10000)->addText($others_any, $fontStyle, $pStyle);
        
        
        $section->addTextBreak(3);
        
        $signatureStyle    = array('borderTopSize' => 1, 'borderTopColor' => '006699', 'cellMargin' => 80, array('spaceAfter' => 0));
        $PHPWord->addTableStyle('signatureStyle', $signatureStyle);
        
        $signatureTable = $section->addTable('signatureStyle');
        $signatureTable->addRow();
        $signatureTable->addCell(10000)->addText("Signature of the Head\nof the Executing Agency with Seal and Date", array('bold'=>true), $pStyle);
        $section->addTextBreak(3);
        
        $secSignatureTable = $section->addTable('signatureStyle');
        $secSignatureTable->addRow();
        $secSignatureTable->addCell(10000)->addText("Recommendation and signature of the Secretary\nof the sponsoring Ministry/Division with Seal and Date", array('bold'=>true), $pStyle);
        // Save File
        $objWriter = PHPWord_IOFactory::createWriter($PHPWord, 'Word2007');
        
        $filename  = 'part_B.doc';
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        header('Content-Type: text/plain; charset=utf-8');
        $objWriter->save($_SERVER['DOCUMENT_ROOT'].'/files/'.$filename);
        header ('Location: /files/'.$filename);
    }
    
    function getMatch($regex, $content, $index=1) 
    {
        preg_match_all($regex, $content, $matches);
        
        echo_br('content ===========');
        dumpvar(htmlentities($content));
        dumpVar($matches[1]);
      
        return $matches[(int)$index];
    }
    
    function makePartADoc($data)
    {
        // New Word Document
        $PHPWord = new PHPWord();

        // New portrait section
        $section = $PHPWord->createSection(array('orientation'=>'portrait'));
        $section->getSettings()->setMarginLeft(1000); 
        $section->getSettings()->setMarginRight(600); 
        
        $styleTable    = array('borderSize' => 0, 'borderColor' => 'FFFFFF', 'cellMargin' => 80);
        $styleFirstRow = array('borderBottomSize' => 1, 'borderBottomColor' => 'FFFFFF', 'bgColor' => 'F5F5F5');
        
        $PHPWord->addTableStyle('headerTableStyle', $styleTable);
        
        $headerTable = $section->addTable('headerTableStyle');  // assign the table style 
        
        $headerTable->addRow(0); // 0 = row height
        $headerTable->addCell(16000, array('valign'=>'center'))->addText("Part - A", array('bold'=>true, 'size'=>13, 'spaceAfter' => 0), array('align'=>'center'));
        $headerTable->addRow(0);
        $headerTable->addCell(16000, array('valign'=>'center'))->addText('Project Summary', array('bold'=>true, 'size'=>11, 'underline'=>PHPWord_Style_Font::UNDERLINE_SINGLE), array('align'=>'center'));
        
        $section->addTextBreak(1);
        
        $contentTableStyle    = array('borderSize' => 0, 'borderColor' => 'FFFFFF', 'cellMargin' => 80, array('spaceAfter' => 0));
        $PHPWord->addTableStyle('contentTableStyle', $contentTableStyle);
        
        // Define font style for first row
        $fontStyle = array('size' => 10);
        $pStyle    = array('spaceBefore' => 0, 'spaceAfter' => 0, 'spacing' => 0);
        //1.0
        $contentTable = $section->addTable('contentTableStyle');  // assign the table style
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('1.0 ', $fontStyle, $pStyle);
        $contentTable->addCell(4000)->addText('Project Name', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $contentTable->addCell(8000)->addText($data->basicInfo->project_title_en, $fontStyle, $pStyle);
        //2.1
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('2.1 ', $fontStyle, $pStyle);
        $contentTable->addCell(4000)->addText('Sponsoring Ministry/Division', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        
        foreach($data->basicInfo->ministries AS $value)
        {
            $ministryContent .= $value->name . "\n";
        }
        $contentTable->addCell(8000)->addText($ministryContent, $fontStyle, $pStyle);
        //2.2
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('2.2 ', $fontStyle, $pStyle);
        $contentTable->addCell(4000)->addText('Implementing Agency (ies)', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        
        foreach($data->basicInfo->agencies AS $value)
        {
            $agencyContent .= $value->name . "\n";
        }
        $contentTable->addCell(8000)->addText($agencyContent, $fontStyle, $pStyle);
        //2.3 
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('2.3 ', $fontStyle, $pStyle);
        $contentTable->addCell(4000)->addText('Concerned Sector/Sub-sector of ADP', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $contentTable->addCell(8000)->addText($data->adpSectorList[$data->basicInfo->adp_sector] . '/' . $data->adpSubSectorList[$data->basicInfo->adp_sub_sector], $fontStyle, $pStyle);
        //2.4 
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('2.4 ', $fontStyle, $pStyle);
        $contentTable->addCell(4000)->addText('Concerned Division of Planning Commission', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $contentTable->addCell(8000)->addText($data->sectorDivisionList[$data->basicInfo->sector_division], $fontStyle, $pStyle);
        //3.0 
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('3.0 ', $fontStyle, $pStyle);
        $contentTable->addCell(4000)->addText('Objectives and targets of the project (Please specify in quantity and/or in percentage and write in bullet form)', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle); 
        
        //$objectiveArray = getMatch('|<li>(.*)</li>|Uis', $data->basicInfo->objectives);
        
        $objective = str_replace('<p>', '', $data->basicInfo->objectives);
        $objective = str_replace('</p>', '', $objective);
        $contentTable->addCell(8000)->addText($objective, $fontStyle, $pStyle);
        //4.0 
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('4.0 ', $fontStyle, $pStyle);
        $contentTable->addCell(4000)->addText('Project implementation period', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $contentTable->addCell(8000)->addText('i) Date of commencement: ' . $data->basicInfo->date_of_commencement . "\n" . 
                                              'ii) Date of completion: ' . $data->basicInfo->date_of_completion, $fontStyle, $pStyle);
        //5.1 
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('5.1 ', $fontStyle, $pStyle);
        $contentTable->addCell(4000)->addText('Estimated Cost of the project (in Lakh Taka)', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $totalPA  = $data->basicInfo->pa_through_gob_cost+$data->basicInfo->pa_spc_acnt_cost+$data->basicInfo->pa_dpa_cost;
        $totalRPA = $data->basicInfo->pa_through_gob_cost+$data->basicInfo->pa_spc_acnt_cost;
        
        $contentTable->addCell(8000)->addText('Total: ' . number_format($data->basicInfo->total_cost, 2, '.', ',') . "\n" . 
                                              'GoB (FE): ' . number_format($data->basicInfo->gob_cost, 2, '.', ',') . '(' . number_format($data->basicInfo->gob_fe_cost, 2, '.', ',') . ')' . "\n" . 
                                              'PA (RPA): ' . number_format($totalPA, 2, '.', ',') . '(' . number_format($totalRPA, 2, '.', ',') . ')' . "\n" . 
                                              'Own Fund (FE): ' . number_format($data->basicInfo->own_fund_cost, 2, '.', ',') . '(' . number_format($data->basicInfo->own_fund_fe_cost, 2, '.', ',') . ')' . "\n" . 
                                              'Others (FE): ' . number_format($data->basicInfo->other_cost, 2, '.', ',') . '(' . number_format($data->basicInfo->other_fe_cost, 2, '.', ',') . ')'  
                                              , $fontStyle, $pStyle);
        
        //5.2 
        $contentTable->addRow(0);
        $contentTable->addCell(700)->addText('5.2 ', $fontStyle, $pStyle);
        $contentTable->addCell(4000)->addText('Exchange rate(s) with date (Source Bangladesh Bank)', $fontStyle, $pStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $contentTable->addCell(8000)->addText($data->basicInfo->exchange_rate, $fontStyle, $pStyle);
        
        $section->addTextBreak();
        $pCenterStyle    = array('align' => center, 'spaceBefore' => 0, 'spaceAfter' => 0, 'spacing' => 0);  // paragraph style with center alignment
        //6.0 
        $modeOfFinanceTable = $section->addTable('contentTableStyle');
        $modeOfFinanceTable->addRow(0);
        $modeOfFinanceTable->addCell(1000)->addText('6.0 ', $fontStyle, $pStyle);
        $modeOfFinanceTable->addCell(4000)->addText('Mode of financing', $fontStyle, $pStyle);
        //6.1 
        $modeOfFinanceTable->addRow(0);
        $modeOfFinanceTable->addCell(1000)->addText('', $fontStyle, $pStyle);
        $modeOfFinanceTable->addCell(10000)->addText('6.1 Mode of financing with source (Amount in Lakh Tk.): ', $fontStyle, $pStyle);
        
        $modeOfFinanceStyle    = array('borderSize' => 1, 'borderColor' => '006699', 'cellMargin' => 80, array('spaceAfter' => 0));
        $PHPWord->addTableStyle('modeOfFinanceStyle', $modeOfFinanceStyle);
        
        $section->addTextBreak();
        $modeOfFinanceDataTable = $section->addTable('modeOfFinanceStyle');
        $modeOfFinanceDataTable->addRow();
        $modeOfFinanceDataTable->addCell(4000)->addText('Mode\Source', $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText("GoB\n(FE)", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText("PA\n(RPA)", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText("Own Fund\n(FE)", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText("Others\n(FE)", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText("PA Sources", $fontStyle, $pCenterStyle);
        
        $modeOfFinanceDataTable->addRow();
        $modeOfFinanceDataTable->addCell(4000)->addText('1', $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText("2", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText("3", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText("4", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText("5", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText("6", $fontStyle, $pCenterStyle);
        
        $modeOfFinanceDataTable->addRow();
        $modeOfFinanceDataTable->addCell(4000)->addText('Loan/credit', $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->loan_gob, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->loan_gob_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->loan_pa, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->loan_rpa, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->loan_own_fund, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->loan_own_fund_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->loan_others, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->loan_others_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText($data->basicInfo->modefinancing->loan_pa_source, $fontStyle, $pCenterStyle);
        
        $modeOfFinanceDataTable->addRow();
        $modeOfFinanceDataTable->addCell(4000)->addText('Grant', $fontStyle, array('align' => center));
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->grant_gob, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->grant_gob_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->grant_pa, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->grant_rpa, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->grant_own_fund, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->grant_own_fund_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->grant_others, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->grant_others_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText($data->basicInfo->modefinancing->grant_pa_source, $fontStyle, $pCenterStyle);

        $modeOfFinanceDataTable->addRow();
        $modeOfFinanceDataTable->addCell(4000)->addText('Equity', $fontStyle, array('align' => center));
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->equity_gob, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->equity_gob_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->equity_pa, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->equity_rpa, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->equity_own_fund, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->equity_own_fund_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->equity_others, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->equity_others_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText($data->basicInfo->modefinancing->equity_pa_sources, $fontStyle, $pCenterStyle);
        

        $modeOfFinanceDataTable->addRow();
        $modeOfFinanceDataTable->addCell(4000)->addText('Others', $fontStyle, array('align' => center));
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->others_gob, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->others_gob_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->others_pa, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->others_rpa, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->others_own_fund, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->others_own_fund_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($data->basicInfo->modefinancing->others_others, 2, '.', ',') . "\n(" . number_format($data->basicInfo->modefinancing->others_others_fe, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText($data->basicInfo->modefinancing->others_pa_sources, $fontStyle, $pCenterStyle);

        $modeOfFinanceDataTable->addRow();
        $gob_total         = $data->basicInfo->modefinancing->loan_gob+$data->basicInfo->modefinancing->grant_gob+$data->basicInfo->modefinancing->equity_gob+$data->basicInfo->modefinancing->others_gob;
        $gob_fe_total      = $data->basicInfo->modefinancing->loan_gob_fe+$data->basicInfo->modefinancing->grant_gob_fe+$data->basicInfo->modefinancing->equity_gob_fe+$data->basicInfo->modefinancing->others_gob_fe;
        $pa_total          = $data->basicInfo->modefinancing->loan_pa+$data->basicInfo->modefinancing->grant_pa+$data->basicInfo->modefinancing->equity_pa+$data->basicInfo->modefinancing->others_pa;
        $rpa_total         = $data->basicInfo->modefinancing->loan_pa_rpa+$data->basicInfo->modefinancing->grant_pa_rpa+$data->basicInfo->modefinancing->equity_pa_rpa+$data->basicInfo->modefinancing->others_pa_rpa;
        $own_fund_total    = $data->basicInfo->modefinancing->loan_own_fund+$data->basicInfo->modefinancing->grant_own_fund+$data->basicInfo->modefinancing->equity_own_fund+$data->basicInfo->modefinancing->others_own_fund;
        $own_fund_fe_total = $data->basicInfo->modefinancing->loan_own_fund_fe+$data->basicInfo->modefinancing->grant_own_fund_fe+$data->basicInfo->modefinancing->equity_own_fund_fe+$data->basicInfo->modefinancing->others_own_fund_fe;
        $others_total      = $data->basicInfo->modefinancing->loan_others+$data->basicInfo->modefinancing->grant_others+$data->basicInfo->modefinancing->equity_others+$data->basicInfo->modefinancing->others_others;
        $others_fe_total   = $data->basicInfo->modefinancing->loan_others_fe+$data->basicInfo->modefinancing->grant_others_fe+$data->basicInfo->modefinancing->equity_others_fe+$data->basicInfo->modefinancing->others_others_fe;
        
        $modeOfFinanceDataTable->addCell(4000)->addText('Grand Total', $fontStyle, array('align' => right));
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($gob_total, 2, '.', ',') . "\n(" . number_format($gob_fe_total, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($pa_total, 2, '.', ',') . "\n(" . number_format($rpa_total, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($own_fund_total, 2, '.', ',') . "\n(" . number_format($own_fund_fe_total, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText(number_format($others_total, 2, '.', ',') . "\n(" . number_format($others_fe_total, 2, '.', ',') . ")", $fontStyle, $pCenterStyle);
        $modeOfFinanceDataTable->addCell(4000)->addText('', $fontStyle, $pCenterStyle);
        
        $section->addTextBreak();
        //6.2 
        $allocationTable = $section->addTable('contentTableStyle');
        $allocationTable->addRow(0);
        $allocationTable->addCell(700)->addText('6.2 ', $fontStyle, $pStyle);
        $allocationTable->addCell(12000)->addText('Year wise allocation of GOB, RPA and Own Fund according to DPP (Amount in Lakh Tk.):', $fontStyle, $pStyle);
        
        $section->addTextBreak();
        $allocationDataTable = $section->addTable('modeOfFinanceStyle');
        $allocationDataTable->addRow();
        $allocationDataTable->addCell(4000)->addText('Financial Year', array('bold' => true), $pCenterStyle);
        $allocationDataTable->addCell(4000)->addText("GoB\n(FE)", array('bold' => true), $pCenterStyle);
        $allocationDataTable->addCell(4000)->addText("Own Fund\n(FE)", array('bold' => true), $pCenterStyle);
        $allocationDataTable->addRow();
        $allocationDataTable->addCell(4000)->addText('1', array('bold' => true), $pCenterStyle);
        $allocationDataTable->addCell(4000)->addText("2", array('bold' => true), $pCenterStyle);
        $allocationDataTable->addCell(4000)->addText("3", array('bold' => true), $pCenterStyle);
        
        foreach ($data->year_wise_gob_ownfund as $key => $value) 
        {
            $allocationDataTable->addRow();
            $gob_total         = $value->gob_total+$data->year_wise_gob_ownfundCon[$key]->gob_total;
            $gob_fe_total      = $value->gob_fe_total+$data->year_wise_gob_ownfundCon[$key]->gob_fe_total;
            $own_fund_total    = $value->own_fund_total+$data->year_wise_gob_ownfundCon[$key]->own_fund_total;
            $own_fund_fe_total = $value->own_fund_fe_total+$data->year_wise_gob_ownfundCon[$key]->own_fund_fe_total;
            $allocationDataTable->addCell(4000)->addText($value->financial_year, null, $pCenterStyle);
            $allocationDataTable->addCell(4000)->addText(number_format($gob_total,  2, '.', ',') . "\n(" . number_format($gob_fe_total,  2, '.', ',') . ")", null, $pCenterStyle);
            $allocationDataTable->addCell(4000)->addText(number_format($own_fund_total,  2, '.', ',') . "\n(" . number_format($own_fund_fe_total,  2, '.', ',') . ")", null, $pCenterStyle);
        }
        
        //7.0
        $section->addTextBreak();
        $locationTable = $section->addTable('contentTableStyle');
        $locationTable->addRow(0);
        $locationTable->addCell(700)->addText('7.0 ', $fontStyle, $pStyle);
        $locationTable->addCell(12000)->addText('Location of the Project', $fontStyle, $pStyle);
        
        $section->addTextBreak();
        $locationDataTable = $section->addTable('modeOfFinanceStyle');
        $locationDataTable->addRow();
        $locationDataTable->addCell(4000)->addText('Division', array('bold' => true), $pCenterStyle);
        $locationDataTable->addCell(4000)->addText('District', array('bold' => true), $pCenterStyle);
        $locationDataTable->addCell(4000)->addText('Upzilla/City Coorporation', array('bold' => true), $pCenterStyle);
        $locationDataTable->addRow();
        $locationDataTable->addCell(4000)->addText('1', array('bold' => true), $pCenterStyle);
        $locationDataTable->addCell(4000)->addText('2', array('bold' => true), $pCenterStyle);
        $locationDataTable->addCell(4000)->addText('3', array('bold' => true), $pCenterStyle);
        
        foreach($data->basicInfo->locations as $key => $value)
        {
            $locationDataTable->addRow();
            $locationDataTable->addCell(4000)->addText($value->division_name, null, $pCenterStyle);
            $locationDataTable->addCell(4000)->addText($value->district_name, null, $pCenterStyle);
            $locationDataTable->addCell(4000)->addText($value->upzila_name, null, $pCenterStyle);
        }
        //8.0 
        $section->addTextBreak();
        $annexITable = $section->addTable('contentTableStyle');
        $annexITable->addRow(0);
        $annexITable->addCell(700)->addText('8.0 ', $fontStyle, $pStyle);
        $annexITable->addCell(12000)->addText('Location wise cost break-down to be attached as per Annexure - I', null, $pStyle);
        //9.0 
        /*$contentTable->addRow(0);
        $contentTable->addCell(700)->addText('9.0 ', $fontStyle);
        $contentTable->addCell(4000)->addText('Component wise Estimated Cost Summary', $fontStyle);
        $contentTable->addCell(300)->addText(': ', $fontStyle);
        $contentTable->addCell(8000)->addText();*/
        //10.0 
        $section->addTextBreak();
        $logFrameTable = $section->addTable('contentTableStyle');
        $logFrameTable->addRow(0);
        $logFrameTable->addCell(700)->addText('10.0 ', $fontStyle, $pStyle);
        $logFrameTable->addCell(12000)->addText('Log Frame: ', $fontStyle, $pStyle);
        $logFrameTable->addRow(0);
        $logFrameTable->addCell(700)->addText(' ', $fontStyle, $pStyle);
        $logFrameTable->addCell(8000)->addText('Planned date for project completion: ' . $data->basicInfo->date_of_completion . "\n" . 
                                               'Date of this summary preparation: ' . $data->basicInfo->date_of_logframe_summary_preparation, $fontStyle, $pStyle);
        
        $section->addTextBreak();
        $logFrameDataTable = $section->addTable('modeOfFinanceStyle');
        $logFrameDataTable->addRow();
        $logFrameDataTable->addCell(2000)->addText('', array('bold' => true), $pStyle);
        $logFrameDataTable->addCell(4500)->addText('Narrative Summary', array('bold' => true), $pCenterStyle);
        $logFrameDataTable->addCell(4500)->addText("Objectively Verifiable\nIndecators (OVI)", array('bold' => true), $pCenterStyle);
        $logFrameDataTable->addCell(4500)->addText("Means of Verifications (MOV)", array('bold' => true), $pCenterStyle);
        $logFrameDataTable->addCell(4500)->addText("Important Assumptions(IA)", array('bold' => true), $pCenterStyle);
        $logFrameDataTable->addRow();
        $logFrameDataTable->addCell(2000)->addText('', array('bold' => true), $pStyle);
        $logFrameDataTable->addCell(4500)->addText('1', array('bold' => true), $pCenterStyle);
        $logFrameDataTable->addCell(4500)->addText('2', array('bold' => true), $pCenterStyle);
        $logFrameDataTable->addCell(4500)->addText('3', array('bold' => true), $pCenterStyle);
        $logFrameDataTable->addCell(4500)->addText('4', array('bold' => true), $pCenterStyle);
        $logFrameDataTable->addRow();
        $logFrameDataTable->addCell(2000)->addText('Goal', array('bold' => true), $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->goal_summary, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->goal_ovi, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->goal_mov, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->goal_ai, $fontStyle, $pStyle);
        $logFrameDataTable->addRow();
        $logFrameDataTable->addCell(2000)->addText("Objective/\nPurpose", array('bold' => true), $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->objective_summary, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->objective_ovi, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->objective_mov, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->objective_ai, $fontStyle, $pStyle);
        $logFrameDataTable->addRow();
        $logFrameDataTable->addCell(2000)->addText("Output", array('bold' => true), $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->output_summary, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->output_ovi, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->output_mov, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->output_ai, $fontStyle, $pStyle);
        $logFrameDataTable->addRow();
        $logFrameDataTable->addCell(2000)->addText("Input", array('bold' => true), $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->input_summary, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->input_ovi, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->input_mov, $fontStyle, $pStyle);
        $logFrameDataTable->addCell(4500)->addText($data->logframe->input_ai, $fontStyle, $pStyle);
        
        //11.0
        $section->addTextBreak();
        $projectMgmtTable = $section->addTable('contentTableStyle');
        $projectMgmtTable->addRow();
        $projectMgmtTable->addCell(700)->addText('11.0', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(4000)->addText('Project Management', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(300)->addText(' ', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(8000)->addText(' ', $fontStyle, $pStyle);
        $projectMgmtTable->addRow();
        $projectMgmtTable->addCell(700)->addText(' ', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(4000)->addText('11.1 Project Management Setup', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(8000)->addText('Annexure-II', $fontStyle, $pStyle);
        $projectMgmtTable->addRow();
        $projectMgmtTable->addCell(700)->addText(' ', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(4000)->addText('11.2 Implementation Arrangement', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        
        $implementation_arrangement = str_replace('<p>', '', $data->basicInfo->implementation_arrangement);
        $implementation_arrangement = str_replace('</p>', '', $implementation_arrangement);
        $implementation_arrangement = str_replace('&nbsp;', ' ', $implementation_arrangement);
        
        $projectMgmtTable->addCell(8000)->addText($implementation_arrangement, $fontStyle, $pStyle);
        
        $projectMgmtTable->addRow();
        $projectMgmtTable->addCell(700)->addText(' ', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(4000)->addText('11.3 Attach Procurement Plan', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(8000)->addText('Annexure-III(A) , Annexure III(B), Annexure III(C)', $fontStyle, $pStyle);
        $projectMgmtTable->addRow();
        $projectMgmtTable->addCell(700)->addText('12.0', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(4000)->addText('Year wise financial and physical target plan', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(8000)->addText('Annexure-IV', $fontStyle, $pStyle);
        $projectMgmtTable->addRow();
        $projectMgmtTable->addCell(700)->addText('13.0', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(4000)->addText('After completion, whether the project needs to be transferred to revenue budget', $fontStyle, $pStyle);
        $projectMgmtTable->addCell(300)->addText(': ', $fontStyle, $pStyle);
        
        $after_completion = str_replace('<p>', '', $data->basicInfo->after_completion);
        $after_completion = str_replace('</p>', '', $after_completion);
        $after_completion = str_replace('&nbsp;', '', $after_completion);
        $projectMgmtTable->addCell(8000)->addText($after_completion, $fontStyle, $pStyle);
        
        $section->addTextBreak();
        $section->addTextBreak();
        $section->addTextBreak();
        $section->addTextBreak();
        
        
        $signatureStyle    = array('borderTopSize' => 1, 'borderTopColor' => '006699', 'cellMargin' => 80, array('spaceAfter' => 0));
        $PHPWord->addTableStyle('signatureStyle', $signatureStyle);
        $signatureTable = $section->addTable('signatureStyle');
        $signatureTable->addRow();
        $signatureTable->addCell(10000)->addText('Signature of officer(s) responsible for the preparation of DPP with seal and date', array('bold'=>true), $pStyle);
        
        // Save File
        $objWriter = PHPWord_IOFactory::createWriter($PHPWord, 'Word2007');
        
        $filename  = 'part_A.doc';
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
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
        $details_colum_start_cell    = PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no);  // N = 13as A = 0 as column number
        
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

            //NOW PRINT THE COMPONENT DETAILS DATA -- START
            $data_column                       = $details_colum_start_cell;
            $revenue_component_data_start_row  = $row;
            $capital_component_flag            = false;
            
            foreach($comValue as $component_details_val)
            {
                if ($component_details_val->component_type == 'Revenue Component')
                {
                    $revenue_component_data_end_row = $row;
                }
                
                if ($component_details_val->component_type == 'Capital Component')
                {
                    if ( !$capital_component_flag )
                    {
                        $row += 2;  // for capital component start point increase the row counter
                        $capital_component_flag = true;
                    }
                    $capital_component_data_start_row = $revenue_component_data_end_row + 3;
                    $capital_component_data_end_row   = $row;
                }
                //ajaj
                $objSheet->getCell($data_column.$row)->setValue($component_details_val->gob . "\n(" . $component_details_val->gob_fe . ")");
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($data_column)).$row)->setValue($component_details_val->rpa_through_gob);
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($data_column)+1).$row)->setValue($component_details_val->rpa_special_account);
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($data_column)+2).$row)->setValue($component_details_val->dpa);
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($data_column)+3).$row)->setValue($component_details_val->own_fund . "\n(" . $component_details_val->own_fund_fe . ")");
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($data_column)+4).$row)->setValue($component_details_val->other . "\n(" . $component_details_val->other_fe . ")");
                
                $objSheet->getStyle($data_column.$row.':'.PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($details_colum_start_cell)+4).($row))->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                $row++;
            }
            
            $details_colum_start_cell_no +=6;
            $details_colum_start_cell     = PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no);
        }
        //NOW PRINT THE COMPONENT DETAILS DATA -- END
        
        $row++;
        
        // Print the contingency details -- START
        $details_colum_start_cell_no   = 13;
        $contingency_colum_start_cell  = PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no);  // N = 13as A = 0 as column number
        $contingency_row               = $row;
        
        foreach($data['contingency_details'] as $oValue)
        {
            foreach($oValue as $conValue)
            {    
                $objSheet->getCell($contingency_colum_start_cell.$contingency_row)->setValue($conValue->gob . "\n(" . $conValue->gob . ")");
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($contingency_colum_start_cell)).$contingency_row)->setValue($conValue->rpa_through_gob);
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($contingency_colum_start_cell)+1).$contingency_row)->setValue($conValue->rpa_special_account);
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($contingency_colum_start_cell)+2).$contingency_row)->setValue($conValue->dpa);
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($contingency_colum_start_cell)+3).$contingency_row)->setValue($conValue->own_fund . "\n(" . $conValue->own_fund_fe . ")");
                $objSheet->getCell(PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($contingency_colum_start_cell)+4).$contingency_row)->setValue($conValue->other . "\n(" . $conValue->other_fe . ")");
                
                $objSheet->getStyle($contingency_colum_start_cell.$contingency_row.':'.PHPExcel_Cell::stringFromColumnIndex(PHPExcel_Cell::columnIndexFromString($contingency_colum_start_cell)+4).($contingency_row))->getBorders()->getAllBorders()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                $contingency_row += 2;
            }
            
            
            
            $details_colum_start_cell_no  +=6;
            $contingency_colum_start_cell  = PHPExcel_Cell::stringFromColumnIndex($details_colum_start_cell_no);
            $contingency_row               = $row;
        }
        // Print the contingency details -- END
        
        $row++;
        
        $filename  = 'Annex-V' . '.xlsx';
        
        header('Content-Disposition: attachment;filename="' . $filename. '"');
        header('Content-Type: text/plain; charset=utf-8');
        $objWriter->save($_SERVER['DOCUMENT_ROOT'].'/files/'.$filename);
        header ('Location: /files/'.$filename);
    }
    
    function getPCDeskOfficerDesignationList($sector_division)
    {
        $info['table']  = USER_TBL . ' AS UT LEFT JOIN ' . USER_PROFILE_TBL . ' AS UPT ON (UT.uid = UPT.uid)';
        $info['debug']  = false;
        $info['where']  = 'UT.sector_division = ' . $sector_division . 
                          ' AND UT.user_type = ' . q('Commission') . ' AND UT.status = ' . q('Active') . 
                          ' ORDER BY UPT.designation_weight DESC';
        $info['fields'] = array('UT.uid', 'UPT.name', 'UT.designation');
        
        $list = select($info);
        
        if($list)
        {
            foreach($list as $value)
            {
                $retData[$value->uid] = $value->name . ' ('. $value->designation .')';
            }
        }
        
        return $retData;
    }
?>  