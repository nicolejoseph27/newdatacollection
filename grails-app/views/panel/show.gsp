
<%@ page import="magnetboard.Panel" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'panel.label', default: 'Panel')}" />
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
                            <td valign="top" class="name"><g:message code="panel.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.microMinWallThickness.label" default="Micro Min Wall Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "microMinWallThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.adhesiveVoidsFlex.label" default="Adhesive Voids Flex" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.adhesiveVoidsFlex}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.aveWallThickness.label" default="Ave Wall Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "aveWallThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.barrelCornerCracks.label" default="Barrel Corner Cracks" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.barrelCornerCracks}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.buriedAveWallThickness.label" default="Buried Ave Wall Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "buriedAveWallThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.buriedMinWallThickness.label" default="Buried Min Wall Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "buriedMinWallThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.buriedMinWrapThickness.label" default="Buried Min Wrap Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "buriedMinWrapThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.buriedTwoAveWallThickness.label" default="Buried Two Ave Wall Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "buriedTwoAveWallThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.buriedTwoMinWallThickness.label" default="Buried Two Min Wall Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "buriedTwoMinWallThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.buriedTwoMinWrapThickness.label" default="Buried Two Min Wrap Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "buriedTwoMinWrapThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.burrsNodules.label" default="Burrs Nodules" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.burrsNodules}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.capPlating.label" default="Cap Plating" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "capPlating")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.copperFilledMicroVia.label" default="Copper Filled Micro Via" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.copperFilledMicroVia}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.copperVoids.label" default="Copper Voids" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.copperVoids}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.delaminationBlistering.label" default="Delamination Blistering" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.delaminationBlistering}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.dielectricSpacing.label" default="Dielectric Spacing" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.dielectricSpacing}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.etchback.label" default="Etchback" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "etchback")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.etchbackPtfe.label" default="Etchback Ptfe" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "etchbackPtfe")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.externalConductorThickness.label" default="External Conductor Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "externalConductorThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.externalFoilCracks.label" default="External Foil Cracks" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.externalFoilCracks}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.glassFiberProtrusion.label" default="Glass Fiber Protrusion" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.glassFiberProtrusion}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.innerLayerSeperation.label" default="Inner Layer Seperation" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.innerLayerSeperation}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.internalAnnularRing.label" default="Internal Annular Ring" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "internalAnnularRing")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.internalConductorThickness.label" default="Internal Conductor Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "internalConductorThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.internalFoilCracks.label" default="Internal Foil Cracks" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.internalFoilCracks}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.job.label" default="Job" /></td>
                            
                            <td valign="top" class="value"><g:link controller="job" action="show" id="${panelInstance?.job?.id}">${panelInstance?.job?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.laminateVoidsCracks.label" default="Laminate Voids Cracks" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.laminateVoidsCracks}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.materialFillOfBlindVias.label" default="Material Fill Of Blind Vias" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.materialFillOfBlindVias}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.materialFillOfBuriedVias.label" default="Material Fill Of Buried Vias" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.materialFillOfBuriedVias}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.metalCoreLateralSpacing.label" default="Metal Core Lateral Spacing" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "metalCoreLateralSpacing")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.microAveWallThickness.label" default="Micro Ave Wall Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "microAveWallThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.microMinWrapThickness.label" default="Micro Min Wrap Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "microMinWrapThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.microViaContactDimension.label" default="Micro Via Contact Dimension" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.microViaContactDimension}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.microviaCaptureLand.label" default="Microvia Capture Land" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.microviaCaptureLand}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.minWallThickness.label" default="Min Wall Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "minWallThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.minWrapThickness.label" default="Min Wrap Thickness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "minWrapThickness")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.negativeEtchBack.label" default="Negative Etch Back" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "negativeEtchBack")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.notes.label" default="Notes" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "notes")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.panelNumber.label" default="Panel Number" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "panelNumber")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.platingSeperation.label" default="Plating Seperation" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.platingSeperation}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.platingVoids.label" default="Plating Voids" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.platingVoids}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.resinFill.label" default="Resin Fill" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.resinFill}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.smearRemoval.label" default="Smear Removal" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.smearRemoval}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.wicking.label" default="Wicking" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.wicking}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.wickingWithEtchback.label" default="Wicking With Etchback" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${panelInstance?.wickingWithEtchback}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="panel.wrapPlatingOnLand.label" default="Wrap Plating On Land" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: panelInstance, field: "wrapPlatingOnLand")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${panelInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
