<%@ page import="magnetboard.Job" %>
<html>
    <head>
    <g:javascript plugin="jquery" library="jquery" />
    <g:javascript library="application" />
    <jqui:resources />
    <g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />
    <g:javascript plugin="jquery-ui" library="jquery-ui" />
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'job.label', default: 'Job')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
        
        <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  
  </script>
        
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
            <h1>Add Milestones - ${jobInstance.workorder}</h1>
            <h1>Due Date: ${jobInstance.duedate}</h1>
            <h1>Ship Date: ${jobInstance.shipDate}</h1> 
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

                     <table style = "width:70%">
                        <tbody>
                        
                        <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="shipDate"><g:message code="job.shipDate.label" default="Ship Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'shipDate', 'errors')}">
                                    <g:textField id="datepicker" name="shipDate" value="${jobInstance?.shipDate}"  />
                                </td>
                            </tr>                  
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.*.label" default="Day 1" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                
                                </td>                                   
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.*.label" default="Day 2" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                   
                                </td>
                            </tr>  
                           	
                           	<tr class="prop2">
                                <td valign="top" class="name">
                                      <label for="*"><g:message code="job.originalMilestones.label" default="Day 3" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                   
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 4" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                  
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 5" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                 
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 6" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                 
                                </td>
                             </tr>
                                
                             <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 7" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                  
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 8" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                            
                                </td>
                             </tr>
                               
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 9" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                 
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 10" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                             
                                </td>
                             </tr>
                             
                             <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 11" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                  
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 12" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                
                                </td>
                             </tr>
                                
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 13" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                 
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 14" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                
                                </td>
                             </tr>
                               
                             <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 15" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                  
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 16" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                 
                                </td>
                             </tr>
                                
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 17" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                  
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 18" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                 
                                </td>
                             </tr>
                                
                             <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 19" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                   
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 20" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                   
                                </td>
                             </tr>
                                
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 21" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                   
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 22" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                 
                                </td> 
                             </tr>  
                                
                             <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 23" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                 
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 24" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                 
                                </td>                                   
                             </tr>

                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 25" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                  
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 26" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                 
                                </td>                                   
                             </tr>

                             <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 27" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                  
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 28" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                  
                                </td>                                   
                             </tr>                                                        

                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 29" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                   
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 30" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                   
                                </td>                                   
                             </tr>

                             <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 31" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                   
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 32" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                
                                </td>                                   
                             </tr>

                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 33" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                  
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 34" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                   
                                </td>                                   
                            </tr> 

                             <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 35" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                  
                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 36" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                                                   
                                </td>                                   
                             </tr>

                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 37" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 38" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                </td>                                   
                             </tr>
                            
                             <tr class="prop2">
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 39" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                </td>
                                <td valign="top" class="name">
                                    <label for="*"><g:message code="job.originalMilestones.label" default="Day 40" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: jobInstance, field: 'originalMilestones', 'errors')}">
                                    <g:select name="originalMilestones" from="${mileStoneList}" value="${jobInstance?.originalMilestones}" noSelection=mileStoneList(0) />                                </td>                                   
                            </tr>                                                                                                                                                                                                    
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="updateMilestones" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
