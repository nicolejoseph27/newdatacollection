

<%@ page import="magnetboard.Panel" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'panel.label', default: 'Panel')}" />
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
            <g:hasErrors bean="${panelInstance}">
            <div class="errors">
                <g:renderErrors bean="${panelInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                        	<tr class="prop">
                                <td valign="top" class="name">
                                    <label for="job"><g:message code="panel.job.label" default="Job" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'job', 'errors')}">
                                    <g:select name="job.id" from="${magnetboard.Job.list()}" optionKey="id" value="${panelInstance?.job?.id}"  />
                                </td>
                                <td valign="top" class="name">
                                    <label for="panelNumber"><g:message code="panel.panelNumber.label" default="Panel Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'panelNumber', 'errors')}">
                                    <g:textField name="panelNumber" value="${fieldValue(bean: panelInstance, field: 'panelNumber')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="microMinWallThickness"><g:message code="panel.microMinWallThickness.label" default="Micro Min Wall Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'microMinWallThickness', 'errors')}">
                                    <g:textField name="microMinWallThickness" value="${fieldValue(bean: panelInstance, field: 'microMinWallThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="adhesiveVoidsFlex"><g:message code="panel.adhesiveVoidsFlex.label" default="Adhesive Voids Flex" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'adhesiveVoidsFlex', 'errors')}">
                                    <g:checkBox name="adhesiveVoidsFlex" value="${panelInstance?.adhesiveVoidsFlex}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="aveWallThickness"><g:message code="panel.aveWallThickness.label" default="Ave Wall Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'aveWallThickness', 'errors')}">
                                    <g:textField name="aveWallThickness" value="${fieldValue(bean: panelInstance, field: 'aveWallThickness')}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="minWallThickness"><g:message code="panel.minWallThickness.label" default="Min Wall Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'minWallThickness', 'errors')}">
                                    <g:textField name="minWallThickness" value="${fieldValue(bean: panelInstance, field: 'minWallThickness')}" />
                                </td>
                                <td valign="top" class="name">
                                    <label for="minWrapThickness"><g:message code="panel.minWrapThickness.label" default="Min Wrap Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'minWrapThickness', 'errors')}">
                                    <g:textField name="minWrapThickness" value="${fieldValue(bean: panelInstance, field: 'minWrapThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="barrelCornerCracks"><g:message code="panel.barrelCornerCracks.label" default="Barrel Corner Cracks" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'barrelCornerCracks', 'errors')}">
                                    <g:checkBox name="barrelCornerCracks" value="${panelInstance?.barrelCornerCracks}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="buriedAveWallThickness"><g:message code="panel.buriedAveWallThickness.label" default="Buried Ave Wall Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'buriedAveWallThickness', 'errors')}">
                                    <g:textField name="buriedAveWallThickness" value="${fieldValue(bean: panelInstance, field: 'buriedAveWallThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="buriedMinWallThickness"><g:message code="panel.buriedMinWallThickness.label" default="Buried Min Wall Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'buriedMinWallThickness', 'errors')}">
                                    <g:textField name="buriedMinWallThickness" value="${fieldValue(bean: panelInstance, field: 'buriedMinWallThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="buriedMinWrapThickness"><g:message code="panel.buriedMinWrapThickness.label" default="Buried Min Wrap Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'buriedMinWrapThickness', 'errors')}">
                                    <g:textField name="buriedMinWrapThickness" value="${fieldValue(bean: panelInstance, field: 'buriedMinWrapThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="buriedTwoAveWallThickness"><g:message code="panel.buriedTwoAveWallThickness.label" default="Buried Two Ave Wall Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'buriedTwoAveWallThickness', 'errors')}">
                                    <g:textField name="buriedTwoAveWallThickness" value="${fieldValue(bean: panelInstance, field: 'buriedTwoAveWallThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="buriedTwoMinWallThickness"><g:message code="panel.buriedTwoMinWallThickness.label" default="Buried Two Min Wall Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'buriedTwoMinWallThickness', 'errors')}">
                                    <g:textField name="buriedTwoMinWallThickness" value="${fieldValue(bean: panelInstance, field: 'buriedTwoMinWallThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="buriedTwoMinWrapThickness"><g:message code="panel.buriedTwoMinWrapThickness.label" default="Buried Two Min Wrap Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'buriedTwoMinWrapThickness', 'errors')}">
                                    <g:textField name="buriedTwoMinWrapThickness" value="${fieldValue(bean: panelInstance, field: 'buriedTwoMinWrapThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="burrsNodules"><g:message code="panel.burrsNodules.label" default="Burrs Nodules" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'burrsNodules', 'errors')}">
                                    <g:checkBox name="burrsNodules" value="${panelInstance?.burrsNodules}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="capPlating"><g:message code="panel.capPlating.label" default="Cap Plating" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'capPlating', 'errors')}">
                                    <g:textField name="capPlating" value="${fieldValue(bean: panelInstance, field: 'capPlating')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="copperFilledMicroVia"><g:message code="panel.copperFilledMicroVia.label" default="Copper Filled Micro Via" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'copperFilledMicroVia', 'errors')}">
                                    <g:checkBox name="copperFilledMicroVia" value="${panelInstance?.copperFilledMicroVia}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="copperVoids"><g:message code="panel.copperVoids.label" default="Copper Voids" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'copperVoids', 'errors')}">
                                    <g:checkBox name="copperVoids" value="${panelInstance?.copperVoids}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="delaminationBlistering"><g:message code="panel.delaminationBlistering.label" default="Delamination Blistering" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'delaminationBlistering', 'errors')}">
                                    <g:checkBox name="delaminationBlistering" value="${panelInstance?.delaminationBlistering}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dielectricSpacing"><g:message code="panel.dielectricSpacing.label" default="Dielectric Spacing" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'dielectricSpacing', 'errors')}">
                                    <g:checkBox name="dielectricSpacing" value="${panelInstance?.dielectricSpacing}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="etchback"><g:message code="panel.etchback.label" default="Etchback" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'etchback', 'errors')}">
                                    <g:textField name="etchback" value="${fieldValue(bean: panelInstance, field: 'etchback')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="etchbackPtfe"><g:message code="panel.etchbackPtfe.label" default="Etchback Ptfe" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'etchbackPtfe', 'errors')}">
                                    <g:textField name="etchbackPtfe" value="${fieldValue(bean: panelInstance, field: 'etchbackPtfe')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="externalConductorThickness"><g:message code="panel.externalConductorThickness.label" default="External Conductor Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'externalConductorThickness', 'errors')}">
                                    <g:textField name="externalConductorThickness" value="${fieldValue(bean: panelInstance, field: 'externalConductorThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="externalFoilCracks"><g:message code="panel.externalFoilCracks.label" default="External Foil Cracks" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'externalFoilCracks', 'errors')}">
                                    <g:checkBox name="externalFoilCracks" value="${panelInstance?.externalFoilCracks}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="glassFiberProtrusion"><g:message code="panel.glassFiberProtrusion.label" default="Glass Fiber Protrusion" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'glassFiberProtrusion', 'errors')}">
                                    <g:checkBox name="glassFiberProtrusion" value="${panelInstance?.glassFiberProtrusion}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="innerLayerSeperation"><g:message code="panel.innerLayerSeperation.label" default="Inner Layer Seperation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'innerLayerSeperation', 'errors')}">
                                    <g:checkBox name="innerLayerSeperation" value="${panelInstance?.innerLayerSeperation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="internalAnnularRing"><g:message code="panel.internalAnnularRing.label" default="Internal Annular Ring" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'internalAnnularRing', 'errors')}">
                                    <g:textField name="internalAnnularRing" value="${fieldValue(bean: panelInstance, field: 'internalAnnularRing')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="internalConductorThickness"><g:message code="panel.internalConductorThickness.label" default="Internal Conductor Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'internalConductorThickness', 'errors')}">
                                    <g:textField name="internalConductorThickness" value="${fieldValue(bean: panelInstance, field: 'internalConductorThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="internalFoilCracks"><g:message code="panel.internalFoilCracks.label" default="Internal Foil Cracks" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'internalFoilCracks', 'errors')}">
                                    <g:checkBox name="internalFoilCracks" value="${panelInstance?.internalFoilCracks}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="laminateVoidsCracks"><g:message code="panel.laminateVoidsCracks.label" default="Laminate Voids Cracks" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'laminateVoidsCracks', 'errors')}">
                                    <g:checkBox name="laminateVoidsCracks" value="${panelInstance?.laminateVoidsCracks}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="materialFillOfBlindVias"><g:message code="panel.materialFillOfBlindVias.label" default="Material Fill Of Blind Vias" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'materialFillOfBlindVias', 'errors')}">
                                    <g:checkBox name="materialFillOfBlindVias" value="${panelInstance?.materialFillOfBlindVias}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="materialFillOfBuriedVias"><g:message code="panel.materialFillOfBuriedVias.label" default="Material Fill Of Buried Vias" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'materialFillOfBuriedVias', 'errors')}">
                                    <g:checkBox name="materialFillOfBuriedVias" value="${panelInstance?.materialFillOfBuriedVias}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="metalCoreLateralSpacing"><g:message code="panel.metalCoreLateralSpacing.label" default="Metal Core Lateral Spacing" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'metalCoreLateralSpacing', 'errors')}">
                                    <g:textField name="metalCoreLateralSpacing" value="${fieldValue(bean: panelInstance, field: 'metalCoreLateralSpacing')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="microAveWallThickness"><g:message code="panel.microAveWallThickness.label" default="Micro Ave Wall Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'microAveWallThickness', 'errors')}">
                                    <g:textField name="microAveWallThickness" value="${fieldValue(bean: panelInstance, field: 'microAveWallThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="microMinWrapThickness"><g:message code="panel.microMinWrapThickness.label" default="Micro Min Wrap Thickness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'microMinWrapThickness', 'errors')}">
                                    <g:textField name="microMinWrapThickness" value="${fieldValue(bean: panelInstance, field: 'microMinWrapThickness')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="microViaContactDimension"><g:message code="panel.microViaContactDimension.label" default="Micro Via Contact Dimension" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'microViaContactDimension', 'errors')}">
                                    <g:checkBox name="microViaContactDimension" value="${panelInstance?.microViaContactDimension}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="microviaCaptureLand"><g:message code="panel.microviaCaptureLand.label" default="Microvia Capture Land" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'microviaCaptureLand', 'errors')}">
                                    <g:checkBox name="microviaCaptureLand" value="${panelInstance?.microviaCaptureLand}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="negativeEtchBack"><g:message code="panel.negativeEtchBack.label" default="Negative Etch Back" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'negativeEtchBack', 'errors')}">
                                    <g:textField name="negativeEtchBack" value="${fieldValue(bean: panelInstance, field: 'negativeEtchBack')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notes"><g:message code="panel.notes.label" default="Notes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'notes', 'errors')}">
                                    <g:textField name="notes" value="${panelInstance?.notes}" />
                                </td>
                            </tr>
                       
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="platingSeperation"><g:message code="panel.platingSeperation.label" default="Plating Seperation" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'platingSeperation', 'errors')}">
                                    <g:checkBox name="platingSeperation" value="${panelInstance?.platingSeperation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="platingVoids"><g:message code="panel.platingVoids.label" default="Plating Voids" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'platingVoids', 'errors')}">
                                    <g:checkBox name="platingVoids" value="${panelInstance?.platingVoids}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="resinFill"><g:message code="panel.resinFill.label" default="Resin Fill" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'resinFill', 'errors')}">
                                    <g:checkBox name="resinFill" value="${panelInstance?.resinFill}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="smearRemoval"><g:message code="panel.smearRemoval.label" default="Smear Removal" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'smearRemoval', 'errors')}">
                                    <g:checkBox name="smearRemoval" value="${panelInstance?.smearRemoval}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="wicking"><g:message code="panel.wicking.label" default="Wicking" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'wicking', 'errors')}">
                                    <g:checkBox name="wicking" value="${panelInstance?.wicking}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="wickingWithEtchback"><g:message code="panel.wickingWithEtchback.label" default="Wicking With Etchback" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'wickingWithEtchback', 'errors')}">
                                    <g:checkBox name="wickingWithEtchback" value="${panelInstance?.wickingWithEtchback}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="wrapPlatingOnLand"><g:message code="panel.wrapPlatingOnLand.label" default="Wrap Plating On Land" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: panelInstance, field: 'wrapPlatingOnLand', 'errors')}">
                                    <g:textField name="wrapPlatingOnLand" value="${fieldValue(bean: panelInstance, field: 'wrapPlatingOnLand')}" />
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
