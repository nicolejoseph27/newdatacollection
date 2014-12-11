
<%@ page import="magnetboard.BottomsUp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'bottomsUp.label', default: 'BottomsUp')}" />
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
                            <td valign="top" class="name"><g:message code="bottomsUp.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.blindMicroVias.label" default="Blind Micro Vias" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "blindMicroVias")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.boardPerimeter.label" default="Board Perimeter" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "boardPerimeter")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.boardsPerPanel.label" default="Boards Per Panel" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "boardsPerPanel")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.buildSpec.label" default="Build Spec" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "buildSpec")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.cdRouting.label" default="Cd Routing" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "cdRouting")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.controlledImpedance.label" default="Controlled Impedance" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "controlledImpedance")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.coverlay.label" default="Coverlay" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "coverlay")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.etchbackRequired.label" default="Etchback Required" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${bottomsUpInstance?.etchbackRequired}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.externalAnularRing.label" default="External Anular Ring" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "externalAnularRing")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.finalFinish.label" default="Final Finish" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "finalFinish")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.goldFingers.label" default="Gold Fingers" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${bottomsUpInstance?.goldFingers}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.holeFillType.label" default="Hole Fill Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "holeFillType")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.internalAnularRing.label" default="Internal Anular Ring" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "internalAnularRing")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.legendColor.label" default="Legend Color" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "legendColor")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.legendSides.label" default="Legend Sides" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "legendSides")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.materialType.label" default="Material Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "materialType")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.maxCoreCuWeight.label" default="Max Core Cu Weight" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "maxCoreCuWeight")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.minCoreThickness.label" default="Min Core Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "minCoreThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.minSpaceNonPlated.label" default="Min Space Non Plated" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "minSpaceNonPlated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.minSpacePlated.label" default="Min Space Plated" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "minSpacePlated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.minTraceWidthNonPlated.label" default="Min Trace Width Non Plated" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "minTraceWidthNonPlated")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.minTraceWidthPlated.label" default="Min Trace Width Plated" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "minTraceWidthPlated")}</td>
                            
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.newJob.label" default="New Job" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "newJob")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.noOfCores.label" default="No Of Cores" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "noOfCores")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.noOfCoverlaySoldermaskSides.label" default="No Of Coverlay Soldermask Sides" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "noOfCoverlaySoldermaskSides")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.noOfDrillHitsPerBoard.label" default="No Of Drill Hits Per Board" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "noOfDrillHitsPerBoard")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.noOfDrillPrograms.label" default="No Of Drill Programs" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "noOfDrillPrograms")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.noOfLayers.label" default="No Of Layers" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "noOfLayers")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.noOfPanels.label" default="No Of Panels" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "noOfPanels")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.noOfPrepregs.label" default="No Of Prepregs" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "noOfPrepregs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.noOfRoutePrograms.label" default="No Of Route Programs" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "noOfRoutePrograms")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.noOfTestPoints.label" default="No Of Test Points" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "noOfTestPoints")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.noofLaminations.label" default="Noof Laminations" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "noofLaminations")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.panelPlating.label" default="Panel Plating" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "panelPlating")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.panelSize.label" default="Panel Size" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "panelSize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.routeTolerance.label" default="Route Tolerance" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "routeTolerance")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.scoring.label" default="Scoring" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "scoring")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.serialization.label" default="Serialization" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "serialization")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.smallestMechanicalDrillSize.label" default="Smallest Mechanical Drill Size" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "smallestMechanicalDrillSize")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.soldermaskAnularRing.label" default="Soldermask Anular Ring" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "soldermaskAnularRing")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.soldermaskColor.label" default="Soldermask Color" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "soldermaskColor")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.specialPackaging.label" default="Special Packaging" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${bottomsUpInstance?.specialPackaging}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.testMethod.label" default="Test Method" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "testMethod")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.testType.label" default="Test Type" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "testType")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.thickness.label" default="Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "thickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.typeOfBoard.label" default="Type Of Board" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "typeOfBoard")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.viaTypesPerCoupon.label" default="Via Types Per Coupon" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "viaTypesPerCoupon")}</td>
                            
                        </tr>
                        
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.companyName.label" default="companyName" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "companyName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="bottomsUp.partNumber.label" default="partNumber" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: bottomsUpInstance, field: "partNumber")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${bottomsUpInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
