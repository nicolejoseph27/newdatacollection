
<%@ page import="magnetboard.BottomsUp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'bottomsUp.label', default: 'BottomsUp')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'bottomsUp.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="blindMicroVias" title="${message(code: 'bottomsUp.blindMicroVias.label', default: 'Blind Micro Vias')}" />
                        
                            <g:sortableColumn property="boardPerimeter" title="${message(code: 'bottomsUp.boardPerimeter.label', default: 'Board Perimeter')}" />
                        
                            <g:sortableColumn property="boardsPerPanel" title="${message(code: 'bottomsUp.boardsPerPanel.label', default: 'Boards Per Panel')}" />
                        
                            <g:sortableColumn property="buildSpec" title="${message(code: 'bottomsUp.buildSpec.label', default: 'Build Spec')}" />
                        
                            <g:sortableColumn property="cdRouting" title="${message(code: 'bottomsUp.cdRouting.label', default: 'Cd Routing')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${bottomsUpInstanceList}" status="i" var="bottomsUpInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${bottomsUpInstance.id}">${fieldValue(bean: bottomsUpInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: bottomsUpInstance, field: "blindMicroVias")}</td>
                        
                            <td>${fieldValue(bean: bottomsUpInstance, field: "boardPerimeter")}</td>
                        
                            <td>${fieldValue(bean: bottomsUpInstance, field: "boardsPerPanel")}</td>
                        
                            <td>${fieldValue(bean: bottomsUpInstance, field: "buildSpec")}</td>
                        
                            <td>${fieldValue(bean: bottomsUpInstance, field: "cdRouting")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${bottomsUpInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
