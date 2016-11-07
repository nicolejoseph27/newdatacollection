
<%@ page import="magnetboard.Machine" %>
<html>
    <head>
    
   <g:javascript plugin="jquery" library="jquery" />
   <g:javascript library="application" />
   <jqui:resources />
   <g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'machine.label', default: 'Machine')}" />
        <h1 style="font-size:25px;text-align:center;text-shadow:5px 5px 8px #7F7F7F;color:#228B22">Job Data Machine List</h1>  
        
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
    
    <div id="pageBody">
   
        <div class="body">
         
            <jque:newDialog controller='job' action="PEP" ajax="false" id='PEP' title="PEP Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="mean" value="0" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Adrian Smith','Brian Emerschak','Ed Norcott','Jake Kurnot','Becky Brunner','Joe Pawlowski','Mark Husarik','Bob Gosliak','Cindy Stemmler','Beth Lang','Cliff Gray','Melissa Knight','Jesse Ward','Gerry Glatz','Oscar Curtis','Matt Shirey'] }"/>
    		</jque:newDialog> 
    		<!-- AOI Before Etch -->
    		<jque:newDialog controller='job' action="aoiBeforeEtch" ajax="false" id='aoibe' title="AOI Before Etch Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="noOfSignalLayers" value="0" />
    		<jque:dialogField name="minLine" value="0" />
    		<jque:dialogField name="minSpace" value="0" />
    		<jque:dialogField name="noOfOpens" value="0" />
    		<jque:dialogField name="noOfShorts" value="0" />
    		<jque:dialogField name="machineLightSource" value="" type="select" from="${['Camtek','Lloyd Doyle/Red'] }"/>
    		<jque:dialogField name="operator" value="" type="select" from="${['Adrian Smith','Brian Emerschak','Ed Norcott','Joe Pawlowski'] }"/>
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='job' action="aoiAfterEtch" ajax="false" id='aoiae' title="AOI After Etch Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="noOfPanelsScrap" value="0" />
    		<jque:dialogField name="noOfOpens" value="0" />
    		<jque:dialogField name="noOfShorts" value="0" />
    		<jque:dialogField name="machineLightSource" value="" type="select" from="${['Camtek','Lloyd Doyle/Red','Lloyd Doyle/Blue'] }"/>
    		<jque:dialogField name="operator" value="" type="select" from="${['Adrian Smith','Brian Emerschak','Ed Norcott','Joe Pawlowski'] }"/>
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='job' action="pluritec" ajax="false" id='pluritec' title="Pluritec Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="Xcomp" value="0" />
    		<jque:dialogField name="Ycomp" value="0" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Steve Baverso','Bob Atkinson','Ken Gulick','Jason Gale'] }"/>
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='job' action="dcplating" ajax="false" id='dcplating' title="DC Plating Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="cells" value="" />
    		<jque:dialogField name="dcRack" value="" />
    		<jque:dialogField name="areaTop" value="" />
    		<jque:dialogField name="areaBottom" value="" />
    		<jque:dialogField name="spec" value="" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Jason Persun','Frank Krznaric','Kim Stanley','Jake Kurnot','Cliff Gray'] }"/>
    		<jque:dialogField name="minCuDeposit" value="" />
    		<jque:dialogField name="maxCuDeposit" value="" />
    		<jque:dialogField name="asf" value="" />
    		<jque:dialogField name="totalCopperTime" value="" /> 
    		<jque:dialogField name="dcNotes" value="" />    		
    		</jque:newDialog>   
    		
    		<jque:newDialog controller='job' action="dcplatingSearch" ajax="false" id='searchDcplating' title="Search" success="s_div2" width="600">
    		<jque:dialogField name="jobName" value="" />
    		<jque:dialogField name="equipment" value="" type="select" from = "${['DC Plating/ Outer Layer Etch','HASL'] }" />
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='job' action="olEtch" ajax="false" id='oletch' title="Outer Layer Etch" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="twBefore" value="0" />
    		<jque:dialogField name="lineSpeed" value="0" />
    		<jque:dialogField name="cuThickness" value="0" />
    		<jque:checkBoxField name="splash" type="checkbox" labelName="Were the panels splashed"  checked="${false}" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Cliff Gray','Frank Krznaric','Kim Stanley','Jake Kurnot','Don Lang','Pete Sullivan','Oscar Curtis','Jason Persun'] }"/>
    		</jque:newDialog>  
    		
    		<jque:newDialog controller='job' action="tinStrip" ajax="false" id='tinstrip' title="Tin Strip Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="twAfter" value="0" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Cliff Gray','Frank Krznaric','Kim Stanley','Jake Kurnot','Don Lang','Pete Sullivan','Oscar Curtis','Jason Persun'] }"/>
    		</jque:newDialog>  

    		<jque:newDialog controller='job' action="hal" ajax="false" id='hal' title="HASL Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Frank Krznaric','Jason Persun','Cliff Gray','Oscar Curtis'] }"/>
    		<jque:dialogField name="bakeTime" value="" />
    		<jque:dialogField name="timeSinceLastBaked" value="" />		
    		<jque:dialogField name="airKnifeGap" value="" />	
    		<jque:checkBoxField name="doubleFlux" type="checkbox" labelName="Double Flux"  checked="${false}"/>
    		<jque:dialogField name="dwellTime" value="" />
    		<jque:checkBoxField name="doubleDip" type="checkbox" labelName="Double Dip"  checked="${false}"/>
    		<jque:dialogField name="airKnifePressureFront" value="" />
    		<jque:dialogField name="airKnifePressureRear" value="" />
    		<jque:dialogField name="withdrawalTurns" value="" />
    		<jque:checkBoxField name="goldFingers" type="checkbox" labelName="Gold Fingers"  checked="${false}"/>
    		<jque:checkBoxField name="coldPress" type="checkbox" labelName="Cold Press"  checked="${false}"/>
    		<jque:dialogField name="notes" value="" />   		
    		</jque:newDialog>
    
    		<jque:newDialog controller='job' action="ppgDeveloper" ajax="false" id='ppgDeveloper' title="PPG Developer" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
            <jque:dialogField name="operator" value="" type="select" from="${['Melissa Knight','Michele Crooks','Ed Norcott','Gerry Glatz','Jesse Ward','Jake Kurnot','Matt Dudik','Joe Pawlowski'] }"/>
            <jque:dialogField name="runSpeed" value="0" />
    		<jque:dialogField name="stepTab" value="0" />	
    		<jque:dialogField name="ppgNoOfPanels" value="0" />     
            </jque:newDialog>
            
            <jque:newDialog controller='job' action="ppgStripper" ajax="false" id='ppgStripper' title="PPG Stripper" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
            <jque:dialogField name="operator" value="" type="select" from="${['Gerry Glatz','Jesse Ward','Jake Kurnot','Frank Krznaric','Don Lang','Becky Brunner','Matt Dudik'] }"/>			
    		<jque:dialogField name="noOfPanels" value="0" />     
            </jque:newDialog>
            
            <jque:newDialog controller='job' action="aspectRatio" ajax="false" id='aspectRatio' title="aspectRatio" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
            <jque:dialogField name="thickness" value="0" />			
    		<jque:dialogField name="minHole" value="0" />     
            </jque:newDialog>
            
            <jque:newDialog controller='job' action="ldi" ajax="false" id='ldi' title="LDI" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="layer" value="0" />
            <jque:dialogField name="mean" value="0" />			
    		<jque:dialogField name="standardDeviation" value="0" />     
            </jque:newDialog>
            
            <jque:newDialog controller='job' action="camRegistrationNumbers" ajax="false" id='camSearch' title="Search" success="s_div2" width="600">
    		<jque:dialogField name="jobName" value="" />
    		</jque:newDialog> 
                   
