

<%@ page import="magnetboard.Material" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'material.label', default: 'Material')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${materialInstance}">
            <div class="errors">
                <g:renderErrors bean="${materialInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="partNumber"><g:message code="material.partNumber.label" default="Part Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: materialInstance, field: 'partNumber', 'errors')}">
                                    <g:select name="partNumber.id" from="${magnetboard.PrePregPartNumber.list()}" optionKey="id" value="${materialInstance?.partNumber?.id}" noSelection="['null': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lotNumber"><g:message code="material.lotNumber.label" default="Lot Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: materialInstance, field: 'lotNumber', 'errors')}">
                                    <g:textField name="lotNumber" value="${materialInstance?.lotNumber}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="squareFeet"><g:message code="material.squareFeet.label" default="Square Feet" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: materialInstance, field: 'squareFeet', 'errors')}">
                                    <g:textField name="squareFeet" value="${materialInstance?.squareFeet}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="expirationDate"><g:message code="material.expirationDate.label" default="Expiration Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: materialInstance, field: 'expirationDate', 'errors')}">
                                    <g:datePicker name="expirationDate" precision="day" value="${materialInstance?.expirationDate}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="squareFeetAvailable"><g:message code="material.squareFeetAvailable.label" default="Square Feet Available" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: materialInstance, field: 'squareFeetAvailable', 'errors')}">
                                    <g:textField name="squareFeetAvailable" value="${fieldValue(bean: materialInstance, field: 'squareFeetAvailable')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="squareFeetAllocated"><g:message code="material.squareFeetAllocated.label" default="Square Feet Allocated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: materialInstance, field: 'squareFeetAllocated', 'errors')}">
                                    <g:textField name="squareFeetAllocated" value="${fieldValue(bean: materialInstance, field: 'squareFeetAllocated')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
