<%@ page import="magnetboard.MachineVariable" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'machineVariable.label', default: 'MachineVariable')}" />
        <title><g:message code="default.chartChoice.label" args="[entityName]" /></title>
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
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', '2 Camera Part');
    	  data.addColumn('number', 'Average');
    	  data.addColumn('number', 'UCL');
    	  data.addColumn('number', 'LCL');
    	  
    	  <g:each in="${part}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]},${e[3]},${e[4]}]);
		  </g:each>

          var options = {
        	    title: 'LDI Particle Chart',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
        	    chartArea: {width: '80%', height: '80%'}
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('temp_div'));
        
        chart.draw(data, options);
        document.getElementById('png').outerHTML = '<a href="' + chart.getImageURI() + '">Printable version</a>';
      }
</script>

        <div id="temp_div" style="width: 750px; height: 500px;"></div> 
              
    </body>
</html>
