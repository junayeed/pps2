var objs             = new Array();
var row_counter      = 0;
var idCounter        = -1; 
var header_flag      = 0;
var footer_flag      = 0;

var OUTER_DELIM      = '###';
var INNER_DELIM      = '$$';

objs['in_attachments']  = { pref:"l", last:0 , h:["File"], w:[120]};
objs['table_footer']    = { pref:"l", last:0 , h:["File"], w:[120]};
alert('Junayeed');

/**
 * Load the default data from array when the user
 * click on Load Test Data link in the frontend
 */

function loadDefaultData()
{
   //1st data set NPV = 560.56, BCR = 1.02, IRR = 12.51
   //var capital_cost       = new Array (1596.63, 8801.4, 5594.753329, 0, 0, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); 
   //var operating_cost     = new Array (0, 0, 0, 1090.02, 1160.14, 1235.04, 1315.08, 1400.59, 1491.95, 1589.58, 1693.89, 1805.35, 1924.46, 2051.73, 2187.74, 2333.08, 2488.41, 2654.4, 2831.8, 3021.39, 3224.02, 0);      
   //var benefit            = new Array (0, 0, 0, 2711.8, 2895.88, 3092.55, 3302.69, 3527.23, 3767.14, 4023.51, 4297.45, 4590.18, 4903, 5237.29, 5594.54, 5976.32, 6384.34, 6820.4, 7286.45, 7784.55, 8316.91, 8885.92);	
   //var project_life_time  = 20;
   //var discount_factor    = 12;
   
   //2nd data NPV = 73728.32, BCR = 1.342, IRR = 17.72
   //var capital_cost       = new Array (35330.38, 67417.66, 78526.73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
   //var operating_cost     = new Array (0, 0, 0, 6273.84, 7999.50, 7999.50, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 9929.96, 0);
   //var benefit            = new Array (0, 0, 0, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 46128.78, 14241.19);
   //var project_life_time  = 28;
   //var discount_factor    = 12;   
   
   //5th data set NPV = 2547.43, BCR = 1.57, IRR = 27.36
   //var capital_cost       = new Array (0.00, 0, 1489.00,40.00,15.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00, 0);
   //var operating_cost     = new Array (0, 44.00 ,93.00 ,94.00 ,41.00 ,600.00,900.00,900.00,900.00,900.00,900.00,900.00,900.00,900.00,900.00, 0);
   //var benefit            = new Array (0.00, 0.00 ,0.00 ,0.00 ,0.00 ,1013.50,1500.00,1500.00,1500.00,1500.00,1500.00,1500.00,1500.00,1500.00,1500.00, 0);
   //var project_life_time  = 14;
   //var discount_factor    = 12;
   
   //6th data set NPV = 115.35, BCR = 1.0256, IRR = 17.31
   var capital_cost       = new Array (990.90,861.34,499.61,0.00,0.00,0.00,0.00,0.00,0.00,0.00);
   var operating_cost     = new Array (0.00,0.00,168.00,441.00,735.00,808.50,808.50,808.50,808.50,808.50);
   var benefit            = new Array (0.00,0.00,420.00 ,980.00 ,1470.00,1470.00,1470.00,1470.00,1470.00,1470.00);
   var project_life_time  = 9;
   var discount_factor    = 15;
   
   $("#project_life_time").get(0).value = project_life_time;
   $("#discount_factor").get(0).value   = discount_factor;
   
   for (var i=0; i<=project_life_time; i++)
   {
      addRow('in_attachments', 0);
      $("#capital_cost_" + i).get(0).value    = capital_cost[i];
      $("#operating_cost_" + i).get(0).value  = operating_cost[i];
      $("#benefit_" + i).get(0).value         = benefit[i];
      //alert("Capital Cost :: " + capital_cost[i]);	
   }  
   
   // make project_life_time readonly after a valid input
   if(project_life_time > 0)
   {
      $('#project_life_time').attr('readonly', true);
   }
   
   // show the "add new row" 
   $('#add_new_row').show();   

   
   // add the footer of the table
   if( !footer_flag )
   {
   	  //alert(header_flag);
      buildTableFooter('table_footer');
   }
   
   for (var i=0; i<=project_life_time; i++)
   { 
      calculateTotalPrice(i);   
      calculateBenefitDiscountValue (i);
   } 
   
   calculateNPVBCR();
   calculateIRR();
}

/**
 * add values and strings in the debug window for debug purpose
 * params-- str: the string to print in the debug window
 * return-- none
 */

function debug(str)
{
   $('#debug').get(0).innerHTML	+= str;
}

