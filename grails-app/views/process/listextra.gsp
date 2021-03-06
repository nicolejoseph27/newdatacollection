
<%@ page import="magnetboard.Process" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'process.label', default: 'Process')}" />
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
                <table style="width:300px;height:1750px">
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'process.id.label', default: 'id')}" />
                        
                            <g:sortableColumn property="canister" title="${message(code: 'process.canister.label', default: 'Canister')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${processInstanceList}" status="i" var="processInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${processInstance.id}">${fieldValue(bean: processInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: processInstance, field: "canister")}</td>
                        
                        </tr>
                    </g:each>

                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${processInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
