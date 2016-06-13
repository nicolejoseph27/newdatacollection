<%@ page import="magnetboard.Job" %>
<html>
    <head>
     	<g:javascript plugin="jquery" library="jquery" />
   		<g:javascript library="application" />
   		<jqui:resources />
   		<g:javascript plugin="jquery-ui-extensions" library="jquery-extensions" />

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
   def bakeTimeColumns = [['string', 'Work Order'], ['string','Company Name'], ['string', 'Part Number'], ['string', 'bakeTime']]
%>
<script type="text/javascript">
   function selectHandler(e) {
      alert('A table row was selected');
   }
</script>

<gvisualization:table elementId="table"  columns="${bakeTimeColumns}" 
 data="${jobParams}" select="selectHandler" />
<div id="table"></div>
 
</body>            
    
</html>        