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
    	  data.addColumn('number', 'Percent First Pass Yield');
    	  <g:each in="${firstPassYield}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Inner Layer First Pass Yield',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
        	    chartArea: {width: '80%', height: '80%'}
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('firstPassYield_div'));
        
        google.visualization.events.addListener(chart, 'ready', function () {
        	firstPassYield_div.innerHTML = '<img src="' + chart.getImageURI() + '">';
            console.log(firstPassYield_div.innerHTML);
          });
        
        chart.draw(data, options);
        document.getElementById('png').outerHTML = '<a href="' + chart.getImageURI() + '">Printable version</a>';
      }
</script>

        <div id="firstPassYield_div" style="width: 1500px; height: 1000px;"></div> 
              
        <div id='png'></div>
        
        
       </body>
</html>  