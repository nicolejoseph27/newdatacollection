  

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
        </div>
        <div class="body"> 
            <h1 align = "center">Work Order -  ${jobInstance.workorder}</h1>
            <h2 align = "center">Company - ${jobInstance.companyname}</h2>
            <h2 align = "center">Part Number - ${jobInstance.jobname}</h2>
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
                <div class="dialog" align="center">
                    <table>
                        <tbody>
                             <tr class="prop2">
                                <td valign="top" class="name">
                                  <label for="aoiBeRunTime"><g:message code="aoiBeRunTime.label" default="AOI Before Etch Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBeRunTime', 'errors')}">
                                    <g:textField name="aoiBeRunTime" value="${jobInstance?.aoiBeRunTime}" />
                                </td>                         
                             </tr> 
                            
                             <tr class="prop">
                             	<td valign="top" class="name">
                                  <label for="touchUpRunTime"><g:message code="job.touchUpRunTime.label" default="Touch Up Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'touchUpRunTime', 'errors')}">
                                    <g:textField name="touchUpRunTime" value="${jobInstance?.touchUpRunTime}" />
                                </td>          
                                <td valign="top" class="name">
                                  <label for="aoiAeRunTime"><g:message code="aoiAeRunTime.label" default="AOI After Etch Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiAeRunTime', 'errors')}">
                                    <g:textField name="aoiAeRunTime" value="${jobInstance?.aoiAeRunTime}" />
                                </td>          
                             </tr>
                             
                             
                             <tr class="prop2">
                             	<td valign="top" class="name">
                                  <label for="repairRunTime"><g:message code="job.repairRunTime.label" default="Repair Inners Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'repairRunTime', 'errors')}">
                                    <g:textField name="repairRunTime" value="${jobInstance?.repairRunTime}" />
                                </td>          
                                <td valign="top" class="name">
                                  <label for="aoiBpRunTime"><g:message code="aoiBpRunTime.label" default="AOI Before Plating Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiBpRunTime', 'errors')}">
                                    <g:textField name="aoiBpRunTime" value="${jobInstance?.aoiBpRunTime}" />
                                </td> 
                             </tr>  
                            
                             <tr class="prop">
                             	<td valign="top" class="name">
                                  <label for="aoiFinalRunTime"><g:message code="job.aoiFinalRunTime.label" default="AOI Final Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'aoiFinalRunTime', 'errors')}">
                                    <g:textField name="aoiFinalRunTime" value="${jobInstance?.aoiFinalRunTime}" />
                                </td>                                
                                <td valign="top" class="name">
                                  <label for="repairOuterRunTime"><g:message code="repairOuterRunTime.label" default="Repair Outers Run Time" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'repairOuterRunTime', 'errors')}">
                                    <g:textField name="repairOuterRunTime" value="${jobInstance?.repairOuterRunTime}" />
                                </td>                             
                             </tr>                                                                                                        
                                                                      
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