/**
 * Calculate IRR according to the formula
 * params-- none
 * return-- none
 */

function calculateIRR()
{
   var project_life_time   = parseInt($('#project_life_time').get(0).value);
   var discount_factor     = $('#discount_factor').get(0).value;    
   var last_npv            = 0.00; 
   var last_discount_rate  = 0.00;
   
   //project_life_time++;
   discount_factor++;
   
   
   for(var k=1; k<=150; k++)
   {
      discount_factor = k / 100;
      
      //alert("Discount Factor :: " + discount_factor);
      
      var discountTotalCost    = 0.00;
      var discountTotalBenefit = 0.00;
      var npv                  = 0.00;
      var bcr                  = 0.00;
      var irr                  = 0.00;
      
      for (var i=0; i<=project_life_time; i++)
      {
         var a = parseFloat($('#total_cost_' + i).get(0).value);
         discountTotalCost    += a / doRound(Math.pow((1+discount_factor), i), 3);
         discountTotalBenefit += parseFloat($('#benefit_' + i).get(0).value) / doRound(Math.pow((1+discount_factor), i), 3);
      }
      
      npv = discountTotalBenefit - discountTotalCost;
      bcr = discountTotalBenefit / discountTotalCost;   
      
      if(npv < 0) 
      {
         break;   
      }
      
      last_npv            = npv;  
      last_discount_rate  = k;                                                     
   }
   
   irr =  last_discount_rate  + last_npv * (k - last_discount_rate)/ (last_npv - npv);
   $('#irr').get(0).value = doRound(irr, 2);
}

/**
 * create new empty rows according to project_life_time
 * params-- none
 * return-- none
 */
                                                                        
function createRows()
{
   var project_life_time = $('#project_life_time').get(0).value;
   var diff = 0; 
   var i    = 0; 
   var k    = idCounter;
   
   // make project_life_time readonly after a valid input
   if(project_life_time > 0)
   {
      $('#project_life_time').attr('readonly', true);
   }
   
   for (i=0; i<=project_life_time; i++)
   {
      addRow('in_attachments', 0);	
   }
   
   // show the "add new row" 
   $('#add_new_row').show();   
   
   if( !footer_flag )
   {
      buildTableFooter('table_footer');
   }
}

/**
 * add a new colum/cell in the table
 * params-- the HTML content/objects
 * return-- newly created table document 
 */

function addCol(html)
{
   var td=document.createElement('td');
   td.innerHTML=html;
   
   return td;
}

/**
 * remove the row
 * params-- type: the name of the table
 * params-- col: the parent node
 * return-- none
 */
 
function removeRow(type, col)
{
   var frm = document.calculationForm;
   
   if (idCounter == 1)
   {
      return;
   }

   // decrease the values by 1
   row_counter--;
   idCounter--;
   $('#project_life_time').get(0).value--;

   // remove the row
   obj = $('#' + type).get(0);
   obj.removeChild(col.parentNode);  
   
   // show the previous delete image
   showPrevDeleteImg(idCounter);
   //calculate the grand total again after deleting a row
   calculateGrandTotal();
} 

/**
 * hide the previous row's delete image in case of user click on "Add New Row" link
 * params-- prevID: id of the previous row
 * return-- none
 */

function hidePrevDeleteImg(prevID)
{
   //alert("ID :::" + prevID);
   $("#del_" + prevID).css('display', 'none');
} 

/**
 * Show the previous row's delete image if the user delete a row
 * params-- prevID: id of the previous row
 * return-- none
 */

function showPrevDeleteImg(prevID)
{
   document.getElementById('del_'+prevID).style.display = 'inline';
} 

/**
 * add a new row
 */

