<html>
<head>
<meta charset="utf-8">
</head>
<body>
<#-- Create constructor object -->
<#assign objectConstructor = "freemarker.template.utility.ObjectConstructor"?new()>
<#-- Call formatter constructor -->
<#assign mmddyy = objectConstructor("java.text.SimpleDateFormat","MM/dd/yyyy")>
<#function formatDate inDate="">
  <#local myDate = "">
  <#if inDate?has_content>
    <#local myDate = mmddyy.format(inDate)>
  </#if>
  <#return myDate>
</#function>    
<#assign currentDT = .now>
<#assign currentDate = mmddyy.format(currentDT)>
  
<script type='text/javascript'>
	function notEmpty(elem){
		if(elem.value.length == 0){
			return false;
		}
		return true;
	}
	
	function isNumeric(elem){
		var numericExpression = /^[0-9]+$/;
		if(elem.value.match(numericExpression)){
			return true;
		} else {
			return false;
		}
	}
	
	function isAlphabet(elem){
        var alphaExp = /^[a-zA-Z0-9\u00A1-\uFFFF\_ .-@]+$/;
        if(elem.value.match(alphaExp)){
            return true;
        } else {
            return false;
        }
    }

    function isAlphanumeric(elem){
        var alphaExp = /^[a-zA-Z0-9\u00A1-\uFFFF\_ .-@]+$/;
        if(elem.value.match(alphaExp) && !isNumeric(elem)){
            return true;
        } else {
            return false;
        }
    }
	
	function isFloat(elem){
   		if(elem.value.indexOf(".") < 0){
     		return false;
   		} else {
      		if(parseFloat(elem.value)) {
              return true;
          	} else {
              return false;
          	}
   		}
	}
	
	function taskFormValidator() {
		var i=0;
		var myInputs = new Array();

        myInputs[i] = document.getElementById("workDataMap");
        i++;
    
        myInputs[i] = document.getElementById("followUpPhase3");
        i++;
    
        myInputs[i] = document.getElementById("note");
        i++;
    
        myInputs[i] = document.getElementById("returnToEng");
        i++;
    
        myInputs[i] = document.getElementById("returnToPhase1");
        i++;
    
        myInputs[i] = document.getElementById("currentPhase");
        i++;
				
		
		var j=0;

      /*
        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid workDataMap");
            myInputs[j].focus();
            return false;
        }	
        j++;
    
        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid followUpPhase3");
            myInputs[j].focus();
            return false;
        }	
        j++;

        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid note");
            myInputs[j].focus();
            return false;
        }	
        j++;

        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid returnToEng");
            myInputs[j].focus();
            return false;
        }	
        j++;
    
        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid returnToPhase1");
            myInputs[j].focus();
            return false;
        }	
        j++;
    
        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid currentPhase");
            myInputs[j].focus();
            return false;
        }	
        j++;
      */
        
		return true;
	}
