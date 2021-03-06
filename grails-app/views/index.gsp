<html>
    <head>
    
    <g:javascript plugin="jquery" library="jquery" />
   <g:javascript library="application" />
   <jqui:resources />
   <g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />
   
        <meta name="layout" content="main"/>
        
        <h1 style="font-size:52px;text-align:center;text-shadow:5px 5px 8px #7F7F7F;color:#228B22">Compunetics</h1>
        <h2 style="font-style:italic;font-size:20px;text-align:center">excellence, measured in microns.</h2>
        
        
        <style type="text/css" media="screen">
	
		body{
		    background-image: url(images/pcb3.aspx);
		 	background-repeat:repeat-y;
		 	}
	
        #pageBody {
        	margin-top:70px;
            margin-left:17%;
            margin-right:17%;
        }
        
       
		div.job {
			width:30%;
			padding:10px;
			border-color:#DBDBDB;
			border-width:6px;	
            border-style:inset;
			margin:0px;
			text-align:center;
			border-radius:13px;
			background-color:#F7F7F7;
		}
		
        </style>
               
    </head>
    <body>

     <div align = "center" style="font-size:100px;background-color:red">
        <g:if test="${flash.message }">
        ${flash.message }
        </g:if>
    </div>
     <div>
            <g:link controller="job" action ="engineering" style="color:#228B22;text-transform:capitalize">Engineering</g:link>
        </div>
        
        <jque:newDialog controller='job' action="reCreate" ajax="false" id='redoJob' title="Search for Existing Jobs" success="s_div2" width="600">
    <jque:dialogField name="partnumber" value="" />
    </jque:newDialog>
    
    <jque:newDialog controller='job' action="crossSections" ajax="false" id='crossSections' title="Cross Sections" success="s_div2" width="600">
    <jque:dialogField name="workOrder" value="" />
    </jque:newDialog>
    
    <jque:newDialog controller='machineVariable' action="chartChoice" ajax="false" id='chartChoice' title="Pick a Chart" success="s_div2" width="600">
    <jque:dialogField name="chartName" value="" type="select" from="${['Goldroom Temperatures','LDI Air Quality','Innerlayer first pass yield','Soldermask Room Air Quality','Innerlayer before etch flaws/side','Post Etch Punch','Pluritec','Labor Graph','AOI Time'] }" />
    </jque:newDialog>
      
      <jque:newDialog controller='job' action="processTime" ajax="false" id='startButton' title="Process Time" success="s_div2" width="600">
    <jque:dialogField name="workOrder" value="" />
    <jque:dialogField name="processName" value="" type="select" from="${['AOI Inner Before Etch','Touch Up Inners','AOI Inner After Etch','Repair Inners','AOI outer before pattern','AOI outer final','Repair outers'] }" />
    <jque:checkBoxField name="start" type="checkbox" labelName="Start Button"  checked="${false}"/>
    <jque:checkBoxField name="stop" type="checkbox" labelName="Stop Button"  checked="${false}"/>
    <jque:checkBoxField name="edit" type="checkbox" labelName="Edit Button"  checked="${false}"/>
    </jque:newDialog>
    
     <jque:newDialog controller='job' action="closeJob" ajax="false" id='closeJob' title="Close Job" success="s_div2" width="600">
    <jque:dialogField name="workOrder" value="" />
    <jque:checkBoxField name="closeJob" type="checkbox" labelName="Close Job"  checked="${false}"/>
    </jque:newDialog>    
               
    <jque:newDialog controller='job' action="showMilestones" ajax="false" id='showMilestones' title="Show Job Milestones" success="s_div2" width="600">
    <jque:dialogField name="workOrder" value="" />
    </jque:newDialog>  
    
    <jque:newDialog controller='job' action="addMilestones" ajax="false" id='addMilestones' title="Add Job Milestones" success="s_div2" width="600">
    <jque:dialogField name="workOrder" value="" />
    </jque:newDialog>         
               
        <div id="pageBody">
        
        <ul style="font-size:15px">
        		<div class="job" style = "float:left">
                	 <g:link controller="job" style="color:#228B22;text-transform:capitalize">list of current jobs</g:link>
               </div> 
               <div class="job" style = "float:right"> 
                	 <g:link controller="job" action="create" style="color:#228B22;text-transform:capitalize">create a job</g:link>
               </div>
               <div style="height:60px"></div>
               <div class="job" style = "float:left"> 
                   	 <g:link controller="machine" action="addJobDataList" style="color:#228B22;text-transform:capitalize">Add Job Data</g:link>
               </div>
               <div class="job" style = "float:right"> 
                	 <g:link controller="finishedjobs" style="color:#228B22;text-transform:capitalize">job archive</g:link>
               </div>
				<div style="height:60px"></div>
				 <div class="job" style = "float:left"> 
                   	 <jque:newShowDialog buttonCaption="Create a Redo Job" dialogId="redoJob" />
               </div>
               <div class="job" style = "float:right"> 
                   	 <g:link controller="machine" action="addMachineDataList" style="color:#228B22;text-transform:capitalize">Add Machine Data</g:link>
               </div>
               <div style="height:60px"></div>
                <div class="job" style = "float:left"> 
                   	 <g:link controller="machine" action="list" style="color:#228B22;text-transform:capitalize">List of machines</g:link>
               </div>
               <div class="job" style = "float:right"> 
                   	 <g:link controller="maintenanceOnMachines" action="create" style="color:#228B22;text-transform:capitalize">Maintenance Time</g:link>
               </div>
              <div style="height:60px"></div>
          <!--      <div class="job" style = "float:left"> 
                   	 <g:link controller="bottomsUp" action="create" style="color:#228B22;text-transform:capitalize">Create a quote</g:link>
               </div> -->
                <div class="job" style = "float:left"> 
                   	 <jque:newShowDialog buttonCaption="Cross Sections" dialogId="crossSections" />
               </div>
               <div class="job" style = "float:right"> 
                   	 <jque:newShowDialog buttonCaption="Charts" dialogId="chartChoice" />
               </div>
               <div style="height:60px"></div>
              <div class="job" style = "float:left"> 
                   	 <jque:newShowDialog buttonCaption="Time Tracker" dialogId="startButton" />
               </div>
              <div class="job" style = "float:right"> 
                   	 <jque:newShowDialog buttonCaption="Close Job" dialogId="closeJob" />
               </div>  
               <div style="height:60px"></div>             
       <!--        <div class="job" style = "float:left"> 
                   	 <g:link controller="prePregPartNumber" action="create" style="color:#228B22;text-transform:capitalize">Add Pre-preg Part Number</g:link>
               </div>
               <div class="job" style = "float:right"> 
                   	 <g:link controller="material" action="create" style="color:#228B22;text-transform:capitalize">Add Pre-preg Material</g:link>
               </div>
               <div style="height:60px"></div>  -->
               <div class="job" style = "float:left; width:98%;">
                	 <g:link controller="process" style="color:#228B22;text-transform:capitalize">Production</g:link>
               </div>
               <div class="job" style = "float:left; width:98%;">
                	 <g:link controller="process" action="jakevue" style="color:#228B22;text-transform:capitalize">Manager</g:link>
               </div>
               <div class="job" style = "float:left"> 
                   	 <jque:newShowDialog buttonCaption="Add Job Milestones" dialogId="addMilestones" />
               </div>
                <div class="job" style = "float:right"> 
                   	 <jque:newShowDialog buttonCaption="Show Job Milestones" dialogId="showMilestones" />
               </div>
               <div style="height:60px"></div>
               <div class="job" style = "float:left"> 
                   	 <g:link controller="job" action="weeklyList" style="color:#228B22;text-transform:capitalize">Weekly Production</g:link>
             	</div> 
               
               </ul>
        </div>
    
    </body>
</html>
