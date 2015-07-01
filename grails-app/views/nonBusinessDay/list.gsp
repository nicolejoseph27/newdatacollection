
<%@ page import="magnetboard.NonBusinessDay" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'nonBusinessDay.label', default: 'NonBusinessDay')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'nonBusinessDay.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nonBusinessDate" title="${message(code: 'nonBusinessDay.nonBusinessDate.label', default: 'Non Business Date')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${nonBusinessDayInstanceList}" status="i" var="nonBusinessDayInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${nonBusinessDayInstance.id}">${fieldValue(bean: nonBusinessDayInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${nonBusinessDayInstance.nonBusinessDate}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${nonBusinessDayInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