function addRow(type, newRow)
{
   row_counter++;
   idCounter++;     
   
   // if the header is not there print table headers
   if( !header_flag )
   {
   	  //alert(header_flag);
      buildTableHeader(type);
   } 
   
   obj  = $('#in_attachments').get(0);
   tr   = document.createElement('tr');
   
   pref = objs[type].pref;
   len  = objs[type].h.length;
   last = objs[type].last++;  
   
   tr.appendChild(addCol('<input type="text" id ="year_'+idCounter+'"                              name="year_'+idCounter+'" value="'+idCounter+'" class="disabled vis input R W45" readonly /> '));
   tr.appendChild(addCol('<input type="text" id ="capital_cost_'+idCounter+'"            value="0" name="capital_cost_'+idCounter+'" onChange="calculateTotalPrice('+idCounter+');" class="vis input R W75"/>'));
   tr.appendChild(addCol('<input type="text" id ="operating_cost_'+idCounter+'"          value="0" name="operating_cost_'+idCounter+'" onChange="calculateTotalPrice('+idCounter+');" class="vis input R W75"/>'));
   tr.appendChild(addCol('<input type="text" id ="total_cost_'+idCounter+'"              value="0" name="total_cost_'+idCounter+'" class="disabled vis input R W75" readonly />'));
   tr.appendChild(addCol('<input type="text" id ="discount_val_tot_cost_'+idCounter+'"   value="0" name="discount_val_tot_cost_'+idCounter+'" class="disabled vis input R W75"  readonly />'));
   tr.appendChild(addCol('<input type="text" id ="benefit_'+idCounter+'"                 value="0" name="benefit_'+idCounter+'" onChange="calculateBenefitDiscountValue('+idCounter+');" class="vis input R W75" />'));
   tr.appendChild(addCol('<input type="text" id ="discount_val_benefit_'+idCounter+'"    value="0" name="discount_val_benefit_'+idCounter+'" class="disabled vis input R W75"  readonly />'));
   tr.appendChild(addCol('<img border="0" style="display: none" src="/app_contents/irr_calculator/images/delete.png"  id="del_'+idCounter+'" onclick="removeRow(\''+type+'\', parentNode)" />'));
   
   // if it is a new row increase the project life time 
   // and hide the previous rows delete image
   if(newRow == 1)
   {
      $('#project_life_time').get(0).value++;
      hidePrevDeleteImg(idCounter-1);
   }

   obj.appendChild(tr);
   
   // if it is last row then show the delete sign
   if (idCounter == $('#project_life_time').get(0).value)
   {
      showPrevDeleteImg(idCounter);
   }
} 

/**
 * calculate the discounted value for Benefit
 */

function calculateBenefitDiscountValue(idCounter)
{
   var frm = document.calculationForm;
   
   with (frm)
   {
      var benefit         = parseFloat(eval('benefit_'+idCounter).value);  
      var year            = parseInt(eval('year_'+idCounter).value);
      var destination     = 'discount_val_benefit_'+idCounter;
      
      //alert(eval('benefit_'+idCounter).value);
      calculateDiscountValue(benefit, year, destination);
   }	 	
} 

function reCalculateDiscountValue()
{
   var i;
   var project_life_time   = 	parseInt($('#project_life_time').get(0).value);      
   
   if( !$('#discount_factor').get(0).value)  
   {
      alert("returing!!! its nothing value");	
   }
   
   for (i=1; i<=project_life_time; i++)
   {
      calculateTotalPrice(i);
      calculateBenefitDiscountValue(i);
   }
}

function calculateGrandTotal()
{
   var total_capital_cost      = 0.00;
   var total_operating_cost    = 0.00;  
   var total_cost              = 0.00; 
   var total_discount_cost     = 0.00;  
   var total_benefit           = 0.00;   
   var total_discount_benefit  = 0.00;
   
   for (i=0; i<=idCounter; i++)
   {
      //alert("I ::" + i + "Cap Cost:: " + parseFloat(eval('capital_cost_'+i).value));
      total_capital_cost      += parseFloat($('#capital_cost_'+i).get(0).value); 	
      total_operating_cost    += parseFloat($('#operating_cost_'+i).get(0).value);     
      total_cost              += parseFloat($('#total_cost_'+i).get(0).value);
      total_discount_cost     += parseFloat($('#discount_val_tot_cost_'+i).get(0).value); 
      total_benefit           += parseFloat($('#benefit_'+i).get(0).value);   
      total_discount_benefit  += parseFloat($('#discount_val_benefit_'+i).get(0).value);                                                         
         
      //alert(total_capital_cost); 
   }  	 
   
   $('#total_capital_cost').get(0).value       = doRound(total_capital_cost, 2); 
   $('#total_operating_cost').get(0).value     = doRound(total_operating_cost, 2);
   $('#total_cost').get(0).value               = doRound(total_cost, 2); 
   $('#total_discount_cost').get(0).value      = doRound(total_discount_cost, 2);  
   $('#total_benefit').get(0).value            = doRound(total_benefit, 2);     
   $('#total_discount_benefit').get(0).value   = doRound(total_discount_benefit, 2); 
   
   //calculateNPVBCR();
}

