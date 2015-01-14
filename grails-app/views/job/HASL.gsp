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
   def haslColumns = [['datetime', 'Date'], ['string', 'Operator'], ['string', 'Bake Time'], ['string', 'Last Baked'],['string', 'Air Knife Gap'], ['string', 'Double Flux'],['string', 'Dwell Time'],['string', 'Double Dip'],['string', 'Front Air Knife Pressure'],['string', 'Rear Air Knife Pressure'],['string', 'Withdrawal (Turns)'],['string', 'Gold Fingers'],['string', 'Cold Press'],['string', 'Notes']]
%>
<script type="text/javascript">
   function selectHandler(e) {
      alert('A table row was selected');
   }
</script>

<gvisualization:table elementId="table" columns="${haslColumns}" 
 data="${jobSearch}" select="selectHandler" />
<div id="table"></div>
        
</body>            
    
</html>        