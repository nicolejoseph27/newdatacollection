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
        <h1 style="font-size:25px;text-align:center;text-shadow:5px 5px 8px #7F7F7F;color:#228B22">Maintenance Machine List</h1>  
        
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
         
            <jque:newDialog controller='machineVariable' action="airQuality" ajax="false" id='airquality' title="Air Quality" success="s_div2" width="600">
 			<jque:dialogTab caption="Spray">
    		<jque:dialogField name="operator" value="Joe Pawlowski" />
    		<jque:dialogField name="spray" value="" />
    		<jque:dialogField name="spray5" value="" />
    		<jque:dialogField name="sprayTemperature" value="" />
    		<jque:dialogField name="sprayHumidity" value="" />
    		<jque:dialogField name="sprayPressure" value="" />
    		<jque:dialogField name="sprayAfterAirHandler" value="" />
    		<jque:dialogField name="sprayAfterAirHandler5" value="" />
    		<jque:dialogField name="hall" value="" />
    		<jque:dialogField name="hall5" value="" />
    		</jque:dialogTab>
    		<jque:dialogTab caption="Films">
    		<jque:dialogField name="Films" value="" />
    		<jque:dialogField name="Films5" value="" />
    		<jque:dialogField name="FilmsTemperature" value="" />
    		<jque:dialogField name="FilmsHumidity" value="" />
    		<jque:dialogField name="FilmsPressure" value="" />
    		<jque:dialogField name="outsideTemp" value="" />
    		<jque:dialogField name="outsideHumid" value="" />
    		</jque:dialogTab>
    		<jque:dialogTab caption="Goldroom">
    		<jque:dialogField name="twoCamera" value="" />
    		<jque:dialogField name="twoCamera5" value="" />
    		<jque:dialogField name="twoCameraTemperature" value="" />
    		<jque:dialogField name="twoCameraHumidity" value="" />
    		<jque:dialogField name="twoCameraPressure" value="" />
    		<jque:dialogField name="fourCamera" value="" />
    		<jque:dialogField name="fourCamera5" value="" />
    		<jque:dialogField name="fourCameraTemperature" value="" />
    		<jque:dialogField name="fourCameraHumidity" value="" />
    		<jque:dialogField name="fourCameraPressure" value="" />
    		</jque:dialogTab>
    		<jque:dialogTab caption="Layup Area">
    		<jque:dialogField name="layup" value="" />
    		<jque:dialogField name="layup5" value="" />
    		<jque:dialogField name="layupTemperature" value="" />
    		<jque:dialogField name="layupHumidity" value="" />
    		<jque:dialogField name="staging" value="" />
    		<jque:dialogField name="staging5" value="" />
    		<jque:dialogField name="stagingTemperature" value="" />
    		<jque:dialogField name="stagingHumidity" value="" />
    		<jque:dialogField name="stagingPressure" value="" />
    		</jque:dialogTab>
    		</jque:newDialog> 
    		
    		<jque:newDialog controller='machineVariable' action="pluritec" ajax="false" id='pluritec' title="Pluritec" success="s_div2" width="1000">
    		<jque:checkBoxField name="pluritecMaintenance" label= "1. Vacuum dust and chips from granite surfaces and table bed. 2. Inspect and clean rubber center gasket to maintain suction efficiency of table bed."/>
    		</jque:newDialog>
    		
    		<jque:newDialog controller='machineVariable' action="cleaningSchedule" ajax="false" id='cleaningSchedule' title="Cleaning Schedule" success="s_div2" width="1000">
    		<jque:dialogField name="operator" value="" type="select" from="${['Melissa Knight','Michele Crooks','Ed Norcott','Frank Bolkovac','Other'] }"/>
    		<jque:checkBoxField name="goldRoomFloors" label= "1. Goldroom - Floors with tacky roller"/>
    		<jque:checkBoxField name="goldRoomHorizontalSurfaces" label= "2. Goldroom - Horizontal Surfaces"/>
    		<jque:checkBoxField name="goldRoomFloors2" label= "3. Goldroom - Floors with the vacuum"/>
    		<jque:checkBoxField name="goldRoomWalls" label= "4. Goldroom - Walls"/> 
    		<jque:checkBoxField name="filmRoomFloors" label= "5. Films - Floors"/>
    		<jque:checkBoxField name="filmsRoomHorizontalSurfaces" label= "6. Films - Horizontal Surfaces"/>  
    		<jque:checkBoxField name="filmRoomFloors2" label= "7. Films - Floors with the vacuum"/>
    		<jque:checkBoxField name="filmRoomWalls" label= "8. Films - Walls"/> 
    		<jque:checkBoxField name="tackRoomFloors" label= "9. Tackroom - Floors with tacky roller"/>
    		<jque:checkBoxField name="tackRoomHorizontalSurfaces" label= "10. Tackroom - Horizontal Surfaces"/>
    		</jque:newDialog>
    		
    		<jque:newDialog controller='machineVariable' action="pth" ajax="false" id='pth' title="PTH" success="s_div2" width="1000">
    		
    		<jque:dialogTab caption="Prerun">
    		<jque:dialogField name="preCond4461A" value="0" />
    		<jque:dialogField name="preCond4461B" value="0" />
    		<jque:dialogField name="cond4471" value="0" />
    		<jque:dialogField name="microCuPrepMwf" value="0" />
    		<jque:dialogField name="microSulfuricAcidMwf" value="0" />
    		<jque:dialogField name="microCuWednesday" value="0" />
    		<jque:dialogField name="preDipCuWednesday" value="0" />
    		<jque:dialogField name="preDipDensity" value="0" />
    		<jque:dialogField name="preDipAcidN" value="0" />
    		<jque:dialogField name="preDipChloridenMwf" value="0" />
    		<jque:dialogField name="actCuWednesday" value="0" />
    		<jque:dialogField name="actChlorideN" value="0" />
    		<jque:dialogField name="actAcidN" value="0" />
    		<jque:dialogField name="c473" value="0" />
    		<jque:dialogField name="stannousChloridePre" value="0" />
    		<jque:dialogField name="stannicChloride" value="0" />
    		<jque:dialogField name="actDensity" value="0" />
    		<jque:dialogField name="cuaPre" value="0" />
    		<jque:dialogField name="cubPre" value="0" />
    		<jque:dialogField name="cumMwf" value="0" />
    		<jque:dialogField name="cudWednesday" value="0" />
    		<jque:dialogField name="cuFormaldehydePre" value="0" />
    		<jque:dialogField name="cuDensityWednesday" value="0" />
    		<jque:dialogField name="cuNickelWednesday" value="0" />
    		</jque:dialogTab>
    		
    		<jque:dialogTab caption="Midrun">
    		<jque:dialogField name="stannousChlorideMid" value="0" />
    		<jque:dialogField name="cuaMid" value="0" />
    		<jque:dialogField name="cubMid" value="0" />
    		<jque:dialogField name="cuFormaldehydeMid" value="0" />
    		</jque:dialogTab>
    		
    		<jque:dialogTab caption="Output Varriables">
    		<jque:dialogField name="depositThickness" value="0" />
    		<jque:dialogField name="etchRate" value="0" />
    		<jque:dialogField name="voidTest" value="0" />
    		<jque:dialogField name="backLightTuesday" value="0" />
    		</jque:dialogTab>
    		</jque:newDialog>
    		
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
             <div class="list">
               
                    <g:each in="${machineInstanceList}" status="i" var="machineInstance">
                            
                            <g:if test = "${machineInstance.name == 'Air Quality'}">
                            
                            <div class="job" style = "float:left">
            				<span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        					</div>   
        					<div class="job" style = "float:right"> 
                   	 		<g:link controller="machineVariable" action="list" style="color:#228B22;text-transform:capitalize">List Maintenance Events</g:link>
               				</div>
                            <div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="Air Quality" dialogId="airquality" />
               				</div> 
               				<div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="Pluritec" dialogId="pluritec" />
               				</div> 
               				<div class="job" style = "float:left"> 
                   	 		<jque:newShowDialog buttonCaption="Cleaning Schedule" dialogId="cleaningSchedule" />
               				</div>
               				<div class="job" style = "float:right"> 
                   	 		<jque:newShowDialog buttonCaption="PTH" dialogId="pth" />
               				</div>          
                            </g:if>
                                       
                    </g:each>

            </div>
            
        </div>
    </div>    
    </body>
</html>