</script>
<style type="text/css">
	#container
	{
		margin: 0 auto;
		width: 1160px;
		background:#fff;
	}

	#header
	{
		background: #ccc;
		padding: 10px;
		font-family:Arial, Helvetica, sans-serif;
		font-size: 110%;
		letter-spacing: -0.5px;
		font-weight: bold;
		line-height: 1.0;
		color:#666;
	}

	#header h1 { margin: 0; }

	#content
	{
		clear: left;
		padding: 10px;
	}

	#content h2
	{
		color: #000;
		font-size: 110%;
		margin: 0 0 .5em;
	}

	#footer
	{
		background: #ccc;
		text-align: right;
		padding: 10px;
		height: 1%;
	}
	
	fieldset {
		border:1px dashed #CCC;
		padding:4px;
		margin-top:10px;
		margin-bottom:10px;
	}
	legend {
		font-family:Arial, Helvetica, sans-serif;
		#font-size: 90%;
        font:normal 12px Arial;
		letter-spacing: -1px;
		font-weight: bold;
		line-height: 1.1;
		color:#fff;
		background: #666;
		border: 1px solid #333;
		padding: 3px 3px;
	}
	.form {
		margin:0;
		padding:0;
	}
	label {
		width:120px;
		height:22px;
		margin-top:3px;
		margin-right:2px;
		padding-top:4px;
		padding-left:3px;
		#background-color:#CCCCCC;
		float:left;
		display: block;
        font:normal 12px Arial;
		#font-family:Arial, Helvetica, sans-serif;
		#font-size: 80%;
        #font-weight: normal;
		#letter-spacing: -0.5px;
		#line-height: 1.1;
		color:#666;
	}
  	.shortlabel {
		width:80px;
		height:22px;
		margin-top:3px;
		margin-right:2px;
		padding-top:4px;
		padding-left:3px;
		#background-color:#CCCCCC;
		float:left;
		display: block;
        font:normal 12px Arial;
		#font-family:Arial, Helvetica, sans-serif;
		#font-size: 80%;
        #font-weight: normal;
		#letter-spacing: -0.5px;
		#line-height: 1.1;
		color:#666;
	}
  	.longlabel {
		width:180px;
		height:22px;
		margin-top:3px;
		margin-right:2px;
		padding-top:4px;
		padding-left:3px;
		#background-color:#CCCCCC;
		float:left;
		display: block;
        font:normal 11px Arial;
		#font-family:Arial, Helvetica, sans-serif;
		#font-size: 80%;
        #font-weight: normal;
		#letter-spacing: -0.5px;
		#line-height: 1.1;
		color:#666;
	}
    .longRequiredlabel {
		width:180px;
		height:22px;
		margin-top:3px;
		margin-right:2px;
		padding-top:4px;
		padding-left:3px;
		#background-color:#CCCCCC;
		float:left;
		display: block;
        font:normal 11px Arial;
		#font-family:Arial, Helvetica, sans-serif;
		#font-size: 80%;
        font-weight: bold;
		#letter-spacing: -0.5px;
		#line-height: 1.1;
		color:#000000;
	}
    table {
		cellpadding: 0;
		cellspacing: 0;
        align: left;
	}
    tr {
		cellpadding: 0;
		cellspacing: 0;
        align: left;
        valign: top;
	}

  	.div_taskinfo {
		width:400px;
	}
	.div_texbox {
		width:300px;
		float:left;
		background-color:#E6E6E6;
		height:22px;
		margin-top:2px;
		padding-top:2px;
		padding-bottom:3px;
		padding-left:3px;
	}
	.div_checkbox {
		width:200px;
		float:left;
		background-color:#E6E6E6;
		height:22px;
		margin-top:2px;
		padding-top:2px;
		padding-bottom:3px;
		padding-left:3px;
	}
  	.div_longreadonly {
		width:300px;
        font:normal 12px Arial;
		float:left;
        #vertical-align:middle;
		background-color:#E6E6E6;
		height:22px;
		margin-top:2px;
		padding-top:2px;
		padding-bottom:3px;
		padding-left:2px;
	}
    .div_mediumreadonly {
		width:200px;
        font:normal 12px Arial;
		float:left;
        #vertical-align:middle;
		background-color:#E6E6E6;
		height:22px;
		margin-top:2px;
		padding-top:2px;
		padding-bottom:3px;
		padding-left:2px;
	}
    .div_veryshortreadonly {
		width:60px;
        font:normal 12px Arial;
		float:left;
        #vertical-align:middle;
		background-color:#E6E6E6;
		height:22px;
		margin-top:2px;
		padding-top:2px;
		padding-bottom:3px;
		padding-left:2px;
	}
    .div_shortreadonly {
		width:160px;
        font:normal 12px Arial;
		float:left;
        #vertical-align:middle;
		background-color:#E6E6E6;
		height:22px;
		margin-top:2px;
		padding-top:2px;
		padding-bottom:3px;
		padding-left:2px;
	}
  	.div_shortoutput {
		width:160px;
		float:left;
		background-color:#E6E6E6;
		height:22px;
		margin-top:2px;
		padding-top:2px;
		padding-bottom:3px;
		padding-left:3px;
	}
    .div_mediumoutput {
		width:180px;
		float:left;
		background-color:#E6E6E6;
		height:22px;
		margin-top:2px;
		padding-top:2px;
		padding-bottom:3px;
		padding-left:3px;
	}
    .div_longoutput {
		width:300px;
		float:left;
		background-color:#E6E6E6;
		height:22px;
		margin-top:2px;
		padding-top:2px;
		padding-bottom:3px;
		padding-left:3px;
	}
	.shorttextbox {
		background-color:#FFFFFF;
		background-repeat: no-repeat;
		background-position:left;
        border-color:#ff0000 #0000ff;
		width:160px;
		font:normal 12px Arial;
		#color: #999999;
		padding:2px 2px 2px 2px;
	}
  	.mediumtextbox {
		background-color:#FFFFFF;
		background-repeat: no-repeat;
		background-position:left;
        border-color:#ff0000 #0000ff;
		width:200px;
		font:normal 12px Arial;
		#color: #999999;
		padding:2px 2px 2px 2px;
	}
  	.longtextbox {
		background-color:#FFFFFF;
		background-repeat: no-repeat;
		background-position:left;
        border-color:#ff0000 #0000ff;
		width:290px;
		font:normal 12px Arial;
		#color: #999999;
		padding:2px 2px 2px 2px;
	}
    .textarea {
		background-color:#FFFFFF;
		background-repeat: no-repeat;
		background-position:left;
        border-style: inset;  
        border-color:#ff0000 #0000ff;
        #border-width: 2px;   
        #border:1px solid #ccc;
		width:560px;
		font:normal 12px Arial;
		#color: #999999;
		padding:2px 2px 2px 2px;
	}

	.checkbox {
		background-color:#FFFFFF;
		background-repeat: no-repeat;
		background-position:left;
		width:280px;
		font:normal 12px Arial;
		color: #999999;
		padding:3px 3px 3px 10px;
	}
	.textbox:focus, .textbox:hover {
		background-color:#F0FFE6;
	}
	.left_align_button_div {
		#width:300px;
		float:left;
		background-color:#fff;
		#border:1px solid #ccc;
		text-align:right;
		height:28px;
		margin-top:3px;
		padding:6px 6px 3px;
	}
  	.right_align_button_div {
		#width:300px;
		float:right;
		background-color:#fff;
		#border:1px solid #ccc;
		text-align:right;
		height:28px;
		margin-top:3px;
		padding:6px 6px 3px;
	}
	.buttons {
		background: #e3e3db;
		font-size:11px; 
		color: #989070; 
		padding: 3px 3px;
		border-width: 2px;
		border-style: outset;
		border-color: #fff #d8d8d0 #d8d8d0 #fff;
		text-decoration: none;
		#text-transform:uppercase;
		font-weight:bold;
	}
  	.fixedsizebuttons {
		background: #e3e3db;
        width:78px;
		font-size:11px; 
		color: #989070; 
		padding: 3px 3px;
		border-width: 2px;
		border-style: outset;
		border-color: #fff #d8d8d0 #d8d8d0 #fff;
		text-decoration: none;
		#text-transform:uppercase;
		font-weight:bold;
	}