function calculateNPVBCR()    
{
   var npv = 0.00;
   var bcr = 0.00;
   
   var totDiscountCost     = $('#total_discount_cost').get(0).value;
   var totDiscountBenefit  = $('#total_discount_benefit').get(0).value;
   
   npv = doRound( (totDiscountBenefit - totDiscountCost), 2);
   bcr = doRound( (totDiscountBenefit / totDiscountCost), 2);
   
   alert("NPV ::: " + npv + " BCR ::: " + bcr + '\n' + $(this).parent().attr('name') );
   
   $('#npv').get(0).value = npv;
   $('#bcr').get(0).value = bcr;
   
   //alert(window.parent.getElementById('financial_npv'))
   //parent.getElementById('financial_npv').value = npv;
   //parent.getElementById('financial_bcr').value = bcr;
   $(parent).find("#financial_npv").val('Harun got here');
   
   showRecommendation();
}

function showRecommendation()
{
   var npv = parseFloat($('#npv').get(0).value);
   var bcr = parseFloat($('#bcr').get(0).value);
   
   if (npv >= 0 && bcr >- 1)
      document.getElementById('recommendation').innerHTML	= "Project is Acceptable.";

   else if (npv < 0 && bcr < 1)
      document.getElementById('recommendation').innerHTML	= "Project is NOT Acceptable.";
      
   //$("#recommendation").dialog();   
   $( "#recommendation" ).dialog(
            { buttons: 
                { "Ok": function() { $(this).dialog("close"); } } 
            },
            {closeOnEscape: true},
            { title: 'System Recommendation' },
            { position: 'center' }
    );
}

function showInfo(infoName)
{
   if (infoName == "npv")
   {
      document.getElementById('info').innerHTML	= "NPV";
   }
   else if (infoName == "bcr")
   {
      document.getElementById('info').innerHTML	= "BCR";
   }
   else if (infoName == "irr")
   {
      document.getElementById('info').innerHTML	= "IRR";
   }
   
   $( "#info" ).dialog(
       { buttons: 
         { "Ok": function() { $(this).dialog("close"); } } 
       },
       {closeOnEscape: true},
       { title: 'Info' },
       { position: 'center' }
    );	
}

function calculateTotalPrice(idCounter)
{
   var frm = document.calculationForm;	
   
   with(frm)
   {
      var capital_cost    = parseFloat(eval('capital_cost_'+idCounter).value);
      var operating_cost  = parseFloat(eval('operating_cost_'+idCounter).value);
      var totalCost       = 0.00;    
      var year            = parseInt(eval('year_'+idCounter).value);
      var destination     = 'discount_val_tot_cost_'+idCounter;  
      
      //alert(destination);
      totalCost = doRound((capital_cost + operating_cost),2);   
      
      eval('total_cost_'+idCounter).value = totalCost;      
      
      calculateDiscountValue(totalCost, year, destination);      
      
      calculateGrandTotal();
   }
}   

function calculateDiscountValue(totPrice, year, destination)
{
   var discount_factor  = $('#discount_factor').get(0).value/100;
   
   var discount_val = totPrice / doRound(Math.pow((1+discount_factor), year), 3);
   
   //alert("T :::" + t + " Discount ::: " + discount_factor + " Tot Pr ::: " + totPrice + " Year ::: " + year); 	 
   //alert(destination);
   
   $('#' + destination).get(0).value = doRound( discount_val, 2);    
   calculateGrandTotal();
   
}

function doRound(x, places) 
{                                        
   return Math.round(x * Math.pow(10, places)) / Math.pow(10, places);
}

function buildTableHeader(type)     
{
   obj  = $("#in_attachments").get(0);
   tr   = document.createElement('tr');
   
   tr.appendChild(addCol('<label class="label">Year</label>'));
   tr.appendChild(addCol('<label class="label">Capital Cost</label>'));
   tr.appendChild(addCol('<label class="label">Operating <br />Cost</label>'));
   tr.appendChild(addCol('<label class="label">Total Cost</label>'));
   tr.appendChild(addCol('<label class="label">Discounted <br />Value of <br />Total Cost</label>'));
   tr.appendChild(addCol('<label class="label">Benefit</label>'));
   tr.appendChild(addCol('<label class="label">Discounted <br />Value of <br />Benefit</label>'));
   
   obj.appendChild(tr);    
   
   header_flag = 1;
}

