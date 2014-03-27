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
    
        myInputs[i] = document.getElementById("followUpPhase2");
        i++;
    
        myInputs[i] = document.getElementById("note");
        i++;
    
        myInputs[i] = document.getElementById("returnToPhase1");
        i++;
    
        myInputs[i] = document.getElementById("returnToEng");
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
            alert("Please enter valid followUpPhase2");
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
            alert("Please enter valid returnToPhase1");
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
		font-size: 90%;
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
		width:100px;
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
		width:160px;
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
		#color:#666;
        color: #000000;
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
		width:220px;
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
		width:100px;
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
		width:100px;
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
		width:100px;
		font:normal 12px Arial;
		#color: #999999;
		padding:2px 2px 2px 2px;
	}
  	.mediumtextbox {
		background-color:#FFFFFF;
		background-repeat: no-repeat;
		background-position:left;
        border-color:#ff0000 #0000ff;
		width:190px;
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
		padding:5px 5px 3px;
	}
  	.right_align_button_div {
		#width:300px;
		float:right;
		background-color:#fff;
		#border:1px solid #ccc;
		text-align:right;
		height:28px;
		margin-top:3px;
		padding:5px 5px 3px;
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
		CMC Workflow: Phase 2 Work
	</div>
	<div id="content">
      <div class="div_taskinfo">
		<fieldset>
          <legend>Task Info</legend>
          <table width=600>
            <tr align="left" valign="top">
              <td width="12%">
                <label for="name">Task Name:</label>
              </td>
              <td width="37%">
                <div class="div_mediumreadonly">${task.names[0].text}</div>
              </td>
              <td width="12%">
                <label for="name">Actual Owner:</label>
              </td>              
              <td width="37%">
                <div class="div_mediumreadonly">${task.taskData.actualOwner.id}</div>
              </td>
           </tr>
          </table>
          </fieldset>
      </div>

      <table>  
      <tr align="left" valign="top">
       <td width="31%">
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
                  <label for="cmcSupervisor">CMC Supervisor:</label>
                </td>
                <td width="65%"> 
                  <input name="cmcSupervisor" type="text" class="div_mediumreadonly" 
                    id="cmcSupervisor" readonly value="${cmcSupervisor}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">          
                  <label for="cmcSupervisorEmail">CMC Sup Email:</label>
                </td>
                <td width="65%">  
                  <input name="cmcSupervisorEmail" type="text" class="div_mediumreadonly" 
                    id="cmcSupervisorEmail" readonly value="${cmcSupervisorEmail}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">          
                  <label for="assignedPhase2">Assigned Name:</label>
                </td>
                <td width="65%">           
                  <input name="assignedPhase2" type="text" class="div_mediumreadonly" 
                    id="assignedPhase2" readonly value="${assignedPhase2}" />
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
                    id="responsiblePersonEmail" value="${responsiblePersonEmail}" />
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
              <tr align="left" valign="top">
                <td width="35%">                 
                  <label for="tecodDate">DATE TECOD:</label>          
                </td>
                <td width="65%">          
                  <input name="tecodDate" type="text" class="div_mediumreadonly" 
                    id="tecodDate" readonly value="${formatDate(dateTecod)}" />   
                </td>	
              </tr>
            </table>
            <div class="clear"></div>
          </fieldset>
        </td>
        <td width="69%">          
          <fieldset>
            <legend>Populate These Fields to Move to Phase 3</legend>
            <form action="complete" method="POST" enctype="multipart/form-data" 
                  onsubmit="return taskFormValidator()">
            <table>  
              <tr align="left" valign="top">
                <td width="23%">                
                  <label for="followUpPhase2" class="longRequiredlabel">Follow Up Phase 2:</label>
                </td>
                <td width="27%"> 
                  <input name="followUpPhase2" type="text" class="mediumtextbox"
                         id="followUpPhase2" value="${currentDate}" />
                </td>
                <td width="23%"> 
                  <label for="jobFinalPostedInOspfm" 
                    class="longRequiredlabel">Job Final Posted in OSP-FM:</label>
                </td>
                <td width="27%"> 
                  <select name="jobFinalPostedInOspfm" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${jobFinalPostedInOspfm}" == "Completed">
                      <option selected>Completed</option> 
                    <#else>
                      <option>Completed</option> 
                    </#if>  
                    <#if "${jobFinalPostedInOspfm}" == "Conflict encountered notified Engineer">
                      <option selected>Conflict encountered notified Engineer</option> 
                    <#else>
                      <option>Conflict encountered notified Engineer</option> 
                    </#if>      
                    <#if "${jobFinalPostedInOspfm}" == "Job not in OSP-FM">
                      <option selected>Job not in OSP-FM</option> 
                    <#else>
                      <option>Job not in OSP-FM</option> 
                    </#if>  
                  </select>     
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="23%">                
                  <label for="jobHasFrfs" class="longRequiredlabel">Job Has FRFS:</label>
                </td>
                <td width="27%"> 
                  <select name="jobHasFrfs" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${jobHasFrfs}" == "No">
                      <option selected>No</option> 
                    <#else>
                      <option>No</option> 
                    </#if>        
                    <#if "${jobHasFrfs}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>  
                    <#if "${jobHasFrfs}" == "Placing Only No RFS Required">
                      <option selected>Placing Only No RFS Required</option> 
                    <#else>
                      <option>Placing Only No RFS Required</option> 
                    </#if>        
                  </select>       
                </td>
                <td width="23%"> 
                  <label for="finalRecordCorrectionsPerAsBuilt" 
                     class="longRequiredlabel">Final Record Corrections per As-Built:</label>
                </td>
                <td width="27%"> 
                  <select name="finalRecordCorrectionsPerAsBuilt" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${finalRecordCorrectionsPerAsBuilt}" == "Completed">
                      <option selected>Completed</option> 
                    <#else>
                      <option>Completed</option> 
                    </#if>  
                    <#if "${finalRecordCorrectionsPerAsBuilt}" == "No Changes per As-Built">
                      <option selected>No Changes per As-Built</option> 
                    <#else>
                      <option>No Changes per As-Built</option> 
                    </#if>    
                    <#if "${finalRecordCorrectionsPerAsBuilt}" == "Job not in OSP-FM">
                      <option selected>Job not in OSP-FM</option> 
                    <#else>
                      <option>Job not in OSP-FM</option> 
                    </#if>  
  
                  </select>       
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="23%">                
                  <label for="pabComplete" class="longRequiredlabel">PAB Complete:</label>
                </td>
                <td width="27%"> 
                  <select name="pabComplete" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${pabComplete}" == "No">
                      <option selected>No</option> 
                    <#else>
                      <option>No</option> 
                    </#if>      
                    <#if "${pabComplete}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>  
                    <#if "${pabComplete}" == "PAB not Required">
                      <option selected>PAB not Required</option> 
                    <#else>
                      <option>PAB not Required</option> 
                    </#if>        
                  </select>       
                </td>
                <td width="23%"> 
                  <label for="performedCmpInWkpkgInOspfm" 
                     class="longRequiredlabel">Performed Complete of work package in OSP-FM:</label>
                </td>
                <td width="27%"> 
                  <select name="performedCmpInWkpkgInOspfm" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${performedCmpInWkpkgInOspfm}" == "Completed">
                      <option selected>Completed</option> 
                    <#else>
                      <option>Completed</option> 
                    </#if>  
                    <#if "${performedCmpInWkpkgInOspfm}" == "Job not in OSP-FM">
                      <option selected>Job not in OSP-FM</option> 
                    <#else>
                      <option>Job not in OSP-FM</option> 
                    </#if>  
                  </select>       
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="23%">                
                  <label for="asBuiltsScannedIntoJds" 
                    class="longRequiredlabel">As-Builts Scanned into JDS:</label>
                </td>
                <td width="27%"> 
                  <select name="asBuiltsScannedIntoJds" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${asBuiltsScannedIntoJds}" == "No">
                      <option selected>No</option> 
                    <#else>
                      <option>No</option> 
                    </#if>       
                    <#if "${asBuiltsScannedIntoJds}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>  
                    <option>Job not in JDS</option>
                    <option>Placed per print, As-builts not required</option>
                  </select>       
                </td>
                <td width="23%"> 
                  <label for="stage3RouteInJds" 
                    class="longRequiredlabel">Stage 3 route in JDS:</label>
                </td>
                <td width="27%"> 
                  <select name="stage3RouteInJds" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${stage3RouteInJds}" == "Completed">
                      <option selected>Completed</option> 
                    <#else>
                      <option>Completed</option> 
                    </#if>  
                    <#if "${stage3RouteInJds}" == "Job not in OSP-FM">
                      <option selected>Job not in JDS</option> 
                    <#else>
                      <option>Job not in JDS</option> 
                    </#if>   
                  </select>       
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="23%">                
                  <label for="correctedActualAmtsInCprTab" 
                     class="longRequiredlabel">Corrected Amounts in CPR Tab:</label>
                </td>
                <td width="27%"> 
                  <select name="correctedActualAmtsInCprTab" class="mediumtextbox" size=1 >
                    <option></option> 
                    <option>Return to Engineer</option>
                    <#if "${correctedActualAmtsInCprTab}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>  
                    <#if "${correctedActualAmtsInCprTab}" == "No CPR">
                      <option selected>No CPR</option> 
                    <#else>
                      <option>No CPR</option> 
                    </#if>        
                  </select>       
                </td>
                <td width="23%"> 
                  <label for="stage4RouteInJds" 
                    class="longRequiredlabel">Stage 4 route in JDS:</label>
                </td>
                <td width="27%"> 
                  <select name="stage4RouteInJds" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${stage4RouteInJds}" == "Completed">
                      <option selected>Completed</option> 
                    <#else>
                      <option>Completed</option> 
                    </#if>  
                    <#if "${stage4RouteInJds}" == "Job not in JDS">
                      <option selected>Job not in JDS</option> 
                    <#else>
                      <option>Job not in JDS</option> 
                    </#if>  
                  </select>       
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="23%">                
                  <label for="reduceAmtsInCprTab" 
                  class="longRequiredlabel">Reduce Amts in CPR Tab:</label>
                </td>
                <td width="27%"> 
                  <select name="reduceAmtsInCprTab" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${correctMinemonks}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>  
                    <option>CPR Reduced not Required</option> 
                    <option>CPR Reduction Complete</option>      
                  </select>       
                </td>
                <td width="23%"> 
                  <label for="name" 
                    class="longRequiredlabel">Date of Final Contractor Time Charge:</label>
                </td>
                <td width="27%"> 
                  <input name="finalContractorChargeDate" type="text" 
                     class="mediumtextbox" id="finalContractorChargeDate"
                     value="${formatDate(finalContractorChargeDate)}" />   
                </td>	
              </tr>                    
              <tr align="left" valign="top">
                <td width="23%">                
                  <label for="name" 
                    class="longRequiredlabel">Retirements Entered or N/A Activated:</label>
                </td>
                <td width="27%"> 
                  <select name="retirementsEntered" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${retirementsEntered}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>   
                  </select>       
                </td>
                <td width="23%"> 
                  <label for="followUpPhase3" 
                         class="longRequiredlabel">Follow Up Phase 3:</label>
                </td>
                <td width="27%"> 
                  <input name="followUpPhase3" type="text" class="mediumtextbox"
                         id="followUpPhase3" value="" />   
                </td>	
              </tr>                 
              <tr align="left" valign="top">
                <td width="23%">                
                  <label for="zeroCloseAction" class="longlabel">Zero Close Action:</label>
                </td>
                <td width="27%"> 
                  <select name="zeroCloseAction" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${zeroCloseAction}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>  
                    <option>No - Does not meet zero close requirements</option>           
                    <option>IPTV</option>        
                  </select>       
                </td>
                <td width="23%"> 
                </td>
                <td width="27%"> 
                </td>	
              </tr>      
              <tr align="left" valign="top">
                <td width="23%">                
                  <label for="supApprovalAction" 
                    class="longlabel">Sup Approval Action:</label>
                </td>
                <td width="27%"> 
                  <select name="supApprovalAction" class="mediumtextbox" size=1 >
                    <option></option> 
                    <#if "${supApprovalAction}" == "Approved">
                      <option selected>Approved</option> 
                    <#else>
                      <option>Approved</option> 
                    </#if>  
                    <#if "${supApprovalAction}" == "Unapproved">
                      <option selected>Unapproved</option> 
                    <#else>
                      <option>Unapproved</option> 
                    </#if>        
                  </select>       
                </td>
                <td width="23%"> 
                </td>
                <td width="27%"> 
                  <button name="sendToEngBtn" type="button" 
                    class="buttons">Send to Eng to Zero Close</button>
                </td>	
              </tr>                       
              <tr align="left" valign="top">
                <td> 
                  <button name="addNoteBtn" type="button" 
                    class="fixedsizebuttons">Add Note</button>
                </td>
                <td colspan=3> 
                  <textarea id="note" rows=4 class="textarea" readonly>${note}-Test Notes-
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

