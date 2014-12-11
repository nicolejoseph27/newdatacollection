

<%@ page import="magnetboard.BottomsUp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'bottomsUp.label', default: 'BottomsUp')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    <style>
    	table {
    	width:20%
    	}
    	caption{
    	font-size:160%;
    	font-weight: bold;
    	}
    	
    </style>
    </head>
    
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1 style="font-size:25px;text-align:center;text-shadow:5px 5px 8px #7F7F7F;color:#228B22">Bottoms-Up Worksheet</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${bottomsUpInstance}">
            <div class="errors">
                <g:renderErrors bean="${bottomsUpInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                
                	<table align = "left">
                		<tbody>
                		
                			<caption>General Information</caption>
                			 
                			 <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="companyName"><g:message code="bottomsUp.companyName.label" default="Company Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'companyName', 'errors')}">
                                    <g:textField name="companyName" value="${fieldValue(bean: bottomsUpInstance, field: 'companyName')}" />
                                </td>
                            </tr>
                			 
                			 <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="partNumber"><g:message code="bottomsUp.partNumber.label" default="Part Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'partNumber', 'errors')}">
                                    <g:textField name="partNumber" value="${fieldValue(bean: bottomsUpInstance, field: 'partNumber')}" />
                                </td>
                            </tr>
                            
                			<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="typeOfBoard"><g:message code="bottomsUp.typeOfBoard.label" default="Type Of Board" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'typeOfBoard', 'errors')}">
                                    <g:select name="typeOfBoard" from="${['Rigid, Double Lam','RF / High Frequency','Double-sided Flex','Multi-layer Flex','Rigid Flex','Flex with stiffener','Build up','Loose leaf','Book Binder']}" value="${jobInstance?.typeOfBoard}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="newJob"><g:message code="bottomsUp.newJob.label" default="New Job" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'newJob', 'errors')}">
                                    <g:checkBox name="newJob" value="${bottomsUpInstance?.newJob}" />
                                </td>
                            </tr>
                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="buildSpec"><g:message code="bottomsUp.buildSpec.label" default="Build Spec" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'buildSpec', 'errors')}">
                                    <g:select name="buildSpec" from="${['6012 Class 2','6012 Class 3','6012 Class 3/A','6013 Class 2, Type 1','6013 Class 2, Type 2','6013 Class 2, Type 3','6013 Class 2, Type 4','6013 Class 2, Type 5','6013 Class 3, Type 1','6013 Class 3, Type 2','6013 Class 3, Type 3','6013 Class 3, Type 4','6013 Class 3, Type 5','6016','6018','MIL 55110','MIL-PRF 31032/1','MIL-PRF 31032/2','MIL-PRF 31032/3']}" value="${jobInstance?.buildSpec}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="panelSize"><g:message code="bottomsUp.panelSize.label" default="Panel Size" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'panelSize', 'errors')}">
                                    <g:select name="panelSize" from="${['18 X 12','18 X 16','24 X 18','24 X 20','24 X 21','25 X 22','Other',]}" value="${jobInstance?.panelSize}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="boardsPerPanel"><g:message code="bottomsUp.boardsPerPanel.label" default="Boards Per Panel" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'boardsPerPanel', 'errors')}">
                                    <g:textField name="boardsPerPanel" value="${fieldValue(bean: bottomsUpInstance, field: 'boardsPerPanel')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noOfPanels"><g:message code="bottomsUp.noOfPanels.label" default="No Of Panels" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'noOfPanels', 'errors')}">
                                    <g:textField name="noOfPanels" value="${fieldValue(bean: bottomsUpInstance, field: 'noOfPanels')}" />
                                </td>
                            </tr>
                            
                		
                		</tbody>
                
                    </table>
                        
                    <table align="left">
                		<tbody>
                		
                		
                			<caption>Stackup Information</caption>
                			
                		 
                		   <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="materialType"><g:message code="bottomsUp.materialType.label" default="Material Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'materialType', 'errors')}">
                                    <g:select name="materialType" from="${['Low Tg FR4','370HR','FR406','FR408','N4000-13','N4000-13EP','N4000-13EP SI','DuPont AP','Rogers 3000','Rogers 4000','Rogers 5000','Rogers 6000','Taconic RF-35','LCP','Megtron 6','Hybrid']}" value="${jobInstance?.materialType}" />
                                </td>
                            </tr>
                           
                           <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noOfLayers"><g:message code="bottomsUp.noOfLayers.label" default="No Of Layers" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'noOfLayers', 'errors')}">
                                    <g:textField name="noOfLayers" value="${fieldValue(bean: bottomsUpInstance, field: 'noOfLayers')}" />
                                </td>
                            </tr>
                        
                           <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="thickness"><g:message code="bottomsUp.thickness.label" default="Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'thickness', 'errors')}">
                                    <g:textField name="thickness" value="${fieldValue(bean: bottomsUpInstance, field: 'thickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noOfCores"><g:message code="bottomsUp.noOfCores.label" default="No Of Cores" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'noOfCores', 'errors')}">
                                    <g:textField name="noOfCores" value="${fieldValue(bean: bottomsUpInstance, field: 'noOfCores')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="minCoreThickness"><g:message code="bottomsUp.minCoreThickness.label" default="Min Core Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'minCoreThickness', 'errors')}">
                                    <g:textField name="minCoreThickness" value="${fieldValue(bean: bottomsUpInstance, field: 'minCoreThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="maxCoreCuWeight"><g:message code="bottomsUp.maxCoreCuWeight.label" default="Max Core Cu Weight" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'maxCoreCuWeight', 'errors')}">
                                    <g:select name="maxCoreCuWeight" from="${['0.25/0.25','0.5/0.5','1/1','2/2','3/3','0.5/1','1/2','2/3']}" value="${jobInstance?.maxCoreCuWeight}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noOfPrepregs"><g:message code="bottomsUp.noOfPrepregs.label" default="No Of Prepregs" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'noOfPrepregs', 'errors')}">
                                    <g:textField name="noOfPrepregs" value="${fieldValue(bean: bottomsUpInstance, field: 'noOfPrepregs')}" />
                                </td>
                            </tr>                                 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noofLaminations"><g:message code="bottomsUp.noofLaminations.label" default="No Of Laminations" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'noofLaminations', 'errors')}">
                                    <g:textField name="noofLaminations" value="${fieldValue(bean: bottomsUpInstance, field: 'noofLaminations')}" />
                                </td>
                            </tr>
                                                                        
                		</tbody>
                		
                		</table>
                        
                        <table align = "left">
                        <tbody>
                        
                        
                        	<caption>Artwork Information</caption>
                        

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="minTraceWidthNonPlated"><g:message code="bottomsUp.minTraceWidthNonPlated.label" default="Min Trace Width Non-Plated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'minTraceWidthNonPlated', 'errors')}">
                                    <g:textField name="minTraceWidthNonPlated" value="${fieldValue(bean: bottomsUpInstance, field: 'minTraceWidthNonPlated')}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="minTraceWidthPlated"><g:message code="bottomsUp.minTraceWidthPlated.label" default="Min Trace Width Plated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'minTraceWidthPlated', 'errors')}">
                                    <g:textField name="minTraceWidthPlated" value="${fieldValue(bean: bottomsUpInstance, field: 'minTraceWidthPlated')}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="minSpaceNonPlated"><g:message code="bottomsUp.minSpaceNonPlated.label" default="Min Space Non-Plated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'minSpaceNonPlated', 'errors')}">
                                    <g:textField name="minSpaceNonPlated" value="${fieldValue(bean: bottomsUpInstance, field: 'minSpaceNonPlated')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="minSpacePlated"><g:message code="bottomsUp.minSpacePlated.label" default="Min Space Plated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'minSpacePlated', 'errors')}">
                                    <g:textField name="minSpacePlated" value="${fieldValue(bean: bottomsUpInstance, field: 'minSpacePlated')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="controlledImpedance"><g:message code="bottomsUp.controlledImpedance.label" default="Controlled Impedance" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'controlledImpedance', 'errors')}">
                                    <g:select name="controlledImpedance" from="${['None','+/-10%','+/-5%']}" value="${bottomsUpInstance?.controlledImpedance}" />
                                </td>
                            </tr>
                                              
                        </tbody>
                        </table>
                                                
                        <table align = "left">
                        <tbody>
                        
                        
                        	<caption>CAM Information</caption>
                       
                                              
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noOfRoutePrograms"><g:message code="bottomsUp.noOfRoutePrograms.label" default="No Of Route Programs" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'noOfRoutePrograms', 'errors')}">
                                    <g:textField name="noOfRoutePrograms" value="${fieldValue(bean: bottomsUpInstance, field: 'noOfRoutePrograms')}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noOfDrillPrograms"><g:message code="bottomsUp.noOfDrillPrograms.label" default="No Of Drill Programs" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'noOfDrillPrograms', 'errors')}">
                                    <g:textField name="noOfDrillPrograms" value="${fieldValue(bean: bottomsUpInstance, field: 'noOfDrillPrograms')}" />
                                </td>
                            </tr>
                       
                        </tbody>
                        </table>

                        <table align = "left">
                        <tbody>
                        
                        
                        	<caption>Drill Information</caption>
                        
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="smallestMechanicalDrillSize"><g:message code="bottomsUp.smallestMechanicalDrillSize.label" default="Smallest Mechanical Drill Size" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'smallestMechanicalDrillSize', 'errors')}">
                                    <g:textField name="smallestMechanicalDrillSize" value="${fieldValue(bean: bottomsUpInstance, field: 'smallestMechanicalDrillSize')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="internalAnularRing"><g:message code="bottomsUp.internalAnularRing.label" default="Internal Annular Ring" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'internalAnularRing', 'errors')}">
                                    <g:textField name="internalAnularRing" value="${fieldValue(bean: bottomsUpInstance, field: 'internalAnularRing')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="externalAnularRing"><g:message code="bottomsUp.externalAnularRing.label" default="External Annular Ring" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'externalAnularRing', 'errors')}">
                                    <g:textField name="externalAnularRing" value="${fieldValue(bean: bottomsUpInstance, field: 'externalAnularRing')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noOfDrillHitsPerBoard"><g:message code="bottomsUp.noOfDrillHitsPerBoard.label" default="No Of Drill Hits Per Board" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'noOfDrillHitsPerBoard', 'errors')}">
                                    <g:textField name="noOfDrillHitsPerBoard" value="${fieldValue(bean: bottomsUpInstance, field: 'noOfDrillHitsPerBoard')}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="blindMicroVias"><g:message code="bottomsUp.blindMicroVias.label" default="Blind Micro Vias" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'blindMicroVias', 'errors')}">
                                    <g:textField name="blindMicroVias" value="${fieldValue(bean: bottomsUpInstance, field: 'blindMicroVias')}" />
                                </td>
                            </tr>

						</tbody>
						</table>

						<table align = "left">
                        <tbody>
                        
                       
                        	<caption>Via Metallization</caption>
                        
                        </tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="panelPlating"><g:message code="bottomsUp.panelPlating.label" default="Panel Plating" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'panelPlating', 'errors')}">
                                    <g:select name="panelPlating" from="${['None','Flash','Double Flash','Class 2 Wrap','Class 2 Wrap 2X','Class 3 Wrap']}" value="${bottomsUpInstance?.panelPlating}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="holeFillType"><g:message code="bottomsUp.holeFillType.label" default="Hole Fill Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'holeFillType', 'errors')}">
                                    <g:select name="holeFillType" from="${['None','Non-Conductive','Conductive Epoxy','Copper Fill']}" value="${bottomsUpInstance?.holeFillType}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="etchbackRequired"><g:message code="bottomsUp.etchbackRequired.label" default="Etchback Required" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'etchbackRequired', 'errors')}">
                                    <g:checkBox name="etchbackRequired" value="${bottomsUpInstance?.etchbackRequired}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="finalFinish"><g:message code="bottomsUp.finalFinish.label" default="Final Finish" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'finalFinish', 'errors')}">
                                    <g:select name="finalFinish" from="${['ENIG','HASL','Mix','Hard Gold','Soft Wirebondable Gold','ENEPIG','Immersion Silver','OSP','Electrolytic Nickel Only','Electrolytic Gold Only','Immersion Tin','Other']}" value="${bottomsUpInstance?.finalFinish}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="goldFingers"><g:message code="bottomsUp.goldFingers.label" default="Gold Fingers" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'goldFingers', 'errors')}">
                                    <g:checkBox name="goldFingers" value="${bottomsUpInstance?.goldFingers}" />
                                </td>
                            </tr>

						</table>
						
						<table align = "left">
                        <tbody>
                        
                       
                        	<caption>Soldermask/Markings Info</caption>
                        
                        </tbody>
                                                
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="coverlay"><g:message code="bottomsUp.coverlay.label" default="Coverlay" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'coverlay', 'errors')}">
                                    <g:select name="coverlay" from="${['None','Singles','Panel Form']}" value="${bottomsUpInstance?.coverlay}" />
                                </td>
                            </tr>
                                
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noOfCoverlaySoldermaskSides"><g:message code="bottomsUp.noOfCoverlaySoldermaskSides.label" default="No Of Coverlay/SM Sides" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'noOfCoverlaySoldermaskSides', 'errors')}">
                                    <g:textField name="noOfCoverlaySoldermaskSides" value="${fieldValue(bean: bottomsUpInstance, field: 'noOfCoverlaySoldermaskSides')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="soldermaskAnularRing"><g:message code="bottomsUp.soldermaskAnularRing.label" default="Soldermask Annular Ring" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'soldermaskAnularRing', 'errors')}">
                                    <g:textField name="soldermaskAnularRing" value="${fieldValue(bean: bottomsUpInstance, field: 'soldermaskAnularRing')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="soldermaskColor"><g:message code="bottomsUp.soldermaskColor.label" default="Soldermask Color" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'soldermaskColor', 'errors')}">
                                    <g:select name="soldermaskColor" from="${['Green','Black','Blue','Yellow','Red','Other']}" value="${bottomsUpInstance?.soldermaskColor}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="legendSides"><g:message code="bottomsUp.legendSides.label" default="Legend Sides" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'legendSides', 'errors')}">
                                    <g:textField name="legendSides" value="${fieldValue(bean: bottomsUpInstance, field: 'legendSides')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="legendColor"><g:message code="bottomsUp.legendColor.label" default="Legend Color" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'legendColor', 'errors')}">
                                    <g:select name="legendColor" from="${['White','Black','Yellow','Other']}" value="${bottomsUpInstance?.legendColor}" />
                                </td>
                            </tr>
 
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="serialization"><g:message code="bottomsUp.serialization.label" default="Serialization" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'serialization', 'errors')}">
                                    <g:select name="serialization" from="${['Bag & Tag','Ink','Copper']}" value="${bottomsUpInstance?.serialization}" />
                                </td>
                            </tr>
                                        
                        </table>

						<table align = "left">
                        <tbody>
                        
                        	<caption>Route Information</caption>
                        
                        </tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="routeTolerance"><g:message code="bottomsUp.routeTolerance.label" default="Route Tolerance" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'routeTolerance', 'errors')}">
                                    <g:textField name="routeTolerance" value="${fieldValue(bean: bottomsUpInstance, field: 'routeTolerance')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="boardPerimeter"><g:message code="bottomsUp.boardPerimeter.label" default="Board Perimeter" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'boardPerimeter', 'errors')}">
                                    <g:textField name="boardPerimeter" value="${fieldValue(bean: bottomsUpInstance, field: 'boardPerimeter')}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="scoring"><g:message code="bottomsUp.scoring.label" default="Scoring" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'scoring', 'errors')}">
                                    <g:select name="scoring" from="${['None','One Direction','Two Directions']}" value="${bottomsUpInstance?.scoring}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cdRouting"><g:message code="bottomsUp.cdRouting.label" default="Cd Routing" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'cdRouting', 'errors')}">
                                    <g:textField name="cdRouting" value="${fieldValue(bean: bottomsUpInstance, field: 'cdRouting')}" />
                                </td>
                            </tr> 
 
 
                        </table>
                        
                        <table align = "left">
                        <tbody>
                        
                        <caption>Quality Assurance</caption>
                        
                        </tbody>                        

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="testMethod"><g:message code="bottomsUp.testMethod.label" default="Test Method" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'testMethod', 'errors')}">
                                    <g:select name="testMethod" from="${['Probe','Bed Of Nails','Combo','HiPot','None']}" value="${bottomsUpInstance?.testMethod}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="testType"><g:message code="bottomsUp.testType.label" default="Test Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'testType', 'errors')}">
                                    <g:select name="testType" from="${['Before Route','After Route','None']}" value="${bottomsUpInstance?.testType}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="noOfTestPoints"><g:message code="bottomsUp.noOfTestPoints.label" default="No Of Test Points" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'noOfTestPoints', 'errors')}">
                                    <g:textField name="noOfTestPoints" value="${fieldValue(bean: bottomsUpInstance, field: 'noOfTestPoints')}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="viaTypesPerCoupon"><g:message code="bottomsUp.viaTypesPerCoupon.label" default="Via Types Per Coupon" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'viaTypesPerCoupon', 'errors')}">
                                    <g:textField name="viaTypesPerCoupon" value="${fieldValue(bean: bottomsUpInstance, field: 'viaTypesPerCoupon')}" />
                                </td>
                            </tr>
                                                                           
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="specialPackaging"><g:message code="bottomsUp.specialPackaging.label" default="Special Packaging" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: bottomsUpInstance, field: 'specialPackaging', 'errors')}">
                                    <g:checkBox name="specialPackaging" value="${bottomsUpInstance?.specialPackaging}" />
                                </td>
                            </tr>
                                       
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
