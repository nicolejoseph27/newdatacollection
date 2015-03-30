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
            
        <div class="body" style="width:85%">
            <h1><g:message code="Job Process Time"/></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn style="text-align:center" property="workorder" title="${message(code: 'job.id.label', default: 'Work Order')}" />
                            
                            <g:sortableColumn style="text-align:center" property="companyname" title="${message(code: 'job.companyname.label', default: 'Company Name')}" />
                        
                            <g:sortableColumn  style="text-align:center" property="jobname" title="${message(code: 'job.jobname.label', default: 'Part Number')}" />
                            
                            <g:sortableColumn style="text-align:center" property="aoiBeRunTime" title="${message(code: 'job.aoiBeRunTime.label', default: 'AOI BE Time')}" />

                            <g:sortableColumn style="text-align:center" property="touchUpRunTime" title="${message(code: 'job.touchUpRunTime.label', default: 'Touch Up Time')}" />

                            <g:sortableColumn style="text-align:center" property="aoiAeRunTime" title="${message(code: 'job.aoiAeRunTime.label', default: 'AOI AE Time')}" />

                            <g:sortableColumn style="text-align:center" property="repairRunTime" title="${message(code: 'job.repairRunTime.label', default: 'Repair Time')}" />
                            
                            <g:sortableColumn style="text-align:center" property="aoiBpRunTime" title="${message(code: 'job.aoiBpRunTime.label', default: 'AOI BP Time')}" />   
                            
                            <g:sortableColumn style="text-align:center" property="aoiFinalRunTime" title="${message(code: 'job.aoiFinalRunTime.label', default: 'AOI Final Time')}" />
                            
                            <g:sortableColumn style="text-align:center" property="repairOuterRunTime" title="${message(code: 'job.repairOuterRunTime.label', default: 'Repair Outer Time')}" />                                                                             
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${jobInstanceList}" status="i" var="jobInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td style="text-align:center"><g:link action="show" id="${jobInstance.id}">${fieldValue(bean: jobInstance, field: "workorder")}</g:link></td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "companyname")}</td>
                        
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "jobname")}</td>
 
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "aoiBeRunTime")}</td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "touchUpRunTime")}</td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "aoiAeRunTime")}</td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "repairRunTime")}</td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "aoiBpRunTime")}</td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "aoiFinalRunTime")}</td>
                            
                            <td style="text-align:center">${fieldValue(bean: jobInstance, field: "repairOuterRunTime")}</td>
                        
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
        </div>
        
     </body>
</html>