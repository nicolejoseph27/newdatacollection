
<%@ page import="magnetboard.Material" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'material.label', default: 'Material')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="material.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: materialInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="material.partNumber.label" default="Part Number" /></td>
                            
                            <td valign="top" class="value"><g:link controller="prePregPartNumber" action="show" id="${materialInstance?.partNumber?.id}">${materialInstance?.partNumber?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="material.lotNumber.label" default="Lot Number" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: materialInstance, field: "lotNumber")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="material.squareFeet.label" default="Square Feet" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: materialInstance, field: "squareFeet")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="material.expirationDate.label" default="Expiration Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${materialInstance?.expirationDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="material.squareFeetAvailable.label" default="Square Feet Available" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: materialInstance, field: "squareFeetAvailable")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="material.squareFeetAllocated.label" default="Square Feet Allocated" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: materialInstance, field: "squareFeetAllocated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="material.prePregPartNumbers.label" default="Pre Preg Part Numbers" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${materialInstance.prePregPartNumbers}" var="p">
                                    <li><g:link controller="prePregPartNumber" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${materialInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