function buildTableFooter(type)
{
   //obj  = document.getElementById(type);
   obj  = $("#table_footer").get(0);
   tr   = document.createElement('tr');
   
   pref = objs[type].pref;
   len  = objs[type].h.length;
   last = objs[type].last++;
   
   tr.appendChild(addCol('<label class="label">Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>'));
   tr.appendChild(addCol('<input type="text" id ="total_capital_cost"        size="8"  name="total_capital_cost" class="disabled vis input R W75" readonly />'));
   tr.appendChild(addCol('<input type="text" id ="total_operating_cost"      size="8"  name="total_operating_cost" class="disabled vis input R W75" readonly />'));
   tr.appendChild(addCol('<input type="text" id ="total_cost"                size="8"  name="total_cost" class="disabled vis input R W75" readonly />'));
   tr.appendChild(addCol('<input type="text" id ="total_discount_cost"       size="8"  name="total_discount_cost" class="disabled vis input R W75" readonly />'));
   tr.appendChild(addCol('<input type="text" id ="total_benefit"             size="8"  name="total_benefit" class="disabled vis input R W75" readonly />'));
   tr.appendChild(addCol('<input type="text" id ="total_discount_benefit"    size="8"  name="total_discount_benefit" class="disabled vis input R W75" readonly />'));

   obj.appendChild(tr);  
   
   footer_flag = 1;
}

function createSelectBox(prefix, idCntr, selectedIndx)
{
   var optn;
   var i = 0;
   
   for(i=0; i<idArray.length; i++)
   {
      var optn = document.createElement("option");
      
      $('#category_' + idCntr).options.add(optn);
   
      optn.text  = textArray[i];
      optn.value = idArray[i];	

   }
   document.getElementById('category_' + idCntr).selectedIndex = selectedIndx-1;
}

function clearDebugWindow()
{
   $("#debug").get(0).innerHTML = '';
}

/*
 * Purpose: this function shows the Div
 */
function showDiv(divId)
{
   if (document.getElementById)
	  { // DOM3 = IE5, NS6
      document.getElementById(divId).style.display = 'inline';
   }
   else
	  {
      if (document.layers)
	     { // Netscape 4
         document.divId.style.display = 'inline';
      }
      else
	     { // IE 4
         document.all.divId.style.display = 'inline';
      }
   }
}

/*
 * Purpose: this function hides the Div
 */
function hideDiv(divId)
{
   if (document.getElementById)
   { // DOM3 = IE5, NS6

      document.getElementById(divId).style.display = 'none';
   }
   else
   {
      if (document.layers)
      { // Netscape 4
         document.divId.display = 'none';
      }
      else
      {   // IE 4
         document.all.divId.style.display = 'none';
      }
   }
}

/**
 * Save the inserted/loaded all data in the copy_load textarea  ajaj
 */ 

function saveData()
{
   var capital_cost;
   var operating_cost;
   var benefit;
   var str;
   
   var project_life_time = $('#project_life_time').get(0).value;
   var discount_factor   = $("#discount_factor").get(0).value;
   
   $('#copy_load').get(0).value = project_life_time + OUTER_DELIM + discount_factor;
   
   
   for (var i=0; i<=project_life_time; i++)
   {
      $('#copy_load').get(0).value	+= OUTER_DELIM;
      
      capital_cost    = $("#capital_cost_" + i).get(0).value;
      operating_cost  = $("#operating_cost_" + i).get(0).value;
      benefit         = $("#benefit_" + i).get(0).value;
      
      $('#copy_load').get(0).value	+= capital_cost + INNER_DELIM + operating_cost + INNER_DELIM + benefit;
   }     
}

/**
 *  Read data from copy_load textarea and parse it. Then put it to textboxes.
 */

function parseData()
{
   var str =  $('#copy_load').get(0).value;
   var dataArray = str.split(OUTER_DELIM);
   var valueArray;
   
   // Project Life Time
   $('#project_life_time').get(0).value = dataArray[0];
   
   // Discount Factor
   $("#discount_factor").get(0).value  = dataArray[1];
   
   for(var i = 0; i <= $('#project_life_time').get(0).value; i++)
   {
      valueArray = dataArray[i+2].split(INNER_DELIM);
      addRow('in_attachments', 0);
      $("#capital_cost_" + i).get(0).value    = valueArray[0];  // Capital Cost
      $("#operating_cost_" + i).get(0).value  = valueArray[1];  // Operating Cost
      $("#benefit_" + i).get(0).value         = valueArray[2];  // Benefir
      //alert("Capital Cost :: " + capital_cost[i]);	
   }  
   
   if( !footer_flag )
   {
   	  //alert(header_flag);
      buildTableFooter('table_footer');
   }
   
   for (var i=0; i<=$('#project_life_time').get(0).value; i++)
   { 
      calculateTotalPrice(i);   
      calculateBenefitDiscountValue (i);
   } 
   
   calculateNPVBCR();
   calculateIRR();
   
}