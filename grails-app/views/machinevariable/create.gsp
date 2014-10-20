

<%@ page import="magnetboard.MachineVariable" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'machineVariable.label', default: 'MachineVariable')}" />
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
            <g:hasErrors bean="${machineVariableInstance}">
            <div class="errors">
                <g:renderErrors bean="${machineVariableInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_date"><g:message code="machineVariable.airQuality_date.label" default="Air Qualitydate" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_date', 'errors')}">
                                    <g:datePicker name="airQuality_date" precision="day" value="${machineVariableInstance?.airQuality_date}" default="none" noSelection="['': '']" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_operator"><g:message code="machineVariable.airQuality_operator.label" default="Air Qualityoperator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_operator', 'errors')}">
                                    <g:textField name="airQuality_operator" value="${machineVariableInstance?.airQuality_operator}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_spray"><g:message code="machineVariable.airQuality_spray.label" default="Air Qualityspray" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_spray', 'errors')}">
                                    <g:textField name="airQuality_spray" value="${machineVariableInstance?.airQuality_spray}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_spray5"><g:message code="machineVariable.airQuality_spray5.label" default="Air Qualityspray5" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_spray5', 'errors')}">
                                    <g:textField name="airQuality_spray5" value="${machineVariableInstance?.airQuality_spray5}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_sprayTemp"><g:message code="machineVariable.airQuality_sprayTemp.label" default="Air Qualityspray Temp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_sprayTemp', 'errors')}">
                                    <g:textField name="airQuality_sprayTemp" value="${machineVariableInstance?.airQuality_sprayTemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_sprayHumid"><g:message code="machineVariable.airQuality_sprayHumid.label" default="Air Qualityspray Humid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_sprayHumid', 'errors')}">
                                    <g:textField name="airQuality_sprayHumid" value="${machineVariableInstance?.airQuality_sprayHumid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_sprayPressure"><g:message code="machineVariable.airQuality_sprayPressure.label" default="Air Qualityspray Pressure" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_sprayPressure', 'errors')}">
                                    <g:textField name="airQuality_sprayPressure" value="${machineVariableInstance?.airQuality_sprayPressure}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_sprayafterac"><g:message code="machineVariable.airQuality_sprayafterac.label" default="Air Qualitysprayafterac" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_sprayafterac', 'errors')}">
                                    <g:textField name="airQuality_sprayafterac" value="${machineVariableInstance?.airQuality_sprayafterac}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_sprayafterac5"><g:message code="machineVariable.airQuality_sprayafterac5.label" default="Air Qualitysprayafterac5" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_sprayafterac5', 'errors')}">
                                    <g:textField name="airQuality_sprayafterac5" value="${machineVariableInstance?.airQuality_sprayafterac5}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_hall"><g:message code="machineVariable.airQuality_hall.label" default="Air Qualityhall" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_hall', 'errors')}">
                                    <g:textField name="airQuality_hall" value="${machineVariableInstance?.airQuality_hall}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_hall5"><g:message code="machineVariable.airQuality_hall5.label" default="Air Qualityhall5" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_hall5', 'errors')}">
                                    <g:textField name="airQuality_hall5" value="${machineVariableInstance?.airQuality_hall5}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_films"><g:message code="machineVariable.airQuality_films.label" default="Air Qualityfilms" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_films', 'errors')}">
                                    <g:textField name="airQuality_films" value="${machineVariableInstance?.airQuality_films}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_films5"><g:message code="machineVariable.airQuality_films5.label" default="Air Qualityfilms5" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_films5', 'errors')}">
                                    <g:textField name="airQuality_films5" value="${machineVariableInstance?.airQuality_films5}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_filmsTemp"><g:message code="machineVariable.airQuality_filmsTemp.label" default="Air Qualityfilms Temp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_filmsTemp', 'errors')}">
                                    <g:textField name="airQuality_filmsTemp" value="${machineVariableInstance?.airQuality_filmsTemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_filmsHumid"><g:message code="machineVariable.airQuality_filmsHumid.label" default="Air Qualityfilms Humid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_filmsHumid', 'errors')}">
                                    <g:textField name="airQuality_filmsHumid" value="${machineVariableInstance?.airQuality_filmsHumid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_filmsPressure"><g:message code="machineVariable.airQuality_filmsPressure.label" default="Air Qualityfilms Pressure" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_filmsPressure', 'errors')}">
                                    <g:textField name="airQuality_filmsPressure" value="${machineVariableInstance?.airQuality_filmsPressure}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_2camera"><g:message code="machineVariable.airQuality_2camera.label" default="Air Quality2camera" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_2camera', 'errors')}">
                                    <g:textField name="airQuality_2camera" value="${machineVariableInstance?.airQuality_2camera}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_2camera5"><g:message code="machineVariable.airQuality_2camera5.label" default="Air Quality2camera5" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_2camera5', 'errors')}">
                                    <g:textField name="airQuality_2camera5" value="${machineVariableInstance?.airQuality_2camera5}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_2cameraTemp"><g:message code="machineVariable.airQuality_2cameraTemp.label" default="Air Quality2camera Temp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_2cameraTemp', 'errors')}">
                                    <g:textField name="airQuality_2cameraTemp" value="${machineVariableInstance?.airQuality_2cameraTemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_2cameraHumid"><g:message code="machineVariable.airQuality_2cameraHumid.label" default="Air Quality2camera Humid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_2cameraHumid', 'errors')}">
                                    <g:textField name="airQuality_2cameraHumid" value="${machineVariableInstance?.airQuality_2cameraHumid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_2cameraPressure"><g:message code="machineVariable.airQuality_2cameraPressure.label" default="Air Quality2camera Pressure" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_2cameraPressure', 'errors')}">
                                    <g:textField name="airQuality_2cameraPressure" value="${machineVariableInstance?.airQuality_2cameraPressure}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_4camera"><g:message code="machineVariable.airQuality_4camera.label" default="Air Quality4camera" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_4camera', 'errors')}">
                                    <g:textField name="airQuality_4camera" value="${machineVariableInstance?.airQuality_4camera}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_4camera5"><g:message code="machineVariable.airQuality_4camera5.label" default="Air Quality4camera5" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_4camera5', 'errors')}">
                                    <g:textField name="airQuality_4camera5" value="${machineVariableInstance?.airQuality_4camera5}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_4cameraTemp"><g:message code="machineVariable.airQuality_4cameraTemp.label" default="Air Quality4camera Temp" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_4cameraTemp', 'errors')}">
                                    <g:textField name="airQuality_4cameraTemp" value="${machineVariableInstance?.airQuality_4cameraTemp}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_4cameraHumid"><g:message code="machineVariable.airQuality_4cameraHumid.label" default="Air Quality4camera Humid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_4cameraHumid', 'errors')}">
                                    <g:textField name="airQuality_4cameraHumid" value="${machineVariableInstance?.airQuality_4cameraHumid}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="airQuality_4cameraPressure"><g:message code="machineVariable.airQuality_4cameraPressure.label" default="Air Quality4camera Pressure" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: machineVariableInstance, field: 'airQuality_4cameraPressure', 'errors')}">
                                    <g:textField name="airQuality_4cameraPressure" value="${machineVariableInstance?.airQuality_4cameraPressure}" />
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
