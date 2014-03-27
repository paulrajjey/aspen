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
    
        myInputs[i] = document.getElementById("followUpPhase1");
        i++;
        
        ${followUpPhase1} = document.getElementById("followUpPhase1");
        alert("Phase1Work:: followUpPhase1='" + ${followUpPhase1} + "'");  
        alert("Phase1Work:: dom.followUpPhase1='" +
              document.getElementById("followUpPhase1") + "'");  

        myInputs[i] = document.getElementById("note");
        i++;
    
        myInputs[i] = document.getElementById("followUpPhase2");
        i++;
    
        myInputs[i] = document.getElementById("followUpPhase3");
        i++;
    
        myInputs[i] = document.getElementById("pmNotes");
        i++;
						
		var j=0;

        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid workDataMap");
            myInputs[j].focus();
            return false;
        }	
        j++;
				
        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid followUpPhase1");
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
            alert("Please enter valid followUpPhase2");
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
            alert("Please enter valid pmNotes");
            myInputs[j].focus();
            return false;
        }	
        j++;
				
		return true;
	}
</script>
<style type="text/css">
	#container
	{
		margin: 0 auto;
		width: 780px;
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
		width:175px;
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
		width:400px;
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
		#color: #999999;
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
      CMC Workflow: Phase 1 Work
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
          
      <#assign myTecodDate = dateTecod?date>
      <#if workPhysicallyCompletedDate??>
         <#assign myWpcDate = mmddyy.format(workPhysicallyCompletedDate)>
      <#else> 
         <#assign myWpcDate = "">
      </#if>
        
	  <table>  
      <tr align="left" valign="top">
       <td width="45%">
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
                 <label for="assignedPhase1">Assigned Name:</label>
                </td>
                <td width="65%"> 
                 <input name="assignedPhase1" type="text" class="div_mediumreadonly" 
                    id="assignedPhase1" readonly value="${assignedPhase1}" />
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
                  <label for="projDesc">Description:</label>
                </td>
                <td width="65%">              
                  <input name="projDesc" type="text" class="div_mediumreadonly" 
                    id="projDesc" readonly value="${projDesc}" /> 
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="35%">        
                  <label for="tecodDate">Date Teco'd:</label>          
                </td>
                <td width="65%">   
                  <input name="tecodDate" type="text" class="div_mediumreadonly" 
                    id="tecodDate" readonly value="${formatDate(dateTecod)}" /> 
                  <!--
                  <input name="tecodDate" type="text" class="div_mediumreadonly" 
                    id="tecodDate" readonly value="${myTecodDate?string('MM/dd/yyyy')}" /> 
                  -->
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
                  <label for="respPersonSupervior">Resp Sup:</label>
                </td>
                <td width="65%">    
                  <input name="respPersonSupervior" type="text" class="div_mediumreadonly" 
                    id="respPersonSupervior" readonly 
                    value="${respPersonSupervior}" />               
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
                  <label for="name">Team:</label>
                </td>
                <td width="65%">   
                  <input name="team" type="text" class="div_mediumreadonly" 
                    id="team" readonly value="${team}" />
                </td>	
              </tr>
            </table>
            <div class="clear"></div>
          </fieldset>
        </td>
        <td width="55%">
          <fieldset>
            <legend>Populate These Fields to Move to Phase 2</legend>
            <form action="complete" method="POST" enctype="multipart/form-data" 
                  onsubmit="return taskFormValidator()">  

            <table>  
              <tr>
                <td width="50%">            
                  <label for="workPhysicallyComplete" 
                    class="longRequiredlabel">Work Physically Complete:</label>
                </td>
                <td width="50%"> 
                  <select name="workPhysicallyComplete" class="shorttextbox" size=1 >
                    <option></option> 
                    <#if "${workPhysicallyComplete}" == "Yes">
                      <option selected>Yes</option> 
                    <#else>
                      <option>Yes</option> 
                    </#if>  
                    <#if "${workPhysicallyComplete}" == "No">
                      <option selected>No</option> 
                    <#else>
                      <option>No</option> 
                    </#if>        
                  </select>
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="50%"> 
                  <label for="workPhysicallyCompletedDate" 
                    class="longRequiredlabel">Work Physically Completed Date:</label>
                </td>
                <td width="50%"> 
                <input name="workPhysicallyCompletedDate" type="text" 
                  class="shorttextbox" id="workPhysicallyCompletedDate"
                  value="${formatDate(workPhysicallyCompletedDate)}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="50%"> 
                  <label for="followUpPhase1" class="longRequiredlabel">Follow Up Phase 1:</label>
                </td>
                <td width="50%"> 
                  <input name="followUpPhase1" type="text" class="shorttextbox" 
                    id="followUpPhase1" value="${currentDate}" />
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="50%"> 
                  <label for="ospWorkOrdersFinalCupped" 
                    class="longRequiredlabel">OSP Work Orders Final Cupped:</label>
                </td>
                <td width="50%"> 
                <select name="ospWorkOrdersFinalCupped" class="shorttextbox" size=1 >
                  <option></option> 
                  <option>No</option> 
                  <option>Yes</option> 
                  <option>Job does not have an OSP work order</option>         
                </select>
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="50%"> 
                  <label for="purchaseOrdersClosed" 
                    class="longRequiredlabel">Purchase Orders Closed:</label>
                </td>
                <td width="50%"> 
                <select name="purchaseOrdersClosed" class="shorttextbox" size=1 >
                  <option></option> 
                  <option>No</option> 
                  <option>Yes</option> 
                  <option>PO does not exist for project</option>                 
                </select>
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="50%"> 
                  <label for="unteco" class="longlabel">Unteco:</label>
                </td>
                <td width="50%" class="checkbox" > 
                  <input type="radio" name="unteco" id="noUnteco" value="No" checked>No
                  <input type="radio" name="unteco" id="yesUnteco" value="Yes">Yes
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td width="50%"> 
                  <label for="reteco" class="longlabel">Reteco:</label>
                </td>
                <td width="50%" class="checkbox" > 
                  <input type="radio" name="reteco" id="noReteco" value="No" checked>No
                  <input type="radio" name="reteco" id="yesReteco" value="Yes">Yes
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td colspan=2> 
                <div class="left_align_button_div">
                  <button name="addNoteBtn" type="button" 
                    class="fixedsizebuttons">Add Note</button>
                </div>
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td colspan=2> 
                <textarea id="note" rows=4 class="textarea" readonly>${note}-Test Notes-
                </textarea>
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td colspan=2> 
                <div class="right_align_button_div">
                  <input name="saveBtn" type="button" value="Save" class="fixedsizebuttons" />
                  <input name="submitBtn" type="submit" value="Submit" class="fixedsizebuttons" />
                  <input name="cancelBtn" type="button" value="Cancel" class="fixedsizebuttons" />
                </div>
                </td>	
              </tr>
            </table>
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
