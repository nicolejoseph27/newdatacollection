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
 <!--     
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', '2 Camera Area');
    	  data.addColumn('number', '4 Camera Area');
    	  data.addColumn('number', 'Films Area');
    	  <g:each in="${goldRoomFilms}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]},${e[3]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Particles in the Goldroom and Films',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
       			 vAxis: {viewWindow: {
           			 max: 100000,
           			 min:0}
       			 }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('goldRoomFilms_div'));
        chart.draw(data, options);
      }
</script>
        <div id="goldRoomFilms_div" style="width: 1500px; height: 500px;"></div>        
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', '2 Camera Area');
    	  data.addColumn('number', '4 Camera Area')
    	  <g:each in="${goldRoom}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Particles in the Goldroom',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
        	    vAxis: {viewWindow: {max: 30000, min:0}}
        	    
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('goldRoom_div'));
        chart.draw(data, options);
      }
</script>
        <div id="goldRoom_div" style="width: 1500px; height: 500px;"></div>        
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', 'Before Air Cleaner');
    	  data.addColumn('number', 'After Air Cleaner')
    	  <g:each in="${air}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Before/After Air Cleaner 0.5 Micron Particles per Square Foot',
        	    curveType: 'function',
        	    legend: { position: 'bottom' }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
</script>
        <div id="chart_div" style="width: 1500px; height: 500px;"></div>
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', 'Soldermask Room');
    	  data.addColumn('number', 'Adjacent Hall')
    	  <g:each in="${hall}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Hall/Soldermask 0.5 Micron Particles per Square Foot',
        	    curveType: 'function',
        	    legend: { position: 'bottom' }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('hall_div'));
        chart.draw(data, options);
      }
</script>
        <div id="hall_div" style="width: 1500px; height: 500px;"></div>
-->        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', '2 Camera Temp');
    	  data.addColumn('number', '4 Camera Temp');
    	  <g:each in="${temp}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Room Temperatures',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
        	    chartArea: {width: '80%', height: '80%'}
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('temp_div'));
        
        google.visualization.events.addListener(chart, 'ready', function () {
            temp_div.innerHTML = '<img src="' + chart.getImageURI() + '">';
            console.log(temp_div.innerHTML);
          });
        
        chart.draw(data, options);
        document.getElementById('png').outerHTML = '<a href="' + chart.getImageURI() + '">Printable version</a>';
      }
</script>

        <div id="temp_div" style="width: 1500px; height: 1000px;"></div> 
              
        <div id='png'></div>
<!--       
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', 'Spray Humidity');
    	  data.addColumn('number', '2 Camera Humidity');
    	  data.addColumn('number', '4 Camera Humidity');
    	  data.addColumn('number', 'Films Humidity');
    	  <g:each in="${humid}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]},${e[3]},${e[4]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Room Humidities',
        	    curveType: 'function',
        	    legend: { position: 'bottom' }
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('humid_div'));
        chart.draw(data, options);
      }
</script>
        <div id="humid_div" style="width: 1500px; height: 500px;"></div> 
        
<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      
      function drawChart() {
          
    	  var data = new google.visualization.DataTable();
    	  data.addColumn('datetime', 'Short');
    	  data.addColumn('number', 'Spray Room');
    	  data.addColumn('number', 'Spray Room after Air Cleaner');
    	  data.addColumn('number', '2 Camera Area');
    	  data.addColumn('number', '4 Camera Area');
    	  data.addColumn('number', 'Hall');
    	  data.addColumn('number', 'Films');
    	  <g:each in="${fiveMicron}" var="e" >
    	  data.addRow([new Date("${e[0]}"),${e[1]},${e[2]},${e[3]},${e[4]},${e[5]},${e[6]}]);
		  </g:each>
    	  
        var options = {
        	    title: 'Five Micron Particles',
        	    curveType: 'function',
        	    legend: { position: 'bottom' },
        	    vAxis: {viewWindow: {min:0, max:500}}
        	  };
    	  
        var chart = new google.visualization.LineChart(document.getElementById('fiveMicron_div'));
        chart.draw(data, options);
      }
</script>
        <div id="fiveMicron_div" style="width: 1500px; height: 500px;"></div>                   

 -->           
   
    </body>
</html>
