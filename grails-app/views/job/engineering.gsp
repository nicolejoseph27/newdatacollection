<%@ page import="magnetboard.Job" %>
<html>
    <head>
     <g:javascript plugin="jquery" library="jquery" />
   <g:javascript library="application" />
   <jqui:resources />
   <g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'job.label', default: 'Job')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        
			<jque:newDialog controller='job' action="searchWorkOrder" ajax="false" id='searchWorkOrder' title="Work Order Search" success="s_div2" width="600">
    		<jque:dialogField name="workorder" value="" />
    		</jque:newDialog>   
    		
    		<jque:newDialog controller='job' action="machineVariableReset" ajax="false" id='machineVariableReset' title="Machine Variable Reset" success="s_div2" width="600">
    		<jque:dialogField name="machine" value="" type="select" from="${['PPG Developer','PPG Stripper'] }"/>
    		</jque:newDialog>  
            
        <div class="body" style="width:85%">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                        	<g:sortableColumn style="text-align:center" property="id" title="${message(code: 'job.id.label', default: 'id')}" />
                        	
                            <g:sortableColumn style="text-align:center" property="workorder" title="${message(code: 'job.workorder.label', default: 'Workorder')}" />
                        
                            <g:sortableColumn style="text-align:center" property="companyname" title="${message(code: 'job.companyname.label', default: 'Company Name')}" />
                        
                            <g:sortableColumn  style="text-align:center" property="jobname" title="${message(code: 'job.jobname.label', default: 'Part Number')}" />
                            
                            <g:sortableColumn  style="text-align:center" property="duedate" title="${message(code: 'job.duedate.label', default: 'Due Date')}" />
                            
                            <th style="text-align:center"><g:message code="job.process.label" default="Process" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${jobInstanceList}" status="i" var="jobInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td style="text-align:center"><g:link action="show" id="${jobInstance.id}">${fieldValue(bean: jobInstance, field: "id")}</g:link></td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "workorder")}</td>
                        
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "companyname")}</td>
                        
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "jobname")}</td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "duedate")}</td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "process")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
                 
            </div>
            
            <div class="paginateButtons">
                <g:paginate total="${jobInstanceTotal}" />
            </div>
            
            </br>
            <div class="job" style = "float:left">
            <jque:newShowDialog buttonCaption="Search Work Order" dialogId="searchWorkOrder" /> 
            </div>  
            
            <div class="job" style = "float:left">
            <jque:newShowDialog buttonCaption="Machine variable reset" dialogId="machineVariableReset" /> 
            </div>  
            
             <div class="job" style = "float:right">
                	 <g:link controller="process" style="color:#228B22;text-transform:capitalize">magnetboard</g:link>
               </div>
               
               <div class="job" style = "float:right"> 
                	 <g:link controller="process" action="bethview" style="color:#228B22;text-transform:capitalize">bethview</g:link>
               </div>
               
               <div class="job" style = "float:right"> 
                	 <g:link controller="nonBusinessDay" action="create" style="color:#228B22;text-transform:capitalize">Create Non Business Day</g:link>
               </div>
        </div>
     </body>
</html>
