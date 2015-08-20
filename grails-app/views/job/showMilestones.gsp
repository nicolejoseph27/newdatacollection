<%@ page import="magnetboard.Job" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'job.label', default: 'Job')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>   
    		<g:form>
            <g:hiddenField name="id" value="${jobInstance?.id}" />
            <span class="menuButton" style = "font-size:16px"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span> 
            <g:link controller="process" action="jakevue" style="color:#228B22;text-transform:capitalize;font-size:16px">Process Board</g:link>
            <span class="button"><g:actionSubmit action="editMilestones" value="Edit Milestones" /></span>
            </g:form>
        </div>
        <div class="body">
        
        <div style="padding:10px">
            <h1 style="background-color:lightgrey; text-align:center; color:green;font-size:300%">${fieldValue(bean: jobInstance, field: "companyname")}<br>
            ${fieldValue(bean: jobInstance, field: "jobname")}<br>
            ${fieldValue(bean: jobInstance, field: "workorder")}
            </h1>
        </div>
        
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div align="center">
                <table style="width:30%">
                    <tbody>
                                                                
                        <tr>
    						<th height = "50" style = "text-align:center; font-size:30px;" colspan="2">Schedule</th>
  						</tr>
  						
  						<tr>
							<td valign="top" class="value" style="text-align:right; font-size:20px">Due Date: ${fieldValue(bean: jobInstance, field: "duedate")}</td>
                            
                            <td valign="top" class="value" style="text-align:left; font-size:20px">Ship Date: ${fieldValue(bean: jobInstance, field: "shipDate")}</td>
  						</tr>
                        <g:each in="${processArray}" status="j"  var="process">
                        <tr class="prop2">

							<td valign="top" class="name" style="text-align:center; font-size:14px">Day ${j + 1}</td>
                            
                            <td valign="top" class="value" style="text-align:center; font-size:14px">${processArray[j]}</td>
                        </tr> 
                        </g:each>                                                                                                                                                                            
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