</style>

<div id="container">
	<div id="header">
		CMC Workflow: Phase 3 Work
	</div>
	<div id="content">
      <div class="div_taskinfo">
		<fieldset>
          <legend>Task Info</legend>
          <table width=650>
            <tr align="left" valign="top">
              <td width="14%">
                <label for="name" class="label">Process Instance ID:</label>
              </td>
              <td width="8%">
                <div class="div_veryshortreadonly"></div>
              </td>
              <td width="12%">
                <label for="name" class="shortlabel">Task Name:</label>
              </td>
              <td width="25%">
                <div class="div_mediumreadonly">${task.names[0].text}</div>
              </td>
              <td width="14%">
                <label for="name" class="shortlabel">Actual Owner:</label>
              </td>              
              <td width="25%">
                <div class="div_mediumreadonly">${task.taskData.actualOwner.id}</div>
              </td>
            </tr>
          </table>
          </fieldset>
      </div>
      
      <#assign myTecodDate = dateTecod?date>
      <table>  
      <tr align="left" valign="top">
        <td width="28%">
		<fieldset>
          <legend>Project Info</legend>
          <table>  
            <tr align="left" valign="top">
              <td width="35%">  
                <label for="projectId">Project ID:</label>
              </td>
              <td width="65%">               
                <input name="projectId" type="text" class="div_mediumreadonly" 
                    id="projectId" readonly value="${projectId}" />  
              </td>	
            </tr>
            <tr align="left" valign="top">
              <td width="35%">       
                <label for="projDesc">Description:</label>
              </td>
              <td width="65%">           
                <input name="projDesc" type="text" class="div_mediumreadonly" 
                    id="projDesc" readonly value="${projDesc}" />
              </td>	
            </tr>
              <tr align="left" valign="top">
                <td width="35%">          
                  <label for="assignedPhase3">Assigned Name:</label>
                </td>
                <td width="65%">           
                  <input name="assignedPhase3" type="text" class="div_mediumreadonly" 
                    id="assignedPhase3" readonly value="${assignedPhase3}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">        
                  <label for="stateCode">State:</label>
                </td>
                <td width="65%">          
                  <input name="stateCode" type="text" class="div_mediumreadonly" 
                    id="stateCode" readonly value="${stateCode}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">          
                  <label for="company">Company:</label>
                </td>
                <td width="65%">          
                  <input name="company" type="text" class="div_mediumreadonly" 
                    id="company" readonly value="${company}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">                 
                  <label for="tecodDate">Date Teco'd:</label>          
                </td>
                <td width="65%">            
                  <input name="tecodDate" type="text" class="div_mediumreadonly" 
                    id="tecodDate" readonly value="${formatDate(dateTecod)}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">          
                  <label for="responsiblePerson">Resp Person:</label>
                </td>
                <td width="65%">              
                  <input name="responsiblePerson" type="text" class="div_mediumreadonly" 
                    id="responsiblePerson" readonly value="${responsiblePerson}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">          
                  <label for="responsiblePersonEmail">Resp Email:</label>
                </td>
                <td width="65%"> 
                  <input name="responsiblePersonEmail" type="text" 
                    class="div_mediumreadonly" readonly
                    id="responsiblePersonEmail" 
                    value="${responsiblePersonEmail}" />  
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">          
                  <label for="respPersonSupervior">Resp Sup:</label>
                </td>
                <td width="65%">          
                  <input name="respPersonSupervior" type="text" class="div_mediumreadonly" 
                    id="respPersonSupervior" readonly value="${respPersonSupervior}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">          
                  <label for="tecoUser">Teco User:</label>
                </td>
                <td width="65%">   
                  <input name="tecoUser" type="text" class="div_mediumreadonly" 
                    id="tecoUser" readonly value="${tecoUser}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">          
                  <label for="tecoUserSupervisor">Teco User Sup:</label>
                </td>
                <td width="65%">          
                  <input name="tecoUserSupervisor" type="text" class="div_mediumreadonly" 
                    id="tecoUserSupervisor" readonly value="${tecoUserSupervisor}" />
                </td>	
              </tr>
            </table>
            <div class="clear"></div>
          </fieldset>
        </td>
        <td width="72%">          
          <fieldset>
            <legend>Populate These Fields to Return to Engineer or Complete</legend>
            <form action="complete" method="POST" enctype="multipart/form-data" 
                  onsubmit="return taskFormValidator()">

            <table>  
              <tr align="left" valign="top">
                <td width="25%">                
                  <label for="jointUse" class="longlabel">Joint Use:</label>
                </td>
                <td width="23%"> 
                  <input name="jointUse" type="text" class="div_shortreadonly"
                         id="jointUse" value="${jointUse}" />
                </td>
                <td width="26%"> 
                  <label for="name" class="longRequiredlabel">Review Budget Dollars:</label>
                </td>
                <td width="26%"> 
                  <select name="reviewBudgetDollars" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${reviewBudgetDollars}" == 
                         "Budget Transfer Required - Return to Engineer">
                      <option selected>Budget Transfer Required - Return to Engineer</option> 
                    <#else>
                      <option>Budget Transfer Required - Return to Engineer</option> 
                    </#if>  
                    <#if "${reviewBudgetDollars}" == "Budget Transfer not Required">
                      <option selected>Budget Transfer not Required</option> 
                    <#else>
                      <option>Budget Transfer not Required</option> 
                    </#if>        
                  </select>       
                </td>
              </tr>
              <tr align="left" valign="top">
                <td width="25%">                
                  <label for="aidToConstruction" 
                    class="longlabel">Aid to Construction:</label>
                </td>
                <td width="23%"> 
                  <input name="aidToConstruction" type="text" class="div_shortreadonly"
                         id="aidToConstruction" value="${aidToConstruction}" />
                </td>
                <td width="26%">                
                  <label for="verifyPoleConduitJuInvVouchers" 
                    class="longRequiredlabel">Verify Pole/Conduit Joint Use Invoice Vouchers:</label>
                </td>
                <td width="26%"> 
                  <select name="verifyPoleConduitJuInvVouchers" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${verifyPoleConduitJuInvVouchers}" == 
                         "Possible Joint Use - Return to Engineer">
                      <option selected>Possible Joint Use - Return to Engineer</option> 
                    <#else>
                      <option>Possible Joint Use - Return to Engineer</option> 
                    </#if>  
                    <#if "${verifyPoleConduitJuInvVouchers}" == "Joint Use Mnemonics not found">
                      <option selected>Joint Use Mnemonics not found</option> 
                    <#else>
                      <option>Joint Use Mnemonics not found</option> 
                    </#if>        
                  </select>       
                </td> 
              </tr>
              <tr align="left" valign="top">
                <td width="25%">                
                  <label for="followUpPhase3" class="longRequiredlabel">Follow Up Phase 3:</label>
                </td>
                <td width="23%"> 
                  <input name="followUpPhase3" type="text" class="mediumtextbox"
                         id="followUpPhase3" value="${currentDate}" />   
                </td>
                <td width="26%"> 
                  <label for="verifyCtiReimbursedByCust" 
                    class="longRequiredlabel">Verify CTL has been Reimbursed by Customer:</label>
                </td>
                <td width="26%"> 
                  <select name="verifyCtiReimbursedByCust" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${verifyCtiReimbursedByCust}" == 
                         "Customer has not paid - Return to Engineer">
                      <option selected>Customer has not paid - Return to Engineer</option> 
                    <#else>
                      <option>Customer has not paid - Return to Engineer</option> 
                    </#if>  
                    <option>Customer Paid</option> 
                    <option>Aid to Construction Mnemonics not found</option>    
                  </select>      
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="25%">                
                  <label for="allChargesForCurrentMonthCleared" 
                    class="longRequiredlabel">All Charges for Current Month Cleared:</label>
                </td>
                <td width="23%"> 
                  <select name="allChargesForCurrentMonthCleared" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${allChargesForCurrentMonthCleared}" == "No">
                      <option selected>No</option> 
                    <#else>
                      <option>No</option> 
                    </#if>      
                    <#if "${allChargesForCurrentMonthCleared}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>  
                  </select>       
                </td>
                <td width="26%"> 
                  <label for="engWorkOrdersFinalCupped" 
                    class="longRequiredlabel">Verify Engineer Work Order has Final Cups:</label>
                </td>
                <td width="26%"> 
                  <select name="engWorkOrdersFinalCupped" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${engWorkOrdersFinalCupped}" == "No - Return to Engineer">
                      <option selected>No - Return to Engineer</option> 
                    <#else>
                      <option>No - Return to Engineer</option> 
                    </#if>  
                    <#if "${engWorkOrdersFinalCupped}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>  
                    <#if "${engWorkOrdersFinalCupped}" == "Job does not have Engineer Work Order">
                      <option selected>Job does not have Engineer Work Order</option> 
                    <#else>
                      <option>Job does not have Engineer Work Order</option> 
                    </#if>      
                  </select>       
                </td>	                
              </tr>
              <tr align="left" valign="top">
                <td width="25%">                
                  <label for="lastChargedDate" 
                    class="longRequiredlabel">Date of Last Charge other than IDC:</label>
                </td>
                <td width="23%"> 
                  <input name="lastChargedDate" type="text" class="mediumtextbox"
                         id="lastChargedDate" value="${lastChargedDate}" />   
                </td>     
                <td width="25%">                
                  <label for="returnToEng" 
                    class="longRequiredlabel">Return to Engineer or Verified Actuals:</label>
                </td>
                <td width="23%"> 
                  <select name="returnToEng" class="mediumtextbox" size=1 >
                    <option></option> 
                    <option>Return to Engineer</option> 
                    <option>Return to Engineer - Joint Use</option> 
                    <option>Complete Verify Actuals</option>    
                  </select> 
                </td>
              </tr>
              <tr align="left" valign="top"> 
                <td width="26%">                
                  <label for="verifyPhase2ContractorHasBeenPaid"
                    class="longRequiredlabel">Verify Phase 2 Contractor Has Been Paid:</label>
                </td>
                <td width="26%"> 
                  <select name="verifyPhase2ContractorHasBeenPaid" class="mediumtextbox" size=1 >
                    <option></option> 
                    <option>No - Contractor has not been paid</option> 
                    <option>Yes - Contractor has been paid</option>  
                    <option>Contractor did not charge time to job</option>        
                  </select>       
                </td>  

                  
                <td width="25%"> 
                  <label for="dateSentToEng" 
                    class="longRequiredlabel">Date Sent to ENG:</label>
                </td>
                <td width="23%"> 
                  <input name="dateSentToEng" type="text" class="mediumtextbox"
                         id="dateSentToEng" value="${formatDate(dateSentToEng)}" /> 
                </td>	
              </tr>                    
              <tr align="left" valign="top">
                <td width="25%"> 
                  <label for="apInvoicesPaid" 
                    class="longRequiredlabel">Verify AP Invoices:</label>
                </td>
                <td width="23%"> 
                  <select name="apInvoicesPaid" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${apInvoicesPaid}" == "No">
                      <option selected>No</option> 
                    <#else>
                      <option>No</option> 
                    </#if>  
                    <#if "${apInvoicesPaid}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if> 
                  </select>     
                </td>	
                <td width="26%">
                  <label for="constrCoord" class="longRequiredlabel">Constr Coord:</label>
                </td>
                <td width="26%"> 
                  <input name="constrCoord" type="text" class="mediumtextbox"
                    id="constrCoord" value="${constrCoord}" />   
                </td>	
              </tr>                 
              <tr align="left" valign="top">
                <td width="25%">                
                  <label for="reviewedActChargesVsPlanAmts"
                    class="longRequiredlabel">Reviewed Actual Charges vs Planned Amounts:</label>
                </td>
                <td width="23%"> 
                  <select name="reviewedActChargesVsPlanAmts" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${reviewedActChargesVsPlanAmts}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>   
                  </select>       
                </td>
                
                <td width="26%">
                  <label for="constrCoordEmail" class="longlabel">Constr Coord Email:</label>
                </td>
                <td width="26%"> 
                  <input name="constrCoordEmail" type="text" class="div_mediumreadonly"
                    id="constrCoordEmail" value="${constrCoordEmail}" />   
                </td>	
                
              </tr>      
              <tr align="left" valign="top">
                <td width="26%"> 
                  <label for="indicateVarianceStatus" 
                    class="longRequiredlabel">Indicate Variance Status:</label>
                </td>
                <td width="26%"> 
                  <select name="indicateVarianceStatus" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${indicateVarianceStatus}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>  
                    <#if "${indicateVarianceStatus}" == "No">
                      <option selected>No</option> 
                    <#else>
                      <option>No</option> 
                    </#if>        
                  </select>    
                </td>	
                <td width="26%">                  
                </td>
                <td width="26%"> 
                </td>	
              </tr>                       
              <tr align="left" valign="top">
                <td> 
                  <button name="addNoteBtn" type="button" 
                    class="fixedsizebuttons">Add Note</button>
                </td>
                <td colspan=3> 
                  <textarea id="note" rows=4 class="textarea" readonly>-Test Notes-
                  </textarea>
                </td>
              </tr>
            </table> 
            <div class="right_align_button_div">
              <input name="saveBtn" type="button" value="Save" class="fixedsizebuttons" />
              <input name="submitBtn" type="submit" value="Submit" class="fixedsizebuttons" />
              <input name="cancelBtn" type="button" value="Cancel" class="fixedsizebuttons" />
            </div>

            </form>
            <div class="clear"></div>
          </fieldset>
        </td>
       </tr>
       </table>

	</div>
	<div id="footer">
	</div>
</div>
</body>
</html>


