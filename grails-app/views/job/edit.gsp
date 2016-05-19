  

<%@ page import="magnetboard.Job" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'job.label', default: 'Job')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${jobInstance}">
            <div class="errors">
                <g:renderErrors bean="${jobInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${jobInstance?.id}" />
                <g:hiddenField name="version" value="${jobInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        	
                        	<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="priority"><g:message code="job.priority.label" default="Priority" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'priority', 'errors')}">
                                    <g:select name="priority" from="${['Normal Turn Multi-Layer','Fast Turn Multi-Layer','Rework','Fast Turn Double Sided','Normal Turn Double Sided','Assembly','On-hold']}" value="${jobInstance?.priority}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="process"><g:message code="job.process.label" default="Process" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'process', 'errors')}">
                                    <g:select name="process.id" from="${magnetboard.Process.list()}" optionKey="id" value="${jobInstance?.process?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        	
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="cam"><g:message code="job.cam.label" default="Cam" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'cam', 'errors')}">
                                    <g:textField name="cam" value="${jobInstance?.cam}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="companyname"><g:message code="job.companyname.label" default="Company Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'companyname', 'errors')}">
                                    <g:textField name="companyname" value="${jobInstance?.companyname}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="duedate"><g:message code="job.duedate.label" default="Due Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'duedate', 'errors')}">
                                    <g:textField name="duedate" value="${jobInstance?.duedate}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="jobname"><g:message code="job.jobname.label" default="Part Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'jobname', 'errors')}">
                                    <g:textField name="jobname" value="${jobInstance?.jobname}" />
                                </td>
                            </tr>
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="noboardsperpanel"><g:message code="job.noboardsperpanel.label" default="Number of Boards/Panel" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'noboardsperpanel', 'errors')}">
                                    <g:textField name="noboardsperpanel" value="${jobInstance?.noboardsperpanel}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="noofpanelsmade"><g:message code="job.noofpanelsmade.label" default="Number of Panels Made" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'Noofpanelsmade', 'errors')}">
                                    <g:textField name="noofpanelsmade" value="${jobInstance?.noofpanelsmade}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="noofboardsordered"><g:message code="job.noofboardsordered.label" default="Number of Boards Ordered" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'noofboardsordered', 'errors')}">
                                    <g:textField name="noofboardsordered" value="${jobInstance?.noofboardsordered}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="nooflayers"><g:message code="job.nooflayers.label" default="Number of Layers" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'nooflayers', 'errors')}">
                                    <g:textField name="nooflayers" value="${jobInstance?.nooflayers}" />
                                </td>
                            </tr>
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="notes"><g:message code="job.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" value="${jobInstance?.notes}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="projectmanager"><g:message code="job.projectmanager.label" default="Project Manager" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'projectmanager', 'errors')}">
                                    <g:textField name="projectmanager" value="${jobInstance?.projectmanager}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="salescontact"><g:message code="job.salescontact.label" default="Sales Contact" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'salescontact', 'errors')}">
                                    <g:textField name="salescontact" value="${jobInstance?.salescontact}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="shoporder"><g:message code="job.shoporder.label" default="Shoporder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'shoporder', 'errors')}">
                                    <g:textField name="shoporder" value="${jobInstance?.shoporder}" />
                                </td>
                            </tr>
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="size"><g:message code="job.size.label" default="Panel Size" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'size', 'errors')}">
                                    <g:textField name="size" value="${jobInstance?.size}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="thickness"><g:message code="job.thickness.label" default="Panel Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'thickness', 'errors')}">
                                    <g:textField name="thickness" value="${jobInstance?.thickness}" />
                                </td>
                            </tr>
                           
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="totalvalue"><g:message code="job.totalvalue.label" default="Total Job Value" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'totalvalue', 'errors')}">
                                    <g:textField name="totalvalue" value="${jobInstance?.totalvalue}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="valueperboard"><g:message code="job.valueperboard.label" default="Value Per Board" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'valueperboard', 'errors')}">
                                    <g:textField name="valueperboard" value="${jobInstance?.valueperboard}" />
                                </td>
                            </tr>
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="workorder"><g:message code="job.workorder.label" default="Workorder" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'workorder', 'errors')}">
                                    <g:textField name="workorder" value="${jobInstance?.workorder}" />
                                </td>
                                 <td valign="top" class="name">
                                    <label for="pepMean"><g:message code="job.pepMean.label" default="PEP mean" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'pepMean', 'errors')}">
                                    <g:textField name="pepMean" value="${jobInstance?.pepMean}" />
                                </td>
                                
                           <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dcDate"><g:message code="job.DC_date.label" default="DC Plating Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcDate', 'errors')}">
                                    <g:textField name="dcDate" value="${jobInstance?.dcDate}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="dcCell"><g:message code="job.dcCell.label" default="DC Plating cell" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcCell', 'errors')}">
                                    <g:textField name="dcCell" value="${jobInstance?.dcCell}" />
                                </td>
                            </tr>
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="dcAt"><g:message code="job.dcAt.label" default="DC Plating Area Top" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcAt', 'errors')}">
                                    <g:textField name="dcAt" value="${jobInstance?.dcAt}" />
                                </td>
                                 <td valign="top" class="name">
                                    <label for="dcAb"><g:message code="job.dcAb.label" default="DC Plating Area Bottom" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcAb', 'errors')}">
                                    <g:textField name="dcAb" value="${jobInstance?.dcAb}" />
                                </td>
                                
                              </tr>  
                                
                           <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dcSpec"><g:message code="job.dcSpec.label" default="DC Plating spec" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcSpec', 'errors')}">
                                    <g:textField name="dcSpec" value="${jobInstance?.dcSpec}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="dcOperator"><g:message code="job.dcOperator.label" default="DC Plating Operator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcOperator', 'errors')}">
                                    <g:textField name="dcOperator" value="${jobInstance?.dcOperator}" />
                                </td>
                            </tr>
                        
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="dcMinCuDeposit"><g:message code="dcMinCuDeposit.label" default="DC Plating minimum Cu Deposit" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcMinCuDeposit', 'errors')}">
                                    <g:textField name="dcMinCuDeposit" value="${jobInstance?.dcMinCuDeposit}" />
                                </td>
                                
                                <td valign="top" class="name">
                                  <label for="dcMaxCuDeposit"><g:message code="dcMaxCuDeposit.label" default="DC Plating maximum Cu Deposit" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcMaxCuDeposit', 'errors')}">
                                    <g:textField name="dcMaxCuDeposit" value="${jobInstance?.dcMaxCuDeposit}" />
                                </td>
                             </tr>
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="dcNotes"><g:message code="dcNotes.label" default="DC Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcNotes', 'errors')}">
                                    <g:textField name="dcNotes" value="${jobInstance?.dcNotes}" />
                                </td>
                                                           
                                <td valign="top" class="name">
                                  <label for="minHole"><g:message code="minHole.label" default="Minimum Hole Diameter" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'minHole', 'errors')}">
                                    <g:textField name="minHole" value="${jobInstance?.minHole}" />
                                </td>  
                             </tr>
                              
                              <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dcAsf"><g:message code="job.dcAsf.label" default="DC ASF" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcAsf', 'errors')}">
                                    <g:textField name="dcAsf" value="${jobInstance?.dcAsf}" />
                                </td>
                                 <td valign="top" class="name">
                                  <label for="dcTct"><g:message code="job.dcTct.label" default="DC Total Copper Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcTct', 'errors')}">
                                    <g:textField name="dcTct" value="${jobInstance?.dcTct}" />
                                </td>
                            </tr>
                            
                            <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="dcRack"><g:message code="dcRack.label" default="DC Plating Rack" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dcRack', 'errors')}">
                                    <g:textField name="dcRack" value="${jobInstance?.dcRack}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="pluritecXcomp"><g:message code="job.pluritecXcomp.label" default="Pluritec X Compensation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'pluritecXcomp', 'errors')}">
                                    <g:textField name="pluritecXcomp" value="${jobInstance?.pluritecXcomp}" />
                                </td>
                             </tr> 
                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="pluritecYcomp"><g:message code="pluritecYcomp.label" default="Pluritec Y Compensation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'pluritecYcomp', 'errors')}">
                                    <g:textField name="pluritecYcomp" value="${jobInstance?.pluritecYcomp}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="pluritecOperator"><g:message code="job.pluritecOperator.label" default="Pluritec Operator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'pluritecOperator', 'errors')}">
                                    <g:textField name="pluritecOperator" value="${jobInstance?.pluritecOperator}" />
                                </td>
                             </tr>     
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="olEtchDate"><g:message code="olEtchDate.label" default="OL Etch Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'olEtchDate', 'errors')}">
                                    <g:textField name="olEtchDate" value="${jobInstance?.olEtchDate}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="olEtchOperator"><g:message code="job.olEtchOperator.label" default="OL Etch Operator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'olEtchOperator', 'errors')}">
                                    <g:textField name="olEtchOperator" value="${jobInstance?.olEtchOperator}" />
                                </td>
                             </tr>     
                              
                              <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="olEtchTwBefore"><g:message code="olEtchTwBefore.label" default="OL Etch Tw Before" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'olEtchTwBefore', 'errors')}">
                                    <g:textField name="olEtchTwBefore" value="${jobInstance?.olEtchTwBefore}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="olEtchTwAfter"><g:message code="job.olEtchTwAfter.label" default="Tin Strip Tw After" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'olEtchTwAfter', 'errors')}">
                                    <g:textField name="olEtchTwAfter" value="${jobInstance?.olEtchTwAfter}" />
                                </td>
                             </tr>     
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="olEtchLineSpeed"><g:message code="olEtchLineSpeed.label" default="OL Etch Line Speed" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'olEtchLineSpeed', 'errors')}">
                                    <g:textField name="olEtchLineSpeed" value="${jobInstance?.olEtchLineSpeed}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="olEtchCuThickness"><g:message code="job.olEtchCuThickness.label" default="OL Etch Cu Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'olEtchCuThickness', 'errors')}">
                                    <g:textField name="olEtchCuThickness" value="${jobInstance?.olEtchCuThickness}" />
                                </td>
                             </tr>     
                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="olEtchSplash"><g:message code="olEtchSplash.label" default="OL Etch Splash" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'olEtchSplash', 'errors')}">
                                    <g:textField name="olEtchSplash" value="${jobInstance?.olEtchSplash}" />
                                </td>                    
                             </tr>  
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="tinStripDate"><g:message code="tinStripDate.label" default="Tin Strip Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'tinStripDate', 'errors')}">
                                    <g:textField name="tinStripDate" value="${jobInstance?.tinStripDate}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="tinStripOperator"><g:message code="job.tinStripOperator.label" default="Tin Strip Operator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'tinStripOperator', 'errors')}">
                                    <g:textField name="tinStripOperator" value="${jobInstance?.tinStripOperator}" />
                                </td>
                             </tr>  
                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="noOfSignalLayers"><g:message code="noOfSignalLayers.label" default="No. Of Signal Layers" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'noOfSignalLayers', 'errors')}">
                                    <g:textField name="noOfSignalLayers" value="${jobInstance?.noOfSignalLayers}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiBeMachineLightSource"><g:message code="job.aoiBeMachineLightSource.label" default="AOI Before Etch Machine Light Source" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBeMachineLightSource', 'errors')}">
                                    <g:textField name="aoiBeMachineLightSource" value="${jobInstance?.aoiBeMachineLightSource}" />
                                </td>
                             </tr>              
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="aoiBeOperator"><g:message code="aoiBeOperator.label" default="AOI Before Etch Operator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBeOperator', 'errors')}">
                                    <g:textField name="aoiBeOperator" value="${jobInstance?.aoiBeOperator}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiBeDate"><g:message code="job.aoiBeDate.label" default="AOI Before Etch Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBeDate', 'errors')}">
                                    <g:textField name="aoiBeDate" value="${jobInstance?.aoiBeDate}" />
                                </td>
                             </tr>   
                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="minLine"><g:message code="minLine.label" default="Minimum Line" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'minLine', 'errors')}">
                                    <g:textField name="minLine" value="${jobInstance?.minLine}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="minSpace"><g:message code="job.minSpace.label" default="Minimum Space" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'minSpace', 'errors')}">
                                    <g:textField name="minSpace" value="${jobInstance?.minSpace}" />
                                </td>
                             </tr>
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="aoiBeNoOfShorts"><g:message code="aoiBeNoOfShorts.label" default="AOI Before Etch No. Of Shorts" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBeNoOfShorts', 'errors')}">
                                    <g:textField name="aoiBeNoOfShorts" value="${jobInstance?.aoiBeNoOfShorts}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiBeNoOfOpens"><g:message code="job.aoiBeNoOfOpens.label" default="AOI Before Etch No. Of Opens" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBeNoOfOpens', 'errors')}">
                                    <g:textField name="aoiBeNoOfOpens" value="${jobInstance?.aoiBeNoOfOpens}" />
                                </td>
                             </tr>
                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="aoiAeOperator"><g:message code="aoiAeOperator.label" default="AOI After Etch Operator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiAeOperator', 'errors')}">
                                    <g:textField name="aoiAeOperator" value="${jobInstance?.aoiAeOperator}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiAeNoOfPanelsScrap"><g:message code="job.aoiAeNoOfPanelsScrap.label" default="AOI After Etch No. Of Panels Scrap" /></label>                   
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiAeNoOfPanelsScrap', 'errors')}">
                                    <g:textField name="aoiAeNoOfPanelsScraps" value="${jobInstance?.aoiAeNoOfPanelsScrap}" />
                                </td>
                             </tr>
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="aoiAeDate"><g:message code="aoiAeDate.label" default="AOI After Etch Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiAeDate', 'errors')}">
                                    <g:textField name="aoiAeDate" value="${jobInstance?.aoiAeDate}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiAeNoOfShorts"><g:message code="job.aoiAeNoOfShorts.label" default="AOI After Etch No. Of Shorts" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiAeNoOfShorts', 'errors')}">
                                    <g:textField name="aoiAeNoOfShorts" value="${jobInstance?.aoiAeNoOfShorts}" />
                                </td>
                             </tr>
                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="aoiAeNoOfOpens"><g:message code="aoiAeNoOfOpens.label" default="AOI After Etch No. Of Opens" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiAeNoOfOpens', 'errors')}">
                                    <g:textField name="aoiAeNoOfOpens" value="${jobInstance?.aoiAeNoOfOpens}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiAeMachineLightSource"><g:message code="job.aoiAeMachineLightSource.label" default="AOI After Etch Machine Light Source" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiAeMachineLightSource', 'errors')}">
                                    <g:textField name="aoiAeMachineLightSource" value="${jobInstance?.aoiAeMachineLightSource}" />
                                </td>
                             </tr>
                                                                                       
          <!-- HAL EDIT -->
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="halDate"><g:message code="halDate.label" default="HAL Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halDate', 'errors')}">
                                    <g:textField name="halDate" value="${jobInstance?.halDate}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="halOperator"><g:message code="job.halOperator.label" default="HAL Operator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halOperator', 'errors')}">
                                    <g:textField name="halOperator" value="${jobInstance?.halOperator}" />
                                </td>
                             </tr>                              
  
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="halBakeTime"><g:message code="halBakeTime.label" default="HAL Bake Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halBakeTime', 'errors')}">
                                    <g:textField name="halBakeTime" value="${jobInstance?.halBakeTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="halTimeSinceLastBaked"><g:message code="job.halTimeSinceLastBaked.label" default="HAL Time Since Last Baked" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halTimeSinceLastBaked', 'errors')}">
                                    <g:textField name="halTimeSinceLastBaked" value="${jobInstance?.halTimeSinceLastBaked}" />
                                </td>
                             </tr>                                        
  
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="halAirKnifeGap"><g:message code="halAirKnifeGap.label" default="HAL Air Knife Gap" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halAirKnifeGap', 'errors')}">
                                    <g:textField name="halAirKnifeGap" value="${jobInstance?.halAirKnifeGap}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="halDoubleFlux"><g:message code="job.halDoubleFlux.label" default="HAL Double Flux" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halDoubleFlux', 'errors')}">
                                    <g:textField name="halDoubleFlux" value="${jobInstance?.halDoubleFlux}" />
                                </td>
                             </tr> 
                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="halDwellTime"><g:message code="halDwellTime.label" default="HAL Dwell Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halDwellTime', 'errors')}">
                                    <g:textField name="halDwellTime" value="${jobInstance?.halDwellTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="halDoubleDip"><g:message code="job.halDoubleDip.label" default="HAL Double Dip" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halDoubleDip', 'errors')}">
                                    <g:textField name="halDoubleDip" value="${jobInstance?.halDoubleDip}" />
                                </td>
                             </tr> 
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="halAirKnifePressureFront"><g:message code="halAirKnifePressureFront.label" default="HAL Air Knife Pressure Front" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halAirKnifePressureFront', 'errors')}">
                                    <g:textField name="halAirKnifePressureFront" value="${jobInstance?.halAirKnifePressureFront}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="halAirKnifePressureRear"><g:message code="job.halAirKnifePressureRear.label" default="HAL Air Knife Pressure Rear" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halAirKnifePressureRear', 'errors')}">
                                    <g:textField name="halAirKnifePressureRear" value="${jobInstance?.halAirKnifePressureRear}" />
                                </td>
                             </tr> 
                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="halWithdrawalTurns"><g:message code="halWithdrawalTurns.label" default="HAL Withdrawal Turns" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halWithdrawalTurns', 'errors')}">
                                    <g:textField name="halWithdrawalTurns" value="${jobInstance?.halWithdrawalTurns}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="halGoldFingers"><g:message code="job.halGoldFingers.label" default="HAL Gold Fingers" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halGoldFingers', 'errors')}">
                                    <g:textField name="halGoldFingers" value="${jobInstance?.halGoldFingers}" />
                                </td>
                             </tr>
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="halColdPress"><g:message code="halColdPress.label" default="HAL Cold Press" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halColdPress', 'errors')}">
                                    <g:textField name="halColdPress" value="${jobInstance?.halColdPress}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="halNotes"><g:message code="job.halNotes.label" default="HAL Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'halNotes', 'errors')}">
                                    <g:textField name="halNotes" value="${jobInstance?.halNotes}" />
                                </td>
                             </tr>

          <!-- PPG EDIT -->                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ppgDate"><g:message code="ppgDate.label" default="PPG Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'ppgDate', 'errors')}">
                                    <g:textField name="ppgDate" value="${jobInstance?.ppgDate}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="ppgOperator"><g:message code="job.ppgOperator.label" default="PPG Operator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'PPG Operator', 'errors')}">
                                    <g:textField name="ppgOperator" value="${jobInstance?.ppgOperator}" />
                                </td>
                             </tr> 
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="ppgRunSpeed"><g:message code="ppgRunSpeed.label" default="PPG Run Speed" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'ppgRunSpeed', 'errors')}">
                                    <g:textField name="ppgRunSpeed" value="${jobInstance?.ppgRunSpeed}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="ppgStepTab"><g:message code="job.ppgStepTab.label" default="PPG Step Tab" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'ppgStepTab', 'errors')}">
                                    <g:textField name="ppgStepTab" value="${jobInstance?.ppgStepTab}" />
                                </td>
                             </tr>

                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="ppgNoOfPanels"><g:message code="ppgNoOfPanels.label" default="PPG No. Of Panels" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'ppgNoOfPanels', 'errors')}">
                                    <g:textField name="ppgNoOfPanels" value="${jobInstance?.ppgNoOfPanels }" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="ppgStripperDate"><g:message code="job.ppgStripperDate.label" default="PPG Stripper Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'ppgStripperDate', 'errors')}">
                                    <g:textField name="ppgStripperDate" value="${jobInstance?.ppgStripperDate}" />
                                </td>
                             </tr>

                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="ppgStripperOperator"><g:message code="ppgStripperOperator.label" default="PPG Stripper Operator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'ppgStripperOperator', 'errors')}">
                                    <g:textField name="ppgStripperOperator" value="${jobInstance?.ppgStripperOperator}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="ppgStripperNoOfPanels"><g:message code="job.ppgStripperNoOfPanels.label" default="PPG Stripper No. Of Panels" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'ppgStripperNoOfPanels', 'errors')}">
                                    <g:textField name="ppgStripperNoOfPanels" value="${jobInstance?.ppgStripperNoOfPanels}" />
                                </td>
                             </tr>                             

                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="aoiBeStartTime"><g:message code="aoiBeStartTime.label" default="AOI Before Etch Start Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBeStartTime', 'errors')}">
                                    <g:textField name="aoiBeStartTime" value="${jobInstance?.aoiBeStartTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiBeStopTime"><g:message code="job.aoiBeStopTime.label" default="AOI Before Stop Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBeStopTime', 'errors')}">
                                    <g:textField name="aoiBeStopTime" value="${jobInstance?.aoiBeStopTime}" />
                                </td>
                             </tr>                             

                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="aoiBeRunTime"><g:message code="aoiBeRunTime.label" default="AOI Before Etch Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBeRunTime', 'errors')}">
                                    <g:textField name="aoiBeRunTime" value="${jobInstance?.aoiBeRunTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="touchUpStartTime"><g:message code="job.touchUpStartTime.label" default="Touch Up Start Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'touchUpStartTime', 'errors')}">
                                    <g:textField name="touchUpStartTime" value="${jobInstance?.touchUpStartTime}" />
                                </td>                                
                             </tr> 
                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="touchUpStopTime"><g:message code="touchUpStopTime.label" default="Touch Up Stop Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'touchUpStopTime', 'errors')}">
                                    <g:textField name="touchUpStopTime" value="${jobInstance?.touchUpStopTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="touchUpRunTime"><g:message code="job.touchUpRunTime.label" default="Touch Up Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'touchUpRunTime', 'errors')}">
                                    <g:textField name="touchUpRunTime" value="${jobInstance?.touchUpRunTime}" />
                                </td>                                
                             </tr>

                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="aoiAeStartTime"><g:message code="aoiAeStartTime.label" default="AOI After Etch Start Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiAeStartTime', 'errors')}">
                                    <g:textField name="aoiAeStartTime" value="${jobInstance?.aoiAeStartTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiAeStopTime"><g:message code="job.aoiAeStopTime.label" default="AOI After Etch Stop Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiAeStopTime', 'errors')}">
                                    <g:textField name="aoiAeStopTime" value="${jobInstance?.aoiAeStopTime}" />
                                </td>                                
                             </tr> 
                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="aoiAeRunTime"><g:message code="aoiAeRunTime.label" default="AOI After Etch Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiAeRunTime', 'errors')}">
                                    <g:textField name="aoiAeRunTime" value="${jobInstance?.aoiAeRunTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="repairStartTime"><g:message code="job.repairStartTime.label" default="Repair Inners Start Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'repairStartTime', 'errors')}">
                                    <g:textField name="repairStartTime" value="${jobInstance?.repairStartTime}" />
                                </td>                                
                             </tr>
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="repairStopTime"><g:message code="repairStopTime.label" default="Repair Inners Stop Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'repairStopTime', 'errors')}">
                                    <g:textField name="repairStopTime" value="${jobInstance?.repairStopTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="repairRunTime"><g:message code="job.repairRunTime.label" default="Repair Inners Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'repairRunTime', 'errors')}">
                                    <g:textField name="repairRunTime" value="${jobInstance?.repairRunTime}" />
                                </td>                                
                             </tr> 
                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="aoiBpStartTime"><g:message code="aoiBpStartTime.label" default="AOI Before Pattern Start Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBpStartTime', 'errors')}">
                                    <g:textField name="aoiBpStartTime" value="${jobInstance?.aoiBpStartTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiBpStopTime"><g:message code="job.aoiBpStopTime.label" default="AOI Before Plating Stop Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBpStopTime', 'errors')}">
                                    <g:textField name="aoiBpStopTime" value="${jobInstance?.aoiBpStopTime}" />
                                </td>                                
                             </tr>                                                          

                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="aoiBpRunTime"><g:message code="aoiBpRunTime.label" default="AOI Before Plating Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBpRunTime', 'errors')}">
                                    <g:textField name="aoiBpRunTime" value="${jobInstance?.aoiBpRunTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiFinalStartTime"><g:message code="job.aoiFinalStartTime.label" default="AOI Final Start Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiFinalStartTime', 'errors')}">
                                    <g:textField name="aoiFinalStartTime" value="${jobInstance?.aoiFinalStartTime}" />
                                </td>                                
                             </tr> 
                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="aoiFinalStopTime"><g:message code="aoiFinalStopTime.label" default="AOI Final Stop Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiFinalStopTime', 'errors')}">
                                    <g:textField name="aoiFinalStopTime" value="${jobInstance?.aoiFinalStopTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="aoiFinalRunTime"><g:message code="job.aoiFinalRunTime.label" default="AOI Final Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiFinalRunTime', 'errors')}">
                                    <g:textField name="aoiFinalRunTime" value="${jobInstance?.aoiFinalRunTime}" />
                                </td>                                
                             </tr>

                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="repairOuterStartTime"><g:message code="repairOuterStartTime.label" default="Repair Outers Start Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'repairOuterStartTime', 'errors')}">
                                    <g:textField name="repairOuterStartTime" value="${jobInstance?.repairOuterStartTime}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="repairOuterStopTime"><g:message code="job.repairOuterStopTime.label" default="Repair Outers Stop Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'repairOuterStopTime', 'errors')}">
                                    <g:textField name="repairOuterStopTime" value="${jobInstance?.repairOuterStopTime}" />
                                </td>                                
                             </tr> 
                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="repairOuterRunTime"><g:message code="repairOuterRunTime.label" default="Repair Outers Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'repairOuterRunTime', 'errors')}">
                                    <g:textField name="repairOuterRunTime" value="${jobInstance?.repairOuterRunTime}" />
                                </td>                                                           
                             </tr>                                                                                                        
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="jobStartDate"><g:message code="jobStartDate.label" default="Job Start Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'jobStartDate', 'errors')}">
                                    <g:textField name="jobStartDate" value="${jobInstance?.jobStartDate}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="jobEndDate"><g:message code="job.jobEndDate.label" default="Job End Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'jobEndDate', 'errors')}">
                                    <g:textField name="jobEndDate" value="${jobInstance?.jobEndDate}" />
                                </td>                                
                             </tr> 
                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="durationProd"><g:message code="durationProd.label" default="Days To Complete" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'durationProd', 'errors')}">
                                    <g:textField name="durationProd" value="${jobInstance?.durationProd}" />
                                </td>                            
                             </tr> 
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="onTimeDeliveryRatio"><g:message code="onTimeDeliveryRatio.label" default="On-Time Delivery Ratio" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'onTimeDeliveryRatio', 'errors')}">
                                    <g:textField name="onTimeDeliveryRatio" value="${jobInstance?.onTimeDeliveryRatio}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="shipDate"><g:message code="job.shipDate.label" default="Ship Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'shipDate', 'errors')}">
                                    <g:textField name="shipDate" value="${jobInstance?.shipDate}" />
                                </td>                                
                             </tr>                                                         
                             
                             <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="originalMilestones"><g:message code="originalMilestones.label" default="Original Milestones" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:textField name="originalMilestones" value="${jobInstance?.originalMilestones}" />
                                </td>
                                <td valign="top" class="name">
                                  <label for="processMilestones"><g:message code="job.processMilestones.label" default="Process Milestones" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'processMilestones', 'errors')}">
                                    <g:textField name="processMilestones" value="${jobInstance?.processMilestones}" />
                                </td>                                
                             </tr> 
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="bakeTime"><g:message code="bakeTime.label" default="Bake Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'bakeTime', 'errors')}">
                                    <g:textField name="bakeTime" value="${jobInstance?.bakeTime}" />
                                </td> 
                                <td valign="top" class="name">
                                  <label for="dateShipDate"><g:message code="dateShipDate.label" default="Date Ship Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'dateShipDate', 'errors')}">
                                    <g:textField name="dateShipDate" value="${jobInstance?.dateShipDate}" />
                                </td>                            
                             </tr>
                                                                                                  
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
