
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
    
    <div id="pageBody">
   
        <div class="body">
         
            <jque:newDialog controller='job' action="PEP" ajax="false" id='PEP' title="PEP Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="mean" value="" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Adrian Smith','Brian Emerschak','Ed Norcott','Jake Kurnot','Carlos Harrison','Becky Brunner','Joe Pawlowski','Mark Husarik','Bob Gosliak','Cindy Stemmler','Beth Lang','Cliff Gray','Joel Williams','Melissa Knight','Jesse Ward','Gerry Glatz','Oscar Curtis','Matt Shirey'] }"/>
    		</jque:newDialog> 
    		<!-- AOI Before Etch -->
    		<jque:newDialog controller='job' action="aoiBeforeEtch" ajax="false" id='aoibe' title="AOI Before Etch Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="noOfSignalLayers" value="" />
    		<jque:dialogField name="minLine" value="" />
    		<jque:dialogField name="minSpace" value="" />
    		<jque:dialogField name="noOfOpens" value="" />
    		<jque:dialogField name="noOfShorts" value="" />
    		<jque:dialogField name="machineLightSource" value="" type="select" from="${['Camtek','Lloyd Doyle/Red'] }"/>
    		<jque:dialogField name="operator" value="" type="select" from="${['Adrian Smith','Brian Emerschak','Ed Norcott','Joe Pawlowski'] }"/>
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='job' action="aoiAfterEtch" ajax="false" id='aoiae' title="AOI After Etch Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="noOfPanelsScrap" value="" />
    		<jque:dialogField name="noOfOpens" value="" />
    		<jque:dialogField name="noOfShorts" value="" />
    		<jque:dialogField name="machineLightSource" value="" type="select" from="${['Camtek','Lloyd Doyle/Red','Lloyd Doyle/Blue'] }"/>
    		<jque:dialogField name="operator" value="" type="select" from="${['Adrian Smith','Brian Emerschak','Ed Norcott','Joe Pawlowski'] }"/>
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='job' action="pluritec" ajax="false" id='pluritec' title="Pluritec Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="Xcomp" value="" />
    		<jque:dialogField name="Ycomp" value="" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Matt Shirey','Scott Zaboski','Bob Atkinson','Ken Gulick','Jason Gale'] }"/>
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='job' action="dcplating" ajax="false" id='dcplating' title="DC Plating Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="cells" value="" />
    		<jque:dialogField name="dcRack" value="" />
    		<jque:dialogField name="areaTop" value="" />
    		<jque:dialogField name="areaBottom" value="" />
    		<jque:dialogField name="spec" value="" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Cliff Gray','Frank Krznaric','Kim Stanley','Jake Kurnot','Jason Persun'] }"/>
    		<jque:dialogField name="minCuDeposit" value="" />
    		<jque:dialogField name="maxCuDeposit" value="" />
    		<jque:dialogField name="asf" value="" />
    		<jque:dialogField name="totalCopperTime" value="" />    		
    		</jque:newDialog>   
    		
    		<jque:newDialog controller='job' action="dcplatingSearch" ajax="false" id='searchDcplating' title="DC Plating Job Search" success="s_div2" width="600">
    		<jque:dialogField name="jobName" value="" />
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='job' action="olEtch" ajax="false" id='oletch' title="Outer Layer Etch" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="twBefore" value="" />
    		<jque:dialogField name="lineSpeed" value="" />
    		<jque:dialogField name="cuThickness" value="" />
    		<jque:checkBoxField name="splash" type="checkbox" labelName="Were the panels splashed"  checked="${false}" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Cliff Gray','Frank Krznaric','Kim Stanley','Jake Kurnot','Don Lang','Pete Sullivan','Oscar Curtis','Jason Persun'] }"/>
    		</jque:newDialog>  
    		
    		<jque:newDialog controller='job' action="tinStrip" ajax="false" id='tinstrip' title="Tin Strip Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="twAfter" value="" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Cliff Gray','Frank Krznaric','Kim Stanley','Jake Kurnot','Don Lang','Pete Sullivan','Oscar Curtis','Jason Persun'] }"/>
    		</jque:newDialog>  

    		<jque:newDialog controller='job' action="hal" ajax="false" id='hal' title="HASL Variables" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		<jque:dialogField name="operator" value="" type="select" from="${['Cliff Gray','Frank Krznaric','Jason Persun','Oscar Curtis'] }"/>
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
    
            
<!-- Page display.  Each block produces a button that calls the applicable job dialog -->            
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
             <div class="list">
               
                    <g:each in="${machineInstanceList}" status="i" var="machineInstance">
                            
                            <g:if test = "${machineInstance.name == 'PEP'}">
                            
                            <div class="job" style = "float:left">
            				<span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        					</div>   
        					
        					<div style="height:60px"></div>
        					
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="PEP" dialogId="PEP" />
               				</div>
               				
               				<div class="job" style = "float:right"> 
                   	 		<g:link controller="job" action="pepData" style="color:#228B22;text-transform:capitalize">PEP Chart</g:link>
               				</div>
               				
               				<div style="height:60px"></div>
               				      
               				<div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="AOI Before Etch" dialogId="aoibe" />
               				</div>
               				
               				<div class="job" style = "float:right"> 
                   	 		<g:link controller="job" action="pepData" style="color:#228B22;text-transform:capitalize">PEP Chart</g:link>
               				</div>
               				
               				<div style="height:60px"></div>  
               				
               				<div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="AOI After Etch" dialogId="aoiae" />
               				</div>
               				
               				<div class="job" style = "float:right"> 
                   	 		<g:link controller="job" action="pepData" style="color:#228B22;text-transform:capitalize">PEP Chart</g:link>
               				</div>
               				
               				<div style="height:60px"></div>    
               				      
                            </g:if>
                           
                            <g:if test = "${machineInstance.name == 'DC Plating'}">
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="DC Plating" dialogId="dcplating" />
               				</div>  
               				
               				<div class="job" style = "float:right">
               				<jque:newShowDialog buttonCaption="Search Job for DC Plating/Outer Layer Etch" dialogId="searchDcplating" /> 
               				</div>
               				
               				<div style="height:60px"></div>
                            </g:if>
                            
                            <g:if test = "${machineInstance.name == 'PTH'}">
                            
                            <div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="Plate Through" dialogId="pth" />
               				</div>    
                            </g:if>
                            
                            <g:if test = "${machineInstance.name == 'Pluritec'}">
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="Pluritec" dialogId="pluritec" />
               				</div>
               				<div class="job" style = "float:right"> 
                   	 		<g:link controller="job" action="pluritecData" style="color:#228B22;text-transform:capitalize">Pluritec Chart</g:link>
               				</div>  
               				<div style="height:60px"></div>  
                            </g:if>
                            
                      
                            
                            <g:if test = "${machineInstance.name == 'Outer Etch'}">
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="Outer Etch" dialogId="oletch" />
               				</div> 
               				<div class="job" style = "float:right"> 
                   	 		<g:link controller="job" action="pluritecData" style="color:#228B22;text-transform:capitalize">Pluritec Chart</g:link>
               				</div>  
               				<div style="height:60px"></div> 
               				</g:if>
                            
                            <g:if test = "${machineInstance.name == 'Outer Etch'}">
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="Tin Strip" dialogId="tinstrip" />
               				</div> 
               				</g:if>

                            <g:if test = "${machineInstance.name == 'Outer Etch'}">
                            <div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="HAL" dialogId="hal" />
               				</div> 
                            </g:if>
                                    
                    </g:each>

            </div>
            
        </div>
    </div>    
    </body>
</html>
