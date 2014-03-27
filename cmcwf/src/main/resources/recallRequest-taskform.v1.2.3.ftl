<html>
<head>
<meta charset="utf-8">
</head>
<body>
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
    
        myInputs[i] = document.getElementById("currentPhase");
        i++;
    
        myInputs[i] = document.getElementById("pmNotes");
        i++;
    
        myInputs[i] = document.getElementById("note");
        i++;
    
		
		var j=0;

        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid workDataMap");
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
    
        if(notEmpty(myInputs[j]) && !isAlphanumeric(myInputs[j])) {
            alert("Please enter valid pmNotes");
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
				
		return true;
	}
</script>
  
<style type="text/css">
	#container
	{
		margin: 0 auto;
		width: 650px;
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
    .requiredlabel {
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
    .div_veryshortreadonly {
		width:40px;
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
		width:200px;
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
		CMC Workflow: Recall Request
	</div>
	<div id="content">
		<fieldset>
          <legend>Task Info</legend>
          <table width=500>
            <tr align="left" valign="top">
              <td width="14%">
                <label for="name" class="label">Process Instance ID:</label>
              </td>
              <td width="8%">
                <div class="div_veryshortreadonly"></div>
              </td>
              <td width="14%">
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
  
    <table>  
    <tr align="left" valign="top">
      <td width="50%">
		<fieldset>
          <legend>Project Info</legend>
          <table>  
            <tr align="left" valign="top">
              <td width="40%">  
               <label for="projectId">Project ID:</label>
              </td>
              <td width="60%"> 
                <input name="projectId" type="text" class="div_mediumreadonly" 
                  readonly value="${projectId}" />
              </td>	
            </tr>    
            <tr align="left" valign="top">
              <td width="40%">  
               <label for="currentPhase">Current Phase:</label>
              </td>
              <td width="60%"> 
               <input name="currentPhase" type="text" class="div_mediumreadonly" 
                  readonly value="${currentPhase}" />
              </td>	
            </tr>
            <tr align="left" valign="top">
              <td width="40%">  
               <label for="inAssignedPhase1">Assigned Phase 1:</label>
              </td>
              <td width="60%"> 
               <input name="inAssignedPhase1" type="text" class="div_mediumreadonly" 
                  readonly value="${assignedPhase1}" />
              </td>	
            </tr>
            <tr align="left" valign="top">
              <td width="40%">  
               <label for="inFollowUpPhase1">Follow Up Phase 1:</label>
              </td>
              <td width="60%"> 
               <input name="inFollowUpPhase1" type="text" class="div_mediumreadonly" 
                  readonly value="${followUpPhase1}" />
              </td>	
            </tr>
            <tr align="left" valign="top">
              <td width="40%">  
               <label for="inAssignedPhase2">Assigned Phase 2:</label>
              </td>
              <td width="60%"> 
               <input name="inAssignedPhase2" type="text" class="div_mediumreadonly" 
                  readonly value="${assignedPhase2}" />
              </td>	
            </tr>
            <tr align="left" valign="top">
              <td width="40%">  
               <label for="inFollowUpPhase2">Follow Up Phase 2:</label>
              </td>
              <td width="60%"> 
               <input name="inFollowUpPhase2" type="text" class="div_mediumreadonly" 
                  readonly value="${followUpPhase2}" />
              </td>	
            </tr>
            <tr align="left" valign="top">
              <td width="40%">  
               <label for="inAssignedPhase3">Assigned Phase 3:</label>
              </td>
              <td width="60%"> 
               <input name="inAssignedPhase3" type="text" class="div_mediumreadonly" 
                  readonly value="${assignedPhase3}" />
              </td>	
            </tr>
            <tr align="left" valign="top">
              <td width="40%">  
               <label for="inFollowUpPhase3">Follow Up Phase 3:</label>
              </td>
              <td width="60%"> 
               <input name="inFollowUpPhase3" type="text" class="div_mediumreadonly" 
                  readonly value="${followUpPhase3}" />
              </td>	
            </tr>

          </table>
          <div class="clear"></div>
        </fieldset>
      </td>
      <td width="50%">         
        <fieldset>
          <legend>Populate These Fields to Recall a Phase</legend>
          <form action="complete" method="POST" enctype="multipart/form-data" 
                onsubmit="return taskFormValidator()">
            <table>    
              <tr align="left" valign="top">
                <td width="40%">  
                 <label for="recallAction" class="requiredlabel">Recall Action:</label>
                </td>
                <td width="60%"> 
                  <menu name="recallAction" class="mediumtextbox" size=1 >
                    <input type="radio" name="racallAction" value="No" CHECKED>No<br/>
                    <input type="radio" name="racallAction" 
                      value="End Follow Up Phase 1 Wait">End Follow Up Phase 1 Wait<br/>
                    <input type="radio" name="racallAction" 
                      name="End Follow Up Phase 2 Wait">End Follow Up Phase 2 Wait<br/>
                    <input type="radio" name="racallAction" 
                      value="End Follow Up Phase 3 Wait">End Follow Up Phase 3 Wait<br/>
                    <input type="radio" name="racallAction" DISABLED=true
                      value="Change Back To Phase 1">Change Back To Phase 1<br/> 
                  </menu>
              </tr>

              <tr align="left" valign="top">
                <td width="40%">  
                 <label for="assignedPhase1" class="label">Assigned Phase 1:</label>
                </td>
                <td width="60%"> 
                  <select name="assignedPhase1" class="mediumtextbox" size=1 >
                    <option></option> 
                    <option>Brenda Martinez</option> 
                    <option>Cecilia Bell</option>
                    <option>Darrell Banks</option> 
                    <option>Mary Alhaj</option>                   
                    <option>Michelle Martinez</option>     
                  </select>
              </tr>
              <tr align="left" valign="top">
                <td width="40%">  
                 <label for="phase1Cuid" class="label">Phase1 Cuid:</label>
                </td>
                <td width="60%"> 
                 <input name="phase1Cuid" type="text" class="div_mediumreadonly" 
                    id="phase1Cuid" readonly value="${phase1Cuid}" />
                </td>	
              </tr>     
              <tr align="left" valign="top">
                <td colspan=2> 
                <div class="left_align_button_div">
                  <button name="addNoteBtn" type="button" 
                    class="buttons">Add Note</button>
                </div>
                </td>	
              </tr>
              <tr align="left" valign="top">
                <td colspan=2> 
                <textarea id="note" rows=4 class="textarea" readonly>${note}-Note Appended-
                </textarea>
                </td>	
              </tr>

              <tr align="left" valign="top">
                <td colspan=2> 
                <div class="right_align_button_div">
                  <!--
                  <input name="saveBtn" type="button" value="Save" class="fixedsizebuttons" />
                  -->
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
	<div id="footer">
	</div>
</div>
</body>
</html>
