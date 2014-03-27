<html>
<head>
<meta charset="utf-8">
</head>
<body>
  
<#-- Create constructor object -->
<#assign objectConstructor = "freemarker.template.utility.ObjectConstructor"?new()>
<#-- Call formatter constructor -->
<#assign mmddyy = objectConstructor("java.text.SimpleDateFormat","MM/dd/yyyy")>
<#function formatDate1 dt="">
 <#if dt??>
   <#return mmddyy.format(dt)>
 <#else>
   <#return "">
 </#if>
</#function>

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

        myInputs[i] = document.getElementById("currentPhase");
        i++;
    
        myInputs[i] = document.getElementById("returnToPhase1");
        i++;
    
        myInputs[i] = document.getElementById("returnToEng");
        i++;
    
        myInputs[i] = document.getElementById("followUpPhase1");
        i++;
    
        myInputs[i] = document.getElementById("followUpPhase2");
        i++;
    
        myInputs[i] = document.getElementById("followUpPhase3");
        i++;
    
        myInputs[i] = document.getElementById("note");
        i++;
    
        myInputs[i] = document.getElementById("pmNotes");
        i++;
				
		
		var j=0;

        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid currentPhase");
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
            alert("Please enter valid followUpPhase1");
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
            alert("Please enter valid note");
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
		width: 720px;
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
		width:110px;
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
    .requiredlabel {
		width:100px;
		height:22px;
		margin-top:3px;
		margin-right:2px;
		padding-top:4px;
		padding-left:3px;
		#background-color:#CCCCCC;
		float:left;
		display: block;
        font:normal 11px Arial;
        font-weight: bold;
		#font-family:Arial, Helvetica, sans-serif;
		#font-size: 80%;
        #font-weight: normal;
		#letter-spacing: -0.5px;
		#line-height: 1.1;
		color:#000000;
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
		width:120px;
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
    .extralonglabel {
		width:700px;
		height:22px;   
        font:normal 11px Arial;
		float:left;
        display: block;
		background-color:#E6E6E6;
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
		width:120px;
		font:normal 12px Arial;
		#color: #999999;
		padding:2px 2px 2px 2px;
	}
    .mediumtextbox {
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
		width:240px;
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
		New Process Instance: com.ctl.aspen.cmcwf.cmcwf
	</div>
    <div id="search_div">
    <fieldset>
        <legend>Enter a FW Project ID to retrieve the details from the FW database</legend>
        <table width=600>
            <tr align="left" valign="top">
                <td width="20%">
                    <label for="name" class="requiredlabel">FW Project Id:</label>
                </td>
                <td width="40%">
                    <input name="inProjectId" type="text" class="shorttextbox" 
                      id="inProjectId" value="" />
                </td>          
                <td width="40%">
                    <input name="Search" type="button" value="Search" class="fixedsizebuttons" />
                </td>
            </tr>
            <tr align="left" valign="top">
                <td colspan=3>
                    <label for="searchMsg" class="label">Message:</label>
                </td>
            </tr>
            <tr align="left" valign="top">
                <td colspan=3>
                    <input name="searchMsg" id="searchMsg" type="text" 
                      class="extralonglabel" value="" />
                </td>
            </tr>
        </table>
    </fieldset>
    </div>
	<div id="content">
    <fieldset>
        <legend>FW Project Information</legend>
        <form action="complete" method="POST" enctype="multipart/form-data" 
              onsubmit="return taskFormValidator()">
        <table>  
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="projectId" class="longlabel">Project Id:</label>
                </td>
                <td width="33%"> 
                    <input name="projectId" type="text" class="longtextbox" 
                      id="projectId" value="" />
                </td>
                <td width="17%"> 
                    <label for="actualsVerifiedDate" 
                      class="longlabel">Actuals Verified Date:</label>
                </td>
                <td width="33%"> 
                   <input name="actualsVerifiedDate" type="text" 
                      class="longtextbox" id="actualsVerifiedDate"
                      value="${formatDate(actualsVerifiedDate)}" />
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="region" class="longlabel">Region:</label>
                </td>
                <td width="33%"> 
                   <input name="region" type="text" class="longtextbox" 
                      id="region" value="" />
                </td>
                <td width="17%"> 
                    <label for="exchange" class="longlabel">Exchange:</label>
                </td>
                <td width="33%"> 
                   <input name="exchange" type="text" class="longtextbox" 
                      id="exchange" value="" />
                </td>	
            </tr>

            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="stateCode" class="longlabel">State:</label>
                </td>
                <td width="33%"> 
                   <input name="stateCode" type="text" class="longtextbox"
                      id="stateCode" value="" />
                </td>
                <td width="17%"> 
                    <label for="dateAdded" class="longlabel">Date Added:</label>
                </td>
                <td width="33%"> 
                   <input name="dateAdded" type="text" class="longtextbox"
                      id="dateAdded" value="${formatDate(dateAdded)}" />
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="company" class="longlabel">Company:</label>
                </td>
                <td width="33%"> 
                   <input name="company" type="text" class="longtextbox"
                      id="company" value="" />
                </td>	
                <td width="17%"> 
                    <label for="jointUse" class="longlabel">Joint Use:</label>
                </td>
                <td width="33%"> 
                   <input name="jointUse" type="text" class="longtextbox"
                      id="jointUse" value="" />
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="projDesc" class="longlabel">Description:</label>
                </td>
                <td width="33%"> 
                   <input name="projDesc" type="text" class="longtextbox"
                      id="projDesc" value="" />
                </td>
                <td width="17%"> 
                    <label for="aidToConstruction"
                      class="longlabel">Aid To Construction:</label>
                </td>
                <td width="33%"> 
                   <input name="aidToConstruction" type="text"
                      class="longtextbox" id="aidToConstruction" value="" />
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="dateTecod" class="longlabel">Date Tecod:</label>
                </td>
                <td width="33%"> 
                   <input name="dateTecod" type="text" class="longtextbox" 
                      id="dateTecod" value="${formatDate(dateTecod)}" />
                </td>
                <td width="17%"> 
                    <label for="constrCoord" class="longlabel">Constr Coord:</label>
                </td>
                <td width="33%"> 
                   <input name="constrCoord" type="text" class="longtextbox" 
                      id="constrCoord" value="" />
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="responsiblePerson" class="longlabel">Responsible Person:</label>
                </td>
                <td width="33%"> 
                   <input name="responsiblePerson" type="text" 
                      class="longtextbox" id="responsiblePerson" value="" />
                </td>
                <td width="17%"> 
                    <label for="constrCoordEmail" 
                      class="longlabel">Constr Coord Email:</label>
                </td>
                <td width="33%"> 
                   <input name="constrCoordEmail" type="text" 
                      class="longtextbox" id="constrCoordEmail" value="" />
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="responsiblePersonEmail" 
                      class="longlabel">Resp Person Email:</label>
                </td>
                <td width="33%"> 
                   <input name="responsiblePersonEmail" type="text" 
                      class="longtextbox" id="responsiblePersonEmail" value="" />
                </td>
                <td width="17%"> 
                    <label for="currentPhase" class="longlabel">Current Phase:</label>
                </td>
                <td width="33%"> 
                   <input name="currentPhase" type="text" class="div_shortreadonly" 
                      id="currentPhase" value="" />
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="tecoUser" class="longlabel">Teco User:</label>
                </td>
                <td width="33%"> 
                   <input name="tecoUser" type="text" class="longtextbox" 
                      id="tecoUser" value="" />
                </td>	
                <td width="17%"> 
                    <label for="assignedPhase1" class="longlabel">Assigned Phase 1:</label>
                </td>
                <td width="33%"> 
                  <select name="assignedPhase1" class="mediumtextbox" size=1 >
                    <option></option> 
                    <option>Barb Miller</option> 
                    <option>Brenda Martinez</option>
                    <option>Cecilia Bell</option> 
                    <option>Cheryl Rivera</option>                   
                    <option>Chris Lewis</option> 
                    <option>Chuck Ingram</option> 
                    <option>Darrell Banks</option>
                    <option>Debra Goetz</option> 
                    <option>Denise Marcouillier</option>                   
                    <option>Edie Bell</option> 
                    <option>Georgene Barker</option>
                    <option>Larry Quezada</option>
                    <option>Lisa Renfree</option>
                    <option>Lola Miketa</option>
                    <option>Louis Morton</option>
                    <option>Lynn Ellis</option>
                    <option>Marcie Betts</option>
                    <option>Mark Conte</option>
                    <option>Mary Alhaj</option>
                    <option>Michelle Martinez</option>
                    <option>Mike Hart</option>
                    <option>Nate Kardaseski</option>
                    <option>Paul Beauchaine</option>
                    <option>Rosalie Dillingham</option>
                    <option>Sandra Trujillo</option>
                    <option>Terri Perkins</option>
                    <option>Wava Johnson</option>
                  </select>
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="tecoUserSupervisor" 
                      class="longlabel">Teco User Supervisor:</label>
                </td>
                <td width="33%"> 
                   <input name="tecoUserSupervisor" type="text"
                      class="longtextbox" id="tecoUserSupervisor" value="" />
                </td>	
                <td width="17%"> 
                    <label for="assignedPhase2" class="longlabel">Assigned Phase 2:</label>
                </td>
                <td width="33%"> 
                  <select name="assignedPhase2" class="mediumtextbox" size=1 >
                    <option></option> 
                    <option>Angel Perea</option> 
                    <option>Bob Karinen</option>
                    <option>Clyde Nowels</option> 
                    <option>Corie Trujillo</option>                   
                    <option>Cyndi Rivers</option> 
                    <option>Danny Romero</option>
                    <option>Dorothy Martinez</option>
                    <option>Ed Laibl</option>
                    <option>Jack Hightower</option>
                    <option>Jacque Darnell</option>
                    <option>Jarrod Kelsey</option>
                    <option>Jeanette Wickstrom</option>
                    <option>Jon Laibl</option>
                    <option>Joshua Massey</option>
                    <option>Linda Petersen</option>
                    <option>Melissa Shenton</option>
                    <option>Noel Navarrete</option>
                    <option>Paul Moreno</option>
                    <option>Rhonda Kellogg</option>
                    <option>Robert Matson</option>
                    <option>Roger Smith</option>
                    <option>Tom Sanders</option>
                    <option>Travis Cherrington</option>
                    <option>Vince Gabrielsen</option>
                  </select>
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="team" class="longlabel">Team:</label>
                </td>
                <td width="33%"> 
                   <input name="team" type="text" class="longtextbox"
                      id="team" value="" />
                </td>	
                <td width="17%"> 
                    <label for="assignedPhase3" class="longlabel">Assigned Phase 3:</label>
                </td>
                <td width="33%"> 
                  <select name="assignedPhase3" class="mediumtextbox" size=1 >
                    <option></option> 
                    <option>Barb Miller</option> 
                    <option>Brenda Martinez</option>
                    <option>Cecilia Bell</option> 
                    <option>Cheryl Rivera</option>                   
                    <option>Chris Lewis</option> 
                    <option>Chuck Ingram</option> 
                    <option>Darrell Banks</option>
                    <option>Debra Goetz</option> 
                    <option>Denise Marcouillier</option>                   
                    <option>Edie Bell</option> 
                    <option>Georgene Barker</option>
                    <option>Larry Quezada</option>
                    <option>Lisa Renfree</option>
                    <option>Lola Miketa</option>
                    <option>Louis Morton</option>
                    <option>Lynn Ellis</option>
                    <option>Marcie Betts</option>
                    <option>Mark Conte</option>
                    <option>Mary Alhaj</option>
                    <option>Michelle Martinez</option>
                    <option>Mike Hart</option>
                    <option>Nate Kardaseski</option>
                    <option>Paul Beauchaine</option>
                    <option>Rosalie Dillingham</option>
                    <option>Sandra Trujillo</option>
                    <option>Terri Perkins</option>
                    <option>Wava Johnson</option>
                  </select>
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td width="17%"> 
                    <label for="teamResp" class="longlabel">Team Resp:</label>
                </td>
                <td width="33%"> 
                   <input name="teamResp" type="text" class="longtextbox" 
                      id="teamResp" value="" />
                </td>	
                <td width="17%">                     
                </td>
                <td width="33%">                  
                </td>	
            </tr>
            <tr align="left" valign="top">
                <td colspan=4> 
                <div class="button_div">
                    <input name="Submit" type="submit" value="Submit" 
                      class="fixedsizebuttons" />
                </div>  
                </td>	
            </tr>
        </table>
        </form>
        <div class="clear"></div>
    </fieldset>
	</div>
	<div id="footer">
	</div>
</div>
</body>
</html>
