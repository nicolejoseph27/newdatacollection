

<%@ page import="magnetboard.Process" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'process.label', default: 'Process')}" />
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
            <g:hasErrors bean="${processInstance}">
            <div class="errors">
                <g:renderErrors bean="${processInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="canister"><g:message code="process.canister.label" default="Canister" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: processInstance, field: 'canister', 'errors')}">
                                    <g:textField name="canister" value="${processInstance?.canister}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="priority"><g:message code="process.priority.label" default="Priority" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: processInstance, field: 'priority', 'errors')}">
                                    <g:textField name="priority" value="${processInstance?.priority}" />
                                </td>
                                <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mileStone"><g:message code="process.mileStone.label" default="MileStone" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: processInstance, field: 'mileStone', 'errors')}">
                                    <g:checkBox name="mileStone" value="${processInstance?.mileStone}" />
                                </td>
                            </tr>
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
