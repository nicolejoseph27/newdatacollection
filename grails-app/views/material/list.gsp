
<%@ page import="magnetboard.Material" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'material.label', default: 'Material')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'material.id.label', default: 'Id')}" />
                        
                            <th><g:message code="material.partNumber.label" default="Part Number" /></th>
                        
                            <g:sortableColumn property="lotNumber" title="${message(code: 'material.lotNumber.label', default: 'Lot Number')}" />
                        
                            <g:sortableColumn property="squareFeet" title="${message(code: 'material.squareFeet.label', default: 'Square Feet')}" />
                        
                            <g:sortableColumn property="expirationDate" title="${message(code: 'material.expirationDate.label', default: 'Expiration Date')}" />
                        
                            <g:sortableColumn property="squareFeetAvailable" title="${message(code: 'material.squareFeetAvailable.label', default: 'Square Feet Available')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${materialInstanceList}" status="i" var="materialInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${materialInstance.id}">${fieldValue(bean: materialInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: materialInstance, field: "partNumber")}</td>
                        
                            <td>${fieldValue(bean: materialInstance, field: "lotNumber")}</td>
                        
                            <td>${fieldValue(bean: materialInstance, field: "squareFeet")}</td>
                        
                            <td><g:formatDate date="${materialInstance.expirationDate}" /></td>
                        
                            <td>${fieldValue(bean: materialInstance, field: "squareFeetAvailable")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${materialInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
