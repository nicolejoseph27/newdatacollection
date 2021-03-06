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
        <script type="text/javascript" src="http://www.google.com/jsapi">
        </script>
        
    </head>
    
<body>

		<jque:newDialog controller='job' action="editWeeklyList" ajax="false" id='editJob' title="Edit Job" success="s_div2" width="600">
    	<jque:dialogField name="workOrder" value="" />
   		<jque:calendarField name="reminder" value="" />
   		<jque:dialogField name="value" value="" />
    	</jque:newDialog>

        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        <jque:newShowDialog buttonCaption="Edit Job" dialogId="editJob"/>
        </div>
       
        <%
   def weeklyColumns = [['date','Ship Date'], ['string', 'Due Date'], ['string', 'Work Order'], ['string','Company Name'], ['string', 'Part Number'], ['string', 'Value'],['string', 'Process']]
%>
<script type="text/javascript">
   function selectHandler(e) {
      alert('A table row was selected');
   }
</script>

<gvisualization:table elementId="table"  page= 'enable' pageSize="${25}" columns="${weeklyColumns}"  
 data="${jobParams}" select="selectHandler" />
<div id="table"></div>
 
</body>            
    
</html>         