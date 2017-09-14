
<%@ page import="magnetboard.Panel" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'panel.label', default: 'Panel')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'panel.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="microMinWallThickness" title="${message(code: 'panel.microMinWallThickness.label', default: 'Micro Min Wall Thickness')}" />
                        
                            <g:sortableColumn property="adhesiveVoidsFlex" title="${message(code: 'panel.adhesiveVoidsFlex.label', default: 'Adhesive Voids Flex')}" />
                        
                            <g:sortableColumn property="aveWallThickness" title="${message(code: 'panel.aveWallThickness.label', default: 'Ave Wall Thickness')}" />
                        
                            <g:sortableColumn property="barrelCornerCracks" title="${message(code: 'panel.barrelCornerCracks.label', default: 'Barrel Corner Cracks')}" />
                        
                            <g:sortableColumn property="buriedAveWallThickness" title="${message(code: 'panel.buriedAveWallThickness.label', default: 'Buried Ave Wall Thickness')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${panelInstanceList}" status="i" var="panelInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${panelInstance.id}">${fieldValue(bean: panelInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: panelInstance, field: "microMinWallThickness")}</td>
                        
                            <td><g:formatBoolean boolean="${panelInstance.adhesiveVoidsFlex}" /></td>
                        
                            <td>${fieldValue(bean: panelInstance, field: "aveWallThickness")}</td>
                        
                            <td><g:formatBoolean boolean="${panelInstance.barrelCornerCracks}" /></td>
                        
                            <td>${fieldValue(bean: panelInstance, field: "buriedAveWallThickness")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${panelInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
