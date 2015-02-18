<%@ page import="magnetboard.Job" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pepData.label', default: 'Job')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <script type="text/javascript" src="http://www.google.com/jsapi"></script>
        
    </head>
    
<body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        
        <%
   def dcPlatingColumns = [['date', 'Date'], ['string', 'Asf'], ['string','Rack'], ['string', 'Total Copper Time'], ['string', 'Cell'],['string', 'Min. Plating Reading'], ['string', 'Max. Plating Reading'],['string', 'Class'],['string','dcNotes'],['string', 'Line Speed'],['string', 'Copper Thickness'],['string', 'Was panel splashed?']]
%>
<script type="text/javascript">
   function selectHandler(e) {
      alert('A table row was selected');
   }
</script>

<gvisualization:table elementId="table"  columns="${dcPlatingColumns}" 
 data="${jobSearch}" select="selectHandler" />
<div id="table"></div>
        
</body>            
    
</html>        