<!-- Page display.  Each block produces a button that calls the applicable job dialog -->            
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
             <div class="list">
                            
                            <div class="job" style = "float:left">
            				<span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        					</div>   
        					<div style="height:60px"></div>
        					
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="PEP" dialogId="PEP" />
               				</div>
               		      
               				<div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="AOI Before Etch" dialogId="aoibe" />
               				</div>
               				
               				<div style="height:60px"></div>  
               				
               				<div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="AOI After Etch" dialogId="aoiae" />
               				</div>
               				
       						<div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="Pluritec" dialogId="pluritec" />
               				</div>
               				
               				<div style="height:60px"></div>    
               				     
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="DC Plating" dialogId="dcplating" />
               				</div>  
               				
               				<div class="job" style = "float:right">
               				<jque:newShowDialog buttonCaption="Search Job" dialogId="searchDcplating" /> 
               				</div>
               				
               				<div style="height:60px"></div>
                            
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="Outer Etch" dialogId="oletch" />
               				</div> 
               				
               				<div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="HAL" dialogId="hal" />
               				</div> 
               				
               				<div style="height:60px"></div> 
               	
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="Tin Strip" dialogId="tinstrip" />
               				</div> 
               				
               				<div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="PPG Developer" dialogId="ppgDeveloper" />
               				</div> 
               				
               				<div style="height:60px"></div>
               				
               				<div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="PPG Stripper" dialogId="ppgStripper" />
               				</div>
               				
               				<div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="Plating Aspect Ratio" dialogId="aspectRatio" />
               				</div>  
               				
               				<div style="height:60px"></div>
               				
               				<div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="LDI" dialogId="ldi" />
               				</div> 
               				
               				<div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="Cam Search" dialogId="camSearch" />
               				</div>               				 
               				
            </div>
            
        </div>
    </div>    
    </body>
</html>
