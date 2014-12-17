<%@ page import="magnetboard.Job" %>
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
    	  data.addColumn('number', 'Flaws/side');
    	  <g:each in="${flawsPerSide}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Inner Layer Before Etch (Flaws/side) Thirteen Week Average',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
        	    chartArea: {width: '80%', height: '80%'},
        	    vAxis: {viewWindow: {max: 3, min:0}}
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('flawsPerSide_div'));
        
        chart.draw(data, options);
        document.getElementById('png').outerHTML = '<a href="' + chart.getImageURI() + '">Printable version</a>';
      }
</script>

        <div id="flawsPerSide_div" style="width: 1500px; height: 1000px;"></div> 
                
       </body>
</html>  