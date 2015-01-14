<%@ page import="magnetboard.Machine" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'maintenanceGraph.label', default: 'Machine')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <script type="text/javascript" src="http://www.google.com/jsapi"></script>
        
    </head>
    
<body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>

<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          

    	  var data = new google.visualization.DataTable();
    	  data.addColumn('string', 'Machine');
    	  data.addColumn('number', 'Labor Hours');
    	  <g:each in="${topTenHours}" var="e" >
    	  data.addRow([("${e[0]}"),${e[1]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Maintenance Top Ten Labor Hours',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
        	    vAxis: {title: 'Hours'}
        	     
        	  };
    	  
        var chart = new google.visualization.ColumnChart(document.getElementById('topTenHours_div'));
        chart.draw(data, options);
      }
</script>
        <div id="topTenHours_div" style="width: 1500px; height: 500px;"></div>
        
</body>            
    
</html>    