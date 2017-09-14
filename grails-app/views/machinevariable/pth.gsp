<%@ page import="magnetboard.MachineVariable" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'machineVariable.label', default: 'MachineVariable')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <script type="text/javascript" src="http://www.google.com/jsapi"></script>
        
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'machineVariable.id.label', default: 'Monday')}" />
                        
                            <g:sortableColumn property="pthDate" title="${message(code: 'machineVariable.pthDate.label', default: 'Tuesday')}" />
                        
                            <g:sortableColumn property="day" title="${message(code: 'machineVariable.day.label', default: 'Wednesday')}" />
                        
                            <g:sortableColumn property="preCond4461A" title="${message(code: 'machineVariable.preCond4461A.label', default: 'Thursday')}" />
                        
                            <g:sortableColumn property="airQuality_spray5" title="${message(code: 'machineVariable.airQuality_spray5.label', default: 'Friday')}" />
                        
                            <g:sortableColumn property="airQuality_sprayTemp" title="${message(code: 'machineVariable.airQuality_sprayTemp.label', default: 'Air Qualityspray Temp')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${machineVariableInstanceList}" status="i" var="machineVariableInstance">
                    	
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${machineVariableInstance.id}">${fieldValue(bean: machineVariableInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${machineVariableInstance.pthDate}" /></td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "day")}</td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "preCond4461A")}</td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "airQuality_spray5")}</td>
                        
                            <td>${fieldValue(bean: machineVariableInstance, field: "airQuality_sprayTemp")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
             <div class="paginateButtons">
                <g:paginate total="${machineVariableInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
